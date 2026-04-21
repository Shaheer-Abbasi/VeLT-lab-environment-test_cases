; ModuleID = 'src/cat.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], ptr, ptr }
%struct.slotvec = type { i64, ptr }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.stat = type { i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, [2 x i32] }
%struct.timespec = type { i64, i64 }
%struct.__va_list = type { ptr, ptr, ptr, i32, i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }

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
@main.long_options = internal constant [10 x %struct.option] [%struct.option { ptr @.str.17, i32 0, ptr null, i32 98 }, %struct.option { ptr @.str.18, i32 0, ptr null, i32 110 }, %struct.option { ptr @.str.19, i32 0, ptr null, i32 115 }, %struct.option { ptr @.str.20, i32 0, ptr null, i32 118 }, %struct.option { ptr @.str.21, i32 0, ptr null, i32 69 }, %struct.option { ptr @.str.22, i32 0, ptr null, i32 84 }, %struct.option { ptr @.str.23, i32 0, ptr null, i32 65 }, %struct.option { ptr @.str.24, i32 0, ptr null, i32 -2 }, %struct.option { ptr @.str.25, i32 0, ptr null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !81
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
@pending_cr = internal unnamed_addr global i1 false, align 1, !dbg !539
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
@line_buf = internal global [20 x i8] c"                 0\09\00", align 4, !dbg !444
@.str.77 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !450
@.str.45 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !540
@Version = dso_local local_unnamed_addr global ptr @.str.45, align 8, !dbg !543
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !547
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !560
@.str.48 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !552
@.str.1.49 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !554
@.str.2.50 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !556
@.str.3.51 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !558
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !562
@stderr = external local_unnamed_addr global ptr, align 8
@.str.54 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !568
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !604
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !570
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !594
@.str.1.60 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !596
@.str.2.62 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !598
@.str.3.61 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !600
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !602
@.str.4.55 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !606
@.str.5.56 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !608
@.str.6.57 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !613
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !618
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !636
@.str.79 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !642
@.str.1.80 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !644
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !646
@.str.83 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !677
@.str.1.84 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !680
@.str.2.85 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !682
@.str.3.86 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !687
@.str.4.87 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !689
@.str.5.88 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !691
@.str.6.89 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !693
@.str.7.90 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !695
@.str.8.91 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !697
@.str.9.92 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !699
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.83, ptr @.str.1.84, ptr @.str.2.85, ptr @.str.3.86, ptr @.str.4.87, ptr @.str.5.88, ptr @.str.6.89, ptr @.str.7.90, ptr @.str.8.91, ptr @.str.9.92, ptr null], align 8, !dbg !701
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !712
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !726
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !764
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !771
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !728
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !773
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !716
@.str.10.95 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !733
@.str.11.93 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !735
@.str.12.96 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !737
@.str.13.94 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !739
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !741
@.str.105 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !777
@.str.1.106 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !780
@.str.2.107 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !782
@.str.3.108 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !784
@.str.4.109 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !786
@.str.5.110 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !788
@.str.6.111 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !793
@.str.7.112 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !798
@.str.8.113 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !800
@.str.9.114 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !802
@.str.10.115 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !807
@.str.11.116 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !812
@.str.12.117 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !817
@.str.13.118 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !819
@.str.14.119 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !824
@.str.15.120 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !829
@.str.16.121 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !831
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.126 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !836
@.str.18.127 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !838
@.str.19.128 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !840
@.str.20.129 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !842
@.str.21.130 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !844
@.str.22.131 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !846
@.str.23.132 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !848
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !853
@exit_failure = dso_local global i32 1, align 4, !dbg !859
@.str.147 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !865
@.str.1.145 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !868
@.str.2.146 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !870
@.str.158 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !872
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !875
@.str.163 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !890
@.str.1.164 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !893

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !978 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !982, metadata !DIExpression()), !dbg !983
  %2 = icmp eq i32 %0, 0, !dbg !984
  br i1 %2, label %8, label %3, !dbg !986

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !987, !tbaa !989
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #40, !dbg !987
  %6 = load ptr, ptr @program_name, align 8, !dbg !987, !tbaa !989
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #40, !dbg !987
  br label %47, !dbg !987

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #40, !dbg !993
  %10 = load ptr, ptr @program_name, align 8, !dbg !993, !tbaa !989
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #40, !dbg !993
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #40, !dbg !995
  %13 = load ptr, ptr @stdout, align 8, !dbg !995, !tbaa !989
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !995
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.40, i32 noundef 5) #40, !dbg !996
  %16 = load ptr, ptr @stdout, align 8, !dbg !996, !tbaa !989
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !996
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #40, !dbg !1000
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !1000
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #40, !dbg !1001
  tail call fastcc void @oputs_(ptr noundef %19), !dbg !1001
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #40, !dbg !1002
  tail call fastcc void @oputs_(ptr noundef %20), !dbg !1002
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #40, !dbg !1003
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !1003
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #40, !dbg !1004
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !1004
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #40, !dbg !1005
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !1005
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #40, !dbg !1006
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !1006
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #40, !dbg !1007
  tail call fastcc void @oputs_(ptr noundef %25), !dbg !1007
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #40, !dbg !1008
  tail call fastcc void @oputs_(ptr noundef %26), !dbg !1008
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #40, !dbg !1009
  tail call fastcc void @oputs_(ptr noundef %27), !dbg !1009
  %28 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #40, !dbg !1010
  tail call fastcc void @oputs_(ptr noundef %28), !dbg !1010
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #40, !dbg !1011
  tail call fastcc void @oputs_(ptr noundef %29), !dbg !1011
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #40, !dbg !1012
  %31 = load ptr, ptr @program_name, align 8, !dbg !1012, !tbaa !989
  %32 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %31) #40, !dbg !1012
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1013, metadata !DIExpression()), !dbg !1030
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1025, metadata !DIExpression()), !dbg !1030
  call void @llvm.dbg.value(metadata ptr poison, metadata !1025, metadata !DIExpression()), !dbg !1030
  tail call void @emit_bug_reporting_address() #40, !dbg !1032
  %33 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #40, !dbg !1033
  call void @llvm.dbg.value(metadata ptr %33, metadata !1028, metadata !DIExpression()), !dbg !1030
  %34 = icmp eq ptr %33, null, !dbg !1034
  br i1 %34, label %42, label %35, !dbg !1036

35:                                               ; preds = %8
  %36 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %33, ptr noundef nonnull dereferenceable(4) @.str.71, i64 noundef 3) #41, !dbg !1037
  %37 = icmp eq i32 %36, 0, !dbg !1037
  br i1 %37, label %42, label %38, !dbg !1038

38:                                               ; preds = %35
  %39 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.72, i32 noundef 5) #40, !dbg !1039
  %40 = load ptr, ptr @stdout, align 8, !dbg !1039, !tbaa !989
  %41 = tail call i32 @fputs_unlocked(ptr noundef %39, ptr noundef %40), !dbg !1039
  br label %42, !dbg !1041

42:                                               ; preds = %8, %35, %38
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1025, metadata !DIExpression()), !dbg !1030
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1029, metadata !DIExpression()), !dbg !1030
  %43 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.73, i32 noundef 5) #40, !dbg !1042
  %44 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %43, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.3) #40, !dbg !1042
  %45 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.74, i32 noundef 5) #40, !dbg !1043
  %46 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %45, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.75) #40, !dbg !1043
  br label %47

47:                                               ; preds = %42, %3
  tail call void @exit(i32 noundef %0) #42, !dbg !1044
  unreachable, !dbg !1044
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1045 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1049 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1055 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1058 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !266 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !270, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.value(metadata ptr %0, metadata !271, metadata !DIExpression()), !dbg !1061
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !1062, !tbaa !1063
  %3 = icmp eq i32 %2, -1, !dbg !1065
  br i1 %3, label %4, label %16, !dbg !1066

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.41) #40, !dbg !1067
  call void @llvm.dbg.value(metadata ptr %5, metadata !272, metadata !DIExpression()), !dbg !1068
  %6 = icmp eq ptr %5, null, !dbg !1069
  br i1 %6, label %14, label %7, !dbg !1070

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !1071, !tbaa !1072
  %9 = icmp eq i8 %8, 0, !dbg !1071
  br i1 %9, label %14, label %10, !dbg !1073

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !1074, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata ptr @.str.42, metadata !1080, metadata !DIExpression()), !dbg !1081
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.42) #41, !dbg !1083
  %12 = icmp eq i32 %11, 0, !dbg !1084
  %13 = zext i1 %12 to i32, !dbg !1073
  br label %14, !dbg !1073

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !1085, !tbaa !1063
  br label %16, !dbg !1086

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !1087
  %18 = icmp eq i32 %17, 0, !dbg !1087
  br i1 %18, label %22, label %19, !dbg !1089

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !1090, !tbaa !989
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !1090
  br label %122, !dbg !1092

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !275, metadata !DIExpression()), !dbg !1061
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.43) #41, !dbg !1093
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1094
  call void @llvm.dbg.value(metadata ptr %24, metadata !276, metadata !DIExpression()), !dbg !1061
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #41, !dbg !1095
  call void @llvm.dbg.value(metadata ptr %25, metadata !277, metadata !DIExpression()), !dbg !1061
  %26 = icmp eq ptr %25, null, !dbg !1096
  br i1 %26, label %54, label %27, !dbg !1097

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1098
  br i1 %28, label %54, label %29, !dbg !1099

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !278, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i64 0, metadata !282, metadata !DIExpression()), !dbg !1100
  %30 = icmp ult ptr %24, %25, !dbg !1101
  br i1 %30, label %31, label %52, !dbg !1102

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #43, !dbg !1061
  %33 = load ptr, ptr %32, align 8, !tbaa !989
  br label %34, !dbg !1102

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !278, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i64 %36, metadata !282, metadata !DIExpression()), !dbg !1100
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1103
  call void @llvm.dbg.value(metadata ptr %37, metadata !278, metadata !DIExpression()), !dbg !1100
  %38 = load i8, ptr %35, align 1, !dbg !1103, !tbaa !1072
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1103
  %41 = load i16, ptr %40, align 2, !dbg !1103, !tbaa !1104
  %42 = freeze i16 %41, !dbg !1106
  %43 = lshr i16 %42, 13, !dbg !1106
  %44 = and i16 %43, 1, !dbg !1106
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1107
  call void @llvm.dbg.value(metadata i64 %46, metadata !282, metadata !DIExpression()), !dbg !1100
  %47 = icmp ult ptr %37, %25, !dbg !1101
  %48 = icmp ult i64 %46, 2, !dbg !1108
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1108
  br i1 %49, label %34, label %50, !dbg !1102, !llvm.loop !1109

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !1111
  br i1 %51, label %52, label %54, !dbg !1113

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !1113

54:                                               ; preds = %52, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %52 ], [ %24, %50 ], !dbg !1061
  %56 = phi i1 [ true, %27 ], [ false, %22 ], [ %53, %52 ], [ %51, %50 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !275, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.value(metadata ptr %55, metadata !277, metadata !DIExpression()), !dbg !1061
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.44) #41, !dbg !1114
  call void @llvm.dbg.value(metadata i64 %57, metadata !283, metadata !DIExpression()), !dbg !1061
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !1115
  call void @llvm.dbg.value(metadata ptr %58, metadata !284, metadata !DIExpression()), !dbg !1061
  br label %59, !dbg !1116

59:                                               ; preds = %90, %54
  %60 = phi ptr [ %58, %54 ], [ %91, %90 ], !dbg !1061
  %61 = phi i1 [ %56, %54 ], [ %69, %90 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !275, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.value(metadata ptr %60, metadata !284, metadata !DIExpression()), !dbg !1061
  %62 = load i8, ptr %60, align 1, !dbg !1117, !tbaa !1072
  switch i8 %62, label %68 [
    i8 0, label %92
    i8 10, label %92
    i8 45, label %63
  ], !dbg !1118

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1119
  %65 = load i8, ptr %64, align 1, !dbg !1122, !tbaa !1072
  %66 = icmp ne i8 %65, 45, !dbg !1123
  %67 = select i1 %66, i1 %61, i1 false, !dbg !1124
  br label %68, !dbg !1124

68:                                               ; preds = %63, %59
  %69 = phi i1 [ %61, %59 ], [ %67, %63 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !275, metadata !DIExpression()), !dbg !1061
  %70 = tail call ptr @__ctype_b_loc() #43, !dbg !1125
  %71 = load ptr, ptr %70, align 8, !dbg !1125, !tbaa !989
  %72 = zext i8 %62 to i64
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !1125
  %74 = load i16, ptr %73, align 2, !dbg !1125, !tbaa !1104
  %75 = and i16 %74, 8192, !dbg !1125
  %76 = icmp eq i16 %75, 0, !dbg !1125
  br i1 %76, label %90, label %77, !dbg !1127

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !1128
  br i1 %78, label %92, label %79, !dbg !1131

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1132
  %81 = load i8, ptr %80, align 1, !dbg !1132, !tbaa !1072
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !1132
  %84 = load i16, ptr %83, align 2, !dbg !1132, !tbaa !1104
  %85 = and i16 %84, 8192, !dbg !1132
  %86 = icmp eq i16 %85, 0, !dbg !1132
  %87 = icmp eq i8 %81, 45
  %88 = select i1 %69, i1 true, i1 %87
  %89 = select i1 %86, i1 %88, i1 false, !dbg !1133
  br i1 %89, label %90, label %92, !dbg !1133

90:                                               ; preds = %79, %68
  %91 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1134
  call void @llvm.dbg.value(metadata ptr %91, metadata !284, metadata !DIExpression()), !dbg !1061
  br label %59, !dbg !1116, !llvm.loop !1135

92:                                               ; preds = %59, %59, %77, %79
  %93 = ptrtoint ptr %24 to i64, !dbg !1137
  %94 = load ptr, ptr @stdout, align 8, !dbg !1137, !tbaa !989
  %95 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %94), !dbg !1137
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1074, metadata !DIExpression()), !dbg !1138
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1074, metadata !DIExpression()), !dbg !1140
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1074, metadata !DIExpression()), !dbg !1142
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1074, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1074, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1074, metadata !DIExpression()), !dbg !1148
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1074, metadata !DIExpression()), !dbg !1150
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1074, metadata !DIExpression()), !dbg !1152
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1074, metadata !DIExpression()), !dbg !1154
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1074, metadata !DIExpression()), !dbg !1156
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !337, metadata !DIExpression()), !dbg !1061
  %96 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.58, i64 noundef 6) #41, !dbg !1158
  %97 = icmp eq i32 %96, 0, !dbg !1158
  br i1 %97, label %101, label %98, !dbg !1160

98:                                               ; preds = %92
  %99 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.59, i64 noundef 9) #41, !dbg !1161
  %100 = icmp eq i32 %99, 0, !dbg !1161
  br i1 %100, label %101, label %104, !dbg !1162

101:                                              ; preds = %98, %92
  %102 = trunc i64 %57 to i32, !dbg !1163
  %103 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %102, ptr noundef %55) #40, !dbg !1163
  br label %107, !dbg !1165

104:                                              ; preds = %98
  %105 = trunc i64 %57 to i32, !dbg !1166
  %106 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.3, i32 noundef %105, ptr noundef %55) #40, !dbg !1166
  br label %107

107:                                              ; preds = %104, %101
  %108 = load ptr, ptr @stdout, align 8, !dbg !1168, !tbaa !989
  %109 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.64, ptr noundef %108), !dbg !1168
  %110 = load ptr, ptr @stdout, align 8, !dbg !1169, !tbaa !989
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.65, ptr noundef %110), !dbg !1169
  %112 = ptrtoint ptr %60 to i64, !dbg !1170
  %113 = sub i64 %112, %93, !dbg !1170
  %114 = load ptr, ptr @stdout, align 8, !dbg !1170, !tbaa !989
  %115 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %113, ptr noundef %114), !dbg !1170
  %116 = load ptr, ptr @stdout, align 8, !dbg !1171, !tbaa !989
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.66, ptr noundef %116), !dbg !1171
  %118 = load ptr, ptr @stdout, align 8, !dbg !1172, !tbaa !989
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.67, ptr noundef %118), !dbg !1172
  %120 = load ptr, ptr @stdout, align 8, !dbg !1173, !tbaa !989
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %120), !dbg !1173
  br label %122, !dbg !1174

122:                                              ; preds = %107, %19
  ret void, !dbg !1174
}

; Function Attrs: nounwind
declare !dbg !1175 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1179 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1183 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1185 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1188 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1191 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1194 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1197 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1203 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1204 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !83 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stat, align 8
  %5 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !453, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata ptr %1, metadata !454, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i8 0, metadata !455, metadata !DIExpression()), !dbg !1210
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #40, !dbg !1211
  call void @llvm.dbg.declare(metadata ptr %4, metadata !456, metadata !DIExpression()), !dbg !1212
  call void @llvm.dbg.value(metadata i8 0, metadata !492, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i8 0, metadata !493, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i8 0, metadata !494, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i8 0, metadata !495, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i8 0, metadata !496, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i8 0, metadata !497, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i32 0, metadata !498, metadata !DIExpression()), !dbg !1210
  %6 = load ptr, ptr %1, align 8, !dbg !1213, !tbaa !989
  tail call void @set_program_name(ptr noundef %6) #40, !dbg !1214
  %7 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.26) #40, !dbg !1215
  %8 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #40, !dbg !1216
  %9 = tail call ptr @textdomain(ptr noundef nonnull @.str.27) #40, !dbg !1217
  %10 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #40, !dbg !1218
  br label %11, !dbg !1219

11:                                               ; preds = %19, %2
  %12 = phi i1 [ false, %2 ], [ %20, %19 ]
  %13 = phi i1 [ false, %2 ], [ %21, %19 ]
  %14 = phi i1 [ false, %2 ], [ %22, %19 ]
  %15 = phi i1 [ false, %2 ], [ %23, %19 ]
  %16 = phi i1 [ false, %2 ], [ %24, %19 ]
  %17 = phi i1 [ false, %2 ], [ %25, %19 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !492, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i8 poison, metadata !493, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i8 poison, metadata !494, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i8 poison, metadata !495, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i8 poison, metadata !496, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i8 poison, metadata !497, metadata !DIExpression()), !dbg !1210
  %18 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.29, ptr noundef nonnull @main.long_options, ptr noundef null) #40, !dbg !1220
  call void @llvm.dbg.value(metadata i32 %18, metadata !499, metadata !DIExpression()), !dbg !1210
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
    i32 -2, label %35
    i32 -3, label %36
  ], !dbg !1219

19:                                               ; preds = %11, %34, %33, %32, %31, %30, %29, %28, %27, %26
  %20 = phi i1 [ true, %34 ], [ %12, %33 ], [ true, %32 ], [ %12, %31 ], [ true, %30 ], [ %12, %29 ], [ %12, %28 ], [ %12, %27 ], [ %12, %26 ], [ %12, %11 ]
  %21 = phi i1 [ %13, %34 ], [ %13, %33 ], [ true, %32 ], [ true, %31 ], [ true, %30 ], [ %13, %29 ], [ %13, %28 ], [ true, %27 ], [ %13, %26 ], [ %13, %11 ]
  %22 = phi i1 [ %14, %34 ], [ true, %33 ], [ true, %32 ], [ %14, %31 ], [ %14, %30 ], [ %14, %29 ], [ %14, %28 ], [ true, %27 ], [ %14, %26 ], [ %14, %11 ]
  %23 = phi i1 [ %15, %34 ], [ %15, %33 ], [ %15, %32 ], [ %15, %31 ], [ %15, %30 ], [ true, %29 ], [ %15, %28 ], [ %15, %27 ], [ %15, %26 ], [ %15, %11 ]
  %24 = phi i1 [ %16, %34 ], [ %16, %33 ], [ %16, %32 ], [ %16, %31 ], [ %16, %30 ], [ %16, %29 ], [ %16, %28 ], [ %16, %27 ], [ true, %26 ], [ %16, %11 ]
  %25 = phi i1 [ %17, %34 ], [ %17, %33 ], [ %17, %32 ], [ %17, %31 ], [ %17, %30 ], [ %17, %29 ], [ true, %28 ], [ %17, %27 ], [ true, %26 ], [ %17, %11 ]
  br label %11, !dbg !1210, !llvm.loop !1221

26:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i8 1, metadata !492, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i8 1, metadata !493, metadata !DIExpression()), !dbg !1210
  br label %19, !dbg !1223

27:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i8 1, metadata !495, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i8 1, metadata !496, metadata !DIExpression()), !dbg !1210
  br label %19, !dbg !1226

28:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i8 1, metadata !492, metadata !DIExpression()), !dbg !1210
  br label %19, !dbg !1227

29:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i8 1, metadata !494, metadata !DIExpression()), !dbg !1210
  br label %19, !dbg !1228

30:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i8 1, metadata !497, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i8 1, metadata !496, metadata !DIExpression()), !dbg !1210
  br label %19, !dbg !1229

31:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i8 1, metadata !496, metadata !DIExpression()), !dbg !1210
  br label %19, !dbg !1230

32:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i8 1, metadata !496, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i8 1, metadata !495, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i8 1, metadata !497, metadata !DIExpression()), !dbg !1210
  br label %19, !dbg !1231

33:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i8 1, metadata !495, metadata !DIExpression()), !dbg !1210
  br label %19, !dbg !1232

34:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i8 1, metadata !497, metadata !DIExpression()), !dbg !1210
  br label %19, !dbg !1233

35:                                               ; preds = %11
  tail call void @usage(i32 noundef 0) #44, !dbg !1234
  unreachable, !dbg !1234

36:                                               ; preds = %11
  %37 = load ptr, ptr @stdout, align 8, !dbg !1235, !tbaa !989
  %38 = load ptr, ptr @Version, align 8, !dbg !1235, !tbaa !989
  %39 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32) #40, !dbg !1235
  %40 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.33) #40, !dbg !1235
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %37, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.30, ptr noundef %38, ptr noundef %39, ptr noundef %40, ptr noundef null) #40, !dbg !1235
  tail call void @exit(i32 noundef 0) #42, !dbg !1235
  unreachable, !dbg !1235

41:                                               ; preds = %11
  tail call void @usage(i32 noundef 1) #44, !dbg !1236
  unreachable, !dbg !1236

42:                                               ; preds = %11
  %43 = call i32 @fstat(i32 noundef 1, ptr noundef nonnull %4) #40, !dbg !1237
  %44 = icmp slt i32 %43, 0, !dbg !1239
  br i1 %44, label %45, label %49, !dbg !1240

45:                                               ; preds = %42
  %46 = tail call ptr @__errno_location() #43, !dbg !1241
  %47 = load i32, ptr %46, align 4, !dbg !1241, !tbaa !1063
  %48 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.34, i32 noundef 5) #40, !dbg !1241
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %47, ptr noundef %48) #40, !dbg !1241
  unreachable, !dbg !1241

49:                                               ; preds = %42
  call void @llvm.dbg.value(metadata ptr %4, metadata !1242, metadata !DIExpression()), !dbg !1257
  %50 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 9, !dbg !1259
  %51 = load i32, ptr %50, align 8, !dbg !1259, !tbaa !1260
  %52 = icmp sgt i32 %51, 0, !dbg !1264
  %53 = select i1 %52, i32 %51, i32 512, !dbg !1264
  %54 = zext i32 %53 to i64, !dbg !1264
  call void @llvm.dbg.value(metadata i64 %54, metadata !1249, metadata !DIExpression()), !dbg !1257
  %55 = urem i32 262143, %53, !dbg !1265
  %56 = xor i32 %55, 262143, !dbg !1266
  %57 = zext i32 %56 to i64, !dbg !1266
  %58 = add nuw nsw i64 %54, %57, !dbg !1267
  call void @llvm.dbg.value(metadata i64 %58, metadata !1249, metadata !DIExpression()), !dbg !1257
  %59 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 2, !dbg !1268
  %60 = load i32, ptr %59, align 8, !dbg !1268, !tbaa !1269
  %61 = and i32 %60, 61440, !dbg !1268
  %62 = icmp ne i32 %61, 32768, !dbg !1268
  %63 = tail call i64 @llvm.ctpop.i64(i64 %58), !range !1270
  %64 = icmp ult i64 %63, 2
  %65 = select i1 %62, i1 true, i1 %64, !dbg !1271
  br i1 %65, label %72, label %66, !dbg !1271

66:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i64 %58, metadata !1272, metadata !DIExpression()), !dbg !1278
  call void @llvm.dbg.value(metadata i64 %58, metadata !1280, metadata !DIExpression()), !dbg !1285
  %67 = tail call i64 @llvm.ctlz.i64(i64 %58, i1 false), !dbg !1287, !range !1288
  call void @llvm.dbg.value(metadata i64 %67, metadata !1250, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1289
  call void @llvm.dbg.value(metadata !DIArgList(i64 1, i32 64, i64 %67), metadata !1253, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_minus, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_stack_value)), !dbg !1290
  %68 = icmp eq i64 %67, 1, !dbg !1291
  %69 = sub nuw nsw i64 64, %67, !dbg !1293
  %70 = shl nuw i64 1, %69, !dbg !1293
  %71 = select i1 %68, i64 %58, i64 %70, !dbg !1293
  call void @llvm.dbg.value(metadata i64 %71, metadata !1249, metadata !DIExpression()), !dbg !1257
  br label %72, !dbg !1294

72:                                               ; preds = %49, %66
  %73 = phi i64 [ %71, %66 ], [ %58, %49 ], !dbg !1257
  call void @llvm.dbg.value(metadata i64 %73, metadata !1249, metadata !DIExpression()), !dbg !1257
  %74 = tail call i64 @llvm.smin.i64(i64 %73, i64 2146435072), !dbg !1295
  call void @llvm.dbg.value(metadata i64 %74, metadata !500, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i32 -2, metadata !504, metadata !DIExpression()), !dbg !1210
  %75 = icmp eq i32 %61, 32768, !dbg !1296
  call void @llvm.dbg.value(metadata i1 %75, metadata !505, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1210
  %76 = select i1 %17, i1 true, i1 %14, !dbg !1297
  call void @llvm.dbg.value(metadata i32 0, metadata !498, metadata !DIExpression()), !dbg !1210
  store ptr @.str.35, ptr @infile, align 8, !dbg !1299, !tbaa !989
  %77 = load i32, ptr @optind, align 4, !dbg !1300, !tbaa !1063
  call void @llvm.dbg.value(metadata i32 %77, metadata !506, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i8 1, metadata !507, metadata !DIExpression()), !dbg !1210
  %78 = tail call i32 @getpagesize() #43, !dbg !1301
  %79 = sext i32 %78 to i64, !dbg !1301
  call void @llvm.dbg.value(metadata i64 %79, metadata !508, metadata !DIExpression()), !dbg !1210
  %80 = getelementptr inbounds %struct.stat, ptr %5, i64 0, i32 9
  %81 = getelementptr inbounds %struct.stat, ptr %5, i64 0, i32 2
  %82 = getelementptr inbounds %struct.stat, ptr %5, i64 0, i32 1
  %83 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 1
  %84 = select i1 %76, i1 true, i1 %13
  %85 = select i1 %84, i1 true, i1 %12
  %86 = select i1 %85, i1 true, i1 %15
  %87 = xor i1 %17, true
  %88 = or i1 %16, %87
  %89 = sext i32 %77 to i64, !dbg !1302
  %90 = sext i32 %0 to i64, !dbg !1302
  br label %91, !dbg !1302

91:                                               ; preds = %537, %72
  %92 = phi i64 [ %541, %537 ], [ %89, %72 ], !dbg !1303
  %93 = phi i32 [ %538, %537 ], [ -2, %72 ], !dbg !1303
  %94 = phi i1 [ %539, %537 ], [ true, %72 ]
  %95 = phi i1 [ %540, %537 ], [ false, %72 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !455, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i8 poison, metadata !507, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i64 %92, metadata !506, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i32 %93, metadata !504, metadata !DIExpression()), !dbg !1210
  %96 = icmp slt i64 %92, %90, !dbg !1304
  br i1 %96, label %99, label %97, !dbg !1306

97:                                               ; preds = %91
  %98 = load ptr, ptr @infile, align 8, !dbg !1307, !tbaa !989
  br label %102, !dbg !1306

99:                                               ; preds = %91
  %100 = getelementptr inbounds ptr, ptr %1, i64 %92, !dbg !1308
  %101 = load ptr, ptr %100, align 8, !dbg !1308, !tbaa !989
  store ptr %101, ptr @infile, align 8, !dbg !1309, !tbaa !989
  br label %102, !dbg !1310

102:                                              ; preds = %97, %99
  %103 = phi ptr [ %98, %97 ], [ %101, %99 ], !dbg !1307
  call void @llvm.dbg.value(metadata ptr %103, metadata !1074, metadata !DIExpression()), !dbg !1311
  call void @llvm.dbg.value(metadata ptr @.str.35, metadata !1080, metadata !DIExpression()), !dbg !1311
  %104 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %103, ptr noundef nonnull dereferenceable(2) @.str.35) #41, !dbg !1313
  %105 = icmp eq i32 %104, 0, !dbg !1314
  call void @llvm.dbg.value(metadata i1 %105, metadata !509, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1315
  br i1 %105, label %106, label %107, !dbg !1316

106:                                              ; preds = %102
  call void @llvm.dbg.value(metadata i8 1, metadata !455, metadata !DIExpression()), !dbg !1210
  store i32 0, ptr @input_desc, align 4, !dbg !1317, !tbaa !1063
  br label %115

107:                                              ; preds = %102
  %108 = call i32 (ptr, i32, ...) @open(ptr noundef %103, i32 noundef 0) #40, !dbg !1320
  store i32 %108, ptr @input_desc, align 4, !dbg !1322, !tbaa !1063
  %109 = icmp slt i32 %108, 0, !dbg !1323
  br i1 %109, label %110, label %115, !dbg !1325

110:                                              ; preds = %107
  %111 = tail call ptr @__errno_location() #43, !dbg !1326
  %112 = load i32, ptr %111, align 4, !dbg !1326, !tbaa !1063
  %113 = load ptr, ptr @infile, align 8, !dbg !1326, !tbaa !989
  %114 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %113) #40, !dbg !1326
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %112, ptr noundef nonnull @.str.36, ptr noundef %114) #40, !dbg !1326
  call void @llvm.dbg.value(metadata i8 0, metadata !507, metadata !DIExpression()), !dbg !1210
  br label %537, !dbg !1328

115:                                              ; preds = %106, %107
  %116 = phi i32 [ 0, %106 ], [ %108, %107 ], !dbg !1329
  %117 = phi i1 [ true, %106 ], [ %95, %107 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !455, metadata !DIExpression()), !dbg !1210
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #40, !dbg !1331
  call void @llvm.dbg.declare(metadata ptr %5, metadata !511, metadata !DIExpression()), !dbg !1332
  %118 = call i32 @fstat(i32 noundef %116, ptr noundef nonnull %5) #40, !dbg !1333
  %119 = icmp slt i32 %118, 0, !dbg !1334
  br i1 %119, label %120, label %125, !dbg !1335

120:                                              ; preds = %115
  %121 = tail call ptr @__errno_location() #43, !dbg !1336
  %122 = load i32, ptr %121, align 4, !dbg !1336, !tbaa !1063
  %123 = load ptr, ptr @infile, align 8, !dbg !1336, !tbaa !989
  %124 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %123) #40, !dbg !1336
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %122, ptr noundef nonnull @.str.36, ptr noundef %124) #40, !dbg !1336
  call void @llvm.dbg.value(metadata i8 0, metadata !507, metadata !DIExpression()), !dbg !1210
  br label %523, !dbg !1338

125:                                              ; preds = %115
  call void @llvm.dbg.value(metadata ptr %5, metadata !1242, metadata !DIExpression()), !dbg !1339
  %126 = load i32, ptr %80, align 8, !dbg !1341, !tbaa !1260
  %127 = icmp sgt i32 %126, 0, !dbg !1342
  %128 = select i1 %127, i32 %126, i32 512, !dbg !1342
  %129 = zext i32 %128 to i64, !dbg !1342
  call void @llvm.dbg.value(metadata i64 %129, metadata !1249, metadata !DIExpression()), !dbg !1339
  %130 = urem i32 262143, %128, !dbg !1343
  %131 = xor i32 %130, 262143, !dbg !1344
  %132 = zext i32 %131 to i64, !dbg !1344
  %133 = add nuw nsw i64 %129, %132, !dbg !1345
  call void @llvm.dbg.value(metadata i64 %133, metadata !1249, metadata !DIExpression()), !dbg !1339
  %134 = load i32, ptr %81, align 8, !dbg !1346, !tbaa !1269
  %135 = and i32 %134, 61440, !dbg !1346
  %136 = icmp ne i32 %135, 32768, !dbg !1346
  %137 = call i64 @llvm.ctpop.i64(i64 %133), !range !1270
  %138 = icmp ult i64 %137, 2
  %139 = select i1 %136, i1 true, i1 %138, !dbg !1347
  br i1 %139, label %148, label %140, !dbg !1347

140:                                              ; preds = %125
  call void @llvm.dbg.value(metadata i64 %133, metadata !1272, metadata !DIExpression()), !dbg !1348
  call void @llvm.dbg.value(metadata i64 %133, metadata !1280, metadata !DIExpression()), !dbg !1350
  %141 = call i64 @llvm.ctlz.i64(i64 %133, i1 false), !dbg !1352, !range !1288
  call void @llvm.dbg.value(metadata i64 %141, metadata !1250, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1353
  call void @llvm.dbg.value(metadata !DIArgList(i64 1, i32 64, i64 %141), metadata !1253, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_minus, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_stack_value)), !dbg !1354
  %142 = icmp eq i64 %141, 1, !dbg !1355
  %143 = sub nuw nsw i64 64, %141, !dbg !1356
  %144 = shl nuw i64 1, %143, !dbg !1356
  %145 = select i1 %142, i64 %133, i64 %144, !dbg !1356
  call void @llvm.dbg.value(metadata i64 %145, metadata !1249, metadata !DIExpression()), !dbg !1339
  %146 = call i64 @llvm.smin.i64(i64 %145, i64 2146435072), !dbg !1357
  call void @llvm.dbg.value(metadata i64 %146, metadata !512, metadata !DIExpression()), !dbg !1315
  %147 = load i32, ptr @input_desc, align 4, !dbg !1358, !tbaa !1063
  call void @fdadvise(i32 noundef %147, i64 noundef 0, i64 noundef 0, i32 noundef 2) #40, !dbg !1359
  br label %152, !dbg !1360

148:                                              ; preds = %125
  call void @llvm.dbg.value(metadata i64 %133, metadata !1249, metadata !DIExpression()), !dbg !1339
  %149 = call i64 @llvm.smin.i64(i64 %133, i64 2146435072), !dbg !1357
  call void @llvm.dbg.value(metadata i64 %149, metadata !512, metadata !DIExpression()), !dbg !1315
  %150 = load i32, ptr @input_desc, align 4, !dbg !1358, !tbaa !1063
  call void @fdadvise(i32 noundef %150, i64 noundef 0, i64 noundef 0, i32 noundef 2) #40, !dbg !1359
  %151 = trunc i32 %135 to i16, !dbg !1360
  switch i16 %151, label %152 [
    i16 4096, label %180
    i16 -16384, label %180
  ], !dbg !1360

152:                                              ; preds = %140, %148
  %153 = phi i64 [ %146, %140 ], [ %149, %148 ]
  %154 = load i64, ptr %5, align 8, !dbg !1361, !tbaa !1362
  %155 = load i64, ptr %4, align 8, !dbg !1361, !tbaa !1362
  %156 = load i64, ptr %82, align 8, !dbg !1361, !tbaa !1363
  %157 = load i64, ptr %83, align 8, !dbg !1361, !tbaa !1363
  %158 = icmp eq i64 %154, %155, !dbg !1361
  %159 = icmp eq i64 %156, %157, !dbg !1361
  %160 = and i1 %158, %159, !dbg !1361
  br i1 %160, label %161, label %180, !dbg !1364

161:                                              ; preds = %152
  %162 = load i32, ptr @input_desc, align 4, !dbg !1365, !tbaa !1063
  %163 = call i64 @lseek(i32 noundef %162, i64 noundef 0, i32 noundef 1) #40, !dbg !1366
  call void @llvm.dbg.value(metadata i64 %163, metadata !513, metadata !DIExpression()), !dbg !1367
  %164 = icmp sgt i64 %163, -1, !dbg !1368
  br i1 %164, label %165, label %180, !dbg !1369

165:                                              ; preds = %161
  %166 = icmp slt i32 %93, -1, !dbg !1370
  br i1 %166, label %167, label %169, !dbg !1372

167:                                              ; preds = %165
  %168 = call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef 1, i32 noundef 3) #40, !dbg !1373
  call void @llvm.dbg.value(metadata i32 %168, metadata !504, metadata !DIExpression()), !dbg !1210
  br label %169, !dbg !1374

169:                                              ; preds = %167, %165
  %170 = phi i32 [ %168, %167 ], [ %93, %165 ], !dbg !1210
  call void @llvm.dbg.value(metadata i32 %170, metadata !504, metadata !DIExpression()), !dbg !1210
  %171 = and i32 %170, -2147482624, !dbg !1375
  %172 = icmp eq i32 %171, 1024, !dbg !1375
  %173 = select i1 %172, i32 2, i32 1, !dbg !1376
  call void @llvm.dbg.value(metadata i32 %173, metadata !518, metadata !DIExpression()), !dbg !1377
  %174 = call i64 @lseek(i32 noundef 1, i64 noundef 0, i32 noundef %173) #40, !dbg !1378
  %175 = icmp slt i64 %163, %174, !dbg !1380
  br i1 %175, label %176, label %180, !dbg !1381

176:                                              ; preds = %169
  %177 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.37, i32 noundef 5) #40, !dbg !1382
  %178 = load ptr, ptr @infile, align 8, !dbg !1382, !tbaa !989
  %179 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %178) #40, !dbg !1382
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %177, ptr noundef %179) #40, !dbg !1382
  call void @llvm.dbg.value(metadata i8 poison, metadata !507, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i32 %170, metadata !504, metadata !DIExpression()), !dbg !1210
  br label %523

180:                                              ; preds = %161, %169, %148, %148, %152
  %181 = phi i64 [ %149, %148 ], [ %153, %152 ], [ %149, %148 ], [ %153, %169 ], [ %153, %161 ]
  %182 = phi i32 [ %93, %148 ], [ %93, %152 ], [ %93, %148 ], [ %170, %169 ], [ %93, %161 ], !dbg !1210
  call void @llvm.dbg.value(metadata i8 poison, metadata !507, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i32 %182, metadata !504, metadata !DIExpression()), !dbg !1210
  br i1 %86, label %224, label %183, !dbg !1384

183:                                              ; preds = %180
  %184 = icmp eq i32 %135, 32768
  %185 = select i1 %75, i1 %184, i1 false, !dbg !1385
  br i1 %185, label %186, label %198, !dbg !1385

186:                                              ; preds = %183
  call void @llvm.dbg.value(metadata i64 9223372035781033984, metadata !1386, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i8 poison, metadata !1391, metadata !DIExpression()), !dbg !1397
  %187 = load i32, ptr @input_desc, align 4, !dbg !1398, !tbaa !1063
  %188 = call i64 @rpl_copy_file_range(i32 noundef %187, ptr noundef null, i32 noundef 1, ptr noundef null, i64 noundef 9223372035781033984, i32 noundef 0) #40, !dbg !1400
  switch i64 %188, label %189 [
    i64 0, label %198
    i64 -1, label %192
  ], !dbg !1401

189:                                              ; preds = %186, %189
  call void @llvm.dbg.value(metadata i8 poison, metadata !1391, metadata !DIExpression()), !dbg !1397
  %190 = load i32, ptr @input_desc, align 4, !dbg !1398, !tbaa !1063
  %191 = call i64 @rpl_copy_file_range(i32 noundef %190, ptr noundef null, i32 noundef 1, ptr noundef null, i64 noundef 9223372035781033984, i32 noundef 0) #40, !dbg !1400
  switch i64 %191, label %189 [
    i64 0, label %519
    i64 -1, label %192
  ], !dbg !1401, !llvm.loop !1402

192:                                              ; preds = %189, %186
  %193 = tail call ptr @__errno_location() #43, !dbg !1406
  %194 = load i32, ptr %193, align 4, !dbg !1406, !tbaa !1063
  switch i32 %194, label %195 [
    i32 38, label %198
    i32 95, label %198
    i32 22, label %198
    i32 9, label %198
    i32 18, label %198
    i32 26, label %198
    i32 1, label %198
    i32 27, label %198
  ], !dbg !1409

195:                                              ; preds = %192
  %196 = load ptr, ptr @infile, align 8, !dbg !1410, !tbaa !989
  %197 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %196) #40, !dbg !1410
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %194, ptr noundef nonnull @.str.36, ptr noundef %197) #40, !dbg !1410
  br label %519, !dbg !1411

198:                                              ; preds = %183, %192, %192, %192, %192, %192, %192, %192, %192, %186
  call void @llvm.dbg.value(metadata i32 0, metadata !522, metadata !DIExpression()), !dbg !1412
  %199 = call i64 @llvm.smax.i64(i64 %181, i64 %74), !dbg !1413
  call void @llvm.dbg.value(metadata i64 %199, metadata !512, metadata !DIExpression()), !dbg !1315
  %200 = call noalias nonnull ptr @xalignalloc(i64 noundef %79, i64 noundef %199) #45, !dbg !1416
  call void @llvm.dbg.value(metadata ptr %200, metadata !521, metadata !DIExpression()), !dbg !1315
  call void @llvm.dbg.value(metadata ptr %200, metadata !1417, metadata !DIExpression()), !dbg !1425
  call void @llvm.dbg.value(metadata i64 %199, metadata !1422, metadata !DIExpression()), !dbg !1425
  br label %201, !dbg !1427

201:                                              ; preds = %212, %198
  %202 = load i32, ptr @input_desc, align 4, !dbg !1428, !tbaa !1063
  %203 = call i64 @read(i32 noundef %202, ptr noundef nonnull %200, i64 noundef %199) #40, !dbg !1429
  call void @llvm.dbg.value(metadata i64 %203, metadata !1423, metadata !DIExpression()), !dbg !1430
  %204 = icmp sgt i64 %203, -1, !dbg !1431
  br i1 %204, label %210, label %205, !dbg !1433

205:                                              ; preds = %201
  %206 = tail call ptr @__errno_location() #43, !dbg !1434
  %207 = load i32, ptr %206, align 4, !dbg !1434, !tbaa !1063
  %208 = load ptr, ptr @infile, align 8, !dbg !1434, !tbaa !989
  %209 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %208) #40, !dbg !1434
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %207, ptr noundef nonnull @.str.36, ptr noundef %209) #40, !dbg !1434
  br label %519, !dbg !1436

210:                                              ; preds = %201
  %211 = icmp eq i64 %203, 0, !dbg !1437
  br i1 %211, label %519, label %212, !dbg !1439

212:                                              ; preds = %210
  %213 = call i64 @full_write(i32 noundef 1, ptr noundef nonnull %200, i64 noundef %203) #40, !dbg !1440
  %214 = icmp eq i64 %213, %203, !dbg !1442
  br i1 %214, label %201, label %215, !dbg !1443

215:                                              ; preds = %212
  %216 = tail call ptr @__errno_location() #43, !dbg !1444
  %217 = load i32, ptr %216, align 4, !dbg !1444, !tbaa !1063
  call void @llvm.dbg.value(metadata i32 %217, metadata !1447, metadata !DIExpression()), !dbg !1449
  %218 = load ptr, ptr @stdout, align 8, !dbg !1450, !tbaa !989
  %219 = call i32 @fflush_unlocked(ptr noundef %218) #40, !dbg !1450
  %220 = load ptr, ptr @stdout, align 8, !dbg !1451, !tbaa !989
  %221 = call i32 @fpurge(ptr noundef %220) #40, !dbg !1452
  %222 = load ptr, ptr @stdout, align 8, !dbg !1453, !tbaa !989
  call void @clearerr_unlocked(ptr noundef %222) #40, !dbg !1453
  %223 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.77, i32 noundef 5) #40, !dbg !1454
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %217, ptr noundef %223) #40, !dbg !1454
  unreachable, !dbg !1454

224:                                              ; preds = %180
  %225 = add nsw i64 %181, 1, !dbg !1455
  %226 = call noalias nonnull ptr @xalignalloc(i64 noundef %79, i64 noundef %225) #45, !dbg !1456
  call void @llvm.dbg.value(metadata ptr %226, metadata !521, metadata !DIExpression()), !dbg !1315
  call void @llvm.dbg.value(metadata i64 %149, metadata !525, metadata !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_stack_value)), !dbg !1457
  %227 = shl i64 %181, 2, !dbg !1458
  call void @llvm.dbg.value(metadata i64 %227, metadata !525, metadata !DIExpression()), !dbg !1457
  %228 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %227, i64 %74), !dbg !1460
  %229 = extractvalue { i64, i1 } %228, 1, !dbg !1460
  call void @llvm.dbg.value(metadata i64 poison, metadata !525, metadata !DIExpression()), !dbg !1457
  br i1 %229, label %234, label %230, !dbg !1461

230:                                              ; preds = %224
  %231 = extractvalue { i64, i1 } %228, 0, !dbg !1460
  call void @llvm.dbg.value(metadata i64 %231, metadata !525, metadata !DIExpression()), !dbg !1457
  %232 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %231, i64 19), !dbg !1462
  %233 = extractvalue { i64, i1 } %232, 1, !dbg !1462
  call void @llvm.dbg.value(metadata i64 poison, metadata !525, metadata !DIExpression()), !dbg !1457
  br i1 %233, label %234, label %235, !dbg !1463

234:                                              ; preds = %230, %224
  call void @xalloc_die() #42, !dbg !1464
  unreachable, !dbg !1464

235:                                              ; preds = %230
  %236 = extractvalue { i64, i1 } %232, 0, !dbg !1462
  call void @llvm.dbg.value(metadata i64 %236, metadata !525, metadata !DIExpression()), !dbg !1457
  %237 = call noalias nonnull ptr @xalignalloc(i64 noundef %79, i64 noundef %236) #45, !dbg !1465
  call void @llvm.dbg.value(metadata ptr %237, metadata !527, metadata !DIExpression()), !dbg !1457
  call void @llvm.dbg.value(metadata ptr %226, metadata !1466, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %149, metadata !1471, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata ptr %237, metadata !1472, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %74, metadata !1473, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i1 %13, metadata !1474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1497
  call void @llvm.dbg.value(metadata i1 %12, metadata !1475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1497
  call void @llvm.dbg.value(metadata i1 %17, metadata !1476, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1497
  call void @llvm.dbg.value(metadata i1 %16, metadata !1477, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1497
  call void @llvm.dbg.value(metadata i1 %14, metadata !1478, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1497
  call void @llvm.dbg.value(metadata i1 %15, metadata !1479, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1497
  %238 = load i32, ptr @newlines2, align 4, !dbg !1499, !tbaa !1063
  call void @llvm.dbg.value(metadata i32 %238, metadata !1481, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 1, metadata !1482, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata ptr %226, metadata !1483, metadata !DIExpression()), !dbg !1497
  %239 = getelementptr inbounds i8, ptr %226, i64 1, !dbg !1500
  call void @llvm.dbg.value(metadata ptr %239, metadata !1484, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata ptr %237, metadata !1485, metadata !DIExpression()), !dbg !1497
  %240 = getelementptr inbounds i8, ptr %237, i64 %74
  %241 = ptrtoint ptr %237 to i64
  br label %242, !dbg !1501

242:                                              ; preds = %408, %235
  %243 = phi ptr [ %237, %235 ], [ %409, %408 ], !dbg !1502
  %244 = phi i32 [ %238, %235 ], [ %410, %408 ], !dbg !1503
  %245 = phi i1 [ true, %235 ], [ %402, %408 ]
  %246 = phi ptr [ %226, %235 ], [ %403, %408 ], !dbg !1504
  %247 = phi ptr [ %239, %235 ], [ %411, %408 ], !dbg !1497
  call void @llvm.dbg.value(metadata ptr %247, metadata !1484, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata ptr %246, metadata !1483, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 poison, metadata !1482, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i32 %244, metadata !1481, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata ptr %243, metadata !1485, metadata !DIExpression()), !dbg !1497
  %248 = icmp ugt ptr %240, %243, !dbg !1505
  br i1 %248, label %271, label %249, !dbg !1506

249:                                              ; preds = %242
  %250 = ptrtoint ptr %243 to i64
  br label %251, !dbg !1507

251:                                              ; preds = %264, %249
  %252 = phi ptr [ %265, %264 ], [ %237, %249 ], !dbg !1508
  call void @llvm.dbg.value(metadata ptr %252, metadata !1486, metadata !DIExpression()), !dbg !1508
  %253 = call i64 @full_write(i32 noundef 1, ptr noundef %252, i64 noundef %74) #40, !dbg !1509
  %254 = icmp eq i64 %253, %74, !dbg !1512
  br i1 %254, label %264, label %255, !dbg !1513

255:                                              ; preds = %251
  %256 = tail call ptr @__errno_location() #43, !dbg !1514
  %257 = load i32, ptr %256, align 4, !dbg !1514, !tbaa !1063
  call void @llvm.dbg.value(metadata i32 %257, metadata !1447, metadata !DIExpression()), !dbg !1516
  %258 = load ptr, ptr @stdout, align 8, !dbg !1517, !tbaa !989
  %259 = call i32 @fflush_unlocked(ptr noundef %258) #40, !dbg !1517
  %260 = load ptr, ptr @stdout, align 8, !dbg !1518, !tbaa !989
  %261 = call i32 @fpurge(ptr noundef %260) #40, !dbg !1519
  %262 = load ptr, ptr @stdout, align 8, !dbg !1520, !tbaa !989
  call void @clearerr_unlocked(ptr noundef %262) #40, !dbg !1520
  %263 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.77, i32 noundef 5) #40, !dbg !1521
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %257, ptr noundef %263) #40, !dbg !1521
  unreachable, !dbg !1521

264:                                              ; preds = %251
  %265 = getelementptr inbounds i8, ptr %252, i64 %74, !dbg !1522
  call void @llvm.dbg.value(metadata ptr %265, metadata !1486, metadata !DIExpression()), !dbg !1508
  call void @llvm.dbg.value(metadata ptr %243, metadata !1485, metadata !DIExpression()), !dbg !1497
  %266 = ptrtoint ptr %265 to i64, !dbg !1523
  %267 = sub i64 %250, %266, !dbg !1523
  call void @llvm.dbg.value(metadata i64 %267, metadata !1491, metadata !DIExpression()), !dbg !1508
  %268 = icmp slt i64 %267, %74, !dbg !1524
  br i1 %268, label %269, label %251, !dbg !1525, !llvm.loop !1526

269:                                              ; preds = %264
  call void @llvm.dbg.value(metadata ptr %237, metadata !1528, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata ptr %265, metadata !1534, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %267, metadata !1535, metadata !DIExpression()), !dbg !1536
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %237, ptr noundef nonnull align 1 %265, i64 noundef %267, i1 noundef false) #40, !dbg !1538
  %270 = getelementptr inbounds i8, ptr %237, i64 %267, !dbg !1539
  call void @llvm.dbg.value(metadata ptr %270, metadata !1485, metadata !DIExpression()), !dbg !1497
  br label %271, !dbg !1540

271:                                              ; preds = %269, %242
  %272 = phi ptr [ %243, %242 ], [ %270, %269 ], !dbg !1497
  %273 = icmp ugt ptr %247, %246, !dbg !1541
  br i1 %273, label %274, label %351, !dbg !1542

274:                                              ; preds = %271
  call void @llvm.dbg.value(metadata i8 0, metadata !1492, metadata !DIExpression()), !dbg !1543
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #40, !dbg !1544
  call void @llvm.dbg.value(metadata i32 0, metadata !1495, metadata !DIExpression()), !dbg !1543
  store i32 0, ptr %3, align 4, !dbg !1545, !tbaa !1063
  br i1 %245, label %275, label %289, !dbg !1546

275:                                              ; preds = %274
  %276 = load i32, ptr @input_desc, align 4, !dbg !1548, !tbaa !1063
  call void @llvm.dbg.value(metadata ptr %3, metadata !1495, metadata !DIExpression(DW_OP_deref)), !dbg !1543
  %277 = call i32 (i32, i64, ...) @ioctl(i32 noundef %276, i64 noundef 21531, ptr noundef nonnull %3) #40, !dbg !1549
  %278 = icmp sgt i32 %277, -1, !dbg !1550
  br i1 %278, label %286, label %279, !dbg !1551

279:                                              ; preds = %275
  %280 = tail call ptr @__errno_location() #43, !dbg !1552
  %281 = load i32, ptr %280, align 4, !dbg !1552, !tbaa !1063
  switch i32 %281, label %282 [
    i32 95, label %286
    i32 25, label %286
    i32 22, label %286
    i32 19, label %286
    i32 38, label %286
  ], !dbg !1555

282:                                              ; preds = %279
  %283 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.76, i32 noundef 5) #40, !dbg !1556
  %284 = load ptr, ptr @infile, align 8, !dbg !1556, !tbaa !989
  %285 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %284) #40, !dbg !1556
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %281, ptr noundef %283, ptr noundef %285) #40, !dbg !1556
  br label %517, !dbg !1558

286:                                              ; preds = %279, %279, %279, %279, %279, %275
  %287 = load i32, ptr %3, align 4, !dbg !1559, !tbaa !1063
  call void @llvm.dbg.value(metadata i8 poison, metadata !1482, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i32 %287, metadata !1495, metadata !DIExpression()), !dbg !1543
  %288 = icmp eq i32 %287, 0, !dbg !1561
  call void @llvm.dbg.value(metadata i8 poison, metadata !1492, metadata !DIExpression()), !dbg !1543
  br i1 %288, label %289, label %306, !dbg !1562

289:                                              ; preds = %286, %274
  %290 = phi i1 [ %278, %286 ], [ false, %274 ]
  call void @llvm.dbg.value(metadata ptr %237, metadata !1563, metadata !DIExpression()), !dbg !1570
  call void @llvm.dbg.value(metadata ptr undef, metadata !1568, metadata !DIExpression()), !dbg !1570
  %291 = ptrtoint ptr %272 to i64, !dbg !1573
  %292 = sub i64 %291, %241, !dbg !1573
  call void @llvm.dbg.value(metadata i64 %292, metadata !1569, metadata !DIExpression()), !dbg !1570
  %293 = icmp sgt i64 %292, 0, !dbg !1574
  br i1 %293, label %294, label %306, !dbg !1576

294:                                              ; preds = %289
  %295 = call i64 @full_write(i32 noundef 1, ptr noundef nonnull %237, i64 noundef %292) #40, !dbg !1577
  %296 = icmp eq i64 %295, %292, !dbg !1580
  br i1 %296, label %306, label %297, !dbg !1581

297:                                              ; preds = %294
  %298 = tail call ptr @__errno_location() #43, !dbg !1582
  %299 = load i32, ptr %298, align 4, !dbg !1582, !tbaa !1063
  call void @llvm.dbg.value(metadata i32 %299, metadata !1447, metadata !DIExpression()), !dbg !1584
  %300 = load ptr, ptr @stdout, align 8, !dbg !1585, !tbaa !989
  %301 = call i32 @fflush_unlocked(ptr noundef %300) #40, !dbg !1585
  %302 = load ptr, ptr @stdout, align 8, !dbg !1586, !tbaa !989
  %303 = call i32 @fpurge(ptr noundef %302) #40, !dbg !1587
  %304 = load ptr, ptr @stdout, align 8, !dbg !1588, !tbaa !989
  call void @clearerr_unlocked(ptr noundef %304) #40, !dbg !1588
  %305 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.77, i32 noundef 5) #40, !dbg !1589
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %299, ptr noundef %305) #40, !dbg !1589
  unreachable, !dbg !1589

306:                                              ; preds = %294, %289, %286
  %307 = phi i1 [ %278, %286 ], [ %290, %294 ], [ %290, %289 ]
  %308 = phi ptr [ %272, %286 ], [ %237, %294 ], [ %272, %289 ], !dbg !1497
  %309 = load i32, ptr @input_desc, align 4, !dbg !1590, !tbaa !1063
  %310 = call i64 @read(i32 noundef %309, ptr noundef nonnull %226, i64 noundef %181) #40, !dbg !1591
  call void @llvm.dbg.value(metadata i64 %310, metadata !1496, metadata !DIExpression()), !dbg !1543
  %311 = icmp slt i64 %310, 0, !dbg !1592
  br i1 %311, label %312, label %331, !dbg !1594

312:                                              ; preds = %306
  %313 = tail call ptr @__errno_location() #43, !dbg !1595
  %314 = load i32, ptr %313, align 4, !dbg !1595, !tbaa !1063
  %315 = load ptr, ptr @infile, align 8, !dbg !1595, !tbaa !989
  %316 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %315) #40, !dbg !1595
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %314, ptr noundef nonnull @.str.36, ptr noundef %316) #40, !dbg !1595
  call void @llvm.dbg.value(metadata ptr %237, metadata !1563, metadata !DIExpression()), !dbg !1597
  call void @llvm.dbg.value(metadata ptr undef, metadata !1568, metadata !DIExpression()), !dbg !1597
  %317 = ptrtoint ptr %308 to i64, !dbg !1599
  %318 = sub i64 %317, %241, !dbg !1599
  call void @llvm.dbg.value(metadata i64 %318, metadata !1569, metadata !DIExpression()), !dbg !1597
  %319 = icmp sgt i64 %318, 0, !dbg !1600
  br i1 %319, label %320, label %517, !dbg !1601

320:                                              ; preds = %312
  %321 = call i64 @full_write(i32 noundef 1, ptr noundef nonnull %237, i64 noundef %318) #40, !dbg !1602
  %322 = icmp eq i64 %321, %318, !dbg !1603
  br i1 %322, label %517, label %323, !dbg !1604

323:                                              ; preds = %320
  %324 = load i32, ptr %313, align 4, !dbg !1605, !tbaa !1063
  call void @llvm.dbg.value(metadata i32 %324, metadata !1447, metadata !DIExpression()), !dbg !1607
  %325 = load ptr, ptr @stdout, align 8, !dbg !1608, !tbaa !989
  %326 = call i32 @fflush_unlocked(ptr noundef %325) #40, !dbg !1608
  %327 = load ptr, ptr @stdout, align 8, !dbg !1609, !tbaa !989
  %328 = call i32 @fpurge(ptr noundef %327) #40, !dbg !1610
  %329 = load ptr, ptr @stdout, align 8, !dbg !1611, !tbaa !989
  call void @clearerr_unlocked(ptr noundef %329) #40, !dbg !1611
  %330 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.77, i32 noundef 5) #40, !dbg !1612
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %324, ptr noundef %330) #40, !dbg !1612
  unreachable, !dbg !1612

331:                                              ; preds = %306
  %332 = icmp eq i64 %310, 0, !dbg !1613
  br i1 %332, label %333, label %349, !dbg !1615

333:                                              ; preds = %331
  call void @llvm.dbg.value(metadata ptr %237, metadata !1563, metadata !DIExpression()), !dbg !1616
  call void @llvm.dbg.value(metadata ptr undef, metadata !1568, metadata !DIExpression()), !dbg !1616
  %334 = ptrtoint ptr %308 to i64, !dbg !1619
  %335 = sub i64 %334, %241, !dbg !1619
  call void @llvm.dbg.value(metadata i64 %335, metadata !1569, metadata !DIExpression()), !dbg !1616
  %336 = icmp sgt i64 %335, 0, !dbg !1620
  br i1 %336, label %337, label %517, !dbg !1621

337:                                              ; preds = %333
  %338 = call i64 @full_write(i32 noundef 1, ptr noundef nonnull %237, i64 noundef %335) #40, !dbg !1622
  %339 = icmp eq i64 %338, %335, !dbg !1623
  br i1 %339, label %517, label %340, !dbg !1624

340:                                              ; preds = %337
  %341 = tail call ptr @__errno_location() #43, !dbg !1625
  %342 = load i32, ptr %341, align 4, !dbg !1625, !tbaa !1063
  call void @llvm.dbg.value(metadata i32 %342, metadata !1447, metadata !DIExpression()), !dbg !1627
  %343 = load ptr, ptr @stdout, align 8, !dbg !1628, !tbaa !989
  %344 = call i32 @fflush_unlocked(ptr noundef %343) #40, !dbg !1628
  %345 = load ptr, ptr @stdout, align 8, !dbg !1629, !tbaa !989
  %346 = call i32 @fpurge(ptr noundef %345) #40, !dbg !1630
  %347 = load ptr, ptr @stdout, align 8, !dbg !1631, !tbaa !989
  call void @clearerr_unlocked(ptr noundef %347) #40, !dbg !1631
  %348 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.77, i32 noundef 5) #40, !dbg !1632
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %342, ptr noundef %348) #40, !dbg !1632
  unreachable, !dbg !1632

349:                                              ; preds = %331
  call void @llvm.dbg.value(metadata ptr %226, metadata !1484, metadata !DIExpression()), !dbg !1497
  %350 = getelementptr inbounds i8, ptr %226, i64 %310, !dbg !1633
  call void @llvm.dbg.value(metadata ptr %350, metadata !1483, metadata !DIExpression()), !dbg !1497
  store i8 10, ptr %350, align 1, !dbg !1634, !tbaa !1072
  call void @llvm.dbg.value(metadata i8 poison, metadata !1482, metadata !DIExpression()), !dbg !1497
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #40, !dbg !1635
  br label %399

351:                                              ; preds = %271
  %352 = add nsw i32 %244, 1, !dbg !1636
  call void @llvm.dbg.value(metadata i32 %352, metadata !1481, metadata !DIExpression()), !dbg !1497
  %353 = icmp sgt i32 %244, -1, !dbg !1639
  br i1 %353, label %354, label %385, !dbg !1640

354:                                              ; preds = %351
  %355 = icmp ne i32 %244, 0, !dbg !1641
  %356 = and i1 %15, %355, !dbg !1644
  %357 = select i1 %355, i32 2, i32 1, !dbg !1644
  br i1 %356, label %399, label %358, !dbg !1644

358:                                              ; preds = %354
  call void @llvm.dbg.value(metadata i32 %357, metadata !1481, metadata !DIExpression()), !dbg !1497
  br i1 %88, label %385, label %359, !dbg !1645

359:                                              ; preds = %358
  %360 = load ptr, ptr @line_num_start, align 8
  br label %361, !dbg !1647

361:                                              ; preds = %366, %359
  %362 = phi ptr [ getelementptr inbounds ([20 x i8], ptr @line_buf, i64 0, i64 17), %359 ], [ %367, %366 ], !dbg !1653
  call void @llvm.dbg.value(metadata ptr %362, metadata !1650, metadata !DIExpression()), !dbg !1653
  %363 = load i8, ptr %362, align 1, !dbg !1654, !tbaa !1072
  %364 = add i8 %363, 1, !dbg !1654
  store i8 %364, ptr %362, align 1, !dbg !1654, !tbaa !1072
  %365 = icmp ult i8 %363, 57, !dbg !1657
  br i1 %365, label %380, label %366, !dbg !1658

366:                                              ; preds = %361
  %367 = getelementptr inbounds i8, ptr %362, i64 -1, !dbg !1659
  call void @llvm.dbg.value(metadata ptr %367, metadata !1650, metadata !DIExpression()), !dbg !1653
  store i8 48, ptr %362, align 1, !dbg !1660, !tbaa !1072
  %368 = icmp ult ptr %367, %360, !dbg !1661
  br i1 %368, label %369, label %361, !dbg !1662, !llvm.loop !1663

369:                                              ; preds = %366
  %370 = icmp ugt ptr %360, @line_buf, !dbg !1665
  br i1 %370, label %371, label %373, !dbg !1667

371:                                              ; preds = %369
  %372 = getelementptr inbounds i8, ptr %360, i64 -1, !dbg !1668
  store ptr %372, ptr @line_num_start, align 8, !dbg !1668, !tbaa !989
  store i8 49, ptr %372, align 1, !dbg !1669, !tbaa !1072
  br label %374, !dbg !1670

373:                                              ; preds = %369
  store i8 62, ptr @line_buf, align 4, !dbg !1671, !tbaa !1072
  br label %374

374:                                              ; preds = %373, %371
  %375 = phi ptr [ %360, %373 ], [ %372, %371 ], !dbg !1672
  %376 = load ptr, ptr @line_num_print, align 8, !dbg !1674, !tbaa !989
  %377 = icmp ult ptr %375, %376, !dbg !1675
  br i1 %377, label %378, label %382, !dbg !1676

378:                                              ; preds = %374
  %379 = getelementptr inbounds i8, ptr %376, i64 -1, !dbg !1677
  store ptr %379, ptr @line_num_print, align 8, !dbg !1677, !tbaa !989
  br label %382, !dbg !1678

380:                                              ; preds = %361
  %381 = load ptr, ptr @line_num_print, align 8, !dbg !1679, !tbaa !989
  br label %382, !dbg !1679

382:                                              ; preds = %380, %378, %374
  %383 = phi ptr [ %381, %380 ], [ %376, %374 ], [ %379, %378 ], !dbg !1679
  call void @llvm.dbg.value(metadata ptr %272, metadata !1485, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata ptr %272, metadata !1680, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata ptr %383, metadata !1686, metadata !DIExpression()), !dbg !1687
  %384 = call ptr @stpcpy(ptr %272, ptr %383), !dbg !1689
  call void @llvm.dbg.value(metadata ptr %384, metadata !1485, metadata !DIExpression()), !dbg !1497
  br label %385, !dbg !1690

385:                                              ; preds = %382, %358, %351
  %386 = phi ptr [ %272, %358 ], [ %384, %382 ], [ %272, %351 ], !dbg !1497
  %387 = phi i32 [ %357, %358 ], [ %357, %382 ], [ %352, %351 ], !dbg !1691
  call void @llvm.dbg.value(metadata i32 %387, metadata !1481, metadata !DIExpression()), !dbg !1497
  br i1 %14, label %388, label %396, !dbg !1692

388:                                              ; preds = %385
  %389 = load i1, ptr @pending_cr, align 1, !dbg !1693
  br i1 %389, label %390, label %393, !dbg !1697

390:                                              ; preds = %388
  call void @llvm.dbg.value(metadata ptr %386, metadata !1485, metadata !DIExpression()), !dbg !1497
  %391 = getelementptr inbounds i8, ptr %386, i64 1, !dbg !1698
  call void @llvm.dbg.value(metadata ptr %391, metadata !1485, metadata !DIExpression()), !dbg !1497
  store i8 94, ptr %386, align 1, !dbg !1700, !tbaa !1072
  %392 = getelementptr inbounds i8, ptr %386, i64 2, !dbg !1701
  call void @llvm.dbg.value(metadata ptr %392, metadata !1485, metadata !DIExpression()), !dbg !1497
  store i8 77, ptr %391, align 1, !dbg !1702, !tbaa !1072
  store i1 false, ptr @pending_cr, align 1, !dbg !1703
  br label %393, !dbg !1704

393:                                              ; preds = %390, %388
  %394 = phi ptr [ %392, %390 ], [ %386, %388 ], !dbg !1497
  call void @llvm.dbg.value(metadata ptr %394, metadata !1485, metadata !DIExpression()), !dbg !1497
  %395 = getelementptr inbounds i8, ptr %394, i64 1, !dbg !1705
  call void @llvm.dbg.value(metadata ptr %395, metadata !1485, metadata !DIExpression()), !dbg !1497
  store i8 36, ptr %394, align 1, !dbg !1706, !tbaa !1072
  br label %396, !dbg !1707

396:                                              ; preds = %393, %385
  %397 = phi ptr [ %395, %393 ], [ %386, %385 ], !dbg !1497
  call void @llvm.dbg.value(metadata ptr %397, metadata !1485, metadata !DIExpression()), !dbg !1497
  %398 = getelementptr inbounds i8, ptr %397, i64 1, !dbg !1708
  call void @llvm.dbg.value(metadata ptr %398, metadata !1485, metadata !DIExpression()), !dbg !1497
  store i8 10, ptr %397, align 1, !dbg !1709, !tbaa !1072
  br label %399

399:                                              ; preds = %396, %354, %349
  %400 = phi ptr [ %308, %349 ], [ %398, %396 ], [ %272, %354 ], !dbg !1497
  %401 = phi i32 [ %244, %349 ], [ %387, %396 ], [ 2, %354 ], !dbg !1497
  %402 = phi i1 [ %307, %349 ], [ %245, %396 ], [ %245, %354 ]
  %403 = phi ptr [ %350, %349 ], [ %246, %396 ], [ %246, %354 ], !dbg !1504
  %404 = phi ptr [ %226, %349 ], [ %247, %396 ], [ %247, %354 ]
  %405 = getelementptr inbounds i8, ptr %404, i64 1, !dbg !1710
  %406 = load i8, ptr %404, align 1, !dbg !1710, !tbaa !1072
  call void @llvm.dbg.value(metadata i8 %406, metadata !1480, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata ptr %405, metadata !1484, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata ptr %403, metadata !1483, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 poison, metadata !1482, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i32 %401, metadata !1481, metadata !DIExpression()), !dbg !1497
  %407 = icmp eq i8 %406, 10, !dbg !1711
  br i1 %407, label %408, label %412, !dbg !1712

408:                                              ; preds = %500, %481, %399
  %409 = phi ptr [ %400, %399 ], [ %449, %481 ], [ %492, %500 ]
  %410 = phi i32 [ %401, %399 ], [ -1, %481 ], [ -1, %500 ]
  %411 = phi ptr [ %405, %399 ], [ %450, %481 ], [ %493, %500 ]
  br label %242, !dbg !1497, !llvm.loop !1713

412:                                              ; preds = %399
  %413 = load i1, ptr @pending_cr, align 1, !dbg !1716
  br i1 %413, label %414, label %416, !dbg !1718

414:                                              ; preds = %412
  call void @llvm.dbg.value(metadata ptr %400, metadata !1485, metadata !DIExpression()), !dbg !1497
  %415 = getelementptr inbounds i8, ptr %400, i64 1, !dbg !1719
  call void @llvm.dbg.value(metadata ptr %415, metadata !1485, metadata !DIExpression()), !dbg !1497
  store i8 13, ptr %400, align 1, !dbg !1721, !tbaa !1072
  store i1 false, ptr @pending_cr, align 1, !dbg !1722
  br label %416, !dbg !1723

416:                                              ; preds = %414, %412
  %417 = phi ptr [ %415, %414 ], [ %400, %412 ], !dbg !1497
  %418 = icmp sgt i32 %401, -1, !dbg !1724
  %419 = and i1 %17, %418, !dbg !1726
  br i1 %419, label %420, label %446, !dbg !1726

420:                                              ; preds = %416
  %421 = load ptr, ptr @line_num_start, align 8
  br label %422, !dbg !1727

422:                                              ; preds = %427, %420
  %423 = phi ptr [ getelementptr inbounds ([20 x i8], ptr @line_buf, i64 0, i64 17), %420 ], [ %428, %427 ], !dbg !1730
  call void @llvm.dbg.value(metadata ptr %423, metadata !1650, metadata !DIExpression()), !dbg !1730
  %424 = load i8, ptr %423, align 1, !dbg !1731, !tbaa !1072
  %425 = add i8 %424, 1, !dbg !1731
  store i8 %425, ptr %423, align 1, !dbg !1731, !tbaa !1072
  %426 = icmp ult i8 %424, 57, !dbg !1732
  br i1 %426, label %441, label %427, !dbg !1733

427:                                              ; preds = %422
  %428 = getelementptr inbounds i8, ptr %423, i64 -1, !dbg !1734
  call void @llvm.dbg.value(metadata ptr %428, metadata !1650, metadata !DIExpression()), !dbg !1730
  store i8 48, ptr %423, align 1, !dbg !1735, !tbaa !1072
  %429 = icmp ult ptr %428, %421, !dbg !1736
  br i1 %429, label %430, label %422, !dbg !1737, !llvm.loop !1738

430:                                              ; preds = %427
  %431 = icmp ugt ptr %421, @line_buf, !dbg !1740
  br i1 %431, label %432, label %434, !dbg !1741

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, ptr %421, i64 -1, !dbg !1742
  store ptr %433, ptr @line_num_start, align 8, !dbg !1742, !tbaa !989
  store i8 49, ptr %433, align 1, !dbg !1743, !tbaa !1072
  br label %435, !dbg !1744

434:                                              ; preds = %430
  store i8 62, ptr @line_buf, align 4, !dbg !1745, !tbaa !1072
  br label %435

435:                                              ; preds = %434, %432
  %436 = phi ptr [ %421, %434 ], [ %433, %432 ], !dbg !1746
  %437 = load ptr, ptr @line_num_print, align 8, !dbg !1747, !tbaa !989
  %438 = icmp ult ptr %436, %437, !dbg !1748
  br i1 %438, label %439, label %443, !dbg !1749

439:                                              ; preds = %435
  %440 = getelementptr inbounds i8, ptr %437, i64 -1, !dbg !1750
  store ptr %440, ptr @line_num_print, align 8, !dbg !1750, !tbaa !989
  br label %443, !dbg !1751

441:                                              ; preds = %422
  %442 = load ptr, ptr @line_num_print, align 8, !dbg !1752, !tbaa !989
  br label %443, !dbg !1752

443:                                              ; preds = %441, %439, %435
  %444 = phi ptr [ %442, %441 ], [ %437, %435 ], [ %440, %439 ], !dbg !1752
  call void @llvm.dbg.value(metadata ptr %417, metadata !1485, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata ptr %417, metadata !1680, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata ptr %444, metadata !1686, metadata !DIExpression()), !dbg !1753
  %445 = call ptr @stpcpy(ptr %417, ptr %444), !dbg !1755
  call void @llvm.dbg.value(metadata ptr %445, metadata !1485, metadata !DIExpression()), !dbg !1497
  br label %446, !dbg !1756

446:                                              ; preds = %443, %416
  %447 = phi ptr [ %417, %416 ], [ %445, %443 ], !dbg !1757
  br i1 %13, label %448, label %491, !dbg !1758

448:                                              ; preds = %446, %487
  %449 = phi ptr [ %488, %487 ], [ %447, %446 ], !dbg !1757
  %450 = phi ptr [ %489, %487 ], [ %405, %446 ], !dbg !1757
  %451 = phi i8 [ %490, %487 ], [ %406, %446 ], !dbg !1757
  call void @llvm.dbg.value(metadata i8 %451, metadata !1480, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata ptr %450, metadata !1484, metadata !DIExpression()), !dbg !1497
  %452 = icmp ugt i8 %451, 31, !dbg !1759
  br i1 %452, label %453, label %476, !dbg !1764

453:                                              ; preds = %448
  %454 = icmp ult i8 %451, 127, !dbg !1765
  br i1 %454, label %455, label %457, !dbg !1768

455:                                              ; preds = %453
  call void @llvm.dbg.value(metadata ptr %449, metadata !1485, metadata !DIExpression()), !dbg !1497
  %456 = getelementptr inbounds i8, ptr %449, i64 1, !dbg !1769
  call void @llvm.dbg.value(metadata ptr %456, metadata !1485, metadata !DIExpression()), !dbg !1497
  store i8 %451, ptr %449, align 1, !dbg !1770, !tbaa !1072
  br label %487, !dbg !1771

457:                                              ; preds = %453
  %458 = icmp eq i8 %451, 127, !dbg !1772
  call void @llvm.dbg.value(metadata ptr %449, metadata !1485, metadata !DIExpression()), !dbg !1497
  %459 = getelementptr inbounds i8, ptr %449, i64 1, !dbg !1774
  call void @llvm.dbg.value(metadata ptr %459, metadata !1485, metadata !DIExpression()), !dbg !1497
  %460 = getelementptr inbounds i8, ptr %449, i64 2, !dbg !1774
  call void @llvm.dbg.value(metadata ptr %460, metadata !1485, metadata !DIExpression()), !dbg !1497
  br i1 %458, label %461, label %462, !dbg !1775

461:                                              ; preds = %457
  store i8 94, ptr %449, align 1, !dbg !1776, !tbaa !1072
  store i8 63, ptr %459, align 1, !dbg !1778, !tbaa !1072
  br label %487, !dbg !1779

462:                                              ; preds = %457
  store i8 77, ptr %449, align 1, !dbg !1780, !tbaa !1072
  store i8 45, ptr %459, align 1, !dbg !1782, !tbaa !1072
  %463 = icmp ugt i8 %451, -97, !dbg !1783
  br i1 %463, label %464, label %472, !dbg !1785

464:                                              ; preds = %462
  %465 = icmp eq i8 %451, -1, !dbg !1786
  br i1 %465, label %469, label %466, !dbg !1789

466:                                              ; preds = %464
  %467 = xor i8 %451, -128, !dbg !1790
  call void @llvm.dbg.value(metadata ptr %460, metadata !1485, metadata !DIExpression()), !dbg !1497
  %468 = getelementptr inbounds i8, ptr %449, i64 3, !dbg !1791
  call void @llvm.dbg.value(metadata ptr %468, metadata !1485, metadata !DIExpression()), !dbg !1497
  store i8 %467, ptr %460, align 1, !dbg !1792, !tbaa !1072
  br label %487, !dbg !1793

469:                                              ; preds = %464
  call void @llvm.dbg.value(metadata ptr %460, metadata !1485, metadata !DIExpression()), !dbg !1497
  %470 = getelementptr inbounds i8, ptr %449, i64 3, !dbg !1794
  call void @llvm.dbg.value(metadata ptr %470, metadata !1485, metadata !DIExpression()), !dbg !1497
  store i8 94, ptr %460, align 1, !dbg !1796, !tbaa !1072
  %471 = getelementptr inbounds i8, ptr %449, i64 4, !dbg !1797
  call void @llvm.dbg.value(metadata ptr %471, metadata !1485, metadata !DIExpression()), !dbg !1497
  store i8 63, ptr %470, align 1, !dbg !1798, !tbaa !1072
  br label %487

472:                                              ; preds = %462
  call void @llvm.dbg.value(metadata ptr %460, metadata !1485, metadata !DIExpression()), !dbg !1497
  %473 = getelementptr inbounds i8, ptr %449, i64 3, !dbg !1799
  call void @llvm.dbg.value(metadata ptr %473, metadata !1485, metadata !DIExpression()), !dbg !1497
  store i8 94, ptr %460, align 1, !dbg !1801, !tbaa !1072
  %474 = add i8 %451, -64, !dbg !1802
  %475 = getelementptr inbounds i8, ptr %449, i64 4, !dbg !1803
  call void @llvm.dbg.value(metadata ptr %475, metadata !1485, metadata !DIExpression()), !dbg !1497
  store i8 %474, ptr %473, align 1, !dbg !1804, !tbaa !1072
  br label %487

476:                                              ; preds = %448
  %477 = icmp ne i8 %451, 9, !dbg !1805
  %478 = or i1 %12, %477, !dbg !1807
  br i1 %478, label %481, label %479, !dbg !1807

479:                                              ; preds = %476
  call void @llvm.dbg.value(metadata ptr %449, metadata !1485, metadata !DIExpression()), !dbg !1497
  %480 = getelementptr inbounds i8, ptr %449, i64 1, !dbg !1808
  call void @llvm.dbg.value(metadata ptr %480, metadata !1485, metadata !DIExpression()), !dbg !1497
  store i8 9, ptr %449, align 1, !dbg !1809, !tbaa !1072
  br label %487, !dbg !1810

481:                                              ; preds = %476
  %482 = icmp eq i8 %451, 10, !dbg !1811
  br i1 %482, label %408, label %483, !dbg !1813, !llvm.loop !1814

483:                                              ; preds = %481
  call void @llvm.dbg.value(metadata ptr %449, metadata !1485, metadata !DIExpression()), !dbg !1497
  %484 = getelementptr inbounds i8, ptr %449, i64 1, !dbg !1816
  call void @llvm.dbg.value(metadata ptr %484, metadata !1485, metadata !DIExpression()), !dbg !1497
  store i8 94, ptr %449, align 1, !dbg !1818, !tbaa !1072
  %485 = add nuw nsw i8 %451, 64, !dbg !1819
  %486 = getelementptr inbounds i8, ptr %449, i64 2, !dbg !1820
  call void @llvm.dbg.value(metadata ptr %486, metadata !1485, metadata !DIExpression()), !dbg !1497
  store i8 %485, ptr %484, align 1, !dbg !1821, !tbaa !1072
  br label %487

487:                                              ; preds = %483, %479, %472, %469, %466, %461, %455
  %488 = phi ptr [ %456, %455 ], [ %460, %461 ], [ %471, %469 ], [ %468, %466 ], [ %475, %472 ], [ %486, %483 ], [ %480, %479 ], !dbg !1822
  %489 = getelementptr inbounds i8, ptr %450, i64 1, !dbg !1823
  call void @llvm.dbg.value(metadata ptr %489, metadata !1484, metadata !DIExpression()), !dbg !1497
  %490 = load i8, ptr %450, align 1, !dbg !1824, !tbaa !1072
  call void @llvm.dbg.value(metadata i8 %490, metadata !1480, metadata !DIExpression()), !dbg !1497
  br label %448, !dbg !1825, !llvm.loop !1826

491:                                              ; preds = %446, %513
  %492 = phi ptr [ %514, %513 ], [ %447, %446 ], !dbg !1757
  %493 = phi ptr [ %515, %513 ], [ %405, %446 ], !dbg !1757
  %494 = phi i8 [ %516, %513 ], [ %406, %446 ], !dbg !1757
  call void @llvm.dbg.value(metadata i8 %494, metadata !1480, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata ptr %493, metadata !1484, metadata !DIExpression()), !dbg !1497
  %495 = icmp eq i8 %494, 9, !dbg !1828
  %496 = and i1 %12, %495, !dbg !1832
  br i1 %496, label %497, label %500, !dbg !1832

497:                                              ; preds = %491
  call void @llvm.dbg.value(metadata ptr %492, metadata !1485, metadata !DIExpression()), !dbg !1497
  %498 = getelementptr inbounds i8, ptr %492, i64 1, !dbg !1833
  call void @llvm.dbg.value(metadata ptr %498, metadata !1485, metadata !DIExpression()), !dbg !1497
  store i8 94, ptr %492, align 1, !dbg !1835, !tbaa !1072
  %499 = getelementptr inbounds i8, ptr %492, i64 2, !dbg !1836
  call void @llvm.dbg.value(metadata ptr %499, metadata !1485, metadata !DIExpression()), !dbg !1497
  store i8 73, ptr %498, align 1, !dbg !1837, !tbaa !1072
  br label %513, !dbg !1838

500:                                              ; preds = %491
  switch i8 %494, label %511 [
    i8 10, label %408
    i8 13, label %501
  ], !dbg !1839, !llvm.loop !1814

501:                                              ; preds = %500
  %502 = load i8, ptr %493, align 1, !dbg !1840, !tbaa !1072
  %503 = icmp eq i8 %502, 10, !dbg !1844
  %504 = and i1 %14, %503, !dbg !1845
  br i1 %504, label %505, label %511, !dbg !1845

505:                                              ; preds = %501
  %506 = icmp eq ptr %493, %403, !dbg !1846
  br i1 %506, label %507, label %508, !dbg !1849

507:                                              ; preds = %505
  store i1 true, ptr @pending_cr, align 1, !dbg !1850
  br label %513, !dbg !1851

508:                                              ; preds = %505
  call void @llvm.dbg.value(metadata ptr %492, metadata !1485, metadata !DIExpression()), !dbg !1497
  %509 = getelementptr inbounds i8, ptr %492, i64 1, !dbg !1852
  call void @llvm.dbg.value(metadata ptr %509, metadata !1485, metadata !DIExpression()), !dbg !1497
  store i8 94, ptr %492, align 1, !dbg !1854, !tbaa !1072
  %510 = getelementptr inbounds i8, ptr %492, i64 2, !dbg !1855
  call void @llvm.dbg.value(metadata ptr %510, metadata !1485, metadata !DIExpression()), !dbg !1497
  store i8 77, ptr %509, align 1, !dbg !1856, !tbaa !1072
  br label %513

511:                                              ; preds = %501, %500
  call void @llvm.dbg.value(metadata ptr %492, metadata !1485, metadata !DIExpression()), !dbg !1497
  %512 = getelementptr inbounds i8, ptr %492, i64 1, !dbg !1857
  call void @llvm.dbg.value(metadata ptr %512, metadata !1485, metadata !DIExpression()), !dbg !1497
  store i8 %494, ptr %492, align 1, !dbg !1858, !tbaa !1072
  br label %513

513:                                              ; preds = %511, %508, %507, %497
  %514 = phi ptr [ %512, %511 ], [ %492, %507 ], [ %510, %508 ], [ %499, %497 ], !dbg !1757
  %515 = getelementptr inbounds i8, ptr %493, i64 1, !dbg !1859
  call void @llvm.dbg.value(metadata ptr %515, metadata !1484, metadata !DIExpression()), !dbg !1497
  %516 = load i8, ptr %493, align 1, !dbg !1860, !tbaa !1072
  call void @llvm.dbg.value(metadata i8 %516, metadata !1480, metadata !DIExpression()), !dbg !1497
  br label %491, !dbg !1861, !llvm.loop !1862

517:                                              ; preds = %282, %312, %320, %333, %337
  %518 = phi i1 [ false, %282 ], [ false, %320 ], [ false, %312 ], [ true, %337 ], [ true, %333 ]
  store i32 %244, ptr @newlines2, align 4, !dbg !1543, !tbaa !1063
  call void @llvm.dbg.value(metadata ptr poison, metadata !1484, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata ptr poison, metadata !1483, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 poison, metadata !1482, metadata !DIExpression()), !dbg !1497
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #40, !dbg !1635
  call void @llvm.dbg.value(metadata !DIArgList(i1 %94, i1 %518), metadata !507, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1210
  call void @llvm.dbg.value(metadata ptr %237, metadata !1864, metadata !DIExpression()), !dbg !1870
  call void @free(ptr noundef nonnull %237) #40, !dbg !1872
  br label %519

519:                                              ; preds = %189, %210, %195, %205, %517
  %520 = phi i1 [ %518, %517 ], [ false, %205 ], [ false, %195 ], [ true, %210 ], [ true, %189 ]
  %521 = phi ptr [ %226, %517 ], [ %200, %205 ], [ null, %195 ], [ %200, %210 ], [ null, %189 ], !dbg !1873
  %522 = and i1 %94, %520, !dbg !1873
  call void @llvm.dbg.value(metadata ptr %521, metadata !521, metadata !DIExpression()), !dbg !1315
  call void @llvm.dbg.value(metadata i1 %522, metadata !507, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1210
  call void @llvm.dbg.value(metadata ptr %521, metadata !1864, metadata !DIExpression()), !dbg !1874
  call void @free(ptr noundef %521) #40, !dbg !1876
  br label %523, !dbg !1877

523:                                              ; preds = %176, %519, %120
  %524 = phi i32 [ %93, %120 ], [ %182, %519 ], [ %170, %176 ], !dbg !1210
  %525 = phi i1 [ false, %120 ], [ %522, %519 ], [ false, %176 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !507, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i32 %524, metadata !504, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.label(metadata !528), !dbg !1878
  br i1 %105, label %535, label %526, !dbg !1879

526:                                              ; preds = %523
  %527 = load i32, ptr @input_desc, align 4, !dbg !1881, !tbaa !1063
  %528 = call i32 @close(i32 noundef %527) #40, !dbg !1882
  %529 = icmp slt i32 %528, 0, !dbg !1883
  br i1 %529, label %530, label %535, !dbg !1884

530:                                              ; preds = %526
  %531 = tail call ptr @__errno_location() #43, !dbg !1885
  %532 = load i32, ptr %531, align 4, !dbg !1885, !tbaa !1063
  %533 = load ptr, ptr @infile, align 8, !dbg !1885, !tbaa !989
  %534 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %533) #40, !dbg !1885
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %532, ptr noundef nonnull @.str.36, ptr noundef %534) #40, !dbg !1885
  call void @llvm.dbg.value(metadata i8 0, metadata !507, metadata !DIExpression()), !dbg !1210
  br label %535, !dbg !1887

535:                                              ; preds = %530, %526, %523
  %536 = phi i1 [ %525, %523 ], [ false, %530 ], [ %525, %526 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !507, metadata !DIExpression()), !dbg !1210
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #40, !dbg !1888
  br label %537, !dbg !1888

537:                                              ; preds = %535, %110
  %538 = phi i32 [ %524, %535 ], [ %93, %110 ], !dbg !1303
  %539 = phi i1 [ %536, %535 ], [ false, %110 ]
  %540 = phi i1 [ %117, %535 ], [ %95, %110 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !455, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i8 poison, metadata !507, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i32 %538, metadata !504, metadata !DIExpression()), !dbg !1210
  %541 = add nsw i64 %92, 1, !dbg !1889
  call void @llvm.dbg.value(metadata i64 %541, metadata !506, metadata !DIExpression()), !dbg !1210
  %542 = icmp slt i64 %541, %90, !dbg !1890
  br i1 %542, label %91, label %543, !dbg !1891, !llvm.loop !1892

543:                                              ; preds = %537
  %544 = load i1, ptr @pending_cr, align 1, !dbg !1894
  br i1 %544, label %545, label %557, !dbg !1896

545:                                              ; preds = %543
  %546 = call i64 @full_write(i32 noundef 1, ptr noundef nonnull @.str.38, i64 noundef 1) #40, !dbg !1897
  %547 = icmp eq i64 %546, 1, !dbg !1900
  br i1 %547, label %557, label %548, !dbg !1901

548:                                              ; preds = %545
  %549 = tail call ptr @__errno_location() #43, !dbg !1902
  %550 = load i32, ptr %549, align 4, !dbg !1902, !tbaa !1063
  call void @llvm.dbg.value(metadata i32 %550, metadata !1447, metadata !DIExpression()), !dbg !1904
  %551 = load ptr, ptr @stdout, align 8, !dbg !1905, !tbaa !989
  %552 = call i32 @fflush_unlocked(ptr noundef %551) #40, !dbg !1905
  %553 = load ptr, ptr @stdout, align 8, !dbg !1906, !tbaa !989
  %554 = call i32 @fpurge(ptr noundef %553) #40, !dbg !1907
  %555 = load ptr, ptr @stdout, align 8, !dbg !1908, !tbaa !989
  call void @clearerr_unlocked(ptr noundef %555) #40, !dbg !1908
  %556 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.77, i32 noundef 5) #40, !dbg !1909
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %550, ptr noundef %556) #40, !dbg !1909
  unreachable, !dbg !1909

557:                                              ; preds = %545, %543
  br i1 %540, label %558, label %565, !dbg !1910

558:                                              ; preds = %557
  %559 = call i32 @close(i32 noundef 0) #40, !dbg !1912
  %560 = icmp slt i32 %559, 0, !dbg !1913
  br i1 %560, label %561, label %565, !dbg !1914

561:                                              ; preds = %558
  %562 = tail call ptr @__errno_location() #43, !dbg !1915
  %563 = load i32, ptr %562, align 4, !dbg !1915, !tbaa !1063
  %564 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.39, i32 noundef 5) #40, !dbg !1915
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %563, ptr noundef %564) #40, !dbg !1915
  unreachable, !dbg !1915

565:                                              ; preds = %558, %557
  %566 = xor i1 %539, true, !dbg !1916
  %567 = zext i1 %566 to i32, !dbg !1916
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #40, !dbg !1917
  ret i32 %567, !dbg !1917
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1918 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1921 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1922 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1925 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !1931 noundef i32 @fstat(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1936 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1940 i32 @getpagesize() local_unnamed_addr #9

; Function Attrs: nofree
declare !dbg !1942 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #12

; Function Attrs: nounwind
declare !dbg !1946 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #1

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #12

declare !dbg !1949 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1952 void @clearerr_unlocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #13

; Function Attrs: nounwind
declare !dbg !1955 i32 @ioctl(i32 noundef, i64 noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @stpcpy(ptr noalias writeonly, ptr noalias nocapture readonly) #14

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1959 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

declare !dbg !1960 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #16 !dbg !1963 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1965, metadata !DIExpression()), !dbg !1966
  store ptr %0, ptr @file_name, align 8, !dbg !1967, !tbaa !989
  ret void, !dbg !1968
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #16 !dbg !1969 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1973, metadata !DIExpression()), !dbg !1974
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1975, !tbaa !1976
  ret void, !dbg !1978
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1979 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1984, !tbaa !989
  %2 = tail call i32 @close_stream(ptr noundef %1) #40, !dbg !1985
  %3 = icmp eq i32 %2, 0, !dbg !1986
  br i1 %3, label %22, label %4, !dbg !1987

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1988, !tbaa !1976, !range !1989, !noundef !998
  %6 = icmp eq i8 %5, 0, !dbg !1988
  br i1 %6, label %11, label %7, !dbg !1990

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #43, !dbg !1991
  %9 = load i32, ptr %8, align 4, !dbg !1991, !tbaa !1063
  %10 = icmp eq i32 %9, 32, !dbg !1992
  br i1 %10, label %22, label %11, !dbg !1993

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.1.49, i32 noundef 5) #40, !dbg !1994
  call void @llvm.dbg.value(metadata ptr %12, metadata !1981, metadata !DIExpression()), !dbg !1995
  %13 = load ptr, ptr @file_name, align 8, !dbg !1996, !tbaa !989
  %14 = icmp eq ptr %13, null, !dbg !1996
  %15 = tail call ptr @__errno_location() #43, !dbg !1998
  %16 = load i32, ptr %15, align 4, !dbg !1998, !tbaa !1063
  br i1 %14, label %19, label %17, !dbg !1999

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #40, !dbg !2000
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.50, ptr noundef %18, ptr noundef %12) #40, !dbg !2000
  br label %20, !dbg !2000

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.51, ptr noundef %12) #40, !dbg !2001
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !2002, !tbaa !1063
  tail call void @_exit(i32 noundef %21) #42, !dbg !2003
  unreachable, !dbg !2003

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !2004, !tbaa !989
  %24 = tail call i32 @close_stream(ptr noundef %23) #40, !dbg !2006
  %25 = icmp eq i32 %24, 0, !dbg !2007
  br i1 %25, label %28, label %26, !dbg !2008

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !2009, !tbaa !1063
  tail call void @_exit(i32 noundef %27) #42, !dbg !2010
  unreachable, !dbg !2010

28:                                               ; preds = %22
  ret void, !dbg !2011
}

; Function Attrs: noreturn
declare !dbg !2012 void @_exit(i32 noundef) local_unnamed_addr #17

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_copy_file_range(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #10 !dbg !2013 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2020, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata ptr %1, metadata !2021, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i32 %2, metadata !2022, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata ptr %3, metadata !2023, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i64 %4, metadata !2024, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i32 %5, metadata !2025, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i8 1, metadata !2026, metadata !DIExpression()), !dbg !2027
  %7 = tail call i64 @llvm.umin.i64(i64 %4, i64 2146435072), !dbg !2028
  call void @llvm.dbg.value(metadata i64 %7, metadata !2024, metadata !DIExpression()), !dbg !2027
  %8 = tail call i64 @copy_file_range(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %7, i32 noundef %5) #40, !dbg !2031
  ret i64 %8, !dbg !2032
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

declare !dbg !2033 i64 @copy_file_range(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #18 !dbg !2037 {
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2041, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i32 %1, metadata !2042, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata ptr %2, metadata !2043, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2044, metadata !DIExpression()), !dbg !2046
  tail call fastcc void @flush_stdout(), !dbg !2047
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !2048, !tbaa !989
  %7 = icmp eq ptr %6, null, !dbg !2048
  br i1 %7, label %9, label %8, !dbg !2050

8:                                                ; preds = %4
  tail call void %6() #40, !dbg !2051
  br label %13, !dbg !2051

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !2052, !tbaa !989
  %11 = tail call ptr @getprogname() #41, !dbg !2052
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.54, ptr noundef %11) #40, !dbg !2052
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #40, !dbg !2054
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !2054, !tbaa.struct !2055
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !2054
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #40, !dbg !2054
  ret void, !dbg !2056
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !2057 {
  call void @llvm.dbg.value(metadata i32 1, metadata !2059, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.value(metadata i32 1, metadata !2061, metadata !DIExpression()), !dbg !2064
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #40, !dbg !2067
  %2 = icmp slt i32 %1, 0, !dbg !2068
  br i1 %2, label %6, label %3, !dbg !2069

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !2070, !tbaa !989
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #40, !dbg !2070
  br label %6, !dbg !2070

6:                                                ; preds = %3, %0
  ret void, !dbg !2071
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !2072 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2074, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i32 %1, metadata !2075, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata ptr %2, metadata !2076, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2077, metadata !DIExpression()), !dbg !2079
  %7 = load ptr, ptr @stderr, align 8, !dbg !2080, !tbaa !989
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #40, !dbg !2081, !noalias !2125
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !2129
  call void @llvm.dbg.value(metadata ptr %7, metadata !2121, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata ptr %2, metadata !2122, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2123, metadata !DIExpression()), !dbg !2131
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #40, !dbg !2081
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #40, !dbg !2081, !noalias !2125
  %9 = load i32, ptr @error_message_count, align 4, !dbg !2132, !tbaa !1063
  %10 = add i32 %9, 1, !dbg !2132
  store i32 %10, ptr @error_message_count, align 4, !dbg !2132, !tbaa !1063
  %11 = icmp eq i32 %1, 0, !dbg !2133
  br i1 %11, label %21, label %12, !dbg !2135

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !2136, metadata !DIExpression()), !dbg !2144
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #40, !dbg !2146
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2140, metadata !DIExpression()), !dbg !2147
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #40, !dbg !2148
  call void @llvm.dbg.value(metadata ptr %13, metadata !2139, metadata !DIExpression()), !dbg !2144
  %14 = icmp eq ptr %13, null, !dbg !2149
  br i1 %14, label %15, label %17, !dbg !2151

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.55, ptr noundef nonnull @.str.5.56, i32 noundef 5) #40, !dbg !2152
  call void @llvm.dbg.value(metadata ptr %16, metadata !2139, metadata !DIExpression()), !dbg !2144
  br label %17, !dbg !2153

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !2144
  call void @llvm.dbg.value(metadata ptr %18, metadata !2139, metadata !DIExpression()), !dbg !2144
  %19 = load ptr, ptr @stderr, align 8, !dbg !2154, !tbaa !989
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.57, ptr noundef %18) #40, !dbg !2154
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #40, !dbg !2155
  br label %21, !dbg !2156

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !2157, !tbaa !989
  call void @llvm.dbg.value(metadata i32 10, metadata !2158, metadata !DIExpression()), !dbg !2165
  call void @llvm.dbg.value(metadata ptr %22, metadata !2164, metadata !DIExpression()), !dbg !2165
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !2167
  %24 = load ptr, ptr %23, align 8, !dbg !2167, !tbaa !2168
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !2167
  %26 = load ptr, ptr %25, align 8, !dbg !2167, !tbaa !2170
  %27 = icmp ult ptr %24, %26, !dbg !2167
  br i1 %27, label %30, label %28, !dbg !2167, !prof !2171

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #40, !dbg !2167
  br label %32, !dbg !2167

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !2167
  store ptr %31, ptr %23, align 8, !dbg !2167, !tbaa !2168
  store i8 10, ptr %24, align 1, !dbg !2167, !tbaa !1072
  br label %32, !dbg !2167

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !2172, !tbaa !989
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #40, !dbg !2172
  %35 = icmp eq i32 %0, 0, !dbg !2173
  br i1 %35, label %37, label %36, !dbg !2175

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #42, !dbg !2176
  unreachable, !dbg !2176

37:                                               ; preds = %32
  ret void, !dbg !2177
}

declare !dbg !2178 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !2181 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2184 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !2187 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !2190 {
  %4 = alloca %struct.__va_list, align 8
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2194, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata i32 %1, metadata !2195, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata ptr %2, metadata !2196, metadata !DIExpression()), !dbg !2198
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #40, !dbg !2199
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2197, metadata !DIExpression()), !dbg !2200
  call void @llvm.va_start(ptr nonnull %4), !dbg !2201
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #40, !dbg !2202
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !2202, !tbaa.struct !2055
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #46, !dbg !2202
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #40, !dbg !2202
  call void @llvm.va_end(ptr nonnull %4), !dbg !2203
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #40, !dbg !2204
  ret void, !dbg !2204
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #19

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #18 !dbg !572 {
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !588, metadata !DIExpression()), !dbg !2205
  call void @llvm.dbg.value(metadata i32 %1, metadata !589, metadata !DIExpression()), !dbg !2205
  call void @llvm.dbg.value(metadata ptr %2, metadata !590, metadata !DIExpression()), !dbg !2205
  call void @llvm.dbg.value(metadata i32 %3, metadata !591, metadata !DIExpression()), !dbg !2205
  call void @llvm.dbg.value(metadata ptr %4, metadata !592, metadata !DIExpression()), !dbg !2205
  call void @llvm.dbg.declare(metadata ptr %5, metadata !593, metadata !DIExpression()), !dbg !2206
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !2207, !tbaa !1063
  %9 = icmp eq i32 %8, 0, !dbg !2207
  br i1 %9, label %24, label %10, !dbg !2209

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !2210, !tbaa !1063
  %12 = icmp eq i32 %11, %3, !dbg !2213
  br i1 %12, label %13, label %23, !dbg !2214

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !2215, !tbaa !989
  %15 = icmp eq ptr %14, %2, !dbg !2216
  br i1 %15, label %37, label %16, !dbg !2217

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !2218
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !2219
  br i1 %19, label %20, label %23, !dbg !2219

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !2220
  %22 = icmp eq i32 %21, 0, !dbg !2221
  br i1 %22, label %37, label %23, !dbg !2222

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !2223, !tbaa !989
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !2224, !tbaa !1063
  br label %24, !dbg !2225

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !2226
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !2227, !tbaa !989
  %26 = icmp eq ptr %25, null, !dbg !2227
  br i1 %26, label %28, label %27, !dbg !2229

27:                                               ; preds = %24
  tail call void %25() #40, !dbg !2230
  br label %32, !dbg !2230

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !2231, !tbaa !989
  %30 = tail call ptr @getprogname() #41, !dbg !2231
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.60, ptr noundef %30) #40, !dbg !2231
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !2233, !tbaa !989
  %34 = icmp eq ptr %2, null, !dbg !2233
  %35 = select i1 %34, ptr @.str.3.61, ptr @.str.2.62, !dbg !2233
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #40, !dbg !2233
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #40, !dbg !2234
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !2234, !tbaa.struct !2055
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !2234
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #40, !dbg !2234
  br label %37, !dbg !2235

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !2235
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !2236 {
  %6 = alloca %struct.__va_list, align 8
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2240, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata i32 %1, metadata !2241, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata ptr %2, metadata !2242, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata i32 %3, metadata !2243, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata ptr %4, metadata !2244, metadata !DIExpression()), !dbg !2246
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #40, !dbg !2247
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2245, metadata !DIExpression()), !dbg !2248
  call void @llvm.va_start(ptr nonnull %6), !dbg !2249
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #40, !dbg !2250
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !2250, !tbaa.struct !2055
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #46, !dbg !2250
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #40, !dbg !2250
  call void @llvm.va_end(ptr nonnull %6), !dbg !2251
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #40, !dbg !2252
  ret void, !dbg !2252
}

; Function Attrs: nounwind uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #10 !dbg !2253 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2258, metadata !DIExpression()), !dbg !2262
  call void @llvm.dbg.value(metadata i64 %1, metadata !2259, metadata !DIExpression()), !dbg !2262
  call void @llvm.dbg.value(metadata i64 %2, metadata !2260, metadata !DIExpression()), !dbg !2262
  call void @llvm.dbg.value(metadata i32 %3, metadata !2261, metadata !DIExpression()), !dbg !2262
  %5 = tail call i32 @posix_fadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #40, !dbg !2263
  ret void, !dbg !2264
}

; Function Attrs: nounwind
declare !dbg !2265 i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fadvise(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !2268 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2306, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i32 %1, metadata !2307, metadata !DIExpression()), !dbg !2308
  %3 = icmp eq ptr %0, null, !dbg !2309
  br i1 %3, label %7, label %4, !dbg !2311

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !2312
  call void @llvm.dbg.value(metadata i32 %5, metadata !2258, metadata !DIExpression()), !dbg !2313
  call void @llvm.dbg.value(metadata i64 0, metadata !2259, metadata !DIExpression()), !dbg !2313
  call void @llvm.dbg.value(metadata i64 0, metadata !2260, metadata !DIExpression()), !dbg !2313
  call void @llvm.dbg.value(metadata i32 %1, metadata !2261, metadata !DIExpression()), !dbg !2313
  %6 = tail call i32 @posix_fadvise(i32 noundef %5, i64 noundef 0, i64 noundef 0, i32 noundef %1) #40, !dbg !2315
  br label %7, !dbg !2316

7:                                                ; preds = %4, %2
  ret void, !dbg !2317
}

; Function Attrs: nofree nounwind
declare !dbg !2318 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fcntl(i32 noundef %0, i32 noundef %1, ...) local_unnamed_addr #10 !dbg !2321 {
  %3 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2323, metadata !DIExpression()), !dbg !2348
  call void @llvm.dbg.value(metadata i32 %1, metadata !2324, metadata !DIExpression()), !dbg !2348
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #40, !dbg !2349
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2325, metadata !DIExpression()), !dbg !2350
  call void @llvm.va_start(ptr nonnull %3), !dbg !2351
  call void @llvm.dbg.value(metadata i32 -1, metadata !2336, metadata !DIExpression()), !dbg !2348
  switch i32 %1, label %96 [
    i32 0, label %4
    i32 1030, label %23
    i32 1, label %75
    i32 3, label %75
    i32 1025, label %75
    i32 9, label %75
    i32 1032, label %75
    i32 1034, label %75
    i32 11, label %75
    i32 1033, label %77
    i32 1031, label %77
    i32 10, label %77
    i32 1026, label %77
    i32 2, label %77
    i32 4, label %77
    i32 1024, label %77
    i32 8, label %77
  ], !dbg !2352

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !2353
  %6 = load i32, ptr %5, align 8, !dbg !2353
  %7 = icmp sgt i32 %6, -1, !dbg !2353
  br i1 %7, label %16, label %8, !dbg !2353

8:                                                ; preds = %4
  %9 = add nsw i32 %6, 8, !dbg !2353
  store i32 %9, ptr %5, align 8, !dbg !2353
  %10 = icmp ult i32 %6, -7, !dbg !2353
  br i1 %10, label %11, label %16, !dbg !2353

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !2353
  %13 = load ptr, ptr %12, align 8, !dbg !2353
  %14 = sext i32 %6 to i64, !dbg !2353
  %15 = getelementptr inbounds i8, ptr %13, i64 %14, !dbg !2353
  br label %19, !dbg !2353

16:                                               ; preds = %8, %4
  %17 = load ptr, ptr %3, align 8, !dbg !2353
  %18 = getelementptr inbounds i8, ptr %17, i64 8, !dbg !2353
  store ptr %18, ptr %3, align 8, !dbg !2353
  br label %19, !dbg !2353

19:                                               ; preds = %16, %11
  %20 = phi ptr [ %15, %11 ], [ %17, %16 ], !dbg !2353
  %21 = load i32, ptr %20, align 8, !dbg !2353
  call void @llvm.dbg.value(metadata i32 %21, metadata !2337, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata i32 %0, metadata !2355, metadata !DIExpression()), !dbg !2360
  call void @llvm.dbg.value(metadata i32 %21, metadata !2358, metadata !DIExpression()), !dbg !2360
  %22 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %21) #40, !dbg !2362
  call void @llvm.dbg.value(metadata i32 %22, metadata !2359, metadata !DIExpression()), !dbg !2360
  call void @llvm.dbg.value(metadata i32 %22, metadata !2336, metadata !DIExpression()), !dbg !2348
  br label %115

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !2363
  %25 = load i32, ptr %24, align 8, !dbg !2363
  %26 = icmp sgt i32 %25, -1, !dbg !2363
  br i1 %26, label %35, label %27, !dbg !2363

27:                                               ; preds = %23
  %28 = add nsw i32 %25, 8, !dbg !2363
  store i32 %28, ptr %24, align 8, !dbg !2363
  %29 = icmp ult i32 %25, -7, !dbg !2363
  br i1 %29, label %30, label %35, !dbg !2363

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !2363
  %32 = load ptr, ptr %31, align 8, !dbg !2363
  %33 = sext i32 %25 to i64, !dbg !2363
  %34 = getelementptr inbounds i8, ptr %32, i64 %33, !dbg !2363
  br label %38, !dbg !2363

35:                                               ; preds = %27, %23
  %36 = load ptr, ptr %3, align 8, !dbg !2363
  %37 = getelementptr inbounds i8, ptr %36, i64 8, !dbg !2363
  store ptr %37, ptr %3, align 8, !dbg !2363
  br label %38, !dbg !2363

38:                                               ; preds = %35, %30
  %39 = phi ptr [ %34, %30 ], [ %36, %35 ], !dbg !2363
  %40 = load i32, ptr %39, align 8, !dbg !2363
  call void @llvm.dbg.value(metadata i32 %40, metadata !2340, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.value(metadata i32 %0, metadata !627, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i32 %40, metadata !628, metadata !DIExpression()), !dbg !2365
  %41 = load i32, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !2367, !tbaa !1063
  %42 = icmp sgt i32 %41, -1, !dbg !2369
  br i1 %42, label %43, label %55, !dbg !2370

43:                                               ; preds = %38
  %44 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 1030, i32 noundef %40) #40, !dbg !2371
  call void @llvm.dbg.value(metadata i32 %44, metadata !629, metadata !DIExpression()), !dbg !2365
  %45 = icmp sgt i32 %44, -1, !dbg !2373
  br i1 %45, label %50, label %46, !dbg !2375

46:                                               ; preds = %43
  %47 = tail call ptr @__errno_location() #43, !dbg !2376
  %48 = load i32, ptr %47, align 4, !dbg !2376, !tbaa !1063
  %49 = icmp eq i32 %48, 22, !dbg !2377
  br i1 %49, label %51, label %50, !dbg !2378

50:                                               ; preds = %46, %43
  store i32 1, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !2379, !tbaa !1063
  call void @llvm.dbg.value(metadata i32 %44, metadata !629, metadata !DIExpression()), !dbg !2365
  br label %115, !dbg !2381

51:                                               ; preds = %46
  call void @llvm.dbg.value(metadata i32 %0, metadata !2355, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata i32 %40, metadata !2358, metadata !DIExpression()), !dbg !2382
  %52 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %40) #40, !dbg !2385
  call void @llvm.dbg.value(metadata i32 %52, metadata !2359, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata i32 %52, metadata !629, metadata !DIExpression()), !dbg !2365
  %53 = icmp sgt i32 %52, -1, !dbg !2386
  br i1 %53, label %54, label %115, !dbg !2388

54:                                               ; preds = %51
  store i32 -1, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !2389, !tbaa !1063
  br label %59, !dbg !2390

55:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i32 %0, metadata !2355, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i32 %40, metadata !2358, metadata !DIExpression()), !dbg !2391
  %56 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %40) #40, !dbg !2393
  call void @llvm.dbg.value(metadata i32 %56, metadata !2359, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i32 %56, metadata !629, metadata !DIExpression()), !dbg !2365
  %57 = load i32, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4
  %58 = icmp eq i32 %57, -1
  br label %59

59:                                               ; preds = %55, %54
  %60 = phi i1 [ true, %54 ], [ %58, %55 ]
  %61 = phi i32 [ %52, %54 ], [ %56, %55 ], !dbg !2394
  call void @llvm.dbg.value(metadata i32 %61, metadata !629, metadata !DIExpression()), !dbg !2365
  %62 = icmp sgt i32 %61, -1, !dbg !2395
  %63 = select i1 %62, i1 %60, i1 false, !dbg !2381
  br i1 %63, label %64, label %115, !dbg !2381

64:                                               ; preds = %59
  %65 = call i32 (i32, i32, ...) @fcntl(i32 noundef %61, i32 noundef 1) #40, !dbg !2396
  call void @llvm.dbg.value(metadata i32 %65, metadata !630, metadata !DIExpression()), !dbg !2397
  %66 = icmp slt i32 %65, 0, !dbg !2398
  br i1 %66, label %71, label %67, !dbg !2399

67:                                               ; preds = %64
  %68 = or i32 %65, 1, !dbg !2400
  %69 = call i32 (i32, i32, ...) @fcntl(i32 noundef %61, i32 noundef 2, i32 noundef %68) #40, !dbg !2401
  %70 = icmp eq i32 %69, -1, !dbg !2402
  br i1 %70, label %71, label %115, !dbg !2403

71:                                               ; preds = %67, %64
  %72 = tail call ptr @__errno_location() #43, !dbg !2404
  %73 = load i32, ptr %72, align 4, !dbg !2404, !tbaa !1063
  call void @llvm.dbg.value(metadata i32 %73, metadata !633, metadata !DIExpression()), !dbg !2405
  %74 = call i32 @close(i32 noundef %61) #40, !dbg !2406
  store i32 %73, ptr %72, align 4, !dbg !2407, !tbaa !1063
  call void @llvm.dbg.value(metadata i32 -1, metadata !629, metadata !DIExpression()), !dbg !2365
  br label %115, !dbg !2408

75:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %76 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1) #40, !dbg !2409
  call void @llvm.dbg.value(metadata i32 %76, metadata !2336, metadata !DIExpression()), !dbg !2348
  br label %115, !dbg !2410

77:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %78 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !2411
  %79 = load i32, ptr %78, align 8, !dbg !2411
  %80 = icmp sgt i32 %79, -1, !dbg !2411
  br i1 %80, label %89, label %81, !dbg !2411

81:                                               ; preds = %77
  %82 = add nsw i32 %79, 8, !dbg !2411
  store i32 %82, ptr %78, align 8, !dbg !2411
  %83 = icmp ult i32 %79, -7, !dbg !2411
  br i1 %83, label %84, label %89, !dbg !2411

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !2411
  %86 = load ptr, ptr %85, align 8, !dbg !2411
  %87 = sext i32 %79 to i64, !dbg !2411
  %88 = getelementptr inbounds i8, ptr %86, i64 %87, !dbg !2411
  br label %92, !dbg !2411

89:                                               ; preds = %81, %77
  %90 = load ptr, ptr %3, align 8, !dbg !2411
  %91 = getelementptr inbounds i8, ptr %90, i64 8, !dbg !2411
  store ptr %91, ptr %3, align 8, !dbg !2411
  br label %92, !dbg !2411

92:                                               ; preds = %89, %84
  %93 = phi ptr [ %88, %84 ], [ %90, %89 ], !dbg !2411
  %94 = load i32, ptr %93, align 8, !dbg !2411
  call void @llvm.dbg.value(metadata i32 %94, metadata !2342, metadata !DIExpression()), !dbg !2412
  %95 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, i32 noundef %94) #40, !dbg !2413
  call void @llvm.dbg.value(metadata i32 %95, metadata !2336, metadata !DIExpression()), !dbg !2348
  br label %115, !dbg !2414

96:                                               ; preds = %2
  %97 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !2415
  %98 = load i32, ptr %97, align 8, !dbg !2415
  %99 = icmp sgt i32 %98, -1, !dbg !2415
  br i1 %99, label %108, label %100, !dbg !2415

100:                                              ; preds = %96
  %101 = add nsw i32 %98, 8, !dbg !2415
  store i32 %101, ptr %97, align 8, !dbg !2415
  %102 = icmp ult i32 %98, -7, !dbg !2415
  br i1 %102, label %103, label %108, !dbg !2415

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !2415
  %105 = load ptr, ptr %104, align 8, !dbg !2415
  %106 = sext i32 %98 to i64, !dbg !2415
  %107 = getelementptr inbounds i8, ptr %105, i64 %106, !dbg !2415
  br label %111, !dbg !2415

108:                                              ; preds = %100, %96
  %109 = load ptr, ptr %3, align 8, !dbg !2415
  %110 = getelementptr inbounds i8, ptr %109, i64 8, !dbg !2415
  store ptr %110, ptr %3, align 8, !dbg !2415
  br label %111, !dbg !2415

111:                                              ; preds = %108, %103
  %112 = phi ptr [ %107, %103 ], [ %109, %108 ], !dbg !2415
  %113 = load ptr, ptr %112, align 8, !dbg !2415
  call void @llvm.dbg.value(metadata ptr %113, metadata !2346, metadata !DIExpression()), !dbg !2416
  %114 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, ptr noundef %113) #40, !dbg !2417
  call void @llvm.dbg.value(metadata i32 %114, metadata !2336, metadata !DIExpression()), !dbg !2348
  br label %115, !dbg !2418

115:                                              ; preds = %71, %67, %59, %51, %50, %75, %92, %111, %19
  %116 = phi i32 [ %114, %111 ], [ %95, %92 ], [ %76, %75 ], [ %22, %19 ], [ %61, %59 ], [ -1, %71 ], [ %61, %67 ], [ %52, %51 ], [ %44, %50 ], !dbg !2419
  call void @llvm.dbg.value(metadata i32 %116, metadata !2336, metadata !DIExpression()), !dbg !2348
  call void @llvm.va_end(ptr nonnull %3), !dbg !2420
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #40, !dbg !2421
  ret i32 %116, !dbg !2422
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fpurge(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2423 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2461, metadata !DIExpression()), !dbg !2462
  tail call void @__fpurge(ptr noundef nonnull %0) #40, !dbg !2463
  ret i32 0, !dbg !2464
}

; Function Attrs: nounwind
declare !dbg !2465 void @__fpurge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @full_write(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2469 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2473, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.value(metadata ptr %1, metadata !2474, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.value(metadata i64 %2, metadata !2475, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.value(metadata i64 0, metadata !2476, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.value(metadata ptr %1, metadata !2477, metadata !DIExpression()), !dbg !2480
  %4 = icmp sgt i64 %2, 0, !dbg !2481
  br i1 %4, label %5, label %20, !dbg !2482

5:                                                ; preds = %3, %15
  %6 = phi i64 [ %18, %15 ], [ %2, %3 ]
  %7 = phi ptr [ %17, %15 ], [ %1, %3 ]
  %8 = phi i64 [ %16, %15 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i64 %6, metadata !2475, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.value(metadata ptr %7, metadata !2477, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.value(metadata i64 %8, metadata !2476, metadata !DIExpression()), !dbg !2480
  %9 = tail call i64 @safe_write(i32 noundef %0, ptr noundef %7, i64 noundef %6) #40, !dbg !2483
  call void @llvm.dbg.value(metadata i64 %9, metadata !2478, metadata !DIExpression()), !dbg !2484
  %10 = icmp slt i64 %9, 0, !dbg !2485
  br i1 %10, label %20, label %11, !dbg !2487

11:                                               ; preds = %5
  %12 = icmp eq i64 %9, 0, !dbg !2488
  br i1 %12, label %13, label %15, !dbg !2490

13:                                               ; preds = %11
  %14 = tail call ptr @__errno_location() #43, !dbg !2491
  store i32 28, ptr %14, align 4, !dbg !2493, !tbaa !1063
  br label %20, !dbg !2494

15:                                               ; preds = %11
  %16 = add nsw i64 %9, %8, !dbg !2495
  call void @llvm.dbg.value(metadata i64 %16, metadata !2476, metadata !DIExpression()), !dbg !2480
  %17 = getelementptr inbounds i8, ptr %7, i64 %9, !dbg !2496
  call void @llvm.dbg.value(metadata ptr %17, metadata !2477, metadata !DIExpression()), !dbg !2480
  %18 = sub nsw i64 %6, %9, !dbg !2497
  call void @llvm.dbg.value(metadata i64 %18, metadata !2475, metadata !DIExpression()), !dbg !2480
  %19 = icmp sgt i64 %18, 0, !dbg !2481
  br i1 %19, label %5, label %20, !dbg !2482

20:                                               ; preds = %15, %5, %3, %13
  %21 = phi i64 [ %8, %13 ], [ 0, %3 ], [ %16, %15 ], [ %8, %5 ]
  call void @llvm.dbg.value(metadata i64 %21, metadata !2476, metadata !DIExpression()), !dbg !2480
  ret i64 %21, !dbg !2498
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #20 !dbg !2499 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2501, !tbaa !989
  ret ptr %1, !dbg !2502
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #21 !dbg !2503 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2505, metadata !DIExpression()), !dbg !2508
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #41, !dbg !2509
  call void @llvm.dbg.value(metadata ptr %2, metadata !2506, metadata !DIExpression()), !dbg !2508
  %3 = icmp eq ptr %2, null, !dbg !2510
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2510
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2510
  call void @llvm.dbg.value(metadata ptr %5, metadata !2507, metadata !DIExpression()), !dbg !2508
  %6 = ptrtoint ptr %5 to i64, !dbg !2511
  %7 = ptrtoint ptr %0 to i64, !dbg !2511
  %8 = sub i64 %6, %7, !dbg !2511
  %9 = icmp sgt i64 %8, 6, !dbg !2513
  br i1 %9, label %10, label %19, !dbg !2514

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2515
  call void @llvm.dbg.value(metadata ptr %11, metadata !2516, metadata !DIExpression()), !dbg !2523
  call void @llvm.dbg.value(metadata ptr @.str.79, metadata !2521, metadata !DIExpression()), !dbg !2523
  call void @llvm.dbg.value(metadata i64 7, metadata !2522, metadata !DIExpression()), !dbg !2523
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.79, i64 7), !dbg !2525
  %13 = icmp eq i32 %12, 0, !dbg !2526
  br i1 %13, label %14, label %19, !dbg !2527

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !2505, metadata !DIExpression()), !dbg !2508
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.80, i64 noundef 3) #41, !dbg !2528
  %16 = icmp eq i32 %15, 0, !dbg !2531
  %17 = select i1 %16, i64 3, i64 0, !dbg !2532
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !2532
  br label %19, !dbg !2532

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2508
  call void @llvm.dbg.value(metadata ptr %21, metadata !2507, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.value(metadata ptr %20, metadata !2505, metadata !DIExpression()), !dbg !2508
  store ptr %20, ptr @program_name, align 8, !dbg !2533, !tbaa !989
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2534, !tbaa !989
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2535, !tbaa !989
  ret void, !dbg !2536
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2537 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #22

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !648 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !655, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata ptr %1, metadata !656, metadata !DIExpression()), !dbg !2538
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #40, !dbg !2539
  call void @llvm.dbg.value(metadata ptr %5, metadata !657, metadata !DIExpression()), !dbg !2538
  %6 = icmp eq ptr %5, %0, !dbg !2540
  br i1 %6, label %7, label %14, !dbg !2542

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #40, !dbg !2543
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #40, !dbg !2544
  call void @llvm.dbg.declare(metadata ptr %4, metadata !663, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata ptr %4, metadata !2546, metadata !DIExpression()), !dbg !2553
  call void @llvm.dbg.value(metadata ptr %4, metadata !2555, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata i32 0, metadata !2560, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata i64 8, metadata !2561, metadata !DIExpression()), !dbg !2562
  store i64 0, ptr %4, align 8, !dbg !2564
  call void @llvm.dbg.value(metadata ptr %3, metadata !658, metadata !DIExpression(DW_OP_deref)), !dbg !2538
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #40, !dbg !2565
  %9 = icmp eq i64 %8, 2, !dbg !2567
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !658, metadata !DIExpression()), !dbg !2538
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2568
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2538
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #40, !dbg !2569
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #40, !dbg !2569
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2538
  ret ptr %15, !dbg !2569
}

; Function Attrs: nounwind
declare !dbg !2570 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2576 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2581, metadata !DIExpression()), !dbg !2584
  %2 = tail call ptr @__errno_location() #43, !dbg !2585
  %3 = load i32, ptr %2, align 4, !dbg !2585, !tbaa !1063
  call void @llvm.dbg.value(metadata i32 %3, metadata !2582, metadata !DIExpression()), !dbg !2584
  %4 = icmp eq ptr %0, null, !dbg !2586
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2586
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #45, !dbg !2587
  call void @llvm.dbg.value(metadata ptr %6, metadata !2583, metadata !DIExpression()), !dbg !2584
  store i32 %3, ptr %2, align 4, !dbg !2588, !tbaa !1063
  ret ptr %6, !dbg !2589
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #23 !dbg !2590 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2596, metadata !DIExpression()), !dbg !2597
  %2 = icmp eq ptr %0, null, !dbg !2598
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2598
  %4 = load i32, ptr %3, align 8, !dbg !2599, !tbaa !2600
  ret i32 %4, !dbg !2602
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #24 !dbg !2603 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2607, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i32 %1, metadata !2608, metadata !DIExpression()), !dbg !2609
  %3 = icmp eq ptr %0, null, !dbg !2610
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2610
  store i32 %1, ptr %4, align 8, !dbg !2611, !tbaa !2600
  ret void, !dbg !2612
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #25 !dbg !2613 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2617, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i8 %1, metadata !2618, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i32 %2, metadata !2619, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i8 %1, metadata !2620, metadata !DIExpression()), !dbg !2625
  %4 = icmp eq ptr %0, null, !dbg !2626
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2626
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2627
  %7 = lshr i8 %1, 5, !dbg !2628
  %8 = zext i8 %7 to i64, !dbg !2628
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2629
  call void @llvm.dbg.value(metadata ptr %9, metadata !2621, metadata !DIExpression()), !dbg !2625
  %10 = and i8 %1, 31, !dbg !2630
  %11 = zext i8 %10 to i32, !dbg !2630
  call void @llvm.dbg.value(metadata i32 %11, metadata !2623, metadata !DIExpression()), !dbg !2625
  %12 = load i32, ptr %9, align 4, !dbg !2631, !tbaa !1063
  %13 = lshr i32 %12, %11, !dbg !2632
  %14 = and i32 %13, 1, !dbg !2633
  call void @llvm.dbg.value(metadata i32 %14, metadata !2624, metadata !DIExpression()), !dbg !2625
  %15 = xor i32 %13, %2, !dbg !2634
  %16 = and i32 %15, 1, !dbg !2634
  %17 = shl nuw i32 %16, %11, !dbg !2635
  %18 = xor i32 %17, %12, !dbg !2636
  store i32 %18, ptr %9, align 4, !dbg !2636, !tbaa !1063
  ret i32 %14, !dbg !2637
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #25 !dbg !2638 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2642, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata i32 %1, metadata !2643, metadata !DIExpression()), !dbg !2645
  %3 = icmp eq ptr %0, null, !dbg !2646
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2648
  call void @llvm.dbg.value(metadata ptr %4, metadata !2642, metadata !DIExpression()), !dbg !2645
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2649
  %6 = load i32, ptr %5, align 4, !dbg !2649, !tbaa !2650
  call void @llvm.dbg.value(metadata i32 %6, metadata !2644, metadata !DIExpression()), !dbg !2645
  store i32 %1, ptr %5, align 4, !dbg !2651, !tbaa !2650
  ret i32 %6, !dbg !2652
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2653 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2657, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata ptr %1, metadata !2658, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata ptr %2, metadata !2659, metadata !DIExpression()), !dbg !2660
  %4 = icmp eq ptr %0, null, !dbg !2661
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2663
  call void @llvm.dbg.value(metadata ptr %5, metadata !2657, metadata !DIExpression()), !dbg !2660
  store i32 10, ptr %5, align 8, !dbg !2664, !tbaa !2600
  %6 = icmp ne ptr %1, null, !dbg !2665
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2667
  br i1 %8, label %10, label %9, !dbg !2667

9:                                                ; preds = %3
  tail call void @abort() #42, !dbg !2668
  unreachable, !dbg !2668

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2669
  store ptr %1, ptr %11, align 8, !dbg !2670, !tbaa !2671
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2672
  store ptr %2, ptr %12, align 8, !dbg !2673, !tbaa !2674
  ret void, !dbg !2675
}

; Function Attrs: noreturn nounwind
declare !dbg !2676 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !2677 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2681, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i64 %1, metadata !2682, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata ptr %2, metadata !2683, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i64 %3, metadata !2684, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata ptr %4, metadata !2685, metadata !DIExpression()), !dbg !2689
  %6 = icmp eq ptr %4, null, !dbg !2690
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2690
  call void @llvm.dbg.value(metadata ptr %7, metadata !2686, metadata !DIExpression()), !dbg !2689
  %8 = tail call ptr @__errno_location() #43, !dbg !2691
  %9 = load i32, ptr %8, align 4, !dbg !2691, !tbaa !1063
  call void @llvm.dbg.value(metadata i32 %9, metadata !2687, metadata !DIExpression()), !dbg !2689
  %10 = load i32, ptr %7, align 8, !dbg !2692, !tbaa !2600
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2693
  %12 = load i32, ptr %11, align 4, !dbg !2693, !tbaa !2650
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2694
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2695
  %15 = load ptr, ptr %14, align 8, !dbg !2695, !tbaa !2671
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2696
  %17 = load ptr, ptr %16, align 8, !dbg !2696, !tbaa !2674
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2697
  call void @llvm.dbg.value(metadata i64 %18, metadata !2688, metadata !DIExpression()), !dbg !2689
  store i32 %9, ptr %8, align 4, !dbg !2698, !tbaa !1063
  ret i64 %18, !dbg !2699
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !2700 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !2706, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i64 %1, metadata !2707, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata ptr %2, metadata !2708, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i64 %3, metadata !2709, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i32 %4, metadata !2710, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i32 %5, metadata !2711, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata ptr %6, metadata !2712, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata ptr %7, metadata !2713, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata ptr %8, metadata !2714, metadata !DIExpression()), !dbg !2768
  %16 = tail call i64 @__ctype_get_mb_cur_max() #40, !dbg !2769
  %17 = icmp eq i64 %16, 1, !dbg !2770
  call void @llvm.dbg.value(metadata i1 %17, metadata !2715, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2768
  call void @llvm.dbg.value(metadata i64 0, metadata !2716, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i64 0, metadata !2717, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata ptr null, metadata !2718, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i64 0, metadata !2719, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i8 0, metadata !2720, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i32 %5, metadata !2721, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2768
  call void @llvm.dbg.value(metadata i8 0, metadata !2722, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i8 1, metadata !2723, metadata !DIExpression()), !dbg !2768
  %18 = and i32 %5, 2, !dbg !2771
  %19 = icmp ne i32 %18, 0, !dbg !2771
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !2771

27:                                               ; preds = %591, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %591 ]
  %29 = phi ptr [ %7, %9 ], [ %104, %591 ]
  %30 = phi ptr [ %8, %9 ], [ %105, %591 ]
  %31 = phi i64 [ %3, %9 ], [ %123, %591 ]
  %32 = phi i64 [ 0, %9 ], [ %125, %591 ], !dbg !2772
  %33 = phi ptr [ null, %9 ], [ %107, %591 ], !dbg !2773
  %34 = phi i64 [ 0, %9 ], [ %108, %591 ], !dbg !2774
  %35 = phi i1 [ false, %9 ], [ %109, %591 ]
  %36 = phi i1 [ %19, %9 ], [ false, %591 ]
  %37 = phi i1 [ false, %9 ], [ %126, %591 ]
  %38 = phi i1 [ true, %9 ], [ false, %591 ]
  %39 = phi i64 [ %1, %9 ], [ %125, %591 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2707, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i8 poison, metadata !2723, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i8 poison, metadata !2722, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i8 poison, metadata !2721, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i8 poison, metadata !2720, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i64 %34, metadata !2719, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata ptr %33, metadata !2718, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i64 %32, metadata !2717, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i64 0, metadata !2716, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i64 %31, metadata !2709, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata ptr %30, metadata !2714, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata ptr %29, metadata !2713, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i32 %28, metadata !2710, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.label(metadata !2761), !dbg !2775
  call void @llvm.dbg.value(metadata i8 0, metadata !2724, metadata !DIExpression()), !dbg !2768
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
  ], !dbg !2776

40:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2721, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i32 5, metadata !2710, metadata !DIExpression()), !dbg !2768
  br label %102, !dbg !2777

41:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2721, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i32 5, metadata !2710, metadata !DIExpression()), !dbg !2768
  br i1 %36, label %102, label %42, !dbg !2777

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !2778
  br i1 %43, label %102, label %44, !dbg !2782

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !2778, !tbaa !1072
  br label %102, !dbg !2778

45:                                               ; preds = %27, %27
  call void @llvm.dbg.value(metadata ptr @.str.11.93, metadata !747, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.value(metadata i32 %28, metadata !748, metadata !DIExpression()), !dbg !2783
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.94, ptr noundef nonnull @.str.11.93, i32 noundef 5) #40, !dbg !2787
  call void @llvm.dbg.value(metadata ptr %46, metadata !749, metadata !DIExpression()), !dbg !2783
  %47 = icmp eq ptr %46, @.str.11.93, !dbg !2788
  br i1 %47, label %48, label %57, !dbg !2790

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #40, !dbg !2791
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #40, !dbg !2792
  call void @llvm.dbg.declare(metadata ptr %13, metadata !751, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata ptr %13, metadata !2794, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata ptr %13, metadata !2802, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata i32 0, metadata !2805, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata i64 8, metadata !2806, metadata !DIExpression()), !dbg !2807
  store i64 0, ptr %13, align 8, !dbg !2809
  call void @llvm.dbg.value(metadata ptr %12, metadata !750, metadata !DIExpression(DW_OP_deref)), !dbg !2783
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #40, !dbg !2810
  %50 = icmp eq i64 %49, 3, !dbg !2812
  %51 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %51, metadata !750, metadata !DIExpression()), !dbg !2783
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !2813
  %54 = icmp eq i32 %28, 9, !dbg !2813
  %55 = select i1 %54, ptr @.str.10.95, ptr @.str.12.96, !dbg !2813
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !2813
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #40, !dbg !2814
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #40, !dbg !2814
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !2783
  call void @llvm.dbg.value(metadata ptr %58, metadata !2713, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata ptr @.str.12.96, metadata !747, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata i32 %28, metadata !748, metadata !DIExpression()), !dbg !2815
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.94, ptr noundef nonnull @.str.12.96, i32 noundef 5) #40, !dbg !2817
  call void @llvm.dbg.value(metadata ptr %59, metadata !749, metadata !DIExpression()), !dbg !2815
  %60 = icmp eq ptr %59, @.str.12.96, !dbg !2818
  br i1 %60, label %61, label %70, !dbg !2819

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #40, !dbg !2820
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #40, !dbg !2821
  call void @llvm.dbg.declare(metadata ptr %11, metadata !751, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.value(metadata ptr %11, metadata !2794, metadata !DIExpression()), !dbg !2823
  call void @llvm.dbg.value(metadata ptr %11, metadata !2802, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata i32 0, metadata !2805, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata i64 8, metadata !2806, metadata !DIExpression()), !dbg !2825
  store i64 0, ptr %11, align 8, !dbg !2827
  call void @llvm.dbg.value(metadata ptr %10, metadata !750, metadata !DIExpression(DW_OP_deref)), !dbg !2815
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #40, !dbg !2828
  %63 = icmp eq i64 %62, 3, !dbg !2829
  %64 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %64, metadata !750, metadata !DIExpression()), !dbg !2815
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !2830
  %67 = icmp eq i32 %28, 9, !dbg !2830
  %68 = select i1 %67, ptr @.str.10.95, ptr @.str.12.96, !dbg !2830
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !2830
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #40, !dbg !2831
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #40, !dbg !2831
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  call void @llvm.dbg.value(metadata ptr %72, metadata !2714, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata ptr %71, metadata !2713, metadata !DIExpression()), !dbg !2768
  br i1 %36, label %88, label %73, !dbg !2832

73:                                               ; preds = %70
  call void @llvm.dbg.value(metadata ptr %71, metadata !2725, metadata !DIExpression()), !dbg !2833
  call void @llvm.dbg.value(metadata i64 0, metadata !2716, metadata !DIExpression()), !dbg !2768
  %74 = load i8, ptr %71, align 1, !dbg !2834, !tbaa !1072
  %75 = icmp eq i8 %74, 0, !dbg !2836
  br i1 %75, label %88, label %76, !dbg !2836

76:                                               ; preds = %73, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %73 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %73 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %73 ]
  call void @llvm.dbg.value(metadata ptr %78, metadata !2725, metadata !DIExpression()), !dbg !2833
  call void @llvm.dbg.value(metadata i64 %79, metadata !2716, metadata !DIExpression()), !dbg !2768
  %80 = icmp ult i64 %79, %39, !dbg !2837
  br i1 %80, label %81, label %83, !dbg !2840

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !2837
  store i8 %77, ptr %82, align 1, !dbg !2837, !tbaa !1072
  br label %83, !dbg !2837

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !2840
  call void @llvm.dbg.value(metadata i64 %84, metadata !2716, metadata !DIExpression()), !dbg !2768
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !2841
  call void @llvm.dbg.value(metadata ptr %85, metadata !2725, metadata !DIExpression()), !dbg !2833
  %86 = load i8, ptr %85, align 1, !dbg !2834, !tbaa !1072
  %87 = icmp eq i8 %86, 0, !dbg !2836
  br i1 %87, label %88, label %76, !dbg !2836, !llvm.loop !2842

88:                                               ; preds = %83, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %84, %83 ], !dbg !2844
  call void @llvm.dbg.value(metadata i64 %89, metadata !2716, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i8 1, metadata !2720, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata ptr %72, metadata !2718, metadata !DIExpression()), !dbg !2768
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #41, !dbg !2845
  call void @llvm.dbg.value(metadata i64 %90, metadata !2719, metadata !DIExpression()), !dbg !2768
  br label %102, !dbg !2846

91:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !2720, metadata !DIExpression()), !dbg !2768
  br label %93, !dbg !2847

92:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2721, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i8 poison, metadata !2720, metadata !DIExpression()), !dbg !2768
  br i1 %36, label %102, label %96, !dbg !2848

93:                                               ; preds = %91, %27
  %94 = phi i1 [ true, %91 ], [ %35, %27 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2721, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i8 poison, metadata !2720, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i32 2, metadata !2710, metadata !DIExpression()), !dbg !2768
  br label %102, !dbg !2849

95:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2721, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i8 poison, metadata !2720, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i32 2, metadata !2710, metadata !DIExpression()), !dbg !2768
  br i1 %36, label %102, label %96, !dbg !2849

96:                                               ; preds = %92, %95
  %97 = phi i1 [ %35, %95 ], [ true, %92 ]
  %98 = icmp eq i64 %39, 0, !dbg !2850
  br i1 %98, label %102, label %99, !dbg !2854

99:                                               ; preds = %96
  store i8 39, ptr %0, align 1, !dbg !2850, !tbaa !1072
  br label %102, !dbg !2850

100:                                              ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !2721, metadata !DIExpression()), !dbg !2768
  br label %102, !dbg !2855

101:                                              ; preds = %27
  call void @abort() #42, !dbg !2856
  unreachable, !dbg !2856

102:                                              ; preds = %92, %93, %40, %95, %99, %96, %27, %41, %44, %42, %100, %88
  %103 = phi i32 [ 0, %100 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %96 ], [ 2, %99 ], [ 2, %95 ], [ 5, %40 ], [ 2, %93 ], [ 2, %92 ]
  %104 = phi ptr [ %29, %100 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %96 ], [ %29, %99 ], [ %29, %95 ], [ %29, %40 ], [ %29, %93 ], [ %29, %92 ]
  %105 = phi ptr [ %30, %100 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %96 ], [ %30, %99 ], [ %30, %95 ], [ %30, %40 ], [ %30, %93 ], [ %30, %92 ]
  %106 = phi i64 [ 0, %100 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %96 ], [ 1, %99 ], [ 0, %95 ], [ 0, %40 ], [ 0, %93 ], [ 0, %92 ], !dbg !2844
  %107 = phi ptr [ %33, %100 ], [ %72, %88 ], [ @.str.10.95, %42 ], [ @.str.10.95, %44 ], [ @.str.10.95, %41 ], [ %33, %27 ], [ @.str.12.96, %96 ], [ @.str.12.96, %99 ], [ @.str.12.96, %95 ], [ @.str.10.95, %40 ], [ @.str.12.96, %93 ], [ @.str.12.96, %92 ], !dbg !2768
  %108 = phi i64 [ %34, %100 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %96 ], [ 1, %99 ], [ 1, %95 ], [ 1, %40 ], [ 1, %93 ], [ 1, %92 ], !dbg !2768
  %109 = phi i1 [ %35, %100 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %97, %96 ], [ %97, %99 ], [ %35, %95 ], [ true, %40 ], [ %94, %93 ], [ %35, %92 ]
  %110 = phi i1 [ false, %100 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %96 ], [ false, %99 ], [ true, %95 ], [ true, %40 ], [ true, %93 ], [ true, %92 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2721, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i8 poison, metadata !2720, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i64 %108, metadata !2719, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata ptr %107, metadata !2718, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i64 %106, metadata !2716, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata ptr %105, metadata !2714, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata ptr %104, metadata !2713, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i32 %103, metadata !2710, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i64 0, metadata !2730, metadata !DIExpression()), !dbg !2857
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
  br label %122, !dbg !2858

122:                                              ; preds = %569, %102
  %123 = phi i64 [ %31, %102 ], [ %570, %569 ]
  %124 = phi i64 [ %106, %102 ], [ %571, %569 ], !dbg !2844
  %125 = phi i64 [ %32, %102 ], [ %572, %569 ], !dbg !2772
  %126 = phi i1 [ %37, %102 ], [ %573, %569 ]
  %127 = phi i1 [ %38, %102 ], [ %574, %569 ]
  %128 = phi i1 [ false, %102 ], [ %575, %569 ]
  %129 = phi i64 [ 0, %102 ], [ %578, %569 ], !dbg !2859
  %130 = phi i64 [ %39, %102 ], [ %577, %569 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !2707, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i64 %129, metadata !2730, metadata !DIExpression()), !dbg !2857
  call void @llvm.dbg.value(metadata i8 poison, metadata !2724, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i8 poison, metadata !2723, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i8 poison, metadata !2722, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i64 %125, metadata !2717, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i64 %124, metadata !2716, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i64 %123, metadata !2709, metadata !DIExpression()), !dbg !2768
  %131 = icmp eq i64 %123, -1, !dbg !2860
  br i1 %131, label %132, label %136, !dbg !2861

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2862
  %134 = load i8, ptr %133, align 1, !dbg !2862, !tbaa !1072
  %135 = icmp eq i8 %134, 0, !dbg !2863
  br i1 %135, label %579, label %138, !dbg !2864

136:                                              ; preds = %122
  %137 = icmp eq i64 %129, %123, !dbg !2865
  br i1 %137, label %579, label %138, !dbg !2864

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !2732, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i8 0, metadata !2735, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i8 0, metadata !2736, metadata !DIExpression()), !dbg !2866
  br i1 %114, label %139, label %152, !dbg !2867

139:                                              ; preds = %138
  %140 = add i64 %129, %108, !dbg !2869
  %141 = select i1 %131, i1 %115, i1 false, !dbg !2870
  br i1 %141, label %142, label %144, !dbg !2870

142:                                              ; preds = %139
  %143 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !2871
  call void @llvm.dbg.value(metadata i64 %143, metadata !2709, metadata !DIExpression()), !dbg !2768
  br label %144, !dbg !2872

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %123, %139 ], !dbg !2872
  call void @llvm.dbg.value(metadata i64 %145, metadata !2709, metadata !DIExpression()), !dbg !2768
  %146 = icmp ugt i64 %140, %145, !dbg !2873
  br i1 %146, label %152, label %147, !dbg !2874

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2875
  call void @llvm.dbg.value(metadata ptr %148, metadata !2876, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata ptr %107, metadata !2879, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i64 %108, metadata !2880, metadata !DIExpression()), !dbg !2881
  %149 = call i32 @bcmp(ptr %148, ptr %107, i64 %108), !dbg !2883
  %150 = icmp eq i32 %149, 0, !dbg !2884
  %151 = and i1 %150, %110, !dbg !2885
  br i1 %151, label %630, label %152, !dbg !2885

152:                                              ; preds = %147, %144, %138
  %153 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %123, %138 ]
  %154 = phi i1 [ %150, %147 ], [ false, %144 ], [ false, %138 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2732, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i64 %153, metadata !2709, metadata !DIExpression()), !dbg !2768
  %155 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2886
  %156 = load i8, ptr %155, align 1, !dbg !2886, !tbaa !1072
  call void @llvm.dbg.value(metadata i8 %156, metadata !2737, metadata !DIExpression()), !dbg !2866
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
  ], !dbg !2887

157:                                              ; preds = %152
  br i1 %109, label %158, label %204, !dbg !2888

158:                                              ; preds = %157
  br i1 %110, label %619, label %159, !dbg !2889

159:                                              ; preds = %158
  call void @llvm.dbg.value(metadata i8 1, metadata !2735, metadata !DIExpression()), !dbg !2866
  %160 = select i1 %111, i1 true, i1 %128, !dbg !2893
  br i1 %160, label %177, label %161, !dbg !2893

161:                                              ; preds = %159
  %162 = icmp ult i64 %124, %130, !dbg !2895
  br i1 %162, label %163, label %165, !dbg !2899

163:                                              ; preds = %161
  %164 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2895
  store i8 39, ptr %164, align 1, !dbg !2895, !tbaa !1072
  br label %165, !dbg !2895

165:                                              ; preds = %163, %161
  %166 = add i64 %124, 1, !dbg !2899
  call void @llvm.dbg.value(metadata i64 %166, metadata !2716, metadata !DIExpression()), !dbg !2768
  %167 = icmp ult i64 %166, %130, !dbg !2900
  br i1 %167, label %168, label %170, !dbg !2903

168:                                              ; preds = %165
  %169 = getelementptr inbounds i8, ptr %0, i64 %166, !dbg !2900
  store i8 36, ptr %169, align 1, !dbg !2900, !tbaa !1072
  br label %170, !dbg !2900

170:                                              ; preds = %168, %165
  %171 = add i64 %124, 2, !dbg !2903
  call void @llvm.dbg.value(metadata i64 %171, metadata !2716, metadata !DIExpression()), !dbg !2768
  %172 = icmp ult i64 %171, %130, !dbg !2904
  br i1 %172, label %173, label %175, !dbg !2907

173:                                              ; preds = %170
  %174 = getelementptr inbounds i8, ptr %0, i64 %171, !dbg !2904
  store i8 39, ptr %174, align 1, !dbg !2904, !tbaa !1072
  br label %175, !dbg !2904

175:                                              ; preds = %173, %170
  %176 = add i64 %124, 3, !dbg !2907
  call void @llvm.dbg.value(metadata i64 %176, metadata !2716, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i8 1, metadata !2724, metadata !DIExpression()), !dbg !2768
  br label %177, !dbg !2908

177:                                              ; preds = %159, %175
  %178 = phi i64 [ %176, %175 ], [ %124, %159 ], !dbg !2768
  %179 = phi i1 [ true, %175 ], [ %128, %159 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2724, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i64 %178, metadata !2716, metadata !DIExpression()), !dbg !2768
  %180 = icmp ult i64 %178, %130, !dbg !2909
  br i1 %180, label %181, label %183, !dbg !2912

181:                                              ; preds = %177
  %182 = getelementptr inbounds i8, ptr %0, i64 %178, !dbg !2909
  store i8 92, ptr %182, align 1, !dbg !2909, !tbaa !1072
  br label %183, !dbg !2909

183:                                              ; preds = %181, %177
  %184 = add i64 %178, 1, !dbg !2912
  call void @llvm.dbg.value(metadata i64 %184, metadata !2716, metadata !DIExpression()), !dbg !2768
  br i1 %111, label %185, label %482, !dbg !2913

185:                                              ; preds = %183
  %186 = add i64 %129, 1, !dbg !2915
  %187 = icmp ult i64 %186, %153, !dbg !2916
  br i1 %187, label %188, label %439, !dbg !2917

188:                                              ; preds = %185
  %189 = getelementptr inbounds i8, ptr %2, i64 %186, !dbg !2918
  %190 = load i8, ptr %189, align 1, !dbg !2918, !tbaa !1072
  %191 = add i8 %190, -48, !dbg !2919
  %192 = icmp ult i8 %191, 10, !dbg !2919
  br i1 %192, label %193, label %439, !dbg !2919

193:                                              ; preds = %188
  %194 = icmp ult i64 %184, %130, !dbg !2920
  br i1 %194, label %195, label %197, !dbg !2924

195:                                              ; preds = %193
  %196 = getelementptr inbounds i8, ptr %0, i64 %184, !dbg !2920
  store i8 48, ptr %196, align 1, !dbg !2920, !tbaa !1072
  br label %197, !dbg !2920

197:                                              ; preds = %195, %193
  %198 = add i64 %178, 2, !dbg !2924
  call void @llvm.dbg.value(metadata i64 %198, metadata !2716, metadata !DIExpression()), !dbg !2768
  %199 = icmp ult i64 %198, %130, !dbg !2925
  br i1 %199, label %200, label %202, !dbg !2928

200:                                              ; preds = %197
  %201 = getelementptr inbounds i8, ptr %0, i64 %198, !dbg !2925
  store i8 48, ptr %201, align 1, !dbg !2925, !tbaa !1072
  br label %202, !dbg !2925

202:                                              ; preds = %200, %197
  %203 = add i64 %178, 3, !dbg !2928
  call void @llvm.dbg.value(metadata i64 %203, metadata !2716, metadata !DIExpression()), !dbg !2768
  br label %439, !dbg !2929

204:                                              ; preds = %157
  br i1 %24, label %450, label %569, !dbg !2930

205:                                              ; preds = %152
  switch i32 %103, label %439 [
    i32 2, label %206
    i32 5, label %207
  ], !dbg !2931

206:                                              ; preds = %205
  br i1 %110, label %621, label %439, !dbg !2932

207:                                              ; preds = %205
  br i1 %22, label %439, label %208, !dbg !2934

208:                                              ; preds = %207
  %209 = add i64 %129, 2, !dbg !2936
  %210 = icmp ult i64 %209, %153, !dbg !2937
  br i1 %210, label %211, label %439, !dbg !2938

211:                                              ; preds = %208
  %212 = add i64 %129, 1, !dbg !2939
  %213 = getelementptr inbounds i8, ptr %2, i64 %212, !dbg !2940
  %214 = load i8, ptr %213, align 1, !dbg !2940, !tbaa !1072
  %215 = icmp eq i8 %214, 63, !dbg !2941
  br i1 %215, label %216, label %439, !dbg !2942

216:                                              ; preds = %211
  %217 = getelementptr inbounds i8, ptr %2, i64 %209, !dbg !2943
  %218 = load i8, ptr %217, align 1, !dbg !2943, !tbaa !1072
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
  ], !dbg !2944

219:                                              ; preds = %216, %216, %216, %216, %216, %216, %216, %216, %216
  br i1 %110, label %621, label %220, !dbg !2945

220:                                              ; preds = %219
  call void @llvm.dbg.value(metadata i8 %218, metadata !2737, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i64 %209, metadata !2730, metadata !DIExpression()), !dbg !2857
  %221 = icmp ult i64 %124, %130, !dbg !2947
  br i1 %221, label %222, label %224, !dbg !2950

222:                                              ; preds = %220
  %223 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2947
  store i8 63, ptr %223, align 1, !dbg !2947, !tbaa !1072
  br label %224, !dbg !2947

224:                                              ; preds = %222, %220
  %225 = add i64 %124, 1, !dbg !2950
  call void @llvm.dbg.value(metadata i64 %225, metadata !2716, metadata !DIExpression()), !dbg !2768
  %226 = icmp ult i64 %225, %130, !dbg !2951
  br i1 %226, label %227, label %229, !dbg !2954

227:                                              ; preds = %224
  %228 = getelementptr inbounds i8, ptr %0, i64 %225, !dbg !2951
  store i8 34, ptr %228, align 1, !dbg !2951, !tbaa !1072
  br label %229, !dbg !2951

229:                                              ; preds = %227, %224
  %230 = add i64 %124, 2, !dbg !2954
  call void @llvm.dbg.value(metadata i64 %230, metadata !2716, metadata !DIExpression()), !dbg !2768
  %231 = icmp ult i64 %230, %130, !dbg !2955
  br i1 %231, label %232, label %234, !dbg !2958

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, ptr %0, i64 %230, !dbg !2955
  store i8 34, ptr %233, align 1, !dbg !2955, !tbaa !1072
  br label %234, !dbg !2955

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 3, !dbg !2958
  call void @llvm.dbg.value(metadata i64 %235, metadata !2716, metadata !DIExpression()), !dbg !2768
  %236 = icmp ult i64 %235, %130, !dbg !2959
  br i1 %236, label %237, label %239, !dbg !2962

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, ptr %0, i64 %235, !dbg !2959
  store i8 63, ptr %238, align 1, !dbg !2959, !tbaa !1072
  br label %239, !dbg !2959

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 4, !dbg !2962
  call void @llvm.dbg.value(metadata i64 %240, metadata !2716, metadata !DIExpression()), !dbg !2768
  br label %439, !dbg !2963

241:                                              ; preds = %152
  br label %251, !dbg !2964

242:                                              ; preds = %152
  br label %251, !dbg !2965

243:                                              ; preds = %152
  br label %249, !dbg !2966

244:                                              ; preds = %152
  br label %249, !dbg !2967

245:                                              ; preds = %152
  br label %251, !dbg !2968

246:                                              ; preds = %152
  br i1 %116, label %247, label %248, !dbg !2969

247:                                              ; preds = %246
  br i1 %110, label %621, label %529, !dbg !2970

248:                                              ; preds = %246
  br i1 %118, label %529, label %251, !dbg !2973

249:                                              ; preds = %152, %244, %243
  %250 = phi i8 [ 116, %244 ], [ 114, %243 ], [ 110, %152 ], !dbg !2975
  call void @llvm.dbg.label(metadata !2762), !dbg !2976
  br i1 %119, label %621, label %251, !dbg !2977

251:                                              ; preds = %248, %249, %152, %245, %242, %241
  %252 = phi i8 [ %250, %249 ], [ 118, %245 ], [ 102, %242 ], [ 98, %241 ], [ 97, %152 ], [ 92, %248 ], !dbg !2975
  call void @llvm.dbg.label(metadata !2764), !dbg !2979
  br i1 %109, label %493, label %450, !dbg !2980

253:                                              ; preds = %152, %152
  switch i64 %153, label %439 [
    i64 -1, label %254
    i64 1, label %257
  ], !dbg !2981

254:                                              ; preds = %253
  %255 = load i8, ptr %20, align 1, !dbg !2982, !tbaa !1072
  %256 = icmp eq i8 %255, 0, !dbg !2984
  br i1 %256, label %257, label %439, !dbg !2985

257:                                              ; preds = %253, %254, %152, %152
  %258 = icmp eq i64 %129, 0, !dbg !2986
  br i1 %258, label %259, label %439, !dbg !2988

259:                                              ; preds = %257, %152
  call void @llvm.dbg.value(metadata i8 1, metadata !2736, metadata !DIExpression()), !dbg !2866
  br label %260, !dbg !2989

260:                                              ; preds = %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %259
  %261 = phi i1 [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ true, %259 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2736, metadata !DIExpression()), !dbg !2866
  br i1 %116, label %262, label %439, !dbg !2990

262:                                              ; preds = %260
  br i1 %110, label %621, label %439, !dbg !2992

263:                                              ; preds = %152
  call void @llvm.dbg.value(metadata i8 1, metadata !2722, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i8 1, metadata !2736, metadata !DIExpression()), !dbg !2866
  br i1 %116, label %264, label %439, !dbg !2993

264:                                              ; preds = %263
  br i1 %110, label %621, label %265, !dbg !2994

265:                                              ; preds = %264
  %266 = icmp eq i64 %130, 0, !dbg !2997
  %267 = icmp ne i64 %125, 0
  %268 = select i1 %266, i1 true, i1 %267, !dbg !2999
  %269 = select i1 %268, i64 %125, i64 %130, !dbg !2999
  %270 = select i1 %268, i64 %130, i64 0, !dbg !2999
  call void @llvm.dbg.value(metadata i64 %270, metadata !2707, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i64 %269, metadata !2717, metadata !DIExpression()), !dbg !2768
  %271 = icmp ult i64 %124, %270, !dbg !3000
  br i1 %271, label %272, label %274, !dbg !3003

272:                                              ; preds = %265
  %273 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !3000
  store i8 39, ptr %273, align 1, !dbg !3000, !tbaa !1072
  br label %274, !dbg !3000

274:                                              ; preds = %272, %265
  %275 = add i64 %124, 1, !dbg !3003
  call void @llvm.dbg.value(metadata i64 %275, metadata !2716, metadata !DIExpression()), !dbg !2768
  %276 = icmp ult i64 %275, %270, !dbg !3004
  br i1 %276, label %277, label %279, !dbg !3007

277:                                              ; preds = %274
  %278 = getelementptr inbounds i8, ptr %0, i64 %275, !dbg !3004
  store i8 92, ptr %278, align 1, !dbg !3004, !tbaa !1072
  br label %279, !dbg !3004

279:                                              ; preds = %277, %274
  %280 = add i64 %124, 2, !dbg !3007
  call void @llvm.dbg.value(metadata i64 %280, metadata !2716, metadata !DIExpression()), !dbg !2768
  %281 = icmp ult i64 %280, %270, !dbg !3008
  br i1 %281, label %282, label %284, !dbg !3011

282:                                              ; preds = %279
  %283 = getelementptr inbounds i8, ptr %0, i64 %280, !dbg !3008
  store i8 39, ptr %283, align 1, !dbg !3008, !tbaa !1072
  br label %284, !dbg !3008

284:                                              ; preds = %282, %279
  %285 = add i64 %124, 3, !dbg !3011
  call void @llvm.dbg.value(metadata i64 %285, metadata !2716, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i8 0, metadata !2724, metadata !DIExpression()), !dbg !2768
  br label %439, !dbg !3012

286:                                              ; preds = %152
  br i1 %17, label %287, label %295, !dbg !3013

287:                                              ; preds = %286
  call void @llvm.dbg.value(metadata i64 1, metadata !2738, metadata !DIExpression()), !dbg !3014
  %288 = tail call ptr @__ctype_b_loc() #43, !dbg !3015
  %289 = load ptr, ptr %288, align 8, !dbg !3015, !tbaa !989
  %290 = zext i8 %156 to i64
  %291 = getelementptr inbounds i16, ptr %289, i64 %290, !dbg !3015
  %292 = load i16, ptr %291, align 2, !dbg !3015, !tbaa !1104
  %293 = and i16 %292, 16384, !dbg !3015
  %294 = icmp ne i16 %293, 0, !dbg !3017
  call void @llvm.dbg.value(metadata i1 %294, metadata !2741, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3014
  br label %337, !dbg !3018

295:                                              ; preds = %286
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #40, !dbg !3019
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2742, metadata !DIExpression()), !dbg !3020
  call void @llvm.dbg.value(metadata ptr %14, metadata !2794, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.value(metadata ptr %14, metadata !2802, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata i32 0, metadata !2805, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata i64 8, metadata !2806, metadata !DIExpression()), !dbg !3023
  store i64 0, ptr %14, align 8, !dbg !3025
  call void @llvm.dbg.value(metadata i64 0, metadata !2738, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.value(metadata i8 1, metadata !2741, metadata !DIExpression()), !dbg !3014
  %296 = icmp eq i64 %153, -1, !dbg !3026
  br i1 %296, label %297, label %299, !dbg !3028

297:                                              ; preds = %295
  %298 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !3029
  call void @llvm.dbg.value(metadata i64 %298, metadata !2709, metadata !DIExpression()), !dbg !2768
  br label %299, !dbg !3030

299:                                              ; preds = %295, %297
  %300 = phi i64 [ %298, %297 ], [ %153, %295 ], !dbg !2866
  call void @llvm.dbg.value(metadata i64 %300, metadata !2709, metadata !DIExpression()), !dbg !2768
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #40, !dbg !3031
  %301 = sub i64 %300, %129, !dbg !3032
  call void @llvm.dbg.value(metadata ptr %15, metadata !2745, metadata !DIExpression(DW_OP_deref)), !dbg !3033
  %302 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %155, i64 noundef %301, ptr noundef nonnull %14) #40, !dbg !3034
  call void @llvm.dbg.value(metadata i64 %302, metadata !2749, metadata !DIExpression()), !dbg !3033
  switch i64 %302, label %316 [
    i64 0, label %332
    i64 -1, label %305
    i64 -2, label %303
  ], !dbg !3035

303:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i64 0, metadata !2738, metadata !DIExpression()), !dbg !3014
  %304 = icmp ugt i64 %300, %129, !dbg !3036
  br i1 %304, label %306, label %332, !dbg !3038

305:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i8 0, metadata !2741, metadata !DIExpression()), !dbg !3014
  br label %332, !dbg !3039

306:                                              ; preds = %303, %312
  %307 = phi i64 [ %314, %312 ], [ %129, %303 ]
  %308 = phi i64 [ %313, %312 ], [ 0, %303 ]
  call void @llvm.dbg.value(metadata i64 %308, metadata !2738, metadata !DIExpression()), !dbg !3014
  %309 = getelementptr inbounds i8, ptr %2, i64 %307, !dbg !3041
  %310 = load i8, ptr %309, align 1, !dbg !3041, !tbaa !1072
  %311 = icmp eq i8 %310, 0, !dbg !3038
  br i1 %311, label %332, label %312, !dbg !3042

312:                                              ; preds = %306
  %313 = add i64 %308, 1, !dbg !3043
  call void @llvm.dbg.value(metadata i64 %313, metadata !2738, metadata !DIExpression()), !dbg !3014
  %314 = add i64 %313, %129, !dbg !3044
  %315 = icmp eq i64 %313, %301, !dbg !3036
  br i1 %315, label %332, label %306, !dbg !3038, !llvm.loop !3045

316:                                              ; preds = %299
  %317 = icmp ugt i64 %302, 1
  %318 = and i1 %116, %317, !dbg !3046
  %319 = and i1 %318, %110, !dbg !3046
  call void @llvm.dbg.value(metadata i64 1, metadata !2750, metadata !DIExpression()), !dbg !3047
  br i1 %319, label %320, label %328, !dbg !3046

320:                                              ; preds = %316, %325
  %321 = phi i64 [ %326, %325 ], [ 1, %316 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !2750, metadata !DIExpression()), !dbg !3047
  %322 = add i64 %321, %129, !dbg !3048
  %323 = getelementptr inbounds i8, ptr %2, i64 %322, !dbg !3050
  %324 = load i8, ptr %323, align 1, !dbg !3050, !tbaa !1072
  switch i8 %324, label %325 [
    i8 91, label %335
    i8 92, label %335
    i8 94, label %335
    i8 96, label %335
    i8 124, label %335
  ], !dbg !3051

325:                                              ; preds = %320
  %326 = add nuw i64 %321, 1, !dbg !3052
  call void @llvm.dbg.value(metadata i64 %326, metadata !2750, metadata !DIExpression()), !dbg !3047
  %327 = icmp eq i64 %326, %302, !dbg !3053
  br i1 %327, label %328, label %320, !dbg !3054, !llvm.loop !3055

328:                                              ; preds = %325, %316
  %329 = load i32, ptr %15, align 4, !dbg !3057, !tbaa !1063
  call void @llvm.dbg.value(metadata i32 %329, metadata !2745, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i32 %329, metadata !3059, metadata !DIExpression()), !dbg !3067
  %330 = call i32 @iswprint(i32 noundef %329) #40, !dbg !3069
  %331 = icmp ne i32 %330, 0, !dbg !3070
  call void @llvm.dbg.value(metadata i8 poison, metadata !2741, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.value(metadata i64 %302, metadata !2738, metadata !DIExpression()), !dbg !3014
  br label %332, !dbg !3071

332:                                              ; preds = %306, %312, %303, %305, %328, %299
  %333 = phi i64 [ %302, %299 ], [ %302, %328 ], [ 0, %305 ], [ 0, %303 ], [ %308, %306 ], [ %301, %312 ]
  %334 = phi i1 [ true, %299 ], [ %331, %328 ], [ false, %305 ], [ false, %303 ], [ false, %312 ], [ false, %306 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2741, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.value(metadata i64 %333, metadata !2738, metadata !DIExpression()), !dbg !3014
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !3072
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !3073
  br label %337

335:                                              ; preds = %320, %320, %320, %320, %320
  call void @llvm.dbg.value(metadata i8 poison, metadata !2741, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.value(metadata i64 0, metadata !2738, metadata !DIExpression()), !dbg !3014
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !3072
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !3073
  call void @llvm.dbg.label(metadata !2767), !dbg !3074
  %336 = select i1 %109, i32 4, i32 2, !dbg !3075
  br label %626, !dbg !3075

337:                                              ; preds = %332, %287
  %338 = phi i64 [ %153, %287 ], [ %300, %332 ], !dbg !2866
  %339 = phi i64 [ 1, %287 ], [ %333, %332 ], !dbg !3077
  %340 = phi i1 [ %294, %287 ], [ %334, %332 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2741, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.value(metadata i64 %339, metadata !2738, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.value(metadata i64 %338, metadata !2709, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i1 %340, metadata !2736, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2866
  %341 = icmp ult i64 %339, 2, !dbg !3078
  %342 = select i1 %120, i1 true, i1 %340
  %343 = select i1 %341, i1 %342, i1 false, !dbg !3079
  br i1 %343, label %439, label %344, !dbg !3079

344:                                              ; preds = %337
  %345 = add i64 %339, %129, !dbg !3080
  call void @llvm.dbg.value(metadata i64 %345, metadata !2758, metadata !DIExpression()), !dbg !3081
  br label %346, !dbg !3082

346:                                              ; preds = %433, %344
  %347 = phi i64 [ %124, %344 ], [ %434, %433 ], !dbg !2768
  %348 = phi i1 [ %128, %344 ], [ %429, %433 ]
  %349 = phi i64 [ %129, %344 ], [ %410, %433 ], !dbg !2857
  %350 = phi i1 [ %154, %344 ], [ %407, %433 ]
  %351 = phi i8 [ 0, %344 ], [ %408, %433 ], !dbg !3083
  %352 = phi i8 [ %156, %344 ], [ %436, %433 ], !dbg !2866
  call void @llvm.dbg.value(metadata i8 %352, metadata !2737, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i8 %351, metadata !2735, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i8 poison, metadata !2732, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i64 %349, metadata !2730, metadata !DIExpression()), !dbg !2857
  call void @llvm.dbg.value(metadata i8 poison, metadata !2724, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i64 %347, metadata !2716, metadata !DIExpression()), !dbg !2768
  br i1 %342, label %397, label %353, !dbg !3084

353:                                              ; preds = %346
  br i1 %110, label %621, label %354, !dbg !3089

354:                                              ; preds = %353
  call void @llvm.dbg.value(metadata i8 1, metadata !2735, metadata !DIExpression()), !dbg !2866
  %355 = select i1 %111, i1 true, i1 %348, !dbg !3092
  br i1 %355, label %372, label %356, !dbg !3092

356:                                              ; preds = %354
  %357 = icmp ult i64 %347, %130, !dbg !3094
  br i1 %357, label %358, label %360, !dbg !3098

358:                                              ; preds = %356
  %359 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !3094
  store i8 39, ptr %359, align 1, !dbg !3094, !tbaa !1072
  br label %360, !dbg !3094

360:                                              ; preds = %358, %356
  %361 = add i64 %347, 1, !dbg !3098
  call void @llvm.dbg.value(metadata i64 %361, metadata !2716, metadata !DIExpression()), !dbg !2768
  %362 = icmp ult i64 %361, %130, !dbg !3099
  br i1 %362, label %363, label %365, !dbg !3102

363:                                              ; preds = %360
  %364 = getelementptr inbounds i8, ptr %0, i64 %361, !dbg !3099
  store i8 36, ptr %364, align 1, !dbg !3099, !tbaa !1072
  br label %365, !dbg !3099

365:                                              ; preds = %363, %360
  %366 = add i64 %347, 2, !dbg !3102
  call void @llvm.dbg.value(metadata i64 %366, metadata !2716, metadata !DIExpression()), !dbg !2768
  %367 = icmp ult i64 %366, %130, !dbg !3103
  br i1 %367, label %368, label %370, !dbg !3106

368:                                              ; preds = %365
  %369 = getelementptr inbounds i8, ptr %0, i64 %366, !dbg !3103
  store i8 39, ptr %369, align 1, !dbg !3103, !tbaa !1072
  br label %370, !dbg !3103

370:                                              ; preds = %368, %365
  %371 = add i64 %347, 3, !dbg !3106
  call void @llvm.dbg.value(metadata i64 %371, metadata !2716, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i8 1, metadata !2724, metadata !DIExpression()), !dbg !2768
  br label %372, !dbg !3107

372:                                              ; preds = %354, %370
  %373 = phi i64 [ %371, %370 ], [ %347, %354 ], !dbg !2768
  %374 = phi i1 [ true, %370 ], [ %348, %354 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2724, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i64 %373, metadata !2716, metadata !DIExpression()), !dbg !2768
  %375 = icmp ult i64 %373, %130, !dbg !3108
  br i1 %375, label %376, label %378, !dbg !3111

376:                                              ; preds = %372
  %377 = getelementptr inbounds i8, ptr %0, i64 %373, !dbg !3108
  store i8 92, ptr %377, align 1, !dbg !3108, !tbaa !1072
  br label %378, !dbg !3108

378:                                              ; preds = %376, %372
  %379 = add i64 %373, 1, !dbg !3111
  call void @llvm.dbg.value(metadata i64 %379, metadata !2716, metadata !DIExpression()), !dbg !2768
  %380 = icmp ult i64 %379, %130, !dbg !3112
  br i1 %380, label %381, label %385, !dbg !3115

381:                                              ; preds = %378
  %382 = lshr i8 %352, 6
  %383 = or i8 %382, 48, !dbg !3112
  %384 = getelementptr inbounds i8, ptr %0, i64 %379, !dbg !3112
  store i8 %383, ptr %384, align 1, !dbg !3112, !tbaa !1072
  br label %385, !dbg !3112

385:                                              ; preds = %381, %378
  %386 = add i64 %373, 2, !dbg !3115
  call void @llvm.dbg.value(metadata i64 %386, metadata !2716, metadata !DIExpression()), !dbg !2768
  %387 = icmp ult i64 %386, %130, !dbg !3116
  br i1 %387, label %388, label %393, !dbg !3119

388:                                              ; preds = %385
  %389 = lshr i8 %352, 3
  %390 = and i8 %389, 7, !dbg !3116
  %391 = or i8 %390, 48, !dbg !3116
  %392 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !3116
  store i8 %391, ptr %392, align 1, !dbg !3116, !tbaa !1072
  br label %393, !dbg !3116

393:                                              ; preds = %388, %385
  %394 = add i64 %373, 3, !dbg !3119
  call void @llvm.dbg.value(metadata i64 %394, metadata !2716, metadata !DIExpression()), !dbg !2768
  %395 = and i8 %352, 7, !dbg !3120
  %396 = or i8 %395, 48, !dbg !3121
  call void @llvm.dbg.value(metadata i8 %396, metadata !2737, metadata !DIExpression()), !dbg !2866
  br label %404, !dbg !3122

397:                                              ; preds = %346
  br i1 %350, label %398, label %404, !dbg !3123

398:                                              ; preds = %397
  %399 = icmp ult i64 %347, %130, !dbg !3124
  br i1 %399, label %400, label %402, !dbg !3129

400:                                              ; preds = %398
  %401 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !3124
  store i8 92, ptr %401, align 1, !dbg !3124, !tbaa !1072
  br label %402, !dbg !3124

402:                                              ; preds = %400, %398
  %403 = add i64 %347, 1, !dbg !3129
  call void @llvm.dbg.value(metadata i64 %403, metadata !2716, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i8 0, metadata !2732, metadata !DIExpression()), !dbg !2866
  br label %404, !dbg !3130

404:                                              ; preds = %397, %402, %393
  %405 = phi i64 [ %403, %402 ], [ %347, %397 ], [ %394, %393 ], !dbg !2768
  %406 = phi i1 [ %348, %402 ], [ %348, %397 ], [ %374, %393 ]
  %407 = phi i1 [ false, %402 ], [ false, %397 ], [ %350, %393 ]
  %408 = phi i8 [ %351, %402 ], [ %351, %397 ], [ 1, %393 ], !dbg !2866
  %409 = phi i8 [ %352, %402 ], [ %352, %397 ], [ %396, %393 ], !dbg !2866
  call void @llvm.dbg.value(metadata i8 %409, metadata !2737, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i8 %408, metadata !2735, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i8 poison, metadata !2732, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i8 poison, metadata !2724, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i64 %405, metadata !2716, metadata !DIExpression()), !dbg !2768
  %410 = add i64 %349, 1, !dbg !3131
  %411 = icmp ugt i64 %345, %410, !dbg !3133
  %412 = and i8 %408, 1
  br i1 %411, label %413, label %437, !dbg !3134

413:                                              ; preds = %404
  %414 = icmp eq i8 %412, 0, !dbg !3135
  %415 = select i1 %406, i1 %414, i1 false, !dbg !3135
  br i1 %415, label %416, label %427, !dbg !3135

416:                                              ; preds = %413
  %417 = icmp ult i64 %405, %130, !dbg !3138
  br i1 %417, label %418, label %420, !dbg !3142

418:                                              ; preds = %416
  %419 = getelementptr inbounds i8, ptr %0, i64 %405, !dbg !3138
  store i8 39, ptr %419, align 1, !dbg !3138, !tbaa !1072
  br label %420, !dbg !3138

420:                                              ; preds = %418, %416
  %421 = add i64 %405, 1, !dbg !3142
  call void @llvm.dbg.value(metadata i64 %421, metadata !2716, metadata !DIExpression()), !dbg !2768
  %422 = icmp ult i64 %421, %130, !dbg !3143
  br i1 %422, label %423, label %425, !dbg !3146

423:                                              ; preds = %420
  %424 = getelementptr inbounds i8, ptr %0, i64 %421, !dbg !3143
  store i8 39, ptr %424, align 1, !dbg !3143, !tbaa !1072
  br label %425, !dbg !3143

425:                                              ; preds = %423, %420
  %426 = add i64 %405, 2, !dbg !3146
  call void @llvm.dbg.value(metadata i64 %426, metadata !2716, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i8 0, metadata !2724, metadata !DIExpression()), !dbg !2768
  br label %427, !dbg !3147

427:                                              ; preds = %413, %425
  %428 = phi i64 [ %426, %425 ], [ %405, %413 ], !dbg !3148
  %429 = phi i1 [ false, %425 ], [ %406, %413 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2724, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i64 %428, metadata !2716, metadata !DIExpression()), !dbg !2768
  %430 = icmp ult i64 %428, %130, !dbg !3149
  br i1 %430, label %431, label %433, !dbg !3152

431:                                              ; preds = %427
  %432 = getelementptr inbounds i8, ptr %0, i64 %428, !dbg !3149
  store i8 %409, ptr %432, align 1, !dbg !3149, !tbaa !1072
  br label %433, !dbg !3149

433:                                              ; preds = %431, %427
  %434 = add i64 %428, 1, !dbg !3152
  call void @llvm.dbg.value(metadata i64 %434, metadata !2716, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i64 %410, metadata !2730, metadata !DIExpression()), !dbg !2857
  %435 = getelementptr inbounds i8, ptr %2, i64 %410, !dbg !3153
  %436 = load i8, ptr %435, align 1, !dbg !3153, !tbaa !1072
  call void @llvm.dbg.value(metadata i8 %436, metadata !2737, metadata !DIExpression()), !dbg !2866
  br label %346, !dbg !3154, !llvm.loop !3155

437:                                              ; preds = %404
  call void @llvm.dbg.value(metadata i8 %409, metadata !2737, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i1 %340, metadata !2736, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2866
  call void @llvm.dbg.value(metadata i8 %408, metadata !2735, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i8 poison, metadata !2732, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i64 %349, metadata !2730, metadata !DIExpression()), !dbg !2857
  call void @llvm.dbg.value(metadata i8 poison, metadata !2724, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i64 %405, metadata !2716, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i64 %338, metadata !2709, metadata !DIExpression()), !dbg !2768
  %438 = icmp ne i8 %412, 0
  br label %529

439:                                              ; preds = %337, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %253, %185, %188, %202, %263, %284, %260, %262, %257, %254, %205, %206, %239, %216, %211, %208, %207
  %440 = phi i64 [ %153, %284 ], [ %153, %263 ], [ %153, %262 ], [ %153, %260 ], [ %153, %257 ], [ -1, %254 ], [ %153, %205 ], [ %153, %216 ], [ %153, %239 ], [ %153, %211 ], [ %153, %208 ], [ %153, %207 ], [ %153, %206 ], [ %153, %202 ], [ %153, %188 ], [ %153, %185 ], [ %153, %253 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %338, %337 ], !dbg !3158
  %441 = phi i64 [ %285, %284 ], [ %124, %263 ], [ %124, %262 ], [ %124, %260 ], [ %124, %257 ], [ %124, %254 ], [ %124, %205 ], [ %124, %216 ], [ %240, %239 ], [ %124, %211 ], [ %124, %208 ], [ %124, %207 ], [ %124, %206 ], [ %203, %202 ], [ %184, %188 ], [ %184, %185 ], [ %124, %253 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %337 ], !dbg !2768
  %442 = phi i64 [ %269, %284 ], [ %125, %263 ], [ %125, %262 ], [ %125, %260 ], [ %125, %257 ], [ %125, %254 ], [ %125, %205 ], [ %125, %216 ], [ %125, %239 ], [ %125, %211 ], [ %125, %208 ], [ %125, %207 ], [ %125, %206 ], [ %125, %202 ], [ %125, %188 ], [ %125, %185 ], [ %125, %253 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %337 ], !dbg !2772
  %443 = phi i1 [ true, %284 ], [ true, %263 ], [ %126, %262 ], [ %126, %260 ], [ %126, %257 ], [ %126, %254 ], [ %126, %205 ], [ %126, %216 ], [ %126, %239 ], [ %126, %211 ], [ %126, %208 ], [ %126, %207 ], [ %126, %206 ], [ %126, %202 ], [ %126, %188 ], [ %126, %185 ], [ %126, %253 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %337 ]
  %444 = phi i1 [ false, %284 ], [ %128, %263 ], [ %128, %262 ], [ %128, %260 ], [ %128, %257 ], [ %128, %254 ], [ %128, %205 ], [ %128, %216 ], [ %128, %239 ], [ %128, %211 ], [ %128, %208 ], [ %128, %207 ], [ %128, %206 ], [ %179, %202 ], [ %179, %188 ], [ %179, %185 ], [ %128, %253 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %337 ]
  %445 = phi i64 [ %129, %284 ], [ %129, %263 ], [ %129, %262 ], [ %129, %260 ], [ %129, %257 ], [ %129, %254 ], [ %129, %205 ], [ %129, %216 ], [ %209, %239 ], [ %129, %211 ], [ %129, %208 ], [ %129, %207 ], [ %129, %206 ], [ %129, %202 ], [ %129, %188 ], [ %129, %185 ], [ %129, %253 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %337 ], !dbg !2857
  %446 = phi i1 [ false, %284 ], [ false, %263 ], [ false, %262 ], [ false, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ true, %202 ], [ true, %188 ], [ true, %185 ], [ false, %253 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %337 ]
  %447 = phi i1 [ true, %284 ], [ true, %263 ], [ %261, %262 ], [ %261, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ false, %202 ], [ false, %188 ], [ false, %185 ], [ false, %253 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ %340, %337 ]
  %448 = phi i8 [ 39, %284 ], [ 39, %263 ], [ %156, %262 ], [ %156, %260 ], [ %156, %257 ], [ %156, %254 ], [ 63, %205 ], [ 63, %216 ], [ %218, %239 ], [ 63, %211 ], [ 63, %208 ], [ 63, %207 ], [ 63, %206 ], [ 48, %202 ], [ 48, %188 ], [ 48, %185 ], [ %156, %253 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %337 ], !dbg !2866
  %449 = phi i64 [ %270, %284 ], [ %130, %263 ], [ %130, %262 ], [ %130, %260 ], [ %130, %257 ], [ %130, %254 ], [ %130, %205 ], [ %130, %216 ], [ %130, %239 ], [ %130, %211 ], [ %130, %208 ], [ %130, %207 ], [ %130, %206 ], [ %130, %202 ], [ %130, %188 ], [ %130, %185 ], [ %130, %253 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %337 ]
  call void @llvm.dbg.value(metadata i64 %449, metadata !2707, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i8 %448, metadata !2737, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i8 poison, metadata !2736, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i8 poison, metadata !2735, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i8 poison, metadata !2732, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i64 %445, metadata !2730, metadata !DIExpression()), !dbg !2857
  call void @llvm.dbg.value(metadata i8 poison, metadata !2724, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i8 poison, metadata !2722, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i64 %442, metadata !2717, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i64 %441, metadata !2716, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i64 %440, metadata !2709, metadata !DIExpression()), !dbg !2768
  br i1 %112, label %461, label %450, !dbg !3159

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
  br i1 %121, label %462, label %482, !dbg !3161

461:                                              ; preds = %439
  br i1 %26, label %482, label %462, !dbg !3162

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
  %473 = lshr i8 %464, 5, !dbg !3163
  %474 = zext i8 %473 to i64, !dbg !3163
  %475 = getelementptr inbounds i32, ptr %6, i64 %474, !dbg !3164
  %476 = load i32, ptr %475, align 4, !dbg !3164, !tbaa !1063
  %477 = and i8 %464, 31, !dbg !3165
  %478 = zext i8 %477 to i32, !dbg !3165
  %479 = shl nuw i32 1, %478, !dbg !3166
  %480 = and i32 %476, %479, !dbg !3166
  %481 = icmp eq i32 %480, 0, !dbg !3166
  br i1 %481, label %482, label %493, !dbg !3167

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
  br i1 %154, label %493, label %529, !dbg !3168

493:                                              ; preds = %251, %482, %462
  %494 = phi i64 [ %472, %462 ], [ %492, %482 ], [ %153, %251 ], !dbg !3158
  %495 = phi i64 [ %471, %462 ], [ %491, %482 ], [ %124, %251 ], !dbg !2768
  %496 = phi i64 [ %470, %462 ], [ %490, %482 ], [ %125, %251 ], !dbg !2772
  %497 = phi i1 [ %469, %462 ], [ %489, %482 ], [ %126, %251 ]
  %498 = phi i1 [ %468, %462 ], [ %488, %482 ], [ %128, %251 ]
  %499 = phi i64 [ %467, %462 ], [ %487, %482 ], [ %129, %251 ], !dbg !3169
  %500 = phi i1 [ %465, %462 ], [ %485, %482 ], [ false, %251 ]
  %501 = phi i8 [ %464, %462 ], [ %484, %482 ], [ %252, %251 ], !dbg !2866
  %502 = phi i64 [ %463, %462 ], [ %483, %482 ], [ %130, %251 ]
  call void @llvm.dbg.value(metadata i64 %502, metadata !2707, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i8 %501, metadata !2737, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i8 poison, metadata !2736, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i64 %499, metadata !2730, metadata !DIExpression()), !dbg !2857
  call void @llvm.dbg.value(metadata i8 poison, metadata !2724, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i8 poison, metadata !2722, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i64 %496, metadata !2717, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i64 %495, metadata !2716, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i64 %494, metadata !2709, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.label(metadata !2765), !dbg !3170
  br i1 %110, label %621, label %503, !dbg !3171

503:                                              ; preds = %493
  call void @llvm.dbg.value(metadata i8 1, metadata !2735, metadata !DIExpression()), !dbg !2866
  %504 = select i1 %111, i1 true, i1 %498, !dbg !3173
  br i1 %504, label %521, label %505, !dbg !3173

505:                                              ; preds = %503
  %506 = icmp ult i64 %495, %502, !dbg !3175
  br i1 %506, label %507, label %509, !dbg !3179

507:                                              ; preds = %505
  %508 = getelementptr inbounds i8, ptr %0, i64 %495, !dbg !3175
  store i8 39, ptr %508, align 1, !dbg !3175, !tbaa !1072
  br label %509, !dbg !3175

509:                                              ; preds = %507, %505
  %510 = add i64 %495, 1, !dbg !3179
  call void @llvm.dbg.value(metadata i64 %510, metadata !2716, metadata !DIExpression()), !dbg !2768
  %511 = icmp ult i64 %510, %502, !dbg !3180
  br i1 %511, label %512, label %514, !dbg !3183

512:                                              ; preds = %509
  %513 = getelementptr inbounds i8, ptr %0, i64 %510, !dbg !3180
  store i8 36, ptr %513, align 1, !dbg !3180, !tbaa !1072
  br label %514, !dbg !3180

514:                                              ; preds = %512, %509
  %515 = add i64 %495, 2, !dbg !3183
  call void @llvm.dbg.value(metadata i64 %515, metadata !2716, metadata !DIExpression()), !dbg !2768
  %516 = icmp ult i64 %515, %502, !dbg !3184
  br i1 %516, label %517, label %519, !dbg !3187

517:                                              ; preds = %514
  %518 = getelementptr inbounds i8, ptr %0, i64 %515, !dbg !3184
  store i8 39, ptr %518, align 1, !dbg !3184, !tbaa !1072
  br label %519, !dbg !3184

519:                                              ; preds = %517, %514
  %520 = add i64 %495, 3, !dbg !3187
  call void @llvm.dbg.value(metadata i64 %520, metadata !2716, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i8 1, metadata !2724, metadata !DIExpression()), !dbg !2768
  br label %521, !dbg !3188

521:                                              ; preds = %503, %519
  %522 = phi i64 [ %520, %519 ], [ %495, %503 ], !dbg !2866
  %523 = phi i1 [ true, %519 ], [ %498, %503 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2724, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i64 %522, metadata !2716, metadata !DIExpression()), !dbg !2768
  %524 = icmp ult i64 %522, %502, !dbg !3189
  br i1 %524, label %525, label %527, !dbg !3192

525:                                              ; preds = %521
  %526 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !3189
  store i8 92, ptr %526, align 1, !dbg !3189, !tbaa !1072
  br label %527, !dbg !3189

527:                                              ; preds = %521, %525
  %528 = add i64 %522, 1, !dbg !3192
  call void @llvm.dbg.value(metadata i64 %502, metadata !2707, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i8 %501, metadata !2737, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i8 poison, metadata !2736, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i8 poison, metadata !2735, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i64 %499, metadata !2730, metadata !DIExpression()), !dbg !2857
  call void @llvm.dbg.value(metadata i8 poison, metadata !2724, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i8 poison, metadata !2722, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i64 %496, metadata !2717, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i64 %528, metadata !2716, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i64 %494, metadata !2709, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.label(metadata !2766), !dbg !3193
  br label %553, !dbg !3194

529:                                              ; preds = %437, %248, %247, %482
  %530 = phi i64 [ %338, %437 ], [ %492, %482 ], [ %153, %247 ], [ %153, %248 ], !dbg !3158
  %531 = phi i64 [ %405, %437 ], [ %491, %482 ], [ %124, %247 ], [ %124, %248 ], !dbg !2768
  %532 = phi i64 [ %125, %437 ], [ %490, %482 ], [ %125, %247 ], [ %125, %248 ], !dbg !2772
  %533 = phi i1 [ %126, %437 ], [ %489, %482 ], [ %126, %247 ], [ %126, %248 ]
  %534 = phi i1 [ %406, %437 ], [ %488, %482 ], [ %128, %247 ], [ %128, %248 ]
  %535 = phi i64 [ %349, %437 ], [ %487, %482 ], [ %129, %247 ], [ %129, %248 ], !dbg !3169
  %536 = phi i1 [ %438, %437 ], [ %486, %482 ], [ false, %247 ], [ false, %248 ]
  %537 = phi i1 [ %340, %437 ], [ %485, %482 ], [ false, %247 ], [ false, %248 ]
  %538 = phi i8 [ %409, %437 ], [ %484, %482 ], [ 92, %247 ], [ 92, %248 ], !dbg !3197
  %539 = phi i64 [ %130, %437 ], [ %483, %482 ], [ %130, %247 ], [ %130, %248 ]
  call void @llvm.dbg.value(metadata i64 %539, metadata !2707, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i8 %538, metadata !2737, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i8 poison, metadata !2736, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i8 poison, metadata !2735, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i64 %535, metadata !2730, metadata !DIExpression()), !dbg !2857
  call void @llvm.dbg.value(metadata i8 poison, metadata !2724, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i8 poison, metadata !2722, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i64 %532, metadata !2717, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i64 %531, metadata !2716, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i64 %530, metadata !2709, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.label(metadata !2766), !dbg !3193
  %540 = xor i1 %534, true, !dbg !3194
  %541 = select i1 %540, i1 true, i1 %536, !dbg !3194
  br i1 %541, label %553, label %542, !dbg !3194

542:                                              ; preds = %529
  %543 = icmp ult i64 %531, %539, !dbg !3198
  br i1 %543, label %544, label %546, !dbg !3202

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, ptr %0, i64 %531, !dbg !3198
  store i8 39, ptr %545, align 1, !dbg !3198, !tbaa !1072
  br label %546, !dbg !3198

546:                                              ; preds = %544, %542
  %547 = add i64 %531, 1, !dbg !3202
  call void @llvm.dbg.value(metadata i64 %547, metadata !2716, metadata !DIExpression()), !dbg !2768
  %548 = icmp ult i64 %547, %539, !dbg !3203
  br i1 %548, label %549, label %551, !dbg !3206

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, ptr %0, i64 %547, !dbg !3203
  store i8 39, ptr %550, align 1, !dbg !3203, !tbaa !1072
  br label %551, !dbg !3203

551:                                              ; preds = %549, %546
  %552 = add i64 %531, 2, !dbg !3206
  call void @llvm.dbg.value(metadata i64 %552, metadata !2716, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i8 0, metadata !2724, metadata !DIExpression()), !dbg !2768
  br label %553, !dbg !3207

553:                                              ; preds = %527, %529, %551
  %554 = phi i64 [ %539, %551 ], [ %539, %529 ], [ %502, %527 ]
  %555 = phi i8 [ %538, %551 ], [ %538, %529 ], [ %501, %527 ]
  %556 = phi i1 [ %537, %551 ], [ %537, %529 ], [ %500, %527 ]
  %557 = phi i64 [ %535, %551 ], [ %535, %529 ], [ %499, %527 ]
  %558 = phi i1 [ %533, %551 ], [ %533, %529 ], [ %497, %527 ]
  %559 = phi i64 [ %532, %551 ], [ %532, %529 ], [ %496, %527 ]
  %560 = phi i64 [ %530, %551 ], [ %530, %529 ], [ %494, %527 ]
  %561 = phi i64 [ %552, %551 ], [ %531, %529 ], [ %528, %527 ], !dbg !2866
  %562 = phi i1 [ false, %551 ], [ %534, %529 ], [ %523, %527 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2724, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i64 %561, metadata !2716, metadata !DIExpression()), !dbg !2768
  %563 = icmp ult i64 %561, %554, !dbg !3208
  br i1 %563, label %564, label %566, !dbg !3211

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, ptr %0, i64 %561, !dbg !3208
  store i8 %555, ptr %565, align 1, !dbg !3208, !tbaa !1072
  br label %566, !dbg !3208

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !3211
  call void @llvm.dbg.value(metadata i64 %567, metadata !2716, metadata !DIExpression()), !dbg !2768
  %568 = select i1 %556, i1 %127, i1 false, !dbg !3212
  call void @llvm.dbg.value(metadata i8 poison, metadata !2723, metadata !DIExpression()), !dbg !2768
  br label %569, !dbg !3213

569:                                              ; preds = %204, %566
  %570 = phi i64 [ %560, %566 ], [ %153, %204 ], !dbg !3158
  %571 = phi i64 [ %567, %566 ], [ %124, %204 ], !dbg !2768
  %572 = phi i64 [ %559, %566 ], [ %125, %204 ], !dbg !2772
  %573 = phi i1 [ %558, %566 ], [ %126, %204 ]
  %574 = phi i1 [ %568, %566 ], [ %127, %204 ]
  %575 = phi i1 [ %562, %566 ], [ %128, %204 ]
  %576 = phi i64 [ %557, %566 ], [ %129, %204 ], !dbg !3169
  %577 = phi i64 [ %554, %566 ], [ %130, %204 ]
  call void @llvm.dbg.value(metadata i64 %577, metadata !2707, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i64 %576, metadata !2730, metadata !DIExpression()), !dbg !2857
  call void @llvm.dbg.value(metadata i8 poison, metadata !2724, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i8 poison, metadata !2723, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i8 poison, metadata !2722, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i64 %572, metadata !2717, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i64 %571, metadata !2716, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i64 %570, metadata !2709, metadata !DIExpression()), !dbg !2768
  %578 = add i64 %576, 1, !dbg !3214
  call void @llvm.dbg.value(metadata i64 %578, metadata !2730, metadata !DIExpression()), !dbg !2857
  br label %122, !dbg !3215, !llvm.loop !3216

579:                                              ; preds = %136, %132
  call void @llvm.dbg.value(metadata i64 %130, metadata !2707, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i8 poison, metadata !2723, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i8 poison, metadata !2722, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i64 %125, metadata !2717, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i64 %124, metadata !2716, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i64 %123, metadata !2709, metadata !DIExpression()), !dbg !2768
  %580 = icmp ne i64 %124, 0, !dbg !3218
  %581 = xor i1 %110, true, !dbg !3220
  %582 = or i1 %580, %581, !dbg !3220
  %583 = or i1 %582, %111, !dbg !3220
  br i1 %583, label %584, label %621, !dbg !3220

584:                                              ; preds = %579
  %585 = or i1 %111, %110, !dbg !3221
  %586 = xor i1 %126, true, !dbg !3221
  %587 = select i1 %585, i1 true, i1 %586, !dbg !3221
  br i1 %587, label %595, label %588, !dbg !3221

588:                                              ; preds = %584
  br i1 %127, label %589, label %591, !dbg !3223

589:                                              ; preds = %588
  %590 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %125, ptr noundef %2, i64 noundef %123, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %104, ptr noundef %105), !dbg !3225
  br label %636, !dbg !3227

591:                                              ; preds = %588
  %592 = icmp eq i64 %130, 0, !dbg !3228
  %593 = icmp ne i64 %125, 0
  %594 = select i1 %592, i1 %593, i1 false, !dbg !3230
  br i1 %594, label %27, label %595, !dbg !3230

595:                                              ; preds = %584, %591
  %596 = phi i1 [ %110, %584 ], [ false, %591 ]
  %597 = icmp eq ptr %107, null, !dbg !3231
  %598 = or i1 %597, %596, !dbg !3233
  br i1 %598, label %614, label %599, !dbg !3233

599:                                              ; preds = %595
  call void @llvm.dbg.value(metadata ptr %107, metadata !2718, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i64 %124, metadata !2716, metadata !DIExpression()), !dbg !2768
  %600 = load i8, ptr %107, align 1, !dbg !3234, !tbaa !1072
  %601 = icmp eq i8 %600, 0, !dbg !3237
  br i1 %601, label %614, label %602, !dbg !3237

602:                                              ; preds = %599, %609
  %603 = phi i8 [ %612, %609 ], [ %600, %599 ]
  %604 = phi ptr [ %611, %609 ], [ %107, %599 ]
  %605 = phi i64 [ %610, %609 ], [ %124, %599 ]
  call void @llvm.dbg.value(metadata ptr %604, metadata !2718, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i64 %605, metadata !2716, metadata !DIExpression()), !dbg !2768
  %606 = icmp ult i64 %605, %130, !dbg !3238
  br i1 %606, label %607, label %609, !dbg !3241

607:                                              ; preds = %602
  %608 = getelementptr inbounds i8, ptr %0, i64 %605, !dbg !3238
  store i8 %603, ptr %608, align 1, !dbg !3238, !tbaa !1072
  br label %609, !dbg !3238

609:                                              ; preds = %607, %602
  %610 = add i64 %605, 1, !dbg !3241
  call void @llvm.dbg.value(metadata i64 %610, metadata !2716, metadata !DIExpression()), !dbg !2768
  %611 = getelementptr inbounds i8, ptr %604, i64 1, !dbg !3242
  call void @llvm.dbg.value(metadata ptr %611, metadata !2718, metadata !DIExpression()), !dbg !2768
  %612 = load i8, ptr %611, align 1, !dbg !3234, !tbaa !1072
  %613 = icmp eq i8 %612, 0, !dbg !3237
  br i1 %613, label %614, label %602, !dbg !3237, !llvm.loop !3243

614:                                              ; preds = %609, %599, %595
  %615 = phi i64 [ %124, %595 ], [ %124, %599 ], [ %610, %609 ], !dbg !2844
  call void @llvm.dbg.value(metadata i64 %615, metadata !2716, metadata !DIExpression()), !dbg !2768
  %616 = icmp ult i64 %615, %130, !dbg !3245
  br i1 %616, label %617, label %636, !dbg !3247

617:                                              ; preds = %614
  %618 = getelementptr inbounds i8, ptr %0, i64 %615, !dbg !3248
  store i8 0, ptr %618, align 1, !dbg !3249, !tbaa !1072
  br label %636, !dbg !3248

619:                                              ; preds = %158
  call void @llvm.dbg.label(metadata !2767), !dbg !3074
  %620 = icmp eq i32 %103, 2, !dbg !3250
  br i1 %620, label %626, label %630, !dbg !3075

621:                                              ; preds = %579, %493, %264, %262, %249, %247, %219, %206, %353
  %622 = phi i64 [ %130, %353 ], [ %502, %493 ], [ %130, %264 ], [ %130, %262 ], [ %130, %249 ], [ %130, %247 ], [ %130, %219 ], [ %130, %206 ], [ %130, %579 ]
  %623 = phi i64 [ %338, %353 ], [ %494, %493 ], [ %153, %264 ], [ %153, %262 ], [ %153, %249 ], [ %153, %247 ], [ %153, %219 ], [ %153, %206 ], [ %123, %579 ]
  call void @llvm.dbg.label(metadata !2767), !dbg !3074
  %624 = icmp eq i32 %103, 2, !dbg !3250
  %625 = select i1 %109, i32 4, i32 2, !dbg !3075
  br i1 %624, label %626, label %630, !dbg !3075

626:                                              ; preds = %335, %621, %619
  %627 = phi i32 [ 4, %619 ], [ %336, %335 ], [ %625, %621 ]
  %628 = phi i64 [ %130, %619 ], [ %130, %335 ], [ %622, %621 ]
  %629 = phi i64 [ %153, %619 ], [ %300, %335 ], [ %623, %621 ]
  br label %630, !dbg !3075

630:                                              ; preds = %147, %621, %619, %626
  %631 = phi i64 [ %628, %626 ], [ %130, %619 ], [ %622, %621 ], [ %130, %147 ]
  %632 = phi i64 [ %629, %626 ], [ %153, %619 ], [ %623, %621 ], [ %145, %147 ]
  %633 = phi i32 [ %627, %626 ], [ %103, %619 ], [ %103, %621 ], [ %103, %147 ]
  call void @llvm.dbg.value(metadata i32 %633, metadata !2710, metadata !DIExpression()), !dbg !2768
  %634 = and i32 %5, -3, !dbg !3251
  %635 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %631, ptr noundef %2, i64 noundef %632, i32 noundef %633, i32 noundef %634, ptr noundef null, ptr noundef %104, ptr noundef %105), !dbg !3252
  br label %636, !dbg !3253

636:                                              ; preds = %614, %617, %630, %589
  %637 = phi i64 [ %635, %630 ], [ %590, %589 ], [ %615, %617 ], [ %615, %614 ]
  ret i64 %637, !dbg !3254
}

; Function Attrs: nounwind
declare !dbg !3255 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !3257 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !3260 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3262 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3266, metadata !DIExpression()), !dbg !3269
  call void @llvm.dbg.value(metadata i64 %1, metadata !3267, metadata !DIExpression()), !dbg !3269
  call void @llvm.dbg.value(metadata ptr %2, metadata !3268, metadata !DIExpression()), !dbg !3269
  call void @llvm.dbg.value(metadata ptr %0, metadata !3270, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata i64 %1, metadata !3275, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata ptr null, metadata !3276, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata ptr %2, metadata !3277, metadata !DIExpression()), !dbg !3283
  %4 = icmp eq ptr %2, null, !dbg !3285
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3285
  call void @llvm.dbg.value(metadata ptr %5, metadata !3278, metadata !DIExpression()), !dbg !3283
  %6 = tail call ptr @__errno_location() #43, !dbg !3286
  %7 = load i32, ptr %6, align 4, !dbg !3286, !tbaa !1063
  call void @llvm.dbg.value(metadata i32 %7, metadata !3279, metadata !DIExpression()), !dbg !3283
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3287
  %9 = load i32, ptr %8, align 4, !dbg !3287, !tbaa !2650
  %10 = or i32 %9, 1, !dbg !3288
  call void @llvm.dbg.value(metadata i32 %10, metadata !3280, metadata !DIExpression()), !dbg !3283
  %11 = load i32, ptr %5, align 8, !dbg !3289, !tbaa !2600
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3290
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3291
  %14 = load ptr, ptr %13, align 8, !dbg !3291, !tbaa !2671
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3292
  %16 = load ptr, ptr %15, align 8, !dbg !3292, !tbaa !2674
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3293
  %18 = add i64 %17, 1, !dbg !3294
  call void @llvm.dbg.value(metadata i64 %18, metadata !3281, metadata !DIExpression()), !dbg !3283
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #47, !dbg !3295
  call void @llvm.dbg.value(metadata ptr %19, metadata !3282, metadata !DIExpression()), !dbg !3283
  %20 = load i32, ptr %5, align 8, !dbg !3296, !tbaa !2600
  %21 = load ptr, ptr %13, align 8, !dbg !3297, !tbaa !2671
  %22 = load ptr, ptr %15, align 8, !dbg !3298, !tbaa !2674
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3299
  store i32 %7, ptr %6, align 4, !dbg !3300, !tbaa !1063
  ret ptr %19, !dbg !3301
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3271 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3270, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i64 %1, metadata !3275, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata ptr %2, metadata !3276, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata ptr %3, metadata !3277, metadata !DIExpression()), !dbg !3302
  %5 = icmp eq ptr %3, null, !dbg !3303
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3303
  call void @llvm.dbg.value(metadata ptr %6, metadata !3278, metadata !DIExpression()), !dbg !3302
  %7 = tail call ptr @__errno_location() #43, !dbg !3304
  %8 = load i32, ptr %7, align 4, !dbg !3304, !tbaa !1063
  call void @llvm.dbg.value(metadata i32 %8, metadata !3279, metadata !DIExpression()), !dbg !3302
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3305
  %10 = load i32, ptr %9, align 4, !dbg !3305, !tbaa !2650
  %11 = icmp eq ptr %2, null, !dbg !3306
  %12 = zext i1 %11 to i32, !dbg !3306
  %13 = or i32 %10, %12, !dbg !3307
  call void @llvm.dbg.value(metadata i32 %13, metadata !3280, metadata !DIExpression()), !dbg !3302
  %14 = load i32, ptr %6, align 8, !dbg !3308, !tbaa !2600
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3309
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3310
  %17 = load ptr, ptr %16, align 8, !dbg !3310, !tbaa !2671
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3311
  %19 = load ptr, ptr %18, align 8, !dbg !3311, !tbaa !2674
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3312
  %21 = add i64 %20, 1, !dbg !3313
  call void @llvm.dbg.value(metadata i64 %21, metadata !3281, metadata !DIExpression()), !dbg !3302
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #47, !dbg !3314
  call void @llvm.dbg.value(metadata ptr %22, metadata !3282, metadata !DIExpression()), !dbg !3302
  %23 = load i32, ptr %6, align 8, !dbg !3315, !tbaa !2600
  %24 = load ptr, ptr %16, align 8, !dbg !3316, !tbaa !2671
  %25 = load ptr, ptr %18, align 8, !dbg !3317, !tbaa !2674
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3318
  store i32 %8, ptr %7, align 4, !dbg !3319, !tbaa !1063
  br i1 %11, label %28, label %27, !dbg !3320

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3321, !tbaa !3323
  br label %28, !dbg !3324

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3325
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !3326 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3331, !tbaa !989
  call void @llvm.dbg.value(metadata ptr %1, metadata !3328, metadata !DIExpression()), !dbg !3332
  call void @llvm.dbg.value(metadata i32 1, metadata !3329, metadata !DIExpression()), !dbg !3333
  %2 = load i32, ptr @nslots, align 4, !tbaa !1063
  call void @llvm.dbg.value(metadata i32 1, metadata !3329, metadata !DIExpression()), !dbg !3333
  %3 = icmp sgt i32 %2, 1, !dbg !3334
  br i1 %3, label %4, label %6, !dbg !3336

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !3334
  br label %10, !dbg !3336

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3337
  %8 = load ptr, ptr %7, align 8, !dbg !3337, !tbaa !3339
  %9 = icmp eq ptr %8, @slot0, !dbg !3341
  br i1 %9, label %17, label %16, !dbg !3342

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !3329, metadata !DIExpression()), !dbg !3333
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3343
  %13 = load ptr, ptr %12, align 8, !dbg !3343, !tbaa !3339
  tail call void @free(ptr noundef %13) #40, !dbg !3344
  %14 = add nuw nsw i64 %11, 1, !dbg !3345
  call void @llvm.dbg.value(metadata i64 %14, metadata !3329, metadata !DIExpression()), !dbg !3333
  %15 = icmp eq i64 %14, %5, !dbg !3334
  br i1 %15, label %6, label %10, !dbg !3336, !llvm.loop !3346

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #40, !dbg !3348
  store i64 256, ptr @slotvec0, align 8, !dbg !3350, !tbaa !3351
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3352, !tbaa !3339
  br label %17, !dbg !3353

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3354
  br i1 %18, label %20, label %19, !dbg !3356

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #40, !dbg !3357
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3359, !tbaa !989
  br label %20, !dbg !3360

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3361, !tbaa !1063
  ret void, !dbg !3362
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3363 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3365, metadata !DIExpression()), !dbg !3367
  call void @llvm.dbg.value(metadata ptr %1, metadata !3366, metadata !DIExpression()), !dbg !3367
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3368
  ret ptr %3, !dbg !3369
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !3370 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3374, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata ptr %1, metadata !3375, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata i64 %2, metadata !3376, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata ptr %3, metadata !3377, metadata !DIExpression()), !dbg !3390
  %6 = tail call ptr @__errno_location() #43, !dbg !3391
  %7 = load i32, ptr %6, align 4, !dbg !3391, !tbaa !1063
  call void @llvm.dbg.value(metadata i32 %7, metadata !3378, metadata !DIExpression()), !dbg !3390
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3392, !tbaa !989
  call void @llvm.dbg.value(metadata ptr %8, metadata !3379, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !3380, metadata !DIExpression()), !dbg !3390
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3393
  br i1 %9, label %10, label %11, !dbg !3393

10:                                               ; preds = %4
  tail call void @abort() #42, !dbg !3395
  unreachable, !dbg !3395

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3396, !tbaa !1063
  %13 = icmp sgt i32 %12, %0, !dbg !3397
  br i1 %13, label %32, label %14, !dbg !3398

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3399
  call void @llvm.dbg.value(metadata i1 %15, metadata !3381, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3400
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #40, !dbg !3401
  %16 = sext i32 %12 to i64, !dbg !3402
  call void @llvm.dbg.value(metadata i64 %16, metadata !3384, metadata !DIExpression()), !dbg !3400
  store i64 %16, ptr %5, align 8, !dbg !3403, !tbaa !3323
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3404
  %18 = add nuw nsw i32 %0, 1, !dbg !3405
  %19 = sub i32 %18, %12, !dbg !3406
  %20 = sext i32 %19 to i64, !dbg !3407
  call void @llvm.dbg.value(metadata ptr %5, metadata !3384, metadata !DIExpression(DW_OP_deref)), !dbg !3400
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #40, !dbg !3408
  call void @llvm.dbg.value(metadata ptr %21, metadata !3379, metadata !DIExpression()), !dbg !3390
  store ptr %21, ptr @slotvec, align 8, !dbg !3409, !tbaa !989
  br i1 %15, label %22, label %23, !dbg !3410

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3411, !tbaa.struct !3413
  br label %23, !dbg !3414

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3415, !tbaa !1063
  %25 = sext i32 %24 to i64, !dbg !3416
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3416
  %27 = load i64, ptr %5, align 8, !dbg !3417, !tbaa !3323
  call void @llvm.dbg.value(metadata i64 %27, metadata !3384, metadata !DIExpression()), !dbg !3400
  %28 = sub nsw i64 %27, %25, !dbg !3418
  %29 = shl i64 %28, 4, !dbg !3419
  call void @llvm.dbg.value(metadata ptr %26, metadata !2802, metadata !DIExpression()), !dbg !3420
  call void @llvm.dbg.value(metadata i32 0, metadata !2805, metadata !DIExpression()), !dbg !3420
  call void @llvm.dbg.value(metadata i64 %29, metadata !2806, metadata !DIExpression()), !dbg !3420
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #40, !dbg !3422
  %30 = load i64, ptr %5, align 8, !dbg !3423, !tbaa !3323
  call void @llvm.dbg.value(metadata i64 %30, metadata !3384, metadata !DIExpression()), !dbg !3400
  %31 = trunc i64 %30 to i32, !dbg !3423
  store i32 %31, ptr @nslots, align 4, !dbg !3424, !tbaa !1063
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #40, !dbg !3425
  br label %32, !dbg !3426

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3390
  call void @llvm.dbg.value(metadata ptr %33, metadata !3379, metadata !DIExpression()), !dbg !3390
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3427
  %36 = load i64, ptr %35, align 8, !dbg !3428, !tbaa !3351
  call void @llvm.dbg.value(metadata i64 %36, metadata !3385, metadata !DIExpression()), !dbg !3429
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3430
  %38 = load ptr, ptr %37, align 8, !dbg !3430, !tbaa !3339
  call void @llvm.dbg.value(metadata ptr %38, metadata !3387, metadata !DIExpression()), !dbg !3429
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3431
  %40 = load i32, ptr %39, align 4, !dbg !3431, !tbaa !2650
  %41 = or i32 %40, 1, !dbg !3432
  call void @llvm.dbg.value(metadata i32 %41, metadata !3388, metadata !DIExpression()), !dbg !3429
  %42 = load i32, ptr %3, align 8, !dbg !3433, !tbaa !2600
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3434
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3435
  %45 = load ptr, ptr %44, align 8, !dbg !3435, !tbaa !2671
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3436
  %47 = load ptr, ptr %46, align 8, !dbg !3436, !tbaa !2674
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3437
  call void @llvm.dbg.value(metadata i64 %48, metadata !3389, metadata !DIExpression()), !dbg !3429
  %49 = icmp ugt i64 %36, %48, !dbg !3438
  br i1 %49, label %60, label %50, !dbg !3440

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3441
  call void @llvm.dbg.value(metadata i64 %51, metadata !3385, metadata !DIExpression()), !dbg !3429
  store i64 %51, ptr %35, align 8, !dbg !3443, !tbaa !3351
  %52 = icmp eq ptr %38, @slot0, !dbg !3444
  br i1 %52, label %54, label %53, !dbg !3446

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #40, !dbg !3447
  br label %54, !dbg !3447

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #47, !dbg !3448
  call void @llvm.dbg.value(metadata ptr %55, metadata !3387, metadata !DIExpression()), !dbg !3429
  store ptr %55, ptr %37, align 8, !dbg !3449, !tbaa !3339
  %56 = load i32, ptr %3, align 8, !dbg !3450, !tbaa !2600
  %57 = load ptr, ptr %44, align 8, !dbg !3451, !tbaa !2671
  %58 = load ptr, ptr %46, align 8, !dbg !3452, !tbaa !2674
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3453
  br label %60, !dbg !3454

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3429
  call void @llvm.dbg.value(metadata ptr %61, metadata !3387, metadata !DIExpression()), !dbg !3429
  store i32 %7, ptr %6, align 4, !dbg !3455, !tbaa !1063
  ret ptr %61, !dbg !3456
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #26

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3457 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3461, metadata !DIExpression()), !dbg !3464
  call void @llvm.dbg.value(metadata ptr %1, metadata !3462, metadata !DIExpression()), !dbg !3464
  call void @llvm.dbg.value(metadata i64 %2, metadata !3463, metadata !DIExpression()), !dbg !3464
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3465
  ret ptr %4, !dbg !3466
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3467 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3469, metadata !DIExpression()), !dbg !3470
  call void @llvm.dbg.value(metadata i32 0, metadata !3365, metadata !DIExpression()), !dbg !3471
  call void @llvm.dbg.value(metadata ptr %0, metadata !3366, metadata !DIExpression()), !dbg !3471
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3473
  ret ptr %2, !dbg !3474
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3475 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3479, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i64 %1, metadata !3480, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i32 0, metadata !3461, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata ptr %0, metadata !3462, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata i64 %1, metadata !3463, metadata !DIExpression()), !dbg !3482
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3484
  ret ptr %3, !dbg !3485
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3486 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3490, metadata !DIExpression()), !dbg !3494
  call void @llvm.dbg.value(metadata i32 %1, metadata !3491, metadata !DIExpression()), !dbg !3494
  call void @llvm.dbg.value(metadata ptr %2, metadata !3492, metadata !DIExpression()), !dbg !3494
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3495
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3493, metadata !DIExpression()), !dbg !3496
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3497), !dbg !3500
  call void @llvm.dbg.value(metadata i32 %1, metadata !3501, metadata !DIExpression()), !dbg !3507
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3506, metadata !DIExpression()), !dbg !3509
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3509, !alias.scope !3497
  %5 = icmp eq i32 %1, 10, !dbg !3510
  br i1 %5, label %6, label %7, !dbg !3512

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3513, !noalias !3497
  unreachable, !dbg !3513

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3514, !tbaa !2600, !alias.scope !3497
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3515
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3516
  ret ptr %8, !dbg !3517
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3518 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3522, metadata !DIExpression()), !dbg !3527
  call void @llvm.dbg.value(metadata i32 %1, metadata !3523, metadata !DIExpression()), !dbg !3527
  call void @llvm.dbg.value(metadata ptr %2, metadata !3524, metadata !DIExpression()), !dbg !3527
  call void @llvm.dbg.value(metadata i64 %3, metadata !3525, metadata !DIExpression()), !dbg !3527
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3528
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3526, metadata !DIExpression()), !dbg !3529
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3530), !dbg !3533
  call void @llvm.dbg.value(metadata i32 %1, metadata !3501, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3506, metadata !DIExpression()), !dbg !3536
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3536, !alias.scope !3530
  %6 = icmp eq i32 %1, 10, !dbg !3537
  br i1 %6, label %7, label %8, !dbg !3538

7:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3539, !noalias !3530
  unreachable, !dbg !3539

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3540, !tbaa !2600, !alias.scope !3530
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3541
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3542
  ret ptr %9, !dbg !3543
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3544 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3548, metadata !DIExpression()), !dbg !3550
  call void @llvm.dbg.value(metadata ptr %1, metadata !3549, metadata !DIExpression()), !dbg !3550
  call void @llvm.dbg.value(metadata i32 0, metadata !3490, metadata !DIExpression()), !dbg !3551
  call void @llvm.dbg.value(metadata i32 %0, metadata !3491, metadata !DIExpression()), !dbg !3551
  call void @llvm.dbg.value(metadata ptr %1, metadata !3492, metadata !DIExpression()), !dbg !3551
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3553
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3493, metadata !DIExpression()), !dbg !3554
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3555), !dbg !3558
  call void @llvm.dbg.value(metadata i32 %0, metadata !3501, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3506, metadata !DIExpression()), !dbg !3561
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3561, !alias.scope !3555
  %4 = icmp eq i32 %0, 10, !dbg !3562
  br i1 %4, label %5, label %6, !dbg !3563

5:                                                ; preds = %2
  tail call void @abort() #42, !dbg !3564, !noalias !3555
  unreachable, !dbg !3564

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3565, !tbaa !2600, !alias.scope !3555
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3566
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3567
  ret ptr %7, !dbg !3568
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3569 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3573, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.value(metadata ptr %1, metadata !3574, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.value(metadata i64 %2, metadata !3575, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.value(metadata i32 0, metadata !3522, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.value(metadata i32 %0, metadata !3523, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.value(metadata ptr %1, metadata !3524, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.value(metadata i64 %2, metadata !3525, metadata !DIExpression()), !dbg !3577
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3579
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3526, metadata !DIExpression()), !dbg !3580
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3581), !dbg !3584
  call void @llvm.dbg.value(metadata i32 %0, metadata !3501, metadata !DIExpression()), !dbg !3585
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3506, metadata !DIExpression()), !dbg !3587
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3587, !alias.scope !3581
  %5 = icmp eq i32 %0, 10, !dbg !3588
  br i1 %5, label %6, label %7, !dbg !3589

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3590, !noalias !3581
  unreachable, !dbg !3590

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3591, !tbaa !2600, !alias.scope !3581
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3592
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3593
  ret ptr %8, !dbg !3594
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !3595 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3599, metadata !DIExpression()), !dbg !3603
  call void @llvm.dbg.value(metadata i64 %1, metadata !3600, metadata !DIExpression()), !dbg !3603
  call void @llvm.dbg.value(metadata i8 %2, metadata !3601, metadata !DIExpression()), !dbg !3603
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3604
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3602, metadata !DIExpression()), !dbg !3605
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3606, !tbaa.struct !3607
  call void @llvm.dbg.value(metadata ptr %4, metadata !2617, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i8 %2, metadata !2618, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i32 1, metadata !2619, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i8 %2, metadata !2620, metadata !DIExpression()), !dbg !3608
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3610
  %6 = lshr i8 %2, 5, !dbg !3611
  %7 = zext i8 %6 to i64, !dbg !3611
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3612
  call void @llvm.dbg.value(metadata ptr %8, metadata !2621, metadata !DIExpression()), !dbg !3608
  %9 = and i8 %2, 31, !dbg !3613
  %10 = zext i8 %9 to i32, !dbg !3613
  call void @llvm.dbg.value(metadata i32 %10, metadata !2623, metadata !DIExpression()), !dbg !3608
  %11 = load i32, ptr %8, align 4, !dbg !3614, !tbaa !1063
  %12 = lshr i32 %11, %10, !dbg !3615
  call void @llvm.dbg.value(metadata i32 %12, metadata !2624, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3608
  %13 = and i32 %12, 1, !dbg !3616
  %14 = xor i32 %13, 1, !dbg !3616
  %15 = shl nuw i32 %14, %10, !dbg !3617
  %16 = xor i32 %15, %11, !dbg !3618
  store i32 %16, ptr %8, align 4, !dbg !3618, !tbaa !1063
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3619
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3620
  ret ptr %17, !dbg !3621
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !3622 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3626, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata i8 %1, metadata !3627, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata ptr %0, metadata !3599, metadata !DIExpression()), !dbg !3629
  call void @llvm.dbg.value(metadata i64 -1, metadata !3600, metadata !DIExpression()), !dbg !3629
  call void @llvm.dbg.value(metadata i8 %1, metadata !3601, metadata !DIExpression()), !dbg !3629
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3631
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3602, metadata !DIExpression()), !dbg !3632
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3633, !tbaa.struct !3607
  call void @llvm.dbg.value(metadata ptr %3, metadata !2617, metadata !DIExpression()), !dbg !3634
  call void @llvm.dbg.value(metadata i8 %1, metadata !2618, metadata !DIExpression()), !dbg !3634
  call void @llvm.dbg.value(metadata i32 1, metadata !2619, metadata !DIExpression()), !dbg !3634
  call void @llvm.dbg.value(metadata i8 %1, metadata !2620, metadata !DIExpression()), !dbg !3634
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3636
  %5 = lshr i8 %1, 5, !dbg !3637
  %6 = zext i8 %5 to i64, !dbg !3637
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3638
  call void @llvm.dbg.value(metadata ptr %7, metadata !2621, metadata !DIExpression()), !dbg !3634
  %8 = and i8 %1, 31, !dbg !3639
  %9 = zext i8 %8 to i32, !dbg !3639
  call void @llvm.dbg.value(metadata i32 %9, metadata !2623, metadata !DIExpression()), !dbg !3634
  %10 = load i32, ptr %7, align 4, !dbg !3640, !tbaa !1063
  %11 = lshr i32 %10, %9, !dbg !3641
  call void @llvm.dbg.value(metadata i32 %11, metadata !2624, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3634
  %12 = and i32 %11, 1, !dbg !3642
  %13 = xor i32 %12, 1, !dbg !3642
  %14 = shl nuw i32 %13, %9, !dbg !3643
  %15 = xor i32 %14, %10, !dbg !3644
  store i32 %15, ptr %7, align 4, !dbg !3644, !tbaa !1063
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3645
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3646
  ret ptr %16, !dbg !3647
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !3648 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3650, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata ptr %0, metadata !3626, metadata !DIExpression()), !dbg !3652
  call void @llvm.dbg.value(metadata i8 58, metadata !3627, metadata !DIExpression()), !dbg !3652
  call void @llvm.dbg.value(metadata ptr %0, metadata !3599, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.value(metadata i64 -1, metadata !3600, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.value(metadata i8 58, metadata !3601, metadata !DIExpression()), !dbg !3654
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #40, !dbg !3656
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3602, metadata !DIExpression()), !dbg !3657
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3658, !tbaa.struct !3607
  call void @llvm.dbg.value(metadata ptr %2, metadata !2617, metadata !DIExpression()), !dbg !3659
  call void @llvm.dbg.value(metadata i8 58, metadata !2618, metadata !DIExpression()), !dbg !3659
  call void @llvm.dbg.value(metadata i32 1, metadata !2619, metadata !DIExpression()), !dbg !3659
  call void @llvm.dbg.value(metadata i8 58, metadata !2620, metadata !DIExpression()), !dbg !3659
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3661
  call void @llvm.dbg.value(metadata ptr %3, metadata !2621, metadata !DIExpression()), !dbg !3659
  call void @llvm.dbg.value(metadata i32 26, metadata !2623, metadata !DIExpression()), !dbg !3659
  %4 = load i32, ptr %3, align 4, !dbg !3662, !tbaa !1063
  call void @llvm.dbg.value(metadata i32 %4, metadata !2624, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3659
  %5 = or i32 %4, 67108864, !dbg !3663
  store i32 %5, ptr %3, align 4, !dbg !3663, !tbaa !1063
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3664
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #40, !dbg !3665
  ret ptr %6, !dbg !3666
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3667 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3669, metadata !DIExpression()), !dbg !3671
  call void @llvm.dbg.value(metadata i64 %1, metadata !3670, metadata !DIExpression()), !dbg !3671
  call void @llvm.dbg.value(metadata ptr %0, metadata !3599, metadata !DIExpression()), !dbg !3672
  call void @llvm.dbg.value(metadata i64 %1, metadata !3600, metadata !DIExpression()), !dbg !3672
  call void @llvm.dbg.value(metadata i8 58, metadata !3601, metadata !DIExpression()), !dbg !3672
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3674
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3602, metadata !DIExpression()), !dbg !3675
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3676, !tbaa.struct !3607
  call void @llvm.dbg.value(metadata ptr %3, metadata !2617, metadata !DIExpression()), !dbg !3677
  call void @llvm.dbg.value(metadata i8 58, metadata !2618, metadata !DIExpression()), !dbg !3677
  call void @llvm.dbg.value(metadata i32 1, metadata !2619, metadata !DIExpression()), !dbg !3677
  call void @llvm.dbg.value(metadata i8 58, metadata !2620, metadata !DIExpression()), !dbg !3677
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3679
  call void @llvm.dbg.value(metadata ptr %4, metadata !2621, metadata !DIExpression()), !dbg !3677
  call void @llvm.dbg.value(metadata i32 26, metadata !2623, metadata !DIExpression()), !dbg !3677
  %5 = load i32, ptr %4, align 4, !dbg !3680, !tbaa !1063
  call void @llvm.dbg.value(metadata i32 %5, metadata !2624, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3677
  %6 = or i32 %5, 67108864, !dbg !3681
  store i32 %6, ptr %4, align 4, !dbg !3681, !tbaa !1063
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3682
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3683
  ret ptr %7, !dbg !3684
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3685 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3506, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3691
  call void @llvm.dbg.value(metadata i32 %0, metadata !3687, metadata !DIExpression()), !dbg !3693
  call void @llvm.dbg.value(metadata i32 %1, metadata !3688, metadata !DIExpression()), !dbg !3693
  call void @llvm.dbg.value(metadata ptr %2, metadata !3689, metadata !DIExpression()), !dbg !3693
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3694
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3690, metadata !DIExpression()), !dbg !3695
  call void @llvm.dbg.value(metadata i32 %1, metadata !3501, metadata !DIExpression()), !dbg !3696
  call void @llvm.dbg.value(metadata i32 0, metadata !3506, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3696
  %5 = icmp eq i32 %1, 10, !dbg !3697
  br i1 %5, label %6, label %7, !dbg !3698

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3699, !noalias !3700
  unreachable, !dbg !3699

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3506, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3696
  store i32 %1, ptr %4, align 8, !dbg !3703, !tbaa.struct !3607
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3703
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3703
  call void @llvm.dbg.value(metadata ptr %4, metadata !2617, metadata !DIExpression()), !dbg !3704
  call void @llvm.dbg.value(metadata i8 58, metadata !2618, metadata !DIExpression()), !dbg !3704
  call void @llvm.dbg.value(metadata i32 1, metadata !2619, metadata !DIExpression()), !dbg !3704
  call void @llvm.dbg.value(metadata i8 58, metadata !2620, metadata !DIExpression()), !dbg !3704
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3706
  call void @llvm.dbg.value(metadata ptr %9, metadata !2621, metadata !DIExpression()), !dbg !3704
  call void @llvm.dbg.value(metadata i32 26, metadata !2623, metadata !DIExpression()), !dbg !3704
  %10 = load i32, ptr %9, align 4, !dbg !3707, !tbaa !1063
  call void @llvm.dbg.value(metadata i32 %10, metadata !2624, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3704
  %11 = or i32 %10, 67108864, !dbg !3708
  store i32 %11, ptr %9, align 4, !dbg !3708, !tbaa !1063
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3709
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3710
  ret ptr %12, !dbg !3711
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3712 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3716, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.value(metadata ptr %1, metadata !3717, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.value(metadata ptr %2, metadata !3718, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.value(metadata ptr %3, metadata !3719, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.value(metadata i32 %0, metadata !3721, metadata !DIExpression()), !dbg !3731
  call void @llvm.dbg.value(metadata ptr %1, metadata !3726, metadata !DIExpression()), !dbg !3731
  call void @llvm.dbg.value(metadata ptr %2, metadata !3727, metadata !DIExpression()), !dbg !3731
  call void @llvm.dbg.value(metadata ptr %3, metadata !3728, metadata !DIExpression()), !dbg !3731
  call void @llvm.dbg.value(metadata i64 -1, metadata !3729, metadata !DIExpression()), !dbg !3731
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3733
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3730, metadata !DIExpression()), !dbg !3734
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3735, !tbaa.struct !3607
  call void @llvm.dbg.value(metadata ptr %5, metadata !2657, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata ptr %1, metadata !2658, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata ptr %2, metadata !2659, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata ptr %5, metadata !2657, metadata !DIExpression()), !dbg !3736
  store i32 10, ptr %5, align 8, !dbg !3738, !tbaa !2600
  %6 = icmp ne ptr %1, null, !dbg !3739
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3740
  br i1 %8, label %10, label %9, !dbg !3740

9:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3741
  unreachable, !dbg !3741

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3742
  store ptr %1, ptr %11, align 8, !dbg !3743, !tbaa !2671
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3744
  store ptr %2, ptr %12, align 8, !dbg !3745, !tbaa !2674
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3746
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3747
  ret ptr %13, !dbg !3748
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3722 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3721, metadata !DIExpression()), !dbg !3749
  call void @llvm.dbg.value(metadata ptr %1, metadata !3726, metadata !DIExpression()), !dbg !3749
  call void @llvm.dbg.value(metadata ptr %2, metadata !3727, metadata !DIExpression()), !dbg !3749
  call void @llvm.dbg.value(metadata ptr %3, metadata !3728, metadata !DIExpression()), !dbg !3749
  call void @llvm.dbg.value(metadata i64 %4, metadata !3729, metadata !DIExpression()), !dbg !3749
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #40, !dbg !3750
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3730, metadata !DIExpression()), !dbg !3751
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3752, !tbaa.struct !3607
  call void @llvm.dbg.value(metadata ptr %6, metadata !2657, metadata !DIExpression()), !dbg !3753
  call void @llvm.dbg.value(metadata ptr %1, metadata !2658, metadata !DIExpression()), !dbg !3753
  call void @llvm.dbg.value(metadata ptr %2, metadata !2659, metadata !DIExpression()), !dbg !3753
  call void @llvm.dbg.value(metadata ptr %6, metadata !2657, metadata !DIExpression()), !dbg !3753
  store i32 10, ptr %6, align 8, !dbg !3755, !tbaa !2600
  %7 = icmp ne ptr %1, null, !dbg !3756
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3757
  br i1 %9, label %11, label %10, !dbg !3757

10:                                               ; preds = %5
  tail call void @abort() #42, !dbg !3758
  unreachable, !dbg !3758

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3759
  store ptr %1, ptr %12, align 8, !dbg !3760, !tbaa !2671
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3761
  store ptr %2, ptr %13, align 8, !dbg !3762, !tbaa !2674
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3763
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #40, !dbg !3764
  ret ptr %14, !dbg !3765
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3766 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3770, metadata !DIExpression()), !dbg !3773
  call void @llvm.dbg.value(metadata ptr %1, metadata !3771, metadata !DIExpression()), !dbg !3773
  call void @llvm.dbg.value(metadata ptr %2, metadata !3772, metadata !DIExpression()), !dbg !3773
  call void @llvm.dbg.value(metadata i32 0, metadata !3716, metadata !DIExpression()), !dbg !3774
  call void @llvm.dbg.value(metadata ptr %0, metadata !3717, metadata !DIExpression()), !dbg !3774
  call void @llvm.dbg.value(metadata ptr %1, metadata !3718, metadata !DIExpression()), !dbg !3774
  call void @llvm.dbg.value(metadata ptr %2, metadata !3719, metadata !DIExpression()), !dbg !3774
  call void @llvm.dbg.value(metadata i32 0, metadata !3721, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata ptr %0, metadata !3726, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata ptr %1, metadata !3727, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata ptr %2, metadata !3728, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i64 -1, metadata !3729, metadata !DIExpression()), !dbg !3776
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3778
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3730, metadata !DIExpression()), !dbg !3779
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3780, !tbaa.struct !3607
  call void @llvm.dbg.value(metadata ptr %4, metadata !2657, metadata !DIExpression()), !dbg !3781
  call void @llvm.dbg.value(metadata ptr %0, metadata !2658, metadata !DIExpression()), !dbg !3781
  call void @llvm.dbg.value(metadata ptr %1, metadata !2659, metadata !DIExpression()), !dbg !3781
  call void @llvm.dbg.value(metadata ptr %4, metadata !2657, metadata !DIExpression()), !dbg !3781
  store i32 10, ptr %4, align 8, !dbg !3783, !tbaa !2600
  %5 = icmp ne ptr %0, null, !dbg !3784
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3785
  br i1 %7, label %9, label %8, !dbg !3785

8:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3786
  unreachable, !dbg !3786

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3787
  store ptr %0, ptr %10, align 8, !dbg !3788, !tbaa !2671
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3789
  store ptr %1, ptr %11, align 8, !dbg !3790, !tbaa !2674
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3791
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3792
  ret ptr %12, !dbg !3793
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3794 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3798, metadata !DIExpression()), !dbg !3802
  call void @llvm.dbg.value(metadata ptr %1, metadata !3799, metadata !DIExpression()), !dbg !3802
  call void @llvm.dbg.value(metadata ptr %2, metadata !3800, metadata !DIExpression()), !dbg !3802
  call void @llvm.dbg.value(metadata i64 %3, metadata !3801, metadata !DIExpression()), !dbg !3802
  call void @llvm.dbg.value(metadata i32 0, metadata !3721, metadata !DIExpression()), !dbg !3803
  call void @llvm.dbg.value(metadata ptr %0, metadata !3726, metadata !DIExpression()), !dbg !3803
  call void @llvm.dbg.value(metadata ptr %1, metadata !3727, metadata !DIExpression()), !dbg !3803
  call void @llvm.dbg.value(metadata ptr %2, metadata !3728, metadata !DIExpression()), !dbg !3803
  call void @llvm.dbg.value(metadata i64 %3, metadata !3729, metadata !DIExpression()), !dbg !3803
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3805
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3730, metadata !DIExpression()), !dbg !3806
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3807, !tbaa.struct !3607
  call void @llvm.dbg.value(metadata ptr %5, metadata !2657, metadata !DIExpression()), !dbg !3808
  call void @llvm.dbg.value(metadata ptr %0, metadata !2658, metadata !DIExpression()), !dbg !3808
  call void @llvm.dbg.value(metadata ptr %1, metadata !2659, metadata !DIExpression()), !dbg !3808
  call void @llvm.dbg.value(metadata ptr %5, metadata !2657, metadata !DIExpression()), !dbg !3808
  store i32 10, ptr %5, align 8, !dbg !3810, !tbaa !2600
  %6 = icmp ne ptr %0, null, !dbg !3811
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3812
  br i1 %8, label %10, label %9, !dbg !3812

9:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3813
  unreachable, !dbg !3813

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3814
  store ptr %0, ptr %11, align 8, !dbg !3815, !tbaa !2671
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3816
  store ptr %1, ptr %12, align 8, !dbg !3817, !tbaa !2674
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3818
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3819
  ret ptr %13, !dbg !3820
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3821 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3825, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata ptr %1, metadata !3826, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata i64 %2, metadata !3827, metadata !DIExpression()), !dbg !3828
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3829
  ret ptr %4, !dbg !3830
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3831 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3835, metadata !DIExpression()), !dbg !3837
  call void @llvm.dbg.value(metadata i64 %1, metadata !3836, metadata !DIExpression()), !dbg !3837
  call void @llvm.dbg.value(metadata i32 0, metadata !3825, metadata !DIExpression()), !dbg !3838
  call void @llvm.dbg.value(metadata ptr %0, metadata !3826, metadata !DIExpression()), !dbg !3838
  call void @llvm.dbg.value(metadata i64 %1, metadata !3827, metadata !DIExpression()), !dbg !3838
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3840
  ret ptr %3, !dbg !3841
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3842 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3846, metadata !DIExpression()), !dbg !3848
  call void @llvm.dbg.value(metadata ptr %1, metadata !3847, metadata !DIExpression()), !dbg !3848
  call void @llvm.dbg.value(metadata i32 %0, metadata !3825, metadata !DIExpression()), !dbg !3849
  call void @llvm.dbg.value(metadata ptr %1, metadata !3826, metadata !DIExpression()), !dbg !3849
  call void @llvm.dbg.value(metadata i64 -1, metadata !3827, metadata !DIExpression()), !dbg !3849
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3851
  ret ptr %3, !dbg !3852
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3853 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3857, metadata !DIExpression()), !dbg !3858
  call void @llvm.dbg.value(metadata i32 0, metadata !3846, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata ptr %0, metadata !3847, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata i32 0, metadata !3825, metadata !DIExpression()), !dbg !3861
  call void @llvm.dbg.value(metadata ptr %0, metadata !3826, metadata !DIExpression()), !dbg !3861
  call void @llvm.dbg.value(metadata i64 -1, metadata !3827, metadata !DIExpression()), !dbg !3861
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3863
  ret ptr %2, !dbg !3864
}

; Function Attrs: nofree nounwind uwtable
define dso_local i64 @safe_write(i32 noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3865 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3871, metadata !DIExpression()), !dbg !3880
  call void @llvm.dbg.value(metadata ptr %1, metadata !3872, metadata !DIExpression()), !dbg !3880
  call void @llvm.dbg.value(metadata i64 %2, metadata !3873, metadata !DIExpression()), !dbg !3880
  br label %4, !dbg !3881

4:                                                ; preds = %13, %3
  %5 = phi i64 [ 2146435072, %13 ], [ %2, %3 ]
  br label %6, !dbg !3882

6:                                                ; preds = %9, %4
  call void @llvm.dbg.value(metadata i64 %5, metadata !3873, metadata !DIExpression()), !dbg !3880
  %7 = tail call i64 @write(i32 noundef %0, ptr noundef %1, i64 noundef %5) #40, !dbg !3883
  call void @llvm.dbg.value(metadata i64 %7, metadata !3874, metadata !DIExpression()), !dbg !3884
  %8 = icmp sgt i64 %7, -1, !dbg !3885
  br i1 %8, label %17, label %9, !dbg !3882

9:                                                ; preds = %6
  %10 = tail call ptr @__errno_location() #43, !dbg !3887
  %11 = load i32, ptr %10, align 4, !dbg !3887, !tbaa !1063
  %12 = icmp eq i32 %11, 4, !dbg !3887
  br i1 %12, label %6, label %13, !dbg !3889, !llvm.loop !3890

13:                                               ; preds = %9
  %14 = icmp ne i32 %11, 22, !dbg !3893
  %15 = icmp slt i64 %5, 2146435073
  %16 = or i1 %15, %14, !dbg !3895
  call void @llvm.dbg.value(metadata i64 %5, metadata !3873, metadata !DIExpression()), !dbg !3880
  br i1 %16, label %17, label %4

17:                                               ; preds = %13, %6
  ret i64 %7, !dbg !3896
}

; Function Attrs: nofree
declare !dbg !3897 noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3900 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3939, metadata !DIExpression()), !dbg !3945
  call void @llvm.dbg.value(metadata ptr %1, metadata !3940, metadata !DIExpression()), !dbg !3945
  call void @llvm.dbg.value(metadata ptr %2, metadata !3941, metadata !DIExpression()), !dbg !3945
  call void @llvm.dbg.value(metadata ptr %3, metadata !3942, metadata !DIExpression()), !dbg !3945
  call void @llvm.dbg.value(metadata ptr %4, metadata !3943, metadata !DIExpression()), !dbg !3945
  call void @llvm.dbg.value(metadata i64 %5, metadata !3944, metadata !DIExpression()), !dbg !3945
  %7 = icmp eq ptr %1, null, !dbg !3946
  br i1 %7, label %10, label %8, !dbg !3948

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.105, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #40, !dbg !3949
  br label %12, !dbg !3949

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.106, ptr noundef %2, ptr noundef %3) #40, !dbg !3950
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.107, ptr noundef nonnull @.str.3.108, i32 noundef 5) #40, !dbg !3951
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #40, !dbg !3951
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.109, ptr noundef %0), !dbg !3952
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.107, ptr noundef nonnull @.str.5.110, i32 noundef 5) #40, !dbg !3953
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.111) #40, !dbg !3953
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.109, ptr noundef %0), !dbg !3954
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
  ], !dbg !3955

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.107, ptr noundef nonnull @.str.7.112, i32 noundef 5) #40, !dbg !3956
  %21 = load ptr, ptr %4, align 8, !dbg !3956, !tbaa !989
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #40, !dbg !3956
  br label %147, !dbg !3958

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.107, ptr noundef nonnull @.str.8.113, i32 noundef 5) #40, !dbg !3959
  %25 = load ptr, ptr %4, align 8, !dbg !3959, !tbaa !989
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3959
  %27 = load ptr, ptr %26, align 8, !dbg !3959, !tbaa !989
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #40, !dbg !3959
  br label %147, !dbg !3960

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.107, ptr noundef nonnull @.str.9.114, i32 noundef 5) #40, !dbg !3961
  %31 = load ptr, ptr %4, align 8, !dbg !3961, !tbaa !989
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3961
  %33 = load ptr, ptr %32, align 8, !dbg !3961, !tbaa !989
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3961
  %35 = load ptr, ptr %34, align 8, !dbg !3961, !tbaa !989
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #40, !dbg !3961
  br label %147, !dbg !3962

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.107, ptr noundef nonnull @.str.10.115, i32 noundef 5) #40, !dbg !3963
  %39 = load ptr, ptr %4, align 8, !dbg !3963, !tbaa !989
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3963
  %41 = load ptr, ptr %40, align 8, !dbg !3963, !tbaa !989
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3963
  %43 = load ptr, ptr %42, align 8, !dbg !3963, !tbaa !989
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3963
  %45 = load ptr, ptr %44, align 8, !dbg !3963, !tbaa !989
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #40, !dbg !3963
  br label %147, !dbg !3964

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.107, ptr noundef nonnull @.str.11.116, i32 noundef 5) #40, !dbg !3965
  %49 = load ptr, ptr %4, align 8, !dbg !3965, !tbaa !989
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3965
  %51 = load ptr, ptr %50, align 8, !dbg !3965, !tbaa !989
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3965
  %53 = load ptr, ptr %52, align 8, !dbg !3965, !tbaa !989
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3965
  %55 = load ptr, ptr %54, align 8, !dbg !3965, !tbaa !989
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3965
  %57 = load ptr, ptr %56, align 8, !dbg !3965, !tbaa !989
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #40, !dbg !3965
  br label %147, !dbg !3966

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.107, ptr noundef nonnull @.str.12.117, i32 noundef 5) #40, !dbg !3967
  %61 = load ptr, ptr %4, align 8, !dbg !3967, !tbaa !989
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3967
  %63 = load ptr, ptr %62, align 8, !dbg !3967, !tbaa !989
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3967
  %65 = load ptr, ptr %64, align 8, !dbg !3967, !tbaa !989
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3967
  %67 = load ptr, ptr %66, align 8, !dbg !3967, !tbaa !989
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3967
  %69 = load ptr, ptr %68, align 8, !dbg !3967, !tbaa !989
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3967
  %71 = load ptr, ptr %70, align 8, !dbg !3967, !tbaa !989
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #40, !dbg !3967
  br label %147, !dbg !3968

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.107, ptr noundef nonnull @.str.13.118, i32 noundef 5) #40, !dbg !3969
  %75 = load ptr, ptr %4, align 8, !dbg !3969, !tbaa !989
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3969
  %77 = load ptr, ptr %76, align 8, !dbg !3969, !tbaa !989
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3969
  %79 = load ptr, ptr %78, align 8, !dbg !3969, !tbaa !989
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3969
  %81 = load ptr, ptr %80, align 8, !dbg !3969, !tbaa !989
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3969
  %83 = load ptr, ptr %82, align 8, !dbg !3969, !tbaa !989
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3969
  %85 = load ptr, ptr %84, align 8, !dbg !3969, !tbaa !989
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3969
  %87 = load ptr, ptr %86, align 8, !dbg !3969, !tbaa !989
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #40, !dbg !3969
  br label %147, !dbg !3970

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.107, ptr noundef nonnull @.str.14.119, i32 noundef 5) #40, !dbg !3971
  %91 = load ptr, ptr %4, align 8, !dbg !3971, !tbaa !989
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3971
  %93 = load ptr, ptr %92, align 8, !dbg !3971, !tbaa !989
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3971
  %95 = load ptr, ptr %94, align 8, !dbg !3971, !tbaa !989
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3971
  %97 = load ptr, ptr %96, align 8, !dbg !3971, !tbaa !989
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3971
  %99 = load ptr, ptr %98, align 8, !dbg !3971, !tbaa !989
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3971
  %101 = load ptr, ptr %100, align 8, !dbg !3971, !tbaa !989
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3971
  %103 = load ptr, ptr %102, align 8, !dbg !3971, !tbaa !989
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3971
  %105 = load ptr, ptr %104, align 8, !dbg !3971, !tbaa !989
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #40, !dbg !3971
  br label %147, !dbg !3972

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.107, ptr noundef nonnull @.str.15.120, i32 noundef 5) #40, !dbg !3973
  %109 = load ptr, ptr %4, align 8, !dbg !3973, !tbaa !989
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3973
  %111 = load ptr, ptr %110, align 8, !dbg !3973, !tbaa !989
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3973
  %113 = load ptr, ptr %112, align 8, !dbg !3973, !tbaa !989
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3973
  %115 = load ptr, ptr %114, align 8, !dbg !3973, !tbaa !989
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3973
  %117 = load ptr, ptr %116, align 8, !dbg !3973, !tbaa !989
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3973
  %119 = load ptr, ptr %118, align 8, !dbg !3973, !tbaa !989
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3973
  %121 = load ptr, ptr %120, align 8, !dbg !3973, !tbaa !989
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3973
  %123 = load ptr, ptr %122, align 8, !dbg !3973, !tbaa !989
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3973
  %125 = load ptr, ptr %124, align 8, !dbg !3973, !tbaa !989
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #40, !dbg !3973
  br label %147, !dbg !3974

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.107, ptr noundef nonnull @.str.16.121, i32 noundef 5) #40, !dbg !3975
  %129 = load ptr, ptr %4, align 8, !dbg !3975, !tbaa !989
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3975
  %131 = load ptr, ptr %130, align 8, !dbg !3975, !tbaa !989
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3975
  %133 = load ptr, ptr %132, align 8, !dbg !3975, !tbaa !989
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3975
  %135 = load ptr, ptr %134, align 8, !dbg !3975, !tbaa !989
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3975
  %137 = load ptr, ptr %136, align 8, !dbg !3975, !tbaa !989
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3975
  %139 = load ptr, ptr %138, align 8, !dbg !3975, !tbaa !989
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3975
  %141 = load ptr, ptr %140, align 8, !dbg !3975, !tbaa !989
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3975
  %143 = load ptr, ptr %142, align 8, !dbg !3975, !tbaa !989
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3975
  %145 = load ptr, ptr %144, align 8, !dbg !3975, !tbaa !989
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #40, !dbg !3975
  br label %147, !dbg !3976

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3977
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3978 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3982, metadata !DIExpression()), !dbg !3988
  call void @llvm.dbg.value(metadata ptr %1, metadata !3983, metadata !DIExpression()), !dbg !3988
  call void @llvm.dbg.value(metadata ptr %2, metadata !3984, metadata !DIExpression()), !dbg !3988
  call void @llvm.dbg.value(metadata ptr %3, metadata !3985, metadata !DIExpression()), !dbg !3988
  call void @llvm.dbg.value(metadata ptr %4, metadata !3986, metadata !DIExpression()), !dbg !3988
  call void @llvm.dbg.value(metadata i64 0, metadata !3987, metadata !DIExpression()), !dbg !3988
  br label %6, !dbg !3989

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3991
  call void @llvm.dbg.value(metadata i64 %7, metadata !3987, metadata !DIExpression()), !dbg !3988
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3992
  %9 = load ptr, ptr %8, align 8, !dbg !3992, !tbaa !989
  %10 = icmp eq ptr %9, null, !dbg !3994
  %11 = add i64 %7, 1, !dbg !3995
  call void @llvm.dbg.value(metadata i64 %11, metadata !3987, metadata !DIExpression()), !dbg !3988
  br i1 %10, label %12, label %6, !dbg !3994, !llvm.loop !3996

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !3998
  ret void, !dbg !3999
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !4000 {
  %6 = alloca [10 x ptr], align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4015, metadata !DIExpression()), !dbg !4023
  call void @llvm.dbg.value(metadata ptr %1, metadata !4016, metadata !DIExpression()), !dbg !4023
  call void @llvm.dbg.value(metadata ptr %2, metadata !4017, metadata !DIExpression()), !dbg !4023
  call void @llvm.dbg.value(metadata ptr %3, metadata !4018, metadata !DIExpression()), !dbg !4023
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4019, metadata !DIExpression()), !dbg !4024
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #40, !dbg !4025
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4021, metadata !DIExpression()), !dbg !4026
  call void @llvm.dbg.value(metadata i64 0, metadata !4020, metadata !DIExpression()), !dbg !4023
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !4020, metadata !DIExpression()), !dbg !4023
  %10 = icmp sgt i32 %9, -1, !dbg !4027
  br i1 %10, label %18, label %11, !dbg !4027

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !4027
  store i32 %12, ptr %7, align 8, !dbg !4027
  %13 = icmp ult i32 %9, -7, !dbg !4027
  br i1 %13, label %14, label %18, !dbg !4027

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !4027
  %16 = sext i32 %9 to i64, !dbg !4027
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !4027
  br label %22, !dbg !4027

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !4027
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !4027
  store ptr %21, ptr %4, align 8, !dbg !4027
  br label %22, !dbg !4027

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !4027
  %25 = load ptr, ptr %24, align 8, !dbg !4027
  store ptr %25, ptr %6, align 8, !dbg !4030, !tbaa !989
  %26 = icmp eq ptr %25, null, !dbg !4031
  br i1 %26, label %197, label %27, !dbg !4032

27:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 1, metadata !4020, metadata !DIExpression()), !dbg !4023
  call void @llvm.dbg.value(metadata i64 1, metadata !4020, metadata !DIExpression()), !dbg !4023
  %28 = icmp sgt i32 %23, -1, !dbg !4027
  br i1 %28, label %36, label %29, !dbg !4027

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !4027
  store i32 %30, ptr %7, align 8, !dbg !4027
  %31 = icmp ult i32 %23, -7, !dbg !4027
  br i1 %31, label %32, label %36, !dbg !4027

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !4027
  %34 = sext i32 %23 to i64, !dbg !4027
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !4027
  br label %40, !dbg !4027

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !4027
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !4027
  store ptr %39, ptr %4, align 8, !dbg !4027
  br label %40, !dbg !4027

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !4027
  %43 = load ptr, ptr %42, align 8, !dbg !4027
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !4033
  store ptr %43, ptr %44, align 8, !dbg !4030, !tbaa !989
  %45 = icmp eq ptr %43, null, !dbg !4031
  br i1 %45, label %197, label %46, !dbg !4032

46:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !4020, metadata !DIExpression()), !dbg !4023
  call void @llvm.dbg.value(metadata i64 2, metadata !4020, metadata !DIExpression()), !dbg !4023
  %47 = icmp sgt i32 %41, -1, !dbg !4027
  br i1 %47, label %55, label %48, !dbg !4027

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !4027
  store i32 %49, ptr %7, align 8, !dbg !4027
  %50 = icmp ult i32 %41, -7, !dbg !4027
  br i1 %50, label %51, label %55, !dbg !4027

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !4027
  %53 = sext i32 %41 to i64, !dbg !4027
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !4027
  br label %59, !dbg !4027

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !4027
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !4027
  store ptr %58, ptr %4, align 8, !dbg !4027
  br label %59, !dbg !4027

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !4027
  %62 = load ptr, ptr %61, align 8, !dbg !4027
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !4033
  store ptr %62, ptr %63, align 8, !dbg !4030, !tbaa !989
  %64 = icmp eq ptr %62, null, !dbg !4031
  br i1 %64, label %197, label %65, !dbg !4032

65:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i64 3, metadata !4020, metadata !DIExpression()), !dbg !4023
  call void @llvm.dbg.value(metadata i64 3, metadata !4020, metadata !DIExpression()), !dbg !4023
  %66 = icmp sgt i32 %60, -1, !dbg !4027
  br i1 %66, label %74, label %67, !dbg !4027

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !4027
  store i32 %68, ptr %7, align 8, !dbg !4027
  %69 = icmp ult i32 %60, -7, !dbg !4027
  br i1 %69, label %70, label %74, !dbg !4027

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !4027
  %72 = sext i32 %60 to i64, !dbg !4027
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !4027
  br label %78, !dbg !4027

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !4027
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !4027
  store ptr %77, ptr %4, align 8, !dbg !4027
  br label %78, !dbg !4027

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !4027
  %81 = load ptr, ptr %80, align 8, !dbg !4027
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !4033
  store ptr %81, ptr %82, align 8, !dbg !4030, !tbaa !989
  %83 = icmp eq ptr %81, null, !dbg !4031
  br i1 %83, label %197, label %84, !dbg !4032

84:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i64 4, metadata !4020, metadata !DIExpression()), !dbg !4023
  call void @llvm.dbg.value(metadata i64 4, metadata !4020, metadata !DIExpression()), !dbg !4023
  %85 = icmp sgt i32 %79, -1, !dbg !4027
  br i1 %85, label %93, label %86, !dbg !4027

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !4027
  store i32 %87, ptr %7, align 8, !dbg !4027
  %88 = icmp ult i32 %79, -7, !dbg !4027
  br i1 %88, label %89, label %93, !dbg !4027

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !4027
  %91 = sext i32 %79 to i64, !dbg !4027
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !4027
  br label %97, !dbg !4027

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !4027
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !4027
  store ptr %96, ptr %4, align 8, !dbg !4027
  br label %97, !dbg !4027

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !4027
  %100 = load ptr, ptr %99, align 8, !dbg !4027
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !4033
  store ptr %100, ptr %101, align 8, !dbg !4030, !tbaa !989
  %102 = icmp eq ptr %100, null, !dbg !4031
  br i1 %102, label %197, label %103, !dbg !4032

103:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i64 5, metadata !4020, metadata !DIExpression()), !dbg !4023
  call void @llvm.dbg.value(metadata i64 5, metadata !4020, metadata !DIExpression()), !dbg !4023
  %104 = icmp sgt i32 %98, -1, !dbg !4027
  br i1 %104, label %112, label %105, !dbg !4027

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !4027
  store i32 %106, ptr %7, align 8, !dbg !4027
  %107 = icmp ult i32 %98, -7, !dbg !4027
  br i1 %107, label %108, label %112, !dbg !4027

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !4027
  %110 = sext i32 %98 to i64, !dbg !4027
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !4027
  br label %116, !dbg !4027

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !4027
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !4027
  store ptr %115, ptr %4, align 8, !dbg !4027
  br label %116, !dbg !4027

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !4027
  %119 = load ptr, ptr %118, align 8, !dbg !4027
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !4033
  store ptr %119, ptr %120, align 8, !dbg !4030, !tbaa !989
  %121 = icmp eq ptr %119, null, !dbg !4031
  br i1 %121, label %197, label %122, !dbg !4032

122:                                              ; preds = %116
  call void @llvm.dbg.value(metadata i64 6, metadata !4020, metadata !DIExpression()), !dbg !4023
  call void @llvm.dbg.value(metadata i64 6, metadata !4020, metadata !DIExpression()), !dbg !4023
  %123 = icmp sgt i32 %117, -1, !dbg !4027
  br i1 %123, label %131, label %124, !dbg !4027

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !4027
  store i32 %125, ptr %7, align 8, !dbg !4027
  %126 = icmp ult i32 %117, -7, !dbg !4027
  br i1 %126, label %127, label %131, !dbg !4027

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !4027
  %129 = sext i32 %117 to i64, !dbg !4027
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !4027
  br label %135, !dbg !4027

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !4027
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !4027
  store ptr %134, ptr %4, align 8, !dbg !4027
  br label %135, !dbg !4027

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !4027
  %138 = load ptr, ptr %137, align 8, !dbg !4027
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !4033
  store ptr %138, ptr %139, align 8, !dbg !4030, !tbaa !989
  %140 = icmp eq ptr %138, null, !dbg !4031
  br i1 %140, label %197, label %141, !dbg !4032

141:                                              ; preds = %135
  call void @llvm.dbg.value(metadata i64 7, metadata !4020, metadata !DIExpression()), !dbg !4023
  call void @llvm.dbg.value(metadata i64 7, metadata !4020, metadata !DIExpression()), !dbg !4023
  %142 = icmp sgt i32 %136, -1, !dbg !4027
  br i1 %142, label %150, label %143, !dbg !4027

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !4027
  store i32 %144, ptr %7, align 8, !dbg !4027
  %145 = icmp ult i32 %136, -7, !dbg !4027
  br i1 %145, label %146, label %150, !dbg !4027

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !4027
  %148 = sext i32 %136 to i64, !dbg !4027
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !4027
  br label %154, !dbg !4027

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !4027
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !4027
  store ptr %153, ptr %4, align 8, !dbg !4027
  br label %154, !dbg !4027

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !4027
  %157 = load ptr, ptr %156, align 8, !dbg !4027
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !4033
  store ptr %157, ptr %158, align 8, !dbg !4030, !tbaa !989
  %159 = icmp eq ptr %157, null, !dbg !4031
  br i1 %159, label %197, label %160, !dbg !4032

160:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i64 8, metadata !4020, metadata !DIExpression()), !dbg !4023
  call void @llvm.dbg.value(metadata i64 8, metadata !4020, metadata !DIExpression()), !dbg !4023
  %161 = icmp sgt i32 %155, -1, !dbg !4027
  br i1 %161, label %169, label %162, !dbg !4027

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !4027
  store i32 %163, ptr %7, align 8, !dbg !4027
  %164 = icmp ult i32 %155, -7, !dbg !4027
  br i1 %164, label %165, label %169, !dbg !4027

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !4027
  %167 = sext i32 %155 to i64, !dbg !4027
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !4027
  br label %173, !dbg !4027

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !4027
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !4027
  store ptr %172, ptr %4, align 8, !dbg !4027
  br label %173, !dbg !4027

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !4027
  %176 = load ptr, ptr %175, align 8, !dbg !4027
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !4033
  store ptr %176, ptr %177, align 8, !dbg !4030, !tbaa !989
  %178 = icmp eq ptr %176, null, !dbg !4031
  br i1 %178, label %197, label %179, !dbg !4032

179:                                              ; preds = %173
  call void @llvm.dbg.value(metadata i64 9, metadata !4020, metadata !DIExpression()), !dbg !4023
  call void @llvm.dbg.value(metadata i64 9, metadata !4020, metadata !DIExpression()), !dbg !4023
  %180 = icmp sgt i32 %174, -1, !dbg !4027
  br i1 %180, label %188, label %181, !dbg !4027

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !4027
  store i32 %182, ptr %7, align 8, !dbg !4027
  %183 = icmp ult i32 %174, -7, !dbg !4027
  br i1 %183, label %184, label %188, !dbg !4027

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !4027
  %186 = sext i32 %174 to i64, !dbg !4027
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !4027
  br label %191, !dbg !4027

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !4027
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !4027
  store ptr %190, ptr %4, align 8, !dbg !4027
  br label %191, !dbg !4027

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !4027
  %193 = load ptr, ptr %192, align 8, !dbg !4027
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !4033
  store ptr %193, ptr %194, align 8, !dbg !4030, !tbaa !989
  %195 = icmp eq ptr %193, null, !dbg !4031
  %196 = select i1 %195, i64 9, i64 10, !dbg !4032
  br label %197, !dbg !4032

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !4034
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !4035
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #40, !dbg !4036
  ret void, !dbg !4036
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !4037 {
  %5 = alloca %struct.__va_list, align 8
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4041, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata ptr %1, metadata !4042, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata ptr %2, metadata !4043, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata ptr %3, metadata !4044, metadata !DIExpression()), !dbg !4046
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #40, !dbg !4047
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4045, metadata !DIExpression()), !dbg !4048
  call void @llvm.va_start(ptr nonnull %5), !dbg !4049
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #40, !dbg !4050
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !4050, !tbaa.struct !2055
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !4050
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #40, !dbg !4050
  call void @llvm.va_end(ptr nonnull %5), !dbg !4051
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #40, !dbg !4052
  ret void, !dbg !4052
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !4053 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !4054, !tbaa !989
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.109, ptr noundef %1), !dbg !4054
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.107, ptr noundef nonnull @.str.17.126, i32 noundef 5) #40, !dbg !4055
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.127) #40, !dbg !4055
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.107, ptr noundef nonnull @.str.19.128, i32 noundef 5) #40, !dbg !4056
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.129, ptr noundef nonnull @.str.21.130) #40, !dbg !4056
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.107, ptr noundef nonnull @.str.22.131, i32 noundef 5) #40, !dbg !4057
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.132) #40, !dbg !4057
  ret void, !dbg !4058
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xalignalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !4059 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4063, metadata !DIExpression()), !dbg !4066
  call void @llvm.dbg.value(metadata i64 %1, metadata !4064, metadata !DIExpression()), !dbg !4066
  call void @llvm.dbg.value(metadata i64 %0, metadata !4067, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata i64 %1, metadata !4070, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata i64 %0, metadata !4067, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata i64 %1, metadata !4070, metadata !DIExpression()), !dbg !4071
  %3 = tail call noalias ptr @aligned_alloc(i64 noundef %0, i64 noundef %1) #45, !dbg !4073
  call void @llvm.assume(i1 true) [ "align"(ptr %3, i64 %0) ], !dbg !4073
  call void @llvm.dbg.value(metadata ptr %3, metadata !4065, metadata !DIExpression()), !dbg !4066
  %4 = icmp eq ptr %3, null, !dbg !4074
  br i1 %4, label %5, label %6, !dbg !4076

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4077
  unreachable, !dbg !4077

6:                                                ; preds = %2
  ret ptr %3, !dbg !4078
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized,aligned") allocsize(1) memory(inaccessiblemem: readwrite)
declare !dbg !4079 noalias noundef ptr @aligned_alloc(i64 allocalign noundef, i64 noundef) local_unnamed_addr #30

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #27

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !4082 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4087, metadata !DIExpression()), !dbg !4090
  call void @llvm.dbg.value(metadata i64 %1, metadata !4088, metadata !DIExpression()), !dbg !4090
  call void @llvm.dbg.value(metadata i64 %2, metadata !4089, metadata !DIExpression()), !dbg !4090
  call void @llvm.dbg.value(metadata ptr %0, metadata !4091, metadata !DIExpression()), !dbg !4096
  call void @llvm.dbg.value(metadata i64 %1, metadata !4094, metadata !DIExpression()), !dbg !4096
  call void @llvm.dbg.value(metadata i64 %2, metadata !4095, metadata !DIExpression()), !dbg !4096
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !4098
  call void @llvm.dbg.value(metadata ptr %4, metadata !4099, metadata !DIExpression()), !dbg !4104
  %5 = icmp eq ptr %4, null, !dbg !4106
  br i1 %5, label %6, label %7, !dbg !4108

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !4109
  unreachable, !dbg !4109

7:                                                ; preds = %3
  ret ptr %4, !dbg !4110
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #32 !dbg !4092 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4091, metadata !DIExpression()), !dbg !4111
  call void @llvm.dbg.value(metadata i64 %1, metadata !4094, metadata !DIExpression()), !dbg !4111
  call void @llvm.dbg.value(metadata i64 %2, metadata !4095, metadata !DIExpression()), !dbg !4111
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !4112
  call void @llvm.dbg.value(metadata ptr %4, metadata !4099, metadata !DIExpression()), !dbg !4113
  %5 = icmp eq ptr %4, null, !dbg !4115
  br i1 %5, label %6, label %7, !dbg !4116

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !4117
  unreachable, !dbg !4117

7:                                                ; preds = %3
  ret ptr %4, !dbg !4118
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #33 !dbg !4119 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4123, metadata !DIExpression()), !dbg !4124
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #47, !dbg !4125
  call void @llvm.dbg.value(metadata ptr %2, metadata !4099, metadata !DIExpression()), !dbg !4126
  %3 = icmp eq ptr %2, null, !dbg !4128
  br i1 %3, label %4, label %5, !dbg !4129

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4130
  unreachable, !dbg !4130

5:                                                ; preds = %1
  ret ptr %2, !dbg !4131
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !4132 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #34

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #33 !dbg !4133 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4137, metadata !DIExpression()), !dbg !4138
  call void @llvm.dbg.value(metadata i64 %0, metadata !4139, metadata !DIExpression()), !dbg !4143
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #47, !dbg !4145
  call void @llvm.dbg.value(metadata ptr %2, metadata !4099, metadata !DIExpression()), !dbg !4146
  %3 = icmp eq ptr %2, null, !dbg !4148
  br i1 %3, label %4, label %5, !dbg !4149

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4150
  unreachable, !dbg !4150

5:                                                ; preds = %1
  ret ptr %2, !dbg !4151
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #33 !dbg !4152 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4156, metadata !DIExpression()), !dbg !4157
  call void @llvm.dbg.value(metadata i64 %0, metadata !4123, metadata !DIExpression()), !dbg !4158
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #47, !dbg !4160
  call void @llvm.dbg.value(metadata ptr %2, metadata !4099, metadata !DIExpression()), !dbg !4161
  %3 = icmp eq ptr %2, null, !dbg !4163
  br i1 %3, label %4, label %5, !dbg !4164

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4165
  unreachable, !dbg !4165

5:                                                ; preds = %1
  ret ptr %2, !dbg !4166
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !4167 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4171, metadata !DIExpression()), !dbg !4173
  call void @llvm.dbg.value(metadata i64 %1, metadata !4172, metadata !DIExpression()), !dbg !4173
  call void @llvm.dbg.value(metadata ptr %0, metadata !4174, metadata !DIExpression()), !dbg !4179
  call void @llvm.dbg.value(metadata i64 %1, metadata !4178, metadata !DIExpression()), !dbg !4179
  %3 = icmp eq i64 %1, 0, !dbg !4181
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4181
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #45, !dbg !4182
  call void @llvm.dbg.value(metadata ptr %5, metadata !4099, metadata !DIExpression()), !dbg !4183
  %6 = icmp eq ptr %5, null, !dbg !4185
  br i1 %6, label %7, label %8, !dbg !4186

7:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4187
  unreachable, !dbg !4187

8:                                                ; preds = %2
  ret ptr %5, !dbg !4188
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4189 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #35

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !4190 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4194, metadata !DIExpression()), !dbg !4196
  call void @llvm.dbg.value(metadata i64 %1, metadata !4195, metadata !DIExpression()), !dbg !4196
  call void @llvm.dbg.value(metadata ptr %0, metadata !4197, metadata !DIExpression()), !dbg !4201
  call void @llvm.dbg.value(metadata i64 %1, metadata !4200, metadata !DIExpression()), !dbg !4201
  call void @llvm.dbg.value(metadata ptr %0, metadata !4174, metadata !DIExpression()), !dbg !4203
  call void @llvm.dbg.value(metadata i64 %1, metadata !4178, metadata !DIExpression()), !dbg !4203
  %3 = icmp eq i64 %1, 0, !dbg !4205
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4205
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #45, !dbg !4206
  call void @llvm.dbg.value(metadata ptr %5, metadata !4099, metadata !DIExpression()), !dbg !4207
  %6 = icmp eq ptr %5, null, !dbg !4209
  br i1 %6, label %7, label %8, !dbg !4210

7:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4211
  unreachable, !dbg !4211

8:                                                ; preds = %2
  ret ptr %5, !dbg !4212
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #32 !dbg !4213 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4217, metadata !DIExpression()), !dbg !4220
  call void @llvm.dbg.value(metadata i64 %1, metadata !4218, metadata !DIExpression()), !dbg !4220
  call void @llvm.dbg.value(metadata i64 %2, metadata !4219, metadata !DIExpression()), !dbg !4220
  call void @llvm.dbg.value(metadata ptr %0, metadata !4221, metadata !DIExpression()), !dbg !4226
  call void @llvm.dbg.value(metadata i64 %1, metadata !4224, metadata !DIExpression()), !dbg !4226
  call void @llvm.dbg.value(metadata i64 %2, metadata !4225, metadata !DIExpression()), !dbg !4226
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !4228
  call void @llvm.dbg.value(metadata ptr %4, metadata !4099, metadata !DIExpression()), !dbg !4229
  %5 = icmp eq ptr %4, null, !dbg !4231
  br i1 %5, label %6, label %7, !dbg !4232

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !4233
  unreachable, !dbg !4233

7:                                                ; preds = %3
  ret ptr %4, !dbg !4234
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4235 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4237, metadata !DIExpression()), !dbg !4239
  call void @llvm.dbg.value(metadata i64 %1, metadata !4238, metadata !DIExpression()), !dbg !4239
  call void @llvm.dbg.value(metadata ptr null, metadata !4091, metadata !DIExpression()), !dbg !4240
  call void @llvm.dbg.value(metadata i64 %0, metadata !4094, metadata !DIExpression()), !dbg !4240
  call void @llvm.dbg.value(metadata i64 %1, metadata !4095, metadata !DIExpression()), !dbg !4240
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #40, !dbg !4242
  call void @llvm.dbg.value(metadata ptr %3, metadata !4099, metadata !DIExpression()), !dbg !4243
  %4 = icmp eq ptr %3, null, !dbg !4245
  br i1 %4, label %5, label %6, !dbg !4246

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4247
  unreachable, !dbg !4247

6:                                                ; preds = %2
  ret ptr %3, !dbg !4248
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4249 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4251, metadata !DIExpression()), !dbg !4253
  call void @llvm.dbg.value(metadata i64 %1, metadata !4252, metadata !DIExpression()), !dbg !4253
  call void @llvm.dbg.value(metadata ptr null, metadata !4217, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i64 %0, metadata !4218, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i64 %1, metadata !4219, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata ptr null, metadata !4221, metadata !DIExpression()), !dbg !4256
  call void @llvm.dbg.value(metadata i64 %0, metadata !4224, metadata !DIExpression()), !dbg !4256
  call void @llvm.dbg.value(metadata i64 %1, metadata !4225, metadata !DIExpression()), !dbg !4256
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #40, !dbg !4258
  call void @llvm.dbg.value(metadata ptr %3, metadata !4099, metadata !DIExpression()), !dbg !4259
  %4 = icmp eq ptr %3, null, !dbg !4261
  br i1 %4, label %5, label %6, !dbg !4262

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4263
  unreachable, !dbg !4263

6:                                                ; preds = %2
  ret ptr %3, !dbg !4264
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4265 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4269, metadata !DIExpression()), !dbg !4271
  call void @llvm.dbg.value(metadata ptr %1, metadata !4270, metadata !DIExpression()), !dbg !4271
  call void @llvm.dbg.value(metadata ptr %0, metadata !929, metadata !DIExpression()), !dbg !4272
  call void @llvm.dbg.value(metadata ptr %1, metadata !930, metadata !DIExpression()), !dbg !4272
  call void @llvm.dbg.value(metadata i64 1, metadata !931, metadata !DIExpression()), !dbg !4272
  %3 = load i64, ptr %1, align 8, !dbg !4274, !tbaa !3323
  call void @llvm.dbg.value(metadata i64 %3, metadata !932, metadata !DIExpression()), !dbg !4272
  %4 = icmp eq ptr %0, null, !dbg !4275
  br i1 %4, label %5, label %8, !dbg !4277

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4278
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4281
  br label %15, !dbg !4281

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4282
  %10 = add nuw i64 %9, 1, !dbg !4282
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4282
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4282
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4282
  call void @llvm.dbg.value(metadata i64 %13, metadata !932, metadata !DIExpression()), !dbg !4272
  br i1 %12, label %14, label %15, !dbg !4285

14:                                               ; preds = %8
  tail call void @xalloc_die() #42, !dbg !4286
  unreachable, !dbg !4286

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4272
  call void @llvm.dbg.value(metadata i64 %16, metadata !932, metadata !DIExpression()), !dbg !4272
  call void @llvm.dbg.value(metadata ptr %0, metadata !4091, metadata !DIExpression()), !dbg !4287
  call void @llvm.dbg.value(metadata i64 %16, metadata !4094, metadata !DIExpression()), !dbg !4287
  call void @llvm.dbg.value(metadata i64 1, metadata !4095, metadata !DIExpression()), !dbg !4287
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #40, !dbg !4289
  call void @llvm.dbg.value(metadata ptr %17, metadata !4099, metadata !DIExpression()), !dbg !4290
  %18 = icmp eq ptr %17, null, !dbg !4292
  br i1 %18, label %19, label %20, !dbg !4293

19:                                               ; preds = %15
  tail call void @xalloc_die() #42, !dbg !4294
  unreachable, !dbg !4294

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !929, metadata !DIExpression()), !dbg !4272
  store i64 %16, ptr %1, align 8, !dbg !4295, !tbaa !3323
  ret ptr %17, !dbg !4296
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !924 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !929, metadata !DIExpression()), !dbg !4297
  call void @llvm.dbg.value(metadata ptr %1, metadata !930, metadata !DIExpression()), !dbg !4297
  call void @llvm.dbg.value(metadata i64 %2, metadata !931, metadata !DIExpression()), !dbg !4297
  %4 = load i64, ptr %1, align 8, !dbg !4298, !tbaa !3323
  call void @llvm.dbg.value(metadata i64 %4, metadata !932, metadata !DIExpression()), !dbg !4297
  %5 = icmp eq ptr %0, null, !dbg !4299
  br i1 %5, label %6, label %13, !dbg !4300

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4301
  br i1 %7, label %8, label %20, !dbg !4302

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4303
  call void @llvm.dbg.value(metadata i64 %9, metadata !932, metadata !DIExpression()), !dbg !4297
  %10 = icmp ugt i64 %2, 128, !dbg !4305
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4306
  call void @llvm.dbg.value(metadata i64 %12, metadata !932, metadata !DIExpression()), !dbg !4297
  br label %20, !dbg !4307

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4308
  %15 = add nuw i64 %14, 1, !dbg !4308
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4308
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4308
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4308
  call void @llvm.dbg.value(metadata i64 %18, metadata !932, metadata !DIExpression()), !dbg !4297
  br i1 %17, label %19, label %20, !dbg !4309

19:                                               ; preds = %13
  tail call void @xalloc_die() #42, !dbg !4310
  unreachable, !dbg !4310

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4297
  call void @llvm.dbg.value(metadata i64 %21, metadata !932, metadata !DIExpression()), !dbg !4297
  call void @llvm.dbg.value(metadata ptr %0, metadata !4091, metadata !DIExpression()), !dbg !4311
  call void @llvm.dbg.value(metadata i64 %21, metadata !4094, metadata !DIExpression()), !dbg !4311
  call void @llvm.dbg.value(metadata i64 %2, metadata !4095, metadata !DIExpression()), !dbg !4311
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #40, !dbg !4313
  call void @llvm.dbg.value(metadata ptr %22, metadata !4099, metadata !DIExpression()), !dbg !4314
  %23 = icmp eq ptr %22, null, !dbg !4316
  br i1 %23, label %24, label %25, !dbg !4317

24:                                               ; preds = %20
  tail call void @xalloc_die() #42, !dbg !4318
  unreachable, !dbg !4318

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !929, metadata !DIExpression()), !dbg !4297
  store i64 %21, ptr %1, align 8, !dbg !4319, !tbaa !3323
  ret ptr %22, !dbg !4320
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !936 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !941, metadata !DIExpression()), !dbg !4321
  call void @llvm.dbg.value(metadata ptr %1, metadata !942, metadata !DIExpression()), !dbg !4321
  call void @llvm.dbg.value(metadata i64 %2, metadata !943, metadata !DIExpression()), !dbg !4321
  call void @llvm.dbg.value(metadata i64 %3, metadata !944, metadata !DIExpression()), !dbg !4321
  call void @llvm.dbg.value(metadata i64 %4, metadata !945, metadata !DIExpression()), !dbg !4321
  %6 = load i64, ptr %1, align 8, !dbg !4322, !tbaa !3323
  call void @llvm.dbg.value(metadata i64 %6, metadata !946, metadata !DIExpression()), !dbg !4321
  %7 = ashr i64 %6, 1, !dbg !4323
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4323
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4323
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4323
  call void @llvm.dbg.value(metadata i64 %10, metadata !947, metadata !DIExpression()), !dbg !4321
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4325
  call void @llvm.dbg.value(metadata i64 %11, metadata !947, metadata !DIExpression()), !dbg !4321
  %12 = icmp sgt i64 %3, -1, !dbg !4326
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !4328
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !4328
  call void @llvm.dbg.value(metadata i64 %15, metadata !947, metadata !DIExpression()), !dbg !4321
  %16 = icmp slt i64 %4, 0, !dbg !4329
  br i1 %16, label %17, label %30, !dbg !4329

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !4329
  br i1 %18, label %19, label %24, !dbg !4329

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !4329
  %21 = udiv i64 9223372036854775807, %20, !dbg !4329
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !4329
  br i1 %23, label %46, label %43, !dbg !4329

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !4329
  br i1 %25, label %43, label %26, !dbg !4329

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !4329
  %28 = udiv i64 -9223372036854775808, %27, !dbg !4329
  %29 = icmp ult i64 %28, %15, !dbg !4329
  br i1 %29, label %46, label %43, !dbg !4329

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !4329
  br i1 %31, label %43, label %32, !dbg !4329

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !4329
  br i1 %33, label %34, label %40, !dbg !4329

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !4329
  br i1 %35, label %43, label %36, !dbg !4329

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !4329
  %38 = udiv i64 -9223372036854775808, %37, !dbg !4329
  %39 = icmp ult i64 %38, %4, !dbg !4329
  br i1 %39, label %46, label %43, !dbg !4329

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !4329
  br i1 %42, label %46, label %43, !dbg !4329

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !948, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4321
  %44 = mul i64 %15, %4, !dbg !4329
  call void @llvm.dbg.value(metadata i64 %44, metadata !948, metadata !DIExpression()), !dbg !4321
  %45 = icmp slt i64 %44, 128, !dbg !4329
  br i1 %45, label %46, label %52, !dbg !4329

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !949, metadata !DIExpression()), !dbg !4321
  %48 = sdiv i64 %47, %4, !dbg !4330
  call void @llvm.dbg.value(metadata i64 %48, metadata !947, metadata !DIExpression()), !dbg !4321
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !4333
  call void @llvm.dbg.value(metadata i64 %51, metadata !948, metadata !DIExpression()), !dbg !4321
  br label %52, !dbg !4334

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !4321
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !4321
  call void @llvm.dbg.value(metadata i64 %54, metadata !948, metadata !DIExpression()), !dbg !4321
  call void @llvm.dbg.value(metadata i64 %53, metadata !947, metadata !DIExpression()), !dbg !4321
  %55 = icmp eq ptr %0, null, !dbg !4335
  br i1 %55, label %56, label %57, !dbg !4337

56:                                               ; preds = %52
  store i64 0, ptr %1, align 8, !dbg !4338, !tbaa !3323
  br label %57, !dbg !4339

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !4340
  %59 = icmp slt i64 %58, %2, !dbg !4342
  br i1 %59, label %60, label %97, !dbg !4343

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4344
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !4344
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !4344
  call void @llvm.dbg.value(metadata i64 %63, metadata !947, metadata !DIExpression()), !dbg !4321
  %64 = icmp sgt i64 %63, %3
  %65 = select i1 %12, i1 %64, i1 false
  %66 = or i1 %62, %65, !dbg !4345
  br i1 %66, label %96, label %67, !dbg !4345

67:                                               ; preds = %60
  br i1 %16, label %68, label %81, !dbg !4346

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !4346
  br i1 %69, label %70, label %75, !dbg !4346

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !4346
  %72 = udiv i64 9223372036854775807, %71, !dbg !4346
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !4346
  br i1 %74, label %96, label %94, !dbg !4346

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !4346
  br i1 %76, label %94, label %77, !dbg !4346

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !4346
  %79 = udiv i64 -9223372036854775808, %78, !dbg !4346
  %80 = icmp ult i64 %79, %63, !dbg !4346
  br i1 %80, label %96, label %94, !dbg !4346

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !4346
  br i1 %82, label %94, label %83, !dbg !4346

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !4346
  br i1 %84, label %85, label %91, !dbg !4346

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !4346
  br i1 %86, label %94, label %87, !dbg !4346

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !4346
  %89 = udiv i64 -9223372036854775808, %88, !dbg !4346
  %90 = icmp ult i64 %89, %4, !dbg !4346
  br i1 %90, label %96, label %94, !dbg !4346

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4
  %93 = icmp ult i64 %92, %63, !dbg !4346
  br i1 %93, label %96, label %94, !dbg !4346

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !948, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4321
  %95 = mul i64 %63, %4, !dbg !4346
  call void @llvm.dbg.value(metadata i64 %95, metadata !948, metadata !DIExpression()), !dbg !4321
  br label %97, !dbg !4347

96:                                               ; preds = %70, %77, %87, %91, %60
  tail call void @xalloc_die() #42, !dbg !4348
  unreachable, !dbg !4348

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !4321
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !4321
  call void @llvm.dbg.value(metadata i64 %99, metadata !948, metadata !DIExpression()), !dbg !4321
  call void @llvm.dbg.value(metadata i64 %98, metadata !947, metadata !DIExpression()), !dbg !4321
  call void @llvm.dbg.value(metadata ptr %0, metadata !4171, metadata !DIExpression()), !dbg !4349
  call void @llvm.dbg.value(metadata i64 %99, metadata !4172, metadata !DIExpression()), !dbg !4349
  call void @llvm.dbg.value(metadata ptr %0, metadata !4174, metadata !DIExpression()), !dbg !4351
  call void @llvm.dbg.value(metadata i64 %99, metadata !4178, metadata !DIExpression()), !dbg !4351
  %100 = icmp eq i64 %99, 0, !dbg !4353
  %101 = select i1 %100, i64 1, i64 %99, !dbg !4353
  %102 = tail call ptr @realloc(ptr noundef %0, i64 noundef %101) #45, !dbg !4354
  call void @llvm.dbg.value(metadata ptr %102, metadata !4099, metadata !DIExpression()), !dbg !4355
  %103 = icmp eq ptr %102, null, !dbg !4357
  br i1 %103, label %104, label %105, !dbg !4358

104:                                              ; preds = %97
  tail call void @xalloc_die() #42, !dbg !4359
  unreachable, !dbg !4359

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata ptr %102, metadata !941, metadata !DIExpression()), !dbg !4321
  store i64 %98, ptr %1, align 8, !dbg !4360, !tbaa !3323
  ret ptr %102, !dbg !4361
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #33 !dbg !4362 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4364, metadata !DIExpression()), !dbg !4365
  call void @llvm.dbg.value(metadata i64 %0, metadata !4366, metadata !DIExpression()), !dbg !4370
  call void @llvm.dbg.value(metadata i64 1, metadata !4369, metadata !DIExpression()), !dbg !4370
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #48, !dbg !4372
  call void @llvm.dbg.value(metadata ptr %2, metadata !4099, metadata !DIExpression()), !dbg !4373
  %3 = icmp eq ptr %2, null, !dbg !4375
  br i1 %3, label %4, label %5, !dbg !4376

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4377
  unreachable, !dbg !4377

5:                                                ; preds = %1
  ret ptr %2, !dbg !4378
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4379 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #37

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4367 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4366, metadata !DIExpression()), !dbg !4380
  call void @llvm.dbg.value(metadata i64 %1, metadata !4369, metadata !DIExpression()), !dbg !4380
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #48, !dbg !4381
  call void @llvm.dbg.value(metadata ptr %3, metadata !4099, metadata !DIExpression()), !dbg !4382
  %4 = icmp eq ptr %3, null, !dbg !4384
  br i1 %4, label %5, label %6, !dbg !4385

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4386
  unreachable, !dbg !4386

6:                                                ; preds = %2
  ret ptr %3, !dbg !4387
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #33 !dbg !4388 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4390, metadata !DIExpression()), !dbg !4391
  call void @llvm.dbg.value(metadata i64 %0, metadata !4392, metadata !DIExpression()), !dbg !4396
  call void @llvm.dbg.value(metadata i64 1, metadata !4395, metadata !DIExpression()), !dbg !4396
  call void @llvm.dbg.value(metadata i64 %0, metadata !4398, metadata !DIExpression()), !dbg !4402
  call void @llvm.dbg.value(metadata i64 1, metadata !4401, metadata !DIExpression()), !dbg !4402
  call void @llvm.dbg.value(metadata i64 %0, metadata !4398, metadata !DIExpression()), !dbg !4402
  call void @llvm.dbg.value(metadata i64 1, metadata !4401, metadata !DIExpression()), !dbg !4402
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #48, !dbg !4404
  call void @llvm.dbg.value(metadata ptr %2, metadata !4099, metadata !DIExpression()), !dbg !4405
  %3 = icmp eq ptr %2, null, !dbg !4407
  br i1 %3, label %4, label %5, !dbg !4408

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4409
  unreachable, !dbg !4409

5:                                                ; preds = %1
  ret ptr %2, !dbg !4410
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4393 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4392, metadata !DIExpression()), !dbg !4411
  call void @llvm.dbg.value(metadata i64 %1, metadata !4395, metadata !DIExpression()), !dbg !4411
  call void @llvm.dbg.value(metadata i64 %0, metadata !4398, metadata !DIExpression()), !dbg !4412
  call void @llvm.dbg.value(metadata i64 %1, metadata !4401, metadata !DIExpression()), !dbg !4412
  call void @llvm.dbg.value(metadata i64 %0, metadata !4398, metadata !DIExpression()), !dbg !4412
  call void @llvm.dbg.value(metadata i64 %1, metadata !4401, metadata !DIExpression()), !dbg !4412
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #48, !dbg !4414
  call void @llvm.dbg.value(metadata ptr %3, metadata !4099, metadata !DIExpression()), !dbg !4415
  %4 = icmp eq ptr %3, null, !dbg !4417
  br i1 %4, label %5, label %6, !dbg !4418

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4419
  unreachable, !dbg !4419

6:                                                ; preds = %2
  ret ptr %3, !dbg !4420
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #29 !dbg !4421 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4425, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata i64 %1, metadata !4426, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata i64 %1, metadata !4123, metadata !DIExpression()), !dbg !4428
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #47, !dbg !4430
  call void @llvm.dbg.value(metadata ptr %3, metadata !4099, metadata !DIExpression()), !dbg !4431
  %4 = icmp eq ptr %3, null, !dbg !4433
  br i1 %4, label %5, label %6, !dbg !4434

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4435
  unreachable, !dbg !4435

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4436, metadata !DIExpression()), !dbg !4444
  call void @llvm.dbg.value(metadata ptr %0, metadata !4442, metadata !DIExpression()), !dbg !4444
  call void @llvm.dbg.value(metadata i64 %1, metadata !4443, metadata !DIExpression()), !dbg !4444
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4446
  ret ptr %3, !dbg !4447
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #29 !dbg !4448 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4452, metadata !DIExpression()), !dbg !4454
  call void @llvm.dbg.value(metadata i64 %1, metadata !4453, metadata !DIExpression()), !dbg !4454
  call void @llvm.dbg.value(metadata i64 %1, metadata !4137, metadata !DIExpression()), !dbg !4455
  call void @llvm.dbg.value(metadata i64 %1, metadata !4139, metadata !DIExpression()), !dbg !4457
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #47, !dbg !4459
  call void @llvm.dbg.value(metadata ptr %3, metadata !4099, metadata !DIExpression()), !dbg !4460
  %4 = icmp eq ptr %3, null, !dbg !4462
  br i1 %4, label %5, label %6, !dbg !4463

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4464
  unreachable, !dbg !4464

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4436, metadata !DIExpression()), !dbg !4465
  call void @llvm.dbg.value(metadata ptr %0, metadata !4442, metadata !DIExpression()), !dbg !4465
  call void @llvm.dbg.value(metadata i64 %1, metadata !4443, metadata !DIExpression()), !dbg !4465
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4467
  ret ptr %3, !dbg !4468
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4469 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4473, metadata !DIExpression()), !dbg !4476
  call void @llvm.dbg.value(metadata i64 %1, metadata !4474, metadata !DIExpression()), !dbg !4476
  %3 = add nsw i64 %1, 1, !dbg !4477
  call void @llvm.dbg.value(metadata i64 %3, metadata !4137, metadata !DIExpression()), !dbg !4478
  call void @llvm.dbg.value(metadata i64 %3, metadata !4139, metadata !DIExpression()), !dbg !4480
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #47, !dbg !4482
  call void @llvm.dbg.value(metadata ptr %4, metadata !4099, metadata !DIExpression()), !dbg !4483
  %5 = icmp eq ptr %4, null, !dbg !4485
  br i1 %5, label %6, label %7, !dbg !4486

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4487
  unreachable, !dbg !4487

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !4475, metadata !DIExpression()), !dbg !4476
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4488
  store i8 0, ptr %8, align 1, !dbg !4489, !tbaa !1072
  call void @llvm.dbg.value(metadata ptr %4, metadata !4436, metadata !DIExpression()), !dbg !4490
  call void @llvm.dbg.value(metadata ptr %0, metadata !4442, metadata !DIExpression()), !dbg !4490
  call void @llvm.dbg.value(metadata i64 %1, metadata !4443, metadata !DIExpression()), !dbg !4490
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4492
  ret ptr %4, !dbg !4493
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4494 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4496, metadata !DIExpression()), !dbg !4497
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #41, !dbg !4498
  %3 = add i64 %2, 1, !dbg !4499
  call void @llvm.dbg.value(metadata ptr %0, metadata !4425, metadata !DIExpression()), !dbg !4500
  call void @llvm.dbg.value(metadata i64 %3, metadata !4426, metadata !DIExpression()), !dbg !4500
  call void @llvm.dbg.value(metadata i64 %3, metadata !4123, metadata !DIExpression()), !dbg !4502
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #47, !dbg !4504
  call void @llvm.dbg.value(metadata ptr %4, metadata !4099, metadata !DIExpression()), !dbg !4505
  %5 = icmp eq ptr %4, null, !dbg !4507
  br i1 %5, label %6, label %7, !dbg !4508

6:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4509
  unreachable, !dbg !4509

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4436, metadata !DIExpression()), !dbg !4510
  call void @llvm.dbg.value(metadata ptr %0, metadata !4442, metadata !DIExpression()), !dbg !4510
  call void @llvm.dbg.value(metadata i64 %3, metadata !4443, metadata !DIExpression()), !dbg !4510
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #40, !dbg !4512
  ret ptr %4, !dbg !4513
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4514 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4519, !tbaa !1063
  call void @llvm.dbg.value(metadata i32 %1, metadata !4516, metadata !DIExpression()), !dbg !4520
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.145, ptr noundef nonnull @.str.2.146, i32 noundef 5) #40, !dbg !4519
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.147, ptr noundef %2) #40, !dbg !4519
  %3 = icmp eq i32 %1, 0, !dbg !4519
  tail call void @llvm.assume(i1 %3), !dbg !4519
  tail call void @abort() #42, !dbg !4521
  unreachable, !dbg !4521
}

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !4522 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4560, metadata !DIExpression()), !dbg !4565
  %2 = tail call i64 @__fpending(ptr noundef %0) #40, !dbg !4566
  call void @llvm.dbg.value(metadata i1 poison, metadata !4561, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4565
  call void @llvm.dbg.value(metadata ptr %0, metadata !4567, metadata !DIExpression()), !dbg !4570
  %3 = load i32, ptr %0, align 8, !dbg !4572, !tbaa !4573
  %4 = and i32 %3, 32, !dbg !4574
  %5 = icmp eq i32 %4, 0, !dbg !4574
  call void @llvm.dbg.value(metadata i1 %5, metadata !4563, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4565
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #40, !dbg !4575
  %7 = icmp eq i32 %6, 0, !dbg !4576
  call void @llvm.dbg.value(metadata i1 %7, metadata !4564, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4565
  br i1 %5, label %8, label %18, !dbg !4577

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4579
  call void @llvm.dbg.value(metadata i1 %9, metadata !4561, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4565
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4580
  %11 = xor i1 %7, true, !dbg !4580
  %12 = sext i1 %11 to i32, !dbg !4580
  br i1 %10, label %21, label %13, !dbg !4580

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #43, !dbg !4581
  %15 = load i32, ptr %14, align 4, !dbg !4581, !tbaa !1063
  %16 = icmp ne i32 %15, 9, !dbg !4582
  %17 = sext i1 %16 to i32, !dbg !4583
  br label %21, !dbg !4583

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4584

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #43, !dbg !4586
  store i32 0, ptr %20, align 4, !dbg !4588, !tbaa !1063
  br label %21, !dbg !4586

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4565
  ret i32 %22, !dbg !4589
}

; Function Attrs: nounwind
declare !dbg !4590 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !4593 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4631, metadata !DIExpression()), !dbg !4635
  call void @llvm.dbg.value(metadata i32 0, metadata !4632, metadata !DIExpression()), !dbg !4635
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !4636
  call void @llvm.dbg.value(metadata i32 %2, metadata !4633, metadata !DIExpression()), !dbg !4635
  %3 = icmp slt i32 %2, 0, !dbg !4637
  br i1 %3, label %4, label %6, !dbg !4639

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4640
  br label %24, !dbg !4641

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #40, !dbg !4642
  %8 = icmp eq i32 %7, 0, !dbg !4642
  br i1 %8, label %13, label %9, !dbg !4644

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !4645
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #40, !dbg !4646
  %12 = icmp eq i64 %11, -1, !dbg !4647
  br i1 %12, label %16, label %13, !dbg !4648

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #40, !dbg !4649
  %15 = icmp eq i32 %14, 0, !dbg !4649
  br i1 %15, label %16, label %18, !dbg !4650

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !4632, metadata !DIExpression()), !dbg !4635
  call void @llvm.dbg.value(metadata i32 0, metadata !4634, metadata !DIExpression()), !dbg !4635
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4651
  call void @llvm.dbg.value(metadata i32 %17, metadata !4634, metadata !DIExpression()), !dbg !4635
  br label %24, !dbg !4652

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #43, !dbg !4653
  %20 = load i32, ptr %19, align 4, !dbg !4653, !tbaa !1063
  call void @llvm.dbg.value(metadata i32 %20, metadata !4632, metadata !DIExpression()), !dbg !4635
  call void @llvm.dbg.value(metadata i32 0, metadata !4634, metadata !DIExpression()), !dbg !4635
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4651
  call void @llvm.dbg.value(metadata i32 %21, metadata !4634, metadata !DIExpression()), !dbg !4635
  %22 = icmp eq i32 %20, 0, !dbg !4654
  br i1 %22, label %24, label %23, !dbg !4652

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !4656, !tbaa !1063
  call void @llvm.dbg.value(metadata i32 -1, metadata !4634, metadata !DIExpression()), !dbg !4635
  br label %24, !dbg !4658

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4635
  ret i32 %25, !dbg !4659
}

; Function Attrs: nofree nounwind
declare !dbg !4660 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !4661 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !4662 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4700, metadata !DIExpression()), !dbg !4701
  %2 = icmp eq ptr %0, null, !dbg !4702
  br i1 %2, label %6, label %3, !dbg !4704

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #40, !dbg !4705
  %5 = icmp eq i32 %4, 0, !dbg !4705
  br i1 %5, label %6, label %8, !dbg !4706

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !4707
  br label %16, !dbg !4708

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !4709, metadata !DIExpression()), !dbg !4714
  %9 = load i32, ptr %0, align 8, !dbg !4716, !tbaa !4573
  %10 = and i32 %9, 256, !dbg !4718
  %11 = icmp eq i32 %10, 0, !dbg !4718
  br i1 %11, label %14, label %12, !dbg !4719

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #40, !dbg !4720
  br label %14, !dbg !4720

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !4721
  br label %16, !dbg !4722

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !4701
  ret i32 %17, !dbg !4723
}

; Function Attrs: nofree nounwind
declare !dbg !4724 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !4725 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4763, metadata !DIExpression()), !dbg !4769
  call void @llvm.dbg.value(metadata i64 %1, metadata !4764, metadata !DIExpression()), !dbg !4769
  call void @llvm.dbg.value(metadata i32 %2, metadata !4765, metadata !DIExpression()), !dbg !4769
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !4770
  %5 = load ptr, ptr %4, align 8, !dbg !4770, !tbaa !4771
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !4772
  %7 = load ptr, ptr %6, align 8, !dbg !4772, !tbaa !4773
  %8 = icmp eq ptr %5, %7, !dbg !4774
  br i1 %8, label %9, label %27, !dbg !4775

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !4776
  %11 = load ptr, ptr %10, align 8, !dbg !4776, !tbaa !2168
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !4777
  %13 = load ptr, ptr %12, align 8, !dbg !4777, !tbaa !4778
  %14 = icmp eq ptr %11, %13, !dbg !4779
  br i1 %14, label %15, label %27, !dbg !4780

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !4781
  %17 = load ptr, ptr %16, align 8, !dbg !4781, !tbaa !4782
  %18 = icmp eq ptr %17, null, !dbg !4783
  br i1 %18, label %19, label %27, !dbg !4784

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !4785
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #40, !dbg !4786
  call void @llvm.dbg.value(metadata i64 %21, metadata !4766, metadata !DIExpression()), !dbg !4787
  %22 = icmp eq i64 %21, -1, !dbg !4788
  br i1 %22, label %29, label %23, !dbg !4790

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !4791, !tbaa !4573
  %25 = and i32 %24, -17, !dbg !4791
  store i32 %25, ptr %0, align 8, !dbg !4791, !tbaa !4573
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !4792
  store i64 %21, ptr %26, align 8, !dbg !4793, !tbaa !4794
  br label %29, !dbg !4795

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4796
  br label %29, !dbg !4797

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !4769
  ret i32 %30, !dbg !4798
}

; Function Attrs: nofree nounwind
declare !dbg !4799 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4802 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4807, metadata !DIExpression()), !dbg !4812
  call void @llvm.dbg.value(metadata ptr %1, metadata !4808, metadata !DIExpression()), !dbg !4812
  call void @llvm.dbg.value(metadata i64 %2, metadata !4809, metadata !DIExpression()), !dbg !4812
  call void @llvm.dbg.value(metadata ptr %3, metadata !4810, metadata !DIExpression()), !dbg !4812
  %5 = icmp eq ptr %1, null, !dbg !4813
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4815
  %7 = select i1 %5, ptr @.str.158, ptr %1, !dbg !4815
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4815
  call void @llvm.dbg.value(metadata i64 %8, metadata !4809, metadata !DIExpression()), !dbg !4812
  call void @llvm.dbg.value(metadata ptr %7, metadata !4808, metadata !DIExpression()), !dbg !4812
  call void @llvm.dbg.value(metadata ptr %6, metadata !4807, metadata !DIExpression()), !dbg !4812
  %9 = icmp eq ptr %3, null, !dbg !4816
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4818
  call void @llvm.dbg.value(metadata ptr %10, metadata !4810, metadata !DIExpression()), !dbg !4812
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #40, !dbg !4819
  call void @llvm.dbg.value(metadata i64 %11, metadata !4811, metadata !DIExpression()), !dbg !4812
  %12 = icmp ult i64 %11, -3, !dbg !4820
  br i1 %12, label %13, label %17, !dbg !4822

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #41, !dbg !4823
  %15 = icmp eq i32 %14, 0, !dbg !4823
  br i1 %15, label %16, label %29, !dbg !4824

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4825, metadata !DIExpression()), !dbg !4830
  call void @llvm.dbg.value(metadata ptr %10, metadata !4832, metadata !DIExpression()), !dbg !4837
  call void @llvm.dbg.value(metadata i32 0, metadata !4835, metadata !DIExpression()), !dbg !4837
  call void @llvm.dbg.value(metadata i64 8, metadata !4836, metadata !DIExpression()), !dbg !4837
  store i64 0, ptr %10, align 1, !dbg !4839
  br label %29, !dbg !4840

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4841
  br i1 %18, label %19, label %20, !dbg !4843

19:                                               ; preds = %17
  tail call void @abort() #42, !dbg !4844
  unreachable, !dbg !4844

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4845

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #40, !dbg !4847
  br i1 %23, label %29, label %24, !dbg !4848

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4849
  br i1 %25, label %29, label %26, !dbg !4852

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4853, !tbaa !1072
  %28 = zext i8 %27 to i32, !dbg !4854
  store i32 %28, ptr %6, align 4, !dbg !4855, !tbaa !1063
  br label %29, !dbg !4856

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4812
  ret i64 %30, !dbg !4857
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4858 i32 @mbsinit(ptr noundef) local_unnamed_addr #38

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #39 !dbg !4864 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4866, metadata !DIExpression()), !dbg !4870
  call void @llvm.dbg.value(metadata i64 %1, metadata !4867, metadata !DIExpression()), !dbg !4870
  call void @llvm.dbg.value(metadata i64 %2, metadata !4868, metadata !DIExpression()), !dbg !4870
  %4 = icmp eq i64 %2, 0, !dbg !4871
  br i1 %4, label %8, label %5, !dbg !4871

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4871
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4871
  br i1 %7, label %13, label %8, !dbg !4871

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4869, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4870
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4869, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4870
  %9 = mul i64 %2, %1, !dbg !4871
  call void @llvm.dbg.value(metadata i64 %9, metadata !4869, metadata !DIExpression()), !dbg !4870
  call void @llvm.dbg.value(metadata ptr %0, metadata !4873, metadata !DIExpression()), !dbg !4877
  call void @llvm.dbg.value(metadata i64 %9, metadata !4876, metadata !DIExpression()), !dbg !4877
  %10 = icmp eq i64 %9, 0, !dbg !4879
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4879
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #45, !dbg !4880
  br label %15, !dbg !4881

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4869, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4870
  %14 = tail call ptr @__errno_location() #43, !dbg !4882
  store i32 12, ptr %14, align 4, !dbg !4884, !tbaa !1063
  br label %15, !dbg !4885

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !4870
  ret ptr %16, !dbg !4886
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4887 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4891, metadata !DIExpression()), !dbg !4896
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #40, !dbg !4897
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4892, metadata !DIExpression()), !dbg !4898
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #40, !dbg !4899
  %4 = icmp eq i32 %3, 0, !dbg !4899
  br i1 %4, label %5, label %12, !dbg !4901

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4902, metadata !DIExpression()), !dbg !4906
  call void @llvm.dbg.value(metadata ptr @.str.163, metadata !4905, metadata !DIExpression()), !dbg !4906
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.163, i64 2), !dbg !4909
  %7 = icmp eq i32 %6, 0, !dbg !4910
  br i1 %7, label %11, label %8, !dbg !4911

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4902, metadata !DIExpression()), !dbg !4912
  call void @llvm.dbg.value(metadata ptr @.str.1.164, metadata !4905, metadata !DIExpression()), !dbg !4912
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.164, i64 6), !dbg !4914
  %10 = icmp eq i32 %9, 0, !dbg !4915
  br i1 %10, label %11, label %12, !dbg !4916

11:                                               ; preds = %8, %5
  br label %12, !dbg !4917

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4896
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #40, !dbg !4918
  ret i1 %13, !dbg !4918
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4919 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4923, metadata !DIExpression()), !dbg !4926
  call void @llvm.dbg.value(metadata ptr %1, metadata !4924, metadata !DIExpression()), !dbg !4926
  call void @llvm.dbg.value(metadata i64 %2, metadata !4925, metadata !DIExpression()), !dbg !4926
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #40, !dbg !4927
  ret i32 %4, !dbg !4928
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4929 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4933, metadata !DIExpression()), !dbg !4934
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #40, !dbg !4935
  ret ptr %2, !dbg !4936
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4937 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4939, metadata !DIExpression()), !dbg !4941
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #40, !dbg !4942
  call void @llvm.dbg.value(metadata ptr %2, metadata !4940, metadata !DIExpression()), !dbg !4941
  ret ptr %2, !dbg !4943
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4944 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4946, metadata !DIExpression()), !dbg !4953
  call void @llvm.dbg.value(metadata ptr %1, metadata !4947, metadata !DIExpression()), !dbg !4953
  call void @llvm.dbg.value(metadata i64 %2, metadata !4948, metadata !DIExpression()), !dbg !4953
  call void @llvm.dbg.value(metadata i32 %0, metadata !4939, metadata !DIExpression()), !dbg !4954
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #40, !dbg !4956
  call void @llvm.dbg.value(metadata ptr %4, metadata !4940, metadata !DIExpression()), !dbg !4954
  call void @llvm.dbg.value(metadata ptr %4, metadata !4949, metadata !DIExpression()), !dbg !4953
  %5 = icmp eq ptr %4, null, !dbg !4957
  br i1 %5, label %6, label %9, !dbg !4958

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4959
  br i1 %7, label %19, label %8, !dbg !4962

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4963, !tbaa !1072
  br label %19, !dbg !4964

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #41, !dbg !4965
  call void @llvm.dbg.value(metadata i64 %10, metadata !4950, metadata !DIExpression()), !dbg !4966
  %11 = icmp ult i64 %10, %2, !dbg !4967
  br i1 %11, label %12, label %14, !dbg !4969

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4970
  call void @llvm.dbg.value(metadata ptr %1, metadata !4972, metadata !DIExpression()), !dbg !4977
  call void @llvm.dbg.value(metadata ptr %4, metadata !4975, metadata !DIExpression()), !dbg !4977
  call void @llvm.dbg.value(metadata i64 %13, metadata !4976, metadata !DIExpression()), !dbg !4977
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #40, !dbg !4979
  br label %19, !dbg !4980

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4981
  br i1 %15, label %19, label %16, !dbg !4984

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4985
  call void @llvm.dbg.value(metadata ptr %1, metadata !4972, metadata !DIExpression()), !dbg !4987
  call void @llvm.dbg.value(metadata ptr %4, metadata !4975, metadata !DIExpression()), !dbg !4987
  call void @llvm.dbg.value(metadata i64 %17, metadata !4976, metadata !DIExpression()), !dbg !4987
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #40, !dbg !4989
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4990
  store i8 0, ptr %18, align 1, !dbg !4991, !tbaa !1072
  br label %19, !dbg !4992

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4993
  ret i32 %20, !dbg !4994
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
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nofree "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #17 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #18 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #19 = { nocallback nofree nosync nounwind willreturn }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #21 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #22 = { nofree nounwind willreturn memory(argmem: read) }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #26 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { nofree nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #29 = { nounwind allocsize(1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #30 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized,aligned") allocsize(1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #31 = { inlinehint nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #32 = { nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #33 = { nounwind allocsize(0) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #34 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #35 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #36 = { nounwind allocsize(0,1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #37 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #38 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #39 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #40 = { nounwind }
attributes #41 = { nounwind willreturn memory(read) }
attributes #42 = { noreturn nounwind }
attributes #43 = { nounwind willreturn memory(none) }
attributes #44 = { noreturn }
attributes #45 = { nounwind allocsize(1) }
attributes #46 = { cold }
attributes #47 = { nounwind allocsize(0) }
attributes #48 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!89, !545, !549, !895, !564, !861, !898, !624, !901, !903, !906, !638, !652, !703, !908, !911, !855, !918, !920, !951, !953, !955, !957, !959, !877, !961, !964, !966, !968}
!llvm.ident = !{!970, !970, !970, !970, !970, !970, !970, !970, !970, !970, !970, !970, !970, !970, !970, !970, !970, !970, !970, !970, !970, !970, !970, !970, !970, !970, !970, !970, !970}
!llvm.module.flags = !{!971, !972, !973, !974, !975, !976, !977}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 86, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/cat.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6053c0d0ebd845267d30b8d265d68ed1")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
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
!82 = distinct !DIGlobalVariable(name: "long_options", scope: !83, file: !2, line: 566, type: !529, isLocal: true, isDefinition: true)
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
!94 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -2)
!95 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -3)
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
!290 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !292, line: 49, size: 1728, elements: !293)
!292 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
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
!315 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
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
!452 = !{!453, !454, !455, !456, !492, !493, !494, !495, !496, !497, !498, !499, !500, !504, !505, !506, !507, !508, !509, !511, !512, !513, !518, !521, !522, !525, !527, !528}
!453 = !DILocalVariable(name: "argc", arg: 1, scope: !83, file: !2, line: 550, type: !86)
!454 = !DILocalVariable(name: "argv", arg: 2, scope: !83, file: !2, line: 550, type: !87)
!455 = !DILocalVariable(name: "have_read_stdin", scope: !83, file: !2, line: 553, type: !145)
!456 = !DILocalVariable(name: "ostat_buf", scope: !83, file: !2, line: 555, type: !457)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !458, line: 44, size: 1024, elements: !459)
!458 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "910289113a4b669f8271729077b0f267")
!459 = !{!460, !462, !464, !466, !468, !470, !472, !473, !474, !475, !477, !478, !480, !488, !489, !490}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !457, file: !458, line: 46, baseType: !461, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !315, line: 145, baseType: !147)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !457, file: !458, line: 47, baseType: !463, size: 64, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !315, line: 148, baseType: !147)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !457, file: !458, line: 48, baseType: !465, size: 32, offset: 128)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !315, line: 150, baseType: !98)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !457, file: !458, line: 49, baseType: !467, size: 32, offset: 160)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !315, line: 151, baseType: !98)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !457, file: !458, line: 50, baseType: !469, size: 32, offset: 192)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !315, line: 146, baseType: !98)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !457, file: !458, line: 51, baseType: !471, size: 32, offset: 224)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !315, line: 147, baseType: !98)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !457, file: !458, line: 52, baseType: !461, size: 64, offset: 256)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !457, file: !458, line: 53, baseType: !461, size: 64, offset: 320)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !457, file: !458, line: 54, baseType: !314, size: 64, offset: 384)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !457, file: !458, line: 55, baseType: !476, size: 32, offset: 448)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !315, line: 175, baseType: !86)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !457, file: !458, line: 56, baseType: !86, size: 32, offset: 480)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !457, file: !458, line: 57, baseType: !479, size: 64, offset: 512)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !315, line: 180, baseType: !146)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !457, file: !458, line: 65, baseType: !481, size: 128, offset: 576)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !482, line: 11, size: 128, elements: !483)
!482 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!483 = !{!484, !486}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !481, file: !482, line: 16, baseType: !485, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !315, line: 160, baseType: !146)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !481, file: !482, line: 21, baseType: !487, size: 64, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !315, line: 197, baseType: !146)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !457, file: !458, line: 66, baseType: !481, size: 128, offset: 704)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !457, file: !458, line: 67, baseType: !481, size: 128, offset: 832)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !457, file: !458, line: 79, baseType: !491, size: 64, offset: 960)
!491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 64, elements: !236)
!492 = !DILocalVariable(name: "number", scope: !83, file: !2, line: 558, type: !145)
!493 = !DILocalVariable(name: "number_nonblank", scope: !83, file: !2, line: 559, type: !145)
!494 = !DILocalVariable(name: "squeeze_blank", scope: !83, file: !2, line: 560, type: !145)
!495 = !DILocalVariable(name: "show_ends", scope: !83, file: !2, line: 561, type: !145)
!496 = !DILocalVariable(name: "show_nonprinting", scope: !83, file: !2, line: 562, type: !145)
!497 = !DILocalVariable(name: "show_tabs", scope: !83, file: !2, line: 563, type: !145)
!498 = !DILocalVariable(name: "file_open_mode", scope: !83, file: !2, line: 564, type: !86)
!499 = !DILocalVariable(name: "c", scope: !83, file: !2, line: 594, type: !86)
!500 = !DILocalVariable(name: "outsize", scope: !83, file: !2, line: 660, type: !501)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !502, line: 130, baseType: !503)
!502 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !150, line: 35, baseType: !146)
!504 = !DILocalVariable(name: "out_flags", scope: !83, file: !2, line: 663, type: !86)
!505 = !DILocalVariable(name: "out_isreg", scope: !83, file: !2, line: 666, type: !145)
!506 = !DILocalVariable(name: "argind", scope: !83, file: !2, line: 677, type: !86)
!507 = !DILocalVariable(name: "ok", scope: !83, file: !2, line: 678, type: !145)
!508 = !DILocalVariable(name: "page_size", scope: !83, file: !2, line: 679, type: !501)
!509 = !DILocalVariable(name: "reading_stdin", scope: !510, file: !2, line: 686, type: !145)
!510 = distinct !DILexicalBlock(scope: !83, file: !2, line: 682, column: 5)
!511 = !DILocalVariable(name: "istat_buf", scope: !510, file: !2, line: 705, type: !457)
!512 = !DILocalVariable(name: "insize", scope: !510, file: !2, line: 714, type: !501)
!513 = !DILocalVariable(name: "in_pos", scope: !514, file: !2, line: 727, type: !516)
!514 = distinct !DILexicalBlock(scope: !515, file: !2, line: 726, column: 9)
!515 = distinct !DILexicalBlock(scope: !510, file: !2, line: 722, column: 11)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !517, line: 63, baseType: !314)
!517 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!518 = !DILocalVariable(name: "whence", scope: !519, file: !2, line: 732, type: !86)
!519 = distinct !DILexicalBlock(scope: !520, file: !2, line: 729, column: 13)
!520 = distinct !DILexicalBlock(scope: !514, file: !2, line: 728, column: 15)
!521 = !DILocalVariable(name: "inbuf", scope: !510, file: !2, line: 745, type: !88)
!522 = !DILocalVariable(name: "copy_cat_status", scope: !523, file: !2, line: 754, type: !86)
!523 = distinct !DILexicalBlock(scope: !524, file: !2, line: 753, column: 9)
!524 = distinct !DILexicalBlock(scope: !510, file: !2, line: 751, column: 11)
!525 = !DILocalVariable(name: "bufsize", scope: !526, file: !2, line: 794, type: !501)
!526 = distinct !DILexicalBlock(scope: !524, file: !2, line: 769, column: 9)
!527 = !DILocalVariable(name: "outbuf", scope: !526, file: !2, line: 799, type: !88)
!528 = !DILabel(scope: !510, name: "contin", file: !2, line: 810)
!529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !530, size: 2560, elements: !178)
!530 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !531)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !532, line: 50, size: 256, elements: !533)
!532 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!533 = !{!534, !535, !536, !538}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !531, file: !532, line: 52, baseType: !151, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !531, file: !532, line: 55, baseType: !86, size: 32, offset: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !531, file: !532, line: 56, baseType: !537, size: 64, offset: 128)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !531, file: !532, line: 57, baseType: !86, size: 32, offset: 192)
!539 = !DIGlobalVariableExpression(var: !449, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!540 = !DIGlobalVariableExpression(var: !541, expr: !DIExpression())
!541 = distinct !DIGlobalVariable(scope: null, file: !542, line: 3, type: !392, isLocal: true, isDefinition: true)
!542 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!543 = !DIGlobalVariableExpression(var: !544, expr: !DIExpression())
!544 = distinct !DIGlobalVariable(name: "Version", scope: !545, file: !542, line: 3, type: !151, isLocal: false, isDefinition: true)
!545 = distinct !DICompileUnit(language: DW_LANG_C11, file: !542, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !546, splitDebugInlining: false, nameTableKind: None)
!546 = !{!540, !543}
!547 = !DIGlobalVariableExpression(var: !548, expr: !DIExpression())
!548 = distinct !DIGlobalVariable(name: "file_name", scope: !549, file: !550, line: 45, type: !151, isLocal: true, isDefinition: true)
!549 = distinct !DICompileUnit(language: DW_LANG_C11, file: !550, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !551, splitDebugInlining: false, nameTableKind: None)
!550 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!551 = !{!552, !554, !556, !558, !547, !560}
!552 = !DIGlobalVariableExpression(var: !553, expr: !DIExpression())
!553 = distinct !DIGlobalVariable(scope: null, file: !550, line: 121, type: !162, isLocal: true, isDefinition: true)
!554 = !DIGlobalVariableExpression(var: !555, expr: !DIExpression())
!555 = distinct !DIGlobalVariable(scope: null, file: !550, line: 121, type: !433, isLocal: true, isDefinition: true)
!556 = !DIGlobalVariableExpression(var: !557, expr: !DIExpression())
!557 = distinct !DIGlobalVariable(scope: null, file: !550, line: 123, type: !162, isLocal: true, isDefinition: true)
!558 = !DIGlobalVariableExpression(var: !559, expr: !DIExpression())
!559 = distinct !DIGlobalVariable(scope: null, file: !550, line: 126, type: !240, isLocal: true, isDefinition: true)
!560 = !DIGlobalVariableExpression(var: !561, expr: !DIExpression())
!561 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !549, file: !550, line: 55, type: !145, isLocal: true, isDefinition: true)
!562 = !DIGlobalVariableExpression(var: !563, expr: !DIExpression())
!563 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !564, file: !565, line: 66, type: !615, isLocal: false, isDefinition: true)
!564 = distinct !DICompileUnit(language: DW_LANG_C11, file: !565, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !566, globals: !567, splitDebugInlining: false, nameTableKind: None)
!565 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!566 = !{!144, !153}
!567 = !{!568, !570, !594, !596, !598, !600, !562, !602, !604, !606, !608, !613}
!568 = !DIGlobalVariableExpression(var: !569, expr: !DIExpression())
!569 = distinct !DIGlobalVariable(scope: null, file: !565, line: 272, type: !189, isLocal: true, isDefinition: true)
!570 = !DIGlobalVariableExpression(var: !571, expr: !DIExpression())
!571 = distinct !DIGlobalVariable(name: "old_file_name", scope: !572, file: !565, line: 304, type: !151, isLocal: true, isDefinition: true)
!572 = distinct !DISubprogram(name: "verror_at_line", scope: !565, file: !565, line: 298, type: !573, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !564, retainedNodes: !587)
!573 = !DISubroutineType(types: !574)
!574 = !{null, !86, !86, !151, !98, !151, !575}
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !517, line: 52, baseType: !576)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !577, line: 14, baseType: !578)
!577 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !579, baseType: !580)
!579 = !DIFile(filename: "lib/error.c", directory: "/src")
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !581)
!581 = !{!582, !583, !584, !585, !586}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !580, file: !579, baseType: !144, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !580, file: !579, baseType: !144, size: 64, offset: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !580, file: !579, baseType: !144, size: 64, offset: 128)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !580, file: !579, baseType: !86, size: 32, offset: 192)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !580, file: !579, baseType: !86, size: 32, offset: 224)
!587 = !{!588, !589, !590, !591, !592, !593}
!588 = !DILocalVariable(name: "status", arg: 1, scope: !572, file: !565, line: 298, type: !86)
!589 = !DILocalVariable(name: "errnum", arg: 2, scope: !572, file: !565, line: 298, type: !86)
!590 = !DILocalVariable(name: "file_name", arg: 3, scope: !572, file: !565, line: 298, type: !151)
!591 = !DILocalVariable(name: "line_number", arg: 4, scope: !572, file: !565, line: 298, type: !98)
!592 = !DILocalVariable(name: "message", arg: 5, scope: !572, file: !565, line: 298, type: !151)
!593 = !DILocalVariable(name: "args", arg: 6, scope: !572, file: !565, line: 298, type: !575)
!594 = !DIGlobalVariableExpression(var: !595, expr: !DIExpression())
!595 = distinct !DIGlobalVariable(name: "old_line_number", scope: !572, file: !565, line: 305, type: !98, isLocal: true, isDefinition: true)
!596 = !DIGlobalVariableExpression(var: !597, expr: !DIExpression())
!597 = distinct !DIGlobalVariable(scope: null, file: !565, line: 338, type: !19, isLocal: true, isDefinition: true)
!598 = !DIGlobalVariableExpression(var: !599, expr: !DIExpression())
!599 = distinct !DIGlobalVariable(scope: null, file: !565, line: 346, type: !194, isLocal: true, isDefinition: true)
!600 = !DIGlobalVariableExpression(var: !601, expr: !DIExpression())
!601 = distinct !DIGlobalVariable(scope: null, file: !565, line: 346, type: !235, isLocal: true, isDefinition: true)
!602 = !DIGlobalVariableExpression(var: !603, expr: !DIExpression())
!603 = distinct !DIGlobalVariable(name: "error_message_count", scope: !564, file: !565, line: 69, type: !98, isLocal: false, isDefinition: true)
!604 = !DIGlobalVariableExpression(var: !605, expr: !DIExpression())
!605 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !564, file: !565, line: 295, type: !86, isLocal: false, isDefinition: true)
!606 = !DIGlobalVariableExpression(var: !607, expr: !DIExpression())
!607 = distinct !DIGlobalVariable(scope: null, file: !565, line: 208, type: !162, isLocal: true, isDefinition: true)
!608 = !DIGlobalVariableExpression(var: !609, expr: !DIExpression())
!609 = distinct !DIGlobalVariable(scope: null, file: !565, line: 208, type: !610, isLocal: true, isDefinition: true)
!610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !611)
!611 = !{!612}
!612 = !DISubrange(count: 21)
!613 = !DIGlobalVariableExpression(var: !614, expr: !DIExpression())
!614 = distinct !DIGlobalVariable(scope: null, file: !565, line: 214, type: !189, isLocal: true, isDefinition: true)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{null}
!618 = !DIGlobalVariableExpression(var: !619, expr: !DIExpression())
!619 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !620, file: !621, line: 506, type: !86, isLocal: true, isDefinition: true)
!620 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD_CLOEXEC", scope: !621, file: !621, line: 485, type: !622, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !624, retainedNodes: !626)
!621 = !DIFile(filename: "lib/fcntl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "bc4606a0e1e86be6126be7481cbd2f8d")
!622 = !DISubroutineType(types: !623)
!623 = !{!86, !86, !86}
!624 = distinct !DICompileUnit(language: DW_LANG_C11, file: !621, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !625, splitDebugInlining: false, nameTableKind: None)
!625 = !{!618}
!626 = !{!627, !628, !629, !630, !633}
!627 = !DILocalVariable(name: "fd", arg: 1, scope: !620, file: !621, line: 485, type: !86)
!628 = !DILocalVariable(name: "target", arg: 2, scope: !620, file: !621, line: 485, type: !86)
!629 = !DILocalVariable(name: "result", scope: !620, file: !621, line: 487, type: !86)
!630 = !DILocalVariable(name: "flags", scope: !631, file: !621, line: 530, type: !86)
!631 = distinct !DILexicalBlock(scope: !632, file: !621, line: 529, column: 5)
!632 = distinct !DILexicalBlock(scope: !620, file: !621, line: 528, column: 7)
!633 = !DILocalVariable(name: "saved_errno", scope: !634, file: !621, line: 533, type: !86)
!634 = distinct !DILexicalBlock(scope: !635, file: !621, line: 532, column: 9)
!635 = distinct !DILexicalBlock(scope: !631, file: !621, line: 531, column: 11)
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(name: "program_name", scope: !638, file: !639, line: 31, type: !151, isLocal: false, isDefinition: true)
!638 = distinct !DICompileUnit(language: DW_LANG_C11, file: !639, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !640, globals: !641, splitDebugInlining: false, nameTableKind: None)
!639 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!640 = !{!88}
!641 = !{!636, !642, !644}
!642 = !DIGlobalVariableExpression(var: !643, expr: !DIExpression())
!643 = distinct !DIGlobalVariable(scope: null, file: !639, line: 46, type: !194, isLocal: true, isDefinition: true)
!644 = !DIGlobalVariableExpression(var: !645, expr: !DIExpression())
!645 = distinct !DIGlobalVariable(scope: null, file: !639, line: 49, type: !19, isLocal: true, isDefinition: true)
!646 = !DIGlobalVariableExpression(var: !647, expr: !DIExpression())
!647 = distinct !DIGlobalVariable(name: "utf07FF", scope: !648, file: !649, line: 46, type: !676, isLocal: true, isDefinition: true)
!648 = distinct !DISubprogram(name: "proper_name_lite", scope: !649, file: !649, line: 38, type: !650, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !652, retainedNodes: !654)
!649 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!650 = !DISubroutineType(types: !651)
!651 = !{!151, !151, !151}
!652 = distinct !DICompileUnit(language: DW_LANG_C11, file: !649, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !653, splitDebugInlining: false, nameTableKind: None)
!653 = !{!646}
!654 = !{!655, !656, !657, !658, !663}
!655 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !648, file: !649, line: 38, type: !151)
!656 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !648, file: !649, line: 38, type: !151)
!657 = !DILocalVariable(name: "translation", scope: !648, file: !649, line: 40, type: !151)
!658 = !DILocalVariable(name: "w", scope: !648, file: !649, line: 47, type: !659)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !660, line: 37, baseType: !661)
!660 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !315, line: 57, baseType: !662)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !315, line: 42, baseType: !98)
!663 = !DILocalVariable(name: "mbs", scope: !648, file: !649, line: 48, type: !664)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !665, line: 6, baseType: !666)
!665 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !667, line: 21, baseType: !668)
!667 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !667, line: 13, size: 64, elements: !669)
!669 = !{!670, !671}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !668, file: !667, line: 15, baseType: !86, size: 32)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !668, file: !667, line: 20, baseType: !672, size: 32, offset: 32)
!672 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !668, file: !667, line: 16, size: 32, elements: !673)
!673 = !{!674, !675}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !672, file: !667, line: 18, baseType: !98, size: 32)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !672, file: !667, line: 19, baseType: !19, size: 32)
!676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 16, elements: !236)
!677 = !DIGlobalVariableExpression(var: !678, expr: !DIExpression())
!678 = distinct !DIGlobalVariable(scope: null, file: !679, line: 78, type: !194, isLocal: true, isDefinition: true)
!679 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!680 = !DIGlobalVariableExpression(var: !681, expr: !DIExpression())
!681 = distinct !DIGlobalVariable(scope: null, file: !679, line: 79, type: !350, isLocal: true, isDefinition: true)
!682 = !DIGlobalVariableExpression(var: !683, expr: !DIExpression())
!683 = distinct !DIGlobalVariable(scope: null, file: !679, line: 80, type: !684, isLocal: true, isDefinition: true)
!684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !685)
!685 = !{!686}
!686 = !DISubrange(count: 13)
!687 = !DIGlobalVariableExpression(var: !688, expr: !DIExpression())
!688 = distinct !DIGlobalVariable(scope: null, file: !679, line: 81, type: !684, isLocal: true, isDefinition: true)
!689 = !DIGlobalVariableExpression(var: !690, expr: !DIExpression())
!690 = distinct !DIGlobalVariable(scope: null, file: !679, line: 82, type: !228, isLocal: true, isDefinition: true)
!691 = !DIGlobalVariableExpression(var: !692, expr: !DIExpression())
!692 = distinct !DIGlobalVariable(scope: null, file: !679, line: 83, type: !235, isLocal: true, isDefinition: true)
!693 = !DIGlobalVariableExpression(var: !694, expr: !DIExpression())
!694 = distinct !DIGlobalVariable(scope: null, file: !679, line: 84, type: !194, isLocal: true, isDefinition: true)
!695 = !DIGlobalVariableExpression(var: !696, expr: !DIExpression())
!696 = distinct !DIGlobalVariable(scope: null, file: !679, line: 85, type: !162, isLocal: true, isDefinition: true)
!697 = !DIGlobalVariableExpression(var: !698, expr: !DIExpression())
!698 = distinct !DIGlobalVariable(scope: null, file: !679, line: 86, type: !162, isLocal: true, isDefinition: true)
!699 = !DIGlobalVariableExpression(var: !700, expr: !DIExpression())
!700 = distinct !DIGlobalVariable(scope: null, file: !679, line: 87, type: !194, isLocal: true, isDefinition: true)
!701 = !DIGlobalVariableExpression(var: !702, expr: !DIExpression())
!702 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !703, file: !679, line: 76, type: !775, isLocal: false, isDefinition: true)
!703 = distinct !DICompileUnit(language: DW_LANG_C11, file: !679, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !704, retainedTypes: !710, globals: !711, splitDebugInlining: false, nameTableKind: None)
!704 = !{!96, !705, !120}
!705 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !97, line: 254, baseType: !98, size: 32, elements: !706)
!706 = !{!707, !708, !709}
!707 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!708 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!709 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!710 = !{!86, !148, !149}
!711 = !{!677, !680, !682, !687, !689, !691, !693, !695, !697, !699, !701, !712, !716, !726, !728, !733, !735, !737, !739, !741, !764, !771, !773}
!712 = !DIGlobalVariableExpression(var: !713, expr: !DIExpression())
!713 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !703, file: !679, line: 92, type: !714, isLocal: false, isDefinition: true)
!714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !715, size: 320, elements: !178)
!715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!716 = !DIGlobalVariableExpression(var: !717, expr: !DIExpression())
!717 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !703, file: !679, line: 1040, type: !718, isLocal: false, isDefinition: true)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !679, line: 56, size: 448, elements: !719)
!719 = !{!720, !721, !722, !724, !725}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !718, file: !679, line: 59, baseType: !96, size: 32)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !718, file: !679, line: 62, baseType: !86, size: 32, offset: 32)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !718, file: !679, line: 66, baseType: !723, size: 256, offset: 64)
!723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 256, elements: !195)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !718, file: !679, line: 69, baseType: !151, size: 64, offset: 320)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !718, file: !679, line: 72, baseType: !151, size: 64, offset: 384)
!726 = !DIGlobalVariableExpression(var: !727, expr: !DIExpression())
!727 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !703, file: !679, line: 107, type: !718, isLocal: true, isDefinition: true)
!728 = !DIGlobalVariableExpression(var: !729, expr: !DIExpression())
!729 = distinct !DIGlobalVariable(name: "slot0", scope: !703, file: !679, line: 831, type: !730, isLocal: true, isDefinition: true)
!730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !731)
!731 = !{!732}
!732 = !DISubrange(count: 256)
!733 = !DIGlobalVariableExpression(var: !734, expr: !DIExpression())
!734 = distinct !DIGlobalVariable(scope: null, file: !679, line: 321, type: !235, isLocal: true, isDefinition: true)
!735 = !DIGlobalVariableExpression(var: !736, expr: !DIExpression())
!736 = distinct !DIGlobalVariable(scope: null, file: !679, line: 357, type: !235, isLocal: true, isDefinition: true)
!737 = !DIGlobalVariableExpression(var: !738, expr: !DIExpression())
!738 = distinct !DIGlobalVariable(scope: null, file: !679, line: 358, type: !235, isLocal: true, isDefinition: true)
!739 = !DIGlobalVariableExpression(var: !740, expr: !DIExpression())
!740 = distinct !DIGlobalVariable(scope: null, file: !679, line: 199, type: !162, isLocal: true, isDefinition: true)
!741 = !DIGlobalVariableExpression(var: !742, expr: !DIExpression())
!742 = distinct !DIGlobalVariable(name: "quote", scope: !743, file: !679, line: 228, type: !762, isLocal: true, isDefinition: true)
!743 = distinct !DISubprogram(name: "gettext_quote", scope: !679, file: !679, line: 197, type: !744, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !746)
!744 = !DISubroutineType(types: !745)
!745 = !{!151, !151, !96}
!746 = !{!747, !748, !749, !750, !751}
!747 = !DILocalVariable(name: "msgid", arg: 1, scope: !743, file: !679, line: 197, type: !151)
!748 = !DILocalVariable(name: "s", arg: 2, scope: !743, file: !679, line: 197, type: !96)
!749 = !DILocalVariable(name: "translation", scope: !743, file: !679, line: 199, type: !151)
!750 = !DILocalVariable(name: "w", scope: !743, file: !679, line: 229, type: !659)
!751 = !DILocalVariable(name: "mbs", scope: !743, file: !679, line: 230, type: !752)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !665, line: 6, baseType: !753)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !667, line: 21, baseType: !754)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !667, line: 13, size: 64, elements: !755)
!755 = !{!756, !757}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !754, file: !667, line: 15, baseType: !86, size: 32)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !754, file: !667, line: 20, baseType: !758, size: 32, offset: 32)
!758 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !754, file: !667, line: 16, size: 32, elements: !759)
!759 = !{!760, !761}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !758, file: !667, line: 18, baseType: !98, size: 32)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !758, file: !667, line: 19, baseType: !19, size: 32)
!762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 64, elements: !763)
!763 = !{!237, !21}
!764 = !DIGlobalVariableExpression(var: !765, expr: !DIExpression())
!765 = distinct !DIGlobalVariable(name: "slotvec", scope: !703, file: !679, line: 834, type: !766, isLocal: true, isDefinition: true)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !679, line: 823, size: 128, elements: !768)
!768 = !{!769, !770}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !767, file: !679, line: 825, baseType: !149, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !767, file: !679, line: 826, baseType: !88, size: 64, offset: 64)
!771 = !DIGlobalVariableExpression(var: !772, expr: !DIExpression())
!772 = distinct !DIGlobalVariable(name: "nslots", scope: !703, file: !679, line: 832, type: !86, isLocal: true, isDefinition: true)
!773 = !DIGlobalVariableExpression(var: !774, expr: !DIExpression())
!774 = distinct !DIGlobalVariable(name: "slotvec0", scope: !703, file: !679, line: 833, type: !767, isLocal: true, isDefinition: true)
!775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !776, size: 704, elements: !212)
!776 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!777 = !DIGlobalVariableExpression(var: !778, expr: !DIExpression())
!778 = distinct !DIGlobalVariable(scope: null, file: !779, line: 67, type: !433, isLocal: true, isDefinition: true)
!779 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!780 = !DIGlobalVariableExpression(var: !781, expr: !DIExpression())
!781 = distinct !DIGlobalVariable(scope: null, file: !779, line: 69, type: !162, isLocal: true, isDefinition: true)
!782 = !DIGlobalVariableExpression(var: !783, expr: !DIExpression())
!783 = distinct !DIGlobalVariable(scope: null, file: !779, line: 83, type: !162, isLocal: true, isDefinition: true)
!784 = !DIGlobalVariableExpression(var: !785, expr: !DIExpression())
!785 = distinct !DIGlobalVariable(scope: null, file: !779, line: 83, type: !19, isLocal: true, isDefinition: true)
!786 = !DIGlobalVariableExpression(var: !787, expr: !DIExpression())
!787 = distinct !DIGlobalVariable(scope: null, file: !779, line: 85, type: !235, isLocal: true, isDefinition: true)
!788 = !DIGlobalVariableExpression(var: !789, expr: !DIExpression())
!789 = distinct !DIGlobalVariable(scope: null, file: !779, line: 88, type: !790, isLocal: true, isDefinition: true)
!790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !791)
!791 = !{!792}
!792 = !DISubrange(count: 171)
!793 = !DIGlobalVariableExpression(var: !794, expr: !DIExpression())
!794 = distinct !DIGlobalVariable(scope: null, file: !779, line: 88, type: !795, isLocal: true, isDefinition: true)
!795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !796)
!796 = !{!797}
!797 = !DISubrange(count: 34)
!798 = !DIGlobalVariableExpression(var: !799, expr: !DIExpression())
!799 = distinct !DIGlobalVariable(scope: null, file: !779, line: 105, type: !157, isLocal: true, isDefinition: true)
!800 = !DIGlobalVariableExpression(var: !801, expr: !DIExpression())
!801 = distinct !DIGlobalVariable(scope: null, file: !779, line: 109, type: !252, isLocal: true, isDefinition: true)
!802 = !DIGlobalVariableExpression(var: !803, expr: !DIExpression())
!803 = distinct !DIGlobalVariable(scope: null, file: !779, line: 113, type: !804, isLocal: true, isDefinition: true)
!804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !805)
!805 = !{!806}
!806 = !DISubrange(count: 28)
!807 = !DIGlobalVariableExpression(var: !808, expr: !DIExpression())
!808 = distinct !DIGlobalVariable(scope: null, file: !779, line: 120, type: !809, isLocal: true, isDefinition: true)
!809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !810)
!810 = !{!811}
!811 = !DISubrange(count: 32)
!812 = !DIGlobalVariableExpression(var: !813, expr: !DIExpression())
!813 = distinct !DIGlobalVariable(scope: null, file: !779, line: 127, type: !814, isLocal: true, isDefinition: true)
!814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !815)
!815 = !{!816}
!816 = !DISubrange(count: 36)
!817 = !DIGlobalVariableExpression(var: !818, expr: !DIExpression())
!818 = distinct !DIGlobalVariable(scope: null, file: !779, line: 134, type: !387, isLocal: true, isDefinition: true)
!819 = !DIGlobalVariableExpression(var: !820, expr: !DIExpression())
!820 = distinct !DIGlobalVariable(scope: null, file: !779, line: 142, type: !821, isLocal: true, isDefinition: true)
!821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !822)
!822 = !{!823}
!823 = !DISubrange(count: 44)
!824 = !DIGlobalVariableExpression(var: !825, expr: !DIExpression())
!825 = distinct !DIGlobalVariable(scope: null, file: !779, line: 150, type: !826, isLocal: true, isDefinition: true)
!826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !827)
!827 = !{!828}
!828 = !DISubrange(count: 48)
!829 = !DIGlobalVariableExpression(var: !830, expr: !DIExpression())
!830 = distinct !DIGlobalVariable(scope: null, file: !779, line: 159, type: !44, isLocal: true, isDefinition: true)
!831 = !DIGlobalVariableExpression(var: !832, expr: !DIExpression())
!832 = distinct !DIGlobalVariable(scope: null, file: !779, line: 170, type: !833, isLocal: true, isDefinition: true)
!833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !834)
!834 = !{!835}
!835 = !DISubrange(count: 60)
!836 = !DIGlobalVariableExpression(var: !837, expr: !DIExpression())
!837 = distinct !DIGlobalVariable(scope: null, file: !779, line: 248, type: !228, isLocal: true, isDefinition: true)
!838 = !DIGlobalVariableExpression(var: !839, expr: !DIExpression())
!839 = distinct !DIGlobalVariable(scope: null, file: !779, line: 248, type: !412, isLocal: true, isDefinition: true)
!840 = !DIGlobalVariableExpression(var: !841, expr: !DIExpression())
!841 = distinct !DIGlobalVariable(scope: null, file: !779, line: 254, type: !228, isLocal: true, isDefinition: true)
!842 = !DIGlobalVariableExpression(var: !843, expr: !DIExpression())
!843 = distinct !DIGlobalVariable(scope: null, file: !779, line: 254, type: !167, isLocal: true, isDefinition: true)
!844 = !DIGlobalVariableExpression(var: !845, expr: !DIExpression())
!845 = distinct !DIGlobalVariable(scope: null, file: !779, line: 254, type: !387, isLocal: true, isDefinition: true)
!846 = !DIGlobalVariableExpression(var: !847, expr: !DIExpression())
!847 = distinct !DIGlobalVariable(scope: null, file: !779, line: 259, type: !3, isLocal: true, isDefinition: true)
!848 = !DIGlobalVariableExpression(var: !849, expr: !DIExpression())
!849 = distinct !DIGlobalVariable(scope: null, file: !779, line: 259, type: !850, isLocal: true, isDefinition: true)
!850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !851)
!851 = !{!852}
!852 = !DISubrange(count: 29)
!853 = !DIGlobalVariableExpression(var: !854, expr: !DIExpression())
!854 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !855, file: !856, line: 26, type: !858, isLocal: false, isDefinition: true)
!855 = distinct !DICompileUnit(language: DW_LANG_C11, file: !856, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !857, splitDebugInlining: false, nameTableKind: None)
!856 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!857 = !{!853}
!858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 376, elements: !25)
!859 = !DIGlobalVariableExpression(var: !860, expr: !DIExpression())
!860 = distinct !DIGlobalVariable(name: "exit_failure", scope: !861, file: !862, line: 24, type: !864, isLocal: false, isDefinition: true)
!861 = distinct !DICompileUnit(language: DW_LANG_C11, file: !862, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !863, splitDebugInlining: false, nameTableKind: None)
!862 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!863 = !{!859}
!864 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !86)
!865 = !DIGlobalVariableExpression(var: !866, expr: !DIExpression())
!866 = distinct !DIGlobalVariable(scope: null, file: !867, line: 34, type: !240, isLocal: true, isDefinition: true)
!867 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!868 = !DIGlobalVariableExpression(var: !869, expr: !DIExpression())
!869 = distinct !DIGlobalVariable(scope: null, file: !867, line: 34, type: !162, isLocal: true, isDefinition: true)
!870 = !DIGlobalVariableExpression(var: !871, expr: !DIExpression())
!871 = distinct !DIGlobalVariable(scope: null, file: !867, line: 34, type: !172, isLocal: true, isDefinition: true)
!872 = !DIGlobalVariableExpression(var: !873, expr: !DIExpression())
!873 = distinct !DIGlobalVariable(scope: null, file: !874, line: 108, type: !199, isLocal: true, isDefinition: true)
!874 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!875 = !DIGlobalVariableExpression(var: !876, expr: !DIExpression())
!876 = distinct !DIGlobalVariable(name: "internal_state", scope: !877, file: !874, line: 97, type: !880, isLocal: true, isDefinition: true)
!877 = distinct !DICompileUnit(language: DW_LANG_C11, file: !874, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !878, globals: !879, splitDebugInlining: false, nameTableKind: None)
!878 = !{!144, !149, !153}
!879 = !{!872, !875}
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !665, line: 6, baseType: !881)
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !667, line: 21, baseType: !882)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !667, line: 13, size: 64, elements: !883)
!883 = !{!884, !885}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !882, file: !667, line: 15, baseType: !86, size: 32)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !882, file: !667, line: 20, baseType: !886, size: 32, offset: 32)
!886 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !882, file: !667, line: 16, size: 32, elements: !887)
!887 = !{!888, !889}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !886, file: !667, line: 18, baseType: !98, size: 32)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !886, file: !667, line: 19, baseType: !19, size: 32)
!890 = !DIGlobalVariableExpression(var: !891, expr: !DIExpression())
!891 = distinct !DIGlobalVariable(scope: null, file: !892, line: 35, type: !235, isLocal: true, isDefinition: true)
!892 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!893 = !DIGlobalVariableExpression(var: !894, expr: !DIExpression())
!894 = distinct !DIGlobalVariable(scope: null, file: !892, line: 35, type: !350, isLocal: true, isDefinition: true)
!895 = distinct !DICompileUnit(language: DW_LANG_C11, file: !896, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !897, splitDebugInlining: false, nameTableKind: None)
!896 = !DIFile(filename: "lib/copy-file-range.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6733a97916f50c6b003a01ea6f4c9f0a")
!897 = !{!139}
!898 = distinct !DICompileUnit(language: DW_LANG_C11, file: !899, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !900, splitDebugInlining: false, nameTableKind: None)
!899 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!900 = !{!111}
!901 = distinct !DICompileUnit(language: DW_LANG_C11, file: !902, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!902 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!903 = distinct !DICompileUnit(language: DW_LANG_C11, file: !904, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !905, splitDebugInlining: false, nameTableKind: None)
!904 = !DIFile(filename: "lib/full-write.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3e4d1fbb34cc594bb17b421b58eed3ca")
!905 = !{!151}
!906 = distinct !DICompileUnit(language: DW_LANG_C11, file: !907, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!907 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!908 = distinct !DICompileUnit(language: DW_LANG_C11, file: !909, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !897, retainedTypes: !910, splitDebugInlining: false, nameTableKind: None)
!909 = !DIFile(filename: "lib/safe-write.c", directory: "/src", checksumkind: CSK_MD5, checksum: "868d9fdfbe37109ce7387a63f56e5cc3")
!910 = !{!149}
!911 = distinct !DICompileUnit(language: DW_LANG_C11, file: !779, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !912, retainedTypes: !916, globals: !917, splitDebugInlining: false, nameTableKind: None)
!912 = !{!913}
!913 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !779, line: 40, baseType: !98, size: 32, elements: !914)
!914 = !{!915}
!915 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!916 = !{!144}
!917 = !{!777, !780, !782, !784, !786, !788, !793, !798, !800, !802, !807, !812, !817, !819, !824, !829, !831, !836, !838, !840, !842, !844, !846, !848}
!918 = distinct !DICompileUnit(language: DW_LANG_C11, file: !919, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !910, splitDebugInlining: false, nameTableKind: None)
!919 = !DIFile(filename: "lib/xalignalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3b950fafb945919ba44141bc7f11141c")
!920 = distinct !DICompileUnit(language: DW_LANG_C11, file: !921, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !922, retainedTypes: !950, splitDebugInlining: false, nameTableKind: None)
!921 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!922 = !{!923, !935}
!923 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !924, file: !921, line: 188, baseType: !98, size: 32, elements: !933)
!924 = distinct !DISubprogram(name: "x2nrealloc", scope: !921, file: !921, line: 176, type: !925, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !928)
!925 = !DISubroutineType(types: !926)
!926 = !{!144, !144, !927, !149}
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!928 = !{!929, !930, !931, !932}
!929 = !DILocalVariable(name: "p", arg: 1, scope: !924, file: !921, line: 176, type: !144)
!930 = !DILocalVariable(name: "pn", arg: 2, scope: !924, file: !921, line: 176, type: !927)
!931 = !DILocalVariable(name: "s", arg: 3, scope: !924, file: !921, line: 176, type: !149)
!932 = !DILocalVariable(name: "n", scope: !924, file: !921, line: 178, type: !149)
!933 = !{!934}
!934 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!935 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !936, file: !921, line: 228, baseType: !98, size: 32, elements: !933)
!936 = distinct !DISubprogram(name: "xpalloc", scope: !921, file: !921, line: 223, type: !937, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !940)
!937 = !DISubroutineType(types: !938)
!938 = !{!144, !144, !939, !501, !503, !501}
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!940 = !{!941, !942, !943, !944, !945, !946, !947, !948, !949}
!941 = !DILocalVariable(name: "pa", arg: 1, scope: !936, file: !921, line: 223, type: !144)
!942 = !DILocalVariable(name: "pn", arg: 2, scope: !936, file: !921, line: 223, type: !939)
!943 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !936, file: !921, line: 223, type: !501)
!944 = !DILocalVariable(name: "n_max", arg: 4, scope: !936, file: !921, line: 223, type: !503)
!945 = !DILocalVariable(name: "s", arg: 5, scope: !936, file: !921, line: 223, type: !501)
!946 = !DILocalVariable(name: "n0", scope: !936, file: !921, line: 230, type: !501)
!947 = !DILocalVariable(name: "n", scope: !936, file: !921, line: 237, type: !501)
!948 = !DILocalVariable(name: "nbytes", scope: !936, file: !921, line: 248, type: !501)
!949 = !DILocalVariable(name: "adjusted_nbytes", scope: !936, file: !921, line: 252, type: !501)
!950 = !{!88, !144, !145, !146, !147}
!951 = distinct !DICompileUnit(language: DW_LANG_C11, file: !867, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !952, splitDebugInlining: false, nameTableKind: None)
!952 = !{!865, !868, !870}
!953 = distinct !DICompileUnit(language: DW_LANG_C11, file: !954, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!954 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!955 = distinct !DICompileUnit(language: DW_LANG_C11, file: !956, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!956 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!957 = distinct !DICompileUnit(language: DW_LANG_C11, file: !958, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !916, splitDebugInlining: false, nameTableKind: None)
!958 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!959 = distinct !DICompileUnit(language: DW_LANG_C11, file: !960, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !916, splitDebugInlining: false, nameTableKind: None)
!960 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!961 = distinct !DICompileUnit(language: DW_LANG_C11, file: !962, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !963, splitDebugInlining: false, nameTableKind: None)
!962 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!963 = !{!145, !147, !144}
!964 = distinct !DICompileUnit(language: DW_LANG_C11, file: !892, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !965, splitDebugInlining: false, nameTableKind: None)
!965 = !{!890, !893}
!966 = distinct !DICompileUnit(language: DW_LANG_C11, file: !967, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!967 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!968 = distinct !DICompileUnit(language: DW_LANG_C11, file: !969, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !916, splitDebugInlining: false, nameTableKind: None)
!969 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!970 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!971 = !{i32 7, !"Dwarf Version", i32 5}
!972 = !{i32 2, !"Debug Info Version", i32 3}
!973 = !{i32 1, !"wchar_size", i32 4}
!974 = !{i32 8, !"PIC Level", i32 2}
!975 = !{i32 7, !"PIE Level", i32 2}
!976 = !{i32 7, !"uwtable", i32 2}
!977 = !{i32 7, !"frame-pointer", i32 1}
!978 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 83, type: !979, scopeLine: 84, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !981)
!979 = !DISubroutineType(types: !980)
!980 = !{null, !86}
!981 = !{!982}
!982 = !DILocalVariable(name: "status", arg: 1, scope: !978, file: !2, line: 83, type: !86)
!983 = !DILocation(line: 0, scope: !978)
!984 = !DILocation(line: 85, column: 14, scope: !985)
!985 = distinct !DILexicalBlock(scope: !978, file: !2, line: 85, column: 7)
!986 = !DILocation(line: 85, column: 7, scope: !978)
!987 = !DILocation(line: 86, column: 5, scope: !988)
!988 = distinct !DILexicalBlock(scope: !985, file: !2, line: 86, column: 5)
!989 = !{!990, !990, i64 0}
!990 = !{!"any pointer", !991, i64 0}
!991 = !{!"omnipotent char", !992, i64 0}
!992 = !{!"Simple C/C++ TBAA"}
!993 = !DILocation(line: 89, column: 7, scope: !994)
!994 = distinct !DILexicalBlock(scope: !985, file: !2, line: 88, column: 5)
!995 = !DILocation(line: 93, column: 7, scope: !994)
!996 = !DILocation(line: 729, column: 3, scope: !997, inlinedAt: !999)
!997 = distinct !DISubprogram(name: "emit_stdin_note", scope: !92, file: !92, line: 727, type: !616, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !998)
!998 = !{}
!999 = distinct !DILocation(line: 97, column: 7, scope: !994)
!1000 = !DILocation(line: 99, column: 7, scope: !994)
!1001 = !DILocation(line: 102, column: 7, scope: !994)
!1002 = !DILocation(line: 105, column: 7, scope: !994)
!1003 = !DILocation(line: 108, column: 7, scope: !994)
!1004 = !DILocation(line: 111, column: 7, scope: !994)
!1005 = !DILocation(line: 114, column: 7, scope: !994)
!1006 = !DILocation(line: 117, column: 7, scope: !994)
!1007 = !DILocation(line: 120, column: 7, scope: !994)
!1008 = !DILocation(line: 123, column: 7, scope: !994)
!1009 = !DILocation(line: 126, column: 7, scope: !994)
!1010 = !DILocation(line: 129, column: 7, scope: !994)
!1011 = !DILocation(line: 130, column: 7, scope: !994)
!1012 = !DILocation(line: 131, column: 7, scope: !994)
!1013 = !DILocalVariable(name: "program", arg: 1, scope: !1014, file: !92, line: 836, type: !151)
!1014 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !92, file: !92, line: 836, type: !1015, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1017)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{null, !151}
!1017 = !{!1013, !1018, !1025, !1026, !1028, !1029}
!1018 = !DILocalVariable(name: "infomap", scope: !1014, file: !92, line: 838, type: !1019)
!1019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1020, size: 896, elements: !163)
!1020 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1021)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1014, file: !92, line: 838, size: 128, elements: !1022)
!1022 = !{!1023, !1024}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1021, file: !92, line: 838, baseType: !151, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1021, file: !92, line: 838, baseType: !151, size: 64, offset: 64)
!1025 = !DILocalVariable(name: "node", scope: !1014, file: !92, line: 848, type: !151)
!1026 = !DILocalVariable(name: "map_prog", scope: !1014, file: !92, line: 849, type: !1027)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1028 = !DILocalVariable(name: "lc_messages", scope: !1014, file: !92, line: 861, type: !151)
!1029 = !DILocalVariable(name: "url_program", scope: !1014, file: !92, line: 874, type: !151)
!1030 = !DILocation(line: 0, scope: !1014, inlinedAt: !1031)
!1031 = distinct !DILocation(line: 138, column: 7, scope: !994)
!1032 = !DILocation(line: 857, column: 3, scope: !1014, inlinedAt: !1031)
!1033 = !DILocation(line: 861, column: 29, scope: !1014, inlinedAt: !1031)
!1034 = !DILocation(line: 862, column: 7, scope: !1035, inlinedAt: !1031)
!1035 = distinct !DILexicalBlock(scope: !1014, file: !92, line: 862, column: 7)
!1036 = !DILocation(line: 862, column: 19, scope: !1035, inlinedAt: !1031)
!1037 = !DILocation(line: 862, column: 22, scope: !1035, inlinedAt: !1031)
!1038 = !DILocation(line: 862, column: 7, scope: !1014, inlinedAt: !1031)
!1039 = !DILocation(line: 868, column: 7, scope: !1040, inlinedAt: !1031)
!1040 = distinct !DILexicalBlock(scope: !1035, file: !92, line: 863, column: 5)
!1041 = !DILocation(line: 870, column: 5, scope: !1040, inlinedAt: !1031)
!1042 = !DILocation(line: 875, column: 3, scope: !1014, inlinedAt: !1031)
!1043 = !DILocation(line: 877, column: 3, scope: !1014, inlinedAt: !1031)
!1044 = !DILocation(line: 140, column: 3, scope: !978)
!1045 = !DISubprogram(name: "dcgettext", scope: !1046, file: !1046, line: 51, type: !1047, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !998)
!1046 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!88, !151, !151, !86}
!1049 = !DISubprogram(name: "__fprintf_chk", scope: !1050, file: !1050, line: 93, type: !1051, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !998)
!1050 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!86, !1053, !86, !1054, null}
!1053 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !288)
!1054 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !151)
!1055 = !DISubprogram(name: "__printf_chk", scope: !1050, file: !1050, line: 95, type: !1056, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !998)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!86, !86, !1054, null}
!1058 = !DISubprogram(name: "fputs_unlocked", scope: !517, file: !517, line: 691, type: !1059, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !998)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!86, !1054, !1053}
!1061 = !DILocation(line: 0, scope: !266)
!1062 = !DILocation(line: 581, column: 7, scope: !274)
!1063 = !{!1064, !1064, i64 0}
!1064 = !{!"int", !991, i64 0}
!1065 = !DILocation(line: 581, column: 19, scope: !274)
!1066 = !DILocation(line: 581, column: 7, scope: !266)
!1067 = !DILocation(line: 585, column: 26, scope: !273)
!1068 = !DILocation(line: 0, scope: !273)
!1069 = !DILocation(line: 586, column: 23, scope: !273)
!1070 = !DILocation(line: 586, column: 28, scope: !273)
!1071 = !DILocation(line: 586, column: 32, scope: !273)
!1072 = !{!991, !991, i64 0}
!1073 = !DILocation(line: 586, column: 38, scope: !273)
!1074 = !DILocalVariable(name: "__s1", arg: 1, scope: !1075, file: !1076, line: 1359, type: !151)
!1075 = distinct !DISubprogram(name: "streq", scope: !1076, file: !1076, line: 1359, type: !1077, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1079)
!1076 = !DIFile(filename: "./lib/string.h", directory: "/src")
!1077 = !DISubroutineType(types: !1078)
!1078 = !{!145, !151, !151}
!1079 = !{!1074, !1080}
!1080 = !DILocalVariable(name: "__s2", arg: 2, scope: !1075, file: !1076, line: 1359, type: !151)
!1081 = !DILocation(line: 0, scope: !1075, inlinedAt: !1082)
!1082 = distinct !DILocation(line: 586, column: 41, scope: !273)
!1083 = !DILocation(line: 1361, column: 11, scope: !1075, inlinedAt: !1082)
!1084 = !DILocation(line: 1361, column: 10, scope: !1075, inlinedAt: !1082)
!1085 = !DILocation(line: 586, column: 19, scope: !273)
!1086 = !DILocation(line: 587, column: 5, scope: !273)
!1087 = !DILocation(line: 588, column: 7, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !266, file: !92, line: 588, column: 7)
!1089 = !DILocation(line: 588, column: 7, scope: !266)
!1090 = !DILocation(line: 590, column: 7, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1088, file: !92, line: 589, column: 5)
!1092 = !DILocation(line: 591, column: 7, scope: !1091)
!1093 = !DILocation(line: 595, column: 37, scope: !266)
!1094 = !DILocation(line: 595, column: 35, scope: !266)
!1095 = !DILocation(line: 596, column: 29, scope: !266)
!1096 = !DILocation(line: 597, column: 8, scope: !281)
!1097 = !DILocation(line: 597, column: 7, scope: !266)
!1098 = !DILocation(line: 604, column: 24, scope: !280)
!1099 = !DILocation(line: 604, column: 12, scope: !281)
!1100 = !DILocation(line: 0, scope: !279)
!1101 = !DILocation(line: 610, column: 16, scope: !279)
!1102 = !DILocation(line: 610, column: 7, scope: !279)
!1103 = !DILocation(line: 611, column: 21, scope: !279)
!1104 = !{!1105, !1105, i64 0}
!1105 = !{!"short", !991, i64 0}
!1106 = !DILocation(line: 611, column: 19, scope: !279)
!1107 = !DILocation(line: 611, column: 16, scope: !279)
!1108 = !DILocation(line: 610, column: 30, scope: !279)
!1109 = distinct !{!1109, !1102, !1103, !1110}
!1110 = !{!"llvm.loop.mustprogress"}
!1111 = !DILocation(line: 612, column: 18, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !279, file: !92, line: 612, column: 11)
!1113 = !DILocation(line: 612, column: 11, scope: !279)
!1114 = !DILocation(line: 620, column: 23, scope: !266)
!1115 = !DILocation(line: 625, column: 39, scope: !266)
!1116 = !DILocation(line: 626, column: 3, scope: !266)
!1117 = !DILocation(line: 626, column: 10, scope: !266)
!1118 = !DILocation(line: 626, column: 21, scope: !266)
!1119 = !DILocation(line: 628, column: 44, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1121, file: !92, line: 628, column: 11)
!1121 = distinct !DILexicalBlock(scope: !266, file: !92, line: 627, column: 5)
!1122 = !DILocation(line: 628, column: 32, scope: !1120)
!1123 = !DILocation(line: 628, column: 49, scope: !1120)
!1124 = !DILocation(line: 628, column: 11, scope: !1121)
!1125 = !DILocation(line: 630, column: 11, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1121, file: !92, line: 630, column: 11)
!1127 = !DILocation(line: 630, column: 11, scope: !1121)
!1128 = !DILocation(line: 632, column: 26, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1130, file: !92, line: 632, column: 15)
!1130 = distinct !DILexicalBlock(scope: !1126, file: !92, line: 631, column: 9)
!1131 = !DILocation(line: 632, column: 34, scope: !1129)
!1132 = !DILocation(line: 632, column: 37, scope: !1129)
!1133 = !DILocation(line: 632, column: 15, scope: !1130)
!1134 = !DILocation(line: 640, column: 16, scope: !1121)
!1135 = distinct !{!1135, !1116, !1136, !1110}
!1136 = !DILocation(line: 641, column: 5, scope: !266)
!1137 = !DILocation(line: 644, column: 3, scope: !266)
!1138 = !DILocation(line: 0, scope: !1075, inlinedAt: !1139)
!1139 = distinct !DILocation(line: 648, column: 31, scope: !266)
!1140 = !DILocation(line: 0, scope: !1075, inlinedAt: !1141)
!1141 = distinct !DILocation(line: 649, column: 31, scope: !266)
!1142 = !DILocation(line: 0, scope: !1075, inlinedAt: !1143)
!1143 = distinct !DILocation(line: 650, column: 31, scope: !266)
!1144 = !DILocation(line: 0, scope: !1075, inlinedAt: !1145)
!1145 = distinct !DILocation(line: 651, column: 31, scope: !266)
!1146 = !DILocation(line: 0, scope: !1075, inlinedAt: !1147)
!1147 = distinct !DILocation(line: 652, column: 31, scope: !266)
!1148 = !DILocation(line: 0, scope: !1075, inlinedAt: !1149)
!1149 = distinct !DILocation(line: 653, column: 31, scope: !266)
!1150 = !DILocation(line: 0, scope: !1075, inlinedAt: !1151)
!1151 = distinct !DILocation(line: 654, column: 31, scope: !266)
!1152 = !DILocation(line: 0, scope: !1075, inlinedAt: !1153)
!1153 = distinct !DILocation(line: 655, column: 31, scope: !266)
!1154 = !DILocation(line: 0, scope: !1075, inlinedAt: !1155)
!1155 = distinct !DILocation(line: 656, column: 31, scope: !266)
!1156 = !DILocation(line: 0, scope: !1075, inlinedAt: !1157)
!1157 = distinct !DILocation(line: 657, column: 31, scope: !266)
!1158 = !DILocation(line: 663, column: 7, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !266, file: !92, line: 663, column: 7)
!1160 = !DILocation(line: 664, column: 7, scope: !1159)
!1161 = !DILocation(line: 664, column: 10, scope: !1159)
!1162 = !DILocation(line: 663, column: 7, scope: !266)
!1163 = !DILocation(line: 669, column: 7, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1159, file: !92, line: 665, column: 5)
!1165 = !DILocation(line: 671, column: 5, scope: !1164)
!1166 = !DILocation(line: 676, column: 7, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1159, file: !92, line: 673, column: 5)
!1168 = !DILocation(line: 679, column: 3, scope: !266)
!1169 = !DILocation(line: 683, column: 3, scope: !266)
!1170 = !DILocation(line: 686, column: 3, scope: !266)
!1171 = !DILocation(line: 688, column: 3, scope: !266)
!1172 = !DILocation(line: 691, column: 3, scope: !266)
!1173 = !DILocation(line: 695, column: 3, scope: !266)
!1174 = !DILocation(line: 696, column: 1, scope: !266)
!1175 = !DISubprogram(name: "setlocale", scope: !1176, file: !1176, line: 122, type: !1177, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !998)
!1176 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!88, !86, !151}
!1179 = !DISubprogram(name: "strncmp", scope: !1180, file: !1180, line: 159, type: !1181, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !998)
!1180 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!86, !151, !151, !149}
!1183 = !DISubprogram(name: "exit", scope: !1184, file: !1184, line: 624, type: !979, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !998)
!1184 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1185 = !DISubprogram(name: "getenv", scope: !1184, file: !1184, line: 641, type: !1186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !998)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!88, !151}
!1188 = !DISubprogram(name: "strcmp", scope: !1180, file: !1180, line: 156, type: !1189, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !998)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{!86, !151, !151}
!1191 = !DISubprogram(name: "strspn", scope: !1180, file: !1180, line: 297, type: !1192, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !998)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{!147, !151, !151}
!1194 = !DISubprogram(name: "strchr", scope: !1180, file: !1180, line: 246, type: !1195, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !998)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{!88, !151, !86}
!1197 = !DISubprogram(name: "__ctype_b_loc", scope: !121, file: !121, line: 79, type: !1198, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !998)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{!1200}
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !148)
!1203 = !DISubprogram(name: "strcspn", scope: !1180, file: !1180, line: 293, type: !1192, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !998)
!1204 = !DISubprogram(name: "fwrite_unlocked", scope: !517, file: !517, line: 704, type: !1205, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !998)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{!149, !1207, !149, !149, !1053}
!1207 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1208)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1210 = !DILocation(line: 0, scope: !83)
!1211 = !DILocation(line: 555, column: 3, scope: !83)
!1212 = !DILocation(line: 555, column: 15, scope: !83)
!1213 = !DILocation(line: 581, column: 21, scope: !83)
!1214 = !DILocation(line: 581, column: 3, scope: !83)
!1215 = !DILocation(line: 582, column: 3, scope: !83)
!1216 = !DILocation(line: 583, column: 3, scope: !83)
!1217 = !DILocation(line: 584, column: 3, scope: !83)
!1218 = !DILocation(line: 590, column: 3, scope: !83)
!1219 = !DILocation(line: 595, column: 3, scope: !83)
!1220 = !DILocation(line: 595, column: 15, scope: !83)
!1221 = distinct !{!1221, !1219, !1222, !1110}
!1222 = !DILocation(line: 652, column: 5, scope: !83)
!1223 = !DILocation(line: 603, column: 11, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1225, file: !2, line: 599, column: 9)
!1225 = distinct !DILexicalBlock(scope: !83, file: !2, line: 597, column: 5)
!1226 = !DILocation(line: 608, column: 11, scope: !1224)
!1227 = !DILocation(line: 612, column: 11, scope: !1224)
!1228 = !DILocation(line: 616, column: 11, scope: !1224)
!1229 = !DILocation(line: 621, column: 11, scope: !1224)
!1230 = !DILocation(line: 629, column: 11, scope: !1224)
!1231 = !DILocation(line: 635, column: 11, scope: !1224)
!1232 = !DILocation(line: 639, column: 11, scope: !1224)
!1233 = !DILocation(line: 643, column: 11, scope: !1224)
!1234 = !DILocation(line: 645, column: 9, scope: !1224)
!1235 = !DILocation(line: 647, column: 9, scope: !1224)
!1236 = !DILocation(line: 650, column: 11, scope: !1224)
!1237 = !DILocation(line: 656, column: 7, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !83, file: !2, line: 656, column: 7)
!1239 = !DILocation(line: 656, column: 41, scope: !1238)
!1240 = !DILocation(line: 656, column: 7, scope: !83)
!1241 = !DILocation(line: 657, column: 5, scope: !1238)
!1242 = !DILocalVariable(name: "st", arg: 1, scope: !1243, file: !136, line: 81, type: !1246)
!1243 = distinct !DISubprogram(name: "io_blksize", scope: !136, file: !136, line: 81, type: !1244, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1248)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{!501, !1246}
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !457)
!1248 = !{!1242, !1249, !1250, !1253}
!1249 = !DILocalVariable(name: "blocksize", scope: !1243, file: !136, line: 84, type: !501)
!1250 = !DILocalVariable(name: "leading_zeros", scope: !1251, file: !136, line: 98, type: !86)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !136, line: 97, column: 5)
!1252 = distinct !DILexicalBlock(scope: !1243, file: !136, line: 96, column: 7)
!1253 = !DILocalVariable(name: "power", scope: !1254, file: !136, line: 101, type: !1256)
!1254 = distinct !DILexicalBlock(scope: !1255, file: !136, line: 100, column: 9)
!1255 = distinct !DILexicalBlock(scope: !1251, file: !136, line: 99, column: 11)
!1256 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!1257 = !DILocation(line: 0, scope: !1243, inlinedAt: !1258)
!1258 = distinct !DILocation(line: 660, column: 19, scope: !83)
!1259 = !DILocation(line: 84, column: 21, scope: !1243, inlinedAt: !1258)
!1260 = !{!1261, !1064, i64 56}
!1261 = !{!"stat", !1262, i64 0, !1262, i64 8, !1064, i64 16, !1064, i64 20, !1064, i64 24, !1064, i64 28, !1262, i64 32, !1262, i64 40, !1262, i64 48, !1064, i64 56, !1064, i64 60, !1262, i64 64, !1263, i64 72, !1263, i64 88, !1263, i64 104, !991, i64 120}
!1262 = !{!"long", !991, i64 0}
!1263 = !{!"timespec", !1262, i64 0, !1262, i64 8}
!1264 = !DILocation(line: 84, column: 58, scope: !1243, inlinedAt: !1258)
!1265 = !DILocation(line: 88, column: 52, scope: !1243, inlinedAt: !1258)
!1266 = !DILocation(line: 88, column: 33, scope: !1243, inlinedAt: !1258)
!1267 = !DILocation(line: 88, column: 13, scope: !1243, inlinedAt: !1258)
!1268 = !DILocation(line: 96, column: 7, scope: !1252, inlinedAt: !1258)
!1269 = !{!1261, !1064, i64 16}
!1270 = !{i64 0, i64 34}
!1271 = !DILocation(line: 96, column: 29, scope: !1252, inlinedAt: !1258)
!1272 = !DILocalVariable(name: "n", arg: 1, scope: !1273, file: !1274, line: 436, type: !1256)
!1273 = distinct !DISubprogram(name: "stdc_leading_zeros_ull", scope: !1274, file: !1274, line: 436, type: !1275, scopeLine: 437, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1277)
!1274 = !DIFile(filename: "./lib/stdbit.h", directory: "/src", checksumkind: CSK_MD5, checksum: "22a94c18744c4eadd69210db6ede4b9c")
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!98, !1256}
!1277 = !{!1272}
!1278 = !DILocation(line: 0, scope: !1273, inlinedAt: !1279)
!1279 = distinct !DILocation(line: 98, column: 27, scope: !1251, inlinedAt: !1258)
!1280 = !DILocalVariable(name: "n", arg: 1, scope: !1281, file: !1274, line: 149, type: !1256)
!1281 = distinct !DISubprogram(name: "_gl_stdbit_clzll", scope: !1274, file: !1274, line: 149, type: !1282, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1284)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{!86, !1256}
!1284 = !{!1280}
!1285 = !DILocation(line: 0, scope: !1281, inlinedAt: !1286)
!1286 = distinct !DILocation(line: 438, column: 10, scope: !1273, inlinedAt: !1279)
!1287 = !DILocation(line: 151, column: 10, scope: !1281, inlinedAt: !1286)
!1288 = !{i64 0, i64 65}
!1289 = !DILocation(line: 0, scope: !1251, inlinedAt: !1258)
!1290 = !DILocation(line: 0, scope: !1254, inlinedAt: !1258)
!1291 = !DILocation(line: 102, column: 21, scope: !1292, inlinedAt: !1258)
!1292 = distinct !DILexicalBlock(scope: !1254, file: !136, line: 102, column: 15)
!1293 = !DILocation(line: 102, column: 15, scope: !1254, inlinedAt: !1258)
!1294 = !DILocation(line: 105, column: 5, scope: !1251, inlinedAt: !1258)
!1295 = !DILocation(line: 110, column: 10, scope: !1243, inlinedAt: !1258)
!1296 = !DILocation(line: 666, column: 20, scope: !83)
!1297 = !DILocation(line: 668, column: 17, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !83, file: !2, line: 668, column: 7)
!1299 = !DILocation(line: 676, column: 10, scope: !83)
!1300 = !DILocation(line: 677, column: 16, scope: !83)
!1301 = !DILocation(line: 679, column: 21, scope: !83)
!1302 = !DILocation(line: 681, column: 3, scope: !83)
!1303 = !DILocation(line: 663, column: 7, scope: !83)
!1304 = !DILocation(line: 683, column: 18, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !510, file: !2, line: 683, column: 11)
!1306 = !DILocation(line: 683, column: 11, scope: !510)
!1307 = !DILocation(line: 686, column: 35, scope: !510)
!1308 = !DILocation(line: 684, column: 18, scope: !1305)
!1309 = !DILocation(line: 684, column: 16, scope: !1305)
!1310 = !DILocation(line: 684, column: 9, scope: !1305)
!1311 = !DILocation(line: 0, scope: !1075, inlinedAt: !1312)
!1312 = distinct !DILocation(line: 686, column: 28, scope: !510)
!1313 = !DILocation(line: 1361, column: 11, scope: !1075, inlinedAt: !1312)
!1314 = !DILocation(line: 1361, column: 10, scope: !1075, inlinedAt: !1312)
!1315 = !DILocation(line: 0, scope: !510)
!1316 = !DILocation(line: 687, column: 11, scope: !510)
!1317 = !DILocation(line: 690, column: 22, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1319, file: !2, line: 688, column: 9)
!1319 = distinct !DILexicalBlock(scope: !510, file: !2, line: 687, column: 11)
!1320 = !DILocation(line: 696, column: 24, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1319, file: !2, line: 695, column: 9)
!1322 = !DILocation(line: 696, column: 22, scope: !1321)
!1323 = !DILocation(line: 697, column: 26, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1321, file: !2, line: 697, column: 15)
!1325 = !DILocation(line: 697, column: 15, scope: !1321)
!1326 = !DILocation(line: 699, column: 15, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1324, file: !2, line: 698, column: 13)
!1328 = !DILocation(line: 701, column: 15, scope: !1327)
!1329 = !DILocation(line: 706, column: 18, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !510, file: !2, line: 706, column: 11)
!1331 = !DILocation(line: 705, column: 7, scope: !510)
!1332 = !DILocation(line: 705, column: 19, scope: !510)
!1333 = !DILocation(line: 706, column: 11, scope: !1330)
!1334 = !DILocation(line: 706, column: 42, scope: !1330)
!1335 = !DILocation(line: 706, column: 11, scope: !510)
!1336 = !DILocation(line: 708, column: 11, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1330, file: !2, line: 707, column: 9)
!1338 = !DILocation(line: 710, column: 11, scope: !1337)
!1339 = !DILocation(line: 0, scope: !1243, inlinedAt: !1340)
!1340 = distinct !DILocation(line: 714, column: 22, scope: !510)
!1341 = !DILocation(line: 84, column: 21, scope: !1243, inlinedAt: !1340)
!1342 = !DILocation(line: 84, column: 58, scope: !1243, inlinedAt: !1340)
!1343 = !DILocation(line: 88, column: 52, scope: !1243, inlinedAt: !1340)
!1344 = !DILocation(line: 88, column: 33, scope: !1243, inlinedAt: !1340)
!1345 = !DILocation(line: 88, column: 13, scope: !1243, inlinedAt: !1340)
!1346 = !DILocation(line: 96, column: 7, scope: !1252, inlinedAt: !1340)
!1347 = !DILocation(line: 96, column: 29, scope: !1252, inlinedAt: !1340)
!1348 = !DILocation(line: 0, scope: !1273, inlinedAt: !1349)
!1349 = distinct !DILocation(line: 98, column: 27, scope: !1251, inlinedAt: !1340)
!1350 = !DILocation(line: 0, scope: !1281, inlinedAt: !1351)
!1351 = distinct !DILocation(line: 438, column: 10, scope: !1273, inlinedAt: !1349)
!1352 = !DILocation(line: 151, column: 10, scope: !1281, inlinedAt: !1351)
!1353 = !DILocation(line: 0, scope: !1251, inlinedAt: !1340)
!1354 = !DILocation(line: 0, scope: !1254, inlinedAt: !1340)
!1355 = !DILocation(line: 102, column: 21, scope: !1292, inlinedAt: !1340)
!1356 = !DILocation(line: 102, column: 15, scope: !1254, inlinedAt: !1340)
!1357 = !DILocation(line: 110, column: 10, scope: !1243, inlinedAt: !1340)
!1358 = !DILocation(line: 716, column: 17, scope: !510)
!1359 = !DILocation(line: 716, column: 7, scope: !510)
!1360 = !DILocation(line: 722, column: 43, scope: !515)
!1361 = !DILocation(line: 725, column: 14, scope: !515)
!1362 = !{!1261, !1262, i64 0}
!1363 = !{!1261, !1262, i64 8}
!1364 = !DILocation(line: 722, column: 11, scope: !510)
!1365 = !DILocation(line: 727, column: 33, scope: !514)
!1366 = !DILocation(line: 727, column: 26, scope: !514)
!1367 = !DILocation(line: 0, scope: !514)
!1368 = !DILocation(line: 728, column: 17, scope: !520)
!1369 = !DILocation(line: 728, column: 15, scope: !514)
!1370 = !DILocation(line: 730, column: 29, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !519, file: !2, line: 730, column: 19)
!1372 = !DILocation(line: 730, column: 19, scope: !519)
!1373 = !DILocation(line: 731, column: 29, scope: !1371)
!1374 = !DILocation(line: 731, column: 17, scope: !1371)
!1375 = !DILocation(line: 732, column: 44, scope: !519)
!1376 = !DILocation(line: 732, column: 29, scope: !519)
!1377 = !DILocation(line: 0, scope: !519)
!1378 = !DILocation(line: 734, column: 28, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !519, file: !2, line: 734, column: 19)
!1380 = !DILocation(line: 734, column: 26, scope: !1379)
!1381 = !DILocation(line: 734, column: 19, scope: !519)
!1382 = !DILocation(line: 736, column: 19, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1379, file: !2, line: 735, column: 17)
!1384 = !DILocation(line: 751, column: 21, scope: !524)
!1385 = !DILocation(line: 755, column: 23, scope: !523)
!1386 = !DILocalVariable(name: "copy_max", scope: !1387, file: !2, line: 523, type: !1393)
!1387 = distinct !DISubprogram(name: "copy_cat", scope: !2, file: !2, line: 518, type: !1388, scopeLine: 519, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1390)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!86}
!1390 = !{!1386, !1391}
!1391 = !DILocalVariable(name: "some_copied", scope: !1392, file: !2, line: 531, type: !145)
!1392 = distinct !DILexicalBlock(scope: !1387, file: !2, line: 531, column: 3)
!1393 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !517, line: 77, baseType: !1394)
!1394 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !315, line: 194, baseType: !146)
!1395 = !DILocation(line: 0, scope: !1387, inlinedAt: !1396)
!1396 = distinct !DILocation(line: 755, column: 56, scope: !523)
!1397 = !DILocation(line: 0, scope: !1392, inlinedAt: !1396)
!1398 = !DILocation(line: 532, column: 30, scope: !1399, inlinedAt: !1396)
!1399 = distinct !DILexicalBlock(scope: !1392, file: !2, line: 531, column: 3)
!1400 = !DILocation(line: 532, column: 13, scope: !1399, inlinedAt: !1396)
!1401 = !DILocation(line: 532, column: 5, scope: !1399, inlinedAt: !1396)
!1402 = distinct !{!1402, !1403, !1404, !1405}
!1403 = !DILocation(line: 531, column: 3, scope: !1392, inlinedAt: !1396)
!1404 = !DILocation(line: 545, column: 7, scope: !1392, inlinedAt: !1396)
!1405 = !{!"llvm.loop.peeled.count", i32 1}
!1406 = !DILocation(line: 539, column: 13, scope: !1407, inlinedAt: !1396)
!1407 = distinct !DILexicalBlock(scope: !1408, file: !2, line: 539, column: 13)
!1408 = distinct !DILexicalBlock(scope: !1399, file: !2, line: 534, column: 7)
!1409 = !DILocation(line: 539, column: 29, scope: !1407, inlinedAt: !1396)
!1410 = !DILocation(line: 543, column: 9, scope: !1408, inlinedAt: !1396)
!1411 = !DILocation(line: 544, column: 9, scope: !1408, inlinedAt: !1396)
!1412 = !DILocation(line: 0, scope: !523)
!1413 = !DILocation(line: 763, column: 24, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1415, file: !2, line: 762, column: 13)
!1415 = distinct !DILexicalBlock(scope: !523, file: !2, line: 756, column: 15)
!1416 = !DILocation(line: 764, column: 23, scope: !1414)
!1417 = !DILocalVariable(name: "buf", arg: 1, scope: !1418, file: !2, line: 170, type: !88)
!1418 = distinct !DISubprogram(name: "simple_cat", scope: !2, file: !2, line: 170, type: !1419, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1421)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{!145, !88, !501}
!1421 = !{!1417, !1422, !1423}
!1422 = !DILocalVariable(name: "bufsize", arg: 2, scope: !1418, file: !2, line: 170, type: !501)
!1423 = !DILocalVariable(name: "n_read", scope: !1424, file: !2, line: 178, type: !1393)
!1424 = distinct !DILexicalBlock(scope: !1418, file: !2, line: 175, column: 5)
!1425 = !DILocation(line: 0, scope: !1418, inlinedAt: !1426)
!1426 = distinct !DILocation(line: 765, column: 21, scope: !1414)
!1427 = !DILocation(line: 174, column: 3, scope: !1418, inlinedAt: !1426)
!1428 = !DILocation(line: 178, column: 30, scope: !1424, inlinedAt: !1426)
!1429 = !DILocation(line: 178, column: 24, scope: !1424, inlinedAt: !1426)
!1430 = !DILocation(line: 0, scope: !1424, inlinedAt: !1426)
!1431 = !DILocation(line: 179, column: 18, scope: !1432, inlinedAt: !1426)
!1432 = distinct !DILexicalBlock(scope: !1424, file: !2, line: 179, column: 11)
!1433 = !DILocation(line: 179, column: 11, scope: !1424, inlinedAt: !1426)
!1434 = !DILocation(line: 181, column: 11, scope: !1435, inlinedAt: !1426)
!1435 = distinct !DILexicalBlock(scope: !1432, file: !2, line: 180, column: 9)
!1436 = !DILocation(line: 182, column: 11, scope: !1435, inlinedAt: !1426)
!1437 = !DILocation(line: 187, column: 18, scope: !1438, inlinedAt: !1426)
!1438 = distinct !DILexicalBlock(scope: !1424, file: !2, line: 187, column: 11)
!1439 = !DILocation(line: 187, column: 11, scope: !1424, inlinedAt: !1426)
!1440 = !DILocation(line: 192, column: 11, scope: !1441, inlinedAt: !1426)
!1441 = distinct !DILexicalBlock(scope: !1424, file: !2, line: 192, column: 11)
!1442 = !DILocation(line: 192, column: 51, scope: !1441, inlinedAt: !1426)
!1443 = !DILocation(line: 192, column: 11, scope: !1424, inlinedAt: !1426)
!1444 = !DILocation(line: 948, column: 21, scope: !1445, inlinedAt: !1448)
!1445 = distinct !DISubprogram(name: "write_error", scope: !92, file: !92, line: 946, type: !616, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1446)
!1446 = !{!1447}
!1447 = !DILocalVariable(name: "saved_errno", scope: !1445, file: !92, line: 948, type: !86)
!1448 = distinct !DILocation(line: 193, column: 9, scope: !1441, inlinedAt: !1426)
!1449 = !DILocation(line: 0, scope: !1445, inlinedAt: !1448)
!1450 = !DILocation(line: 949, column: 3, scope: !1445, inlinedAt: !1448)
!1451 = !DILocation(line: 950, column: 11, scope: !1445, inlinedAt: !1448)
!1452 = !DILocation(line: 950, column: 3, scope: !1445, inlinedAt: !1448)
!1453 = !DILocation(line: 951, column: 3, scope: !1445, inlinedAt: !1448)
!1454 = !DILocation(line: 952, column: 3, scope: !1445, inlinedAt: !1448)
!1455 = !DILocation(line: 771, column: 50, scope: !526)
!1456 = !DILocation(line: 771, column: 19, scope: !526)
!1457 = !DILocation(line: 0, scope: !526)
!1458 = !DILocation(line: 795, column: 15, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !526, file: !2, line: 795, column: 15)
!1460 = !DILocation(line: 796, column: 18, scope: !1459)
!1461 = !DILocation(line: 797, column: 15, scope: !1459)
!1462 = !DILocation(line: 797, column: 18, scope: !1459)
!1463 = !DILocation(line: 795, column: 15, scope: !526)
!1464 = !DILocation(line: 798, column: 13, scope: !1459)
!1465 = !DILocation(line: 799, column: 26, scope: !526)
!1466 = !DILocalVariable(name: "inbuf", arg: 1, scope: !1467, file: !2, line: 226, type: !88)
!1467 = distinct !DISubprogram(name: "cat", scope: !2, file: !2, line: 226, type: !1468, scopeLine: 229, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1470)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{!145, !88, !501, !88, !501, !145, !145, !145, !145, !145, !145}
!1470 = !{!1466, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1491, !1492, !1495, !1496}
!1471 = !DILocalVariable(name: "insize", arg: 2, scope: !1467, file: !2, line: 226, type: !501)
!1472 = !DILocalVariable(name: "outbuf", arg: 3, scope: !1467, file: !2, line: 226, type: !88)
!1473 = !DILocalVariable(name: "outsize", arg: 4, scope: !1467, file: !2, line: 226, type: !501)
!1474 = !DILocalVariable(name: "show_nonprinting", arg: 5, scope: !1467, file: !2, line: 227, type: !145)
!1475 = !DILocalVariable(name: "show_tabs", arg: 6, scope: !1467, file: !2, line: 227, type: !145)
!1476 = !DILocalVariable(name: "number", arg: 7, scope: !1467, file: !2, line: 227, type: !145)
!1477 = !DILocalVariable(name: "number_nonblank", arg: 8, scope: !1467, file: !2, line: 227, type: !145)
!1478 = !DILocalVariable(name: "show_ends", arg: 9, scope: !1467, file: !2, line: 228, type: !145)
!1479 = !DILocalVariable(name: "squeeze_blank", arg: 10, scope: !1467, file: !2, line: 228, type: !145)
!1480 = !DILocalVariable(name: "ch", scope: !1467, file: !2, line: 231, type: !153)
!1481 = !DILocalVariable(name: "newlines", scope: !1467, file: !2, line: 238, type: !86)
!1482 = !DILocalVariable(name: "use_fionread", scope: !1467, file: !2, line: 243, type: !145)
!1483 = !DILocalVariable(name: "eob", scope: !1467, file: !2, line: 251, type: !88)
!1484 = !DILocalVariable(name: "bpin", scope: !1467, file: !2, line: 254, type: !88)
!1485 = !DILocalVariable(name: "bpout", scope: !1467, file: !2, line: 257, type: !88)
!1486 = !DILocalVariable(name: "wp", scope: !1487, file: !2, line: 267, type: !88)
!1487 = distinct !DILexicalBlock(scope: !1488, file: !2, line: 266, column: 13)
!1488 = distinct !DILexicalBlock(scope: !1489, file: !2, line: 265, column: 15)
!1489 = distinct !DILexicalBlock(scope: !1490, file: !2, line: 262, column: 9)
!1490 = distinct !DILexicalBlock(scope: !1467, file: !2, line: 260, column: 5)
!1491 = !DILocalVariable(name: "remaining_bytes", scope: !1487, file: !2, line: 268, type: !501)
!1492 = !DILocalVariable(name: "input_pending", scope: !1493, file: !2, line: 289, type: !145)
!1493 = distinct !DILexicalBlock(scope: !1494, file: !2, line: 288, column: 13)
!1494 = distinct !DILexicalBlock(scope: !1489, file: !2, line: 287, column: 15)
!1495 = !DILocalVariable(name: "n_to_read", scope: !1493, file: !2, line: 291, type: !86)
!1496 = !DILocalVariable(name: "n_read", scope: !1493, file: !2, line: 327, type: !1393)
!1497 = !DILocation(line: 0, scope: !1467, inlinedAt: !1498)
!1498 = distinct !DILocation(line: 801, column: 17, scope: !526)
!1499 = !DILocation(line: 238, column: 18, scope: !1467, inlinedAt: !1498)
!1500 = !DILocation(line: 254, column: 20, scope: !1467, inlinedAt: !1498)
!1501 = !DILocation(line: 259, column: 3, scope: !1467, inlinedAt: !1498)
!1502 = !DILocation(line: 257, column: 9, scope: !1467, inlinedAt: !1498)
!1503 = !DILocation(line: 238, column: 7, scope: !1467, inlinedAt: !1498)
!1504 = !DILocation(line: 251, column: 9, scope: !1467, inlinedAt: !1498)
!1505 = !DILocation(line: 265, column: 32, scope: !1488, inlinedAt: !1498)
!1506 = !DILocation(line: 265, column: 15, scope: !1489, inlinedAt: !1498)
!1507 = !DILocation(line: 269, column: 15, scope: !1487, inlinedAt: !1498)
!1508 = !DILocation(line: 0, scope: !1487, inlinedAt: !1498)
!1509 = !DILocation(line: 271, column: 23, scope: !1510, inlinedAt: !1498)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !2, line: 271, column: 23)
!1511 = distinct !DILexicalBlock(scope: !1487, file: !2, line: 270, column: 17)
!1512 = !DILocation(line: 271, column: 63, scope: !1510, inlinedAt: !1498)
!1513 = !DILocation(line: 271, column: 23, scope: !1511, inlinedAt: !1498)
!1514 = !DILocation(line: 948, column: 21, scope: !1445, inlinedAt: !1515)
!1515 = distinct !DILocation(line: 272, column: 21, scope: !1510, inlinedAt: !1498)
!1516 = !DILocation(line: 0, scope: !1445, inlinedAt: !1515)
!1517 = !DILocation(line: 949, column: 3, scope: !1445, inlinedAt: !1515)
!1518 = !DILocation(line: 950, column: 11, scope: !1445, inlinedAt: !1515)
!1519 = !DILocation(line: 950, column: 3, scope: !1445, inlinedAt: !1515)
!1520 = !DILocation(line: 951, column: 3, scope: !1445, inlinedAt: !1515)
!1521 = !DILocation(line: 952, column: 3, scope: !1445, inlinedAt: !1515)
!1522 = !DILocation(line: 273, column: 22, scope: !1511, inlinedAt: !1498)
!1523 = !DILocation(line: 274, column: 43, scope: !1511, inlinedAt: !1498)
!1524 = !DILocation(line: 276, column: 30, scope: !1487, inlinedAt: !1498)
!1525 = !DILocation(line: 275, column: 17, scope: !1511, inlinedAt: !1498)
!1526 = distinct !{!1526, !1507, !1527, !1110}
!1527 = !DILocation(line: 276, column: 48, scope: !1487, inlinedAt: !1498)
!1528 = !DILocalVariable(name: "__dest", arg: 1, scope: !1529, file: !1530, line: 34, type: !144)
!1529 = distinct !DISubprogram(name: "memmove", scope: !1530, file: !1530, line: 34, type: !1531, scopeLine: 35, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1533)
!1530 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1531 = !DISubroutineType(types: !1532)
!1532 = !{!144, !144, !1208, !149}
!1533 = !{!1528, !1534, !1535}
!1534 = !DILocalVariable(name: "__src", arg: 2, scope: !1529, file: !1530, line: 34, type: !1208)
!1535 = !DILocalVariable(name: "__len", arg: 3, scope: !1529, file: !1530, line: 34, type: !149)
!1536 = !DILocation(line: 0, scope: !1529, inlinedAt: !1537)
!1537 = distinct !DILocation(line: 281, column: 15, scope: !1487, inlinedAt: !1498)
!1538 = !DILocation(line: 36, column: 10, scope: !1529, inlinedAt: !1537)
!1539 = !DILocation(line: 282, column: 30, scope: !1487, inlinedAt: !1498)
!1540 = !DILocation(line: 283, column: 13, scope: !1487, inlinedAt: !1498)
!1541 = !DILocation(line: 287, column: 20, scope: !1494, inlinedAt: !1498)
!1542 = !DILocation(line: 287, column: 15, scope: !1489, inlinedAt: !1498)
!1543 = !DILocation(line: 0, scope: !1493, inlinedAt: !1498)
!1544 = !DILocation(line: 291, column: 15, scope: !1493, inlinedAt: !1498)
!1545 = !DILocation(line: 291, column: 19, scope: !1493, inlinedAt: !1498)
!1546 = !DILocation(line: 298, column: 19, scope: !1547, inlinedAt: !1498)
!1547 = distinct !DILexicalBlock(scope: !1493, file: !2, line: 297, column: 19)
!1548 = !DILocation(line: 298, column: 29, scope: !1547, inlinedAt: !1498)
!1549 = !DILocation(line: 298, column: 22, scope: !1547, inlinedAt: !1498)
!1550 = !DILocation(line: 298, column: 63, scope: !1547, inlinedAt: !1498)
!1551 = !DILocation(line: 297, column: 19, scope: !1493, inlinedAt: !1498)
!1552 = !DILocation(line: 306, column: 23, scope: !1553, inlinedAt: !1498)
!1553 = distinct !DILexicalBlock(scope: !1554, file: !2, line: 306, column: 23)
!1554 = distinct !DILexicalBlock(scope: !1547, file: !2, line: 299, column: 17)
!1555 = !DILocation(line: 306, column: 43, scope: !1553, inlinedAt: !1498)
!1556 = !DILocation(line: 312, column: 23, scope: !1557, inlinedAt: !1498)
!1557 = distinct !DILexicalBlock(scope: !1553, file: !2, line: 311, column: 21)
!1558 = !DILocation(line: 315, column: 23, scope: !1557, inlinedAt: !1498)
!1559 = !DILocation(line: 318, column: 19, scope: !1560, inlinedAt: !1498)
!1560 = distinct !DILexicalBlock(scope: !1493, file: !2, line: 318, column: 19)
!1561 = !DILocation(line: 318, column: 29, scope: !1560, inlinedAt: !1498)
!1562 = !DILocation(line: 322, column: 19, scope: !1493, inlinedAt: !1498)
!1563 = !DILocalVariable(name: "outbuf", arg: 1, scope: !1564, file: !2, line: 202, type: !88)
!1564 = distinct !DISubprogram(name: "write_pending", scope: !2, file: !2, line: 202, type: !1565, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1567)
!1565 = !DISubroutineType(types: !1566)
!1566 = !{null, !88, !87}
!1567 = !{!1563, !1568, !1569}
!1568 = !DILocalVariable(name: "bpout", arg: 2, scope: !1564, file: !2, line: 202, type: !87)
!1569 = !DILocalVariable(name: "n_write", scope: !1564, file: !2, line: 204, type: !501)
!1570 = !DILocation(line: 0, scope: !1564, inlinedAt: !1571)
!1571 = distinct !DILocation(line: 323, column: 17, scope: !1572, inlinedAt: !1498)
!1572 = distinct !DILexicalBlock(scope: !1493, file: !2, line: 322, column: 19)
!1573 = !DILocation(line: 204, column: 26, scope: !1564, inlinedAt: !1571)
!1574 = !DILocation(line: 205, column: 9, scope: !1575, inlinedAt: !1571)
!1575 = distinct !DILexicalBlock(scope: !1564, file: !2, line: 205, column: 7)
!1576 = !DILocation(line: 205, column: 7, scope: !1564, inlinedAt: !1571)
!1577 = !DILocation(line: 207, column: 11, scope: !1578, inlinedAt: !1571)
!1578 = distinct !DILexicalBlock(scope: !1579, file: !2, line: 207, column: 11)
!1579 = distinct !DILexicalBlock(scope: !1575, file: !2, line: 206, column: 5)
!1580 = !DILocation(line: 207, column: 55, scope: !1578, inlinedAt: !1571)
!1581 = !DILocation(line: 207, column: 11, scope: !1579, inlinedAt: !1571)
!1582 = !DILocation(line: 948, column: 21, scope: !1445, inlinedAt: !1583)
!1583 = distinct !DILocation(line: 208, column: 9, scope: !1578, inlinedAt: !1571)
!1584 = !DILocation(line: 0, scope: !1445, inlinedAt: !1583)
!1585 = !DILocation(line: 949, column: 3, scope: !1445, inlinedAt: !1583)
!1586 = !DILocation(line: 950, column: 11, scope: !1445, inlinedAt: !1583)
!1587 = !DILocation(line: 950, column: 3, scope: !1445, inlinedAt: !1583)
!1588 = !DILocation(line: 951, column: 3, scope: !1445, inlinedAt: !1583)
!1589 = !DILocation(line: 952, column: 3, scope: !1445, inlinedAt: !1583)
!1590 = !DILocation(line: 327, column: 38, scope: !1493, inlinedAt: !1498)
!1591 = !DILocation(line: 327, column: 32, scope: !1493, inlinedAt: !1498)
!1592 = !DILocation(line: 328, column: 26, scope: !1593, inlinedAt: !1498)
!1593 = distinct !DILexicalBlock(scope: !1493, file: !2, line: 328, column: 19)
!1594 = !DILocation(line: 328, column: 19, scope: !1493, inlinedAt: !1498)
!1595 = !DILocation(line: 330, column: 19, scope: !1596, inlinedAt: !1498)
!1596 = distinct !DILexicalBlock(scope: !1593, file: !2, line: 329, column: 17)
!1597 = !DILocation(line: 0, scope: !1564, inlinedAt: !1598)
!1598 = distinct !DILocation(line: 331, column: 19, scope: !1596, inlinedAt: !1498)
!1599 = !DILocation(line: 204, column: 26, scope: !1564, inlinedAt: !1598)
!1600 = !DILocation(line: 205, column: 9, scope: !1575, inlinedAt: !1598)
!1601 = !DILocation(line: 205, column: 7, scope: !1564, inlinedAt: !1598)
!1602 = !DILocation(line: 207, column: 11, scope: !1578, inlinedAt: !1598)
!1603 = !DILocation(line: 207, column: 55, scope: !1578, inlinedAt: !1598)
!1604 = !DILocation(line: 207, column: 11, scope: !1579, inlinedAt: !1598)
!1605 = !DILocation(line: 948, column: 21, scope: !1445, inlinedAt: !1606)
!1606 = distinct !DILocation(line: 208, column: 9, scope: !1578, inlinedAt: !1598)
!1607 = !DILocation(line: 0, scope: !1445, inlinedAt: !1606)
!1608 = !DILocation(line: 949, column: 3, scope: !1445, inlinedAt: !1606)
!1609 = !DILocation(line: 950, column: 11, scope: !1445, inlinedAt: !1606)
!1610 = !DILocation(line: 950, column: 3, scope: !1445, inlinedAt: !1606)
!1611 = !DILocation(line: 951, column: 3, scope: !1445, inlinedAt: !1606)
!1612 = !DILocation(line: 952, column: 3, scope: !1445, inlinedAt: !1606)
!1613 = !DILocation(line: 335, column: 26, scope: !1614, inlinedAt: !1498)
!1614 = distinct !DILexicalBlock(scope: !1493, file: !2, line: 335, column: 19)
!1615 = !DILocation(line: 335, column: 19, scope: !1493, inlinedAt: !1498)
!1616 = !DILocation(line: 0, scope: !1564, inlinedAt: !1617)
!1617 = distinct !DILocation(line: 337, column: 19, scope: !1618, inlinedAt: !1498)
!1618 = distinct !DILexicalBlock(scope: !1614, file: !2, line: 336, column: 17)
!1619 = !DILocation(line: 204, column: 26, scope: !1564, inlinedAt: !1617)
!1620 = !DILocation(line: 205, column: 9, scope: !1575, inlinedAt: !1617)
!1621 = !DILocation(line: 205, column: 7, scope: !1564, inlinedAt: !1617)
!1622 = !DILocation(line: 207, column: 11, scope: !1578, inlinedAt: !1617)
!1623 = !DILocation(line: 207, column: 55, scope: !1578, inlinedAt: !1617)
!1624 = !DILocation(line: 207, column: 11, scope: !1579, inlinedAt: !1617)
!1625 = !DILocation(line: 948, column: 21, scope: !1445, inlinedAt: !1626)
!1626 = distinct !DILocation(line: 208, column: 9, scope: !1578, inlinedAt: !1617)
!1627 = !DILocation(line: 0, scope: !1445, inlinedAt: !1626)
!1628 = !DILocation(line: 949, column: 3, scope: !1445, inlinedAt: !1626)
!1629 = !DILocation(line: 950, column: 11, scope: !1445, inlinedAt: !1626)
!1630 = !DILocation(line: 950, column: 3, scope: !1445, inlinedAt: !1626)
!1631 = !DILocation(line: 951, column: 3, scope: !1445, inlinedAt: !1626)
!1632 = !DILocation(line: 952, column: 3, scope: !1445, inlinedAt: !1626)
!1633 = !DILocation(line: 346, column: 26, scope: !1493, inlinedAt: !1498)
!1634 = !DILocation(line: 347, column: 20, scope: !1493, inlinedAt: !1498)
!1635 = !DILocation(line: 348, column: 13, scope: !1494, inlinedAt: !1498)
!1636 = !DILocation(line: 356, column: 19, scope: !1637, inlinedAt: !1498)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !2, line: 356, column: 19)
!1638 = distinct !DILexicalBlock(scope: !1494, file: !2, line: 350, column: 13)
!1639 = !DILocation(line: 356, column: 30, scope: !1637, inlinedAt: !1498)
!1640 = !DILocation(line: 356, column: 19, scope: !1638, inlinedAt: !1498)
!1641 = !DILocation(line: 358, column: 32, scope: !1642, inlinedAt: !1498)
!1642 = distinct !DILexicalBlock(scope: !1643, file: !2, line: 358, column: 23)
!1643 = distinct !DILexicalBlock(scope: !1637, file: !2, line: 357, column: 17)
!1644 = !DILocation(line: 358, column: 23, scope: !1643, inlinedAt: !1498)
!1645 = !DILocation(line: 377, column: 30, scope: !1646, inlinedAt: !1498)
!1646 = distinct !DILexicalBlock(scope: !1643, file: !2, line: 377, column: 23)
!1647 = !DILocation(line: 149, column: 3, scope: !1648, inlinedAt: !1651)
!1648 = distinct !DISubprogram(name: "next_line_num", scope: !2, file: !2, line: 146, type: !616, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1649)
!1649 = !{!1650}
!1650 = !DILocalVariable(name: "endp", scope: !1648, file: !2, line: 148, type: !88)
!1651 = distinct !DILocation(line: 379, column: 23, scope: !1652, inlinedAt: !1498)
!1652 = distinct !DILexicalBlock(scope: !1646, file: !2, line: 378, column: 21)
!1653 = !DILocation(line: 0, scope: !1648, inlinedAt: !1651)
!1654 = !DILocation(line: 151, column: 18, scope: !1655, inlinedAt: !1651)
!1655 = distinct !DILexicalBlock(scope: !1656, file: !2, line: 151, column: 11)
!1656 = distinct !DILexicalBlock(scope: !1648, file: !2, line: 150, column: 5)
!1657 = !DILocation(line: 151, column: 21, scope: !1655, inlinedAt: !1651)
!1658 = !DILocation(line: 151, column: 11, scope: !1656, inlinedAt: !1651)
!1659 = !DILocation(line: 153, column: 12, scope: !1656, inlinedAt: !1651)
!1660 = !DILocation(line: 153, column: 15, scope: !1656, inlinedAt: !1651)
!1661 = !DILocation(line: 155, column: 15, scope: !1648, inlinedAt: !1651)
!1662 = !DILocation(line: 154, column: 5, scope: !1656, inlinedAt: !1651)
!1663 = distinct !{!1663, !1647, !1664, !1110}
!1664 = !DILocation(line: 155, column: 32, scope: !1648, inlinedAt: !1651)
!1665 = !DILocation(line: 157, column: 22, scope: !1666, inlinedAt: !1651)
!1666 = distinct !DILexicalBlock(scope: !1648, file: !2, line: 157, column: 7)
!1667 = !DILocation(line: 157, column: 7, scope: !1648, inlinedAt: !1651)
!1668 = !DILocation(line: 158, column: 6, scope: !1666, inlinedAt: !1651)
!1669 = !DILocation(line: 158, column: 23, scope: !1666, inlinedAt: !1651)
!1670 = !DILocation(line: 158, column: 5, scope: !1666, inlinedAt: !1651)
!1671 = !DILocation(line: 160, column: 15, scope: !1666, inlinedAt: !1651)
!1672 = !DILocation(line: 161, column: 7, scope: !1673, inlinedAt: !1651)
!1673 = distinct !DILexicalBlock(scope: !1648, file: !2, line: 161, column: 7)
!1674 = !DILocation(line: 161, column: 24, scope: !1673, inlinedAt: !1651)
!1675 = !DILocation(line: 161, column: 22, scope: !1673, inlinedAt: !1651)
!1676 = !DILocation(line: 161, column: 7, scope: !1648, inlinedAt: !1651)
!1677 = !DILocation(line: 162, column: 19, scope: !1673, inlinedAt: !1651)
!1678 = !DILocation(line: 162, column: 5, scope: !1673, inlinedAt: !1651)
!1679 = !DILocation(line: 380, column: 46, scope: !1652, inlinedAt: !1498)
!1680 = !DILocalVariable(name: "__dest", arg: 1, scope: !1681, file: !1530, line: 84, type: !1684)
!1681 = distinct !DISubprogram(name: "stpcpy", scope: !1530, file: !1530, line: 84, type: !1682, scopeLine: 85, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1685)
!1682 = !DISubroutineType(types: !1683)
!1683 = !{!88, !1684, !1054}
!1684 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !88)
!1685 = !{!1680, !1686}
!1686 = !DILocalVariable(name: "__src", arg: 2, scope: !1681, file: !1530, line: 84, type: !1054)
!1687 = !DILocation(line: 0, scope: !1681, inlinedAt: !1688)
!1688 = distinct !DILocation(line: 380, column: 31, scope: !1652, inlinedAt: !1498)
!1689 = !DILocation(line: 86, column: 10, scope: !1681, inlinedAt: !1688)
!1690 = !DILocation(line: 381, column: 21, scope: !1652, inlinedAt: !1498)
!1691 = !DILocation(line: 0, scope: !1637, inlinedAt: !1498)
!1692 = !DILocation(line: 385, column: 19, scope: !1638, inlinedAt: !1498)
!1693 = !DILocation(line: 387, column: 23, scope: !1694, inlinedAt: !1498)
!1694 = distinct !DILexicalBlock(scope: !1695, file: !2, line: 387, column: 23)
!1695 = distinct !DILexicalBlock(scope: !1696, file: !2, line: 386, column: 17)
!1696 = distinct !DILexicalBlock(scope: !1638, file: !2, line: 385, column: 19)
!1697 = !DILocation(line: 387, column: 23, scope: !1695, inlinedAt: !1498)
!1698 = !DILocation(line: 389, column: 29, scope: !1699, inlinedAt: !1498)
!1699 = distinct !DILexicalBlock(scope: !1694, file: !2, line: 388, column: 21)
!1700 = !DILocation(line: 389, column: 32, scope: !1699, inlinedAt: !1498)
!1701 = !DILocation(line: 390, column: 29, scope: !1699, inlinedAt: !1498)
!1702 = !DILocation(line: 390, column: 32, scope: !1699, inlinedAt: !1498)
!1703 = !DILocation(line: 391, column: 34, scope: !1699, inlinedAt: !1498)
!1704 = !DILocation(line: 392, column: 21, scope: !1699, inlinedAt: !1498)
!1705 = !DILocation(line: 393, column: 25, scope: !1695, inlinedAt: !1498)
!1706 = !DILocation(line: 393, column: 28, scope: !1695, inlinedAt: !1498)
!1707 = !DILocation(line: 394, column: 17, scope: !1695, inlinedAt: !1498)
!1708 = !DILocation(line: 398, column: 21, scope: !1638, inlinedAt: !1498)
!1709 = !DILocation(line: 398, column: 24, scope: !1638, inlinedAt: !1498)
!1710 = !DILocation(line: 0, scope: !1489, inlinedAt: !1498)
!1711 = !DILocation(line: 402, column: 17, scope: !1490, inlinedAt: !1498)
!1712 = !DILocation(line: 401, column: 9, scope: !1489, inlinedAt: !1498)
!1713 = distinct !{!1713, !1714, !1715, !1110}
!1714 = !DILocation(line: 261, column: 7, scope: !1490, inlinedAt: !1498)
!1715 = !DILocation(line: 402, column: 24, scope: !1490, inlinedAt: !1498)
!1716 = !DILocation(line: 406, column: 11, scope: !1717, inlinedAt: !1498)
!1717 = distinct !DILexicalBlock(scope: !1490, file: !2, line: 406, column: 11)
!1718 = !DILocation(line: 406, column: 11, scope: !1490, inlinedAt: !1498)
!1719 = !DILocation(line: 408, column: 17, scope: !1720, inlinedAt: !1498)
!1720 = distinct !DILexicalBlock(scope: !1717, file: !2, line: 407, column: 9)
!1721 = !DILocation(line: 408, column: 20, scope: !1720, inlinedAt: !1498)
!1722 = !DILocation(line: 409, column: 22, scope: !1720, inlinedAt: !1498)
!1723 = !DILocation(line: 410, column: 9, scope: !1720, inlinedAt: !1498)
!1724 = !DILocation(line: 414, column: 20, scope: !1725, inlinedAt: !1498)
!1725 = distinct !DILexicalBlock(scope: !1490, file: !2, line: 414, column: 11)
!1726 = !DILocation(line: 414, column: 25, scope: !1725, inlinedAt: !1498)
!1727 = !DILocation(line: 149, column: 3, scope: !1648, inlinedAt: !1728)
!1728 = distinct !DILocation(line: 416, column: 11, scope: !1729, inlinedAt: !1498)
!1729 = distinct !DILexicalBlock(scope: !1725, file: !2, line: 415, column: 9)
!1730 = !DILocation(line: 0, scope: !1648, inlinedAt: !1728)
!1731 = !DILocation(line: 151, column: 18, scope: !1655, inlinedAt: !1728)
!1732 = !DILocation(line: 151, column: 21, scope: !1655, inlinedAt: !1728)
!1733 = !DILocation(line: 151, column: 11, scope: !1656, inlinedAt: !1728)
!1734 = !DILocation(line: 153, column: 12, scope: !1656, inlinedAt: !1728)
!1735 = !DILocation(line: 153, column: 15, scope: !1656, inlinedAt: !1728)
!1736 = !DILocation(line: 155, column: 15, scope: !1648, inlinedAt: !1728)
!1737 = !DILocation(line: 154, column: 5, scope: !1656, inlinedAt: !1728)
!1738 = distinct !{!1738, !1727, !1739, !1110}
!1739 = !DILocation(line: 155, column: 32, scope: !1648, inlinedAt: !1728)
!1740 = !DILocation(line: 157, column: 22, scope: !1666, inlinedAt: !1728)
!1741 = !DILocation(line: 157, column: 7, scope: !1648, inlinedAt: !1728)
!1742 = !DILocation(line: 158, column: 6, scope: !1666, inlinedAt: !1728)
!1743 = !DILocation(line: 158, column: 23, scope: !1666, inlinedAt: !1728)
!1744 = !DILocation(line: 158, column: 5, scope: !1666, inlinedAt: !1728)
!1745 = !DILocation(line: 160, column: 15, scope: !1666, inlinedAt: !1728)
!1746 = !DILocation(line: 161, column: 7, scope: !1673, inlinedAt: !1728)
!1747 = !DILocation(line: 161, column: 24, scope: !1673, inlinedAt: !1728)
!1748 = !DILocation(line: 161, column: 22, scope: !1673, inlinedAt: !1728)
!1749 = !DILocation(line: 161, column: 7, scope: !1648, inlinedAt: !1728)
!1750 = !DILocation(line: 162, column: 19, scope: !1673, inlinedAt: !1728)
!1751 = !DILocation(line: 162, column: 5, scope: !1673, inlinedAt: !1728)
!1752 = !DILocation(line: 417, column: 34, scope: !1729, inlinedAt: !1498)
!1753 = !DILocation(line: 0, scope: !1681, inlinedAt: !1754)
!1754 = distinct !DILocation(line: 417, column: 19, scope: !1729, inlinedAt: !1498)
!1755 = !DILocation(line: 86, column: 10, scope: !1681, inlinedAt: !1754)
!1756 = !DILocation(line: 418, column: 9, scope: !1729, inlinedAt: !1498)
!1757 = !DILocation(line: 0, scope: !1490, inlinedAt: !1498)
!1758 = !DILocation(line: 426, column: 11, scope: !1490, inlinedAt: !1498)
!1759 = !DILocation(line: 430, column: 22, scope: !1760, inlinedAt: !1498)
!1760 = distinct !DILexicalBlock(scope: !1761, file: !2, line: 430, column: 19)
!1761 = distinct !DILexicalBlock(scope: !1762, file: !2, line: 429, column: 13)
!1762 = distinct !DILexicalBlock(scope: !1763, file: !2, line: 427, column: 9)
!1763 = distinct !DILexicalBlock(scope: !1490, file: !2, line: 426, column: 11)
!1764 = !DILocation(line: 430, column: 19, scope: !1761, inlinedAt: !1498)
!1765 = !DILocation(line: 432, column: 26, scope: !1766, inlinedAt: !1498)
!1766 = distinct !DILexicalBlock(scope: !1767, file: !2, line: 432, column: 23)
!1767 = distinct !DILexicalBlock(scope: !1760, file: !2, line: 431, column: 17)
!1768 = !DILocation(line: 432, column: 23, scope: !1767, inlinedAt: !1498)
!1769 = !DILocation(line: 433, column: 27, scope: !1766, inlinedAt: !1498)
!1770 = !DILocation(line: 433, column: 30, scope: !1766, inlinedAt: !1498)
!1771 = !DILocation(line: 433, column: 21, scope: !1766, inlinedAt: !1498)
!1772 = !DILocation(line: 434, column: 31, scope: !1773, inlinedAt: !1498)
!1773 = distinct !DILexicalBlock(scope: !1766, file: !2, line: 434, column: 28)
!1774 = !DILocation(line: 0, scope: !1773, inlinedAt: !1498)
!1775 = !DILocation(line: 434, column: 28, scope: !1766, inlinedAt: !1498)
!1776 = !DILocation(line: 436, column: 32, scope: !1777, inlinedAt: !1498)
!1777 = distinct !DILexicalBlock(scope: !1773, file: !2, line: 435, column: 21)
!1778 = !DILocation(line: 437, column: 32, scope: !1777, inlinedAt: !1498)
!1779 = !DILocation(line: 438, column: 21, scope: !1777, inlinedAt: !1498)
!1780 = !DILocation(line: 441, column: 32, scope: !1781, inlinedAt: !1498)
!1781 = distinct !DILexicalBlock(scope: !1773, file: !2, line: 440, column: 21)
!1782 = !DILocation(line: 442, column: 32, scope: !1781, inlinedAt: !1498)
!1783 = !DILocation(line: 443, column: 30, scope: !1784, inlinedAt: !1498)
!1784 = distinct !DILexicalBlock(scope: !1781, file: !2, line: 443, column: 27)
!1785 = !DILocation(line: 443, column: 27, scope: !1781, inlinedAt: !1498)
!1786 = !DILocation(line: 445, column: 34, scope: !1787, inlinedAt: !1498)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !2, line: 445, column: 31)
!1788 = distinct !DILexicalBlock(scope: !1784, file: !2, line: 444, column: 25)
!1789 = !DILocation(line: 445, column: 31, scope: !1788, inlinedAt: !1498)
!1790 = !DILocation(line: 446, column: 43, scope: !1787, inlinedAt: !1498)
!1791 = !DILocation(line: 446, column: 35, scope: !1787, inlinedAt: !1498)
!1792 = !DILocation(line: 446, column: 38, scope: !1787, inlinedAt: !1498)
!1793 = !DILocation(line: 446, column: 29, scope: !1787, inlinedAt: !1498)
!1794 = !DILocation(line: 449, column: 37, scope: !1795, inlinedAt: !1498)
!1795 = distinct !DILexicalBlock(scope: !1787, file: !2, line: 448, column: 29)
!1796 = !DILocation(line: 449, column: 40, scope: !1795, inlinedAt: !1498)
!1797 = !DILocation(line: 450, column: 37, scope: !1795, inlinedAt: !1498)
!1798 = !DILocation(line: 450, column: 40, scope: !1795, inlinedAt: !1498)
!1799 = !DILocation(line: 455, column: 33, scope: !1800, inlinedAt: !1498)
!1800 = distinct !DILexicalBlock(scope: !1784, file: !2, line: 454, column: 25)
!1801 = !DILocation(line: 455, column: 36, scope: !1800, inlinedAt: !1498)
!1802 = !DILocation(line: 456, column: 47, scope: !1800, inlinedAt: !1498)
!1803 = !DILocation(line: 456, column: 33, scope: !1800, inlinedAt: !1498)
!1804 = !DILocation(line: 456, column: 36, scope: !1800, inlinedAt: !1498)
!1805 = !DILocation(line: 460, column: 27, scope: !1806, inlinedAt: !1498)
!1806 = distinct !DILexicalBlock(scope: !1760, file: !2, line: 460, column: 24)
!1807 = !DILocation(line: 460, column: 35, scope: !1806, inlinedAt: !1498)
!1808 = !DILocation(line: 461, column: 23, scope: !1806, inlinedAt: !1498)
!1809 = !DILocation(line: 461, column: 26, scope: !1806, inlinedAt: !1498)
!1810 = !DILocation(line: 461, column: 17, scope: !1806, inlinedAt: !1498)
!1811 = !DILocation(line: 462, column: 27, scope: !1812, inlinedAt: !1498)
!1812 = distinct !DILexicalBlock(scope: !1806, file: !2, line: 462, column: 24)
!1813 = !DILocation(line: 462, column: 24, scope: !1806, inlinedAt: !1498)
!1814 = distinct !{!1814, !1501, !1815}
!1815 = !DILocation(line: 510, column: 5, scope: !1467, inlinedAt: !1498)
!1816 = !DILocation(line: 469, column: 25, scope: !1817, inlinedAt: !1498)
!1817 = distinct !DILexicalBlock(scope: !1812, file: !2, line: 468, column: 17)
!1818 = !DILocation(line: 469, column: 28, scope: !1817, inlinedAt: !1498)
!1819 = !DILocation(line: 470, column: 33, scope: !1817, inlinedAt: !1498)
!1820 = !DILocation(line: 470, column: 25, scope: !1817, inlinedAt: !1498)
!1821 = !DILocation(line: 470, column: 28, scope: !1817, inlinedAt: !1498)
!1822 = !DILocation(line: 0, scope: !1760, inlinedAt: !1498)
!1823 = !DILocation(line: 473, column: 25, scope: !1761, inlinedAt: !1498)
!1824 = !DILocation(line: 473, column: 20, scope: !1761, inlinedAt: !1498)
!1825 = !DILocation(line: 428, column: 11, scope: !1762, inlinedAt: !1498)
!1826 = distinct !{!1826, !1825, !1827}
!1827 = !DILocation(line: 474, column: 13, scope: !1762, inlinedAt: !1498)
!1828 = !DILocation(line: 481, column: 22, scope: !1829, inlinedAt: !1498)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !2, line: 481, column: 19)
!1830 = distinct !DILexicalBlock(scope: !1831, file: !2, line: 480, column: 13)
!1831 = distinct !DILexicalBlock(scope: !1763, file: !2, line: 477, column: 9)
!1832 = !DILocation(line: 481, column: 30, scope: !1829, inlinedAt: !1498)
!1833 = !DILocation(line: 483, column: 25, scope: !1834, inlinedAt: !1498)
!1834 = distinct !DILexicalBlock(scope: !1829, file: !2, line: 482, column: 17)
!1835 = !DILocation(line: 483, column: 28, scope: !1834, inlinedAt: !1498)
!1836 = !DILocation(line: 484, column: 25, scope: !1834, inlinedAt: !1498)
!1837 = !DILocation(line: 484, column: 28, scope: !1834, inlinedAt: !1498)
!1838 = !DILocation(line: 485, column: 17, scope: !1834, inlinedAt: !1498)
!1839 = !DILocation(line: 486, column: 24, scope: !1829, inlinedAt: !1498)
!1840 = !DILocation(line: 488, column: 37, scope: !1841, inlinedAt: !1498)
!1841 = distinct !DILexicalBlock(scope: !1842, file: !2, line: 488, column: 23)
!1842 = distinct !DILexicalBlock(scope: !1843, file: !2, line: 487, column: 17)
!1843 = distinct !DILexicalBlock(scope: !1829, file: !2, line: 486, column: 24)
!1844 = !DILocation(line: 488, column: 43, scope: !1841, inlinedAt: !1498)
!1845 = !DILocation(line: 488, column: 51, scope: !1841, inlinedAt: !1498)
!1846 = !DILocation(line: 490, column: 32, scope: !1847, inlinedAt: !1498)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !2, line: 490, column: 27)
!1848 = distinct !DILexicalBlock(scope: !1841, file: !2, line: 489, column: 21)
!1849 = !DILocation(line: 490, column: 27, scope: !1848, inlinedAt: !1498)
!1850 = !DILocation(line: 491, column: 36, scope: !1847, inlinedAt: !1498)
!1851 = !DILocation(line: 491, column: 25, scope: !1847, inlinedAt: !1498)
!1852 = !DILocation(line: 494, column: 33, scope: !1853, inlinedAt: !1498)
!1853 = distinct !DILexicalBlock(scope: !1847, file: !2, line: 493, column: 25)
!1854 = !DILocation(line: 494, column: 36, scope: !1853, inlinedAt: !1498)
!1855 = !DILocation(line: 495, column: 33, scope: !1853, inlinedAt: !1498)
!1856 = !DILocation(line: 495, column: 36, scope: !1853, inlinedAt: !1498)
!1857 = !DILocation(line: 499, column: 27, scope: !1841, inlinedAt: !1498)
!1858 = !DILocation(line: 499, column: 30, scope: !1841, inlinedAt: !1498)
!1859 = !DILocation(line: 507, column: 25, scope: !1830, inlinedAt: !1498)
!1860 = !DILocation(line: 507, column: 20, scope: !1830, inlinedAt: !1498)
!1861 = !DILocation(line: 479, column: 11, scope: !1831, inlinedAt: !1498)
!1862 = distinct !{!1862, !1861, !1863}
!1863 = !DILocation(line: 508, column: 13, scope: !1831, inlinedAt: !1498)
!1864 = !DILocalVariable(name: "ptr", arg: 1, scope: !1865, file: !1866, line: 75, type: !144)
!1865 = distinct !DISubprogram(name: "alignfree", scope: !1866, file: !1866, line: 75, type: !1867, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1869)
!1866 = !DIFile(filename: "./lib/alignalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0a7d01653c1483fdd96283992acf95d0")
!1867 = !DISubroutineType(types: !1868)
!1868 = !{null, !144}
!1869 = !{!1864}
!1870 = !DILocation(line: 0, scope: !1865, inlinedAt: !1871)
!1871 = distinct !DILocation(line: 805, column: 11, scope: !526)
!1872 = !DILocation(line: 77, column: 3, scope: !1865, inlinedAt: !1871)
!1873 = !DILocation(line: 0, scope: !524)
!1874 = !DILocation(line: 0, scope: !1865, inlinedAt: !1875)
!1875 = distinct !DILocation(line: 808, column: 7, scope: !510)
!1876 = !DILocation(line: 77, column: 3, scope: !1865, inlinedAt: !1875)
!1877 = !DILocation(line: 808, column: 7, scope: !510)
!1878 = !DILocation(line: 810, column: 5, scope: !510)
!1879 = !DILocation(line: 811, column: 26, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !510, file: !2, line: 811, column: 11)
!1881 = !DILocation(line: 811, column: 36, scope: !1880)
!1882 = !DILocation(line: 811, column: 29, scope: !1880)
!1883 = !DILocation(line: 811, column: 48, scope: !1880)
!1884 = !DILocation(line: 811, column: 11, scope: !510)
!1885 = !DILocation(line: 813, column: 11, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1880, file: !2, line: 812, column: 9)
!1887 = !DILocation(line: 815, column: 9, scope: !1886)
!1888 = !DILocation(line: 816, column: 5, scope: !83)
!1889 = !DILocation(line: 817, column: 10, scope: !83)
!1890 = !DILocation(line: 817, column: 19, scope: !83)
!1891 = !DILocation(line: 816, column: 5, scope: !510)
!1892 = distinct !{!1892, !1302, !1893, !1110}
!1893 = !DILocation(line: 817, column: 25, scope: !83)
!1894 = !DILocation(line: 819, column: 7, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !83, file: !2, line: 819, column: 7)
!1896 = !DILocation(line: 819, column: 7, scope: !83)
!1897 = !DILocation(line: 821, column: 11, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1899, file: !2, line: 821, column: 11)
!1899 = distinct !DILexicalBlock(scope: !1895, file: !2, line: 820, column: 5)
!1900 = !DILocation(line: 821, column: 47, scope: !1898)
!1901 = !DILocation(line: 821, column: 11, scope: !1899)
!1902 = !DILocation(line: 948, column: 21, scope: !1445, inlinedAt: !1903)
!1903 = distinct !DILocation(line: 822, column: 9, scope: !1898)
!1904 = !DILocation(line: 0, scope: !1445, inlinedAt: !1903)
!1905 = !DILocation(line: 949, column: 3, scope: !1445, inlinedAt: !1903)
!1906 = !DILocation(line: 950, column: 11, scope: !1445, inlinedAt: !1903)
!1907 = !DILocation(line: 950, column: 3, scope: !1445, inlinedAt: !1903)
!1908 = !DILocation(line: 951, column: 3, scope: !1445, inlinedAt: !1903)
!1909 = !DILocation(line: 952, column: 3, scope: !1445, inlinedAt: !1903)
!1910 = !DILocation(line: 825, column: 23, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !83, file: !2, line: 825, column: 7)
!1912 = !DILocation(line: 825, column: 26, scope: !1911)
!1913 = !DILocation(line: 825, column: 47, scope: !1911)
!1914 = !DILocation(line: 825, column: 7, scope: !83)
!1915 = !DILocation(line: 826, column: 5, scope: !1911)
!1916 = !DILocation(line: 828, column: 10, scope: !83)
!1917 = !DILocation(line: 829, column: 1, scope: !83)
!1918 = !DISubprogram(name: "bindtextdomain", scope: !1046, file: !1046, line: 86, type: !1919, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !998)
!1919 = !DISubroutineType(types: !1920)
!1920 = !{!88, !151, !151}
!1921 = !DISubprogram(name: "textdomain", scope: !1046, file: !1046, line: 82, type: !1186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !998)
!1922 = !DISubprogram(name: "atexit", scope: !1184, file: !1184, line: 602, type: !1923, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !998)
!1923 = !DISubroutineType(types: !1924)
!1924 = !{!86, !615}
!1925 = !DISubprogram(name: "getopt_long", scope: !532, file: !532, line: 66, type: !1926, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !998)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{!86, !86, !1928, !151, !1930, !537}
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!1931 = !DISubprogram(name: "fstat", scope: !1932, file: !1932, line: 210, type: !1933, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !998)
!1932 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!1933 = !DISubroutineType(types: !1934)
!1934 = !{!86, !86, !1935}
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!1936 = !DISubprogram(name: "__errno_location", scope: !1937, file: !1937, line: 37, type: !1938, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !998)
!1937 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1938 = !DISubroutineType(types: !1939)
!1939 = !{!537}
!1940 = !DISubprogram(name: "getpagesize", scope: !1941, file: !1941, line: 1011, type: !1388, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !998)
!1941 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1942 = !DISubprogram(name: "open", scope: !1943, file: !1943, line: 181, type: !1944, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !998)
!1943 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1944 = !DISubroutineType(types: !1945)
!1945 = !{!86, !151, !86, null}
!1946 = !DISubprogram(name: "lseek", scope: !1941, file: !1941, line: 339, type: !1947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !998)
!1947 = !DISubroutineType(types: !1948)
!1948 = !{!314, !86, !314, !86}
!1949 = !DISubprogram(name: "fflush_unlocked", scope: !517, file: !517, line: 239, type: !1950, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !998)
!1950 = !DISubroutineType(types: !1951)
!1951 = !{!86, !288}
!1952 = !DISubprogram(name: "clearerr_unlocked", scope: !517, file: !517, line: 794, type: !1953, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !998)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{null, !288}
!1955 = !DISubprogram(name: "ioctl", scope: !1956, file: !1956, line: 42, type: !1957, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !998)
!1956 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/ioctl.h", directory: "", checksumkind: CSK_MD5, checksum: "17041ae374bfd0bee8350d01883d298c")
!1957 = !DISubroutineType(types: !1958)
!1958 = !{!86, !86, !147, null}
!1959 = !DISubprogram(name: "free", scope: !1184, file: !1184, line: 555, type: !1867, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !998)
!1960 = !DISubprogram(name: "close", scope: !1941, file: !1941, line: 358, type: !1961, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !998)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{!86, !86}
!1963 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !550, file: !550, line: 50, type: !1015, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !1964)
!1964 = !{!1965}
!1965 = !DILocalVariable(name: "file", arg: 1, scope: !1963, file: !550, line: 50, type: !151)
!1966 = !DILocation(line: 0, scope: !1963)
!1967 = !DILocation(line: 52, column: 13, scope: !1963)
!1968 = !DILocation(line: 53, column: 1, scope: !1963)
!1969 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !550, file: !550, line: 87, type: !1970, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !1972)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{null, !145}
!1972 = !{!1973}
!1973 = !DILocalVariable(name: "ignore", arg: 1, scope: !1969, file: !550, line: 87, type: !145)
!1974 = !DILocation(line: 0, scope: !1969)
!1975 = !DILocation(line: 89, column: 16, scope: !1969)
!1976 = !{!1977, !1977, i64 0}
!1977 = !{!"_Bool", !991, i64 0}
!1978 = !DILocation(line: 90, column: 1, scope: !1969)
!1979 = distinct !DISubprogram(name: "close_stdout", scope: !550, file: !550, line: 116, type: !616, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !1980)
!1980 = !{!1981}
!1981 = !DILocalVariable(name: "write_error", scope: !1982, file: !550, line: 121, type: !151)
!1982 = distinct !DILexicalBlock(scope: !1983, file: !550, line: 120, column: 5)
!1983 = distinct !DILexicalBlock(scope: !1979, file: !550, line: 118, column: 7)
!1984 = !DILocation(line: 118, column: 21, scope: !1983)
!1985 = !DILocation(line: 118, column: 7, scope: !1983)
!1986 = !DILocation(line: 118, column: 29, scope: !1983)
!1987 = !DILocation(line: 119, column: 7, scope: !1983)
!1988 = !DILocation(line: 119, column: 12, scope: !1983)
!1989 = !{i8 0, i8 2}
!1990 = !DILocation(line: 119, column: 25, scope: !1983)
!1991 = !DILocation(line: 119, column: 28, scope: !1983)
!1992 = !DILocation(line: 119, column: 34, scope: !1983)
!1993 = !DILocation(line: 118, column: 7, scope: !1979)
!1994 = !DILocation(line: 121, column: 33, scope: !1982)
!1995 = !DILocation(line: 0, scope: !1982)
!1996 = !DILocation(line: 122, column: 11, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1982, file: !550, line: 122, column: 11)
!1998 = !DILocation(line: 0, scope: !1997)
!1999 = !DILocation(line: 122, column: 11, scope: !1982)
!2000 = !DILocation(line: 123, column: 9, scope: !1997)
!2001 = !DILocation(line: 126, column: 9, scope: !1997)
!2002 = !DILocation(line: 128, column: 14, scope: !1982)
!2003 = !DILocation(line: 128, column: 7, scope: !1982)
!2004 = !DILocation(line: 133, column: 42, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !1979, file: !550, line: 133, column: 7)
!2006 = !DILocation(line: 133, column: 28, scope: !2005)
!2007 = !DILocation(line: 133, column: 50, scope: !2005)
!2008 = !DILocation(line: 133, column: 7, scope: !1979)
!2009 = !DILocation(line: 134, column: 12, scope: !2005)
!2010 = !DILocation(line: 134, column: 5, scope: !2005)
!2011 = !DILocation(line: 135, column: 1, scope: !1979)
!2012 = !DISubprogram(name: "_exit", scope: !1941, file: !1941, line: 624, type: !979, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !998)
!2013 = distinct !DISubprogram(name: "rpl_copy_file_range", scope: !896, file: !896, line: 41, type: !2014, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !895, retainedNodes: !2019)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{!2016, !86, !2017, !86, !2017, !149, !98}
!2016 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !1941, line: 220, baseType: !1394)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1941, line: 243, baseType: !314)
!2019 = !{!2020, !2021, !2022, !2023, !2024, !2025, !2026}
!2020 = !DILocalVariable(name: "infd", arg: 1, scope: !2013, file: !896, line: 41, type: !86)
!2021 = !DILocalVariable(name: "pinoff", arg: 2, scope: !2013, file: !896, line: 41, type: !2017)
!2022 = !DILocalVariable(name: "outfd", arg: 3, scope: !2013, file: !896, line: 42, type: !86)
!2023 = !DILocalVariable(name: "poutoff", arg: 4, scope: !2013, file: !896, line: 42, type: !2017)
!2024 = !DILocalVariable(name: "length", arg: 5, scope: !2013, file: !896, line: 43, type: !149)
!2025 = !DILocalVariable(name: "flags", arg: 6, scope: !2013, file: !896, line: 43, type: !98)
!2026 = !DILocalVariable(name: "ok", scope: !2013, file: !896, line: 48, type: !145)
!2027 = !DILocation(line: 0, scope: !2013)
!2028 = !DILocation(line: 86, column: 11, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !2030, file: !896, line: 78, column: 5)
!2030 = distinct !DILexicalBlock(scope: !2013, file: !896, line: 77, column: 7)
!2031 = !DILocation(line: 90, column: 14, scope: !2029)
!2032 = !DILocation(line: 99, column: 1, scope: !2013)
!2033 = !DISubprogram(name: "copy_file_range", scope: !1941, file: !1941, line: 1142, type: !2034, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !998)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{!2016, !86, !2036, !86, !2036, !149, !98}
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!2037 = distinct !DISubprogram(name: "verror", scope: !565, file: !565, line: 251, type: !2038, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !564, retainedNodes: !2040)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{null, !86, !86, !151, !575}
!2040 = !{!2041, !2042, !2043, !2044}
!2041 = !DILocalVariable(name: "status", arg: 1, scope: !2037, file: !565, line: 251, type: !86)
!2042 = !DILocalVariable(name: "errnum", arg: 2, scope: !2037, file: !565, line: 251, type: !86)
!2043 = !DILocalVariable(name: "message", arg: 3, scope: !2037, file: !565, line: 251, type: !151)
!2044 = !DILocalVariable(name: "args", arg: 4, scope: !2037, file: !565, line: 251, type: !575)
!2045 = !DILocation(line: 0, scope: !2037)
!2046 = !DILocation(line: 251, column: 1, scope: !2037)
!2047 = !DILocation(line: 261, column: 3, scope: !2037)
!2048 = !DILocation(line: 265, column: 7, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2037, file: !565, line: 265, column: 7)
!2050 = !DILocation(line: 265, column: 7, scope: !2037)
!2051 = !DILocation(line: 266, column: 5, scope: !2049)
!2052 = !DILocation(line: 272, column: 7, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2049, file: !565, line: 268, column: 5)
!2054 = !DILocation(line: 276, column: 3, scope: !2037)
!2055 = !{i64 0, i64 8, !989, i64 8, i64 8, !989, i64 16, i64 8, !989, i64 24, i64 4, !1063, i64 28, i64 4, !1063}
!2056 = !DILocation(line: 282, column: 1, scope: !2037)
!2057 = distinct !DISubprogram(name: "flush_stdout", scope: !565, file: !565, line: 163, type: !616, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !564, retainedNodes: !2058)
!2058 = !{!2059}
!2059 = !DILocalVariable(name: "stdout_fd", scope: !2057, file: !565, line: 166, type: !86)
!2060 = !DILocation(line: 0, scope: !2057)
!2061 = !DILocalVariable(name: "fd", arg: 1, scope: !2062, file: !565, line: 145, type: !86)
!2062 = distinct !DISubprogram(name: "is_open", scope: !565, file: !565, line: 145, type: !1961, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !564, retainedNodes: !2063)
!2063 = !{!2061}
!2064 = !DILocation(line: 0, scope: !2062, inlinedAt: !2065)
!2065 = distinct !DILocation(line: 182, column: 25, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2057, file: !565, line: 182, column: 7)
!2067 = !DILocation(line: 157, column: 15, scope: !2062, inlinedAt: !2065)
!2068 = !DILocation(line: 157, column: 12, scope: !2062, inlinedAt: !2065)
!2069 = !DILocation(line: 182, column: 7, scope: !2057)
!2070 = !DILocation(line: 184, column: 5, scope: !2066)
!2071 = !DILocation(line: 185, column: 1, scope: !2057)
!2072 = distinct !DISubprogram(name: "error_tail", scope: !565, file: !565, line: 219, type: !2038, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !564, retainedNodes: !2073)
!2073 = !{!2074, !2075, !2076, !2077}
!2074 = !DILocalVariable(name: "status", arg: 1, scope: !2072, file: !565, line: 219, type: !86)
!2075 = !DILocalVariable(name: "errnum", arg: 2, scope: !2072, file: !565, line: 219, type: !86)
!2076 = !DILocalVariable(name: "message", arg: 3, scope: !2072, file: !565, line: 219, type: !151)
!2077 = !DILocalVariable(name: "args", arg: 4, scope: !2072, file: !565, line: 219, type: !575)
!2078 = !DILocation(line: 0, scope: !2072)
!2079 = !DILocation(line: 219, column: 1, scope: !2072)
!2080 = !DILocation(line: 229, column: 13, scope: !2072)
!2081 = !DILocation(line: 135, column: 10, scope: !2082, inlinedAt: !2124)
!2082 = distinct !DISubprogram(name: "vfprintf", scope: !1050, file: !1050, line: 132, type: !2083, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !564, retainedNodes: !2120)
!2083 = !DISubroutineType(types: !2084)
!2084 = !{!86, !2085, !1054, !576}
!2085 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2086)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !290, line: 7, baseType: !2088)
!2088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !292, line: 49, size: 1728, elements: !2089)
!2089 = !{!2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2105, !2106, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2116, !2117, !2118, !2119}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2088, file: !292, line: 51, baseType: !86, size: 32)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2088, file: !292, line: 54, baseType: !88, size: 64, offset: 64)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2088, file: !292, line: 55, baseType: !88, size: 64, offset: 128)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2088, file: !292, line: 56, baseType: !88, size: 64, offset: 192)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2088, file: !292, line: 57, baseType: !88, size: 64, offset: 256)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2088, file: !292, line: 58, baseType: !88, size: 64, offset: 320)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2088, file: !292, line: 59, baseType: !88, size: 64, offset: 384)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2088, file: !292, line: 60, baseType: !88, size: 64, offset: 448)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2088, file: !292, line: 61, baseType: !88, size: 64, offset: 512)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2088, file: !292, line: 64, baseType: !88, size: 64, offset: 576)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2088, file: !292, line: 65, baseType: !88, size: 64, offset: 640)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2088, file: !292, line: 66, baseType: !88, size: 64, offset: 704)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2088, file: !292, line: 68, baseType: !307, size: 64, offset: 768)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2088, file: !292, line: 70, baseType: !2104, size: 64, offset: 832)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2088, file: !292, line: 72, baseType: !86, size: 32, offset: 896)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2088, file: !292, line: 73, baseType: !86, size: 32, offset: 928)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2088, file: !292, line: 74, baseType: !314, size: 64, offset: 960)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2088, file: !292, line: 77, baseType: !148, size: 16, offset: 1024)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2088, file: !292, line: 78, baseType: !318, size: 8, offset: 1040)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2088, file: !292, line: 79, baseType: !199, size: 8, offset: 1048)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2088, file: !292, line: 81, baseType: !321, size: 64, offset: 1088)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2088, file: !292, line: 89, baseType: !324, size: 64, offset: 1152)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2088, file: !292, line: 91, baseType: !326, size: 64, offset: 1216)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2088, file: !292, line: 92, baseType: !329, size: 64, offset: 1280)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2088, file: !292, line: 93, baseType: !2104, size: 64, offset: 1344)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2088, file: !292, line: 94, baseType: !144, size: 64, offset: 1408)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2088, file: !292, line: 95, baseType: !149, size: 64, offset: 1472)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2088, file: !292, line: 96, baseType: !86, size: 32, offset: 1536)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2088, file: !292, line: 98, baseType: !228, size: 160, offset: 1568)
!2120 = !{!2121, !2122, !2123}
!2121 = !DILocalVariable(name: "__stream", arg: 1, scope: !2082, file: !1050, line: 132, type: !2085)
!2122 = !DILocalVariable(name: "__fmt", arg: 2, scope: !2082, file: !1050, line: 133, type: !1054)
!2123 = !DILocalVariable(name: "__ap", arg: 3, scope: !2082, file: !1050, line: 133, type: !576)
!2124 = distinct !DILocation(line: 229, column: 3, scope: !2072)
!2125 = !{!2126, !2128}
!2126 = distinct !{!2126, !2127, !"vfprintf.inline: argument 0"}
!2127 = distinct !{!2127, !"vfprintf.inline"}
!2128 = distinct !{!2128, !2127, !"vfprintf.inline: argument 1"}
!2129 = !DILocation(line: 229, column: 3, scope: !2072)
!2130 = !DILocation(line: 0, scope: !2082, inlinedAt: !2124)
!2131 = !DILocation(line: 133, column: 49, scope: !2082, inlinedAt: !2124)
!2132 = !DILocation(line: 232, column: 3, scope: !2072)
!2133 = !DILocation(line: 233, column: 7, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2072, file: !565, line: 233, column: 7)
!2135 = !DILocation(line: 233, column: 7, scope: !2072)
!2136 = !DILocalVariable(name: "errnum", arg: 1, scope: !2137, file: !565, line: 188, type: !86)
!2137 = distinct !DISubprogram(name: "print_errno_message", scope: !565, file: !565, line: 188, type: !979, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !564, retainedNodes: !2138)
!2138 = !{!2136, !2139, !2140}
!2139 = !DILocalVariable(name: "s", scope: !2137, file: !565, line: 190, type: !151)
!2140 = !DILocalVariable(name: "errbuf", scope: !2137, file: !565, line: 193, type: !2141)
!2141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !2142)
!2142 = !{!2143}
!2143 = !DISubrange(count: 1024)
!2144 = !DILocation(line: 0, scope: !2137, inlinedAt: !2145)
!2145 = distinct !DILocation(line: 234, column: 5, scope: !2134)
!2146 = !DILocation(line: 193, column: 3, scope: !2137, inlinedAt: !2145)
!2147 = !DILocation(line: 193, column: 8, scope: !2137, inlinedAt: !2145)
!2148 = !DILocation(line: 195, column: 7, scope: !2137, inlinedAt: !2145)
!2149 = !DILocation(line: 207, column: 9, scope: !2150, inlinedAt: !2145)
!2150 = distinct !DILexicalBlock(scope: !2137, file: !565, line: 207, column: 7)
!2151 = !DILocation(line: 207, column: 7, scope: !2137, inlinedAt: !2145)
!2152 = !DILocation(line: 208, column: 9, scope: !2150, inlinedAt: !2145)
!2153 = !DILocation(line: 208, column: 5, scope: !2150, inlinedAt: !2145)
!2154 = !DILocation(line: 214, column: 3, scope: !2137, inlinedAt: !2145)
!2155 = !DILocation(line: 216, column: 1, scope: !2137, inlinedAt: !2145)
!2156 = !DILocation(line: 234, column: 5, scope: !2134)
!2157 = !DILocation(line: 238, column: 3, scope: !2072)
!2158 = !DILocalVariable(name: "__c", arg: 1, scope: !2159, file: !2160, line: 101, type: !86)
!2159 = distinct !DISubprogram(name: "putc_unlocked", scope: !2160, file: !2160, line: 101, type: !2161, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !564, retainedNodes: !2163)
!2160 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!2161 = !DISubroutineType(types: !2162)
!2162 = !{!86, !86, !2086}
!2163 = !{!2158, !2164}
!2164 = !DILocalVariable(name: "__stream", arg: 2, scope: !2159, file: !2160, line: 101, type: !2086)
!2165 = !DILocation(line: 0, scope: !2159, inlinedAt: !2166)
!2166 = distinct !DILocation(line: 238, column: 3, scope: !2072)
!2167 = !DILocation(line: 103, column: 10, scope: !2159, inlinedAt: !2166)
!2168 = !{!2169, !990, i64 40}
!2169 = !{!"_IO_FILE", !1064, i64 0, !990, i64 8, !990, i64 16, !990, i64 24, !990, i64 32, !990, i64 40, !990, i64 48, !990, i64 56, !990, i64 64, !990, i64 72, !990, i64 80, !990, i64 88, !990, i64 96, !990, i64 104, !1064, i64 112, !1064, i64 116, !1262, i64 120, !1105, i64 128, !991, i64 130, !991, i64 131, !990, i64 136, !1262, i64 144, !990, i64 152, !990, i64 160, !990, i64 168, !990, i64 176, !1262, i64 184, !1064, i64 192, !991, i64 196}
!2170 = !{!2169, !990, i64 48}
!2171 = !{!"branch_weights", i32 2000, i32 1}
!2172 = !DILocation(line: 240, column: 3, scope: !2072)
!2173 = !DILocation(line: 241, column: 7, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2072, file: !565, line: 241, column: 7)
!2175 = !DILocation(line: 241, column: 7, scope: !2072)
!2176 = !DILocation(line: 242, column: 5, scope: !2174)
!2177 = !DILocation(line: 243, column: 1, scope: !2072)
!2178 = !DISubprogram(name: "__vfprintf_chk", scope: !1050, file: !1050, line: 96, type: !2179, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !998)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{!86, !2085, !86, !1054, !576}
!2181 = !DISubprogram(name: "strerror_r", scope: !1180, file: !1180, line: 444, type: !2182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !998)
!2182 = !DISubroutineType(types: !2183)
!2183 = !{!88, !86, !88, !149}
!2184 = !DISubprogram(name: "__overflow", scope: !517, file: !517, line: 886, type: !2185, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !998)
!2185 = !DISubroutineType(types: !2186)
!2186 = !{!86, !2086, !86}
!2187 = !DISubprogram(name: "fcntl", scope: !1943, file: !1943, line: 149, type: !2188, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !998)
!2188 = !DISubroutineType(types: !2189)
!2189 = !{!86, !86, !86, null}
!2190 = distinct !DISubprogram(name: "error", scope: !565, file: !565, line: 285, type: !2191, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !564, retainedNodes: !2193)
!2191 = !DISubroutineType(types: !2192)
!2192 = !{null, !86, !86, !151, null}
!2193 = !{!2194, !2195, !2196, !2197}
!2194 = !DILocalVariable(name: "status", arg: 1, scope: !2190, file: !565, line: 285, type: !86)
!2195 = !DILocalVariable(name: "errnum", arg: 2, scope: !2190, file: !565, line: 285, type: !86)
!2196 = !DILocalVariable(name: "message", arg: 3, scope: !2190, file: !565, line: 285, type: !151)
!2197 = !DILocalVariable(name: "ap", scope: !2190, file: !565, line: 287, type: !575)
!2198 = !DILocation(line: 0, scope: !2190)
!2199 = !DILocation(line: 287, column: 3, scope: !2190)
!2200 = !DILocation(line: 287, column: 11, scope: !2190)
!2201 = !DILocation(line: 288, column: 3, scope: !2190)
!2202 = !DILocation(line: 289, column: 3, scope: !2190)
!2203 = !DILocation(line: 290, column: 3, scope: !2190)
!2204 = !DILocation(line: 291, column: 1, scope: !2190)
!2205 = !DILocation(line: 0, scope: !572)
!2206 = !DILocation(line: 298, column: 1, scope: !572)
!2207 = !DILocation(line: 302, column: 7, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !572, file: !565, line: 302, column: 7)
!2209 = !DILocation(line: 302, column: 7, scope: !572)
!2210 = !DILocation(line: 307, column: 11, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2212, file: !565, line: 307, column: 11)
!2212 = distinct !DILexicalBlock(scope: !2208, file: !565, line: 303, column: 5)
!2213 = !DILocation(line: 307, column: 27, scope: !2211)
!2214 = !DILocation(line: 308, column: 11, scope: !2211)
!2215 = !DILocation(line: 308, column: 28, scope: !2211)
!2216 = !DILocation(line: 308, column: 25, scope: !2211)
!2217 = !DILocation(line: 309, column: 15, scope: !2211)
!2218 = !DILocation(line: 309, column: 33, scope: !2211)
!2219 = !DILocation(line: 310, column: 19, scope: !2211)
!2220 = !DILocation(line: 311, column: 22, scope: !2211)
!2221 = !DILocation(line: 311, column: 56, scope: !2211)
!2222 = !DILocation(line: 307, column: 11, scope: !2212)
!2223 = !DILocation(line: 316, column: 21, scope: !2212)
!2224 = !DILocation(line: 317, column: 23, scope: !2212)
!2225 = !DILocation(line: 318, column: 5, scope: !2212)
!2226 = !DILocation(line: 327, column: 3, scope: !572)
!2227 = !DILocation(line: 331, column: 7, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !572, file: !565, line: 331, column: 7)
!2229 = !DILocation(line: 331, column: 7, scope: !572)
!2230 = !DILocation(line: 332, column: 5, scope: !2228)
!2231 = !DILocation(line: 338, column: 7, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2228, file: !565, line: 334, column: 5)
!2233 = !DILocation(line: 346, column: 3, scope: !572)
!2234 = !DILocation(line: 350, column: 3, scope: !572)
!2235 = !DILocation(line: 356, column: 1, scope: !572)
!2236 = distinct !DISubprogram(name: "error_at_line", scope: !565, file: !565, line: 359, type: !2237, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !564, retainedNodes: !2239)
!2237 = !DISubroutineType(types: !2238)
!2238 = !{null, !86, !86, !151, !98, !151, null}
!2239 = !{!2240, !2241, !2242, !2243, !2244, !2245}
!2240 = !DILocalVariable(name: "status", arg: 1, scope: !2236, file: !565, line: 359, type: !86)
!2241 = !DILocalVariable(name: "errnum", arg: 2, scope: !2236, file: !565, line: 359, type: !86)
!2242 = !DILocalVariable(name: "file_name", arg: 3, scope: !2236, file: !565, line: 359, type: !151)
!2243 = !DILocalVariable(name: "line_number", arg: 4, scope: !2236, file: !565, line: 360, type: !98)
!2244 = !DILocalVariable(name: "message", arg: 5, scope: !2236, file: !565, line: 360, type: !151)
!2245 = !DILocalVariable(name: "ap", scope: !2236, file: !565, line: 362, type: !575)
!2246 = !DILocation(line: 0, scope: !2236)
!2247 = !DILocation(line: 362, column: 3, scope: !2236)
!2248 = !DILocation(line: 362, column: 11, scope: !2236)
!2249 = !DILocation(line: 363, column: 3, scope: !2236)
!2250 = !DILocation(line: 364, column: 3, scope: !2236)
!2251 = !DILocation(line: 366, column: 3, scope: !2236)
!2252 = !DILocation(line: 367, column: 1, scope: !2236)
!2253 = distinct !DISubprogram(name: "fdadvise", scope: !899, file: !899, line: 25, type: !2254, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !898, retainedNodes: !2257)
!2254 = !DISubroutineType(types: !2255)
!2255 = !{null, !86, !516, !516, !2256}
!2256 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !112, line: 51, baseType: !111)
!2257 = !{!2258, !2259, !2260, !2261}
!2258 = !DILocalVariable(name: "fd", arg: 1, scope: !2253, file: !899, line: 25, type: !86)
!2259 = !DILocalVariable(name: "offset", arg: 2, scope: !2253, file: !899, line: 25, type: !516)
!2260 = !DILocalVariable(name: "len", arg: 3, scope: !2253, file: !899, line: 25, type: !516)
!2261 = !DILocalVariable(name: "advice", arg: 4, scope: !2253, file: !899, line: 25, type: !2256)
!2262 = !DILocation(line: 0, scope: !2253)
!2263 = !DILocation(line: 28, column: 3, scope: !2253)
!2264 = !DILocation(line: 30, column: 1, scope: !2253)
!2265 = !DISubprogram(name: "posix_fadvise", scope: !1943, file: !1943, line: 273, type: !2266, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !998)
!2266 = !DISubroutineType(types: !2267)
!2267 = !{!86, !86, !516, !516, !86}
!2268 = distinct !DISubprogram(name: "fadvise", scope: !899, file: !899, line: 33, type: !2269, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !898, retainedNodes: !2305)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{null, !2271, !2256}
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !290, line: 7, baseType: !2273)
!2273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !292, line: 49, size: 1728, elements: !2274)
!2274 = !{!2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2273, file: !292, line: 51, baseType: !86, size: 32)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2273, file: !292, line: 54, baseType: !88, size: 64, offset: 64)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2273, file: !292, line: 55, baseType: !88, size: 64, offset: 128)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2273, file: !292, line: 56, baseType: !88, size: 64, offset: 192)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2273, file: !292, line: 57, baseType: !88, size: 64, offset: 256)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2273, file: !292, line: 58, baseType: !88, size: 64, offset: 320)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2273, file: !292, line: 59, baseType: !88, size: 64, offset: 384)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2273, file: !292, line: 60, baseType: !88, size: 64, offset: 448)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2273, file: !292, line: 61, baseType: !88, size: 64, offset: 512)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2273, file: !292, line: 64, baseType: !88, size: 64, offset: 576)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2273, file: !292, line: 65, baseType: !88, size: 64, offset: 640)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2273, file: !292, line: 66, baseType: !88, size: 64, offset: 704)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2273, file: !292, line: 68, baseType: !307, size: 64, offset: 768)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2273, file: !292, line: 70, baseType: !2289, size: 64, offset: 832)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2273, file: !292, line: 72, baseType: !86, size: 32, offset: 896)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2273, file: !292, line: 73, baseType: !86, size: 32, offset: 928)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2273, file: !292, line: 74, baseType: !314, size: 64, offset: 960)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2273, file: !292, line: 77, baseType: !148, size: 16, offset: 1024)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2273, file: !292, line: 78, baseType: !318, size: 8, offset: 1040)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2273, file: !292, line: 79, baseType: !199, size: 8, offset: 1048)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2273, file: !292, line: 81, baseType: !321, size: 64, offset: 1088)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2273, file: !292, line: 89, baseType: !324, size: 64, offset: 1152)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2273, file: !292, line: 91, baseType: !326, size: 64, offset: 1216)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2273, file: !292, line: 92, baseType: !329, size: 64, offset: 1280)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2273, file: !292, line: 93, baseType: !2289, size: 64, offset: 1344)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2273, file: !292, line: 94, baseType: !144, size: 64, offset: 1408)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2273, file: !292, line: 95, baseType: !149, size: 64, offset: 1472)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2273, file: !292, line: 96, baseType: !86, size: 32, offset: 1536)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2273, file: !292, line: 98, baseType: !228, size: 160, offset: 1568)
!2305 = !{!2306, !2307}
!2306 = !DILocalVariable(name: "fp", arg: 1, scope: !2268, file: !899, line: 33, type: !2271)
!2307 = !DILocalVariable(name: "advice", arg: 2, scope: !2268, file: !899, line: 33, type: !2256)
!2308 = !DILocation(line: 0, scope: !2268)
!2309 = !DILocation(line: 35, column: 7, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2268, file: !899, line: 35, column: 7)
!2311 = !DILocation(line: 35, column: 7, scope: !2268)
!2312 = !DILocation(line: 36, column: 15, scope: !2310)
!2313 = !DILocation(line: 0, scope: !2253, inlinedAt: !2314)
!2314 = distinct !DILocation(line: 36, column: 5, scope: !2310)
!2315 = !DILocation(line: 28, column: 3, scope: !2253, inlinedAt: !2314)
!2316 = !DILocation(line: 36, column: 5, scope: !2310)
!2317 = !DILocation(line: 37, column: 1, scope: !2268)
!2318 = !DISubprogram(name: "fileno", scope: !517, file: !517, line: 809, type: !2319, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !998)
!2319 = !DISubroutineType(types: !2320)
!2320 = !{!86, !2271}
!2321 = distinct !DISubprogram(name: "rpl_fcntl", scope: !621, file: !621, line: 202, type: !2188, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !624, retainedNodes: !2322)
!2322 = !{!2323, !2324, !2325, !2336, !2337, !2340, !2342, !2346}
!2323 = !DILocalVariable(name: "fd", arg: 1, scope: !2321, file: !621, line: 202, type: !86)
!2324 = !DILocalVariable(name: "action", arg: 2, scope: !2321, file: !621, line: 202, type: !86)
!2325 = !DILocalVariable(name: "arg", scope: !2321, file: !621, line: 208, type: !2326)
!2326 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !577, line: 22, baseType: !2327)
!2327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2328, baseType: !2329)
!2328 = !DIFile(filename: "lib/fcntl.c", directory: "/src")
!2329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !2330)
!2330 = !{!2331, !2332, !2333, !2334, !2335}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !2329, file: !2328, line: 208, baseType: !144, size: 64)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !2329, file: !2328, line: 208, baseType: !144, size: 64, offset: 64)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !2329, file: !2328, line: 208, baseType: !144, size: 64, offset: 128)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !2329, file: !2328, line: 208, baseType: !86, size: 32, offset: 192)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !2329, file: !2328, line: 208, baseType: !86, size: 32, offset: 224)
!2336 = !DILocalVariable(name: "result", scope: !2321, file: !621, line: 211, type: !86)
!2337 = !DILocalVariable(name: "target", scope: !2338, file: !621, line: 216, type: !86)
!2338 = distinct !DILexicalBlock(scope: !2339, file: !621, line: 215, column: 7)
!2339 = distinct !DILexicalBlock(scope: !2321, file: !621, line: 213, column: 5)
!2340 = !DILocalVariable(name: "target", scope: !2341, file: !621, line: 223, type: !86)
!2341 = distinct !DILexicalBlock(scope: !2339, file: !621, line: 222, column: 7)
!2342 = !DILocalVariable(name: "x", scope: !2343, file: !621, line: 418, type: !86)
!2343 = distinct !DILexicalBlock(scope: !2344, file: !621, line: 417, column: 13)
!2344 = distinct !DILexicalBlock(scope: !2345, file: !621, line: 261, column: 11)
!2345 = distinct !DILexicalBlock(scope: !2339, file: !621, line: 258, column: 7)
!2346 = !DILocalVariable(name: "p", scope: !2347, file: !621, line: 426, type: !144)
!2347 = distinct !DILexicalBlock(scope: !2344, file: !621, line: 425, column: 13)
!2348 = !DILocation(line: 0, scope: !2321)
!2349 = !DILocation(line: 208, column: 3, scope: !2321)
!2350 = !DILocation(line: 208, column: 11, scope: !2321)
!2351 = !DILocation(line: 209, column: 3, scope: !2321)
!2352 = !DILocation(line: 212, column: 3, scope: !2321)
!2353 = !DILocation(line: 216, column: 22, scope: !2338)
!2354 = !DILocation(line: 0, scope: !2338)
!2355 = !DILocalVariable(name: "fd", arg: 1, scope: !2356, file: !621, line: 444, type: !86)
!2356 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD", scope: !621, file: !621, line: 444, type: !622, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !624, retainedNodes: !2357)
!2357 = !{!2355, !2358, !2359}
!2358 = !DILocalVariable(name: "target", arg: 2, scope: !2356, file: !621, line: 444, type: !86)
!2359 = !DILocalVariable(name: "result", scope: !2356, file: !621, line: 446, type: !86)
!2360 = !DILocation(line: 0, scope: !2356, inlinedAt: !2361)
!2361 = distinct !DILocation(line: 217, column: 18, scope: !2338)
!2362 = !DILocation(line: 479, column: 12, scope: !2356, inlinedAt: !2361)
!2363 = !DILocation(line: 223, column: 22, scope: !2341)
!2364 = !DILocation(line: 0, scope: !2341)
!2365 = !DILocation(line: 0, scope: !620, inlinedAt: !2366)
!2366 = distinct !DILocation(line: 224, column: 18, scope: !2341)
!2367 = !DILocation(line: 507, column: 12, scope: !2368, inlinedAt: !2366)
!2368 = distinct !DILexicalBlock(scope: !620, file: !621, line: 507, column: 7)
!2369 = !DILocation(line: 507, column: 9, scope: !2368, inlinedAt: !2366)
!2370 = !DILocation(line: 507, column: 7, scope: !620, inlinedAt: !2366)
!2371 = !DILocation(line: 509, column: 16, scope: !2372, inlinedAt: !2366)
!2372 = distinct !DILexicalBlock(scope: !2368, file: !621, line: 508, column: 5)
!2373 = !DILocation(line: 510, column: 13, scope: !2374, inlinedAt: !2366)
!2374 = distinct !DILexicalBlock(scope: !2372, file: !621, line: 510, column: 11)
!2375 = !DILocation(line: 510, column: 23, scope: !2374, inlinedAt: !2366)
!2376 = !DILocation(line: 510, column: 26, scope: !2374, inlinedAt: !2366)
!2377 = !DILocation(line: 510, column: 32, scope: !2374, inlinedAt: !2366)
!2378 = !DILocation(line: 510, column: 11, scope: !2372, inlinedAt: !2366)
!2379 = !DILocation(line: 512, column: 30, scope: !2380, inlinedAt: !2366)
!2380 = distinct !DILexicalBlock(scope: !2374, file: !621, line: 511, column: 9)
!2381 = !DILocation(line: 528, column: 19, scope: !632, inlinedAt: !2366)
!2382 = !DILocation(line: 0, scope: !2356, inlinedAt: !2383)
!2383 = distinct !DILocation(line: 520, column: 20, scope: !2384, inlinedAt: !2366)
!2384 = distinct !DILexicalBlock(scope: !2374, file: !621, line: 519, column: 9)
!2385 = !DILocation(line: 479, column: 12, scope: !2356, inlinedAt: !2383)
!2386 = !DILocation(line: 521, column: 22, scope: !2387, inlinedAt: !2366)
!2387 = distinct !DILexicalBlock(scope: !2384, file: !621, line: 521, column: 15)
!2388 = !DILocation(line: 521, column: 15, scope: !2384, inlinedAt: !2366)
!2389 = !DILocation(line: 522, column: 32, scope: !2387, inlinedAt: !2366)
!2390 = !DILocation(line: 522, column: 13, scope: !2387, inlinedAt: !2366)
!2391 = !DILocation(line: 0, scope: !2356, inlinedAt: !2392)
!2392 = distinct !DILocation(line: 527, column: 14, scope: !2368, inlinedAt: !2366)
!2393 = !DILocation(line: 479, column: 12, scope: !2356, inlinedAt: !2392)
!2394 = !DILocation(line: 0, scope: !2368, inlinedAt: !2366)
!2395 = !DILocation(line: 528, column: 9, scope: !632, inlinedAt: !2366)
!2396 = !DILocation(line: 530, column: 19, scope: !631, inlinedAt: !2366)
!2397 = !DILocation(line: 0, scope: !631, inlinedAt: !2366)
!2398 = !DILocation(line: 531, column: 17, scope: !635, inlinedAt: !2366)
!2399 = !DILocation(line: 531, column: 21, scope: !635, inlinedAt: !2366)
!2400 = !DILocation(line: 531, column: 54, scope: !635, inlinedAt: !2366)
!2401 = !DILocation(line: 531, column: 24, scope: !635, inlinedAt: !2366)
!2402 = !DILocation(line: 531, column: 68, scope: !635, inlinedAt: !2366)
!2403 = !DILocation(line: 531, column: 11, scope: !631, inlinedAt: !2366)
!2404 = !DILocation(line: 533, column: 29, scope: !634, inlinedAt: !2366)
!2405 = !DILocation(line: 0, scope: !634, inlinedAt: !2366)
!2406 = !DILocation(line: 534, column: 11, scope: !634, inlinedAt: !2366)
!2407 = !DILocation(line: 535, column: 17, scope: !634, inlinedAt: !2366)
!2408 = !DILocation(line: 537, column: 9, scope: !634, inlinedAt: !2366)
!2409 = !DILocation(line: 329, column: 22, scope: !2344)
!2410 = !DILocation(line: 330, column: 13, scope: !2344)
!2411 = !DILocation(line: 418, column: 23, scope: !2343)
!2412 = !DILocation(line: 0, scope: !2343)
!2413 = !DILocation(line: 419, column: 24, scope: !2343)
!2414 = !DILocation(line: 421, column: 13, scope: !2344)
!2415 = !DILocation(line: 426, column: 25, scope: !2347)
!2416 = !DILocation(line: 0, scope: !2347)
!2417 = !DILocation(line: 427, column: 24, scope: !2347)
!2418 = !DILocation(line: 429, column: 13, scope: !2344)
!2419 = !DILocation(line: 0, scope: !2339)
!2420 = !DILocation(line: 438, column: 3, scope: !2321)
!2421 = !DILocation(line: 441, column: 1, scope: !2321)
!2422 = !DILocation(line: 440, column: 3, scope: !2321)
!2423 = distinct !DISubprogram(name: "fpurge", scope: !902, file: !902, line: 32, type: !2424, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !901, retainedNodes: !2460)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{!86, !2426}
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !290, line: 7, baseType: !2428)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !292, line: 49, size: 1728, elements: !2429)
!2429 = !{!2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2428, file: !292, line: 51, baseType: !86, size: 32)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2428, file: !292, line: 54, baseType: !88, size: 64, offset: 64)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2428, file: !292, line: 55, baseType: !88, size: 64, offset: 128)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2428, file: !292, line: 56, baseType: !88, size: 64, offset: 192)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2428, file: !292, line: 57, baseType: !88, size: 64, offset: 256)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2428, file: !292, line: 58, baseType: !88, size: 64, offset: 320)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2428, file: !292, line: 59, baseType: !88, size: 64, offset: 384)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2428, file: !292, line: 60, baseType: !88, size: 64, offset: 448)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2428, file: !292, line: 61, baseType: !88, size: 64, offset: 512)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2428, file: !292, line: 64, baseType: !88, size: 64, offset: 576)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2428, file: !292, line: 65, baseType: !88, size: 64, offset: 640)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2428, file: !292, line: 66, baseType: !88, size: 64, offset: 704)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2428, file: !292, line: 68, baseType: !307, size: 64, offset: 768)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2428, file: !292, line: 70, baseType: !2444, size: 64, offset: 832)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2428, file: !292, line: 72, baseType: !86, size: 32, offset: 896)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2428, file: !292, line: 73, baseType: !86, size: 32, offset: 928)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2428, file: !292, line: 74, baseType: !314, size: 64, offset: 960)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2428, file: !292, line: 77, baseType: !148, size: 16, offset: 1024)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2428, file: !292, line: 78, baseType: !318, size: 8, offset: 1040)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2428, file: !292, line: 79, baseType: !199, size: 8, offset: 1048)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2428, file: !292, line: 81, baseType: !321, size: 64, offset: 1088)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2428, file: !292, line: 89, baseType: !324, size: 64, offset: 1152)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2428, file: !292, line: 91, baseType: !326, size: 64, offset: 1216)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2428, file: !292, line: 92, baseType: !329, size: 64, offset: 1280)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2428, file: !292, line: 93, baseType: !2444, size: 64, offset: 1344)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2428, file: !292, line: 94, baseType: !144, size: 64, offset: 1408)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2428, file: !292, line: 95, baseType: !149, size: 64, offset: 1472)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2428, file: !292, line: 96, baseType: !86, size: 32, offset: 1536)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2428, file: !292, line: 98, baseType: !228, size: 160, offset: 1568)
!2460 = !{!2461}
!2461 = !DILocalVariable(name: "fp", arg: 1, scope: !2423, file: !902, line: 32, type: !2426)
!2462 = !DILocation(line: 0, scope: !2423)
!2463 = !DILocation(line: 36, column: 3, scope: !2423)
!2464 = !DILocation(line: 38, column: 3, scope: !2423)
!2465 = !DISubprogram(name: "__fpurge", scope: !2466, file: !2466, line: 72, type: !2467, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !998)
!2466 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!2467 = !DISubroutineType(types: !2468)
!2468 = !{null, !2426}
!2469 = distinct !DISubprogram(name: "full_write", scope: !904, file: !904, line: 58, type: !2470, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !903, retainedNodes: !2472)
!2470 = !DISubroutineType(types: !2471)
!2471 = !{!501, !86, !1208, !501}
!2472 = !{!2473, !2474, !2475, !2476, !2477, !2478}
!2473 = !DILocalVariable(name: "fd", arg: 1, scope: !2469, file: !904, line: 58, type: !86)
!2474 = !DILocalVariable(name: "buf", arg: 2, scope: !2469, file: !904, line: 58, type: !1208)
!2475 = !DILocalVariable(name: "count", arg: 3, scope: !2469, file: !904, line: 58, type: !501)
!2476 = !DILocalVariable(name: "total", scope: !2469, file: !904, line: 60, type: !501)
!2477 = !DILocalVariable(name: "ptr", scope: !2469, file: !904, line: 61, type: !151)
!2478 = !DILocalVariable(name: "n_rw", scope: !2479, file: !904, line: 65, type: !503)
!2479 = distinct !DILexicalBlock(scope: !2469, file: !904, line: 64, column: 5)
!2480 = !DILocation(line: 0, scope: !2469)
!2481 = !DILocation(line: 63, column: 16, scope: !2469)
!2482 = !DILocation(line: 63, column: 3, scope: !2469)
!2483 = !DILocation(line: 65, column: 24, scope: !2479)
!2484 = !DILocation(line: 0, scope: !2479)
!2485 = !DILocation(line: 66, column: 16, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2479, file: !904, line: 66, column: 11)
!2487 = !DILocation(line: 66, column: 11, scope: !2479)
!2488 = !DILocation(line: 68, column: 16, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2479, file: !904, line: 68, column: 11)
!2490 = !DILocation(line: 68, column: 11, scope: !2479)
!2491 = !DILocation(line: 70, column: 11, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2489, file: !904, line: 69, column: 9)
!2493 = !DILocation(line: 70, column: 17, scope: !2492)
!2494 = !DILocation(line: 71, column: 11, scope: !2492)
!2495 = !DILocation(line: 73, column: 13, scope: !2479)
!2496 = !DILocation(line: 74, column: 11, scope: !2479)
!2497 = !DILocation(line: 75, column: 13, scope: !2479)
!2498 = !DILocation(line: 78, column: 3, scope: !2469)
!2499 = distinct !DISubprogram(name: "getprogname", scope: !907, file: !907, line: 54, type: !2500, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !906, retainedNodes: !998)
!2500 = !DISubroutineType(types: !905)
!2501 = !DILocation(line: 58, column: 10, scope: !2499)
!2502 = !DILocation(line: 58, column: 3, scope: !2499)
!2503 = distinct !DISubprogram(name: "set_program_name", scope: !639, file: !639, line: 37, type: !1015, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !638, retainedNodes: !2504)
!2504 = !{!2505, !2506, !2507}
!2505 = !DILocalVariable(name: "argv0", arg: 1, scope: !2503, file: !639, line: 37, type: !151)
!2506 = !DILocalVariable(name: "slash", scope: !2503, file: !639, line: 44, type: !151)
!2507 = !DILocalVariable(name: "base", scope: !2503, file: !639, line: 45, type: !151)
!2508 = !DILocation(line: 0, scope: !2503)
!2509 = !DILocation(line: 44, column: 23, scope: !2503)
!2510 = !DILocation(line: 45, column: 22, scope: !2503)
!2511 = !DILocation(line: 46, column: 17, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2503, file: !639, line: 46, column: 7)
!2513 = !DILocation(line: 46, column: 9, scope: !2512)
!2514 = !DILocation(line: 46, column: 25, scope: !2512)
!2515 = !DILocation(line: 46, column: 40, scope: !2512)
!2516 = !DILocalVariable(name: "__s1", arg: 1, scope: !2517, file: !1076, line: 974, type: !1208)
!2517 = distinct !DISubprogram(name: "memeq", scope: !1076, file: !1076, line: 974, type: !2518, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !638, retainedNodes: !2520)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{!145, !1208, !1208, !149}
!2520 = !{!2516, !2521, !2522}
!2521 = !DILocalVariable(name: "__s2", arg: 2, scope: !2517, file: !1076, line: 974, type: !1208)
!2522 = !DILocalVariable(name: "__n", arg: 3, scope: !2517, file: !1076, line: 974, type: !149)
!2523 = !DILocation(line: 0, scope: !2517, inlinedAt: !2524)
!2524 = distinct !DILocation(line: 46, column: 28, scope: !2512)
!2525 = !DILocation(line: 976, column: 11, scope: !2517, inlinedAt: !2524)
!2526 = !DILocation(line: 976, column: 10, scope: !2517, inlinedAt: !2524)
!2527 = !DILocation(line: 46, column: 7, scope: !2503)
!2528 = !DILocation(line: 49, column: 11, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2530, file: !639, line: 49, column: 11)
!2530 = distinct !DILexicalBlock(scope: !2512, file: !639, line: 47, column: 5)
!2531 = !DILocation(line: 49, column: 36, scope: !2529)
!2532 = !DILocation(line: 49, column: 11, scope: !2530)
!2533 = !DILocation(line: 65, column: 16, scope: !2503)
!2534 = !DILocation(line: 71, column: 27, scope: !2503)
!2535 = !DILocation(line: 74, column: 33, scope: !2503)
!2536 = !DILocation(line: 76, column: 1, scope: !2503)
!2537 = !DISubprogram(name: "strrchr", scope: !1180, file: !1180, line: 273, type: !1195, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !998)
!2538 = !DILocation(line: 0, scope: !648)
!2539 = !DILocation(line: 40, column: 29, scope: !648)
!2540 = !DILocation(line: 41, column: 19, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !648, file: !649, line: 41, column: 7)
!2542 = !DILocation(line: 41, column: 7, scope: !648)
!2543 = !DILocation(line: 47, column: 3, scope: !648)
!2544 = !DILocation(line: 48, column: 3, scope: !648)
!2545 = !DILocation(line: 48, column: 13, scope: !648)
!2546 = !DILocalVariable(name: "ps", arg: 1, scope: !2547, file: !2548, line: 1135, type: !2551)
!2547 = distinct !DISubprogram(name: "mbszero", scope: !2548, file: !2548, line: 1135, type: !2549, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !652, retainedNodes: !2552)
!2548 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2549 = !DISubroutineType(types: !2550)
!2550 = !{null, !2551}
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!2552 = !{!2546}
!2553 = !DILocation(line: 0, scope: !2547, inlinedAt: !2554)
!2554 = distinct !DILocation(line: 48, column: 18, scope: !648)
!2555 = !DILocalVariable(name: "__dest", arg: 1, scope: !2556, file: !1530, line: 57, type: !144)
!2556 = distinct !DISubprogram(name: "memset", scope: !1530, file: !1530, line: 57, type: !2557, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !652, retainedNodes: !2559)
!2557 = !DISubroutineType(types: !2558)
!2558 = !{!144, !144, !86, !149}
!2559 = !{!2555, !2560, !2561}
!2560 = !DILocalVariable(name: "__ch", arg: 2, scope: !2556, file: !1530, line: 57, type: !86)
!2561 = !DILocalVariable(name: "__len", arg: 3, scope: !2556, file: !1530, line: 57, type: !149)
!2562 = !DILocation(line: 0, scope: !2556, inlinedAt: !2563)
!2563 = distinct !DILocation(line: 1137, column: 3, scope: !2547, inlinedAt: !2554)
!2564 = !DILocation(line: 59, column: 10, scope: !2556, inlinedAt: !2563)
!2565 = !DILocation(line: 49, column: 7, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !648, file: !649, line: 49, column: 7)
!2567 = !DILocation(line: 49, column: 39, scope: !2566)
!2568 = !DILocation(line: 49, column: 44, scope: !2566)
!2569 = !DILocation(line: 54, column: 1, scope: !648)
!2570 = !DISubprogram(name: "mbrtoc32", scope: !660, file: !660, line: 57, type: !2571, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !998)
!2571 = !DISubroutineType(types: !2572)
!2572 = !{!149, !2573, !1054, !149, !2575}
!2573 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2574)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!2575 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2551)
!2576 = distinct !DISubprogram(name: "clone_quoting_options", scope: !679, file: !679, line: 113, type: !2577, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !2580)
!2577 = !DISubroutineType(types: !2578)
!2578 = !{!2579, !2579}
!2579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!2580 = !{!2581, !2582, !2583}
!2581 = !DILocalVariable(name: "o", arg: 1, scope: !2576, file: !679, line: 113, type: !2579)
!2582 = !DILocalVariable(name: "saved_errno", scope: !2576, file: !679, line: 115, type: !86)
!2583 = !DILocalVariable(name: "p", scope: !2576, file: !679, line: 116, type: !2579)
!2584 = !DILocation(line: 0, scope: !2576)
!2585 = !DILocation(line: 115, column: 21, scope: !2576)
!2586 = !DILocation(line: 116, column: 40, scope: !2576)
!2587 = !DILocation(line: 116, column: 31, scope: !2576)
!2588 = !DILocation(line: 118, column: 9, scope: !2576)
!2589 = !DILocation(line: 119, column: 3, scope: !2576)
!2590 = distinct !DISubprogram(name: "get_quoting_style", scope: !679, file: !679, line: 124, type: !2591, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !2595)
!2591 = !DISubroutineType(types: !2592)
!2592 = !{!96, !2593}
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !718)
!2595 = !{!2596}
!2596 = !DILocalVariable(name: "o", arg: 1, scope: !2590, file: !679, line: 124, type: !2593)
!2597 = !DILocation(line: 0, scope: !2590)
!2598 = !DILocation(line: 126, column: 11, scope: !2590)
!2599 = !DILocation(line: 126, column: 46, scope: !2590)
!2600 = !{!2601, !991, i64 0}
!2601 = !{!"quoting_options", !991, i64 0, !1064, i64 4, !991, i64 8, !990, i64 40, !990, i64 48}
!2602 = !DILocation(line: 126, column: 3, scope: !2590)
!2603 = distinct !DISubprogram(name: "set_quoting_style", scope: !679, file: !679, line: 132, type: !2604, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !2606)
!2604 = !DISubroutineType(types: !2605)
!2605 = !{null, !2579, !96}
!2606 = !{!2607, !2608}
!2607 = !DILocalVariable(name: "o", arg: 1, scope: !2603, file: !679, line: 132, type: !2579)
!2608 = !DILocalVariable(name: "s", arg: 2, scope: !2603, file: !679, line: 132, type: !96)
!2609 = !DILocation(line: 0, scope: !2603)
!2610 = !DILocation(line: 134, column: 4, scope: !2603)
!2611 = !DILocation(line: 134, column: 45, scope: !2603)
!2612 = !DILocation(line: 135, column: 1, scope: !2603)
!2613 = distinct !DISubprogram(name: "set_char_quoting", scope: !679, file: !679, line: 143, type: !2614, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !2616)
!2614 = !DISubroutineType(types: !2615)
!2615 = !{!86, !2579, !4, !86}
!2616 = !{!2617, !2618, !2619, !2620, !2621, !2623, !2624}
!2617 = !DILocalVariable(name: "o", arg: 1, scope: !2613, file: !679, line: 143, type: !2579)
!2618 = !DILocalVariable(name: "c", arg: 2, scope: !2613, file: !679, line: 143, type: !4)
!2619 = !DILocalVariable(name: "i", arg: 3, scope: !2613, file: !679, line: 143, type: !86)
!2620 = !DILocalVariable(name: "uc", scope: !2613, file: !679, line: 145, type: !153)
!2621 = !DILocalVariable(name: "p", scope: !2613, file: !679, line: 146, type: !2622)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!2623 = !DILocalVariable(name: "shift", scope: !2613, file: !679, line: 148, type: !86)
!2624 = !DILocalVariable(name: "r", scope: !2613, file: !679, line: 149, type: !98)
!2625 = !DILocation(line: 0, scope: !2613)
!2626 = !DILocation(line: 147, column: 6, scope: !2613)
!2627 = !DILocation(line: 147, column: 41, scope: !2613)
!2628 = !DILocation(line: 147, column: 62, scope: !2613)
!2629 = !DILocation(line: 147, column: 57, scope: !2613)
!2630 = !DILocation(line: 148, column: 15, scope: !2613)
!2631 = !DILocation(line: 149, column: 21, scope: !2613)
!2632 = !DILocation(line: 149, column: 24, scope: !2613)
!2633 = !DILocation(line: 149, column: 34, scope: !2613)
!2634 = !DILocation(line: 150, column: 19, scope: !2613)
!2635 = !DILocation(line: 150, column: 24, scope: !2613)
!2636 = !DILocation(line: 150, column: 6, scope: !2613)
!2637 = !DILocation(line: 151, column: 3, scope: !2613)
!2638 = distinct !DISubprogram(name: "set_quoting_flags", scope: !679, file: !679, line: 159, type: !2639, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !2641)
!2639 = !DISubroutineType(types: !2640)
!2640 = !{!86, !2579, !86}
!2641 = !{!2642, !2643, !2644}
!2642 = !DILocalVariable(name: "o", arg: 1, scope: !2638, file: !679, line: 159, type: !2579)
!2643 = !DILocalVariable(name: "i", arg: 2, scope: !2638, file: !679, line: 159, type: !86)
!2644 = !DILocalVariable(name: "r", scope: !2638, file: !679, line: 163, type: !86)
!2645 = !DILocation(line: 0, scope: !2638)
!2646 = !DILocation(line: 161, column: 8, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2638, file: !679, line: 161, column: 7)
!2648 = !DILocation(line: 161, column: 7, scope: !2638)
!2649 = !DILocation(line: 163, column: 14, scope: !2638)
!2650 = !{!2601, !1064, i64 4}
!2651 = !DILocation(line: 164, column: 12, scope: !2638)
!2652 = !DILocation(line: 165, column: 3, scope: !2638)
!2653 = distinct !DISubprogram(name: "set_custom_quoting", scope: !679, file: !679, line: 169, type: !2654, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !2656)
!2654 = !DISubroutineType(types: !2655)
!2655 = !{null, !2579, !151, !151}
!2656 = !{!2657, !2658, !2659}
!2657 = !DILocalVariable(name: "o", arg: 1, scope: !2653, file: !679, line: 169, type: !2579)
!2658 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2653, file: !679, line: 170, type: !151)
!2659 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2653, file: !679, line: 170, type: !151)
!2660 = !DILocation(line: 0, scope: !2653)
!2661 = !DILocation(line: 172, column: 8, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2653, file: !679, line: 172, column: 7)
!2663 = !DILocation(line: 172, column: 7, scope: !2653)
!2664 = !DILocation(line: 174, column: 12, scope: !2653)
!2665 = !DILocation(line: 175, column: 8, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2653, file: !679, line: 175, column: 7)
!2667 = !DILocation(line: 175, column: 19, scope: !2666)
!2668 = !DILocation(line: 176, column: 5, scope: !2666)
!2669 = !DILocation(line: 177, column: 6, scope: !2653)
!2670 = !DILocation(line: 177, column: 17, scope: !2653)
!2671 = !{!2601, !990, i64 40}
!2672 = !DILocation(line: 178, column: 6, scope: !2653)
!2673 = !DILocation(line: 178, column: 18, scope: !2653)
!2674 = !{!2601, !990, i64 48}
!2675 = !DILocation(line: 179, column: 1, scope: !2653)
!2676 = !DISubprogram(name: "abort", scope: !1184, file: !1184, line: 598, type: !616, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !998)
!2677 = distinct !DISubprogram(name: "quotearg_buffer", scope: !679, file: !679, line: 774, type: !2678, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !2680)
!2678 = !DISubroutineType(types: !2679)
!2679 = !{!149, !88, !149, !151, !149, !2593}
!2680 = !{!2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688}
!2681 = !DILocalVariable(name: "buffer", arg: 1, scope: !2677, file: !679, line: 774, type: !88)
!2682 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2677, file: !679, line: 774, type: !149)
!2683 = !DILocalVariable(name: "arg", arg: 3, scope: !2677, file: !679, line: 775, type: !151)
!2684 = !DILocalVariable(name: "argsize", arg: 4, scope: !2677, file: !679, line: 775, type: !149)
!2685 = !DILocalVariable(name: "o", arg: 5, scope: !2677, file: !679, line: 776, type: !2593)
!2686 = !DILocalVariable(name: "p", scope: !2677, file: !679, line: 778, type: !2593)
!2687 = !DILocalVariable(name: "saved_errno", scope: !2677, file: !679, line: 779, type: !86)
!2688 = !DILocalVariable(name: "r", scope: !2677, file: !679, line: 780, type: !149)
!2689 = !DILocation(line: 0, scope: !2677)
!2690 = !DILocation(line: 778, column: 37, scope: !2677)
!2691 = !DILocation(line: 779, column: 21, scope: !2677)
!2692 = !DILocation(line: 781, column: 43, scope: !2677)
!2693 = !DILocation(line: 781, column: 53, scope: !2677)
!2694 = !DILocation(line: 781, column: 63, scope: !2677)
!2695 = !DILocation(line: 782, column: 43, scope: !2677)
!2696 = !DILocation(line: 782, column: 58, scope: !2677)
!2697 = !DILocation(line: 780, column: 14, scope: !2677)
!2698 = !DILocation(line: 783, column: 9, scope: !2677)
!2699 = !DILocation(line: 784, column: 3, scope: !2677)
!2700 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !679, file: !679, line: 251, type: !2701, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !2705)
!2701 = !DISubroutineType(types: !2702)
!2702 = !{!149, !88, !149, !151, !149, !96, !86, !2703, !151, !151}
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!2705 = !{!2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2730, !2732, !2735, !2736, !2737, !2738, !2741, !2742, !2745, !2749, !2750, !2758, !2761, !2762, !2764, !2765, !2766, !2767}
!2706 = !DILocalVariable(name: "buffer", arg: 1, scope: !2700, file: !679, line: 251, type: !88)
!2707 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2700, file: !679, line: 251, type: !149)
!2708 = !DILocalVariable(name: "arg", arg: 3, scope: !2700, file: !679, line: 252, type: !151)
!2709 = !DILocalVariable(name: "argsize", arg: 4, scope: !2700, file: !679, line: 252, type: !149)
!2710 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2700, file: !679, line: 253, type: !96)
!2711 = !DILocalVariable(name: "flags", arg: 6, scope: !2700, file: !679, line: 253, type: !86)
!2712 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2700, file: !679, line: 254, type: !2703)
!2713 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2700, file: !679, line: 255, type: !151)
!2714 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2700, file: !679, line: 256, type: !151)
!2715 = !DILocalVariable(name: "unibyte_locale", scope: !2700, file: !679, line: 258, type: !145)
!2716 = !DILocalVariable(name: "len", scope: !2700, file: !679, line: 260, type: !149)
!2717 = !DILocalVariable(name: "orig_buffersize", scope: !2700, file: !679, line: 261, type: !149)
!2718 = !DILocalVariable(name: "quote_string", scope: !2700, file: !679, line: 262, type: !151)
!2719 = !DILocalVariable(name: "quote_string_len", scope: !2700, file: !679, line: 263, type: !149)
!2720 = !DILocalVariable(name: "backslash_escapes", scope: !2700, file: !679, line: 264, type: !145)
!2721 = !DILocalVariable(name: "elide_outer_quotes", scope: !2700, file: !679, line: 265, type: !145)
!2722 = !DILocalVariable(name: "encountered_single_quote", scope: !2700, file: !679, line: 266, type: !145)
!2723 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2700, file: !679, line: 267, type: !145)
!2724 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2700, file: !679, line: 309, type: !145)
!2725 = !DILocalVariable(name: "lq", scope: !2726, file: !679, line: 361, type: !151)
!2726 = distinct !DILexicalBlock(scope: !2727, file: !679, line: 361, column: 11)
!2727 = distinct !DILexicalBlock(scope: !2728, file: !679, line: 360, column: 13)
!2728 = distinct !DILexicalBlock(scope: !2729, file: !679, line: 333, column: 7)
!2729 = distinct !DILexicalBlock(scope: !2700, file: !679, line: 312, column: 5)
!2730 = !DILocalVariable(name: "i", scope: !2731, file: !679, line: 395, type: !149)
!2731 = distinct !DILexicalBlock(scope: !2700, file: !679, line: 395, column: 3)
!2732 = !DILocalVariable(name: "is_right_quote", scope: !2733, file: !679, line: 397, type: !145)
!2733 = distinct !DILexicalBlock(scope: !2734, file: !679, line: 396, column: 5)
!2734 = distinct !DILexicalBlock(scope: !2731, file: !679, line: 395, column: 3)
!2735 = !DILocalVariable(name: "escaping", scope: !2733, file: !679, line: 398, type: !145)
!2736 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2733, file: !679, line: 399, type: !145)
!2737 = !DILocalVariable(name: "c", scope: !2733, file: !679, line: 417, type: !153)
!2738 = !DILocalVariable(name: "m", scope: !2739, file: !679, line: 598, type: !149)
!2739 = distinct !DILexicalBlock(scope: !2740, file: !679, line: 596, column: 11)
!2740 = distinct !DILexicalBlock(scope: !2733, file: !679, line: 419, column: 9)
!2741 = !DILocalVariable(name: "printable", scope: !2739, file: !679, line: 600, type: !145)
!2742 = !DILocalVariable(name: "mbs", scope: !2743, file: !679, line: 609, type: !752)
!2743 = distinct !DILexicalBlock(scope: !2744, file: !679, line: 608, column: 15)
!2744 = distinct !DILexicalBlock(scope: !2739, file: !679, line: 602, column: 17)
!2745 = !DILocalVariable(name: "w", scope: !2746, file: !679, line: 618, type: !659)
!2746 = distinct !DILexicalBlock(scope: !2747, file: !679, line: 617, column: 19)
!2747 = distinct !DILexicalBlock(scope: !2748, file: !679, line: 616, column: 17)
!2748 = distinct !DILexicalBlock(scope: !2743, file: !679, line: 616, column: 17)
!2749 = !DILocalVariable(name: "bytes", scope: !2746, file: !679, line: 619, type: !149)
!2750 = !DILocalVariable(name: "j", scope: !2751, file: !679, line: 648, type: !149)
!2751 = distinct !DILexicalBlock(scope: !2752, file: !679, line: 648, column: 29)
!2752 = distinct !DILexicalBlock(scope: !2753, file: !679, line: 647, column: 27)
!2753 = distinct !DILexicalBlock(scope: !2754, file: !679, line: 645, column: 29)
!2754 = distinct !DILexicalBlock(scope: !2755, file: !679, line: 636, column: 23)
!2755 = distinct !DILexicalBlock(scope: !2756, file: !679, line: 628, column: 30)
!2756 = distinct !DILexicalBlock(scope: !2757, file: !679, line: 623, column: 30)
!2757 = distinct !DILexicalBlock(scope: !2746, file: !679, line: 621, column: 25)
!2758 = !DILocalVariable(name: "ilim", scope: !2759, file: !679, line: 674, type: !149)
!2759 = distinct !DILexicalBlock(scope: !2760, file: !679, line: 671, column: 15)
!2760 = distinct !DILexicalBlock(scope: !2739, file: !679, line: 670, column: 17)
!2761 = !DILabel(scope: !2700, name: "process_input", file: !679, line: 308)
!2762 = !DILabel(scope: !2763, name: "c_and_shell_escape", file: !679, line: 502)
!2763 = distinct !DILexicalBlock(scope: !2740, file: !679, line: 478, column: 9)
!2764 = !DILabel(scope: !2763, name: "c_escape", file: !679, line: 507)
!2765 = !DILabel(scope: !2733, name: "store_escape", file: !679, line: 709)
!2766 = !DILabel(scope: !2733, name: "store_c", file: !679, line: 712)
!2767 = !DILabel(scope: !2700, name: "force_outer_quoting_style", file: !679, line: 753)
!2768 = !DILocation(line: 0, scope: !2700)
!2769 = !DILocation(line: 258, column: 25, scope: !2700)
!2770 = !DILocation(line: 258, column: 36, scope: !2700)
!2771 = !DILocation(line: 267, column: 3, scope: !2700)
!2772 = !DILocation(line: 261, column: 10, scope: !2700)
!2773 = !DILocation(line: 262, column: 15, scope: !2700)
!2774 = !DILocation(line: 263, column: 10, scope: !2700)
!2775 = !DILocation(line: 308, column: 2, scope: !2700)
!2776 = !DILocation(line: 311, column: 3, scope: !2700)
!2777 = !DILocation(line: 318, column: 11, scope: !2729)
!2778 = !DILocation(line: 319, column: 9, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2780, file: !679, line: 319, column: 9)
!2780 = distinct !DILexicalBlock(scope: !2781, file: !679, line: 319, column: 9)
!2781 = distinct !DILexicalBlock(scope: !2729, file: !679, line: 318, column: 11)
!2782 = !DILocation(line: 319, column: 9, scope: !2780)
!2783 = !DILocation(line: 0, scope: !743, inlinedAt: !2784)
!2784 = distinct !DILocation(line: 357, column: 26, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2786, file: !679, line: 335, column: 11)
!2786 = distinct !DILexicalBlock(scope: !2728, file: !679, line: 334, column: 13)
!2787 = !DILocation(line: 199, column: 29, scope: !743, inlinedAt: !2784)
!2788 = !DILocation(line: 201, column: 19, scope: !2789, inlinedAt: !2784)
!2789 = distinct !DILexicalBlock(scope: !743, file: !679, line: 201, column: 7)
!2790 = !DILocation(line: 201, column: 7, scope: !743, inlinedAt: !2784)
!2791 = !DILocation(line: 229, column: 3, scope: !743, inlinedAt: !2784)
!2792 = !DILocation(line: 230, column: 3, scope: !743, inlinedAt: !2784)
!2793 = !DILocation(line: 230, column: 13, scope: !743, inlinedAt: !2784)
!2794 = !DILocalVariable(name: "ps", arg: 1, scope: !2795, file: !2548, line: 1135, type: !2798)
!2795 = distinct !DISubprogram(name: "mbszero", scope: !2548, file: !2548, line: 1135, type: !2796, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !2799)
!2796 = !DISubroutineType(types: !2797)
!2797 = !{null, !2798}
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!2799 = !{!2794}
!2800 = !DILocation(line: 0, scope: !2795, inlinedAt: !2801)
!2801 = distinct !DILocation(line: 230, column: 18, scope: !743, inlinedAt: !2784)
!2802 = !DILocalVariable(name: "__dest", arg: 1, scope: !2803, file: !1530, line: 57, type: !144)
!2803 = distinct !DISubprogram(name: "memset", scope: !1530, file: !1530, line: 57, type: !2557, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !2804)
!2804 = !{!2802, !2805, !2806}
!2805 = !DILocalVariable(name: "__ch", arg: 2, scope: !2803, file: !1530, line: 57, type: !86)
!2806 = !DILocalVariable(name: "__len", arg: 3, scope: !2803, file: !1530, line: 57, type: !149)
!2807 = !DILocation(line: 0, scope: !2803, inlinedAt: !2808)
!2808 = distinct !DILocation(line: 1137, column: 3, scope: !2795, inlinedAt: !2801)
!2809 = !DILocation(line: 59, column: 10, scope: !2803, inlinedAt: !2808)
!2810 = !DILocation(line: 231, column: 7, scope: !2811, inlinedAt: !2784)
!2811 = distinct !DILexicalBlock(scope: !743, file: !679, line: 231, column: 7)
!2812 = !DILocation(line: 231, column: 40, scope: !2811, inlinedAt: !2784)
!2813 = !DILocation(line: 231, column: 45, scope: !2811, inlinedAt: !2784)
!2814 = !DILocation(line: 235, column: 1, scope: !743, inlinedAt: !2784)
!2815 = !DILocation(line: 0, scope: !743, inlinedAt: !2816)
!2816 = distinct !DILocation(line: 358, column: 27, scope: !2785)
!2817 = !DILocation(line: 199, column: 29, scope: !743, inlinedAt: !2816)
!2818 = !DILocation(line: 201, column: 19, scope: !2789, inlinedAt: !2816)
!2819 = !DILocation(line: 201, column: 7, scope: !743, inlinedAt: !2816)
!2820 = !DILocation(line: 229, column: 3, scope: !743, inlinedAt: !2816)
!2821 = !DILocation(line: 230, column: 3, scope: !743, inlinedAt: !2816)
!2822 = !DILocation(line: 230, column: 13, scope: !743, inlinedAt: !2816)
!2823 = !DILocation(line: 0, scope: !2795, inlinedAt: !2824)
!2824 = distinct !DILocation(line: 230, column: 18, scope: !743, inlinedAt: !2816)
!2825 = !DILocation(line: 0, scope: !2803, inlinedAt: !2826)
!2826 = distinct !DILocation(line: 1137, column: 3, scope: !2795, inlinedAt: !2824)
!2827 = !DILocation(line: 59, column: 10, scope: !2803, inlinedAt: !2826)
!2828 = !DILocation(line: 231, column: 7, scope: !2811, inlinedAt: !2816)
!2829 = !DILocation(line: 231, column: 40, scope: !2811, inlinedAt: !2816)
!2830 = !DILocation(line: 231, column: 45, scope: !2811, inlinedAt: !2816)
!2831 = !DILocation(line: 235, column: 1, scope: !743, inlinedAt: !2816)
!2832 = !DILocation(line: 360, column: 13, scope: !2728)
!2833 = !DILocation(line: 0, scope: !2726)
!2834 = !DILocation(line: 361, column: 45, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2726, file: !679, line: 361, column: 11)
!2836 = !DILocation(line: 361, column: 11, scope: !2726)
!2837 = !DILocation(line: 362, column: 13, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2839, file: !679, line: 362, column: 13)
!2839 = distinct !DILexicalBlock(scope: !2835, file: !679, line: 362, column: 13)
!2840 = !DILocation(line: 362, column: 13, scope: !2839)
!2841 = !DILocation(line: 361, column: 52, scope: !2835)
!2842 = distinct !{!2842, !2836, !2843, !1110}
!2843 = !DILocation(line: 362, column: 13, scope: !2726)
!2844 = !DILocation(line: 260, column: 10, scope: !2700)
!2845 = !DILocation(line: 365, column: 28, scope: !2728)
!2846 = !DILocation(line: 367, column: 7, scope: !2729)
!2847 = !DILocation(line: 370, column: 7, scope: !2729)
!2848 = !DILocation(line: 376, column: 11, scope: !2729)
!2849 = !DILocation(line: 381, column: 11, scope: !2729)
!2850 = !DILocation(line: 382, column: 9, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2852, file: !679, line: 382, column: 9)
!2852 = distinct !DILexicalBlock(scope: !2853, file: !679, line: 382, column: 9)
!2853 = distinct !DILexicalBlock(scope: !2729, file: !679, line: 381, column: 11)
!2854 = !DILocation(line: 382, column: 9, scope: !2852)
!2855 = !DILocation(line: 389, column: 7, scope: !2729)
!2856 = !DILocation(line: 392, column: 7, scope: !2729)
!2857 = !DILocation(line: 0, scope: !2731)
!2858 = !DILocation(line: 395, column: 8, scope: !2731)
!2859 = !DILocation(line: 395, scope: !2731)
!2860 = !DILocation(line: 395, column: 34, scope: !2734)
!2861 = !DILocation(line: 395, column: 26, scope: !2734)
!2862 = !DILocation(line: 395, column: 48, scope: !2734)
!2863 = !DILocation(line: 395, column: 55, scope: !2734)
!2864 = !DILocation(line: 395, column: 3, scope: !2731)
!2865 = !DILocation(line: 395, column: 67, scope: !2734)
!2866 = !DILocation(line: 0, scope: !2733)
!2867 = !DILocation(line: 402, column: 11, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2733, file: !679, line: 401, column: 11)
!2869 = !DILocation(line: 404, column: 17, scope: !2868)
!2870 = !DILocation(line: 405, column: 39, scope: !2868)
!2871 = !DILocation(line: 409, column: 32, scope: !2868)
!2872 = !DILocation(line: 405, column: 19, scope: !2868)
!2873 = !DILocation(line: 405, column: 15, scope: !2868)
!2874 = !DILocation(line: 410, column: 11, scope: !2868)
!2875 = !DILocation(line: 410, column: 25, scope: !2868)
!2876 = !DILocalVariable(name: "__s1", arg: 1, scope: !2877, file: !1076, line: 974, type: !1208)
!2877 = distinct !DISubprogram(name: "memeq", scope: !1076, file: !1076, line: 974, type: !2518, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !2878)
!2878 = !{!2876, !2879, !2880}
!2879 = !DILocalVariable(name: "__s2", arg: 2, scope: !2877, file: !1076, line: 974, type: !1208)
!2880 = !DILocalVariable(name: "__n", arg: 3, scope: !2877, file: !1076, line: 974, type: !149)
!2881 = !DILocation(line: 0, scope: !2877, inlinedAt: !2882)
!2882 = distinct !DILocation(line: 410, column: 14, scope: !2868)
!2883 = !DILocation(line: 976, column: 11, scope: !2877, inlinedAt: !2882)
!2884 = !DILocation(line: 976, column: 10, scope: !2877, inlinedAt: !2882)
!2885 = !DILocation(line: 401, column: 11, scope: !2733)
!2886 = !DILocation(line: 417, column: 25, scope: !2733)
!2887 = !DILocation(line: 418, column: 7, scope: !2733)
!2888 = !DILocation(line: 421, column: 15, scope: !2740)
!2889 = !DILocation(line: 423, column: 15, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2891, file: !679, line: 423, column: 15)
!2891 = distinct !DILexicalBlock(scope: !2892, file: !679, line: 422, column: 13)
!2892 = distinct !DILexicalBlock(scope: !2740, file: !679, line: 421, column: 15)
!2893 = !DILocation(line: 423, column: 15, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2890, file: !679, line: 423, column: 15)
!2895 = !DILocation(line: 423, column: 15, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2897, file: !679, line: 423, column: 15)
!2897 = distinct !DILexicalBlock(scope: !2898, file: !679, line: 423, column: 15)
!2898 = distinct !DILexicalBlock(scope: !2894, file: !679, line: 423, column: 15)
!2899 = !DILocation(line: 423, column: 15, scope: !2897)
!2900 = !DILocation(line: 423, column: 15, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2902, file: !679, line: 423, column: 15)
!2902 = distinct !DILexicalBlock(scope: !2898, file: !679, line: 423, column: 15)
!2903 = !DILocation(line: 423, column: 15, scope: !2902)
!2904 = !DILocation(line: 423, column: 15, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2906, file: !679, line: 423, column: 15)
!2906 = distinct !DILexicalBlock(scope: !2898, file: !679, line: 423, column: 15)
!2907 = !DILocation(line: 423, column: 15, scope: !2906)
!2908 = !DILocation(line: 423, column: 15, scope: !2898)
!2909 = !DILocation(line: 423, column: 15, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2911, file: !679, line: 423, column: 15)
!2911 = distinct !DILexicalBlock(scope: !2890, file: !679, line: 423, column: 15)
!2912 = !DILocation(line: 423, column: 15, scope: !2911)
!2913 = !DILocation(line: 431, column: 19, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2891, file: !679, line: 430, column: 19)
!2915 = !DILocation(line: 431, column: 24, scope: !2914)
!2916 = !DILocation(line: 431, column: 28, scope: !2914)
!2917 = !DILocation(line: 431, column: 38, scope: !2914)
!2918 = !DILocation(line: 431, column: 48, scope: !2914)
!2919 = !DILocation(line: 431, column: 59, scope: !2914)
!2920 = !DILocation(line: 433, column: 19, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2922, file: !679, line: 433, column: 19)
!2922 = distinct !DILexicalBlock(scope: !2923, file: !679, line: 433, column: 19)
!2923 = distinct !DILexicalBlock(scope: !2914, file: !679, line: 432, column: 17)
!2924 = !DILocation(line: 433, column: 19, scope: !2922)
!2925 = !DILocation(line: 434, column: 19, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2927, file: !679, line: 434, column: 19)
!2927 = distinct !DILexicalBlock(scope: !2923, file: !679, line: 434, column: 19)
!2928 = !DILocation(line: 434, column: 19, scope: !2927)
!2929 = !DILocation(line: 435, column: 17, scope: !2923)
!2930 = !DILocation(line: 442, column: 20, scope: !2892)
!2931 = !DILocation(line: 447, column: 11, scope: !2740)
!2932 = !DILocation(line: 450, column: 19, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2740, file: !679, line: 448, column: 13)
!2934 = !DILocation(line: 456, column: 19, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2933, file: !679, line: 455, column: 19)
!2936 = !DILocation(line: 456, column: 24, scope: !2935)
!2937 = !DILocation(line: 456, column: 28, scope: !2935)
!2938 = !DILocation(line: 456, column: 38, scope: !2935)
!2939 = !DILocation(line: 456, column: 47, scope: !2935)
!2940 = !DILocation(line: 456, column: 41, scope: !2935)
!2941 = !DILocation(line: 456, column: 52, scope: !2935)
!2942 = !DILocation(line: 455, column: 19, scope: !2933)
!2943 = !DILocation(line: 457, column: 25, scope: !2935)
!2944 = !DILocation(line: 457, column: 17, scope: !2935)
!2945 = !DILocation(line: 464, column: 25, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2935, file: !679, line: 458, column: 19)
!2947 = !DILocation(line: 468, column: 21, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2949, file: !679, line: 468, column: 21)
!2949 = distinct !DILexicalBlock(scope: !2946, file: !679, line: 468, column: 21)
!2950 = !DILocation(line: 468, column: 21, scope: !2949)
!2951 = !DILocation(line: 469, column: 21, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2953, file: !679, line: 469, column: 21)
!2953 = distinct !DILexicalBlock(scope: !2946, file: !679, line: 469, column: 21)
!2954 = !DILocation(line: 469, column: 21, scope: !2953)
!2955 = !DILocation(line: 470, column: 21, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2957, file: !679, line: 470, column: 21)
!2957 = distinct !DILexicalBlock(scope: !2946, file: !679, line: 470, column: 21)
!2958 = !DILocation(line: 470, column: 21, scope: !2957)
!2959 = !DILocation(line: 471, column: 21, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2961, file: !679, line: 471, column: 21)
!2961 = distinct !DILexicalBlock(scope: !2946, file: !679, line: 471, column: 21)
!2962 = !DILocation(line: 471, column: 21, scope: !2961)
!2963 = !DILocation(line: 472, column: 21, scope: !2946)
!2964 = !DILocation(line: 482, column: 33, scope: !2763)
!2965 = !DILocation(line: 483, column: 33, scope: !2763)
!2966 = !DILocation(line: 485, column: 33, scope: !2763)
!2967 = !DILocation(line: 486, column: 33, scope: !2763)
!2968 = !DILocation(line: 487, column: 33, scope: !2763)
!2969 = !DILocation(line: 490, column: 17, scope: !2763)
!2970 = !DILocation(line: 492, column: 21, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2972, file: !679, line: 491, column: 15)
!2972 = distinct !DILexicalBlock(scope: !2763, file: !679, line: 490, column: 17)
!2973 = !DILocation(line: 499, column: 35, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2763, file: !679, line: 499, column: 17)
!2975 = !DILocation(line: 0, scope: !2763)
!2976 = !DILocation(line: 502, column: 11, scope: !2763)
!2977 = !DILocation(line: 504, column: 17, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2763, file: !679, line: 503, column: 17)
!2979 = !DILocation(line: 507, column: 11, scope: !2763)
!2980 = !DILocation(line: 508, column: 17, scope: !2763)
!2981 = !DILocation(line: 517, column: 15, scope: !2740)
!2982 = !DILocation(line: 517, column: 40, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2740, file: !679, line: 517, column: 15)
!2984 = !DILocation(line: 517, column: 47, scope: !2983)
!2985 = !DILocation(line: 517, column: 18, scope: !2983)
!2986 = !DILocation(line: 521, column: 17, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2740, file: !679, line: 521, column: 15)
!2988 = !DILocation(line: 521, column: 15, scope: !2740)
!2989 = !DILocation(line: 525, column: 11, scope: !2740)
!2990 = !DILocation(line: 537, column: 15, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !2740, file: !679, line: 536, column: 15)
!2992 = !DILocation(line: 536, column: 15, scope: !2740)
!2993 = !DILocation(line: 544, column: 15, scope: !2740)
!2994 = !DILocation(line: 546, column: 19, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2996, file: !679, line: 545, column: 13)
!2996 = distinct !DILexicalBlock(scope: !2740, file: !679, line: 544, column: 15)
!2997 = !DILocation(line: 549, column: 19, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2995, file: !679, line: 549, column: 19)
!2999 = !DILocation(line: 549, column: 30, scope: !2998)
!3000 = !DILocation(line: 558, column: 15, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !3002, file: !679, line: 558, column: 15)
!3002 = distinct !DILexicalBlock(scope: !2995, file: !679, line: 558, column: 15)
!3003 = !DILocation(line: 558, column: 15, scope: !3002)
!3004 = !DILocation(line: 559, column: 15, scope: !3005)
!3005 = distinct !DILexicalBlock(scope: !3006, file: !679, line: 559, column: 15)
!3006 = distinct !DILexicalBlock(scope: !2995, file: !679, line: 559, column: 15)
!3007 = !DILocation(line: 559, column: 15, scope: !3006)
!3008 = !DILocation(line: 560, column: 15, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !3010, file: !679, line: 560, column: 15)
!3010 = distinct !DILexicalBlock(scope: !2995, file: !679, line: 560, column: 15)
!3011 = !DILocation(line: 560, column: 15, scope: !3010)
!3012 = !DILocation(line: 562, column: 13, scope: !2995)
!3013 = !DILocation(line: 602, column: 17, scope: !2739)
!3014 = !DILocation(line: 0, scope: !2739)
!3015 = !DILocation(line: 605, column: 29, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !2744, file: !679, line: 603, column: 15)
!3017 = !DILocation(line: 605, column: 41, scope: !3016)
!3018 = !DILocation(line: 606, column: 15, scope: !3016)
!3019 = !DILocation(line: 609, column: 17, scope: !2743)
!3020 = !DILocation(line: 609, column: 27, scope: !2743)
!3021 = !DILocation(line: 0, scope: !2795, inlinedAt: !3022)
!3022 = distinct !DILocation(line: 609, column: 32, scope: !2743)
!3023 = !DILocation(line: 0, scope: !2803, inlinedAt: !3024)
!3024 = distinct !DILocation(line: 1137, column: 3, scope: !2795, inlinedAt: !3022)
!3025 = !DILocation(line: 59, column: 10, scope: !2803, inlinedAt: !3024)
!3026 = !DILocation(line: 613, column: 29, scope: !3027)
!3027 = distinct !DILexicalBlock(scope: !2743, file: !679, line: 613, column: 21)
!3028 = !DILocation(line: 613, column: 21, scope: !2743)
!3029 = !DILocation(line: 614, column: 29, scope: !3027)
!3030 = !DILocation(line: 614, column: 19, scope: !3027)
!3031 = !DILocation(line: 618, column: 21, scope: !2746)
!3032 = !DILocation(line: 620, column: 54, scope: !2746)
!3033 = !DILocation(line: 0, scope: !2746)
!3034 = !DILocation(line: 619, column: 36, scope: !2746)
!3035 = !DILocation(line: 621, column: 25, scope: !2746)
!3036 = !DILocation(line: 631, column: 38, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !2755, file: !679, line: 629, column: 23)
!3038 = !DILocation(line: 631, column: 48, scope: !3037)
!3039 = !DILocation(line: 626, column: 25, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !2756, file: !679, line: 624, column: 23)
!3041 = !DILocation(line: 631, column: 51, scope: !3037)
!3042 = !DILocation(line: 631, column: 25, scope: !3037)
!3043 = !DILocation(line: 632, column: 28, scope: !3037)
!3044 = !DILocation(line: 631, column: 34, scope: !3037)
!3045 = distinct !{!3045, !3042, !3043, !1110}
!3046 = !DILocation(line: 646, column: 29, scope: !2753)
!3047 = !DILocation(line: 0, scope: !2751)
!3048 = !DILocation(line: 649, column: 49, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !2751, file: !679, line: 648, column: 29)
!3050 = !DILocation(line: 649, column: 39, scope: !3049)
!3051 = !DILocation(line: 649, column: 31, scope: !3049)
!3052 = !DILocation(line: 648, column: 60, scope: !3049)
!3053 = !DILocation(line: 648, column: 50, scope: !3049)
!3054 = !DILocation(line: 648, column: 29, scope: !2751)
!3055 = distinct !{!3055, !3054, !3056, !1110}
!3056 = !DILocation(line: 654, column: 33, scope: !2751)
!3057 = !DILocation(line: 657, column: 43, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !2754, file: !679, line: 657, column: 29)
!3059 = !DILocalVariable(name: "wc", arg: 1, scope: !3060, file: !3061, line: 865, type: !3064)
!3060 = distinct !DISubprogram(name: "c32isprint", scope: !3061, file: !3061, line: 865, type: !3062, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3066)
!3061 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!3062 = !DISubroutineType(types: !3063)
!3063 = !{!86, !3064}
!3064 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3065, line: 20, baseType: !98)
!3065 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3066 = !{!3059}
!3067 = !DILocation(line: 0, scope: !3060, inlinedAt: !3068)
!3068 = distinct !DILocation(line: 657, column: 31, scope: !3058)
!3069 = !DILocation(line: 871, column: 10, scope: !3060, inlinedAt: !3068)
!3070 = !DILocation(line: 657, column: 31, scope: !3058)
!3071 = !DILocation(line: 664, column: 23, scope: !2746)
!3072 = !DILocation(line: 665, column: 19, scope: !2747)
!3073 = !DILocation(line: 666, column: 15, scope: !2744)
!3074 = !DILocation(line: 753, column: 2, scope: !2700)
!3075 = !DILocation(line: 756, column: 51, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !2700, file: !679, line: 756, column: 7)
!3077 = !DILocation(line: 0, scope: !2744)
!3078 = !DILocation(line: 670, column: 19, scope: !2760)
!3079 = !DILocation(line: 670, column: 23, scope: !2760)
!3080 = !DILocation(line: 674, column: 33, scope: !2759)
!3081 = !DILocation(line: 0, scope: !2759)
!3082 = !DILocation(line: 676, column: 17, scope: !2759)
!3083 = !DILocation(line: 398, column: 12, scope: !2733)
!3084 = !DILocation(line: 678, column: 43, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !3086, file: !679, line: 678, column: 25)
!3086 = distinct !DILexicalBlock(scope: !3087, file: !679, line: 677, column: 19)
!3087 = distinct !DILexicalBlock(scope: !3088, file: !679, line: 676, column: 17)
!3088 = distinct !DILexicalBlock(scope: !2759, file: !679, line: 676, column: 17)
!3089 = !DILocation(line: 680, column: 25, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3091, file: !679, line: 680, column: 25)
!3091 = distinct !DILexicalBlock(scope: !3085, file: !679, line: 679, column: 23)
!3092 = !DILocation(line: 680, column: 25, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !3090, file: !679, line: 680, column: 25)
!3094 = !DILocation(line: 680, column: 25, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !3096, file: !679, line: 680, column: 25)
!3096 = distinct !DILexicalBlock(scope: !3097, file: !679, line: 680, column: 25)
!3097 = distinct !DILexicalBlock(scope: !3093, file: !679, line: 680, column: 25)
!3098 = !DILocation(line: 680, column: 25, scope: !3096)
!3099 = !DILocation(line: 680, column: 25, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3101, file: !679, line: 680, column: 25)
!3101 = distinct !DILexicalBlock(scope: !3097, file: !679, line: 680, column: 25)
!3102 = !DILocation(line: 680, column: 25, scope: !3101)
!3103 = !DILocation(line: 680, column: 25, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !3105, file: !679, line: 680, column: 25)
!3105 = distinct !DILexicalBlock(scope: !3097, file: !679, line: 680, column: 25)
!3106 = !DILocation(line: 680, column: 25, scope: !3105)
!3107 = !DILocation(line: 680, column: 25, scope: !3097)
!3108 = !DILocation(line: 680, column: 25, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3110, file: !679, line: 680, column: 25)
!3110 = distinct !DILexicalBlock(scope: !3090, file: !679, line: 680, column: 25)
!3111 = !DILocation(line: 680, column: 25, scope: !3110)
!3112 = !DILocation(line: 681, column: 25, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3114, file: !679, line: 681, column: 25)
!3114 = distinct !DILexicalBlock(scope: !3091, file: !679, line: 681, column: 25)
!3115 = !DILocation(line: 681, column: 25, scope: !3114)
!3116 = !DILocation(line: 682, column: 25, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !3118, file: !679, line: 682, column: 25)
!3118 = distinct !DILexicalBlock(scope: !3091, file: !679, line: 682, column: 25)
!3119 = !DILocation(line: 682, column: 25, scope: !3118)
!3120 = !DILocation(line: 683, column: 38, scope: !3091)
!3121 = !DILocation(line: 683, column: 33, scope: !3091)
!3122 = !DILocation(line: 684, column: 23, scope: !3091)
!3123 = !DILocation(line: 685, column: 30, scope: !3085)
!3124 = !DILocation(line: 687, column: 25, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !3126, file: !679, line: 687, column: 25)
!3126 = distinct !DILexicalBlock(scope: !3127, file: !679, line: 687, column: 25)
!3127 = distinct !DILexicalBlock(scope: !3128, file: !679, line: 686, column: 23)
!3128 = distinct !DILexicalBlock(scope: !3085, file: !679, line: 685, column: 30)
!3129 = !DILocation(line: 687, column: 25, scope: !3126)
!3130 = !DILocation(line: 689, column: 23, scope: !3127)
!3131 = !DILocation(line: 690, column: 35, scope: !3132)
!3132 = distinct !DILexicalBlock(scope: !3086, file: !679, line: 690, column: 25)
!3133 = !DILocation(line: 690, column: 30, scope: !3132)
!3134 = !DILocation(line: 690, column: 25, scope: !3086)
!3135 = !DILocation(line: 692, column: 21, scope: !3136)
!3136 = distinct !DILexicalBlock(scope: !3137, file: !679, line: 692, column: 21)
!3137 = distinct !DILexicalBlock(scope: !3086, file: !679, line: 692, column: 21)
!3138 = !DILocation(line: 692, column: 21, scope: !3139)
!3139 = distinct !DILexicalBlock(scope: !3140, file: !679, line: 692, column: 21)
!3140 = distinct !DILexicalBlock(scope: !3141, file: !679, line: 692, column: 21)
!3141 = distinct !DILexicalBlock(scope: !3136, file: !679, line: 692, column: 21)
!3142 = !DILocation(line: 692, column: 21, scope: !3140)
!3143 = !DILocation(line: 692, column: 21, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3145, file: !679, line: 692, column: 21)
!3145 = distinct !DILexicalBlock(scope: !3141, file: !679, line: 692, column: 21)
!3146 = !DILocation(line: 692, column: 21, scope: !3145)
!3147 = !DILocation(line: 692, column: 21, scope: !3141)
!3148 = !DILocation(line: 0, scope: !3086)
!3149 = !DILocation(line: 693, column: 21, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !3151, file: !679, line: 693, column: 21)
!3151 = distinct !DILexicalBlock(scope: !3086, file: !679, line: 693, column: 21)
!3152 = !DILocation(line: 693, column: 21, scope: !3151)
!3153 = !DILocation(line: 694, column: 25, scope: !3086)
!3154 = !DILocation(line: 676, column: 17, scope: !3087)
!3155 = distinct !{!3155, !3156, !3157}
!3156 = !DILocation(line: 676, column: 17, scope: !3088)
!3157 = !DILocation(line: 695, column: 19, scope: !3088)
!3158 = !DILocation(line: 409, column: 30, scope: !2868)
!3159 = !DILocation(line: 702, column: 34, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !2733, file: !679, line: 702, column: 11)
!3161 = !DILocation(line: 704, column: 14, scope: !3160)
!3162 = !DILocation(line: 705, column: 14, scope: !3160)
!3163 = !DILocation(line: 705, column: 35, scope: !3160)
!3164 = !DILocation(line: 705, column: 17, scope: !3160)
!3165 = !DILocation(line: 705, column: 47, scope: !3160)
!3166 = !DILocation(line: 705, column: 65, scope: !3160)
!3167 = !DILocation(line: 706, column: 11, scope: !3160)
!3168 = !DILocation(line: 702, column: 11, scope: !2733)
!3169 = !DILocation(line: 395, column: 15, scope: !2731)
!3170 = !DILocation(line: 709, column: 5, scope: !2733)
!3171 = !DILocation(line: 710, column: 7, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !2733, file: !679, line: 710, column: 7)
!3173 = !DILocation(line: 710, column: 7, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3172, file: !679, line: 710, column: 7)
!3175 = !DILocation(line: 710, column: 7, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !3177, file: !679, line: 710, column: 7)
!3177 = distinct !DILexicalBlock(scope: !3178, file: !679, line: 710, column: 7)
!3178 = distinct !DILexicalBlock(scope: !3174, file: !679, line: 710, column: 7)
!3179 = !DILocation(line: 710, column: 7, scope: !3177)
!3180 = !DILocation(line: 710, column: 7, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !3182, file: !679, line: 710, column: 7)
!3182 = distinct !DILexicalBlock(scope: !3178, file: !679, line: 710, column: 7)
!3183 = !DILocation(line: 710, column: 7, scope: !3182)
!3184 = !DILocation(line: 710, column: 7, scope: !3185)
!3185 = distinct !DILexicalBlock(scope: !3186, file: !679, line: 710, column: 7)
!3186 = distinct !DILexicalBlock(scope: !3178, file: !679, line: 710, column: 7)
!3187 = !DILocation(line: 710, column: 7, scope: !3186)
!3188 = !DILocation(line: 710, column: 7, scope: !3178)
!3189 = !DILocation(line: 710, column: 7, scope: !3190)
!3190 = distinct !DILexicalBlock(scope: !3191, file: !679, line: 710, column: 7)
!3191 = distinct !DILexicalBlock(scope: !3172, file: !679, line: 710, column: 7)
!3192 = !DILocation(line: 710, column: 7, scope: !3191)
!3193 = !DILocation(line: 712, column: 5, scope: !2733)
!3194 = !DILocation(line: 713, column: 7, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !3196, file: !679, line: 713, column: 7)
!3196 = distinct !DILexicalBlock(scope: !2733, file: !679, line: 713, column: 7)
!3197 = !DILocation(line: 417, column: 21, scope: !2733)
!3198 = !DILocation(line: 713, column: 7, scope: !3199)
!3199 = distinct !DILexicalBlock(scope: !3200, file: !679, line: 713, column: 7)
!3200 = distinct !DILexicalBlock(scope: !3201, file: !679, line: 713, column: 7)
!3201 = distinct !DILexicalBlock(scope: !3195, file: !679, line: 713, column: 7)
!3202 = !DILocation(line: 713, column: 7, scope: !3200)
!3203 = !DILocation(line: 713, column: 7, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3205, file: !679, line: 713, column: 7)
!3205 = distinct !DILexicalBlock(scope: !3201, file: !679, line: 713, column: 7)
!3206 = !DILocation(line: 713, column: 7, scope: !3205)
!3207 = !DILocation(line: 713, column: 7, scope: !3201)
!3208 = !DILocation(line: 714, column: 7, scope: !3209)
!3209 = distinct !DILexicalBlock(scope: !3210, file: !679, line: 714, column: 7)
!3210 = distinct !DILexicalBlock(scope: !2733, file: !679, line: 714, column: 7)
!3211 = !DILocation(line: 714, column: 7, scope: !3210)
!3212 = !DILocation(line: 716, column: 11, scope: !2733)
!3213 = !DILocation(line: 718, column: 5, scope: !2734)
!3214 = !DILocation(line: 395, column: 82, scope: !2734)
!3215 = !DILocation(line: 395, column: 3, scope: !2734)
!3216 = distinct !{!3216, !2864, !3217, !1110}
!3217 = !DILocation(line: 718, column: 5, scope: !2731)
!3218 = !DILocation(line: 720, column: 11, scope: !3219)
!3219 = distinct !DILexicalBlock(scope: !2700, file: !679, line: 720, column: 7)
!3220 = !DILocation(line: 720, column: 16, scope: !3219)
!3221 = !DILocation(line: 728, column: 51, scope: !3222)
!3222 = distinct !DILexicalBlock(scope: !2700, file: !679, line: 728, column: 7)
!3223 = !DILocation(line: 731, column: 11, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3222, file: !679, line: 730, column: 5)
!3225 = !DILocation(line: 732, column: 16, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !3224, file: !679, line: 731, column: 11)
!3227 = !DILocation(line: 732, column: 9, scope: !3226)
!3228 = !DILocation(line: 736, column: 18, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !3226, file: !679, line: 736, column: 16)
!3230 = !DILocation(line: 736, column: 29, scope: !3229)
!3231 = !DILocation(line: 745, column: 7, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !2700, file: !679, line: 745, column: 7)
!3233 = !DILocation(line: 745, column: 20, scope: !3232)
!3234 = !DILocation(line: 746, column: 12, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3236, file: !679, line: 746, column: 5)
!3236 = distinct !DILexicalBlock(scope: !3232, file: !679, line: 746, column: 5)
!3237 = !DILocation(line: 746, column: 5, scope: !3236)
!3238 = !DILocation(line: 747, column: 7, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !3240, file: !679, line: 747, column: 7)
!3240 = distinct !DILexicalBlock(scope: !3235, file: !679, line: 747, column: 7)
!3241 = !DILocation(line: 747, column: 7, scope: !3240)
!3242 = !DILocation(line: 746, column: 39, scope: !3235)
!3243 = distinct !{!3243, !3237, !3244, !1110}
!3244 = !DILocation(line: 747, column: 7, scope: !3236)
!3245 = !DILocation(line: 749, column: 11, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !2700, file: !679, line: 749, column: 7)
!3247 = !DILocation(line: 749, column: 7, scope: !2700)
!3248 = !DILocation(line: 750, column: 5, scope: !3246)
!3249 = !DILocation(line: 750, column: 17, scope: !3246)
!3250 = !DILocation(line: 756, column: 21, scope: !3076)
!3251 = !DILocation(line: 760, column: 42, scope: !2700)
!3252 = !DILocation(line: 758, column: 10, scope: !2700)
!3253 = !DILocation(line: 758, column: 3, scope: !2700)
!3254 = !DILocation(line: 762, column: 1, scope: !2700)
!3255 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1184, file: !1184, line: 98, type: !3256, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !998)
!3256 = !DISubroutineType(types: !910)
!3257 = !DISubprogram(name: "strlen", scope: !1180, file: !1180, line: 407, type: !3258, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !998)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{!147, !151}
!3260 = !DISubprogram(name: "iswprint", scope: !3261, file: !3261, line: 120, type: !3062, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !998)
!3261 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3262 = distinct !DISubprogram(name: "quotearg_alloc", scope: !679, file: !679, line: 788, type: !3263, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3265)
!3263 = !DISubroutineType(types: !3264)
!3264 = !{!88, !151, !149, !2593}
!3265 = !{!3266, !3267, !3268}
!3266 = !DILocalVariable(name: "arg", arg: 1, scope: !3262, file: !679, line: 788, type: !151)
!3267 = !DILocalVariable(name: "argsize", arg: 2, scope: !3262, file: !679, line: 788, type: !149)
!3268 = !DILocalVariable(name: "o", arg: 3, scope: !3262, file: !679, line: 789, type: !2593)
!3269 = !DILocation(line: 0, scope: !3262)
!3270 = !DILocalVariable(name: "arg", arg: 1, scope: !3271, file: !679, line: 801, type: !151)
!3271 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !679, file: !679, line: 801, type: !3272, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3274)
!3272 = !DISubroutineType(types: !3273)
!3273 = !{!88, !151, !149, !927, !2593}
!3274 = !{!3270, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282}
!3275 = !DILocalVariable(name: "argsize", arg: 2, scope: !3271, file: !679, line: 801, type: !149)
!3276 = !DILocalVariable(name: "size", arg: 3, scope: !3271, file: !679, line: 801, type: !927)
!3277 = !DILocalVariable(name: "o", arg: 4, scope: !3271, file: !679, line: 802, type: !2593)
!3278 = !DILocalVariable(name: "p", scope: !3271, file: !679, line: 804, type: !2593)
!3279 = !DILocalVariable(name: "saved_errno", scope: !3271, file: !679, line: 805, type: !86)
!3280 = !DILocalVariable(name: "flags", scope: !3271, file: !679, line: 807, type: !86)
!3281 = !DILocalVariable(name: "bufsize", scope: !3271, file: !679, line: 808, type: !149)
!3282 = !DILocalVariable(name: "buf", scope: !3271, file: !679, line: 812, type: !88)
!3283 = !DILocation(line: 0, scope: !3271, inlinedAt: !3284)
!3284 = distinct !DILocation(line: 791, column: 10, scope: !3262)
!3285 = !DILocation(line: 804, column: 37, scope: !3271, inlinedAt: !3284)
!3286 = !DILocation(line: 805, column: 21, scope: !3271, inlinedAt: !3284)
!3287 = !DILocation(line: 807, column: 18, scope: !3271, inlinedAt: !3284)
!3288 = !DILocation(line: 807, column: 24, scope: !3271, inlinedAt: !3284)
!3289 = !DILocation(line: 808, column: 72, scope: !3271, inlinedAt: !3284)
!3290 = !DILocation(line: 809, column: 56, scope: !3271, inlinedAt: !3284)
!3291 = !DILocation(line: 810, column: 49, scope: !3271, inlinedAt: !3284)
!3292 = !DILocation(line: 811, column: 49, scope: !3271, inlinedAt: !3284)
!3293 = !DILocation(line: 808, column: 20, scope: !3271, inlinedAt: !3284)
!3294 = !DILocation(line: 811, column: 62, scope: !3271, inlinedAt: !3284)
!3295 = !DILocation(line: 812, column: 15, scope: !3271, inlinedAt: !3284)
!3296 = !DILocation(line: 813, column: 60, scope: !3271, inlinedAt: !3284)
!3297 = !DILocation(line: 815, column: 32, scope: !3271, inlinedAt: !3284)
!3298 = !DILocation(line: 815, column: 47, scope: !3271, inlinedAt: !3284)
!3299 = !DILocation(line: 813, column: 3, scope: !3271, inlinedAt: !3284)
!3300 = !DILocation(line: 816, column: 9, scope: !3271, inlinedAt: !3284)
!3301 = !DILocation(line: 791, column: 3, scope: !3262)
!3302 = !DILocation(line: 0, scope: !3271)
!3303 = !DILocation(line: 804, column: 37, scope: !3271)
!3304 = !DILocation(line: 805, column: 21, scope: !3271)
!3305 = !DILocation(line: 807, column: 18, scope: !3271)
!3306 = !DILocation(line: 807, column: 27, scope: !3271)
!3307 = !DILocation(line: 807, column: 24, scope: !3271)
!3308 = !DILocation(line: 808, column: 72, scope: !3271)
!3309 = !DILocation(line: 809, column: 56, scope: !3271)
!3310 = !DILocation(line: 810, column: 49, scope: !3271)
!3311 = !DILocation(line: 811, column: 49, scope: !3271)
!3312 = !DILocation(line: 808, column: 20, scope: !3271)
!3313 = !DILocation(line: 811, column: 62, scope: !3271)
!3314 = !DILocation(line: 812, column: 15, scope: !3271)
!3315 = !DILocation(line: 813, column: 60, scope: !3271)
!3316 = !DILocation(line: 815, column: 32, scope: !3271)
!3317 = !DILocation(line: 815, column: 47, scope: !3271)
!3318 = !DILocation(line: 813, column: 3, scope: !3271)
!3319 = !DILocation(line: 816, column: 9, scope: !3271)
!3320 = !DILocation(line: 817, column: 7, scope: !3271)
!3321 = !DILocation(line: 818, column: 11, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !3271, file: !679, line: 817, column: 7)
!3323 = !{!1262, !1262, i64 0}
!3324 = !DILocation(line: 818, column: 5, scope: !3322)
!3325 = !DILocation(line: 819, column: 3, scope: !3271)
!3326 = distinct !DISubprogram(name: "quotearg_free", scope: !679, file: !679, line: 837, type: !616, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3327)
!3327 = !{!3328, !3329}
!3328 = !DILocalVariable(name: "sv", scope: !3326, file: !679, line: 839, type: !766)
!3329 = !DILocalVariable(name: "i", scope: !3330, file: !679, line: 840, type: !86)
!3330 = distinct !DILexicalBlock(scope: !3326, file: !679, line: 840, column: 3)
!3331 = !DILocation(line: 839, column: 24, scope: !3326)
!3332 = !DILocation(line: 0, scope: !3326)
!3333 = !DILocation(line: 0, scope: !3330)
!3334 = !DILocation(line: 840, column: 21, scope: !3335)
!3335 = distinct !DILexicalBlock(scope: !3330, file: !679, line: 840, column: 3)
!3336 = !DILocation(line: 840, column: 3, scope: !3330)
!3337 = !DILocation(line: 842, column: 13, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !3326, file: !679, line: 842, column: 7)
!3339 = !{!3340, !990, i64 8}
!3340 = !{!"slotvec", !1262, i64 0, !990, i64 8}
!3341 = !DILocation(line: 842, column: 17, scope: !3338)
!3342 = !DILocation(line: 842, column: 7, scope: !3326)
!3343 = !DILocation(line: 841, column: 17, scope: !3335)
!3344 = !DILocation(line: 841, column: 5, scope: !3335)
!3345 = !DILocation(line: 840, column: 32, scope: !3335)
!3346 = distinct !{!3346, !3336, !3347, !1110}
!3347 = !DILocation(line: 841, column: 20, scope: !3330)
!3348 = !DILocation(line: 844, column: 7, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !3338, file: !679, line: 843, column: 5)
!3350 = !DILocation(line: 845, column: 21, scope: !3349)
!3351 = !{!3340, !1262, i64 0}
!3352 = !DILocation(line: 846, column: 20, scope: !3349)
!3353 = !DILocation(line: 847, column: 5, scope: !3349)
!3354 = !DILocation(line: 848, column: 10, scope: !3355)
!3355 = distinct !DILexicalBlock(scope: !3326, file: !679, line: 848, column: 7)
!3356 = !DILocation(line: 848, column: 7, scope: !3326)
!3357 = !DILocation(line: 850, column: 7, scope: !3358)
!3358 = distinct !DILexicalBlock(scope: !3355, file: !679, line: 849, column: 5)
!3359 = !DILocation(line: 851, column: 15, scope: !3358)
!3360 = !DILocation(line: 852, column: 5, scope: !3358)
!3361 = !DILocation(line: 853, column: 10, scope: !3326)
!3362 = !DILocation(line: 854, column: 1, scope: !3326)
!3363 = distinct !DISubprogram(name: "quotearg_n", scope: !679, file: !679, line: 919, type: !1177, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3364)
!3364 = !{!3365, !3366}
!3365 = !DILocalVariable(name: "n", arg: 1, scope: !3363, file: !679, line: 919, type: !86)
!3366 = !DILocalVariable(name: "arg", arg: 2, scope: !3363, file: !679, line: 919, type: !151)
!3367 = !DILocation(line: 0, scope: !3363)
!3368 = !DILocation(line: 921, column: 10, scope: !3363)
!3369 = !DILocation(line: 921, column: 3, scope: !3363)
!3370 = distinct !DISubprogram(name: "quotearg_n_options", scope: !679, file: !679, line: 866, type: !3371, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3373)
!3371 = !DISubroutineType(types: !3372)
!3372 = !{!88, !86, !151, !149, !2593}
!3373 = !{!3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3384, !3385, !3387, !3388, !3389}
!3374 = !DILocalVariable(name: "n", arg: 1, scope: !3370, file: !679, line: 866, type: !86)
!3375 = !DILocalVariable(name: "arg", arg: 2, scope: !3370, file: !679, line: 866, type: !151)
!3376 = !DILocalVariable(name: "argsize", arg: 3, scope: !3370, file: !679, line: 866, type: !149)
!3377 = !DILocalVariable(name: "options", arg: 4, scope: !3370, file: !679, line: 867, type: !2593)
!3378 = !DILocalVariable(name: "saved_errno", scope: !3370, file: !679, line: 869, type: !86)
!3379 = !DILocalVariable(name: "sv", scope: !3370, file: !679, line: 871, type: !766)
!3380 = !DILocalVariable(name: "nslots_max", scope: !3370, file: !679, line: 873, type: !86)
!3381 = !DILocalVariable(name: "preallocated", scope: !3382, file: !679, line: 879, type: !145)
!3382 = distinct !DILexicalBlock(scope: !3383, file: !679, line: 878, column: 5)
!3383 = distinct !DILexicalBlock(scope: !3370, file: !679, line: 877, column: 7)
!3384 = !DILocalVariable(name: "new_nslots", scope: !3382, file: !679, line: 880, type: !501)
!3385 = !DILocalVariable(name: "size", scope: !3386, file: !679, line: 891, type: !149)
!3386 = distinct !DILexicalBlock(scope: !3370, file: !679, line: 890, column: 3)
!3387 = !DILocalVariable(name: "val", scope: !3386, file: !679, line: 892, type: !88)
!3388 = !DILocalVariable(name: "flags", scope: !3386, file: !679, line: 894, type: !86)
!3389 = !DILocalVariable(name: "qsize", scope: !3386, file: !679, line: 895, type: !149)
!3390 = !DILocation(line: 0, scope: !3370)
!3391 = !DILocation(line: 869, column: 21, scope: !3370)
!3392 = !DILocation(line: 871, column: 24, scope: !3370)
!3393 = !DILocation(line: 874, column: 17, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !3370, file: !679, line: 874, column: 7)
!3395 = !DILocation(line: 875, column: 5, scope: !3394)
!3396 = !DILocation(line: 877, column: 7, scope: !3383)
!3397 = !DILocation(line: 877, column: 14, scope: !3383)
!3398 = !DILocation(line: 877, column: 7, scope: !3370)
!3399 = !DILocation(line: 879, column: 31, scope: !3382)
!3400 = !DILocation(line: 0, scope: !3382)
!3401 = !DILocation(line: 880, column: 7, scope: !3382)
!3402 = !DILocation(line: 880, column: 26, scope: !3382)
!3403 = !DILocation(line: 880, column: 13, scope: !3382)
!3404 = !DILocation(line: 882, column: 31, scope: !3382)
!3405 = !DILocation(line: 883, column: 33, scope: !3382)
!3406 = !DILocation(line: 883, column: 42, scope: !3382)
!3407 = !DILocation(line: 883, column: 31, scope: !3382)
!3408 = !DILocation(line: 882, column: 22, scope: !3382)
!3409 = !DILocation(line: 882, column: 15, scope: !3382)
!3410 = !DILocation(line: 884, column: 11, scope: !3382)
!3411 = !DILocation(line: 885, column: 15, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3382, file: !679, line: 884, column: 11)
!3413 = !{i64 0, i64 8, !3323, i64 8, i64 8, !989}
!3414 = !DILocation(line: 885, column: 9, scope: !3412)
!3415 = !DILocation(line: 886, column: 20, scope: !3382)
!3416 = !DILocation(line: 886, column: 18, scope: !3382)
!3417 = !DILocation(line: 886, column: 32, scope: !3382)
!3418 = !DILocation(line: 886, column: 43, scope: !3382)
!3419 = !DILocation(line: 886, column: 53, scope: !3382)
!3420 = !DILocation(line: 0, scope: !2803, inlinedAt: !3421)
!3421 = distinct !DILocation(line: 886, column: 7, scope: !3382)
!3422 = !DILocation(line: 59, column: 10, scope: !2803, inlinedAt: !3421)
!3423 = !DILocation(line: 887, column: 16, scope: !3382)
!3424 = !DILocation(line: 887, column: 14, scope: !3382)
!3425 = !DILocation(line: 888, column: 5, scope: !3383)
!3426 = !DILocation(line: 888, column: 5, scope: !3382)
!3427 = !DILocation(line: 891, column: 19, scope: !3386)
!3428 = !DILocation(line: 891, column: 25, scope: !3386)
!3429 = !DILocation(line: 0, scope: !3386)
!3430 = !DILocation(line: 892, column: 23, scope: !3386)
!3431 = !DILocation(line: 894, column: 26, scope: !3386)
!3432 = !DILocation(line: 894, column: 32, scope: !3386)
!3433 = !DILocation(line: 896, column: 55, scope: !3386)
!3434 = !DILocation(line: 897, column: 55, scope: !3386)
!3435 = !DILocation(line: 898, column: 55, scope: !3386)
!3436 = !DILocation(line: 899, column: 55, scope: !3386)
!3437 = !DILocation(line: 895, column: 20, scope: !3386)
!3438 = !DILocation(line: 901, column: 14, scope: !3439)
!3439 = distinct !DILexicalBlock(scope: !3386, file: !679, line: 901, column: 9)
!3440 = !DILocation(line: 901, column: 9, scope: !3386)
!3441 = !DILocation(line: 903, column: 35, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3439, file: !679, line: 902, column: 7)
!3443 = !DILocation(line: 903, column: 20, scope: !3442)
!3444 = !DILocation(line: 904, column: 17, scope: !3445)
!3445 = distinct !DILexicalBlock(scope: !3442, file: !679, line: 904, column: 13)
!3446 = !DILocation(line: 904, column: 13, scope: !3442)
!3447 = !DILocation(line: 905, column: 11, scope: !3445)
!3448 = !DILocation(line: 906, column: 27, scope: !3442)
!3449 = !DILocation(line: 906, column: 19, scope: !3442)
!3450 = !DILocation(line: 907, column: 69, scope: !3442)
!3451 = !DILocation(line: 909, column: 44, scope: !3442)
!3452 = !DILocation(line: 910, column: 44, scope: !3442)
!3453 = !DILocation(line: 907, column: 9, scope: !3442)
!3454 = !DILocation(line: 911, column: 7, scope: !3442)
!3455 = !DILocation(line: 913, column: 11, scope: !3386)
!3456 = !DILocation(line: 914, column: 5, scope: !3386)
!3457 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !679, file: !679, line: 925, type: !3458, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3460)
!3458 = !DISubroutineType(types: !3459)
!3459 = !{!88, !86, !151, !149}
!3460 = !{!3461, !3462, !3463}
!3461 = !DILocalVariable(name: "n", arg: 1, scope: !3457, file: !679, line: 925, type: !86)
!3462 = !DILocalVariable(name: "arg", arg: 2, scope: !3457, file: !679, line: 925, type: !151)
!3463 = !DILocalVariable(name: "argsize", arg: 3, scope: !3457, file: !679, line: 925, type: !149)
!3464 = !DILocation(line: 0, scope: !3457)
!3465 = !DILocation(line: 927, column: 10, scope: !3457)
!3466 = !DILocation(line: 927, column: 3, scope: !3457)
!3467 = distinct !DISubprogram(name: "quotearg", scope: !679, file: !679, line: 931, type: !1186, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3468)
!3468 = !{!3469}
!3469 = !DILocalVariable(name: "arg", arg: 1, scope: !3467, file: !679, line: 931, type: !151)
!3470 = !DILocation(line: 0, scope: !3467)
!3471 = !DILocation(line: 0, scope: !3363, inlinedAt: !3472)
!3472 = distinct !DILocation(line: 933, column: 10, scope: !3467)
!3473 = !DILocation(line: 921, column: 10, scope: !3363, inlinedAt: !3472)
!3474 = !DILocation(line: 933, column: 3, scope: !3467)
!3475 = distinct !DISubprogram(name: "quotearg_mem", scope: !679, file: !679, line: 937, type: !3476, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3478)
!3476 = !DISubroutineType(types: !3477)
!3477 = !{!88, !151, !149}
!3478 = !{!3479, !3480}
!3479 = !DILocalVariable(name: "arg", arg: 1, scope: !3475, file: !679, line: 937, type: !151)
!3480 = !DILocalVariable(name: "argsize", arg: 2, scope: !3475, file: !679, line: 937, type: !149)
!3481 = !DILocation(line: 0, scope: !3475)
!3482 = !DILocation(line: 0, scope: !3457, inlinedAt: !3483)
!3483 = distinct !DILocation(line: 939, column: 10, scope: !3475)
!3484 = !DILocation(line: 927, column: 10, scope: !3457, inlinedAt: !3483)
!3485 = !DILocation(line: 939, column: 3, scope: !3475)
!3486 = distinct !DISubprogram(name: "quotearg_n_style", scope: !679, file: !679, line: 943, type: !3487, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3489)
!3487 = !DISubroutineType(types: !3488)
!3488 = !{!88, !86, !96, !151}
!3489 = !{!3490, !3491, !3492, !3493}
!3490 = !DILocalVariable(name: "n", arg: 1, scope: !3486, file: !679, line: 943, type: !86)
!3491 = !DILocalVariable(name: "s", arg: 2, scope: !3486, file: !679, line: 943, type: !96)
!3492 = !DILocalVariable(name: "arg", arg: 3, scope: !3486, file: !679, line: 943, type: !151)
!3493 = !DILocalVariable(name: "o", scope: !3486, file: !679, line: 945, type: !2594)
!3494 = !DILocation(line: 0, scope: !3486)
!3495 = !DILocation(line: 945, column: 3, scope: !3486)
!3496 = !DILocation(line: 945, column: 32, scope: !3486)
!3497 = !{!3498}
!3498 = distinct !{!3498, !3499, !"quoting_options_from_style: argument 0"}
!3499 = distinct !{!3499, !"quoting_options_from_style"}
!3500 = !DILocation(line: 945, column: 36, scope: !3486)
!3501 = !DILocalVariable(name: "style", arg: 1, scope: !3502, file: !679, line: 183, type: !96)
!3502 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !679, file: !679, line: 183, type: !3503, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3505)
!3503 = !DISubroutineType(types: !3504)
!3504 = !{!718, !96}
!3505 = !{!3501, !3506}
!3506 = !DILocalVariable(name: "o", scope: !3502, file: !679, line: 185, type: !718)
!3507 = !DILocation(line: 0, scope: !3502, inlinedAt: !3508)
!3508 = distinct !DILocation(line: 945, column: 36, scope: !3486)
!3509 = !DILocation(line: 185, column: 26, scope: !3502, inlinedAt: !3508)
!3510 = !DILocation(line: 186, column: 13, scope: !3511, inlinedAt: !3508)
!3511 = distinct !DILexicalBlock(scope: !3502, file: !679, line: 186, column: 7)
!3512 = !DILocation(line: 186, column: 7, scope: !3502, inlinedAt: !3508)
!3513 = !DILocation(line: 187, column: 5, scope: !3511, inlinedAt: !3508)
!3514 = !DILocation(line: 188, column: 11, scope: !3502, inlinedAt: !3508)
!3515 = !DILocation(line: 946, column: 10, scope: !3486)
!3516 = !DILocation(line: 947, column: 1, scope: !3486)
!3517 = !DILocation(line: 946, column: 3, scope: !3486)
!3518 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !679, file: !679, line: 950, type: !3519, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3521)
!3519 = !DISubroutineType(types: !3520)
!3520 = !{!88, !86, !96, !151, !149}
!3521 = !{!3522, !3523, !3524, !3525, !3526}
!3522 = !DILocalVariable(name: "n", arg: 1, scope: !3518, file: !679, line: 950, type: !86)
!3523 = !DILocalVariable(name: "s", arg: 2, scope: !3518, file: !679, line: 950, type: !96)
!3524 = !DILocalVariable(name: "arg", arg: 3, scope: !3518, file: !679, line: 951, type: !151)
!3525 = !DILocalVariable(name: "argsize", arg: 4, scope: !3518, file: !679, line: 951, type: !149)
!3526 = !DILocalVariable(name: "o", scope: !3518, file: !679, line: 953, type: !2594)
!3527 = !DILocation(line: 0, scope: !3518)
!3528 = !DILocation(line: 953, column: 3, scope: !3518)
!3529 = !DILocation(line: 953, column: 32, scope: !3518)
!3530 = !{!3531}
!3531 = distinct !{!3531, !3532, !"quoting_options_from_style: argument 0"}
!3532 = distinct !{!3532, !"quoting_options_from_style"}
!3533 = !DILocation(line: 953, column: 36, scope: !3518)
!3534 = !DILocation(line: 0, scope: !3502, inlinedAt: !3535)
!3535 = distinct !DILocation(line: 953, column: 36, scope: !3518)
!3536 = !DILocation(line: 185, column: 26, scope: !3502, inlinedAt: !3535)
!3537 = !DILocation(line: 186, column: 13, scope: !3511, inlinedAt: !3535)
!3538 = !DILocation(line: 186, column: 7, scope: !3502, inlinedAt: !3535)
!3539 = !DILocation(line: 187, column: 5, scope: !3511, inlinedAt: !3535)
!3540 = !DILocation(line: 188, column: 11, scope: !3502, inlinedAt: !3535)
!3541 = !DILocation(line: 954, column: 10, scope: !3518)
!3542 = !DILocation(line: 955, column: 1, scope: !3518)
!3543 = !DILocation(line: 954, column: 3, scope: !3518)
!3544 = distinct !DISubprogram(name: "quotearg_style", scope: !679, file: !679, line: 958, type: !3545, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3547)
!3545 = !DISubroutineType(types: !3546)
!3546 = !{!88, !96, !151}
!3547 = !{!3548, !3549}
!3548 = !DILocalVariable(name: "s", arg: 1, scope: !3544, file: !679, line: 958, type: !96)
!3549 = !DILocalVariable(name: "arg", arg: 2, scope: !3544, file: !679, line: 958, type: !151)
!3550 = !DILocation(line: 0, scope: !3544)
!3551 = !DILocation(line: 0, scope: !3486, inlinedAt: !3552)
!3552 = distinct !DILocation(line: 960, column: 10, scope: !3544)
!3553 = !DILocation(line: 945, column: 3, scope: !3486, inlinedAt: !3552)
!3554 = !DILocation(line: 945, column: 32, scope: !3486, inlinedAt: !3552)
!3555 = !{!3556}
!3556 = distinct !{!3556, !3557, !"quoting_options_from_style: argument 0"}
!3557 = distinct !{!3557, !"quoting_options_from_style"}
!3558 = !DILocation(line: 945, column: 36, scope: !3486, inlinedAt: !3552)
!3559 = !DILocation(line: 0, scope: !3502, inlinedAt: !3560)
!3560 = distinct !DILocation(line: 945, column: 36, scope: !3486, inlinedAt: !3552)
!3561 = !DILocation(line: 185, column: 26, scope: !3502, inlinedAt: !3560)
!3562 = !DILocation(line: 186, column: 13, scope: !3511, inlinedAt: !3560)
!3563 = !DILocation(line: 186, column: 7, scope: !3502, inlinedAt: !3560)
!3564 = !DILocation(line: 187, column: 5, scope: !3511, inlinedAt: !3560)
!3565 = !DILocation(line: 188, column: 11, scope: !3502, inlinedAt: !3560)
!3566 = !DILocation(line: 946, column: 10, scope: !3486, inlinedAt: !3552)
!3567 = !DILocation(line: 947, column: 1, scope: !3486, inlinedAt: !3552)
!3568 = !DILocation(line: 960, column: 3, scope: !3544)
!3569 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !679, file: !679, line: 964, type: !3570, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3572)
!3570 = !DISubroutineType(types: !3571)
!3571 = !{!88, !96, !151, !149}
!3572 = !{!3573, !3574, !3575}
!3573 = !DILocalVariable(name: "s", arg: 1, scope: !3569, file: !679, line: 964, type: !96)
!3574 = !DILocalVariable(name: "arg", arg: 2, scope: !3569, file: !679, line: 964, type: !151)
!3575 = !DILocalVariable(name: "argsize", arg: 3, scope: !3569, file: !679, line: 964, type: !149)
!3576 = !DILocation(line: 0, scope: !3569)
!3577 = !DILocation(line: 0, scope: !3518, inlinedAt: !3578)
!3578 = distinct !DILocation(line: 966, column: 10, scope: !3569)
!3579 = !DILocation(line: 953, column: 3, scope: !3518, inlinedAt: !3578)
!3580 = !DILocation(line: 953, column: 32, scope: !3518, inlinedAt: !3578)
!3581 = !{!3582}
!3582 = distinct !{!3582, !3583, !"quoting_options_from_style: argument 0"}
!3583 = distinct !{!3583, !"quoting_options_from_style"}
!3584 = !DILocation(line: 953, column: 36, scope: !3518, inlinedAt: !3578)
!3585 = !DILocation(line: 0, scope: !3502, inlinedAt: !3586)
!3586 = distinct !DILocation(line: 953, column: 36, scope: !3518, inlinedAt: !3578)
!3587 = !DILocation(line: 185, column: 26, scope: !3502, inlinedAt: !3586)
!3588 = !DILocation(line: 186, column: 13, scope: !3511, inlinedAt: !3586)
!3589 = !DILocation(line: 186, column: 7, scope: !3502, inlinedAt: !3586)
!3590 = !DILocation(line: 187, column: 5, scope: !3511, inlinedAt: !3586)
!3591 = !DILocation(line: 188, column: 11, scope: !3502, inlinedAt: !3586)
!3592 = !DILocation(line: 954, column: 10, scope: !3518, inlinedAt: !3578)
!3593 = !DILocation(line: 955, column: 1, scope: !3518, inlinedAt: !3578)
!3594 = !DILocation(line: 966, column: 3, scope: !3569)
!3595 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !679, file: !679, line: 970, type: !3596, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3598)
!3596 = !DISubroutineType(types: !3597)
!3597 = !{!88, !151, !149, !4}
!3598 = !{!3599, !3600, !3601, !3602}
!3599 = !DILocalVariable(name: "arg", arg: 1, scope: !3595, file: !679, line: 970, type: !151)
!3600 = !DILocalVariable(name: "argsize", arg: 2, scope: !3595, file: !679, line: 970, type: !149)
!3601 = !DILocalVariable(name: "ch", arg: 3, scope: !3595, file: !679, line: 970, type: !4)
!3602 = !DILocalVariable(name: "options", scope: !3595, file: !679, line: 972, type: !718)
!3603 = !DILocation(line: 0, scope: !3595)
!3604 = !DILocation(line: 972, column: 3, scope: !3595)
!3605 = !DILocation(line: 972, column: 26, scope: !3595)
!3606 = !DILocation(line: 973, column: 13, scope: !3595)
!3607 = !{i64 0, i64 4, !1072, i64 4, i64 4, !1063, i64 8, i64 32, !1072, i64 40, i64 8, !989, i64 48, i64 8, !989}
!3608 = !DILocation(line: 0, scope: !2613, inlinedAt: !3609)
!3609 = distinct !DILocation(line: 974, column: 3, scope: !3595)
!3610 = !DILocation(line: 147, column: 41, scope: !2613, inlinedAt: !3609)
!3611 = !DILocation(line: 147, column: 62, scope: !2613, inlinedAt: !3609)
!3612 = !DILocation(line: 147, column: 57, scope: !2613, inlinedAt: !3609)
!3613 = !DILocation(line: 148, column: 15, scope: !2613, inlinedAt: !3609)
!3614 = !DILocation(line: 149, column: 21, scope: !2613, inlinedAt: !3609)
!3615 = !DILocation(line: 149, column: 24, scope: !2613, inlinedAt: !3609)
!3616 = !DILocation(line: 150, column: 19, scope: !2613, inlinedAt: !3609)
!3617 = !DILocation(line: 150, column: 24, scope: !2613, inlinedAt: !3609)
!3618 = !DILocation(line: 150, column: 6, scope: !2613, inlinedAt: !3609)
!3619 = !DILocation(line: 975, column: 10, scope: !3595)
!3620 = !DILocation(line: 976, column: 1, scope: !3595)
!3621 = !DILocation(line: 975, column: 3, scope: !3595)
!3622 = distinct !DISubprogram(name: "quotearg_char", scope: !679, file: !679, line: 979, type: !3623, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3625)
!3623 = !DISubroutineType(types: !3624)
!3624 = !{!88, !151, !4}
!3625 = !{!3626, !3627}
!3626 = !DILocalVariable(name: "arg", arg: 1, scope: !3622, file: !679, line: 979, type: !151)
!3627 = !DILocalVariable(name: "ch", arg: 2, scope: !3622, file: !679, line: 979, type: !4)
!3628 = !DILocation(line: 0, scope: !3622)
!3629 = !DILocation(line: 0, scope: !3595, inlinedAt: !3630)
!3630 = distinct !DILocation(line: 981, column: 10, scope: !3622)
!3631 = !DILocation(line: 972, column: 3, scope: !3595, inlinedAt: !3630)
!3632 = !DILocation(line: 972, column: 26, scope: !3595, inlinedAt: !3630)
!3633 = !DILocation(line: 973, column: 13, scope: !3595, inlinedAt: !3630)
!3634 = !DILocation(line: 0, scope: !2613, inlinedAt: !3635)
!3635 = distinct !DILocation(line: 974, column: 3, scope: !3595, inlinedAt: !3630)
!3636 = !DILocation(line: 147, column: 41, scope: !2613, inlinedAt: !3635)
!3637 = !DILocation(line: 147, column: 62, scope: !2613, inlinedAt: !3635)
!3638 = !DILocation(line: 147, column: 57, scope: !2613, inlinedAt: !3635)
!3639 = !DILocation(line: 148, column: 15, scope: !2613, inlinedAt: !3635)
!3640 = !DILocation(line: 149, column: 21, scope: !2613, inlinedAt: !3635)
!3641 = !DILocation(line: 149, column: 24, scope: !2613, inlinedAt: !3635)
!3642 = !DILocation(line: 150, column: 19, scope: !2613, inlinedAt: !3635)
!3643 = !DILocation(line: 150, column: 24, scope: !2613, inlinedAt: !3635)
!3644 = !DILocation(line: 150, column: 6, scope: !2613, inlinedAt: !3635)
!3645 = !DILocation(line: 975, column: 10, scope: !3595, inlinedAt: !3630)
!3646 = !DILocation(line: 976, column: 1, scope: !3595, inlinedAt: !3630)
!3647 = !DILocation(line: 981, column: 3, scope: !3622)
!3648 = distinct !DISubprogram(name: "quotearg_colon", scope: !679, file: !679, line: 985, type: !1186, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3649)
!3649 = !{!3650}
!3650 = !DILocalVariable(name: "arg", arg: 1, scope: !3648, file: !679, line: 985, type: !151)
!3651 = !DILocation(line: 0, scope: !3648)
!3652 = !DILocation(line: 0, scope: !3622, inlinedAt: !3653)
!3653 = distinct !DILocation(line: 987, column: 10, scope: !3648)
!3654 = !DILocation(line: 0, scope: !3595, inlinedAt: !3655)
!3655 = distinct !DILocation(line: 981, column: 10, scope: !3622, inlinedAt: !3653)
!3656 = !DILocation(line: 972, column: 3, scope: !3595, inlinedAt: !3655)
!3657 = !DILocation(line: 972, column: 26, scope: !3595, inlinedAt: !3655)
!3658 = !DILocation(line: 973, column: 13, scope: !3595, inlinedAt: !3655)
!3659 = !DILocation(line: 0, scope: !2613, inlinedAt: !3660)
!3660 = distinct !DILocation(line: 974, column: 3, scope: !3595, inlinedAt: !3655)
!3661 = !DILocation(line: 147, column: 57, scope: !2613, inlinedAt: !3660)
!3662 = !DILocation(line: 149, column: 21, scope: !2613, inlinedAt: !3660)
!3663 = !DILocation(line: 150, column: 6, scope: !2613, inlinedAt: !3660)
!3664 = !DILocation(line: 975, column: 10, scope: !3595, inlinedAt: !3655)
!3665 = !DILocation(line: 976, column: 1, scope: !3595, inlinedAt: !3655)
!3666 = !DILocation(line: 987, column: 3, scope: !3648)
!3667 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !679, file: !679, line: 991, type: !3476, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3668)
!3668 = !{!3669, !3670}
!3669 = !DILocalVariable(name: "arg", arg: 1, scope: !3667, file: !679, line: 991, type: !151)
!3670 = !DILocalVariable(name: "argsize", arg: 2, scope: !3667, file: !679, line: 991, type: !149)
!3671 = !DILocation(line: 0, scope: !3667)
!3672 = !DILocation(line: 0, scope: !3595, inlinedAt: !3673)
!3673 = distinct !DILocation(line: 993, column: 10, scope: !3667)
!3674 = !DILocation(line: 972, column: 3, scope: !3595, inlinedAt: !3673)
!3675 = !DILocation(line: 972, column: 26, scope: !3595, inlinedAt: !3673)
!3676 = !DILocation(line: 973, column: 13, scope: !3595, inlinedAt: !3673)
!3677 = !DILocation(line: 0, scope: !2613, inlinedAt: !3678)
!3678 = distinct !DILocation(line: 974, column: 3, scope: !3595, inlinedAt: !3673)
!3679 = !DILocation(line: 147, column: 57, scope: !2613, inlinedAt: !3678)
!3680 = !DILocation(line: 149, column: 21, scope: !2613, inlinedAt: !3678)
!3681 = !DILocation(line: 150, column: 6, scope: !2613, inlinedAt: !3678)
!3682 = !DILocation(line: 975, column: 10, scope: !3595, inlinedAt: !3673)
!3683 = !DILocation(line: 976, column: 1, scope: !3595, inlinedAt: !3673)
!3684 = !DILocation(line: 993, column: 3, scope: !3667)
!3685 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !679, file: !679, line: 997, type: !3487, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3686)
!3686 = !{!3687, !3688, !3689, !3690}
!3687 = !DILocalVariable(name: "n", arg: 1, scope: !3685, file: !679, line: 997, type: !86)
!3688 = !DILocalVariable(name: "s", arg: 2, scope: !3685, file: !679, line: 997, type: !96)
!3689 = !DILocalVariable(name: "arg", arg: 3, scope: !3685, file: !679, line: 997, type: !151)
!3690 = !DILocalVariable(name: "options", scope: !3685, file: !679, line: 999, type: !718)
!3691 = !DILocation(line: 185, column: 26, scope: !3502, inlinedAt: !3692)
!3692 = distinct !DILocation(line: 1000, column: 13, scope: !3685)
!3693 = !DILocation(line: 0, scope: !3685)
!3694 = !DILocation(line: 999, column: 3, scope: !3685)
!3695 = !DILocation(line: 999, column: 26, scope: !3685)
!3696 = !DILocation(line: 0, scope: !3502, inlinedAt: !3692)
!3697 = !DILocation(line: 186, column: 13, scope: !3511, inlinedAt: !3692)
!3698 = !DILocation(line: 186, column: 7, scope: !3502, inlinedAt: !3692)
!3699 = !DILocation(line: 187, column: 5, scope: !3511, inlinedAt: !3692)
!3700 = !{!3701}
!3701 = distinct !{!3701, !3702, !"quoting_options_from_style: argument 0"}
!3702 = distinct !{!3702, !"quoting_options_from_style"}
!3703 = !DILocation(line: 1000, column: 13, scope: !3685)
!3704 = !DILocation(line: 0, scope: !2613, inlinedAt: !3705)
!3705 = distinct !DILocation(line: 1001, column: 3, scope: !3685)
!3706 = !DILocation(line: 147, column: 57, scope: !2613, inlinedAt: !3705)
!3707 = !DILocation(line: 149, column: 21, scope: !2613, inlinedAt: !3705)
!3708 = !DILocation(line: 150, column: 6, scope: !2613, inlinedAt: !3705)
!3709 = !DILocation(line: 1002, column: 10, scope: !3685)
!3710 = !DILocation(line: 1003, column: 1, scope: !3685)
!3711 = !DILocation(line: 1002, column: 3, scope: !3685)
!3712 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !679, file: !679, line: 1006, type: !3713, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3715)
!3713 = !DISubroutineType(types: !3714)
!3714 = !{!88, !86, !151, !151, !151}
!3715 = !{!3716, !3717, !3718, !3719}
!3716 = !DILocalVariable(name: "n", arg: 1, scope: !3712, file: !679, line: 1006, type: !86)
!3717 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3712, file: !679, line: 1006, type: !151)
!3718 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3712, file: !679, line: 1007, type: !151)
!3719 = !DILocalVariable(name: "arg", arg: 4, scope: !3712, file: !679, line: 1007, type: !151)
!3720 = !DILocation(line: 0, scope: !3712)
!3721 = !DILocalVariable(name: "n", arg: 1, scope: !3722, file: !679, line: 1014, type: !86)
!3722 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !679, file: !679, line: 1014, type: !3723, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3725)
!3723 = !DISubroutineType(types: !3724)
!3724 = !{!88, !86, !151, !151, !151, !149}
!3725 = !{!3721, !3726, !3727, !3728, !3729, !3730}
!3726 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3722, file: !679, line: 1014, type: !151)
!3727 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3722, file: !679, line: 1015, type: !151)
!3728 = !DILocalVariable(name: "arg", arg: 4, scope: !3722, file: !679, line: 1016, type: !151)
!3729 = !DILocalVariable(name: "argsize", arg: 5, scope: !3722, file: !679, line: 1016, type: !149)
!3730 = !DILocalVariable(name: "o", scope: !3722, file: !679, line: 1018, type: !718)
!3731 = !DILocation(line: 0, scope: !3722, inlinedAt: !3732)
!3732 = distinct !DILocation(line: 1009, column: 10, scope: !3712)
!3733 = !DILocation(line: 1018, column: 3, scope: !3722, inlinedAt: !3732)
!3734 = !DILocation(line: 1018, column: 26, scope: !3722, inlinedAt: !3732)
!3735 = !DILocation(line: 1018, column: 30, scope: !3722, inlinedAt: !3732)
!3736 = !DILocation(line: 0, scope: !2653, inlinedAt: !3737)
!3737 = distinct !DILocation(line: 1019, column: 3, scope: !3722, inlinedAt: !3732)
!3738 = !DILocation(line: 174, column: 12, scope: !2653, inlinedAt: !3737)
!3739 = !DILocation(line: 175, column: 8, scope: !2666, inlinedAt: !3737)
!3740 = !DILocation(line: 175, column: 19, scope: !2666, inlinedAt: !3737)
!3741 = !DILocation(line: 176, column: 5, scope: !2666, inlinedAt: !3737)
!3742 = !DILocation(line: 177, column: 6, scope: !2653, inlinedAt: !3737)
!3743 = !DILocation(line: 177, column: 17, scope: !2653, inlinedAt: !3737)
!3744 = !DILocation(line: 178, column: 6, scope: !2653, inlinedAt: !3737)
!3745 = !DILocation(line: 178, column: 18, scope: !2653, inlinedAt: !3737)
!3746 = !DILocation(line: 1020, column: 10, scope: !3722, inlinedAt: !3732)
!3747 = !DILocation(line: 1021, column: 1, scope: !3722, inlinedAt: !3732)
!3748 = !DILocation(line: 1009, column: 3, scope: !3712)
!3749 = !DILocation(line: 0, scope: !3722)
!3750 = !DILocation(line: 1018, column: 3, scope: !3722)
!3751 = !DILocation(line: 1018, column: 26, scope: !3722)
!3752 = !DILocation(line: 1018, column: 30, scope: !3722)
!3753 = !DILocation(line: 0, scope: !2653, inlinedAt: !3754)
!3754 = distinct !DILocation(line: 1019, column: 3, scope: !3722)
!3755 = !DILocation(line: 174, column: 12, scope: !2653, inlinedAt: !3754)
!3756 = !DILocation(line: 175, column: 8, scope: !2666, inlinedAt: !3754)
!3757 = !DILocation(line: 175, column: 19, scope: !2666, inlinedAt: !3754)
!3758 = !DILocation(line: 176, column: 5, scope: !2666, inlinedAt: !3754)
!3759 = !DILocation(line: 177, column: 6, scope: !2653, inlinedAt: !3754)
!3760 = !DILocation(line: 177, column: 17, scope: !2653, inlinedAt: !3754)
!3761 = !DILocation(line: 178, column: 6, scope: !2653, inlinedAt: !3754)
!3762 = !DILocation(line: 178, column: 18, scope: !2653, inlinedAt: !3754)
!3763 = !DILocation(line: 1020, column: 10, scope: !3722)
!3764 = !DILocation(line: 1021, column: 1, scope: !3722)
!3765 = !DILocation(line: 1020, column: 3, scope: !3722)
!3766 = distinct !DISubprogram(name: "quotearg_custom", scope: !679, file: !679, line: 1024, type: !3767, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3769)
!3767 = !DISubroutineType(types: !3768)
!3768 = !{!88, !151, !151, !151}
!3769 = !{!3770, !3771, !3772}
!3770 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3766, file: !679, line: 1024, type: !151)
!3771 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3766, file: !679, line: 1024, type: !151)
!3772 = !DILocalVariable(name: "arg", arg: 3, scope: !3766, file: !679, line: 1025, type: !151)
!3773 = !DILocation(line: 0, scope: !3766)
!3774 = !DILocation(line: 0, scope: !3712, inlinedAt: !3775)
!3775 = distinct !DILocation(line: 1027, column: 10, scope: !3766)
!3776 = !DILocation(line: 0, scope: !3722, inlinedAt: !3777)
!3777 = distinct !DILocation(line: 1009, column: 10, scope: !3712, inlinedAt: !3775)
!3778 = !DILocation(line: 1018, column: 3, scope: !3722, inlinedAt: !3777)
!3779 = !DILocation(line: 1018, column: 26, scope: !3722, inlinedAt: !3777)
!3780 = !DILocation(line: 1018, column: 30, scope: !3722, inlinedAt: !3777)
!3781 = !DILocation(line: 0, scope: !2653, inlinedAt: !3782)
!3782 = distinct !DILocation(line: 1019, column: 3, scope: !3722, inlinedAt: !3777)
!3783 = !DILocation(line: 174, column: 12, scope: !2653, inlinedAt: !3782)
!3784 = !DILocation(line: 175, column: 8, scope: !2666, inlinedAt: !3782)
!3785 = !DILocation(line: 175, column: 19, scope: !2666, inlinedAt: !3782)
!3786 = !DILocation(line: 176, column: 5, scope: !2666, inlinedAt: !3782)
!3787 = !DILocation(line: 177, column: 6, scope: !2653, inlinedAt: !3782)
!3788 = !DILocation(line: 177, column: 17, scope: !2653, inlinedAt: !3782)
!3789 = !DILocation(line: 178, column: 6, scope: !2653, inlinedAt: !3782)
!3790 = !DILocation(line: 178, column: 18, scope: !2653, inlinedAt: !3782)
!3791 = !DILocation(line: 1020, column: 10, scope: !3722, inlinedAt: !3777)
!3792 = !DILocation(line: 1021, column: 1, scope: !3722, inlinedAt: !3777)
!3793 = !DILocation(line: 1027, column: 3, scope: !3766)
!3794 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !679, file: !679, line: 1031, type: !3795, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3797)
!3795 = !DISubroutineType(types: !3796)
!3796 = !{!88, !151, !151, !151, !149}
!3797 = !{!3798, !3799, !3800, !3801}
!3798 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3794, file: !679, line: 1031, type: !151)
!3799 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3794, file: !679, line: 1031, type: !151)
!3800 = !DILocalVariable(name: "arg", arg: 3, scope: !3794, file: !679, line: 1032, type: !151)
!3801 = !DILocalVariable(name: "argsize", arg: 4, scope: !3794, file: !679, line: 1032, type: !149)
!3802 = !DILocation(line: 0, scope: !3794)
!3803 = !DILocation(line: 0, scope: !3722, inlinedAt: !3804)
!3804 = distinct !DILocation(line: 1034, column: 10, scope: !3794)
!3805 = !DILocation(line: 1018, column: 3, scope: !3722, inlinedAt: !3804)
!3806 = !DILocation(line: 1018, column: 26, scope: !3722, inlinedAt: !3804)
!3807 = !DILocation(line: 1018, column: 30, scope: !3722, inlinedAt: !3804)
!3808 = !DILocation(line: 0, scope: !2653, inlinedAt: !3809)
!3809 = distinct !DILocation(line: 1019, column: 3, scope: !3722, inlinedAt: !3804)
!3810 = !DILocation(line: 174, column: 12, scope: !2653, inlinedAt: !3809)
!3811 = !DILocation(line: 175, column: 8, scope: !2666, inlinedAt: !3809)
!3812 = !DILocation(line: 175, column: 19, scope: !2666, inlinedAt: !3809)
!3813 = !DILocation(line: 176, column: 5, scope: !2666, inlinedAt: !3809)
!3814 = !DILocation(line: 177, column: 6, scope: !2653, inlinedAt: !3809)
!3815 = !DILocation(line: 177, column: 17, scope: !2653, inlinedAt: !3809)
!3816 = !DILocation(line: 178, column: 6, scope: !2653, inlinedAt: !3809)
!3817 = !DILocation(line: 178, column: 18, scope: !2653, inlinedAt: !3809)
!3818 = !DILocation(line: 1020, column: 10, scope: !3722, inlinedAt: !3804)
!3819 = !DILocation(line: 1021, column: 1, scope: !3722, inlinedAt: !3804)
!3820 = !DILocation(line: 1034, column: 3, scope: !3794)
!3821 = distinct !DISubprogram(name: "quote_n_mem", scope: !679, file: !679, line: 1049, type: !3822, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3824)
!3822 = !DISubroutineType(types: !3823)
!3823 = !{!151, !86, !151, !149}
!3824 = !{!3825, !3826, !3827}
!3825 = !DILocalVariable(name: "n", arg: 1, scope: !3821, file: !679, line: 1049, type: !86)
!3826 = !DILocalVariable(name: "arg", arg: 2, scope: !3821, file: !679, line: 1049, type: !151)
!3827 = !DILocalVariable(name: "argsize", arg: 3, scope: !3821, file: !679, line: 1049, type: !149)
!3828 = !DILocation(line: 0, scope: !3821)
!3829 = !DILocation(line: 1051, column: 10, scope: !3821)
!3830 = !DILocation(line: 1051, column: 3, scope: !3821)
!3831 = distinct !DISubprogram(name: "quote_mem", scope: !679, file: !679, line: 1055, type: !3832, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3834)
!3832 = !DISubroutineType(types: !3833)
!3833 = !{!151, !151, !149}
!3834 = !{!3835, !3836}
!3835 = !DILocalVariable(name: "arg", arg: 1, scope: !3831, file: !679, line: 1055, type: !151)
!3836 = !DILocalVariable(name: "argsize", arg: 2, scope: !3831, file: !679, line: 1055, type: !149)
!3837 = !DILocation(line: 0, scope: !3831)
!3838 = !DILocation(line: 0, scope: !3821, inlinedAt: !3839)
!3839 = distinct !DILocation(line: 1057, column: 10, scope: !3831)
!3840 = !DILocation(line: 1051, column: 10, scope: !3821, inlinedAt: !3839)
!3841 = !DILocation(line: 1057, column: 3, scope: !3831)
!3842 = distinct !DISubprogram(name: "quote_n", scope: !679, file: !679, line: 1061, type: !3843, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3845)
!3843 = !DISubroutineType(types: !3844)
!3844 = !{!151, !86, !151}
!3845 = !{!3846, !3847}
!3846 = !DILocalVariable(name: "n", arg: 1, scope: !3842, file: !679, line: 1061, type: !86)
!3847 = !DILocalVariable(name: "arg", arg: 2, scope: !3842, file: !679, line: 1061, type: !151)
!3848 = !DILocation(line: 0, scope: !3842)
!3849 = !DILocation(line: 0, scope: !3821, inlinedAt: !3850)
!3850 = distinct !DILocation(line: 1063, column: 10, scope: !3842)
!3851 = !DILocation(line: 1051, column: 10, scope: !3821, inlinedAt: !3850)
!3852 = !DILocation(line: 1063, column: 3, scope: !3842)
!3853 = distinct !DISubprogram(name: "quote", scope: !679, file: !679, line: 1067, type: !3854, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3856)
!3854 = !DISubroutineType(types: !3855)
!3855 = !{!151, !151}
!3856 = !{!3857}
!3857 = !DILocalVariable(name: "arg", arg: 1, scope: !3853, file: !679, line: 1067, type: !151)
!3858 = !DILocation(line: 0, scope: !3853)
!3859 = !DILocation(line: 0, scope: !3842, inlinedAt: !3860)
!3860 = distinct !DILocation(line: 1069, column: 10, scope: !3853)
!3861 = !DILocation(line: 0, scope: !3821, inlinedAt: !3862)
!3862 = distinct !DILocation(line: 1063, column: 10, scope: !3842, inlinedAt: !3860)
!3863 = !DILocation(line: 1051, column: 10, scope: !3821, inlinedAt: !3862)
!3864 = !DILocation(line: 1069, column: 3, scope: !3853)
!3865 = distinct !DISubprogram(name: "safe_write", scope: !3866, file: !3866, line: 56, type: !3867, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !908, retainedNodes: !3870)
!3866 = !DIFile(filename: "./lib/safe-read.c", directory: "/src", checksumkind: CSK_MD5, checksum: "434e548fbeff241cc07e1dbcc7b4611f")
!3867 = !DISubroutineType(types: !3868)
!3868 = !{!503, !86, !3869, !501}
!3869 = !DIDerivedType(tag: DW_TAG_typedef, name: "bufptr", file: !3866, line: 45, baseType: !1208)
!3870 = !{!3871, !3872, !3873, !3874}
!3871 = !DILocalVariable(name: "fd", arg: 1, scope: !3865, file: !3866, line: 56, type: !86)
!3872 = !DILocalVariable(name: "buf", arg: 2, scope: !3865, file: !3866, line: 56, type: !3869)
!3873 = !DILocalVariable(name: "count", arg: 3, scope: !3865, file: !3866, line: 56, type: !501)
!3874 = !DILocalVariable(name: "result", scope: !3875, file: !3866, line: 60, type: !3878)
!3875 = distinct !DILexicalBlock(scope: !3876, file: !3866, line: 59, column: 5)
!3876 = distinct !DILexicalBlock(scope: !3877, file: !3866, line: 58, column: 3)
!3877 = distinct !DILexicalBlock(scope: !3865, file: !3866, line: 58, column: 3)
!3878 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !3879, line: 108, baseType: !1394)
!3879 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!3880 = !DILocation(line: 0, scope: !3865)
!3881 = !DILocation(line: 58, column: 3, scope: !3865)
!3882 = !DILocation(line: 62, column: 11, scope: !3875)
!3883 = !DILocation(line: 60, column: 24, scope: !3875)
!3884 = !DILocation(line: 0, scope: !3875)
!3885 = !DILocation(line: 62, column: 13, scope: !3886)
!3886 = distinct !DILexicalBlock(scope: !3875, file: !3866, line: 62, column: 11)
!3887 = !DILocation(line: 64, column: 16, scope: !3888)
!3888 = distinct !DILexicalBlock(scope: !3886, file: !3866, line: 64, column: 16)
!3889 = !DILocation(line: 64, column: 16, scope: !3886)
!3890 = distinct !{!3890, !3891, !3892}
!3891 = !DILocation(line: 58, column: 3, scope: !3877)
!3892 = !DILocation(line: 70, column: 5, scope: !3877)
!3893 = !DILocation(line: 66, column: 22, scope: !3894)
!3894 = distinct !DILexicalBlock(scope: !3888, file: !3866, line: 66, column: 16)
!3895 = !DILocation(line: 0, scope: !3876)
!3896 = !DILocation(line: 71, column: 1, scope: !3865)
!3897 = !DISubprogram(name: "write", scope: !1941, file: !1941, line: 378, type: !3898, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !998)
!3898 = !DISubroutineType(types: !3899)
!3899 = !{!3878, !86, !1208, !149}
!3900 = distinct !DISubprogram(name: "version_etc_arn", scope: !779, file: !779, line: 61, type: !3901, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !911, retainedNodes: !3938)
!3901 = !DISubroutineType(types: !3902)
!3902 = !{null, !3903, !151, !151, !151, !3937, !149}
!3903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3904, size: 64)
!3904 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !290, line: 7, baseType: !3905)
!3905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !292, line: 49, size: 1728, elements: !3906)
!3906 = !{!3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936}
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3905, file: !292, line: 51, baseType: !86, size: 32)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3905, file: !292, line: 54, baseType: !88, size: 64, offset: 64)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3905, file: !292, line: 55, baseType: !88, size: 64, offset: 128)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3905, file: !292, line: 56, baseType: !88, size: 64, offset: 192)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3905, file: !292, line: 57, baseType: !88, size: 64, offset: 256)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3905, file: !292, line: 58, baseType: !88, size: 64, offset: 320)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3905, file: !292, line: 59, baseType: !88, size: 64, offset: 384)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3905, file: !292, line: 60, baseType: !88, size: 64, offset: 448)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3905, file: !292, line: 61, baseType: !88, size: 64, offset: 512)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3905, file: !292, line: 64, baseType: !88, size: 64, offset: 576)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3905, file: !292, line: 65, baseType: !88, size: 64, offset: 640)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3905, file: !292, line: 66, baseType: !88, size: 64, offset: 704)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3905, file: !292, line: 68, baseType: !307, size: 64, offset: 768)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3905, file: !292, line: 70, baseType: !3921, size: 64, offset: 832)
!3921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3905, size: 64)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3905, file: !292, line: 72, baseType: !86, size: 32, offset: 896)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3905, file: !292, line: 73, baseType: !86, size: 32, offset: 928)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3905, file: !292, line: 74, baseType: !314, size: 64, offset: 960)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3905, file: !292, line: 77, baseType: !148, size: 16, offset: 1024)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3905, file: !292, line: 78, baseType: !318, size: 8, offset: 1040)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3905, file: !292, line: 79, baseType: !199, size: 8, offset: 1048)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3905, file: !292, line: 81, baseType: !321, size: 64, offset: 1088)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3905, file: !292, line: 89, baseType: !324, size: 64, offset: 1152)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3905, file: !292, line: 91, baseType: !326, size: 64, offset: 1216)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3905, file: !292, line: 92, baseType: !329, size: 64, offset: 1280)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3905, file: !292, line: 93, baseType: !3921, size: 64, offset: 1344)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3905, file: !292, line: 94, baseType: !144, size: 64, offset: 1408)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3905, file: !292, line: 95, baseType: !149, size: 64, offset: 1472)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3905, file: !292, line: 96, baseType: !86, size: 32, offset: 1536)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3905, file: !292, line: 98, baseType: !228, size: 160, offset: 1568)
!3937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!3938 = !{!3939, !3940, !3941, !3942, !3943, !3944}
!3939 = !DILocalVariable(name: "stream", arg: 1, scope: !3900, file: !779, line: 61, type: !3903)
!3940 = !DILocalVariable(name: "command_name", arg: 2, scope: !3900, file: !779, line: 62, type: !151)
!3941 = !DILocalVariable(name: "package", arg: 3, scope: !3900, file: !779, line: 62, type: !151)
!3942 = !DILocalVariable(name: "version", arg: 4, scope: !3900, file: !779, line: 63, type: !151)
!3943 = !DILocalVariable(name: "authors", arg: 5, scope: !3900, file: !779, line: 64, type: !3937)
!3944 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3900, file: !779, line: 64, type: !149)
!3945 = !DILocation(line: 0, scope: !3900)
!3946 = !DILocation(line: 66, column: 7, scope: !3947)
!3947 = distinct !DILexicalBlock(scope: !3900, file: !779, line: 66, column: 7)
!3948 = !DILocation(line: 66, column: 7, scope: !3900)
!3949 = !DILocation(line: 67, column: 5, scope: !3947)
!3950 = !DILocation(line: 69, column: 5, scope: !3947)
!3951 = !DILocation(line: 83, column: 3, scope: !3900)
!3952 = !DILocation(line: 85, column: 3, scope: !3900)
!3953 = !DILocation(line: 88, column: 3, scope: !3900)
!3954 = !DILocation(line: 95, column: 3, scope: !3900)
!3955 = !DILocation(line: 97, column: 3, scope: !3900)
!3956 = !DILocation(line: 105, column: 7, scope: !3957)
!3957 = distinct !DILexicalBlock(scope: !3900, file: !779, line: 98, column: 5)
!3958 = !DILocation(line: 106, column: 7, scope: !3957)
!3959 = !DILocation(line: 109, column: 7, scope: !3957)
!3960 = !DILocation(line: 110, column: 7, scope: !3957)
!3961 = !DILocation(line: 113, column: 7, scope: !3957)
!3962 = !DILocation(line: 115, column: 7, scope: !3957)
!3963 = !DILocation(line: 120, column: 7, scope: !3957)
!3964 = !DILocation(line: 122, column: 7, scope: !3957)
!3965 = !DILocation(line: 127, column: 7, scope: !3957)
!3966 = !DILocation(line: 129, column: 7, scope: !3957)
!3967 = !DILocation(line: 134, column: 7, scope: !3957)
!3968 = !DILocation(line: 137, column: 7, scope: !3957)
!3969 = !DILocation(line: 142, column: 7, scope: !3957)
!3970 = !DILocation(line: 145, column: 7, scope: !3957)
!3971 = !DILocation(line: 150, column: 7, scope: !3957)
!3972 = !DILocation(line: 154, column: 7, scope: !3957)
!3973 = !DILocation(line: 159, column: 7, scope: !3957)
!3974 = !DILocation(line: 163, column: 7, scope: !3957)
!3975 = !DILocation(line: 170, column: 7, scope: !3957)
!3976 = !DILocation(line: 174, column: 7, scope: !3957)
!3977 = !DILocation(line: 176, column: 1, scope: !3900)
!3978 = distinct !DISubprogram(name: "version_etc_ar", scope: !779, file: !779, line: 183, type: !3979, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !911, retainedNodes: !3981)
!3979 = !DISubroutineType(types: !3980)
!3980 = !{null, !3903, !151, !151, !151, !3937}
!3981 = !{!3982, !3983, !3984, !3985, !3986, !3987}
!3982 = !DILocalVariable(name: "stream", arg: 1, scope: !3978, file: !779, line: 183, type: !3903)
!3983 = !DILocalVariable(name: "command_name", arg: 2, scope: !3978, file: !779, line: 184, type: !151)
!3984 = !DILocalVariable(name: "package", arg: 3, scope: !3978, file: !779, line: 184, type: !151)
!3985 = !DILocalVariable(name: "version", arg: 4, scope: !3978, file: !779, line: 185, type: !151)
!3986 = !DILocalVariable(name: "authors", arg: 5, scope: !3978, file: !779, line: 185, type: !3937)
!3987 = !DILocalVariable(name: "n_authors", scope: !3978, file: !779, line: 187, type: !149)
!3988 = !DILocation(line: 0, scope: !3978)
!3989 = !DILocation(line: 189, column: 8, scope: !3990)
!3990 = distinct !DILexicalBlock(scope: !3978, file: !779, line: 189, column: 3)
!3991 = !DILocation(line: 189, scope: !3990)
!3992 = !DILocation(line: 189, column: 23, scope: !3993)
!3993 = distinct !DILexicalBlock(scope: !3990, file: !779, line: 189, column: 3)
!3994 = !DILocation(line: 189, column: 3, scope: !3990)
!3995 = !DILocation(line: 189, column: 52, scope: !3993)
!3996 = distinct !{!3996, !3994, !3997, !1110}
!3997 = !DILocation(line: 190, column: 5, scope: !3990)
!3998 = !DILocation(line: 191, column: 3, scope: !3978)
!3999 = !DILocation(line: 192, column: 1, scope: !3978)
!4000 = distinct !DISubprogram(name: "version_etc_va", scope: !779, file: !779, line: 199, type: !4001, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !911, retainedNodes: !4014)
!4001 = !DISubroutineType(types: !4002)
!4002 = !{null, !3903, !151, !151, !151, !4003}
!4003 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !517, line: 52, baseType: !4004)
!4004 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !577, line: 14, baseType: !4005)
!4005 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !4006, baseType: !4007)
!4006 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!4007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !4008)
!4008 = !{!4009, !4010, !4011, !4012, !4013}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !4007, file: !4006, line: 192, baseType: !144, size: 64)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !4007, file: !4006, line: 192, baseType: !144, size: 64, offset: 64)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !4007, file: !4006, line: 192, baseType: !144, size: 64, offset: 128)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !4007, file: !4006, line: 192, baseType: !86, size: 32, offset: 192)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !4007, file: !4006, line: 192, baseType: !86, size: 32, offset: 224)
!4014 = !{!4015, !4016, !4017, !4018, !4019, !4020, !4021}
!4015 = !DILocalVariable(name: "stream", arg: 1, scope: !4000, file: !779, line: 199, type: !3903)
!4016 = !DILocalVariable(name: "command_name", arg: 2, scope: !4000, file: !779, line: 200, type: !151)
!4017 = !DILocalVariable(name: "package", arg: 3, scope: !4000, file: !779, line: 200, type: !151)
!4018 = !DILocalVariable(name: "version", arg: 4, scope: !4000, file: !779, line: 201, type: !151)
!4019 = !DILocalVariable(name: "authors", arg: 5, scope: !4000, file: !779, line: 201, type: !4003)
!4020 = !DILocalVariable(name: "n_authors", scope: !4000, file: !779, line: 203, type: !149)
!4021 = !DILocalVariable(name: "authtab", scope: !4000, file: !779, line: 204, type: !4022)
!4022 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 640, elements: !178)
!4023 = !DILocation(line: 0, scope: !4000)
!4024 = !DILocation(line: 201, column: 46, scope: !4000)
!4025 = !DILocation(line: 204, column: 3, scope: !4000)
!4026 = !DILocation(line: 204, column: 15, scope: !4000)
!4027 = !DILocation(line: 208, column: 35, scope: !4028)
!4028 = distinct !DILexicalBlock(scope: !4029, file: !779, line: 206, column: 3)
!4029 = distinct !DILexicalBlock(scope: !4000, file: !779, line: 206, column: 3)
!4030 = !DILocation(line: 208, column: 33, scope: !4028)
!4031 = !DILocation(line: 208, column: 67, scope: !4028)
!4032 = !DILocation(line: 206, column: 3, scope: !4029)
!4033 = !DILocation(line: 208, column: 14, scope: !4028)
!4034 = !DILocation(line: 0, scope: !4029)
!4035 = !DILocation(line: 211, column: 3, scope: !4000)
!4036 = !DILocation(line: 213, column: 1, scope: !4000)
!4037 = distinct !DISubprogram(name: "version_etc", scope: !779, file: !779, line: 230, type: !4038, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !911, retainedNodes: !4040)
!4038 = !DISubroutineType(types: !4039)
!4039 = !{null, !3903, !151, !151, !151, null}
!4040 = !{!4041, !4042, !4043, !4044, !4045}
!4041 = !DILocalVariable(name: "stream", arg: 1, scope: !4037, file: !779, line: 230, type: !3903)
!4042 = !DILocalVariable(name: "command_name", arg: 2, scope: !4037, file: !779, line: 231, type: !151)
!4043 = !DILocalVariable(name: "package", arg: 3, scope: !4037, file: !779, line: 231, type: !151)
!4044 = !DILocalVariable(name: "version", arg: 4, scope: !4037, file: !779, line: 232, type: !151)
!4045 = !DILocalVariable(name: "authors", scope: !4037, file: !779, line: 234, type: !4003)
!4046 = !DILocation(line: 0, scope: !4037)
!4047 = !DILocation(line: 234, column: 3, scope: !4037)
!4048 = !DILocation(line: 234, column: 11, scope: !4037)
!4049 = !DILocation(line: 235, column: 3, scope: !4037)
!4050 = !DILocation(line: 236, column: 3, scope: !4037)
!4051 = !DILocation(line: 237, column: 3, scope: !4037)
!4052 = !DILocation(line: 238, column: 1, scope: !4037)
!4053 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !779, file: !779, line: 241, type: !616, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !911, retainedNodes: !998)
!4054 = !DILocation(line: 243, column: 3, scope: !4053)
!4055 = !DILocation(line: 248, column: 3, scope: !4053)
!4056 = !DILocation(line: 254, column: 3, scope: !4053)
!4057 = !DILocation(line: 259, column: 3, scope: !4053)
!4058 = !DILocation(line: 261, column: 1, scope: !4053)
!4059 = distinct !DISubprogram(name: "xalignalloc", scope: !919, file: !919, line: 27, type: !4060, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !918, retainedNodes: !4062)
!4060 = !DISubroutineType(types: !4061)
!4061 = !{!144, !501, !501}
!4062 = !{!4063, !4064, !4065}
!4063 = !DILocalVariable(name: "alignment", arg: 1, scope: !4059, file: !919, line: 27, type: !501)
!4064 = !DILocalVariable(name: "size", arg: 2, scope: !4059, file: !919, line: 27, type: !501)
!4065 = !DILocalVariable(name: "p", scope: !4059, file: !919, line: 29, type: !144)
!4066 = !DILocation(line: 0, scope: !4059)
!4067 = !DILocalVariable(name: "alignment", arg: 1, scope: !4068, file: !1866, line: 90, type: !501)
!4068 = distinct !DISubprogram(name: "alignalloc", scope: !1866, file: !1866, line: 90, type: !4060, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !918, retainedNodes: !4069)
!4069 = !{!4067, !4070}
!4070 = !DILocalVariable(name: "size", arg: 2, scope: !4068, file: !1866, line: 90, type: !501)
!4071 = !DILocation(line: 0, scope: !4068, inlinedAt: !4072)
!4072 = distinct !DILocation(line: 29, column: 13, scope: !4059)
!4073 = !DILocation(line: 98, column: 10, scope: !4068, inlinedAt: !4072)
!4074 = !DILocation(line: 30, column: 8, scope: !4075)
!4075 = distinct !DILexicalBlock(scope: !4059, file: !919, line: 30, column: 7)
!4076 = !DILocation(line: 30, column: 7, scope: !4059)
!4077 = !DILocation(line: 31, column: 5, scope: !4075)
!4078 = !DILocation(line: 32, column: 3, scope: !4059)
!4079 = !DISubprogram(name: "aligned_alloc", scope: !1184, file: !1184, line: 592, type: !4080, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !998)
!4080 = !DISubroutineType(types: !4081)
!4081 = !{!144, !149, !149}
!4082 = distinct !DISubprogram(name: "xnrealloc", scope: !4083, file: !4083, line: 147, type: !4084, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4086)
!4083 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4084 = !DISubroutineType(types: !4085)
!4085 = !{!144, !144, !149, !149}
!4086 = !{!4087, !4088, !4089}
!4087 = !DILocalVariable(name: "p", arg: 1, scope: !4082, file: !4083, line: 147, type: !144)
!4088 = !DILocalVariable(name: "n", arg: 2, scope: !4082, file: !4083, line: 147, type: !149)
!4089 = !DILocalVariable(name: "s", arg: 3, scope: !4082, file: !4083, line: 147, type: !149)
!4090 = !DILocation(line: 0, scope: !4082)
!4091 = !DILocalVariable(name: "p", arg: 1, scope: !4092, file: !921, line: 83, type: !144)
!4092 = distinct !DISubprogram(name: "xreallocarray", scope: !921, file: !921, line: 83, type: !4084, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4093)
!4093 = !{!4091, !4094, !4095}
!4094 = !DILocalVariable(name: "n", arg: 2, scope: !4092, file: !921, line: 83, type: !149)
!4095 = !DILocalVariable(name: "s", arg: 3, scope: !4092, file: !921, line: 83, type: !149)
!4096 = !DILocation(line: 0, scope: !4092, inlinedAt: !4097)
!4097 = distinct !DILocation(line: 149, column: 10, scope: !4082)
!4098 = !DILocation(line: 85, column: 25, scope: !4092, inlinedAt: !4097)
!4099 = !DILocalVariable(name: "p", arg: 1, scope: !4100, file: !921, line: 37, type: !144)
!4100 = distinct !DISubprogram(name: "check_nonnull", scope: !921, file: !921, line: 37, type: !4101, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4103)
!4101 = !DISubroutineType(types: !4102)
!4102 = !{!144, !144}
!4103 = !{!4099}
!4104 = !DILocation(line: 0, scope: !4100, inlinedAt: !4105)
!4105 = distinct !DILocation(line: 85, column: 10, scope: !4092, inlinedAt: !4097)
!4106 = !DILocation(line: 39, column: 8, scope: !4107, inlinedAt: !4105)
!4107 = distinct !DILexicalBlock(scope: !4100, file: !921, line: 39, column: 7)
!4108 = !DILocation(line: 39, column: 7, scope: !4100, inlinedAt: !4105)
!4109 = !DILocation(line: 40, column: 5, scope: !4107, inlinedAt: !4105)
!4110 = !DILocation(line: 149, column: 3, scope: !4082)
!4111 = !DILocation(line: 0, scope: !4092)
!4112 = !DILocation(line: 85, column: 25, scope: !4092)
!4113 = !DILocation(line: 0, scope: !4100, inlinedAt: !4114)
!4114 = distinct !DILocation(line: 85, column: 10, scope: !4092)
!4115 = !DILocation(line: 39, column: 8, scope: !4107, inlinedAt: !4114)
!4116 = !DILocation(line: 39, column: 7, scope: !4100, inlinedAt: !4114)
!4117 = !DILocation(line: 40, column: 5, scope: !4107, inlinedAt: !4114)
!4118 = !DILocation(line: 85, column: 3, scope: !4092)
!4119 = distinct !DISubprogram(name: "xmalloc", scope: !921, file: !921, line: 47, type: !4120, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4122)
!4120 = !DISubroutineType(types: !4121)
!4121 = !{!144, !149}
!4122 = !{!4123}
!4123 = !DILocalVariable(name: "s", arg: 1, scope: !4119, file: !921, line: 47, type: !149)
!4124 = !DILocation(line: 0, scope: !4119)
!4125 = !DILocation(line: 49, column: 25, scope: !4119)
!4126 = !DILocation(line: 0, scope: !4100, inlinedAt: !4127)
!4127 = distinct !DILocation(line: 49, column: 10, scope: !4119)
!4128 = !DILocation(line: 39, column: 8, scope: !4107, inlinedAt: !4127)
!4129 = !DILocation(line: 39, column: 7, scope: !4100, inlinedAt: !4127)
!4130 = !DILocation(line: 40, column: 5, scope: !4107, inlinedAt: !4127)
!4131 = !DILocation(line: 49, column: 3, scope: !4119)
!4132 = !DISubprogram(name: "malloc", scope: !1184, file: !1184, line: 540, type: !4120, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !998)
!4133 = distinct !DISubprogram(name: "ximalloc", scope: !921, file: !921, line: 53, type: !4134, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4136)
!4134 = !DISubroutineType(types: !4135)
!4135 = !{!144, !501}
!4136 = !{!4137}
!4137 = !DILocalVariable(name: "s", arg: 1, scope: !4133, file: !921, line: 53, type: !501)
!4138 = !DILocation(line: 0, scope: !4133)
!4139 = !DILocalVariable(name: "s", arg: 1, scope: !4140, file: !4141, line: 55, type: !501)
!4140 = distinct !DISubprogram(name: "imalloc", scope: !4141, file: !4141, line: 55, type: !4134, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4142)
!4141 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4142 = !{!4139}
!4143 = !DILocation(line: 0, scope: !4140, inlinedAt: !4144)
!4144 = distinct !DILocation(line: 55, column: 25, scope: !4133)
!4145 = !DILocation(line: 57, column: 26, scope: !4140, inlinedAt: !4144)
!4146 = !DILocation(line: 0, scope: !4100, inlinedAt: !4147)
!4147 = distinct !DILocation(line: 55, column: 10, scope: !4133)
!4148 = !DILocation(line: 39, column: 8, scope: !4107, inlinedAt: !4147)
!4149 = !DILocation(line: 39, column: 7, scope: !4100, inlinedAt: !4147)
!4150 = !DILocation(line: 40, column: 5, scope: !4107, inlinedAt: !4147)
!4151 = !DILocation(line: 55, column: 3, scope: !4133)
!4152 = distinct !DISubprogram(name: "xcharalloc", scope: !921, file: !921, line: 59, type: !4153, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4155)
!4153 = !DISubroutineType(types: !4154)
!4154 = !{!88, !149}
!4155 = !{!4156}
!4156 = !DILocalVariable(name: "n", arg: 1, scope: !4152, file: !921, line: 59, type: !149)
!4157 = !DILocation(line: 0, scope: !4152)
!4158 = !DILocation(line: 0, scope: !4119, inlinedAt: !4159)
!4159 = distinct !DILocation(line: 61, column: 10, scope: !4152)
!4160 = !DILocation(line: 49, column: 25, scope: !4119, inlinedAt: !4159)
!4161 = !DILocation(line: 0, scope: !4100, inlinedAt: !4162)
!4162 = distinct !DILocation(line: 49, column: 10, scope: !4119, inlinedAt: !4159)
!4163 = !DILocation(line: 39, column: 8, scope: !4107, inlinedAt: !4162)
!4164 = !DILocation(line: 39, column: 7, scope: !4100, inlinedAt: !4162)
!4165 = !DILocation(line: 40, column: 5, scope: !4107, inlinedAt: !4162)
!4166 = !DILocation(line: 61, column: 3, scope: !4152)
!4167 = distinct !DISubprogram(name: "xrealloc", scope: !921, file: !921, line: 68, type: !4168, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4170)
!4168 = !DISubroutineType(types: !4169)
!4169 = !{!144, !144, !149}
!4170 = !{!4171, !4172}
!4171 = !DILocalVariable(name: "p", arg: 1, scope: !4167, file: !921, line: 68, type: !144)
!4172 = !DILocalVariable(name: "s", arg: 2, scope: !4167, file: !921, line: 68, type: !149)
!4173 = !DILocation(line: 0, scope: !4167)
!4174 = !DILocalVariable(name: "ptr", arg: 1, scope: !4175, file: !4176, line: 2057, type: !144)
!4175 = distinct !DISubprogram(name: "rpl_realloc", scope: !4176, file: !4176, line: 2057, type: !4168, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4177)
!4176 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4177 = !{!4174, !4178}
!4178 = !DILocalVariable(name: "size", arg: 2, scope: !4175, file: !4176, line: 2057, type: !149)
!4179 = !DILocation(line: 0, scope: !4175, inlinedAt: !4180)
!4180 = distinct !DILocation(line: 70, column: 25, scope: !4167)
!4181 = !DILocation(line: 2059, column: 24, scope: !4175, inlinedAt: !4180)
!4182 = !DILocation(line: 2059, column: 10, scope: !4175, inlinedAt: !4180)
!4183 = !DILocation(line: 0, scope: !4100, inlinedAt: !4184)
!4184 = distinct !DILocation(line: 70, column: 10, scope: !4167)
!4185 = !DILocation(line: 39, column: 8, scope: !4107, inlinedAt: !4184)
!4186 = !DILocation(line: 39, column: 7, scope: !4100, inlinedAt: !4184)
!4187 = !DILocation(line: 40, column: 5, scope: !4107, inlinedAt: !4184)
!4188 = !DILocation(line: 70, column: 3, scope: !4167)
!4189 = !DISubprogram(name: "realloc", scope: !1184, file: !1184, line: 551, type: !4168, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !998)
!4190 = distinct !DISubprogram(name: "xirealloc", scope: !921, file: !921, line: 74, type: !4191, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4193)
!4191 = !DISubroutineType(types: !4192)
!4192 = !{!144, !144, !501}
!4193 = !{!4194, !4195}
!4194 = !DILocalVariable(name: "p", arg: 1, scope: !4190, file: !921, line: 74, type: !144)
!4195 = !DILocalVariable(name: "s", arg: 2, scope: !4190, file: !921, line: 74, type: !501)
!4196 = !DILocation(line: 0, scope: !4190)
!4197 = !DILocalVariable(name: "p", arg: 1, scope: !4198, file: !4141, line: 66, type: !144)
!4198 = distinct !DISubprogram(name: "irealloc", scope: !4141, file: !4141, line: 66, type: !4191, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4199)
!4199 = !{!4197, !4200}
!4200 = !DILocalVariable(name: "s", arg: 2, scope: !4198, file: !4141, line: 66, type: !501)
!4201 = !DILocation(line: 0, scope: !4198, inlinedAt: !4202)
!4202 = distinct !DILocation(line: 76, column: 25, scope: !4190)
!4203 = !DILocation(line: 0, scope: !4175, inlinedAt: !4204)
!4204 = distinct !DILocation(line: 68, column: 26, scope: !4198, inlinedAt: !4202)
!4205 = !DILocation(line: 2059, column: 24, scope: !4175, inlinedAt: !4204)
!4206 = !DILocation(line: 2059, column: 10, scope: !4175, inlinedAt: !4204)
!4207 = !DILocation(line: 0, scope: !4100, inlinedAt: !4208)
!4208 = distinct !DILocation(line: 76, column: 10, scope: !4190)
!4209 = !DILocation(line: 39, column: 8, scope: !4107, inlinedAt: !4208)
!4210 = !DILocation(line: 39, column: 7, scope: !4100, inlinedAt: !4208)
!4211 = !DILocation(line: 40, column: 5, scope: !4107, inlinedAt: !4208)
!4212 = !DILocation(line: 76, column: 3, scope: !4190)
!4213 = distinct !DISubprogram(name: "xireallocarray", scope: !921, file: !921, line: 89, type: !4214, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4216)
!4214 = !DISubroutineType(types: !4215)
!4215 = !{!144, !144, !501, !501}
!4216 = !{!4217, !4218, !4219}
!4217 = !DILocalVariable(name: "p", arg: 1, scope: !4213, file: !921, line: 89, type: !144)
!4218 = !DILocalVariable(name: "n", arg: 2, scope: !4213, file: !921, line: 89, type: !501)
!4219 = !DILocalVariable(name: "s", arg: 3, scope: !4213, file: !921, line: 89, type: !501)
!4220 = !DILocation(line: 0, scope: !4213)
!4221 = !DILocalVariable(name: "p", arg: 1, scope: !4222, file: !4141, line: 98, type: !144)
!4222 = distinct !DISubprogram(name: "ireallocarray", scope: !4141, file: !4141, line: 98, type: !4214, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4223)
!4223 = !{!4221, !4224, !4225}
!4224 = !DILocalVariable(name: "n", arg: 2, scope: !4222, file: !4141, line: 98, type: !501)
!4225 = !DILocalVariable(name: "s", arg: 3, scope: !4222, file: !4141, line: 98, type: !501)
!4226 = !DILocation(line: 0, scope: !4222, inlinedAt: !4227)
!4227 = distinct !DILocation(line: 91, column: 25, scope: !4213)
!4228 = !DILocation(line: 101, column: 13, scope: !4222, inlinedAt: !4227)
!4229 = !DILocation(line: 0, scope: !4100, inlinedAt: !4230)
!4230 = distinct !DILocation(line: 91, column: 10, scope: !4213)
!4231 = !DILocation(line: 39, column: 8, scope: !4107, inlinedAt: !4230)
!4232 = !DILocation(line: 39, column: 7, scope: !4100, inlinedAt: !4230)
!4233 = !DILocation(line: 40, column: 5, scope: !4107, inlinedAt: !4230)
!4234 = !DILocation(line: 91, column: 3, scope: !4213)
!4235 = distinct !DISubprogram(name: "xnmalloc", scope: !921, file: !921, line: 98, type: !4080, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4236)
!4236 = !{!4237, !4238}
!4237 = !DILocalVariable(name: "n", arg: 1, scope: !4235, file: !921, line: 98, type: !149)
!4238 = !DILocalVariable(name: "s", arg: 2, scope: !4235, file: !921, line: 98, type: !149)
!4239 = !DILocation(line: 0, scope: !4235)
!4240 = !DILocation(line: 0, scope: !4092, inlinedAt: !4241)
!4241 = distinct !DILocation(line: 100, column: 10, scope: !4235)
!4242 = !DILocation(line: 85, column: 25, scope: !4092, inlinedAt: !4241)
!4243 = !DILocation(line: 0, scope: !4100, inlinedAt: !4244)
!4244 = distinct !DILocation(line: 85, column: 10, scope: !4092, inlinedAt: !4241)
!4245 = !DILocation(line: 39, column: 8, scope: !4107, inlinedAt: !4244)
!4246 = !DILocation(line: 39, column: 7, scope: !4100, inlinedAt: !4244)
!4247 = !DILocation(line: 40, column: 5, scope: !4107, inlinedAt: !4244)
!4248 = !DILocation(line: 100, column: 3, scope: !4235)
!4249 = distinct !DISubprogram(name: "xinmalloc", scope: !921, file: !921, line: 104, type: !4060, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4250)
!4250 = !{!4251, !4252}
!4251 = !DILocalVariable(name: "n", arg: 1, scope: !4249, file: !921, line: 104, type: !501)
!4252 = !DILocalVariable(name: "s", arg: 2, scope: !4249, file: !921, line: 104, type: !501)
!4253 = !DILocation(line: 0, scope: !4249)
!4254 = !DILocation(line: 0, scope: !4213, inlinedAt: !4255)
!4255 = distinct !DILocation(line: 106, column: 10, scope: !4249)
!4256 = !DILocation(line: 0, scope: !4222, inlinedAt: !4257)
!4257 = distinct !DILocation(line: 91, column: 25, scope: !4213, inlinedAt: !4255)
!4258 = !DILocation(line: 101, column: 13, scope: !4222, inlinedAt: !4257)
!4259 = !DILocation(line: 0, scope: !4100, inlinedAt: !4260)
!4260 = distinct !DILocation(line: 91, column: 10, scope: !4213, inlinedAt: !4255)
!4261 = !DILocation(line: 39, column: 8, scope: !4107, inlinedAt: !4260)
!4262 = !DILocation(line: 39, column: 7, scope: !4100, inlinedAt: !4260)
!4263 = !DILocation(line: 40, column: 5, scope: !4107, inlinedAt: !4260)
!4264 = !DILocation(line: 106, column: 3, scope: !4249)
!4265 = distinct !DISubprogram(name: "x2realloc", scope: !921, file: !921, line: 116, type: !4266, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4268)
!4266 = !DISubroutineType(types: !4267)
!4267 = !{!144, !144, !927}
!4268 = !{!4269, !4270}
!4269 = !DILocalVariable(name: "p", arg: 1, scope: !4265, file: !921, line: 116, type: !144)
!4270 = !DILocalVariable(name: "ps", arg: 2, scope: !4265, file: !921, line: 116, type: !927)
!4271 = !DILocation(line: 0, scope: !4265)
!4272 = !DILocation(line: 0, scope: !924, inlinedAt: !4273)
!4273 = distinct !DILocation(line: 118, column: 10, scope: !4265)
!4274 = !DILocation(line: 178, column: 14, scope: !924, inlinedAt: !4273)
!4275 = !DILocation(line: 180, column: 9, scope: !4276, inlinedAt: !4273)
!4276 = distinct !DILexicalBlock(scope: !924, file: !921, line: 180, column: 7)
!4277 = !DILocation(line: 180, column: 7, scope: !924, inlinedAt: !4273)
!4278 = !DILocation(line: 182, column: 13, scope: !4279, inlinedAt: !4273)
!4279 = distinct !DILexicalBlock(scope: !4280, file: !921, line: 182, column: 11)
!4280 = distinct !DILexicalBlock(scope: !4276, file: !921, line: 181, column: 5)
!4281 = !DILocation(line: 182, column: 11, scope: !4280, inlinedAt: !4273)
!4282 = !DILocation(line: 197, column: 11, scope: !4283, inlinedAt: !4273)
!4283 = distinct !DILexicalBlock(scope: !4284, file: !921, line: 197, column: 11)
!4284 = distinct !DILexicalBlock(scope: !4276, file: !921, line: 195, column: 5)
!4285 = !DILocation(line: 197, column: 11, scope: !4284, inlinedAt: !4273)
!4286 = !DILocation(line: 198, column: 9, scope: !4283, inlinedAt: !4273)
!4287 = !DILocation(line: 0, scope: !4092, inlinedAt: !4288)
!4288 = distinct !DILocation(line: 201, column: 7, scope: !924, inlinedAt: !4273)
!4289 = !DILocation(line: 85, column: 25, scope: !4092, inlinedAt: !4288)
!4290 = !DILocation(line: 0, scope: !4100, inlinedAt: !4291)
!4291 = distinct !DILocation(line: 85, column: 10, scope: !4092, inlinedAt: !4288)
!4292 = !DILocation(line: 39, column: 8, scope: !4107, inlinedAt: !4291)
!4293 = !DILocation(line: 39, column: 7, scope: !4100, inlinedAt: !4291)
!4294 = !DILocation(line: 40, column: 5, scope: !4107, inlinedAt: !4291)
!4295 = !DILocation(line: 202, column: 7, scope: !924, inlinedAt: !4273)
!4296 = !DILocation(line: 118, column: 3, scope: !4265)
!4297 = !DILocation(line: 0, scope: !924)
!4298 = !DILocation(line: 178, column: 14, scope: !924)
!4299 = !DILocation(line: 180, column: 9, scope: !4276)
!4300 = !DILocation(line: 180, column: 7, scope: !924)
!4301 = !DILocation(line: 182, column: 13, scope: !4279)
!4302 = !DILocation(line: 182, column: 11, scope: !4280)
!4303 = !DILocation(line: 190, column: 30, scope: !4304)
!4304 = distinct !DILexicalBlock(scope: !4279, file: !921, line: 183, column: 9)
!4305 = !DILocation(line: 191, column: 16, scope: !4304)
!4306 = !DILocation(line: 191, column: 13, scope: !4304)
!4307 = !DILocation(line: 192, column: 9, scope: !4304)
!4308 = !DILocation(line: 197, column: 11, scope: !4283)
!4309 = !DILocation(line: 197, column: 11, scope: !4284)
!4310 = !DILocation(line: 198, column: 9, scope: !4283)
!4311 = !DILocation(line: 0, scope: !4092, inlinedAt: !4312)
!4312 = distinct !DILocation(line: 201, column: 7, scope: !924)
!4313 = !DILocation(line: 85, column: 25, scope: !4092, inlinedAt: !4312)
!4314 = !DILocation(line: 0, scope: !4100, inlinedAt: !4315)
!4315 = distinct !DILocation(line: 85, column: 10, scope: !4092, inlinedAt: !4312)
!4316 = !DILocation(line: 39, column: 8, scope: !4107, inlinedAt: !4315)
!4317 = !DILocation(line: 39, column: 7, scope: !4100, inlinedAt: !4315)
!4318 = !DILocation(line: 40, column: 5, scope: !4107, inlinedAt: !4315)
!4319 = !DILocation(line: 202, column: 7, scope: !924)
!4320 = !DILocation(line: 203, column: 3, scope: !924)
!4321 = !DILocation(line: 0, scope: !936)
!4322 = !DILocation(line: 230, column: 14, scope: !936)
!4323 = !DILocation(line: 238, column: 7, scope: !4324)
!4324 = distinct !DILexicalBlock(scope: !936, file: !921, line: 238, column: 7)
!4325 = !DILocation(line: 238, column: 7, scope: !936)
!4326 = !DILocation(line: 240, column: 9, scope: !4327)
!4327 = distinct !DILexicalBlock(scope: !936, file: !921, line: 240, column: 7)
!4328 = !DILocation(line: 240, column: 18, scope: !4327)
!4329 = !DILocation(line: 253, column: 8, scope: !936)
!4330 = !DILocation(line: 258, column: 27, scope: !4331)
!4331 = distinct !DILexicalBlock(scope: !4332, file: !921, line: 257, column: 5)
!4332 = distinct !DILexicalBlock(scope: !936, file: !921, line: 256, column: 7)
!4333 = !DILocation(line: 259, column: 32, scope: !4331)
!4334 = !DILocation(line: 260, column: 5, scope: !4331)
!4335 = !DILocation(line: 262, column: 9, scope: !4336)
!4336 = distinct !DILexicalBlock(scope: !936, file: !921, line: 262, column: 7)
!4337 = !DILocation(line: 262, column: 7, scope: !936)
!4338 = !DILocation(line: 263, column: 9, scope: !4336)
!4339 = !DILocation(line: 263, column: 5, scope: !4336)
!4340 = !DILocation(line: 264, column: 9, scope: !4341)
!4341 = distinct !DILexicalBlock(scope: !936, file: !921, line: 264, column: 7)
!4342 = !DILocation(line: 264, column: 14, scope: !4341)
!4343 = !DILocation(line: 265, column: 7, scope: !4341)
!4344 = !DILocation(line: 265, column: 11, scope: !4341)
!4345 = !DILocation(line: 266, column: 11, scope: !4341)
!4346 = !DILocation(line: 267, column: 14, scope: !4341)
!4347 = !DILocation(line: 264, column: 7, scope: !936)
!4348 = !DILocation(line: 268, column: 5, scope: !4341)
!4349 = !DILocation(line: 0, scope: !4167, inlinedAt: !4350)
!4350 = distinct !DILocation(line: 269, column: 8, scope: !936)
!4351 = !DILocation(line: 0, scope: !4175, inlinedAt: !4352)
!4352 = distinct !DILocation(line: 70, column: 25, scope: !4167, inlinedAt: !4350)
!4353 = !DILocation(line: 2059, column: 24, scope: !4175, inlinedAt: !4352)
!4354 = !DILocation(line: 2059, column: 10, scope: !4175, inlinedAt: !4352)
!4355 = !DILocation(line: 0, scope: !4100, inlinedAt: !4356)
!4356 = distinct !DILocation(line: 70, column: 10, scope: !4167, inlinedAt: !4350)
!4357 = !DILocation(line: 39, column: 8, scope: !4107, inlinedAt: !4356)
!4358 = !DILocation(line: 39, column: 7, scope: !4100, inlinedAt: !4356)
!4359 = !DILocation(line: 40, column: 5, scope: !4107, inlinedAt: !4356)
!4360 = !DILocation(line: 270, column: 7, scope: !936)
!4361 = !DILocation(line: 271, column: 3, scope: !936)
!4362 = distinct !DISubprogram(name: "xzalloc", scope: !921, file: !921, line: 279, type: !4120, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4363)
!4363 = !{!4364}
!4364 = !DILocalVariable(name: "s", arg: 1, scope: !4362, file: !921, line: 279, type: !149)
!4365 = !DILocation(line: 0, scope: !4362)
!4366 = !DILocalVariable(name: "n", arg: 1, scope: !4367, file: !921, line: 294, type: !149)
!4367 = distinct !DISubprogram(name: "xcalloc", scope: !921, file: !921, line: 294, type: !4080, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4368)
!4368 = !{!4366, !4369}
!4369 = !DILocalVariable(name: "s", arg: 2, scope: !4367, file: !921, line: 294, type: !149)
!4370 = !DILocation(line: 0, scope: !4367, inlinedAt: !4371)
!4371 = distinct !DILocation(line: 281, column: 10, scope: !4362)
!4372 = !DILocation(line: 296, column: 25, scope: !4367, inlinedAt: !4371)
!4373 = !DILocation(line: 0, scope: !4100, inlinedAt: !4374)
!4374 = distinct !DILocation(line: 296, column: 10, scope: !4367, inlinedAt: !4371)
!4375 = !DILocation(line: 39, column: 8, scope: !4107, inlinedAt: !4374)
!4376 = !DILocation(line: 39, column: 7, scope: !4100, inlinedAt: !4374)
!4377 = !DILocation(line: 40, column: 5, scope: !4107, inlinedAt: !4374)
!4378 = !DILocation(line: 281, column: 3, scope: !4362)
!4379 = !DISubprogram(name: "calloc", scope: !1184, file: !1184, line: 543, type: !4080, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !998)
!4380 = !DILocation(line: 0, scope: !4367)
!4381 = !DILocation(line: 296, column: 25, scope: !4367)
!4382 = !DILocation(line: 0, scope: !4100, inlinedAt: !4383)
!4383 = distinct !DILocation(line: 296, column: 10, scope: !4367)
!4384 = !DILocation(line: 39, column: 8, scope: !4107, inlinedAt: !4383)
!4385 = !DILocation(line: 39, column: 7, scope: !4100, inlinedAt: !4383)
!4386 = !DILocation(line: 40, column: 5, scope: !4107, inlinedAt: !4383)
!4387 = !DILocation(line: 296, column: 3, scope: !4367)
!4388 = distinct !DISubprogram(name: "xizalloc", scope: !921, file: !921, line: 285, type: !4134, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4389)
!4389 = !{!4390}
!4390 = !DILocalVariable(name: "s", arg: 1, scope: !4388, file: !921, line: 285, type: !501)
!4391 = !DILocation(line: 0, scope: !4388)
!4392 = !DILocalVariable(name: "n", arg: 1, scope: !4393, file: !921, line: 300, type: !501)
!4393 = distinct !DISubprogram(name: "xicalloc", scope: !921, file: !921, line: 300, type: !4060, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4394)
!4394 = !{!4392, !4395}
!4395 = !DILocalVariable(name: "s", arg: 2, scope: !4393, file: !921, line: 300, type: !501)
!4396 = !DILocation(line: 0, scope: !4393, inlinedAt: !4397)
!4397 = distinct !DILocation(line: 287, column: 10, scope: !4388)
!4398 = !DILocalVariable(name: "n", arg: 1, scope: !4399, file: !4141, line: 77, type: !501)
!4399 = distinct !DISubprogram(name: "icalloc", scope: !4141, file: !4141, line: 77, type: !4060, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4400)
!4400 = !{!4398, !4401}
!4401 = !DILocalVariable(name: "s", arg: 2, scope: !4399, file: !4141, line: 77, type: !501)
!4402 = !DILocation(line: 0, scope: !4399, inlinedAt: !4403)
!4403 = distinct !DILocation(line: 302, column: 25, scope: !4393, inlinedAt: !4397)
!4404 = !DILocation(line: 91, column: 10, scope: !4399, inlinedAt: !4403)
!4405 = !DILocation(line: 0, scope: !4100, inlinedAt: !4406)
!4406 = distinct !DILocation(line: 302, column: 10, scope: !4393, inlinedAt: !4397)
!4407 = !DILocation(line: 39, column: 8, scope: !4107, inlinedAt: !4406)
!4408 = !DILocation(line: 39, column: 7, scope: !4100, inlinedAt: !4406)
!4409 = !DILocation(line: 40, column: 5, scope: !4107, inlinedAt: !4406)
!4410 = !DILocation(line: 287, column: 3, scope: !4388)
!4411 = !DILocation(line: 0, scope: !4393)
!4412 = !DILocation(line: 0, scope: !4399, inlinedAt: !4413)
!4413 = distinct !DILocation(line: 302, column: 25, scope: !4393)
!4414 = !DILocation(line: 91, column: 10, scope: !4399, inlinedAt: !4413)
!4415 = !DILocation(line: 0, scope: !4100, inlinedAt: !4416)
!4416 = distinct !DILocation(line: 302, column: 10, scope: !4393)
!4417 = !DILocation(line: 39, column: 8, scope: !4107, inlinedAt: !4416)
!4418 = !DILocation(line: 39, column: 7, scope: !4100, inlinedAt: !4416)
!4419 = !DILocation(line: 40, column: 5, scope: !4107, inlinedAt: !4416)
!4420 = !DILocation(line: 302, column: 3, scope: !4393)
!4421 = distinct !DISubprogram(name: "xmemdup", scope: !921, file: !921, line: 310, type: !4422, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4424)
!4422 = !DISubroutineType(types: !4423)
!4423 = !{!144, !1208, !149}
!4424 = !{!4425, !4426}
!4425 = !DILocalVariable(name: "p", arg: 1, scope: !4421, file: !921, line: 310, type: !1208)
!4426 = !DILocalVariable(name: "s", arg: 2, scope: !4421, file: !921, line: 310, type: !149)
!4427 = !DILocation(line: 0, scope: !4421)
!4428 = !DILocation(line: 0, scope: !4119, inlinedAt: !4429)
!4429 = distinct !DILocation(line: 312, column: 18, scope: !4421)
!4430 = !DILocation(line: 49, column: 25, scope: !4119, inlinedAt: !4429)
!4431 = !DILocation(line: 0, scope: !4100, inlinedAt: !4432)
!4432 = distinct !DILocation(line: 49, column: 10, scope: !4119, inlinedAt: !4429)
!4433 = !DILocation(line: 39, column: 8, scope: !4107, inlinedAt: !4432)
!4434 = !DILocation(line: 39, column: 7, scope: !4100, inlinedAt: !4432)
!4435 = !DILocation(line: 40, column: 5, scope: !4107, inlinedAt: !4432)
!4436 = !DILocalVariable(name: "__dest", arg: 1, scope: !4437, file: !1530, line: 26, type: !4440)
!4437 = distinct !DISubprogram(name: "memcpy", scope: !1530, file: !1530, line: 26, type: !4438, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4441)
!4438 = !DISubroutineType(types: !4439)
!4439 = !{!144, !4440, !1207, !149}
!4440 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !144)
!4441 = !{!4436, !4442, !4443}
!4442 = !DILocalVariable(name: "__src", arg: 2, scope: !4437, file: !1530, line: 26, type: !1207)
!4443 = !DILocalVariable(name: "__len", arg: 3, scope: !4437, file: !1530, line: 26, type: !149)
!4444 = !DILocation(line: 0, scope: !4437, inlinedAt: !4445)
!4445 = distinct !DILocation(line: 312, column: 10, scope: !4421)
!4446 = !DILocation(line: 29, column: 10, scope: !4437, inlinedAt: !4445)
!4447 = !DILocation(line: 312, column: 3, scope: !4421)
!4448 = distinct !DISubprogram(name: "ximemdup", scope: !921, file: !921, line: 316, type: !4449, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4451)
!4449 = !DISubroutineType(types: !4450)
!4450 = !{!144, !1208, !501}
!4451 = !{!4452, !4453}
!4452 = !DILocalVariable(name: "p", arg: 1, scope: !4448, file: !921, line: 316, type: !1208)
!4453 = !DILocalVariable(name: "s", arg: 2, scope: !4448, file: !921, line: 316, type: !501)
!4454 = !DILocation(line: 0, scope: !4448)
!4455 = !DILocation(line: 0, scope: !4133, inlinedAt: !4456)
!4456 = distinct !DILocation(line: 318, column: 18, scope: !4448)
!4457 = !DILocation(line: 0, scope: !4140, inlinedAt: !4458)
!4458 = distinct !DILocation(line: 55, column: 25, scope: !4133, inlinedAt: !4456)
!4459 = !DILocation(line: 57, column: 26, scope: !4140, inlinedAt: !4458)
!4460 = !DILocation(line: 0, scope: !4100, inlinedAt: !4461)
!4461 = distinct !DILocation(line: 55, column: 10, scope: !4133, inlinedAt: !4456)
!4462 = !DILocation(line: 39, column: 8, scope: !4107, inlinedAt: !4461)
!4463 = !DILocation(line: 39, column: 7, scope: !4100, inlinedAt: !4461)
!4464 = !DILocation(line: 40, column: 5, scope: !4107, inlinedAt: !4461)
!4465 = !DILocation(line: 0, scope: !4437, inlinedAt: !4466)
!4466 = distinct !DILocation(line: 318, column: 10, scope: !4448)
!4467 = !DILocation(line: 29, column: 10, scope: !4437, inlinedAt: !4466)
!4468 = !DILocation(line: 318, column: 3, scope: !4448)
!4469 = distinct !DISubprogram(name: "ximemdup0", scope: !921, file: !921, line: 325, type: !4470, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4472)
!4470 = !DISubroutineType(types: !4471)
!4471 = !{!88, !1208, !501}
!4472 = !{!4473, !4474, !4475}
!4473 = !DILocalVariable(name: "p", arg: 1, scope: !4469, file: !921, line: 325, type: !1208)
!4474 = !DILocalVariable(name: "s", arg: 2, scope: !4469, file: !921, line: 325, type: !501)
!4475 = !DILocalVariable(name: "result", scope: !4469, file: !921, line: 327, type: !88)
!4476 = !DILocation(line: 0, scope: !4469)
!4477 = !DILocation(line: 327, column: 30, scope: !4469)
!4478 = !DILocation(line: 0, scope: !4133, inlinedAt: !4479)
!4479 = distinct !DILocation(line: 327, column: 18, scope: !4469)
!4480 = !DILocation(line: 0, scope: !4140, inlinedAt: !4481)
!4481 = distinct !DILocation(line: 55, column: 25, scope: !4133, inlinedAt: !4479)
!4482 = !DILocation(line: 57, column: 26, scope: !4140, inlinedAt: !4481)
!4483 = !DILocation(line: 0, scope: !4100, inlinedAt: !4484)
!4484 = distinct !DILocation(line: 55, column: 10, scope: !4133, inlinedAt: !4479)
!4485 = !DILocation(line: 39, column: 8, scope: !4107, inlinedAt: !4484)
!4486 = !DILocation(line: 39, column: 7, scope: !4100, inlinedAt: !4484)
!4487 = !DILocation(line: 40, column: 5, scope: !4107, inlinedAt: !4484)
!4488 = !DILocation(line: 328, column: 3, scope: !4469)
!4489 = !DILocation(line: 328, column: 13, scope: !4469)
!4490 = !DILocation(line: 0, scope: !4437, inlinedAt: !4491)
!4491 = distinct !DILocation(line: 329, column: 10, scope: !4469)
!4492 = !DILocation(line: 29, column: 10, scope: !4437, inlinedAt: !4491)
!4493 = !DILocation(line: 329, column: 3, scope: !4469)
!4494 = distinct !DISubprogram(name: "xstrdup", scope: !921, file: !921, line: 335, type: !1186, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4495)
!4495 = !{!4496}
!4496 = !DILocalVariable(name: "string", arg: 1, scope: !4494, file: !921, line: 335, type: !151)
!4497 = !DILocation(line: 0, scope: !4494)
!4498 = !DILocation(line: 337, column: 27, scope: !4494)
!4499 = !DILocation(line: 337, column: 43, scope: !4494)
!4500 = !DILocation(line: 0, scope: !4421, inlinedAt: !4501)
!4501 = distinct !DILocation(line: 337, column: 10, scope: !4494)
!4502 = !DILocation(line: 0, scope: !4119, inlinedAt: !4503)
!4503 = distinct !DILocation(line: 312, column: 18, scope: !4421, inlinedAt: !4501)
!4504 = !DILocation(line: 49, column: 25, scope: !4119, inlinedAt: !4503)
!4505 = !DILocation(line: 0, scope: !4100, inlinedAt: !4506)
!4506 = distinct !DILocation(line: 49, column: 10, scope: !4119, inlinedAt: !4503)
!4507 = !DILocation(line: 39, column: 8, scope: !4107, inlinedAt: !4506)
!4508 = !DILocation(line: 39, column: 7, scope: !4100, inlinedAt: !4506)
!4509 = !DILocation(line: 40, column: 5, scope: !4107, inlinedAt: !4506)
!4510 = !DILocation(line: 0, scope: !4437, inlinedAt: !4511)
!4511 = distinct !DILocation(line: 312, column: 10, scope: !4421, inlinedAt: !4501)
!4512 = !DILocation(line: 29, column: 10, scope: !4437, inlinedAt: !4511)
!4513 = !DILocation(line: 337, column: 3, scope: !4494)
!4514 = distinct !DISubprogram(name: "xalloc_die", scope: !867, file: !867, line: 32, type: !616, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !951, retainedNodes: !4515)
!4515 = !{!4516}
!4516 = !DILocalVariable(name: "__errstatus", scope: !4517, file: !867, line: 34, type: !4518)
!4517 = distinct !DILexicalBlock(scope: !4514, file: !867, line: 34, column: 3)
!4518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!4519 = !DILocation(line: 34, column: 3, scope: !4517)
!4520 = !DILocation(line: 0, scope: !4517)
!4521 = !DILocation(line: 40, column: 3, scope: !4514)
!4522 = distinct !DISubprogram(name: "close_stream", scope: !954, file: !954, line: 55, type: !4523, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !953, retainedNodes: !4559)
!4523 = !DISubroutineType(types: !4524)
!4524 = !{!86, !4525}
!4525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4526, size: 64)
!4526 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !290, line: 7, baseType: !4527)
!4527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !292, line: 49, size: 1728, elements: !4528)
!4528 = !{!4529, !4530, !4531, !4532, !4533, !4534, !4535, !4536, !4537, !4538, !4539, !4540, !4541, !4542, !4544, !4545, !4546, !4547, !4548, !4549, !4550, !4551, !4552, !4553, !4554, !4555, !4556, !4557, !4558}
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4527, file: !292, line: 51, baseType: !86, size: 32)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4527, file: !292, line: 54, baseType: !88, size: 64, offset: 64)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4527, file: !292, line: 55, baseType: !88, size: 64, offset: 128)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4527, file: !292, line: 56, baseType: !88, size: 64, offset: 192)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4527, file: !292, line: 57, baseType: !88, size: 64, offset: 256)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4527, file: !292, line: 58, baseType: !88, size: 64, offset: 320)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4527, file: !292, line: 59, baseType: !88, size: 64, offset: 384)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4527, file: !292, line: 60, baseType: !88, size: 64, offset: 448)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4527, file: !292, line: 61, baseType: !88, size: 64, offset: 512)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4527, file: !292, line: 64, baseType: !88, size: 64, offset: 576)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4527, file: !292, line: 65, baseType: !88, size: 64, offset: 640)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4527, file: !292, line: 66, baseType: !88, size: 64, offset: 704)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4527, file: !292, line: 68, baseType: !307, size: 64, offset: 768)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4527, file: !292, line: 70, baseType: !4543, size: 64, offset: 832)
!4543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4527, size: 64)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4527, file: !292, line: 72, baseType: !86, size: 32, offset: 896)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4527, file: !292, line: 73, baseType: !86, size: 32, offset: 928)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4527, file: !292, line: 74, baseType: !314, size: 64, offset: 960)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4527, file: !292, line: 77, baseType: !148, size: 16, offset: 1024)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4527, file: !292, line: 78, baseType: !318, size: 8, offset: 1040)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4527, file: !292, line: 79, baseType: !199, size: 8, offset: 1048)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4527, file: !292, line: 81, baseType: !321, size: 64, offset: 1088)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4527, file: !292, line: 89, baseType: !324, size: 64, offset: 1152)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4527, file: !292, line: 91, baseType: !326, size: 64, offset: 1216)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4527, file: !292, line: 92, baseType: !329, size: 64, offset: 1280)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4527, file: !292, line: 93, baseType: !4543, size: 64, offset: 1344)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4527, file: !292, line: 94, baseType: !144, size: 64, offset: 1408)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4527, file: !292, line: 95, baseType: !149, size: 64, offset: 1472)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4527, file: !292, line: 96, baseType: !86, size: 32, offset: 1536)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4527, file: !292, line: 98, baseType: !228, size: 160, offset: 1568)
!4559 = !{!4560, !4561, !4563, !4564}
!4560 = !DILocalVariable(name: "stream", arg: 1, scope: !4522, file: !954, line: 55, type: !4525)
!4561 = !DILocalVariable(name: "some_pending", scope: !4522, file: !954, line: 57, type: !4562)
!4562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !145)
!4563 = !DILocalVariable(name: "prev_fail", scope: !4522, file: !954, line: 58, type: !4562)
!4564 = !DILocalVariable(name: "fclose_fail", scope: !4522, file: !954, line: 59, type: !4562)
!4565 = !DILocation(line: 0, scope: !4522)
!4566 = !DILocation(line: 57, column: 30, scope: !4522)
!4567 = !DILocalVariable(name: "__stream", arg: 1, scope: !4568, file: !2160, line: 135, type: !4525)
!4568 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2160, file: !2160, line: 135, type: !4523, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !953, retainedNodes: !4569)
!4569 = !{!4567}
!4570 = !DILocation(line: 0, scope: !4568, inlinedAt: !4571)
!4571 = distinct !DILocation(line: 58, column: 27, scope: !4522)
!4572 = !DILocation(line: 137, column: 10, scope: !4568, inlinedAt: !4571)
!4573 = !{!2169, !1064, i64 0}
!4574 = !DILocation(line: 58, column: 43, scope: !4522)
!4575 = !DILocation(line: 59, column: 29, scope: !4522)
!4576 = !DILocation(line: 59, column: 45, scope: !4522)
!4577 = !DILocation(line: 69, column: 17, scope: !4578)
!4578 = distinct !DILexicalBlock(scope: !4522, file: !954, line: 69, column: 7)
!4579 = !DILocation(line: 57, column: 50, scope: !4522)
!4580 = !DILocation(line: 69, column: 33, scope: !4578)
!4581 = !DILocation(line: 69, column: 53, scope: !4578)
!4582 = !DILocation(line: 69, column: 59, scope: !4578)
!4583 = !DILocation(line: 69, column: 7, scope: !4522)
!4584 = !DILocation(line: 71, column: 11, scope: !4585)
!4585 = distinct !DILexicalBlock(scope: !4578, file: !954, line: 70, column: 5)
!4586 = !DILocation(line: 72, column: 9, scope: !4587)
!4587 = distinct !DILexicalBlock(scope: !4585, file: !954, line: 71, column: 11)
!4588 = !DILocation(line: 72, column: 15, scope: !4587)
!4589 = !DILocation(line: 77, column: 1, scope: !4522)
!4590 = !DISubprogram(name: "__fpending", scope: !2466, file: !2466, line: 75, type: !4591, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !998)
!4591 = !DISubroutineType(types: !4592)
!4592 = !{!149, !4525}
!4593 = distinct !DISubprogram(name: "rpl_fclose", scope: !956, file: !956, line: 58, type: !4594, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !955, retainedNodes: !4630)
!4594 = !DISubroutineType(types: !4595)
!4595 = !{!86, !4596}
!4596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4597, size: 64)
!4597 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !290, line: 7, baseType: !4598)
!4598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !292, line: 49, size: 1728, elements: !4599)
!4599 = !{!4600, !4601, !4602, !4603, !4604, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4612, !4613, !4615, !4616, !4617, !4618, !4619, !4620, !4621, !4622, !4623, !4624, !4625, !4626, !4627, !4628, !4629}
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4598, file: !292, line: 51, baseType: !86, size: 32)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4598, file: !292, line: 54, baseType: !88, size: 64, offset: 64)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4598, file: !292, line: 55, baseType: !88, size: 64, offset: 128)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4598, file: !292, line: 56, baseType: !88, size: 64, offset: 192)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4598, file: !292, line: 57, baseType: !88, size: 64, offset: 256)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4598, file: !292, line: 58, baseType: !88, size: 64, offset: 320)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4598, file: !292, line: 59, baseType: !88, size: 64, offset: 384)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4598, file: !292, line: 60, baseType: !88, size: 64, offset: 448)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4598, file: !292, line: 61, baseType: !88, size: 64, offset: 512)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4598, file: !292, line: 64, baseType: !88, size: 64, offset: 576)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4598, file: !292, line: 65, baseType: !88, size: 64, offset: 640)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4598, file: !292, line: 66, baseType: !88, size: 64, offset: 704)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4598, file: !292, line: 68, baseType: !307, size: 64, offset: 768)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4598, file: !292, line: 70, baseType: !4614, size: 64, offset: 832)
!4614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4598, size: 64)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4598, file: !292, line: 72, baseType: !86, size: 32, offset: 896)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4598, file: !292, line: 73, baseType: !86, size: 32, offset: 928)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4598, file: !292, line: 74, baseType: !314, size: 64, offset: 960)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4598, file: !292, line: 77, baseType: !148, size: 16, offset: 1024)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4598, file: !292, line: 78, baseType: !318, size: 8, offset: 1040)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4598, file: !292, line: 79, baseType: !199, size: 8, offset: 1048)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4598, file: !292, line: 81, baseType: !321, size: 64, offset: 1088)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4598, file: !292, line: 89, baseType: !324, size: 64, offset: 1152)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4598, file: !292, line: 91, baseType: !326, size: 64, offset: 1216)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4598, file: !292, line: 92, baseType: !329, size: 64, offset: 1280)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4598, file: !292, line: 93, baseType: !4614, size: 64, offset: 1344)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4598, file: !292, line: 94, baseType: !144, size: 64, offset: 1408)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4598, file: !292, line: 95, baseType: !149, size: 64, offset: 1472)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4598, file: !292, line: 96, baseType: !86, size: 32, offset: 1536)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4598, file: !292, line: 98, baseType: !228, size: 160, offset: 1568)
!4630 = !{!4631, !4632, !4633, !4634}
!4631 = !DILocalVariable(name: "fp", arg: 1, scope: !4593, file: !956, line: 58, type: !4596)
!4632 = !DILocalVariable(name: "saved_errno", scope: !4593, file: !956, line: 60, type: !86)
!4633 = !DILocalVariable(name: "fd", scope: !4593, file: !956, line: 63, type: !86)
!4634 = !DILocalVariable(name: "result", scope: !4593, file: !956, line: 74, type: !86)
!4635 = !DILocation(line: 0, scope: !4593)
!4636 = !DILocation(line: 63, column: 12, scope: !4593)
!4637 = !DILocation(line: 64, column: 10, scope: !4638)
!4638 = distinct !DILexicalBlock(scope: !4593, file: !956, line: 64, column: 7)
!4639 = !DILocation(line: 64, column: 7, scope: !4593)
!4640 = !DILocation(line: 65, column: 12, scope: !4638)
!4641 = !DILocation(line: 65, column: 5, scope: !4638)
!4642 = !DILocation(line: 70, column: 9, scope: !4643)
!4643 = distinct !DILexicalBlock(scope: !4593, file: !956, line: 70, column: 7)
!4644 = !DILocation(line: 70, column: 23, scope: !4643)
!4645 = !DILocation(line: 70, column: 33, scope: !4643)
!4646 = !DILocation(line: 70, column: 26, scope: !4643)
!4647 = !DILocation(line: 70, column: 59, scope: !4643)
!4648 = !DILocation(line: 71, column: 7, scope: !4643)
!4649 = !DILocation(line: 71, column: 10, scope: !4643)
!4650 = !DILocation(line: 70, column: 7, scope: !4593)
!4651 = !DILocation(line: 100, column: 12, scope: !4593)
!4652 = !DILocation(line: 105, column: 7, scope: !4593)
!4653 = !DILocation(line: 72, column: 19, scope: !4643)
!4654 = !DILocation(line: 105, column: 19, scope: !4655)
!4655 = distinct !DILexicalBlock(scope: !4593, file: !956, line: 105, column: 7)
!4656 = !DILocation(line: 107, column: 13, scope: !4657)
!4657 = distinct !DILexicalBlock(scope: !4655, file: !956, line: 106, column: 5)
!4658 = !DILocation(line: 109, column: 5, scope: !4657)
!4659 = !DILocation(line: 112, column: 1, scope: !4593)
!4660 = !DISubprogram(name: "fclose", scope: !517, file: !517, line: 178, type: !4594, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !998)
!4661 = !DISubprogram(name: "__freading", scope: !2466, file: !2466, line: 51, type: !4594, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !998)
!4662 = distinct !DISubprogram(name: "rpl_fflush", scope: !958, file: !958, line: 130, type: !4663, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !957, retainedNodes: !4699)
!4663 = !DISubroutineType(types: !4664)
!4664 = !{!86, !4665}
!4665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4666, size: 64)
!4666 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !290, line: 7, baseType: !4667)
!4667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !292, line: 49, size: 1728, elements: !4668)
!4668 = !{!4669, !4670, !4671, !4672, !4673, !4674, !4675, !4676, !4677, !4678, !4679, !4680, !4681, !4682, !4684, !4685, !4686, !4687, !4688, !4689, !4690, !4691, !4692, !4693, !4694, !4695, !4696, !4697, !4698}
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4667, file: !292, line: 51, baseType: !86, size: 32)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4667, file: !292, line: 54, baseType: !88, size: 64, offset: 64)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4667, file: !292, line: 55, baseType: !88, size: 64, offset: 128)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4667, file: !292, line: 56, baseType: !88, size: 64, offset: 192)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4667, file: !292, line: 57, baseType: !88, size: 64, offset: 256)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4667, file: !292, line: 58, baseType: !88, size: 64, offset: 320)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4667, file: !292, line: 59, baseType: !88, size: 64, offset: 384)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4667, file: !292, line: 60, baseType: !88, size: 64, offset: 448)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4667, file: !292, line: 61, baseType: !88, size: 64, offset: 512)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4667, file: !292, line: 64, baseType: !88, size: 64, offset: 576)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4667, file: !292, line: 65, baseType: !88, size: 64, offset: 640)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4667, file: !292, line: 66, baseType: !88, size: 64, offset: 704)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4667, file: !292, line: 68, baseType: !307, size: 64, offset: 768)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4667, file: !292, line: 70, baseType: !4683, size: 64, offset: 832)
!4683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4667, size: 64)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4667, file: !292, line: 72, baseType: !86, size: 32, offset: 896)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4667, file: !292, line: 73, baseType: !86, size: 32, offset: 928)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4667, file: !292, line: 74, baseType: !314, size: 64, offset: 960)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4667, file: !292, line: 77, baseType: !148, size: 16, offset: 1024)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4667, file: !292, line: 78, baseType: !318, size: 8, offset: 1040)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4667, file: !292, line: 79, baseType: !199, size: 8, offset: 1048)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4667, file: !292, line: 81, baseType: !321, size: 64, offset: 1088)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4667, file: !292, line: 89, baseType: !324, size: 64, offset: 1152)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4667, file: !292, line: 91, baseType: !326, size: 64, offset: 1216)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4667, file: !292, line: 92, baseType: !329, size: 64, offset: 1280)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4667, file: !292, line: 93, baseType: !4683, size: 64, offset: 1344)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4667, file: !292, line: 94, baseType: !144, size: 64, offset: 1408)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4667, file: !292, line: 95, baseType: !149, size: 64, offset: 1472)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4667, file: !292, line: 96, baseType: !86, size: 32, offset: 1536)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4667, file: !292, line: 98, baseType: !228, size: 160, offset: 1568)
!4699 = !{!4700}
!4700 = !DILocalVariable(name: "stream", arg: 1, scope: !4662, file: !958, line: 130, type: !4665)
!4701 = !DILocation(line: 0, scope: !4662)
!4702 = !DILocation(line: 151, column: 14, scope: !4703)
!4703 = distinct !DILexicalBlock(scope: !4662, file: !958, line: 151, column: 7)
!4704 = !DILocation(line: 151, column: 22, scope: !4703)
!4705 = !DILocation(line: 151, column: 27, scope: !4703)
!4706 = !DILocation(line: 151, column: 7, scope: !4662)
!4707 = !DILocation(line: 152, column: 12, scope: !4703)
!4708 = !DILocation(line: 152, column: 5, scope: !4703)
!4709 = !DILocalVariable(name: "fp", arg: 1, scope: !4710, file: !958, line: 42, type: !4665)
!4710 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !958, file: !958, line: 42, type: !4711, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !957, retainedNodes: !4713)
!4711 = !DISubroutineType(types: !4712)
!4712 = !{null, !4665}
!4713 = !{!4709}
!4714 = !DILocation(line: 0, scope: !4710, inlinedAt: !4715)
!4715 = distinct !DILocation(line: 157, column: 3, scope: !4662)
!4716 = !DILocation(line: 44, column: 12, scope: !4717, inlinedAt: !4715)
!4717 = distinct !DILexicalBlock(scope: !4710, file: !958, line: 44, column: 7)
!4718 = !DILocation(line: 44, column: 19, scope: !4717, inlinedAt: !4715)
!4719 = !DILocation(line: 44, column: 7, scope: !4710, inlinedAt: !4715)
!4720 = !DILocation(line: 46, column: 5, scope: !4717, inlinedAt: !4715)
!4721 = !DILocation(line: 159, column: 10, scope: !4662)
!4722 = !DILocation(line: 159, column: 3, scope: !4662)
!4723 = !DILocation(line: 236, column: 1, scope: !4662)
!4724 = !DISubprogram(name: "fflush", scope: !517, file: !517, line: 230, type: !4663, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !998)
!4725 = distinct !DISubprogram(name: "rpl_fseeko", scope: !960, file: !960, line: 28, type: !4726, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !959, retainedNodes: !4762)
!4726 = !DISubroutineType(types: !4727)
!4727 = !{!86, !4728, !516, !86}
!4728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4729, size: 64)
!4729 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !290, line: 7, baseType: !4730)
!4730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !292, line: 49, size: 1728, elements: !4731)
!4731 = !{!4732, !4733, !4734, !4735, !4736, !4737, !4738, !4739, !4740, !4741, !4742, !4743, !4744, !4745, !4747, !4748, !4749, !4750, !4751, !4752, !4753, !4754, !4755, !4756, !4757, !4758, !4759, !4760, !4761}
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4730, file: !292, line: 51, baseType: !86, size: 32)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4730, file: !292, line: 54, baseType: !88, size: 64, offset: 64)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4730, file: !292, line: 55, baseType: !88, size: 64, offset: 128)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4730, file: !292, line: 56, baseType: !88, size: 64, offset: 192)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4730, file: !292, line: 57, baseType: !88, size: 64, offset: 256)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4730, file: !292, line: 58, baseType: !88, size: 64, offset: 320)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4730, file: !292, line: 59, baseType: !88, size: 64, offset: 384)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4730, file: !292, line: 60, baseType: !88, size: 64, offset: 448)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4730, file: !292, line: 61, baseType: !88, size: 64, offset: 512)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4730, file: !292, line: 64, baseType: !88, size: 64, offset: 576)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4730, file: !292, line: 65, baseType: !88, size: 64, offset: 640)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4730, file: !292, line: 66, baseType: !88, size: 64, offset: 704)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4730, file: !292, line: 68, baseType: !307, size: 64, offset: 768)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4730, file: !292, line: 70, baseType: !4746, size: 64, offset: 832)
!4746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4730, size: 64)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4730, file: !292, line: 72, baseType: !86, size: 32, offset: 896)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4730, file: !292, line: 73, baseType: !86, size: 32, offset: 928)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4730, file: !292, line: 74, baseType: !314, size: 64, offset: 960)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4730, file: !292, line: 77, baseType: !148, size: 16, offset: 1024)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4730, file: !292, line: 78, baseType: !318, size: 8, offset: 1040)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4730, file: !292, line: 79, baseType: !199, size: 8, offset: 1048)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4730, file: !292, line: 81, baseType: !321, size: 64, offset: 1088)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4730, file: !292, line: 89, baseType: !324, size: 64, offset: 1152)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4730, file: !292, line: 91, baseType: !326, size: 64, offset: 1216)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4730, file: !292, line: 92, baseType: !329, size: 64, offset: 1280)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4730, file: !292, line: 93, baseType: !4746, size: 64, offset: 1344)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4730, file: !292, line: 94, baseType: !144, size: 64, offset: 1408)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4730, file: !292, line: 95, baseType: !149, size: 64, offset: 1472)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4730, file: !292, line: 96, baseType: !86, size: 32, offset: 1536)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4730, file: !292, line: 98, baseType: !228, size: 160, offset: 1568)
!4762 = !{!4763, !4764, !4765, !4766}
!4763 = !DILocalVariable(name: "fp", arg: 1, scope: !4725, file: !960, line: 28, type: !4728)
!4764 = !DILocalVariable(name: "offset", arg: 2, scope: !4725, file: !960, line: 28, type: !516)
!4765 = !DILocalVariable(name: "whence", arg: 3, scope: !4725, file: !960, line: 28, type: !86)
!4766 = !DILocalVariable(name: "pos", scope: !4767, file: !960, line: 123, type: !516)
!4767 = distinct !DILexicalBlock(scope: !4768, file: !960, line: 119, column: 5)
!4768 = distinct !DILexicalBlock(scope: !4725, file: !960, line: 55, column: 7)
!4769 = !DILocation(line: 0, scope: !4725)
!4770 = !DILocation(line: 55, column: 12, scope: !4768)
!4771 = !{!2169, !990, i64 16}
!4772 = !DILocation(line: 55, column: 33, scope: !4768)
!4773 = !{!2169, !990, i64 8}
!4774 = !DILocation(line: 55, column: 25, scope: !4768)
!4775 = !DILocation(line: 56, column: 7, scope: !4768)
!4776 = !DILocation(line: 56, column: 15, scope: !4768)
!4777 = !DILocation(line: 56, column: 37, scope: !4768)
!4778 = !{!2169, !990, i64 32}
!4779 = !DILocation(line: 56, column: 29, scope: !4768)
!4780 = !DILocation(line: 57, column: 7, scope: !4768)
!4781 = !DILocation(line: 57, column: 15, scope: !4768)
!4782 = !{!2169, !990, i64 72}
!4783 = !DILocation(line: 57, column: 29, scope: !4768)
!4784 = !DILocation(line: 55, column: 7, scope: !4725)
!4785 = !DILocation(line: 123, column: 26, scope: !4767)
!4786 = !DILocation(line: 123, column: 19, scope: !4767)
!4787 = !DILocation(line: 0, scope: !4767)
!4788 = !DILocation(line: 124, column: 15, scope: !4789)
!4789 = distinct !DILexicalBlock(scope: !4767, file: !960, line: 124, column: 11)
!4790 = !DILocation(line: 124, column: 11, scope: !4767)
!4791 = !DILocation(line: 135, column: 19, scope: !4767)
!4792 = !DILocation(line: 136, column: 12, scope: !4767)
!4793 = !DILocation(line: 136, column: 20, scope: !4767)
!4794 = !{!2169, !1262, i64 144}
!4795 = !DILocation(line: 167, column: 7, scope: !4767)
!4796 = !DILocation(line: 169, column: 10, scope: !4725)
!4797 = !DILocation(line: 169, column: 3, scope: !4725)
!4798 = !DILocation(line: 170, column: 1, scope: !4725)
!4799 = !DISubprogram(name: "fseeko", scope: !517, file: !517, line: 736, type: !4800, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !998)
!4800 = !DISubroutineType(types: !4801)
!4801 = !{!86, !4728, !314, !86}
!4802 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !874, file: !874, line: 100, type: !4803, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4806)
!4803 = !DISubroutineType(types: !4804)
!4804 = !{!149, !2574, !151, !149, !4805}
!4805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!4806 = !{!4807, !4808, !4809, !4810, !4811}
!4807 = !DILocalVariable(name: "pwc", arg: 1, scope: !4802, file: !874, line: 100, type: !2574)
!4808 = !DILocalVariable(name: "s", arg: 2, scope: !4802, file: !874, line: 100, type: !151)
!4809 = !DILocalVariable(name: "n", arg: 3, scope: !4802, file: !874, line: 100, type: !149)
!4810 = !DILocalVariable(name: "ps", arg: 4, scope: !4802, file: !874, line: 100, type: !4805)
!4811 = !DILocalVariable(name: "ret", scope: !4802, file: !874, line: 130, type: !149)
!4812 = !DILocation(line: 0, scope: !4802)
!4813 = !DILocation(line: 105, column: 9, scope: !4814)
!4814 = distinct !DILexicalBlock(scope: !4802, file: !874, line: 105, column: 7)
!4815 = !DILocation(line: 105, column: 7, scope: !4802)
!4816 = !DILocation(line: 117, column: 10, scope: !4817)
!4817 = distinct !DILexicalBlock(scope: !4802, file: !874, line: 117, column: 7)
!4818 = !DILocation(line: 117, column: 7, scope: !4802)
!4819 = !DILocation(line: 130, column: 16, scope: !4802)
!4820 = !DILocation(line: 135, column: 11, scope: !4821)
!4821 = distinct !DILexicalBlock(scope: !4802, file: !874, line: 135, column: 7)
!4822 = !DILocation(line: 135, column: 25, scope: !4821)
!4823 = !DILocation(line: 135, column: 30, scope: !4821)
!4824 = !DILocation(line: 135, column: 7, scope: !4802)
!4825 = !DILocalVariable(name: "ps", arg: 1, scope: !4826, file: !2548, line: 1135, type: !4805)
!4826 = distinct !DISubprogram(name: "mbszero", scope: !2548, file: !2548, line: 1135, type: !4827, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4829)
!4827 = !DISubroutineType(types: !4828)
!4828 = !{null, !4805}
!4829 = !{!4825}
!4830 = !DILocation(line: 0, scope: !4826, inlinedAt: !4831)
!4831 = distinct !DILocation(line: 137, column: 5, scope: !4821)
!4832 = !DILocalVariable(name: "__dest", arg: 1, scope: !4833, file: !1530, line: 57, type: !144)
!4833 = distinct !DISubprogram(name: "memset", scope: !1530, file: !1530, line: 57, type: !2557, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4834)
!4834 = !{!4832, !4835, !4836}
!4835 = !DILocalVariable(name: "__ch", arg: 2, scope: !4833, file: !1530, line: 57, type: !86)
!4836 = !DILocalVariable(name: "__len", arg: 3, scope: !4833, file: !1530, line: 57, type: !149)
!4837 = !DILocation(line: 0, scope: !4833, inlinedAt: !4838)
!4838 = distinct !DILocation(line: 1137, column: 3, scope: !4826, inlinedAt: !4831)
!4839 = !DILocation(line: 59, column: 10, scope: !4833, inlinedAt: !4838)
!4840 = !DILocation(line: 137, column: 5, scope: !4821)
!4841 = !DILocation(line: 138, column: 11, scope: !4842)
!4842 = distinct !DILexicalBlock(scope: !4802, file: !874, line: 138, column: 7)
!4843 = !DILocation(line: 138, column: 7, scope: !4802)
!4844 = !DILocation(line: 139, column: 5, scope: !4842)
!4845 = !DILocation(line: 143, column: 26, scope: !4846)
!4846 = distinct !DILexicalBlock(scope: !4802, file: !874, line: 143, column: 7)
!4847 = !DILocation(line: 143, column: 41, scope: !4846)
!4848 = !DILocation(line: 143, column: 7, scope: !4802)
!4849 = !DILocation(line: 145, column: 15, scope: !4850)
!4850 = distinct !DILexicalBlock(scope: !4851, file: !874, line: 145, column: 11)
!4851 = distinct !DILexicalBlock(scope: !4846, file: !874, line: 144, column: 5)
!4852 = !DILocation(line: 145, column: 11, scope: !4851)
!4853 = !DILocation(line: 146, column: 32, scope: !4850)
!4854 = !DILocation(line: 146, column: 16, scope: !4850)
!4855 = !DILocation(line: 146, column: 14, scope: !4850)
!4856 = !DILocation(line: 146, column: 9, scope: !4850)
!4857 = !DILocation(line: 286, column: 1, scope: !4802)
!4858 = !DISubprogram(name: "mbsinit", scope: !4859, file: !4859, line: 293, type: !4860, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !998)
!4859 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4860 = !DISubroutineType(types: !4861)
!4861 = !{!86, !4862}
!4862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4863, size: 64)
!4863 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !880)
!4864 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !962, file: !962, line: 27, type: !4084, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !4865)
!4865 = !{!4866, !4867, !4868, !4869}
!4866 = !DILocalVariable(name: "ptr", arg: 1, scope: !4864, file: !962, line: 27, type: !144)
!4867 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4864, file: !962, line: 27, type: !149)
!4868 = !DILocalVariable(name: "size", arg: 3, scope: !4864, file: !962, line: 27, type: !149)
!4869 = !DILocalVariable(name: "nbytes", scope: !4864, file: !962, line: 29, type: !149)
!4870 = !DILocation(line: 0, scope: !4864)
!4871 = !DILocation(line: 30, column: 7, scope: !4872)
!4872 = distinct !DILexicalBlock(scope: !4864, file: !962, line: 30, column: 7)
!4873 = !DILocalVariable(name: "ptr", arg: 1, scope: !4874, file: !4176, line: 2057, type: !144)
!4874 = distinct !DISubprogram(name: "rpl_realloc", scope: !4176, file: !4176, line: 2057, type: !4168, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !4875)
!4875 = !{!4873, !4876}
!4876 = !DILocalVariable(name: "size", arg: 2, scope: !4874, file: !4176, line: 2057, type: !149)
!4877 = !DILocation(line: 0, scope: !4874, inlinedAt: !4878)
!4878 = distinct !DILocation(line: 37, column: 10, scope: !4864)
!4879 = !DILocation(line: 2059, column: 24, scope: !4874, inlinedAt: !4878)
!4880 = !DILocation(line: 2059, column: 10, scope: !4874, inlinedAt: !4878)
!4881 = !DILocation(line: 37, column: 3, scope: !4864)
!4882 = !DILocation(line: 32, column: 7, scope: !4883)
!4883 = distinct !DILexicalBlock(scope: !4872, file: !962, line: 31, column: 5)
!4884 = !DILocation(line: 32, column: 13, scope: !4883)
!4885 = !DILocation(line: 33, column: 7, scope: !4883)
!4886 = !DILocation(line: 38, column: 1, scope: !4864)
!4887 = distinct !DISubprogram(name: "hard_locale", scope: !892, file: !892, line: 28, type: !4888, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !964, retainedNodes: !4890)
!4888 = !DISubroutineType(types: !4889)
!4889 = !{!145, !86}
!4890 = !{!4891, !4892}
!4891 = !DILocalVariable(name: "category", arg: 1, scope: !4887, file: !892, line: 28, type: !86)
!4892 = !DILocalVariable(name: "locale", scope: !4887, file: !892, line: 30, type: !4893)
!4893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4894)
!4894 = !{!4895}
!4895 = !DISubrange(count: 257)
!4896 = !DILocation(line: 0, scope: !4887)
!4897 = !DILocation(line: 30, column: 3, scope: !4887)
!4898 = !DILocation(line: 30, column: 8, scope: !4887)
!4899 = !DILocation(line: 32, column: 7, scope: !4900)
!4900 = distinct !DILexicalBlock(scope: !4887, file: !892, line: 32, column: 7)
!4901 = !DILocation(line: 32, column: 7, scope: !4887)
!4902 = !DILocalVariable(name: "__s1", arg: 1, scope: !4903, file: !1076, line: 1359, type: !151)
!4903 = distinct !DISubprogram(name: "streq", scope: !1076, file: !1076, line: 1359, type: !1077, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !964, retainedNodes: !4904)
!4904 = !{!4902, !4905}
!4905 = !DILocalVariable(name: "__s2", arg: 2, scope: !4903, file: !1076, line: 1359, type: !151)
!4906 = !DILocation(line: 0, scope: !4903, inlinedAt: !4907)
!4907 = distinct !DILocation(line: 35, column: 9, scope: !4908)
!4908 = distinct !DILexicalBlock(scope: !4887, file: !892, line: 35, column: 7)
!4909 = !DILocation(line: 1361, column: 11, scope: !4903, inlinedAt: !4907)
!4910 = !DILocation(line: 1361, column: 10, scope: !4903, inlinedAt: !4907)
!4911 = !DILocation(line: 35, column: 29, scope: !4908)
!4912 = !DILocation(line: 0, scope: !4903, inlinedAt: !4913)
!4913 = distinct !DILocation(line: 35, column: 32, scope: !4908)
!4914 = !DILocation(line: 1361, column: 11, scope: !4903, inlinedAt: !4913)
!4915 = !DILocation(line: 1361, column: 10, scope: !4903, inlinedAt: !4913)
!4916 = !DILocation(line: 35, column: 7, scope: !4887)
!4917 = !DILocation(line: 46, column: 3, scope: !4887)
!4918 = !DILocation(line: 47, column: 1, scope: !4887)
!4919 = distinct !DISubprogram(name: "setlocale_null_r", scope: !967, file: !967, line: 154, type: !4920, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !966, retainedNodes: !4922)
!4920 = !DISubroutineType(types: !4921)
!4921 = !{!86, !86, !88, !149}
!4922 = !{!4923, !4924, !4925}
!4923 = !DILocalVariable(name: "category", arg: 1, scope: !4919, file: !967, line: 154, type: !86)
!4924 = !DILocalVariable(name: "buf", arg: 2, scope: !4919, file: !967, line: 154, type: !88)
!4925 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4919, file: !967, line: 154, type: !149)
!4926 = !DILocation(line: 0, scope: !4919)
!4927 = !DILocation(line: 159, column: 10, scope: !4919)
!4928 = !DILocation(line: 159, column: 3, scope: !4919)
!4929 = distinct !DISubprogram(name: "setlocale_null", scope: !967, file: !967, line: 186, type: !4930, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !966, retainedNodes: !4932)
!4930 = !DISubroutineType(types: !4931)
!4931 = !{!151, !86}
!4932 = !{!4933}
!4933 = !DILocalVariable(name: "category", arg: 1, scope: !4929, file: !967, line: 186, type: !86)
!4934 = !DILocation(line: 0, scope: !4929)
!4935 = !DILocation(line: 189, column: 10, scope: !4929)
!4936 = !DILocation(line: 189, column: 3, scope: !4929)
!4937 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !969, file: !969, line: 35, type: !4930, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !968, retainedNodes: !4938)
!4938 = !{!4939, !4940}
!4939 = !DILocalVariable(name: "category", arg: 1, scope: !4937, file: !969, line: 35, type: !86)
!4940 = !DILocalVariable(name: "result", scope: !4937, file: !969, line: 37, type: !151)
!4941 = !DILocation(line: 0, scope: !4937)
!4942 = !DILocation(line: 37, column: 24, scope: !4937)
!4943 = !DILocation(line: 62, column: 3, scope: !4937)
!4944 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !969, file: !969, line: 66, type: !4920, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !968, retainedNodes: !4945)
!4945 = !{!4946, !4947, !4948, !4949, !4950}
!4946 = !DILocalVariable(name: "category", arg: 1, scope: !4944, file: !969, line: 66, type: !86)
!4947 = !DILocalVariable(name: "buf", arg: 2, scope: !4944, file: !969, line: 66, type: !88)
!4948 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4944, file: !969, line: 66, type: !149)
!4949 = !DILocalVariable(name: "result", scope: !4944, file: !969, line: 111, type: !151)
!4950 = !DILocalVariable(name: "length", scope: !4951, file: !969, line: 125, type: !149)
!4951 = distinct !DILexicalBlock(scope: !4952, file: !969, line: 124, column: 5)
!4952 = distinct !DILexicalBlock(scope: !4944, file: !969, line: 113, column: 7)
!4953 = !DILocation(line: 0, scope: !4944)
!4954 = !DILocation(line: 0, scope: !4937, inlinedAt: !4955)
!4955 = distinct !DILocation(line: 111, column: 24, scope: !4944)
!4956 = !DILocation(line: 37, column: 24, scope: !4937, inlinedAt: !4955)
!4957 = !DILocation(line: 113, column: 14, scope: !4952)
!4958 = !DILocation(line: 113, column: 7, scope: !4944)
!4959 = !DILocation(line: 116, column: 19, scope: !4960)
!4960 = distinct !DILexicalBlock(scope: !4961, file: !969, line: 116, column: 11)
!4961 = distinct !DILexicalBlock(scope: !4952, file: !969, line: 114, column: 5)
!4962 = !DILocation(line: 116, column: 11, scope: !4961)
!4963 = !DILocation(line: 120, column: 16, scope: !4960)
!4964 = !DILocation(line: 120, column: 9, scope: !4960)
!4965 = !DILocation(line: 125, column: 23, scope: !4951)
!4966 = !DILocation(line: 0, scope: !4951)
!4967 = !DILocation(line: 126, column: 18, scope: !4968)
!4968 = distinct !DILexicalBlock(scope: !4951, file: !969, line: 126, column: 11)
!4969 = !DILocation(line: 126, column: 11, scope: !4951)
!4970 = !DILocation(line: 128, column: 39, scope: !4971)
!4971 = distinct !DILexicalBlock(scope: !4968, file: !969, line: 127, column: 9)
!4972 = !DILocalVariable(name: "__dest", arg: 1, scope: !4973, file: !1530, line: 26, type: !4440)
!4973 = distinct !DISubprogram(name: "memcpy", scope: !1530, file: !1530, line: 26, type: !4438, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !968, retainedNodes: !4974)
!4974 = !{!4972, !4975, !4976}
!4975 = !DILocalVariable(name: "__src", arg: 2, scope: !4973, file: !1530, line: 26, type: !1207)
!4976 = !DILocalVariable(name: "__len", arg: 3, scope: !4973, file: !1530, line: 26, type: !149)
!4977 = !DILocation(line: 0, scope: !4973, inlinedAt: !4978)
!4978 = distinct !DILocation(line: 128, column: 11, scope: !4971)
!4979 = !DILocation(line: 29, column: 10, scope: !4973, inlinedAt: !4978)
!4980 = !DILocation(line: 129, column: 11, scope: !4971)
!4981 = !DILocation(line: 133, column: 23, scope: !4982)
!4982 = distinct !DILexicalBlock(scope: !4983, file: !969, line: 133, column: 15)
!4983 = distinct !DILexicalBlock(scope: !4968, file: !969, line: 132, column: 9)
!4984 = !DILocation(line: 133, column: 15, scope: !4983)
!4985 = !DILocation(line: 138, column: 44, scope: !4986)
!4986 = distinct !DILexicalBlock(scope: !4982, file: !969, line: 134, column: 13)
!4987 = !DILocation(line: 0, scope: !4973, inlinedAt: !4988)
!4988 = distinct !DILocation(line: 138, column: 15, scope: !4986)
!4989 = !DILocation(line: 29, column: 10, scope: !4973, inlinedAt: !4988)
!4990 = !DILocation(line: 139, column: 15, scope: !4986)
!4991 = !DILocation(line: 139, column: 32, scope: !4986)
!4992 = !DILocation(line: 140, column: 13, scope: !4986)
!4993 = !DILocation(line: 0, scope: !4952)
!4994 = !DILocation(line: 145, column: 1, scope: !4944)
