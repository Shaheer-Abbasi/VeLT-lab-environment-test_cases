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
@.str.17 = private unnamed_addr constant [16 x i8] c"number-nonblank\00", align 1, !dbg !153
@.str.18 = private unnamed_addr constant [7 x i8] c"number\00", align 1, !dbg !158
@.str.19 = private unnamed_addr constant [14 x i8] c"squeeze-blank\00", align 1, !dbg !163
@.str.20 = private unnamed_addr constant [17 x i8] c"show-nonprinting\00", align 1, !dbg !168
@.str.21 = private unnamed_addr constant [10 x i8] c"show-ends\00", align 1, !dbg !173
@.str.22 = private unnamed_addr constant [10 x i8] c"show-tabs\00", align 1, !dbg !178
@.str.23 = private unnamed_addr constant [9 x i8] c"show-all\00", align 1, !dbg !180
@.str.24 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !185
@.str.25 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !190
@.str.26 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !195
@.str.27 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !200
@.str.28 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !202
@.str.29 = private unnamed_addr constant [11 x i8] c"benstuvAET\00", align 1, !dbg !207
@.str.30 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !212
@.str.31 = private unnamed_addr constant [18 x i8] c"Torbjorn Granlund\00", align 1, !dbg !214
@.str.32 = private unnamed_addr constant [19 x i8] c"Torbj\C3\B6rn Granlund\00", align 1, !dbg !219
@.str.33 = private unnamed_addr constant [20 x i8] c"Richard M. Stallman\00", align 1, !dbg !224
@.str.34 = private unnamed_addr constant [16 x i8] c"standard output\00", align 1, !dbg !229
@.str.35 = private unnamed_addr constant [2 x i8] c"-\00", align 1, !dbg !231
@infile = internal unnamed_addr global ptr null, align 8, !dbg !253
@optind = external local_unnamed_addr global i32, align 4
@input_desc = internal unnamed_addr global i32 0, align 4, !dbg !255
@.str.36 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !236
@.str.37 = private unnamed_addr constant [30 x i8] c"%s: input file is output file\00", align 1, !dbg !241
@pending_cr = internal unnamed_addr global i1 false, align 1, !dbg !540
@.str.38 = private unnamed_addr constant [2 x i8] c"\0D\00", align 1, !dbg !246
@.str.39 = private unnamed_addr constant [23 x i8] c"closing standard input\00", align 1, !dbg !248
@.str.40 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1, !dbg !257
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !262
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
@.str.45 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !541
@Version = dso_local local_unnamed_addr global ptr @.str.45, align 8, !dbg !544
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !548
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !561
@.str.48 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !553
@.str.1.49 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !555
@.str.2.50 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !557
@.str.3.51 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !559
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !563
@stderr = external local_unnamed_addr global ptr, align 8
@.str.54 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !569
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !604
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !571
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !714
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !728
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !766
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !773
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !730
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !775
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !718
@.str.10.95 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !735
@.str.11.93 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !737
@.str.12.96 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !739
@.str.13.94 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !741
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !743
@.str.105 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !779
@.str.1.106 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !782
@.str.2.107 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !784
@.str.3.108 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !786
@.str.4.109 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !788
@.str.5.110 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !790
@.str.6.111 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !795
@.str.7.112 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !800
@.str.8.113 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !802
@.str.9.114 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !804
@.str.10.115 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !809
@.str.11.116 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !814
@.str.12.117 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !819
@.str.13.118 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !821
@.str.14.119 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !826
@.str.15.120 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !831
@.str.16.121 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !833
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.126 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !838
@.str.18.127 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !840
@.str.19.128 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !842
@.str.20.129 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !844
@.str.21.130 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !846
@.str.22.131 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !848
@.str.23.132 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !850
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !855
@exit_failure = dso_local global i32 1, align 4, !dbg !861
@.str.147 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !867
@.str.1.145 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !870
@.str.2.146 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !872
@.str.158 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !874
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !877
@.str.163 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !892
@.str.1.164 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !895

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !986 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !990, metadata !DIExpression()), !dbg !991
  %2 = icmp eq i32 %0, 0, !dbg !992
  br i1 %2, label %8, label %3, !dbg !994

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !995, !tbaa !997
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #41, !dbg !995
  %6 = load ptr, ptr @program_name, align 8, !dbg !995, !tbaa !997
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #41, !dbg !995
  br label %47, !dbg !995

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #41, !dbg !1001
  %10 = load ptr, ptr @program_name, align 8, !dbg !1001, !tbaa !997
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #41, !dbg !1001
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #41, !dbg !1003
  %13 = load ptr, ptr @stdout, align 8, !dbg !1003, !tbaa !997
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !1003
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.40, i32 noundef 5) #41, !dbg !1004
  %16 = load ptr, ptr @stdout, align 8, !dbg !1004, !tbaa !997
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !1004
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #41, !dbg !1007
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !1007
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #41, !dbg !1008
  tail call fastcc void @oputs_(ptr noundef %19), !dbg !1008
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #41, !dbg !1009
  tail call fastcc void @oputs_(ptr noundef %20), !dbg !1009
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #41, !dbg !1010
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !1010
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #41, !dbg !1011
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !1011
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #41, !dbg !1012
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !1012
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #41, !dbg !1013
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !1013
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #41, !dbg !1014
  tail call fastcc void @oputs_(ptr noundef %25), !dbg !1014
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #41, !dbg !1015
  tail call fastcc void @oputs_(ptr noundef %26), !dbg !1015
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #41, !dbg !1016
  tail call fastcc void @oputs_(ptr noundef %27), !dbg !1016
  %28 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #41, !dbg !1017
  tail call fastcc void @oputs_(ptr noundef %28), !dbg !1017
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #41, !dbg !1018
  tail call fastcc void @oputs_(ptr noundef %29), !dbg !1018
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #41, !dbg !1019
  %31 = load ptr, ptr @program_name, align 8, !dbg !1019, !tbaa !997
  %32 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %31) #41, !dbg !1019
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1020, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata !1039, metadata !1033, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata ptr poison, metadata !1032, metadata !DIExpression()), !dbg !1037
  tail call void @emit_bug_reporting_address() #41, !dbg !1040
  %33 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #41, !dbg !1041
  call void @llvm.dbg.value(metadata ptr %33, metadata !1035, metadata !DIExpression()), !dbg !1037
  %34 = icmp eq ptr %33, null, !dbg !1042
  br i1 %34, label %42, label %35, !dbg !1044

35:                                               ; preds = %8
  %36 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %33, ptr noundef nonnull dereferenceable(4) @.str.71, i64 noundef 3) #42, !dbg !1045
  %37 = icmp eq i32 %36, 0, !dbg !1045
  br i1 %37, label %42, label %38, !dbg !1046

38:                                               ; preds = %35
  %39 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.72, i32 noundef 5) #41, !dbg !1047
  %40 = load ptr, ptr @stdout, align 8, !dbg !1047, !tbaa !997
  %41 = tail call i32 @fputs_unlocked(ptr noundef %39, ptr noundef %40), !dbg !1047
  br label %42, !dbg !1049

42:                                               ; preds = %8, %35, %38
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1032, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1036, metadata !DIExpression()), !dbg !1037
  %43 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.73, i32 noundef 5) #41, !dbg !1050
  %44 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %43, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.3) #41, !dbg !1050
  %45 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.74, i32 noundef 5) #41, !dbg !1051
  %46 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %45, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.75) #41, !dbg !1051
  br label %47

47:                                               ; preds = %42, %3
  tail call void @exit(i32 noundef %0) #43, !dbg !1052
  unreachable, !dbg !1052
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1053 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1057 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1063 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1066 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !264 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !268, metadata !DIExpression()), !dbg !1069
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !269, metadata !DIExpression()), !dbg !1069
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !1070, !tbaa !1071
  %3 = icmp eq i32 %2, -1, !dbg !1073
  br i1 %3, label %4, label %16, !dbg !1074

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.41) #41, !dbg !1075
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !270, metadata !DIExpression()), !dbg !1076
  %6 = icmp eq ptr %5, null, !dbg !1077
  br i1 %6, label %14, label %7, !dbg !1078

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !1079, !tbaa !1080
  %9 = icmp eq i8 %8, 0, !dbg !1079
  br i1 %9, label %14, label %10, !dbg !1081

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !1082, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata ptr @.str.42, metadata !1088, metadata !DIExpression()), !dbg !1089
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.42) #42, !dbg !1091
  %12 = icmp eq i32 %11, 0, !dbg !1092
  %13 = zext i1 %12 to i32, !dbg !1081
  br label %14, !dbg !1081

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !1093, !tbaa !1071
  br label %16, !dbg !1094

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !1095
  %18 = icmp eq i32 %17, 0, !dbg !1095
  br i1 %18, label %22, label %19, !dbg !1097

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !1098, !tbaa !997
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !1098
  br label %121, !dbg !1100

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !273, metadata !DIExpression()), !dbg !1069
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.43) #42, !dbg !1101
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1102
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !275, metadata !DIExpression()), !dbg !1069
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #42, !dbg !1103
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !276, metadata !DIExpression()), !dbg !1069
  %26 = icmp eq ptr %25, null, !dbg !1104
  br i1 %26, label %53, label %27, !dbg !1105

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1106
  br i1 %28, label %53, label %29, !dbg !1107

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !277, metadata !DIExpression()), !dbg !1108
  tail call void @llvm.dbg.value(metadata i64 0, metadata !281, metadata !DIExpression()), !dbg !1108
  %30 = icmp ult ptr %24, %25, !dbg !1109
  br i1 %30, label %31, label %53, !dbg !1110

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #44, !dbg !1069
  %33 = load ptr, ptr %32, align 8, !tbaa !997
  br label %34, !dbg !1110

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !277, metadata !DIExpression()), !dbg !1108
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !281, metadata !DIExpression()), !dbg !1108
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1111
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !277, metadata !DIExpression()), !dbg !1108
  %38 = load i8, ptr %35, align 1, !dbg !1111, !tbaa !1080
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1111
  %41 = load i16, ptr %40, align 2, !dbg !1111, !tbaa !1112
  %42 = freeze i16 %41, !dbg !1114
  %43 = lshr i16 %42, 13, !dbg !1114
  %44 = and i16 %43, 1, !dbg !1114
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1115
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !281, metadata !DIExpression()), !dbg !1108
  %47 = icmp ult ptr %37, %25, !dbg !1109
  %48 = icmp ult i64 %46, 2, !dbg !1116
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1116
  br i1 %49, label %34, label %50, !dbg !1110, !llvm.loop !1117

50:                                               ; preds = %34
  %.lcssa1 = phi i64 [ %46, %34 ], !dbg !1115
  %51 = icmp ne i64 %.lcssa1, 2, !dbg !1119
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !1121
  br label %53, !dbg !1121

53:                                               ; preds = %50, %29, %22, %27
  %54 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !1069
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %51, %50 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !273, metadata !DIExpression()), !dbg !1069
  tail call void @llvm.dbg.value(metadata ptr %54, metadata !276, metadata !DIExpression()), !dbg !1069
  %56 = tail call i64 @strcspn(ptr noundef %54, ptr noundef nonnull @.str.44) #42, !dbg !1122
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !282, metadata !DIExpression()), !dbg !1069
  %57 = getelementptr inbounds i8, ptr %54, i64 %56, !dbg !1123
  tail call void @llvm.dbg.value(metadata ptr %57, metadata !283, metadata !DIExpression()), !dbg !1069
  br label %58, !dbg !1124

58:                                               ; preds = %89, %53
  %59 = phi ptr [ %57, %53 ], [ %90, %89 ], !dbg !1069
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !273, metadata !DIExpression()), !dbg !1069
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !283, metadata !DIExpression()), !dbg !1069
  %61 = load i8, ptr %59, align 1, !dbg !1125, !tbaa !1080
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !1126

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !1127
  %64 = load i8, ptr %63, align 1, !dbg !1130, !tbaa !1080
  %65 = icmp ne i8 %64, 45, !dbg !1131
  %66 = select i1 %65, i1 %60, i1 false, !dbg !1132
  br label %67, !dbg !1132

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !273, metadata !DIExpression()), !dbg !1069
  %69 = tail call ptr @__ctype_b_loc() #44, !dbg !1133
  %70 = load ptr, ptr %69, align 8, !dbg !1133, !tbaa !997
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, ptr %70, i64 %71, !dbg !1133
  %73 = load i16, ptr %72, align 2, !dbg !1133, !tbaa !1112
  %74 = and i16 %73, 8192, !dbg !1133
  %75 = icmp eq i16 %74, 0, !dbg !1133
  br i1 %75, label %89, label %76, !dbg !1135

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !1136
  br i1 %77, label %91, label %78, !dbg !1139

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !1140
  %80 = load i8, ptr %79, align 1, !dbg !1140, !tbaa !1080
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, ptr %70, i64 %81, !dbg !1140
  %83 = load i16, ptr %82, align 2, !dbg !1140, !tbaa !1112
  %84 = and i16 %83, 8192, !dbg !1140
  %85 = icmp eq i16 %84, 0, !dbg !1140
  %86 = icmp eq i8 %80, 45
  %87 = or i1 %68, %86
  %88 = select i1 %85, i1 %87, i1 false, !dbg !1141
  br i1 %88, label %89, label %91, !dbg !1141

89:                                               ; preds = %78, %67
  %90 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !1142
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !283, metadata !DIExpression()), !dbg !1069
  br label %58, !dbg !1124, !llvm.loop !1143

91:                                               ; preds = %58, %58, %76, %78
  %.lcssa = phi ptr [ %59, %58 ], [ %59, %58 ], [ %59, %76 ], [ %59, %78 ], !dbg !1069
  %92 = ptrtoint ptr %24 to i64, !dbg !1145
  %93 = load ptr, ptr @stdout, align 8, !dbg !1145, !tbaa !997
  %94 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %93), !dbg !1145
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1082, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata !1039, metadata !1088, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1082, metadata !DIExpression()), !dbg !1148
  call void @llvm.dbg.value(metadata !1039, metadata !1088, metadata !DIExpression()), !dbg !1148
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1082, metadata !DIExpression()), !dbg !1150
  call void @llvm.dbg.value(metadata !1039, metadata !1088, metadata !DIExpression()), !dbg !1150
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1082, metadata !DIExpression()), !dbg !1152
  call void @llvm.dbg.value(metadata !1039, metadata !1088, metadata !DIExpression()), !dbg !1152
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1082, metadata !DIExpression()), !dbg !1154
  call void @llvm.dbg.value(metadata !1039, metadata !1088, metadata !DIExpression()), !dbg !1154
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1082, metadata !DIExpression()), !dbg !1156
  call void @llvm.dbg.value(metadata !1039, metadata !1088, metadata !DIExpression()), !dbg !1156
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1082, metadata !DIExpression()), !dbg !1158
  call void @llvm.dbg.value(metadata !1039, metadata !1088, metadata !DIExpression()), !dbg !1158
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1082, metadata !DIExpression()), !dbg !1160
  call void @llvm.dbg.value(metadata !1039, metadata !1088, metadata !DIExpression()), !dbg !1160
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1082, metadata !DIExpression()), !dbg !1162
  call void @llvm.dbg.value(metadata !1039, metadata !1088, metadata !DIExpression()), !dbg !1162
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1082, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata !1039, metadata !1088, metadata !DIExpression()), !dbg !1164
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !337, metadata !DIExpression()), !dbg !1069
  %95 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(7) @.str.58, i64 noundef 6) #42, !dbg !1166
  %96 = icmp eq i32 %95, 0, !dbg !1166
  br i1 %96, label %100, label %97, !dbg !1168

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(10) @.str.59, i64 noundef 9) #42, !dbg !1169
  %99 = icmp eq i32 %98, 0, !dbg !1169
  br i1 %99, label %100, label %103, !dbg !1170

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !1171
  %102 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %101, ptr noundef %54) #41, !dbg !1171
  br label %106, !dbg !1173

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !1174
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %54) #41, !dbg !1174
  br label %106

106:                                              ; preds = %103, %100
  %107 = load ptr, ptr @stdout, align 8, !dbg !1176, !tbaa !997
  %108 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.64, ptr noundef %107), !dbg !1176
  %109 = load ptr, ptr @stdout, align 8, !dbg !1177, !tbaa !997
  %110 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.65, ptr noundef %109), !dbg !1177
  %111 = ptrtoint ptr %.lcssa to i64, !dbg !1178
  %112 = sub i64 %111, %92, !dbg !1178
  %113 = load ptr, ptr @stdout, align 8, !dbg !1178, !tbaa !997
  %114 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %112, ptr noundef %113), !dbg !1178
  %115 = load ptr, ptr @stdout, align 8, !dbg !1179, !tbaa !997
  %116 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.66, ptr noundef %115), !dbg !1179
  %117 = load ptr, ptr @stdout, align 8, !dbg !1180, !tbaa !997
  %118 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.67, ptr noundef %117), !dbg !1180
  %119 = load ptr, ptr @stdout, align 8, !dbg !1181, !tbaa !997
  %120 = tail call i32 @fputs_unlocked(ptr noundef nonnull %.lcssa, ptr noundef %119), !dbg !1181
  br label %121, !dbg !1182

121:                                              ; preds = %106, %19
  ret void, !dbg !1182
}

; Function Attrs: nounwind
declare !dbg !1183 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1187 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1191 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1193 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1196 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1199 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1202 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1205 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1211 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1212 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !83 {
  %3 = alloca i32, align 4, !DIAssignID !1218
  %4 = alloca %struct.stat, align 8, !DIAssignID !1219
  call void @llvm.dbg.assign(metadata i1 undef, metadata !456, metadata !DIExpression(), metadata !1219, metadata ptr %4, metadata !DIExpression()), !dbg !1220
  %5 = alloca %struct.stat, align 8, !DIAssignID !1221
  call void @llvm.dbg.assign(metadata i1 undef, metadata !512, metadata !DIExpression(), metadata !1221, metadata ptr %5, metadata !DIExpression()), !dbg !1222
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !453, metadata !DIExpression()), !dbg !1220
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !454, metadata !DIExpression()), !dbg !1220
  tail call void @llvm.dbg.value(metadata i8 0, metadata !455, metadata !DIExpression()), !dbg !1220
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #41, !dbg !1223
  tail call void @llvm.dbg.value(metadata i8 0, metadata !492, metadata !DIExpression()), !dbg !1220
  tail call void @llvm.dbg.value(metadata i8 0, metadata !493, metadata !DIExpression()), !dbg !1220
  tail call void @llvm.dbg.value(metadata i8 0, metadata !494, metadata !DIExpression()), !dbg !1220
  tail call void @llvm.dbg.value(metadata i8 0, metadata !495, metadata !DIExpression()), !dbg !1220
  tail call void @llvm.dbg.value(metadata i8 0, metadata !496, metadata !DIExpression()), !dbg !1220
  tail call void @llvm.dbg.value(metadata i8 0, metadata !497, metadata !DIExpression()), !dbg !1220
  tail call void @llvm.dbg.value(metadata i32 0, metadata !498, metadata !DIExpression()), !dbg !1220
  %6 = load ptr, ptr %1, align 8, !dbg !1224, !tbaa !997
  tail call void @set_program_name(ptr noundef %6) #41, !dbg !1225
  %7 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.26) #41, !dbg !1226
  %8 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #41, !dbg !1227
  %9 = tail call ptr @textdomain(ptr noundef nonnull @.str.27) #41, !dbg !1228
  %10 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #41, !dbg !1229
  br label %11, !dbg !1230

11:                                               ; preds = %19, %2
  %12 = phi i1 [ false, %2 ], [ %20, %19 ]
  %13 = phi i1 [ false, %2 ], [ %21, %19 ]
  %14 = phi i1 [ false, %2 ], [ %22, %19 ]
  %15 = phi i1 [ false, %2 ], [ %23, %19 ]
  %16 = phi i1 [ false, %2 ], [ %24, %19 ]
  %17 = phi i1 [ false, %2 ], [ %25, %19 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !492, metadata !DIExpression()), !dbg !1220
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !493, metadata !DIExpression()), !dbg !1220
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !494, metadata !DIExpression()), !dbg !1220
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !495, metadata !DIExpression()), !dbg !1220
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !496, metadata !DIExpression()), !dbg !1220
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !497, metadata !DIExpression()), !dbg !1220
  %18 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.29, ptr noundef nonnull @main.long_options, ptr noundef null) #41, !dbg !1231
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !499, metadata !DIExpression()), !dbg !1220
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
  ], !dbg !1230

19:                                               ; preds = %11, %34, %33, %32, %31, %30, %29, %28, %27, %26
  %20 = phi i1 [ true, %34 ], [ %12, %33 ], [ true, %32 ], [ %12, %31 ], [ true, %30 ], [ %12, %29 ], [ %12, %28 ], [ %12, %27 ], [ %12, %26 ], [ %12, %11 ]
  %21 = phi i1 [ %13, %34 ], [ %13, %33 ], [ true, %32 ], [ true, %31 ], [ true, %30 ], [ %13, %29 ], [ %13, %28 ], [ true, %27 ], [ %13, %26 ], [ %13, %11 ]
  %22 = phi i1 [ %14, %34 ], [ true, %33 ], [ true, %32 ], [ %14, %31 ], [ %14, %30 ], [ %14, %29 ], [ %14, %28 ], [ true, %27 ], [ %14, %26 ], [ %14, %11 ]
  %23 = phi i1 [ %15, %34 ], [ %15, %33 ], [ %15, %32 ], [ %15, %31 ], [ %15, %30 ], [ true, %29 ], [ %15, %28 ], [ %15, %27 ], [ %15, %26 ], [ %15, %11 ]
  %24 = phi i1 [ %16, %34 ], [ %16, %33 ], [ %16, %32 ], [ %16, %31 ], [ %16, %30 ], [ %16, %29 ], [ %16, %28 ], [ %16, %27 ], [ true, %26 ], [ %16, %11 ]
  %25 = phi i1 [ %17, %34 ], [ %17, %33 ], [ %17, %32 ], [ %17, %31 ], [ %17, %30 ], [ %17, %29 ], [ true, %28 ], [ %17, %27 ], [ true, %26 ], [ %17, %11 ]
  br label %11, !dbg !1220, !llvm.loop !1232

26:                                               ; preds = %11
  tail call void @llvm.dbg.value(metadata i8 1, metadata !492, metadata !DIExpression()), !dbg !1220
  tail call void @llvm.dbg.value(metadata i8 1, metadata !493, metadata !DIExpression()), !dbg !1220
  br label %19, !dbg !1234

27:                                               ; preds = %11
  tail call void @llvm.dbg.value(metadata i8 1, metadata !495, metadata !DIExpression()), !dbg !1220
  tail call void @llvm.dbg.value(metadata i8 1, metadata !496, metadata !DIExpression()), !dbg !1220
  br label %19, !dbg !1237

28:                                               ; preds = %11
  tail call void @llvm.dbg.value(metadata i8 1, metadata !492, metadata !DIExpression()), !dbg !1220
  br label %19, !dbg !1238

29:                                               ; preds = %11
  tail call void @llvm.dbg.value(metadata i8 1, metadata !494, metadata !DIExpression()), !dbg !1220
  br label %19, !dbg !1239

30:                                               ; preds = %11
  tail call void @llvm.dbg.value(metadata i8 1, metadata !497, metadata !DIExpression()), !dbg !1220
  tail call void @llvm.dbg.value(metadata i8 1, metadata !496, metadata !DIExpression()), !dbg !1220
  br label %19, !dbg !1240

31:                                               ; preds = %11
  tail call void @llvm.dbg.value(metadata i8 1, metadata !496, metadata !DIExpression()), !dbg !1220
  br label %19, !dbg !1241

32:                                               ; preds = %11
  tail call void @llvm.dbg.value(metadata i8 1, metadata !496, metadata !DIExpression()), !dbg !1220
  tail call void @llvm.dbg.value(metadata i8 1, metadata !495, metadata !DIExpression()), !dbg !1220
  tail call void @llvm.dbg.value(metadata i8 1, metadata !497, metadata !DIExpression()), !dbg !1220
  br label %19, !dbg !1242

33:                                               ; preds = %11
  tail call void @llvm.dbg.value(metadata i8 1, metadata !495, metadata !DIExpression()), !dbg !1220
  br label %19, !dbg !1243

34:                                               ; preds = %11
  tail call void @llvm.dbg.value(metadata i8 1, metadata !497, metadata !DIExpression()), !dbg !1220
  br label %19, !dbg !1244

35:                                               ; preds = %11
  tail call void @usage(i32 noundef 0) #45, !dbg !1245
  unreachable, !dbg !1245

36:                                               ; preds = %11
  %37 = load ptr, ptr @stdout, align 8, !dbg !1246, !tbaa !997
  %38 = load ptr, ptr @Version, align 8, !dbg !1246, !tbaa !997
  %39 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32) #41, !dbg !1246
  %40 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.33) #41, !dbg !1246
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %37, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.30, ptr noundef %38, ptr noundef %39, ptr noundef %40, ptr noundef null) #41, !dbg !1246
  tail call void @exit(i32 noundef 0) #43, !dbg !1246
  unreachable, !dbg !1246

41:                                               ; preds = %11
  tail call void @usage(i32 noundef 1) #45, !dbg !1247
  unreachable, !dbg !1247

42:                                               ; preds = %11
  %.lcssa44 = phi i1 [ %12, %11 ]
  %.lcssa40 = phi i1 [ %13, %11 ]
  %.lcssa36 = phi i1 [ %14, %11 ]
  %.lcssa32 = phi i1 [ %15, %11 ]
  %.lcssa28 = phi i1 [ %16, %11 ]
  %.lcssa24 = phi i1 [ %17, %11 ]
  %43 = call i32 @fstat(i32 noundef 1, ptr noundef nonnull %4) #41, !dbg !1248
  %44 = icmp slt i32 %43, 0, !dbg !1250
  br i1 %44, label %45, label %49, !dbg !1251

45:                                               ; preds = %42
  %46 = tail call ptr @__errno_location() #44, !dbg !1252
  %47 = load i32, ptr %46, align 4, !dbg !1252, !tbaa !1071
  %48 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.34, i32 noundef 5) #41, !dbg !1252
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %47, ptr noundef %48) #41, !dbg !1252
  unreachable, !dbg !1252

49:                                               ; preds = %42
  call void @llvm.dbg.value(metadata ptr %4, metadata !1253, metadata !DIExpression()), !dbg !1268
  %50 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 9, !dbg !1270
  %51 = load i32, ptr %50, align 8, !dbg !1270, !tbaa !1271
  %52 = icmp sgt i32 %51, 0, !dbg !1275
  %53 = select i1 %52, i32 %51, i32 512, !dbg !1275
  %54 = zext i32 %53 to i64, !dbg !1275
  call void @llvm.dbg.value(metadata i64 %54, metadata !1260, metadata !DIExpression()), !dbg !1268
  %55 = urem i32 262143, %53, !dbg !1276
  %56 = xor i32 %55, 262143, !dbg !1277
  %57 = zext nneg i32 %56 to i64, !dbg !1277
  %58 = add nuw nsw i64 %54, %57, !dbg !1278
  call void @llvm.dbg.value(metadata i64 %58, metadata !1260, metadata !DIExpression()), !dbg !1268
  %59 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 2, !dbg !1279
  %60 = load i32, ptr %59, align 8, !dbg !1279, !tbaa !1280
  %61 = and i32 %60, 61440, !dbg !1279
  %62 = icmp ne i32 %61, 32768, !dbg !1279
  %63 = tail call i64 @llvm.ctpop.i64(i64 %58), !range !1281
  %64 = icmp ult i64 %63, 2
  %65 = select i1 %62, i1 true, i1 %64, !dbg !1282
  %66 = tail call i64 @llvm.ctlz.i64(i64 %58, i1 true), !dbg !1282, !range !1283
  %67 = sub nuw nsw i64 64, %66, !dbg !1282
  %68 = shl nuw nsw i64 1, %67, !dbg !1282
  %69 = select i1 %65, i64 %58, i64 %68, !dbg !1282
  call void @llvm.dbg.value(metadata i64 %69, metadata !1260, metadata !DIExpression()), !dbg !1268
  %70 = tail call i64 @llvm.smin.i64(i64 %69, i64 2146435072), !dbg !1284
  tail call void @llvm.dbg.value(metadata i64 %70, metadata !500, metadata !DIExpression()), !dbg !1220
  tail call void @llvm.dbg.value(metadata i32 -2, metadata !505, metadata !DIExpression()), !dbg !1220
  %71 = icmp eq i32 %61, 32768, !dbg !1285
  tail call void @llvm.dbg.value(metadata i1 %71, metadata !506, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1220
  %72 = select i1 %.lcssa24, i1 true, i1 %.lcssa36, !dbg !1286
  tail call void @llvm.dbg.value(metadata i32 0, metadata !498, metadata !DIExpression()), !dbg !1220
  store ptr @.str.35, ptr @infile, align 8, !dbg !1288, !tbaa !997
  %73 = load i32, ptr @optind, align 4, !dbg !1289, !tbaa !1071
  tail call void @llvm.dbg.value(metadata i32 %73, metadata !507, metadata !DIExpression()), !dbg !1220
  tail call void @llvm.dbg.value(metadata i8 1, metadata !508, metadata !DIExpression()), !dbg !1220
  %74 = tail call i32 @getpagesize() #44, !dbg !1290
  %75 = sext i32 %74 to i64, !dbg !1290
  tail call void @llvm.dbg.value(metadata i64 %75, metadata !509, metadata !DIExpression()), !dbg !1220
  %76 = getelementptr inbounds %struct.stat, ptr %5, i64 0, i32 9
  %77 = getelementptr inbounds %struct.stat, ptr %5, i64 0, i32 2
  %78 = getelementptr inbounds %struct.stat, ptr %5, i64 0, i32 1
  %79 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 1
  %80 = select i1 %72, i1 true, i1 %.lcssa40
  %81 = select i1 %80, i1 true, i1 %.lcssa44
  %82 = select i1 %81, i1 true, i1 %.lcssa32
  %83 = add nuw nsw i64 %70, 19
  %84 = xor i1 %.lcssa24, true
  %85 = or i1 %.lcssa28, %84
  %86 = sext i32 %73 to i64, !dbg !1291
  %87 = sext i32 %0 to i64, !dbg !1291
  br label %88, !dbg !1291

88:                                               ; preds = %520, %49
  %89 = phi i64 [ %524, %520 ], [ %86, %49 ], !dbg !1292
  %90 = phi i32 [ %521, %520 ], [ -2, %49 ], !dbg !1292
  %91 = phi i1 [ %522, %520 ], [ true, %49 ]
  %92 = phi i1 [ %523, %520 ], [ false, %49 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !455, metadata !DIExpression()), !dbg !1220
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !508, metadata !DIExpression()), !dbg !1220
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !507, metadata !DIExpression()), !dbg !1220
  tail call void @llvm.dbg.value(metadata i32 %90, metadata !505, metadata !DIExpression()), !dbg !1220
  %93 = icmp slt i64 %89, %87, !dbg !1293
  br i1 %93, label %96, label %94, !dbg !1295

94:                                               ; preds = %88
  %95 = load ptr, ptr @infile, align 8, !dbg !1296, !tbaa !997
  br label %99, !dbg !1295

96:                                               ; preds = %88
  %97 = getelementptr inbounds ptr, ptr %1, i64 %89, !dbg !1297
  %98 = load ptr, ptr %97, align 8, !dbg !1297, !tbaa !997
  store ptr %98, ptr @infile, align 8, !dbg !1298, !tbaa !997
  br label %99, !dbg !1299

99:                                               ; preds = %94, %96
  %100 = phi ptr [ %95, %94 ], [ %98, %96 ], !dbg !1296
  call void @llvm.dbg.value(metadata ptr %100, metadata !1082, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.value(metadata ptr @.str.35, metadata !1088, metadata !DIExpression()), !dbg !1300
  %101 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %100, ptr noundef nonnull dereferenceable(2) @.str.35) #42, !dbg !1302
  %102 = icmp eq i32 %101, 0, !dbg !1303
  tail call void @llvm.dbg.value(metadata i1 %102, metadata !510, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1222
  br i1 %102, label %103, label %104, !dbg !1304

103:                                              ; preds = %99
  tail call void @llvm.dbg.value(metadata i8 1, metadata !455, metadata !DIExpression()), !dbg !1220
  store i32 0, ptr @input_desc, align 4, !dbg !1305, !tbaa !1071
  br label %112

104:                                              ; preds = %99
  %105 = call i32 (ptr, i32, ...) @open(ptr noundef %100, i32 noundef 0) #41, !dbg !1308
  store i32 %105, ptr @input_desc, align 4, !dbg !1310, !tbaa !1071
  %106 = icmp slt i32 %105, 0, !dbg !1311
  br i1 %106, label %107, label %112, !dbg !1313

107:                                              ; preds = %104
  %108 = tail call ptr @__errno_location() #44, !dbg !1314
  %109 = load i32, ptr %108, align 4, !dbg !1314, !tbaa !1071
  %110 = load ptr, ptr @infile, align 8, !dbg !1314, !tbaa !997
  %111 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %110) #41, !dbg !1314
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %109, ptr noundef nonnull @.str.36, ptr noundef %111) #41, !dbg !1314
  tail call void @llvm.dbg.value(metadata i8 0, metadata !508, metadata !DIExpression()), !dbg !1220
  br label %520, !dbg !1316

112:                                              ; preds = %103, %104
  %113 = phi i32 [ 0, %103 ], [ %105, %104 ], !dbg !1317
  %114 = phi i1 [ true, %103 ], [ %92, %104 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !455, metadata !DIExpression()), !dbg !1220
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #41, !dbg !1319
  %115 = call i32 @fstat(i32 noundef %113, ptr noundef nonnull %5) #41, !dbg !1320
  %116 = icmp slt i32 %115, 0, !dbg !1321
  br i1 %116, label %117, label %122, !dbg !1322

117:                                              ; preds = %112
  %118 = tail call ptr @__errno_location() #44, !dbg !1323
  %119 = load i32, ptr %118, align 4, !dbg !1323, !tbaa !1071
  %120 = load ptr, ptr @infile, align 8, !dbg !1323, !tbaa !997
  %121 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %120) #41, !dbg !1323
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %119, ptr noundef nonnull @.str.36, ptr noundef %121) #41, !dbg !1323
  tail call void @llvm.dbg.value(metadata i8 0, metadata !508, metadata !DIExpression()), !dbg !1220
  br label %506, !dbg !1325

122:                                              ; preds = %112
  call void @llvm.dbg.value(metadata ptr %5, metadata !1253, metadata !DIExpression()), !dbg !1326
  %123 = load i32, ptr %76, align 8, !dbg !1328, !tbaa !1271
  %124 = icmp sgt i32 %123, 0, !dbg !1329
  %125 = select i1 %124, i32 %123, i32 512, !dbg !1329
  %126 = zext i32 %125 to i64, !dbg !1329
  call void @llvm.dbg.value(metadata i64 %126, metadata !1260, metadata !DIExpression()), !dbg !1326
  %127 = urem i32 262143, %125, !dbg !1330
  %128 = xor i32 %127, 262143, !dbg !1331
  %129 = zext nneg i32 %128 to i64, !dbg !1331
  %130 = add nuw nsw i64 %126, %129, !dbg !1332
  call void @llvm.dbg.value(metadata i64 %130, metadata !1260, metadata !DIExpression()), !dbg !1326
  %131 = load i32, ptr %77, align 8, !dbg !1333, !tbaa !1280
  %132 = and i32 %131, 61440, !dbg !1333
  %133 = icmp ne i32 %132, 32768, !dbg !1333
  %134 = call i64 @llvm.ctpop.i64(i64 %130), !range !1281
  %135 = icmp ult i64 %134, 2
  %136 = select i1 %133, i1 true, i1 %135, !dbg !1334
  %137 = call i64 @llvm.ctlz.i64(i64 %130, i1 true), !dbg !1334, !range !1283
  %138 = sub nuw nsw i64 64, %137, !dbg !1334
  %139 = shl nuw nsw i64 1, %138, !dbg !1334
  %140 = select i1 %136, i64 %130, i64 %139, !dbg !1334
  call void @llvm.dbg.value(metadata i64 %140, metadata !1260, metadata !DIExpression()), !dbg !1326
  %141 = call i64 @llvm.smin.i64(i64 %140, i64 2146435072), !dbg !1335
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !513, metadata !DIExpression()), !dbg !1222
  %142 = load i32, ptr @input_desc, align 4, !dbg !1336, !tbaa !1071
  call void @fdadvise(i32 noundef %142, i64 noundef 0, i64 noundef 0, i32 noundef 2) #41, !dbg !1337
  %143 = trunc i32 %132 to i16, !dbg !1338
  switch i16 %143, label %144 [
    i16 4096, label %171
    i16 -16384, label %171
  ], !dbg !1338

144:                                              ; preds = %122
  %145 = load i64, ptr %5, align 8, !dbg !1339, !tbaa !1340
  %146 = load i64, ptr %4, align 8, !dbg !1339, !tbaa !1340
  %147 = load i64, ptr %78, align 8, !dbg !1339, !tbaa !1341
  %148 = load i64, ptr %79, align 8, !dbg !1339, !tbaa !1341
  %149 = icmp eq i64 %145, %146, !dbg !1339
  %150 = icmp eq i64 %147, %148, !dbg !1339
  %151 = and i1 %149, %150, !dbg !1339
  br i1 %151, label %152, label %171, !dbg !1342

152:                                              ; preds = %144
  %153 = load i32, ptr @input_desc, align 4, !dbg !1343, !tbaa !1071
  %154 = call i64 @lseek(i32 noundef %153, i64 noundef 0, i32 noundef 1) #41, !dbg !1344
  tail call void @llvm.dbg.value(metadata i64 %154, metadata !514, metadata !DIExpression()), !dbg !1345
  %155 = icmp sgt i64 %154, -1, !dbg !1346
  br i1 %155, label %156, label %171, !dbg !1347

156:                                              ; preds = %152
  %157 = icmp slt i32 %90, -1, !dbg !1348
  br i1 %157, label %158, label %160, !dbg !1350

158:                                              ; preds = %156
  %159 = call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef 1, i32 noundef 3) #41, !dbg !1351
  tail call void @llvm.dbg.value(metadata i32 %159, metadata !505, metadata !DIExpression()), !dbg !1220
  br label %160, !dbg !1352

160:                                              ; preds = %158, %156
  %161 = phi i32 [ %159, %158 ], [ %90, %156 ], !dbg !1220
  tail call void @llvm.dbg.value(metadata i32 %161, metadata !505, metadata !DIExpression()), !dbg !1220
  %162 = and i32 %161, -2147482624, !dbg !1353
  %163 = icmp eq i32 %162, 1024, !dbg !1353
  %164 = select i1 %163, i32 2, i32 1, !dbg !1354
  tail call void @llvm.dbg.value(metadata i32 %164, metadata !519, metadata !DIExpression()), !dbg !1355
  %165 = call i64 @lseek(i32 noundef 1, i64 noundef 0, i32 noundef %164) #41, !dbg !1356
  %166 = icmp slt i64 %154, %165, !dbg !1358
  br i1 %166, label %167, label %171, !dbg !1359

167:                                              ; preds = %160
  %168 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.37, i32 noundef 5) #41, !dbg !1360
  %169 = load ptr, ptr @infile, align 8, !dbg !1360, !tbaa !997
  %170 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %169) #41, !dbg !1360
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %168, ptr noundef %170) #41, !dbg !1360
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !508, metadata !DIExpression()), !dbg !1220
  tail call void @llvm.dbg.value(metadata i32 %161, metadata !505, metadata !DIExpression()), !dbg !1220
  br label %506

171:                                              ; preds = %160, %152, %122, %122, %144
  %172 = phi i32 [ %90, %122 ], [ %90, %144 ], [ %90, %122 ], [ %90, %152 ], [ %161, %160 ], !dbg !1220
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !508, metadata !DIExpression()), !dbg !1220
  tail call void @llvm.dbg.value(metadata i32 %172, metadata !505, metadata !DIExpression()), !dbg !1220
  br i1 %82, label %214, label %173, !dbg !1362

173:                                              ; preds = %171
  %174 = icmp eq i32 %132, 32768
  %175 = select i1 %71, i1 %174, i1 false, !dbg !1363
  br i1 %175, label %176, label %188, !dbg !1363

176:                                              ; preds = %173
  call void @llvm.dbg.value(metadata i64 9223372035781033984, metadata !1364, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i8 poison, metadata !1369, metadata !DIExpression()), !dbg !1375
  %177 = load i32, ptr @input_desc, align 4, !dbg !1376, !tbaa !1071
  %178 = call i64 @rpl_copy_file_range(i32 noundef %177, ptr noundef null, i32 noundef 1, ptr noundef null, i64 noundef 9223372035781033984, i32 noundef 0) #41, !dbg !1378
  switch i64 %178, label %.preheader4 [
    i64 0, label %188
    i64 -1, label %182
  ], !dbg !1379

.preheader4:                                      ; preds = %176
  br label %179, !dbg !1380

179:                                              ; preds = %.preheader4, %179
  call void @llvm.dbg.value(metadata i8 poison, metadata !1369, metadata !DIExpression()), !dbg !1375
  %180 = load i32, ptr @input_desc, align 4, !dbg !1376, !tbaa !1071
  %181 = call i64 @rpl_copy_file_range(i32 noundef %180, ptr noundef null, i32 noundef 1, ptr noundef null, i64 noundef 9223372035781033984, i32 noundef 0) #41, !dbg !1378
  switch i64 %181, label %179 [
    i64 0, label %.loopexit5
    i64 -1, label %.loopexit6
  ], !dbg !1379, !llvm.loop !1381

.loopexit6:                                       ; preds = %179
  br label %182, !dbg !1384

182:                                              ; preds = %.loopexit6, %176
  %183 = tail call ptr @__errno_location() #44, !dbg !1384
  %184 = load i32, ptr %183, align 4, !dbg !1384, !tbaa !1071
  switch i32 %184, label %185 [
    i32 38, label %188
    i32 95, label %188
    i32 22, label %188
    i32 9, label %188
    i32 18, label %188
    i32 26, label %188
    i32 1, label %188
    i32 27, label %188
  ], !dbg !1387

185:                                              ; preds = %182
  %186 = load ptr, ptr @infile, align 8, !dbg !1388, !tbaa !997
  %187 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %186) #41, !dbg !1388
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %184, ptr noundef nonnull @.str.36, ptr noundef %187) #41, !dbg !1388
  br label %502, !dbg !1389

188:                                              ; preds = %173, %182, %182, %182, %182, %182, %182, %182, %182, %176
  tail call void @llvm.dbg.value(metadata i32 0, metadata !523, metadata !DIExpression()), !dbg !1390
  %189 = call i64 @llvm.umax.i64(i64 %141, i64 %70), !dbg !1391
  tail call void @llvm.dbg.value(metadata i64 %189, metadata !513, metadata !DIExpression()), !dbg !1222
  %190 = call noalias nonnull ptr @xalignalloc(i64 noundef %75, i64 noundef %189) #46, !dbg !1394
  tail call void @llvm.dbg.value(metadata ptr %190, metadata !522, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata ptr %190, metadata !1395, metadata !DIExpression()), !dbg !1403
  call void @llvm.dbg.value(metadata i64 %189, metadata !1400, metadata !DIExpression()), !dbg !1403
  br label %191, !dbg !1405

191:                                              ; preds = %202, %188
  %192 = load i32, ptr @input_desc, align 4, !dbg !1406, !tbaa !1071
  %193 = call i64 @read(i32 noundef %192, ptr noundef nonnull %190, i64 noundef %189) #41, !dbg !1407
  call void @llvm.dbg.value(metadata i64 %193, metadata !1401, metadata !DIExpression()), !dbg !1408
  %194 = icmp sgt i64 %193, -1, !dbg !1409
  br i1 %194, label %200, label %195, !dbg !1411

195:                                              ; preds = %191
  %196 = tail call ptr @__errno_location() #44, !dbg !1412
  %197 = load i32, ptr %196, align 4, !dbg !1412, !tbaa !1071
  %198 = load ptr, ptr @infile, align 8, !dbg !1412, !tbaa !997
  %199 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %198) #41, !dbg !1412
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %197, ptr noundef nonnull @.str.36, ptr noundef %199) #41, !dbg !1412
  br label %502, !dbg !1414

200:                                              ; preds = %191
  %201 = icmp eq i64 %193, 0, !dbg !1415
  br i1 %201, label %.loopexit3, label %202, !dbg !1417

202:                                              ; preds = %200
  %203 = call i64 @full_write(i32 noundef 1, ptr noundef nonnull %190, i64 noundef %193) #41, !dbg !1418
  %204 = icmp eq i64 %203, %193, !dbg !1420
  br i1 %204, label %191, label %205, !dbg !1421

205:                                              ; preds = %202
  %206 = tail call ptr @__errno_location() #44, !dbg !1422
  %207 = load i32, ptr %206, align 4, !dbg !1422, !tbaa !1071
  call void @llvm.dbg.value(metadata i32 %207, metadata !1425, metadata !DIExpression()), !dbg !1427
  %208 = load ptr, ptr @stdout, align 8, !dbg !1428, !tbaa !997
  %209 = call i32 @fflush_unlocked(ptr noundef %208) #41, !dbg !1428
  %210 = load ptr, ptr @stdout, align 8, !dbg !1429, !tbaa !997
  %211 = call i32 @fpurge(ptr noundef %210) #41, !dbg !1430
  %212 = load ptr, ptr @stdout, align 8, !dbg !1431, !tbaa !997
  call void @clearerr_unlocked(ptr noundef %212) #41, !dbg !1431
  %213 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.77, i32 noundef 5) #41, !dbg !1432
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %207, ptr noundef %213) #41, !dbg !1432
  unreachable, !dbg !1432

214:                                              ; preds = %171
  %215 = add nuw nsw i64 %141, 1, !dbg !1433
  %216 = call noalias nonnull ptr @xalignalloc(i64 noundef %75, i64 noundef %215) #46, !dbg !1434
  tail call void @llvm.dbg.value(metadata ptr %216, metadata !522, metadata !DIExpression()), !dbg !1222
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !526, metadata !DIExpression()), !dbg !1435
  %217 = shl nuw nsw i64 %141, 2, !dbg !1436
  %218 = add nuw nsw i64 %83, %217, !dbg !1438
  tail call void @llvm.dbg.value(metadata i64 %218, metadata !526, metadata !DIExpression()), !dbg !1435
  %219 = call noalias nonnull ptr @xalignalloc(i64 noundef %75, i64 noundef %218) #46, !dbg !1439
  tail call void @llvm.dbg.value(metadata ptr %219, metadata !528, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1440, metadata !DIExpression(), metadata !1218, metadata ptr %3, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata ptr %216, metadata !1449, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %141, metadata !1450, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata ptr %219, metadata !1451, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %70, metadata !1452, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i1 %.lcssa40, metadata !1453, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1473
  call void @llvm.dbg.value(metadata i1 %.lcssa44, metadata !1454, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1473
  call void @llvm.dbg.value(metadata i1 %.lcssa24, metadata !1455, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1473
  call void @llvm.dbg.value(metadata i1 %16, metadata !1456, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1473
  call void @llvm.dbg.value(metadata i1 %.lcssa36, metadata !1457, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1473
  call void @llvm.dbg.value(metadata i1 %.lcssa32, metadata !1458, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1473
  %220 = load i32, ptr @newlines2, align 4, !dbg !1474, !tbaa !1071
  call void @llvm.dbg.value(metadata i32 %220, metadata !1460, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i8 1, metadata !1461, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata ptr %216, metadata !1462, metadata !DIExpression()), !dbg !1473
  %221 = getelementptr inbounds i8, ptr %216, i64 1, !dbg !1475
  call void @llvm.dbg.value(metadata ptr %221, metadata !1463, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata ptr %219, metadata !1464, metadata !DIExpression()), !dbg !1473
  %222 = getelementptr inbounds i8, ptr %219, i64 %70
  %223 = ptrtoint ptr %219 to i64
  br label %224, !dbg !1476

224:                                              ; preds = %390, %214
  %225 = phi ptr [ %219, %214 ], [ %391, %390 ], !dbg !1477
  %226 = phi i32 [ %220, %214 ], [ %392, %390 ], !dbg !1478
  %227 = phi i1 [ true, %214 ], [ %384, %390 ]
  %228 = phi ptr [ %216, %214 ], [ %385, %390 ], !dbg !1479
  %229 = phi ptr [ %221, %214 ], [ %393, %390 ], !dbg !1473
  call void @llvm.dbg.value(metadata ptr %225, metadata !1464, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata ptr %229, metadata !1463, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata ptr %228, metadata !1462, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i8 poison, metadata !1461, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i32 %226, metadata !1460, metadata !DIExpression()), !dbg !1473
  %230 = icmp ugt ptr %222, %225, !dbg !1480
  br i1 %230, label %253, label %231, !dbg !1481

231:                                              ; preds = %224
  %232 = ptrtoint ptr %225 to i64
  br label %233, !dbg !1482

233:                                              ; preds = %246, %231
  %234 = phi ptr [ %247, %246 ], [ %219, %231 ], !dbg !1483
  call void @llvm.dbg.value(metadata ptr %234, metadata !1465, metadata !DIExpression()), !dbg !1483
  %235 = call i64 @full_write(i32 noundef 1, ptr noundef %234, i64 noundef %70) #41, !dbg !1484
  %236 = icmp eq i64 %235, %70, !dbg !1487
  br i1 %236, label %246, label %237, !dbg !1488

237:                                              ; preds = %233
  %238 = tail call ptr @__errno_location() #44, !dbg !1489
  %239 = load i32, ptr %238, align 4, !dbg !1489, !tbaa !1071
  call void @llvm.dbg.value(metadata i32 %239, metadata !1425, metadata !DIExpression()), !dbg !1491
  %240 = load ptr, ptr @stdout, align 8, !dbg !1492, !tbaa !997
  %241 = call i32 @fflush_unlocked(ptr noundef %240) #41, !dbg !1492
  %242 = load ptr, ptr @stdout, align 8, !dbg !1493, !tbaa !997
  %243 = call i32 @fpurge(ptr noundef %242) #41, !dbg !1494
  %244 = load ptr, ptr @stdout, align 8, !dbg !1495, !tbaa !997
  call void @clearerr_unlocked(ptr noundef %244) #41, !dbg !1495
  %245 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.77, i32 noundef 5) #41, !dbg !1496
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %239, ptr noundef %245) #41, !dbg !1496
  unreachable, !dbg !1496

246:                                              ; preds = %233
  %247 = getelementptr inbounds i8, ptr %234, i64 %70, !dbg !1497
  call void @llvm.dbg.value(metadata ptr %247, metadata !1465, metadata !DIExpression()), !dbg !1483
  %248 = ptrtoint ptr %247 to i64, !dbg !1498
  %249 = sub i64 %232, %248, !dbg !1498
  call void @llvm.dbg.value(metadata i64 %249, metadata !1468, metadata !DIExpression()), !dbg !1483
  %250 = icmp slt i64 %249, %70, !dbg !1499
  br i1 %250, label %251, label %233, !dbg !1500, !llvm.loop !1501

251:                                              ; preds = %246
  %.lcssa7 = phi ptr [ %247, %246 ], !dbg !1497
  %.lcssa = phi i64 [ %249, %246 ], !dbg !1498
  call void @llvm.dbg.value(metadata ptr %219, metadata !1503, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata ptr %.lcssa7, metadata !1509, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i64 %.lcssa, metadata !1510, metadata !DIExpression()), !dbg !1511
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %219, ptr noundef nonnull align 1 %.lcssa7, i64 noundef %.lcssa, i1 noundef false) #41, !dbg !1513
  %252 = getelementptr inbounds i8, ptr %219, i64 %.lcssa, !dbg !1514
  call void @llvm.dbg.value(metadata ptr %252, metadata !1464, metadata !DIExpression()), !dbg !1473
  br label %253, !dbg !1515

253:                                              ; preds = %251, %224
  %254 = phi ptr [ %225, %224 ], [ %252, %251 ], !dbg !1473
  call void @llvm.dbg.value(metadata ptr %254, metadata !1464, metadata !DIExpression()), !dbg !1473
  %255 = icmp ugt ptr %229, %228, !dbg !1516
  br i1 %255, label %256, label %333, !dbg !1517

256:                                              ; preds = %253
  call void @llvm.dbg.value(metadata i8 0, metadata !1469, metadata !DIExpression()), !dbg !1471
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #41, !dbg !1518
  store i32 0, ptr %3, align 4, !dbg !1519, !tbaa !1071, !DIAssignID !1520
  call void @llvm.dbg.assign(metadata i32 0, metadata !1440, metadata !DIExpression(), metadata !1520, metadata ptr %3, metadata !DIExpression()), !dbg !1471
  br i1 %227, label %257, label %271, !dbg !1521

257:                                              ; preds = %256
  %258 = load i32, ptr @input_desc, align 4, !dbg !1523, !tbaa !1071
  %259 = call i32 (i32, i64, ...) @ioctl(i32 noundef %258, i64 noundef 21531, ptr noundef nonnull %3) #41, !dbg !1524
  %260 = icmp sgt i32 %259, -1, !dbg !1525
  br i1 %260, label %268, label %261, !dbg !1526

261:                                              ; preds = %257
  %262 = tail call ptr @__errno_location() #44, !dbg !1527
  %263 = load i32, ptr %262, align 4, !dbg !1527, !tbaa !1071
  switch i32 %263, label %264 [
    i32 95, label %268
    i32 25, label %268
    i32 22, label %268
    i32 19, label %268
    i32 38, label %268
  ], !dbg !1530

264:                                              ; preds = %261
  %.lcssa14 = phi i32 [ %226, %261 ], !dbg !1478
  %.lcssa12 = phi i32 [ %263, %261 ], !dbg !1527
  %265 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.76, i32 noundef 5) #41, !dbg !1531
  %266 = load ptr, ptr @infile, align 8, !dbg !1531, !tbaa !997
  %267 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %266) #41, !dbg !1531
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %.lcssa12, ptr noundef %265, ptr noundef %267) #41, !dbg !1531
  br label %499, !dbg !1533

268:                                              ; preds = %261, %261, %261, %261, %261, %257
  %269 = load i32, ptr %3, align 4, !dbg !1534, !tbaa !1071
  call void @llvm.dbg.value(metadata i8 poison, metadata !1461, metadata !DIExpression()), !dbg !1473
  %270 = icmp eq i32 %269, 0, !dbg !1536
  call void @llvm.dbg.value(metadata i8 poison, metadata !1469, metadata !DIExpression()), !dbg !1471
  br i1 %270, label %271, label %288, !dbg !1537

271:                                              ; preds = %268, %256
  %272 = phi i1 [ %260, %268 ], [ false, %256 ]
  call void @llvm.dbg.value(metadata ptr %219, metadata !1538, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.value(metadata ptr undef, metadata !1543, metadata !DIExpression()), !dbg !1545
  %273 = ptrtoint ptr %254 to i64, !dbg !1548
  %274 = sub i64 %273, %223, !dbg !1548
  call void @llvm.dbg.value(metadata i64 %274, metadata !1544, metadata !DIExpression()), !dbg !1545
  %275 = icmp sgt i64 %274, 0, !dbg !1549
  br i1 %275, label %276, label %288, !dbg !1551

276:                                              ; preds = %271
  %277 = call i64 @full_write(i32 noundef 1, ptr noundef nonnull %219, i64 noundef %274) #41, !dbg !1552
  %278 = icmp eq i64 %277, %274, !dbg !1555
  br i1 %278, label %288, label %279, !dbg !1556

279:                                              ; preds = %276
  %280 = tail call ptr @__errno_location() #44, !dbg !1557
  %281 = load i32, ptr %280, align 4, !dbg !1557, !tbaa !1071
  call void @llvm.dbg.value(metadata i32 %281, metadata !1425, metadata !DIExpression()), !dbg !1559
  %282 = load ptr, ptr @stdout, align 8, !dbg !1560, !tbaa !997
  %283 = call i32 @fflush_unlocked(ptr noundef %282) #41, !dbg !1560
  %284 = load ptr, ptr @stdout, align 8, !dbg !1561, !tbaa !997
  %285 = call i32 @fpurge(ptr noundef %284) #41, !dbg !1562
  %286 = load ptr, ptr @stdout, align 8, !dbg !1563, !tbaa !997
  call void @clearerr_unlocked(ptr noundef %286) #41, !dbg !1563
  %287 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.77, i32 noundef 5) #41, !dbg !1564
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %281, ptr noundef %287) #41, !dbg !1564
  unreachable, !dbg !1564

288:                                              ; preds = %276, %271, %268
  %289 = phi i1 [ %260, %268 ], [ %272, %271 ], [ %272, %276 ]
  %290 = phi ptr [ %254, %268 ], [ %254, %271 ], [ %219, %276 ], !dbg !1473
  call void @llvm.dbg.value(metadata ptr %290, metadata !1464, metadata !DIExpression()), !dbg !1473
  %291 = load i32, ptr @input_desc, align 4, !dbg !1565, !tbaa !1071
  %292 = call i64 @read(i32 noundef %291, ptr noundef nonnull %216, i64 noundef %141) #41, !dbg !1566
  call void @llvm.dbg.value(metadata i64 %292, metadata !1470, metadata !DIExpression()), !dbg !1471
  %293 = icmp slt i64 %292, 0, !dbg !1567
  br i1 %293, label %294, label %313, !dbg !1569

294:                                              ; preds = %288
  %.lcssa18 = phi ptr [ %290, %288 ], !dbg !1473
  %.lcssa16 = phi i32 [ %226, %288 ], !dbg !1478
  %295 = tail call ptr @__errno_location() #44, !dbg !1570
  %296 = load i32, ptr %295, align 4, !dbg !1570, !tbaa !1071
  %297 = load ptr, ptr @infile, align 8, !dbg !1570, !tbaa !997
  %298 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %297) #41, !dbg !1570
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %296, ptr noundef nonnull @.str.36, ptr noundef %298) #41, !dbg !1570
  call void @llvm.dbg.value(metadata ptr %219, metadata !1538, metadata !DIExpression()), !dbg !1572
  call void @llvm.dbg.value(metadata ptr undef, metadata !1543, metadata !DIExpression()), !dbg !1572
  %299 = ptrtoint ptr %.lcssa18 to i64, !dbg !1574
  %300 = sub i64 %299, %223, !dbg !1574
  call void @llvm.dbg.value(metadata i64 %300, metadata !1544, metadata !DIExpression()), !dbg !1572
  %301 = icmp sgt i64 %300, 0, !dbg !1575
  br i1 %301, label %302, label %499, !dbg !1576

302:                                              ; preds = %294
  %303 = call i64 @full_write(i32 noundef 1, ptr noundef nonnull %219, i64 noundef %300) #41, !dbg !1577
  %304 = icmp eq i64 %303, %300, !dbg !1578
  br i1 %304, label %499, label %305, !dbg !1579

305:                                              ; preds = %302
  %.lcssa20 = phi ptr [ %295, %302 ], !dbg !1570
  %306 = load i32, ptr %.lcssa20, align 4, !dbg !1580, !tbaa !1071
  call void @llvm.dbg.value(metadata i32 %306, metadata !1425, metadata !DIExpression()), !dbg !1582
  %307 = load ptr, ptr @stdout, align 8, !dbg !1583, !tbaa !997
  %308 = call i32 @fflush_unlocked(ptr noundef %307) #41, !dbg !1583
  %309 = load ptr, ptr @stdout, align 8, !dbg !1584, !tbaa !997
  %310 = call i32 @fpurge(ptr noundef %309) #41, !dbg !1585
  %311 = load ptr, ptr @stdout, align 8, !dbg !1586, !tbaa !997
  call void @clearerr_unlocked(ptr noundef %311) #41, !dbg !1586
  %312 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.77, i32 noundef 5) #41, !dbg !1587
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %306, ptr noundef %312) #41, !dbg !1587
  unreachable, !dbg !1587

313:                                              ; preds = %288
  %314 = icmp eq i64 %292, 0, !dbg !1588
  br i1 %314, label %315, label %331, !dbg !1590

315:                                              ; preds = %313
  %.lcssa19 = phi ptr [ %290, %313 ], !dbg !1473
  %.lcssa17 = phi i32 [ %226, %313 ], !dbg !1478
  call void @llvm.dbg.value(metadata ptr %219, metadata !1538, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.value(metadata ptr undef, metadata !1543, metadata !DIExpression()), !dbg !1591
  %316 = ptrtoint ptr %.lcssa19 to i64, !dbg !1594
  %317 = sub i64 %316, %223, !dbg !1594
  call void @llvm.dbg.value(metadata i64 %317, metadata !1544, metadata !DIExpression()), !dbg !1591
  %318 = icmp sgt i64 %317, 0, !dbg !1595
  br i1 %318, label %319, label %499, !dbg !1596

319:                                              ; preds = %315
  %320 = call i64 @full_write(i32 noundef 1, ptr noundef nonnull %219, i64 noundef %317) #41, !dbg !1597
  %321 = icmp eq i64 %320, %317, !dbg !1598
  br i1 %321, label %499, label %322, !dbg !1599

322:                                              ; preds = %319
  %323 = tail call ptr @__errno_location() #44, !dbg !1600
  %324 = load i32, ptr %323, align 4, !dbg !1600, !tbaa !1071
  call void @llvm.dbg.value(metadata i32 %324, metadata !1425, metadata !DIExpression()), !dbg !1602
  %325 = load ptr, ptr @stdout, align 8, !dbg !1603, !tbaa !997
  %326 = call i32 @fflush_unlocked(ptr noundef %325) #41, !dbg !1603
  %327 = load ptr, ptr @stdout, align 8, !dbg !1604, !tbaa !997
  %328 = call i32 @fpurge(ptr noundef %327) #41, !dbg !1605
  %329 = load ptr, ptr @stdout, align 8, !dbg !1606, !tbaa !997
  call void @clearerr_unlocked(ptr noundef %329) #41, !dbg !1606
  %330 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.77, i32 noundef 5) #41, !dbg !1607
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %324, ptr noundef %330) #41, !dbg !1607
  unreachable, !dbg !1607

331:                                              ; preds = %313
  call void @llvm.dbg.value(metadata ptr %216, metadata !1463, metadata !DIExpression()), !dbg !1473
  %332 = getelementptr inbounds i8, ptr %216, i64 %292, !dbg !1608
  call void @llvm.dbg.value(metadata ptr %332, metadata !1462, metadata !DIExpression()), !dbg !1473
  store i8 10, ptr %332, align 1, !dbg !1609, !tbaa !1080
  call void @llvm.dbg.value(metadata ptr %290, metadata !1464, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i8 poison, metadata !1461, metadata !DIExpression()), !dbg !1473
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #41, !dbg !1610
  br label %381

333:                                              ; preds = %253
  %334 = add nsw i32 %226, 1, !dbg !1611
  call void @llvm.dbg.value(metadata i32 %334, metadata !1460, metadata !DIExpression()), !dbg !1473
  %335 = icmp sgt i32 %226, -1, !dbg !1614
  br i1 %335, label %336, label %367, !dbg !1615

336:                                              ; preds = %333
  %337 = icmp ne i32 %226, 0, !dbg !1616
  %338 = and i1 %.lcssa32, %337, !dbg !1619
  %339 = select i1 %337, i32 2, i32 1, !dbg !1619
  br i1 %338, label %381, label %340, !dbg !1619

340:                                              ; preds = %336
  call void @llvm.dbg.value(metadata i32 %339, metadata !1460, metadata !DIExpression()), !dbg !1473
  br i1 %85, label %367, label %341, !dbg !1620

341:                                              ; preds = %340
  call void @llvm.dbg.value(metadata !1039, metadata !1622, metadata !DIExpression()), !dbg !1625
  %342 = load ptr, ptr @line_num_start, align 8
  br label %343, !dbg !1628

343:                                              ; preds = %348, %341
  %344 = phi ptr [ getelementptr inbounds ([20 x i8], ptr @line_buf, i64 0, i64 17), %341 ], [ %349, %348 ], !dbg !1625
  call void @llvm.dbg.value(metadata ptr %344, metadata !1622, metadata !DIExpression()), !dbg !1625
  %345 = load i8, ptr %344, align 1, !dbg !1629, !tbaa !1080
  %346 = add i8 %345, 1, !dbg !1629
  store i8 %346, ptr %344, align 1, !dbg !1629, !tbaa !1080
  %347 = icmp ult i8 %345, 57, !dbg !1632
  br i1 %347, label %362, label %348, !dbg !1633

348:                                              ; preds = %343
  %349 = getelementptr inbounds i8, ptr %344, i64 -1, !dbg !1634
  call void @llvm.dbg.value(metadata ptr %349, metadata !1622, metadata !DIExpression()), !dbg !1625
  store i8 48, ptr %344, align 1, !dbg !1635, !tbaa !1080
  %350 = icmp ult ptr %349, %342, !dbg !1636
  br i1 %350, label %351, label %343, !dbg !1637, !llvm.loop !1638

351:                                              ; preds = %348
  %352 = icmp ugt ptr %342, @line_buf, !dbg !1640
  br i1 %352, label %353, label %355, !dbg !1642

353:                                              ; preds = %351
  %354 = getelementptr inbounds i8, ptr %342, i64 -1, !dbg !1643
  store ptr %354, ptr @line_num_start, align 8, !dbg !1643, !tbaa !997
  store i8 49, ptr %354, align 1, !dbg !1644, !tbaa !1080
  br label %356, !dbg !1645

355:                                              ; preds = %351
  store i8 62, ptr @line_buf, align 4, !dbg !1646, !tbaa !1080
  br label %356

356:                                              ; preds = %355, %353
  %357 = phi ptr [ %342, %355 ], [ %354, %353 ], !dbg !1647
  %358 = load ptr, ptr @line_num_print, align 8, !dbg !1649, !tbaa !997
  %359 = icmp ult ptr %357, %358, !dbg !1650
  br i1 %359, label %360, label %364, !dbg !1651

360:                                              ; preds = %356
  %361 = getelementptr inbounds i8, ptr %358, i64 -1, !dbg !1652
  store ptr %361, ptr @line_num_print, align 8, !dbg !1652, !tbaa !997
  br label %364, !dbg !1653

362:                                              ; preds = %343
  %363 = load ptr, ptr @line_num_print, align 8, !dbg !1654, !tbaa !997
  br label %364, !dbg !1654

364:                                              ; preds = %362, %360, %356
  %365 = phi ptr [ %363, %362 ], [ %358, %356 ], [ %361, %360 ], !dbg !1654
  call void @llvm.dbg.value(metadata ptr %254, metadata !1655, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata ptr %365, metadata !1661, metadata !DIExpression()), !dbg !1662
  %366 = call ptr @stpcpy(ptr %254, ptr %365), !dbg !1664
  call void @llvm.dbg.value(metadata ptr %366, metadata !1464, metadata !DIExpression()), !dbg !1473
  br label %367, !dbg !1665

367:                                              ; preds = %364, %340, %333
  %368 = phi ptr [ %254, %340 ], [ %366, %364 ], [ %254, %333 ], !dbg !1473
  %369 = phi i32 [ %339, %340 ], [ %339, %364 ], [ %334, %333 ], !dbg !1666
  call void @llvm.dbg.value(metadata ptr %368, metadata !1464, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i32 %369, metadata !1460, metadata !DIExpression()), !dbg !1473
  br i1 %.lcssa36, label %370, label %378, !dbg !1667

370:                                              ; preds = %367
  %371 = load i1, ptr @pending_cr, align 1, !dbg !1668
  br i1 %371, label %372, label %375, !dbg !1672

372:                                              ; preds = %370
  %373 = getelementptr inbounds i8, ptr %368, i64 1, !dbg !1673
  call void @llvm.dbg.value(metadata ptr %373, metadata !1464, metadata !DIExpression()), !dbg !1473
  store i8 94, ptr %368, align 1, !dbg !1675, !tbaa !1080
  %374 = getelementptr inbounds i8, ptr %368, i64 2, !dbg !1676
  call void @llvm.dbg.value(metadata ptr %374, metadata !1464, metadata !DIExpression()), !dbg !1473
  store i8 77, ptr %373, align 1, !dbg !1677, !tbaa !1080
  store i1 false, ptr @pending_cr, align 1, !dbg !1678
  br label %375, !dbg !1679

375:                                              ; preds = %372, %370
  %376 = phi ptr [ %374, %372 ], [ %368, %370 ], !dbg !1473
  call void @llvm.dbg.value(metadata ptr %376, metadata !1464, metadata !DIExpression()), !dbg !1473
  %377 = getelementptr inbounds i8, ptr %376, i64 1, !dbg !1680
  call void @llvm.dbg.value(metadata ptr %377, metadata !1464, metadata !DIExpression()), !dbg !1473
  store i8 36, ptr %376, align 1, !dbg !1681, !tbaa !1080
  br label %378, !dbg !1682

378:                                              ; preds = %375, %367
  %379 = phi ptr [ %377, %375 ], [ %368, %367 ], !dbg !1473
  call void @llvm.dbg.value(metadata ptr %379, metadata !1464, metadata !DIExpression()), !dbg !1473
  %380 = getelementptr inbounds i8, ptr %379, i64 1, !dbg !1683
  call void @llvm.dbg.value(metadata ptr %380, metadata !1464, metadata !DIExpression()), !dbg !1473
  store i8 10, ptr %379, align 1, !dbg !1684, !tbaa !1080
  br label %381

381:                                              ; preds = %378, %336, %331
  %382 = phi ptr [ %290, %331 ], [ %380, %378 ], [ %254, %336 ], !dbg !1473
  %383 = phi i32 [ %226, %331 ], [ %369, %378 ], [ 2, %336 ], !dbg !1473
  %384 = phi i1 [ %289, %331 ], [ %227, %378 ], [ %227, %336 ]
  %385 = phi ptr [ %332, %331 ], [ %228, %378 ], [ %228, %336 ], !dbg !1479
  %386 = phi ptr [ %216, %331 ], [ %229, %378 ], [ %229, %336 ]
  call void @llvm.dbg.value(metadata ptr %382, metadata !1464, metadata !DIExpression()), !dbg !1473
  %387 = load i8, ptr %386, align 1, !dbg !1685, !tbaa !1080
  %388 = getelementptr inbounds i8, ptr %386, i64 1, !dbg !1685
  call void @llvm.dbg.value(metadata i8 %387, metadata !1459, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata ptr %388, metadata !1463, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata ptr %385, metadata !1462, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i8 poison, metadata !1461, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i32 %383, metadata !1460, metadata !DIExpression()), !dbg !1473
  %389 = icmp eq i8 %387, 10, !dbg !1686
  br i1 %389, label %390, label %394, !dbg !1687

.loopexit:                                        ; preds = %463
  %.lcssa11 = phi ptr [ %431, %463 ], !dbg !1688
  %.lcssa10 = phi ptr [ %432, %463 ], !dbg !1688
  br label %390, !dbg !1473

.loopexit2:                                       ; preds = %482
  %.lcssa9 = phi ptr [ %474, %482 ], !dbg !1688
  %.lcssa8 = phi ptr [ %475, %482 ], !dbg !1688
  br label %390, !dbg !1473

390:                                              ; preds = %.loopexit2, %.loopexit, %381
  %391 = phi ptr [ %382, %381 ], [ %.lcssa11, %.loopexit ], [ %.lcssa9, %.loopexit2 ]
  %392 = phi i32 [ %383, %381 ], [ -1, %.loopexit ], [ -1, %.loopexit2 ]
  %393 = phi ptr [ %388, %381 ], [ %.lcssa10, %.loopexit ], [ %.lcssa8, %.loopexit2 ]
  br label %224, !dbg !1473, !llvm.loop !1689

394:                                              ; preds = %381
  %395 = load i1, ptr @pending_cr, align 1, !dbg !1692
  br i1 %395, label %396, label %398, !dbg !1694

396:                                              ; preds = %394
  %397 = getelementptr inbounds i8, ptr %382, i64 1, !dbg !1695
  call void @llvm.dbg.value(metadata ptr %397, metadata !1464, metadata !DIExpression()), !dbg !1473
  store i8 13, ptr %382, align 1, !dbg !1697, !tbaa !1080
  store i1 false, ptr @pending_cr, align 1, !dbg !1698
  br label %398, !dbg !1699

398:                                              ; preds = %396, %394
  %399 = phi ptr [ %397, %396 ], [ %382, %394 ], !dbg !1473
  call void @llvm.dbg.value(metadata ptr %399, metadata !1464, metadata !DIExpression()), !dbg !1473
  %400 = icmp sgt i32 %383, -1, !dbg !1700
  %401 = and i1 %.lcssa24, %400, !dbg !1702
  br i1 %401, label %402, label %428, !dbg !1702

402:                                              ; preds = %398
  call void @llvm.dbg.value(metadata !1039, metadata !1622, metadata !DIExpression()), !dbg !1703
  %403 = load ptr, ptr @line_num_start, align 8
  br label %404, !dbg !1706

404:                                              ; preds = %409, %402
  %405 = phi ptr [ getelementptr inbounds ([20 x i8], ptr @line_buf, i64 0, i64 17), %402 ], [ %410, %409 ], !dbg !1703
  call void @llvm.dbg.value(metadata ptr %405, metadata !1622, metadata !DIExpression()), !dbg !1703
  %406 = load i8, ptr %405, align 1, !dbg !1707, !tbaa !1080
  %407 = add i8 %406, 1, !dbg !1707
  store i8 %407, ptr %405, align 1, !dbg !1707, !tbaa !1080
  %408 = icmp ult i8 %406, 57, !dbg !1708
  br i1 %408, label %423, label %409, !dbg !1709

409:                                              ; preds = %404
  %410 = getelementptr inbounds i8, ptr %405, i64 -1, !dbg !1710
  call void @llvm.dbg.value(metadata ptr %410, metadata !1622, metadata !DIExpression()), !dbg !1703
  store i8 48, ptr %405, align 1, !dbg !1711, !tbaa !1080
  %411 = icmp ult ptr %410, %403, !dbg !1712
  br i1 %411, label %412, label %404, !dbg !1713, !llvm.loop !1714

412:                                              ; preds = %409
  %413 = icmp ugt ptr %403, @line_buf, !dbg !1716
  br i1 %413, label %414, label %416, !dbg !1717

414:                                              ; preds = %412
  %415 = getelementptr inbounds i8, ptr %403, i64 -1, !dbg !1718
  store ptr %415, ptr @line_num_start, align 8, !dbg !1718, !tbaa !997
  store i8 49, ptr %415, align 1, !dbg !1719, !tbaa !1080
  br label %417, !dbg !1720

416:                                              ; preds = %412
  store i8 62, ptr @line_buf, align 4, !dbg !1721, !tbaa !1080
  br label %417

417:                                              ; preds = %416, %414
  %418 = phi ptr [ %403, %416 ], [ %415, %414 ], !dbg !1722
  %419 = load ptr, ptr @line_num_print, align 8, !dbg !1723, !tbaa !997
  %420 = icmp ult ptr %418, %419, !dbg !1724
  br i1 %420, label %421, label %425, !dbg !1725

421:                                              ; preds = %417
  %422 = getelementptr inbounds i8, ptr %419, i64 -1, !dbg !1726
  store ptr %422, ptr @line_num_print, align 8, !dbg !1726, !tbaa !997
  br label %425, !dbg !1727

423:                                              ; preds = %404
  %424 = load ptr, ptr @line_num_print, align 8, !dbg !1728, !tbaa !997
  br label %425, !dbg !1728

425:                                              ; preds = %423, %421, %417
  %426 = phi ptr [ %424, %423 ], [ %419, %417 ], [ %422, %421 ], !dbg !1728
  call void @llvm.dbg.value(metadata ptr %399, metadata !1655, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata ptr %426, metadata !1661, metadata !DIExpression()), !dbg !1729
  %427 = call ptr @stpcpy(ptr %399, ptr %426), !dbg !1731
  call void @llvm.dbg.value(metadata ptr %427, metadata !1464, metadata !DIExpression()), !dbg !1473
  br label %428, !dbg !1732

428:                                              ; preds = %425, %398
  %429 = phi ptr [ %399, %398 ], [ %427, %425 ], !dbg !1688
  call void @llvm.dbg.value(metadata ptr %429, metadata !1464, metadata !DIExpression()), !dbg !1473
  br i1 %.lcssa40, label %.preheader, label %.preheader1, !dbg !1733

.preheader1:                                      ; preds = %428
  br label %473, !dbg !1734

.preheader:                                       ; preds = %428
  br label %430, !dbg !1737

430:                                              ; preds = %.preheader, %469
  %431 = phi ptr [ %470, %469 ], [ %429, %.preheader ], !dbg !1688
  %432 = phi ptr [ %471, %469 ], [ %388, %.preheader ], !dbg !1688
  %433 = phi i8 [ %472, %469 ], [ %387, %.preheader ], !dbg !1688
  call void @llvm.dbg.value(metadata ptr %431, metadata !1464, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i8 %433, metadata !1459, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata ptr %432, metadata !1463, metadata !DIExpression()), !dbg !1473
  %434 = icmp ugt i8 %433, 31, !dbg !1739
  br i1 %434, label %435, label %458, !dbg !1742

435:                                              ; preds = %430
  %436 = icmp ult i8 %433, 127, !dbg !1743
  br i1 %436, label %437, label %439, !dbg !1746

437:                                              ; preds = %435
  %438 = getelementptr inbounds i8, ptr %431, i64 1, !dbg !1747
  call void @llvm.dbg.value(metadata ptr %438, metadata !1464, metadata !DIExpression()), !dbg !1473
  store i8 %433, ptr %431, align 1, !dbg !1748, !tbaa !1080
  br label %469, !dbg !1749

439:                                              ; preds = %435
  %440 = icmp eq i8 %433, 127, !dbg !1750
  %441 = getelementptr inbounds i8, ptr %431, i64 1, !dbg !1752
  call void @llvm.dbg.value(metadata ptr %441, metadata !1464, metadata !DIExpression()), !dbg !1473
  %442 = getelementptr inbounds i8, ptr %431, i64 2, !dbg !1752
  call void @llvm.dbg.value(metadata ptr %442, metadata !1464, metadata !DIExpression()), !dbg !1473
  br i1 %440, label %443, label %444, !dbg !1753

443:                                              ; preds = %439
  store i8 94, ptr %431, align 1, !dbg !1754, !tbaa !1080
  store i8 63, ptr %441, align 1, !dbg !1756, !tbaa !1080
  br label %469, !dbg !1757

444:                                              ; preds = %439
  store i8 77, ptr %431, align 1, !dbg !1758, !tbaa !1080
  store i8 45, ptr %441, align 1, !dbg !1760, !tbaa !1080
  %445 = icmp ugt i8 %433, -97, !dbg !1761
  br i1 %445, label %446, label %454, !dbg !1763

446:                                              ; preds = %444
  %447 = icmp eq i8 %433, -1, !dbg !1764
  br i1 %447, label %451, label %448, !dbg !1767

448:                                              ; preds = %446
  %449 = and i8 %433, 127, !dbg !1768
  %450 = getelementptr inbounds i8, ptr %431, i64 3, !dbg !1769
  call void @llvm.dbg.value(metadata ptr %450, metadata !1464, metadata !DIExpression()), !dbg !1473
  store i8 %449, ptr %442, align 1, !dbg !1770, !tbaa !1080
  br label %469, !dbg !1771

451:                                              ; preds = %446
  %452 = getelementptr inbounds i8, ptr %431, i64 3, !dbg !1772
  call void @llvm.dbg.value(metadata ptr %452, metadata !1464, metadata !DIExpression()), !dbg !1473
  store i8 94, ptr %442, align 1, !dbg !1774, !tbaa !1080
  %453 = getelementptr inbounds i8, ptr %431, i64 4, !dbg !1775
  call void @llvm.dbg.value(metadata ptr %453, metadata !1464, metadata !DIExpression()), !dbg !1473
  store i8 63, ptr %452, align 1, !dbg !1776, !tbaa !1080
  br label %469

454:                                              ; preds = %444
  %455 = getelementptr inbounds i8, ptr %431, i64 3, !dbg !1777
  call void @llvm.dbg.value(metadata ptr %455, metadata !1464, metadata !DIExpression()), !dbg !1473
  store i8 94, ptr %442, align 1, !dbg !1779, !tbaa !1080
  %456 = add i8 %433, -64, !dbg !1780
  %457 = getelementptr inbounds i8, ptr %431, i64 4, !dbg !1781
  call void @llvm.dbg.value(metadata ptr %457, metadata !1464, metadata !DIExpression()), !dbg !1473
  store i8 %456, ptr %455, align 1, !dbg !1782, !tbaa !1080
  br label %469

458:                                              ; preds = %430
  %459 = icmp ne i8 %433, 9, !dbg !1783
  %460 = or i1 %.lcssa44, %459, !dbg !1785
  br i1 %460, label %463, label %461, !dbg !1785

461:                                              ; preds = %458
  %462 = getelementptr inbounds i8, ptr %431, i64 1, !dbg !1786
  call void @llvm.dbg.value(metadata ptr %462, metadata !1464, metadata !DIExpression()), !dbg !1473
  store i8 9, ptr %431, align 1, !dbg !1787, !tbaa !1080
  br label %469, !dbg !1788

463:                                              ; preds = %458
  %464 = icmp eq i8 %433, 10, !dbg !1789
  br i1 %464, label %.loopexit, label %465, !dbg !1791, !llvm.loop !1792

465:                                              ; preds = %463
  %466 = getelementptr inbounds i8, ptr %431, i64 1, !dbg !1794
  call void @llvm.dbg.value(metadata ptr %466, metadata !1464, metadata !DIExpression()), !dbg !1473
  store i8 94, ptr %431, align 1, !dbg !1796, !tbaa !1080
  %467 = or disjoint i8 %433, 64, !dbg !1797
  %468 = getelementptr inbounds i8, ptr %431, i64 2, !dbg !1798
  call void @llvm.dbg.value(metadata ptr %468, metadata !1464, metadata !DIExpression()), !dbg !1473
  store i8 %467, ptr %466, align 1, !dbg !1799, !tbaa !1080
  br label %469

469:                                              ; preds = %465, %461, %454, %451, %448, %443, %437
  %470 = phi ptr [ %438, %437 ], [ %442, %443 ], [ %453, %451 ], [ %450, %448 ], [ %457, %454 ], [ %468, %465 ], [ %462, %461 ], !dbg !1800
  call void @llvm.dbg.value(metadata ptr %470, metadata !1464, metadata !DIExpression()), !dbg !1473
  %471 = getelementptr inbounds i8, ptr %432, i64 1, !dbg !1801
  call void @llvm.dbg.value(metadata ptr %471, metadata !1463, metadata !DIExpression()), !dbg !1473
  %472 = load i8, ptr %432, align 1, !dbg !1802, !tbaa !1080
  call void @llvm.dbg.value(metadata i8 %472, metadata !1459, metadata !DIExpression()), !dbg !1473
  br label %430, !dbg !1737, !llvm.loop !1803

473:                                              ; preds = %.preheader1, %495
  %474 = phi ptr [ %496, %495 ], [ %429, %.preheader1 ], !dbg !1688
  %475 = phi ptr [ %497, %495 ], [ %388, %.preheader1 ], !dbg !1688
  %476 = phi i8 [ %498, %495 ], [ %387, %.preheader1 ], !dbg !1688
  call void @llvm.dbg.value(metadata ptr %474, metadata !1464, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i8 %476, metadata !1459, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata ptr %475, metadata !1463, metadata !DIExpression()), !dbg !1473
  %477 = icmp eq i8 %476, 9, !dbg !1805
  %478 = and i1 %.lcssa44, %477, !dbg !1808
  br i1 %478, label %479, label %482, !dbg !1808

479:                                              ; preds = %473
  %480 = getelementptr inbounds i8, ptr %474, i64 1, !dbg !1809
  call void @llvm.dbg.value(metadata ptr %480, metadata !1464, metadata !DIExpression()), !dbg !1473
  store i8 94, ptr %474, align 1, !dbg !1811, !tbaa !1080
  %481 = getelementptr inbounds i8, ptr %474, i64 2, !dbg !1812
  call void @llvm.dbg.value(metadata ptr %481, metadata !1464, metadata !DIExpression()), !dbg !1473
  store i8 73, ptr %480, align 1, !dbg !1813, !tbaa !1080
  br label %495, !dbg !1814

482:                                              ; preds = %473
  switch i8 %476, label %493 [
    i8 10, label %.loopexit2
    i8 13, label %483
  ], !dbg !1815, !llvm.loop !1792

483:                                              ; preds = %482
  %484 = load i8, ptr %475, align 1, !dbg !1816, !tbaa !1080
  %485 = icmp eq i8 %484, 10, !dbg !1820
  %486 = and i1 %.lcssa36, %485, !dbg !1821
  br i1 %486, label %487, label %493, !dbg !1821

487:                                              ; preds = %483
  %488 = icmp eq ptr %475, %385, !dbg !1822
  br i1 %488, label %489, label %490, !dbg !1825

489:                                              ; preds = %487
  store i1 true, ptr @pending_cr, align 1, !dbg !1826
  br label %495, !dbg !1827

490:                                              ; preds = %487
  %491 = getelementptr inbounds i8, ptr %474, i64 1, !dbg !1828
  call void @llvm.dbg.value(metadata ptr %491, metadata !1464, metadata !DIExpression()), !dbg !1473
  store i8 94, ptr %474, align 1, !dbg !1830, !tbaa !1080
  %492 = getelementptr inbounds i8, ptr %474, i64 2, !dbg !1831
  call void @llvm.dbg.value(metadata ptr %492, metadata !1464, metadata !DIExpression()), !dbg !1473
  store i8 77, ptr %491, align 1, !dbg !1832, !tbaa !1080
  br label %495

493:                                              ; preds = %483, %482
  %494 = getelementptr inbounds i8, ptr %474, i64 1, !dbg !1833
  call void @llvm.dbg.value(metadata ptr %494, metadata !1464, metadata !DIExpression()), !dbg !1473
  store i8 %476, ptr %474, align 1, !dbg !1834, !tbaa !1080
  br label %495

495:                                              ; preds = %493, %490, %489, %479
  %496 = phi ptr [ %494, %493 ], [ %474, %489 ], [ %492, %490 ], [ %481, %479 ], !dbg !1688
  call void @llvm.dbg.value(metadata ptr %496, metadata !1464, metadata !DIExpression()), !dbg !1473
  %497 = getelementptr inbounds i8, ptr %475, i64 1, !dbg !1835
  call void @llvm.dbg.value(metadata ptr %497, metadata !1463, metadata !DIExpression()), !dbg !1473
  %498 = load i8, ptr %475, align 1, !dbg !1836, !tbaa !1080
  call void @llvm.dbg.value(metadata i8 %498, metadata !1459, metadata !DIExpression()), !dbg !1473
  br label %473, !dbg !1734, !llvm.loop !1837

499:                                              ; preds = %264, %294, %302, %315, %319
  %500 = phi i32 [ %.lcssa14, %264 ], [ %.lcssa16, %302 ], [ %.lcssa16, %294 ], [ %.lcssa17, %319 ], [ %.lcssa17, %315 ]
  %501 = phi i1 [ false, %264 ], [ false, %302 ], [ false, %294 ], [ true, %319 ], [ true, %315 ]
  store i32 %500, ptr @newlines2, align 4, !dbg !1471, !tbaa !1071
  call void @llvm.dbg.value(metadata ptr poison, metadata !1464, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata ptr poison, metadata !1463, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata ptr poison, metadata !1462, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i8 poison, metadata !1461, metadata !DIExpression()), !dbg !1473
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #41, !dbg !1610
  tail call void @llvm.dbg.value(metadata !DIArgList(i1 %91, i1 %501), metadata !508, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1220
  call void @llvm.dbg.value(metadata ptr %219, metadata !1839, metadata !DIExpression()), !dbg !1845
  call void @free(ptr noundef nonnull %219) #41, !dbg !1847
  br label %502

.loopexit3:                                       ; preds = %200
  br label %502, !dbg !1848

.loopexit5:                                       ; preds = %179
  br label %502, !dbg !1848

502:                                              ; preds = %.loopexit5, %.loopexit3, %185, %195, %499
  %503 = phi i1 [ %501, %499 ], [ false, %195 ], [ false, %185 ], [ true, %.loopexit3 ], [ true, %.loopexit5 ]
  %504 = phi ptr [ %216, %499 ], [ %190, %195 ], [ null, %185 ], [ %190, %.loopexit3 ], [ null, %.loopexit5 ], !dbg !1848
  %505 = and i1 %91, %503, !dbg !1848
  tail call void @llvm.dbg.value(metadata ptr %504, metadata !522, metadata !DIExpression()), !dbg !1222
  tail call void @llvm.dbg.value(metadata i1 %505, metadata !508, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1220
  call void @llvm.dbg.value(metadata ptr %504, metadata !1839, metadata !DIExpression()), !dbg !1849
  call void @free(ptr noundef %504) #41, !dbg !1851
  br label %506, !dbg !1852

506:                                              ; preds = %167, %502, %117
  %507 = phi i32 [ %90, %117 ], [ %172, %502 ], [ %161, %167 ], !dbg !1220
  %508 = phi i1 [ false, %117 ], [ %505, %502 ], [ false, %167 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !508, metadata !DIExpression()), !dbg !1220
  tail call void @llvm.dbg.value(metadata i32 %507, metadata !505, metadata !DIExpression()), !dbg !1220
  call void @llvm.dbg.label(metadata !529), !dbg !1853
  br i1 %102, label %518, label %509, !dbg !1854

509:                                              ; preds = %506
  %510 = load i32, ptr @input_desc, align 4, !dbg !1856, !tbaa !1071
  %511 = call i32 @close(i32 noundef %510) #41, !dbg !1857
  %512 = icmp slt i32 %511, 0, !dbg !1858
  br i1 %512, label %513, label %518, !dbg !1859

513:                                              ; preds = %509
  %514 = tail call ptr @__errno_location() #44, !dbg !1860
  %515 = load i32, ptr %514, align 4, !dbg !1860, !tbaa !1071
  %516 = load ptr, ptr @infile, align 8, !dbg !1860, !tbaa !997
  %517 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %516) #41, !dbg !1860
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %515, ptr noundef nonnull @.str.36, ptr noundef %517) #41, !dbg !1860
  tail call void @llvm.dbg.value(metadata i8 0, metadata !508, metadata !DIExpression()), !dbg !1220
  br label %518, !dbg !1862

518:                                              ; preds = %513, %509, %506
  %519 = phi i1 [ %508, %506 ], [ false, %513 ], [ %508, %509 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !508, metadata !DIExpression()), !dbg !1220
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #41, !dbg !1863
  br label %520, !dbg !1863

520:                                              ; preds = %518, %107
  %521 = phi i32 [ %507, %518 ], [ %90, %107 ], !dbg !1292
  %522 = phi i1 [ %519, %518 ], [ false, %107 ]
  %523 = phi i1 [ %114, %518 ], [ %92, %107 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !455, metadata !DIExpression()), !dbg !1220
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !508, metadata !DIExpression()), !dbg !1220
  tail call void @llvm.dbg.value(metadata i32 %521, metadata !505, metadata !DIExpression()), !dbg !1220
  %524 = add nsw i64 %89, 1, !dbg !1864
  tail call void @llvm.dbg.value(metadata i64 %524, metadata !507, metadata !DIExpression()), !dbg !1220
  %525 = icmp slt i64 %524, %87, !dbg !1865
  br i1 %525, label %88, label %526, !dbg !1866, !llvm.loop !1867

526:                                              ; preds = %520
  %.lcssa22 = phi i1 [ %522, %520 ]
  %.lcssa21 = phi i1 [ %523, %520 ]
  %527 = load i1, ptr @pending_cr, align 1, !dbg !1869
  br i1 %527, label %528, label %540, !dbg !1871

528:                                              ; preds = %526
  %529 = call i64 @full_write(i32 noundef 1, ptr noundef nonnull @.str.38, i64 noundef 1) #41, !dbg !1872
  %530 = icmp eq i64 %529, 1, !dbg !1875
  br i1 %530, label %540, label %531, !dbg !1876

531:                                              ; preds = %528
  %532 = tail call ptr @__errno_location() #44, !dbg !1877
  %533 = load i32, ptr %532, align 4, !dbg !1877, !tbaa !1071
  call void @llvm.dbg.value(metadata i32 %533, metadata !1425, metadata !DIExpression()), !dbg !1879
  %534 = load ptr, ptr @stdout, align 8, !dbg !1880, !tbaa !997
  %535 = call i32 @fflush_unlocked(ptr noundef %534) #41, !dbg !1880
  %536 = load ptr, ptr @stdout, align 8, !dbg !1881, !tbaa !997
  %537 = call i32 @fpurge(ptr noundef %536) #41, !dbg !1882
  %538 = load ptr, ptr @stdout, align 8, !dbg !1883, !tbaa !997
  call void @clearerr_unlocked(ptr noundef %538) #41, !dbg !1883
  %539 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.77, i32 noundef 5) #41, !dbg !1884
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %533, ptr noundef %539) #41, !dbg !1884
  unreachable, !dbg !1884

540:                                              ; preds = %528, %526
  br i1 %.lcssa21, label %541, label %548, !dbg !1885

541:                                              ; preds = %540
  %542 = call i32 @close(i32 noundef 0) #41, !dbg !1887
  %543 = icmp slt i32 %542, 0, !dbg !1888
  br i1 %543, label %544, label %548, !dbg !1889

544:                                              ; preds = %541
  %545 = tail call ptr @__errno_location() #44, !dbg !1890
  %546 = load i32, ptr %545, align 4, !dbg !1890, !tbaa !1071
  %547 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.39, i32 noundef 5) #41, !dbg !1890
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %546, ptr noundef %547) #41, !dbg !1890
  unreachable, !dbg !1890

548:                                              ; preds = %541, %540
  %549 = xor i1 %.lcssa22, true, !dbg !1891
  %550 = zext i1 %549 to i32, !dbg !1891
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #41, !dbg !1892
  ret i32 %550, !dbg !1892
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nounwind
declare !dbg !1893 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1896 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1897 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1900 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !1906 noundef i32 @fstat(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1911 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1915 i32 @getpagesize() local_unnamed_addr #9

; Function Attrs: nofree
declare !dbg !1917 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #12

; Function Attrs: nounwind
declare !dbg !1921 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #12

declare !dbg !1924 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1927 void @clearerr_unlocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #13

; Function Attrs: nounwind
declare !dbg !1930 i32 @ioctl(i32 noundef, i64 noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @stpcpy(ptr noalias writeonly, ptr noalias nocapture readonly) #14

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1934 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

declare !dbg !1935 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #16 !dbg !1938 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1940, metadata !DIExpression()), !dbg !1941
  store ptr %0, ptr @file_name, align 8, !dbg !1942, !tbaa !997
  ret void, !dbg !1943
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #16 !dbg !1944 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1948, metadata !DIExpression()), !dbg !1949
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1950, !tbaa !1951
  ret void, !dbg !1953
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1954 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1959, !tbaa !997
  %2 = tail call i32 @close_stream(ptr noundef %1) #41, !dbg !1960
  %3 = icmp eq i32 %2, 0, !dbg !1961
  br i1 %3, label %22, label %4, !dbg !1962

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1963, !tbaa !1951, !range !1964, !noundef !1039
  %6 = icmp eq i8 %5, 0, !dbg !1963
  br i1 %6, label %11, label %7, !dbg !1965

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #44, !dbg !1966
  %9 = load i32, ptr %8, align 4, !dbg !1966, !tbaa !1071
  %10 = icmp eq i32 %9, 32, !dbg !1967
  br i1 %10, label %22, label %11, !dbg !1968

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.1.49, i32 noundef 5) #41, !dbg !1969
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1956, metadata !DIExpression()), !dbg !1970
  %13 = load ptr, ptr @file_name, align 8, !dbg !1971, !tbaa !997
  %14 = icmp eq ptr %13, null, !dbg !1971
  %15 = tail call ptr @__errno_location() #44, !dbg !1973
  %16 = load i32, ptr %15, align 4, !dbg !1973, !tbaa !1071
  br i1 %14, label %19, label %17, !dbg !1974

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #41, !dbg !1975
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.50, ptr noundef %18, ptr noundef %12) #41, !dbg !1975
  br label %20, !dbg !1975

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.51, ptr noundef %12) #41, !dbg !1976
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1977, !tbaa !1071
  tail call void @_exit(i32 noundef %21) #43, !dbg !1978
  unreachable, !dbg !1978

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1979, !tbaa !997
  %24 = tail call i32 @close_stream(ptr noundef %23) #41, !dbg !1981
  %25 = icmp eq i32 %24, 0, !dbg !1982
  br i1 %25, label %28, label %26, !dbg !1983

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1984, !tbaa !1071
  tail call void @_exit(i32 noundef %27) #43, !dbg !1985
  unreachable, !dbg !1985

28:                                               ; preds = %22
  ret void, !dbg !1986
}

; Function Attrs: noreturn
declare !dbg !1987 void @_exit(i32 noundef) local_unnamed_addr #17

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_copy_file_range(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #10 !dbg !1988 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1995, metadata !DIExpression()), !dbg !2002
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1996, metadata !DIExpression()), !dbg !2002
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1997, metadata !DIExpression()), !dbg !2002
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1998, metadata !DIExpression()), !dbg !2002
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !1999, metadata !DIExpression()), !dbg !2002
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2000, metadata !DIExpression()), !dbg !2002
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2001, metadata !DIExpression()), !dbg !2002
  %7 = tail call i64 @llvm.umin.i64(i64 %4, i64 2146435072), !dbg !2003
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !1999, metadata !DIExpression()), !dbg !2002
  %8 = tail call i64 @copy_file_range(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %7, i32 noundef %5) #41, !dbg !2006
  ret i64 %8, !dbg !2007
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

declare !dbg !2008 i64 @copy_file_range(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #18 !dbg !2012 {
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2016, metadata !DIExpression()), !dbg !2020
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2017, metadata !DIExpression()), !dbg !2020
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2018, metadata !DIExpression()), !dbg !2020
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2019, metadata !DIExpression(DW_OP_deref)), !dbg !2020
  tail call fastcc void @flush_stdout(), !dbg !2021
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !2022, !tbaa !997
  %7 = icmp eq ptr %6, null, !dbg !2022
  br i1 %7, label %9, label %8, !dbg !2024

8:                                                ; preds = %4
  tail call void %6() #41, !dbg !2025
  br label %13, !dbg !2025

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !2026, !tbaa !997
  %11 = tail call ptr @getprogname() #42, !dbg !2026
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.54, ptr noundef %11) #41, !dbg !2026
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #41, !dbg !2028
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !2028, !tbaa.struct !2029
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !2028
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #41, !dbg !2028
  ret void, !dbg !2030
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !2031 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2033, metadata !DIExpression()), !dbg !2034
  call void @llvm.dbg.value(metadata i32 1, metadata !2035, metadata !DIExpression()), !dbg !2038
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #41, !dbg !2041
  %2 = icmp slt i32 %1, 0, !dbg !2042
  br i1 %2, label %6, label %3, !dbg !2043

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !2044, !tbaa !997
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #41, !dbg !2044
  br label %6, !dbg !2044

6:                                                ; preds = %3, %0
  ret void, !dbg !2045
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !2046 {
  %5 = alloca [1024 x i8], align 1, !DIAssignID !2052
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2048, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2049, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2050, metadata !DIExpression()), !dbg !2053
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2051, metadata !DIExpression(DW_OP_deref)), !dbg !2053
  %7 = load ptr, ptr @stderr, align 8, !dbg !2054, !tbaa !997
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #41, !dbg !2055, !noalias !2099
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !2103
  call void @llvm.dbg.value(metadata ptr %7, metadata !2095, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata ptr %2, metadata !2096, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata ptr poison, metadata !2097, metadata !DIExpression(DW_OP_deref)), !dbg !2104
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #41, !dbg !2055
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #41, !dbg !2055, !noalias !2099
  %9 = load i32, ptr @error_message_count, align 4, !dbg !2105, !tbaa !1071
  %10 = add i32 %9, 1, !dbg !2105
  store i32 %10, ptr @error_message_count, align 4, !dbg !2105, !tbaa !1071
  %11 = icmp eq i32 %1, 0, !dbg !2106
  br i1 %11, label %21, label %12, !dbg !2108

12:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2109, metadata !DIExpression(), metadata !2052, metadata ptr %5, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata i32 %1, metadata !2112, metadata !DIExpression()), !dbg !2117
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #41, !dbg !2119
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #41, !dbg !2120
  call void @llvm.dbg.value(metadata ptr %13, metadata !2113, metadata !DIExpression()), !dbg !2117
  %14 = icmp eq ptr %13, null, !dbg !2121
  br i1 %14, label %15, label %17, !dbg !2123

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.55, ptr noundef nonnull @.str.5.56, i32 noundef 5) #41, !dbg !2124
  call void @llvm.dbg.value(metadata ptr %16, metadata !2113, metadata !DIExpression()), !dbg !2117
  br label %17, !dbg !2125

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !2117
  call void @llvm.dbg.value(metadata ptr %18, metadata !2113, metadata !DIExpression()), !dbg !2117
  %19 = load ptr, ptr @stderr, align 8, !dbg !2126, !tbaa !997
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.57, ptr noundef %18) #41, !dbg !2126
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #41, !dbg !2127
  br label %21, !dbg !2128

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !2129, !tbaa !997
  call void @llvm.dbg.value(metadata i32 10, metadata !2130, metadata !DIExpression()), !dbg !2137
  call void @llvm.dbg.value(metadata ptr %22, metadata !2136, metadata !DIExpression()), !dbg !2137
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !2139
  %24 = load ptr, ptr %23, align 8, !dbg !2139, !tbaa !2140
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !2139
  %26 = load ptr, ptr %25, align 8, !dbg !2139, !tbaa !2142
  %27 = icmp ult ptr %24, %26, !dbg !2139
  br i1 %27, label %30, label %28, !dbg !2139, !prof !2143

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #41, !dbg !2139
  br label %32, !dbg !2139

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !2139
  store ptr %31, ptr %23, align 8, !dbg !2139, !tbaa !2140
  store i8 10, ptr %24, align 1, !dbg !2139, !tbaa !1080
  br label %32, !dbg !2139

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !2144, !tbaa !997
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #41, !dbg !2144
  %35 = icmp eq i32 %0, 0, !dbg !2145
  br i1 %35, label %37, label %36, !dbg !2147

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #43, !dbg !2148
  unreachable, !dbg !2148

37:                                               ; preds = %32
  ret void, !dbg !2149
}

declare !dbg !2150 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !2153 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2156 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !2159 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !2162 {
  %4 = alloca %struct.__va_list, align 8, !DIAssignID !2170
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2169, metadata !DIExpression(), metadata !2170, metadata ptr %4, metadata !DIExpression()), !dbg !2171
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2166, metadata !DIExpression()), !dbg !2171
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2167, metadata !DIExpression()), !dbg !2171
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2168, metadata !DIExpression()), !dbg !2171
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #41, !dbg !2172
  call void @llvm.va_start(ptr nonnull %4), !dbg !2173
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #41, !dbg !2174
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !2174, !tbaa.struct !2029
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #47, !dbg !2174
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #41, !dbg !2174
  call void @llvm.va_end(ptr nonnull %4), !dbg !2175
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #41, !dbg !2176
  ret void, !dbg !2176
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #19

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #18 !dbg !573 {
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !588, metadata !DIExpression()), !dbg !2177
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !589, metadata !DIExpression()), !dbg !2177
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !590, metadata !DIExpression()), !dbg !2177
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !591, metadata !DIExpression()), !dbg !2177
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !592, metadata !DIExpression()), !dbg !2177
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !593, metadata !DIExpression(DW_OP_deref)), !dbg !2177
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !2178, !tbaa !1071
  %9 = icmp eq i32 %8, 0, !dbg !2178
  br i1 %9, label %24, label %10, !dbg !2180

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !2181, !tbaa !1071
  %12 = icmp eq i32 %11, %3, !dbg !2184
  br i1 %12, label %13, label %23, !dbg !2185

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !2186, !tbaa !997
  %15 = icmp eq ptr %14, %2, !dbg !2187
  br i1 %15, label %37, label %16, !dbg !2188

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !2189
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !2190
  br i1 %19, label %20, label %23, !dbg !2190

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #42, !dbg !2191
  %22 = icmp eq i32 %21, 0, !dbg !2192
  br i1 %22, label %37, label %23, !dbg !2193

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !2194, !tbaa !997
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !2195, !tbaa !1071
  br label %24, !dbg !2196

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !2197
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !2198, !tbaa !997
  %26 = icmp eq ptr %25, null, !dbg !2198
  br i1 %26, label %28, label %27, !dbg !2200

27:                                               ; preds = %24
  tail call void %25() #41, !dbg !2201
  br label %32, !dbg !2201

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !2202, !tbaa !997
  %30 = tail call ptr @getprogname() #42, !dbg !2202
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.60, ptr noundef %30) #41, !dbg !2202
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !2204, !tbaa !997
  %34 = icmp eq ptr %2, null, !dbg !2204
  %35 = select i1 %34, ptr @.str.3.61, ptr @.str.2.62, !dbg !2204
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #41, !dbg !2204
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #41, !dbg !2205
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !2205, !tbaa.struct !2029
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !2205
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #41, !dbg !2205
  br label %37, !dbg !2206

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !2206
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !2207 {
  %6 = alloca %struct.__va_list, align 8, !DIAssignID !2217
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2216, metadata !DIExpression(), metadata !2217, metadata ptr %6, metadata !DIExpression()), !dbg !2218
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2211, metadata !DIExpression()), !dbg !2218
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2212, metadata !DIExpression()), !dbg !2218
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2213, metadata !DIExpression()), !dbg !2218
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2214, metadata !DIExpression()), !dbg !2218
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2215, metadata !DIExpression()), !dbg !2218
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #41, !dbg !2219
  call void @llvm.va_start(ptr nonnull %6), !dbg !2220
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #41, !dbg !2221
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !2221, !tbaa.struct !2029
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #47, !dbg !2221
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #41, !dbg !2221
  call void @llvm.va_end(ptr nonnull %6), !dbg !2222
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #41, !dbg !2223
  ret void, !dbg !2223
}

; Function Attrs: nounwind uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #10 !dbg !2224 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2229, metadata !DIExpression()), !dbg !2233
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2230, metadata !DIExpression()), !dbg !2233
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2231, metadata !DIExpression()), !dbg !2233
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2232, metadata !DIExpression()), !dbg !2233
  %5 = tail call i32 @posix_fadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #41, !dbg !2234
  ret void, !dbg !2235
}

; Function Attrs: nounwind
declare !dbg !2236 i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fadvise(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !2239 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2277, metadata !DIExpression()), !dbg !2279
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2278, metadata !DIExpression()), !dbg !2279
  %3 = icmp eq ptr %0, null, !dbg !2280
  br i1 %3, label %7, label %4, !dbg !2282

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(ptr noundef nonnull %0) #41, !dbg !2283
  call void @llvm.dbg.value(metadata i32 %5, metadata !2229, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata i64 0, metadata !2230, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata i64 0, metadata !2231, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata i32 %1, metadata !2232, metadata !DIExpression()), !dbg !2284
  %6 = tail call i32 @posix_fadvise(i32 noundef %5, i64 noundef 0, i64 noundef 0, i32 noundef %1) #41, !dbg !2286
  br label %7, !dbg !2287

7:                                                ; preds = %4, %2
  ret void, !dbg !2288
}

; Function Attrs: nofree nounwind
declare !dbg !2289 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fcntl(i32 noundef %0, i32 noundef %1, ...) local_unnamed_addr #10 !dbg !2292 {
  %3 = alloca %struct.__va_list, align 8, !DIAssignID !2319
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2296, metadata !DIExpression(), metadata !2319, metadata ptr %3, metadata !DIExpression()), !dbg !2320
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2294, metadata !DIExpression()), !dbg !2320
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2295, metadata !DIExpression()), !dbg !2320
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #41, !dbg !2321
  call void @llvm.va_start(ptr nonnull %3), !dbg !2322
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !2307, metadata !DIExpression()), !dbg !2320
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
  ], !dbg !2323

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !2324
  %6 = load i32, ptr %5, align 8, !dbg !2324
  %7 = icmp sgt i32 %6, -1, !dbg !2324
  br i1 %7, label %16, label %8, !dbg !2324

8:                                                ; preds = %4
  %9 = add nsw i32 %6, 8, !dbg !2324
  store i32 %9, ptr %5, align 8, !dbg !2324, !DIAssignID !2325
  call void @llvm.dbg.assign(metadata i32 %9, metadata !2296, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32), metadata !2325, metadata ptr %5, metadata !DIExpression()), !dbg !2320
  %10 = icmp ult i32 %6, -7, !dbg !2324
  br i1 %10, label %11, label %16, !dbg !2324

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !2324
  %13 = load ptr, ptr %12, align 8, !dbg !2324
  %14 = sext i32 %6 to i64, !dbg !2324
  %15 = getelementptr inbounds i8, ptr %13, i64 %14, !dbg !2324
  br label %19, !dbg !2324

16:                                               ; preds = %8, %4
  %17 = load ptr, ptr %3, align 8, !dbg !2324
  %18 = getelementptr inbounds i8, ptr %17, i64 8, !dbg !2324
  store ptr %18, ptr %3, align 8, !dbg !2324, !DIAssignID !2326
  call void @llvm.dbg.assign(metadata ptr %18, metadata !2296, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !2326, metadata ptr %3, metadata !DIExpression()), !dbg !2320
  br label %19, !dbg !2324

19:                                               ; preds = %16, %11
  %20 = phi ptr [ %15, %11 ], [ %17, %16 ], !dbg !2324
  %21 = load i32, ptr %20, align 8, !dbg !2324
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !2308, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.value(metadata i32 %0, metadata !2328, metadata !DIExpression()), !dbg !2333
  call void @llvm.dbg.value(metadata i32 %21, metadata !2331, metadata !DIExpression()), !dbg !2333
  %22 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %21) #41, !dbg !2335
  call void @llvm.dbg.value(metadata i32 %22, metadata !2332, metadata !DIExpression()), !dbg !2333
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !2307, metadata !DIExpression()), !dbg !2320
  br label %115

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !2336
  %25 = load i32, ptr %24, align 8, !dbg !2336
  %26 = icmp sgt i32 %25, -1, !dbg !2336
  br i1 %26, label %35, label %27, !dbg !2336

27:                                               ; preds = %23
  %28 = add nsw i32 %25, 8, !dbg !2336
  store i32 %28, ptr %24, align 8, !dbg !2336, !DIAssignID !2337
  call void @llvm.dbg.assign(metadata i32 %28, metadata !2296, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32), metadata !2337, metadata ptr %24, metadata !DIExpression()), !dbg !2320
  %29 = icmp ult i32 %25, -7, !dbg !2336
  br i1 %29, label %30, label %35, !dbg !2336

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !2336
  %32 = load ptr, ptr %31, align 8, !dbg !2336
  %33 = sext i32 %25 to i64, !dbg !2336
  %34 = getelementptr inbounds i8, ptr %32, i64 %33, !dbg !2336
  br label %38, !dbg !2336

35:                                               ; preds = %27, %23
  %36 = load ptr, ptr %3, align 8, !dbg !2336
  %37 = getelementptr inbounds i8, ptr %36, i64 8, !dbg !2336
  store ptr %37, ptr %3, align 8, !dbg !2336, !DIAssignID !2338
  call void @llvm.dbg.assign(metadata ptr %37, metadata !2296, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !2338, metadata ptr %3, metadata !DIExpression()), !dbg !2320
  br label %38, !dbg !2336

38:                                               ; preds = %35, %30
  %39 = phi ptr [ %34, %30 ], [ %36, %35 ], !dbg !2336
  %40 = load i32, ptr %39, align 8, !dbg !2336
  tail call void @llvm.dbg.value(metadata i32 %40, metadata !2311, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata i32 %0, metadata !627, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i32 %40, metadata !628, metadata !DIExpression()), !dbg !2340
  %41 = load i32, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !2342, !tbaa !1071
  %42 = icmp sgt i32 %41, -1, !dbg !2344
  br i1 %42, label %43, label %55, !dbg !2345

43:                                               ; preds = %38
  %44 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 1030, i32 noundef %40) #41, !dbg !2346
  call void @llvm.dbg.value(metadata i32 %44, metadata !629, metadata !DIExpression()), !dbg !2340
  %45 = icmp sgt i32 %44, -1, !dbg !2348
  br i1 %45, label %50, label %46, !dbg !2350

46:                                               ; preds = %43
  %47 = tail call ptr @__errno_location() #44, !dbg !2351
  %48 = load i32, ptr %47, align 4, !dbg !2351, !tbaa !1071
  %49 = icmp eq i32 %48, 22, !dbg !2352
  br i1 %49, label %51, label %50, !dbg !2353

50:                                               ; preds = %46, %43
  store i32 1, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !2354, !tbaa !1071
  call void @llvm.dbg.value(metadata i32 %44, metadata !629, metadata !DIExpression()), !dbg !2340
  br label %115, !dbg !2356

51:                                               ; preds = %46
  call void @llvm.dbg.value(metadata i32 %0, metadata !2328, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata i32 %40, metadata !2331, metadata !DIExpression()), !dbg !2357
  %52 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %40) #41, !dbg !2360
  call void @llvm.dbg.value(metadata i32 %52, metadata !2332, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata i32 %52, metadata !629, metadata !DIExpression()), !dbg !2340
  %53 = icmp sgt i32 %52, -1, !dbg !2361
  br i1 %53, label %54, label %115, !dbg !2363

54:                                               ; preds = %51
  store i32 -1, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !2364, !tbaa !1071
  br label %59, !dbg !2365

55:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i32 %0, metadata !2328, metadata !DIExpression()), !dbg !2366
  call void @llvm.dbg.value(metadata i32 %40, metadata !2331, metadata !DIExpression()), !dbg !2366
  %56 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %40) #41, !dbg !2368
  call void @llvm.dbg.value(metadata i32 %56, metadata !2332, metadata !DIExpression()), !dbg !2366
  call void @llvm.dbg.value(metadata i32 %56, metadata !629, metadata !DIExpression()), !dbg !2340
  %57 = load i32, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4
  %58 = icmp eq i32 %57, -1
  br label %59

59:                                               ; preds = %55, %54
  %60 = phi i1 [ true, %54 ], [ %58, %55 ]
  %61 = phi i32 [ %52, %54 ], [ %56, %55 ], !dbg !2369
  call void @llvm.dbg.value(metadata i32 %61, metadata !629, metadata !DIExpression()), !dbg !2340
  %62 = icmp sgt i32 %61, -1, !dbg !2370
  %63 = select i1 %62, i1 %60, i1 false, !dbg !2356
  br i1 %63, label %64, label %115, !dbg !2356

64:                                               ; preds = %59
  %65 = call i32 (i32, i32, ...) @fcntl(i32 noundef %61, i32 noundef 1) #41, !dbg !2371
  call void @llvm.dbg.value(metadata i32 %65, metadata !630, metadata !DIExpression()), !dbg !2372
  %66 = icmp slt i32 %65, 0, !dbg !2373
  br i1 %66, label %71, label %67, !dbg !2374

67:                                               ; preds = %64
  %68 = or i32 %65, 1, !dbg !2375
  %69 = call i32 (i32, i32, ...) @fcntl(i32 noundef %61, i32 noundef 2, i32 noundef %68) #41, !dbg !2376
  %70 = icmp eq i32 %69, -1, !dbg !2377
  br i1 %70, label %71, label %115, !dbg !2378

71:                                               ; preds = %67, %64
  %72 = tail call ptr @__errno_location() #44, !dbg !2379
  %73 = load i32, ptr %72, align 4, !dbg !2379, !tbaa !1071
  call void @llvm.dbg.value(metadata i32 %73, metadata !633, metadata !DIExpression()), !dbg !2380
  %74 = call i32 @close(i32 noundef %61) #41, !dbg !2381
  store i32 %73, ptr %72, align 4, !dbg !2382, !tbaa !1071
  call void @llvm.dbg.value(metadata i32 -1, metadata !629, metadata !DIExpression()), !dbg !2340
  br label %115, !dbg !2383

75:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %76 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1) #41, !dbg !2384
  tail call void @llvm.dbg.value(metadata i32 %76, metadata !2307, metadata !DIExpression()), !dbg !2320
  br label %115, !dbg !2385

77:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %78 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !2386
  %79 = load i32, ptr %78, align 8, !dbg !2386
  %80 = icmp sgt i32 %79, -1, !dbg !2386
  br i1 %80, label %89, label %81, !dbg !2386

81:                                               ; preds = %77
  %82 = add nsw i32 %79, 8, !dbg !2386
  store i32 %82, ptr %78, align 8, !dbg !2386, !DIAssignID !2387
  call void @llvm.dbg.assign(metadata i32 %82, metadata !2296, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32), metadata !2387, metadata ptr %78, metadata !DIExpression()), !dbg !2320
  %83 = icmp ult i32 %79, -7, !dbg !2386
  br i1 %83, label %84, label %89, !dbg !2386

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !2386
  %86 = load ptr, ptr %85, align 8, !dbg !2386
  %87 = sext i32 %79 to i64, !dbg !2386
  %88 = getelementptr inbounds i8, ptr %86, i64 %87, !dbg !2386
  br label %92, !dbg !2386

89:                                               ; preds = %81, %77
  %90 = load ptr, ptr %3, align 8, !dbg !2386
  %91 = getelementptr inbounds i8, ptr %90, i64 8, !dbg !2386
  store ptr %91, ptr %3, align 8, !dbg !2386, !DIAssignID !2388
  call void @llvm.dbg.assign(metadata ptr %91, metadata !2296, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !2388, metadata ptr %3, metadata !DIExpression()), !dbg !2320
  br label %92, !dbg !2386

92:                                               ; preds = %89, %84
  %93 = phi ptr [ %88, %84 ], [ %90, %89 ], !dbg !2386
  %94 = load i32, ptr %93, align 8, !dbg !2386
  tail call void @llvm.dbg.value(metadata i32 %94, metadata !2313, metadata !DIExpression()), !dbg !2389
  %95 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, i32 noundef %94) #41, !dbg !2390
  tail call void @llvm.dbg.value(metadata i32 %95, metadata !2307, metadata !DIExpression()), !dbg !2320
  br label %115, !dbg !2391

96:                                               ; preds = %2
  %97 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !2392
  %98 = load i32, ptr %97, align 8, !dbg !2392
  %99 = icmp sgt i32 %98, -1, !dbg !2392
  br i1 %99, label %108, label %100, !dbg !2392

100:                                              ; preds = %96
  %101 = add nsw i32 %98, 8, !dbg !2392
  store i32 %101, ptr %97, align 8, !dbg !2392, !DIAssignID !2393
  call void @llvm.dbg.assign(metadata i32 %101, metadata !2296, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32), metadata !2393, metadata ptr %97, metadata !DIExpression()), !dbg !2320
  %102 = icmp ult i32 %98, -7, !dbg !2392
  br i1 %102, label %103, label %108, !dbg !2392

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !2392
  %105 = load ptr, ptr %104, align 8, !dbg !2392
  %106 = sext i32 %98 to i64, !dbg !2392
  %107 = getelementptr inbounds i8, ptr %105, i64 %106, !dbg !2392
  br label %111, !dbg !2392

108:                                              ; preds = %100, %96
  %109 = load ptr, ptr %3, align 8, !dbg !2392
  %110 = getelementptr inbounds i8, ptr %109, i64 8, !dbg !2392
  store ptr %110, ptr %3, align 8, !dbg !2392, !DIAssignID !2394
  call void @llvm.dbg.assign(metadata ptr %110, metadata !2296, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !2394, metadata ptr %3, metadata !DIExpression()), !dbg !2320
  br label %111, !dbg !2392

111:                                              ; preds = %108, %103
  %112 = phi ptr [ %107, %103 ], [ %109, %108 ], !dbg !2392
  %113 = load ptr, ptr %112, align 8, !dbg !2392
  tail call void @llvm.dbg.value(metadata ptr %113, metadata !2317, metadata !DIExpression()), !dbg !2395
  %114 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, ptr noundef %113) #41, !dbg !2396
  tail call void @llvm.dbg.value(metadata i32 %114, metadata !2307, metadata !DIExpression()), !dbg !2320
  br label %115, !dbg !2397

115:                                              ; preds = %71, %67, %59, %51, %50, %75, %92, %111, %19
  %116 = phi i32 [ %114, %111 ], [ %95, %92 ], [ %76, %75 ], [ %22, %19 ], [ %61, %59 ], [ -1, %71 ], [ %61, %67 ], [ %52, %51 ], [ %44, %50 ], !dbg !2398
  tail call void @llvm.dbg.value(metadata i32 %116, metadata !2307, metadata !DIExpression()), !dbg !2320
  call void @llvm.va_end(ptr nonnull %3), !dbg !2399
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #41, !dbg !2400
  ret i32 %116, !dbg !2401
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @fpurge(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2402 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2440, metadata !DIExpression()), !dbg !2441
  tail call void @__fpurge(ptr noundef nonnull %0) #41, !dbg !2442
  ret i32 0, !dbg !2443
}

; Function Attrs: nounwind
declare !dbg !2444 void @__fpurge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @full_write(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2448 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2452, metadata !DIExpression()), !dbg !2459
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2453, metadata !DIExpression()), !dbg !2459
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2454, metadata !DIExpression()), !dbg !2459
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2455, metadata !DIExpression()), !dbg !2459
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2456, metadata !DIExpression()), !dbg !2459
  %4 = icmp sgt i64 %2, 0, !dbg !2460
  br i1 %4, label %.preheader, label %20, !dbg !2461

.preheader:                                       ; preds = %3
  br label %5, !dbg !2462

5:                                                ; preds = %.preheader, %15
  %6 = phi i64 [ %18, %15 ], [ %2, %.preheader ]
  %7 = phi ptr [ %17, %15 ], [ %1, %.preheader ]
  %8 = phi i64 [ %16, %15 ], [ 0, %.preheader ]
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !2454, metadata !DIExpression()), !dbg !2459
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2456, metadata !DIExpression()), !dbg !2459
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !2455, metadata !DIExpression()), !dbg !2459
  %9 = tail call i64 @safe_write(i32 noundef %0, ptr noundef %7, i64 noundef %6) #41, !dbg !2463
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !2457, metadata !DIExpression()), !dbg !2464
  %10 = icmp slt i64 %9, 0, !dbg !2465
  br i1 %10, label %.loopexit, label %11, !dbg !2462

11:                                               ; preds = %5
  %12 = icmp eq i64 %9, 0, !dbg !2467
  br i1 %12, label %13, label %15, !dbg !2469

13:                                               ; preds = %11
  %.lcssa1 = phi i64 [ %8, %11 ]
  %14 = tail call ptr @__errno_location() #44, !dbg !2470
  store i32 28, ptr %14, align 4, !dbg !2472, !tbaa !1071
  br label %20, !dbg !2473

15:                                               ; preds = %11
  %16 = add nuw nsw i64 %9, %8, !dbg !2474
  tail call void @llvm.dbg.value(metadata i64 %16, metadata !2455, metadata !DIExpression()), !dbg !2459
  %17 = getelementptr inbounds i8, ptr %7, i64 %9, !dbg !2475
  tail call void @llvm.dbg.value(metadata ptr %17, metadata !2456, metadata !DIExpression()), !dbg !2459
  %18 = sub nsw i64 %6, %9, !dbg !2476
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !2454, metadata !DIExpression()), !dbg !2459
  %19 = icmp sgt i64 %18, 0, !dbg !2460
  br i1 %19, label %5, label %.loopexit, !dbg !2461

.loopexit:                                        ; preds = %5, %15
  %.ph = phi i64 [ %8, %5 ], [ %16, %15 ]
  br label %20, !dbg !2477

20:                                               ; preds = %.loopexit, %3, %13
  %21 = phi i64 [ %.lcssa1, %13 ], [ 0, %3 ], [ %.ph, %.loopexit ]
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2455, metadata !DIExpression()), !dbg !2459
  ret i64 %21, !dbg !2477
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #20 !dbg !2478 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2480, !tbaa !997
  ret ptr %1, !dbg !2481
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #21 !dbg !2482 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2484, metadata !DIExpression()), !dbg !2487
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #42, !dbg !2488
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2485, metadata !DIExpression()), !dbg !2487
  %3 = icmp eq ptr %2, null, !dbg !2489
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2489
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2489
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2486, metadata !DIExpression()), !dbg !2487
  %6 = ptrtoint ptr %5 to i64, !dbg !2490
  %7 = ptrtoint ptr %0 to i64, !dbg !2490
  %8 = sub i64 %6, %7, !dbg !2490
  %9 = icmp sgt i64 %8, 6, !dbg !2492
  br i1 %9, label %10, label %19, !dbg !2493

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2494
  call void @llvm.dbg.value(metadata ptr %11, metadata !2495, metadata !DIExpression()), !dbg !2502
  call void @llvm.dbg.value(metadata ptr @.str.79, metadata !2500, metadata !DIExpression()), !dbg !2502
  call void @llvm.dbg.value(metadata i64 7, metadata !2501, metadata !DIExpression()), !dbg !2502
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.79, i64 7), !dbg !2504
  %13 = icmp eq i32 %12, 0, !dbg !2505
  br i1 %13, label %14, label %19, !dbg !2506

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2484, metadata !DIExpression()), !dbg !2487
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.80, i64 noundef 3) #42, !dbg !2507
  %16 = icmp eq i32 %15, 0, !dbg !2510
  %17 = select i1 %16, i64 3, i64 0, !dbg !2511
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !2511
  br label %19, !dbg !2511

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2487
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2486, metadata !DIExpression()), !dbg !2487
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !2484, metadata !DIExpression()), !dbg !2487
  store ptr %20, ptr @program_name, align 8, !dbg !2512, !tbaa !997
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2513, !tbaa !997
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2514, !tbaa !997
  ret void, !dbg !2515
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2516 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #22

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !648 {
  %3 = alloca i32, align 4, !DIAssignID !2517
  call void @llvm.dbg.assign(metadata i1 undef, metadata !658, metadata !DIExpression(), metadata !2517, metadata ptr %3, metadata !DIExpression()), !dbg !2518
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2519
  call void @llvm.dbg.assign(metadata i1 undef, metadata !663, metadata !DIExpression(), metadata !2519, metadata ptr %4, metadata !DIExpression()), !dbg !2518
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !655, metadata !DIExpression()), !dbg !2518
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !656, metadata !DIExpression()), !dbg !2518
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #41, !dbg !2520
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !657, metadata !DIExpression()), !dbg !2518
  %6 = icmp eq ptr %5, %0, !dbg !2521
  br i1 %6, label %7, label %14, !dbg !2523

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #41, !dbg !2524
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #41, !dbg !2525
  call void @llvm.dbg.value(metadata ptr %4, metadata !2526, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata ptr %4, metadata !2535, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i32 0, metadata !2540, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i64 8, metadata !2541, metadata !DIExpression()), !dbg !2542
  store i64 0, ptr %4, align 8, !dbg !2544
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #41, !dbg !2545
  %9 = icmp eq i64 %8, 2, !dbg !2547
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2548
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2518
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #41, !dbg !2549
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #41, !dbg !2549
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2518
  ret ptr %15, !dbg !2549
}

; Function Attrs: nounwind
declare !dbg !2550 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2556 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2561, metadata !DIExpression()), !dbg !2564
  %2 = tail call ptr @__errno_location() #44, !dbg !2565
  %3 = load i32, ptr %2, align 4, !dbg !2565, !tbaa !1071
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2562, metadata !DIExpression()), !dbg !2564
  %4 = icmp eq ptr %0, null, !dbg !2566
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2566
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #46, !dbg !2567
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2563, metadata !DIExpression()), !dbg !2564
  store i32 %3, ptr %2, align 4, !dbg !2568, !tbaa !1071
  ret ptr %6, !dbg !2569
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #23 !dbg !2570 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2576, metadata !DIExpression()), !dbg !2577
  %2 = icmp eq ptr %0, null, !dbg !2578
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2578
  %4 = load i32, ptr %3, align 8, !dbg !2579, !tbaa !2580
  ret i32 %4, !dbg !2582
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #24 !dbg !2583 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2587, metadata !DIExpression()), !dbg !2589
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2588, metadata !DIExpression()), !dbg !2589
  %3 = icmp eq ptr %0, null, !dbg !2590
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2590
  store i32 %1, ptr %4, align 8, !dbg !2591, !tbaa !2580
  ret void, !dbg !2592
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #25 !dbg !2593 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2597, metadata !DIExpression()), !dbg !2605
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2598, metadata !DIExpression()), !dbg !2605
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2599, metadata !DIExpression()), !dbg !2605
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2600, metadata !DIExpression()), !dbg !2605
  %4 = icmp eq ptr %0, null, !dbg !2606
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2606
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2607
  %7 = lshr i8 %1, 5, !dbg !2608
  %8 = zext nneg i8 %7 to i64, !dbg !2608
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2609
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2601, metadata !DIExpression()), !dbg !2605
  %10 = and i8 %1, 31, !dbg !2610
  %11 = zext nneg i8 %10 to i32, !dbg !2610
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !2603, metadata !DIExpression()), !dbg !2605
  %12 = load i32, ptr %9, align 4, !dbg !2611, !tbaa !1071
  %13 = lshr i32 %12, %11, !dbg !2612
  %14 = and i32 %13, 1, !dbg !2613
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !2604, metadata !DIExpression()), !dbg !2605
  %15 = xor i32 %13, %2, !dbg !2614
  %16 = and i32 %15, 1, !dbg !2614
  %17 = shl nuw i32 %16, %11, !dbg !2615
  %18 = xor i32 %17, %12, !dbg !2616
  store i32 %18, ptr %9, align 4, !dbg !2616, !tbaa !1071
  ret i32 %14, !dbg !2617
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #25 !dbg !2618 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2622, metadata !DIExpression()), !dbg !2625
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2623, metadata !DIExpression()), !dbg !2625
  %3 = icmp eq ptr %0, null, !dbg !2626
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2628
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2622, metadata !DIExpression()), !dbg !2625
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2629
  %6 = load i32, ptr %5, align 4, !dbg !2629, !tbaa !2630
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !2624, metadata !DIExpression()), !dbg !2625
  store i32 %1, ptr %5, align 4, !dbg !2631, !tbaa !2630
  ret i32 %6, !dbg !2632
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2633 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2637, metadata !DIExpression()), !dbg !2640
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2638, metadata !DIExpression()), !dbg !2640
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2639, metadata !DIExpression()), !dbg !2640
  %4 = icmp eq ptr %0, null, !dbg !2641
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2643
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2637, metadata !DIExpression()), !dbg !2640
  store i32 10, ptr %5, align 8, !dbg !2644, !tbaa !2580
  %6 = icmp ne ptr %1, null, !dbg !2645
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2647
  br i1 %8, label %10, label %9, !dbg !2647

9:                                                ; preds = %3
  tail call void @abort() #43, !dbg !2648
  unreachable, !dbg !2648

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2649
  store ptr %1, ptr %11, align 8, !dbg !2650, !tbaa !2651
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2652
  store ptr %2, ptr %12, align 8, !dbg !2653, !tbaa !2654
  ret void, !dbg !2655
}

; Function Attrs: noreturn nounwind
declare !dbg !2656 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !2657 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2661, metadata !DIExpression()), !dbg !2669
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2662, metadata !DIExpression()), !dbg !2669
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2663, metadata !DIExpression()), !dbg !2669
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2664, metadata !DIExpression()), !dbg !2669
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2665, metadata !DIExpression()), !dbg !2669
  %6 = icmp eq ptr %4, null, !dbg !2670
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2670
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2666, metadata !DIExpression()), !dbg !2669
  %8 = tail call ptr @__errno_location() #44, !dbg !2671
  %9 = load i32, ptr %8, align 4, !dbg !2671, !tbaa !1071
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !2667, metadata !DIExpression()), !dbg !2669
  %10 = load i32, ptr %7, align 8, !dbg !2672, !tbaa !2580
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2673
  %12 = load i32, ptr %11, align 4, !dbg !2673, !tbaa !2630
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2674
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2675
  %15 = load ptr, ptr %14, align 8, !dbg !2675, !tbaa !2651
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2676
  %17 = load ptr, ptr %16, align 8, !dbg !2676, !tbaa !2654
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2677
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !2668, metadata !DIExpression()), !dbg !2669
  store i32 %9, ptr %8, align 4, !dbg !2678, !tbaa !1071
  ret i64 %18, !dbg !2679
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !2680 {
  %10 = alloca i32, align 4, !DIAssignID !2748
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2749
  %12 = alloca i32, align 4, !DIAssignID !2750
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2751
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2752
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2726, metadata !DIExpression(), metadata !2752, metadata ptr %14, metadata !DIExpression()), !dbg !2753
  %15 = alloca i32, align 4, !DIAssignID !2754
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2729, metadata !DIExpression(), metadata !2754, metadata ptr %15, metadata !DIExpression()), !dbg !2755
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2686, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2687, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2688, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2689, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !2690, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2691, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2692, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2693, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2694, metadata !DIExpression()), !dbg !2756
  %16 = tail call i64 @__ctype_get_mb_cur_max() #41, !dbg !2757
  %17 = icmp eq i64 %16, 1, !dbg !2758
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !2695, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2756
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2696, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2697, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata ptr null, metadata !2698, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2699, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2700, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2701, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2756
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2702, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2703, metadata !DIExpression()), !dbg !2756
  %18 = and i32 %5, 2, !dbg !2759
  %19 = icmp ne i32 %18, 0, !dbg !2759
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !2759

27:                                               ; preds = %585, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %585 ]
  %29 = phi ptr [ %7, %9 ], [ %103, %585 ]
  %30 = phi ptr [ %8, %9 ], [ %104, %585 ]
  %31 = phi i64 [ %3, %9 ], [ %.lcssa60, %585 ]
  %32 = phi i64 [ 0, %9 ], [ %.lcssa44, %585 ], !dbg !2760
  %33 = phi ptr [ null, %9 ], [ %106, %585 ], !dbg !2761
  %34 = phi i64 [ 0, %9 ], [ %107, %585 ], !dbg !2762
  %35 = phi i1 [ false, %9 ], [ %108, %585 ]
  %36 = phi i1 [ %19, %9 ], [ false, %585 ]
  %37 = phi i1 [ false, %9 ], [ %.lcssa38, %585 ]
  %38 = phi i1 [ true, %9 ], [ false, %585 ]
  %39 = phi i64 [ %1, %9 ], [ %.lcssa44, %585 ]
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !2687, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2703, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2702, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2701, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2700, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !2699, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2698, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !2697, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2696, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !2689, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !2694, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata ptr %29, metadata !2693, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !2690, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.label(metadata !2704), !dbg !2763
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2705, metadata !DIExpression()), !dbg !2756
  switch i32 %28, label %100 [
    i32 6, label %40
    i32 5, label %41
    i32 7, label %101
    i32 0, label %99
    i32 2, label %94
    i32 4, label %93
    i32 3, label %92
    i32 1, label %91
    i32 10, label %70
    i32 8, label %45
    i32 9, label %45
  ], !dbg !2764

40:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2701, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2690, metadata !DIExpression()), !dbg !2756
  br label %101, !dbg !2765

41:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2701, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2690, metadata !DIExpression()), !dbg !2756
  br i1 %36, label %101, label %42, !dbg !2765

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !2766
  br i1 %43, label %101, label %44, !dbg !2770

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !2766, !tbaa !1080
  br label %101, !dbg !2766

45:                                               ; preds = %27, %27
  call void @llvm.dbg.assign(metadata i1 undef, metadata !752, metadata !DIExpression(), metadata !2750, metadata ptr %12, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.assign(metadata i1 undef, metadata !753, metadata !DIExpression(), metadata !2751, metadata ptr %13, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata ptr @.str.11.93, metadata !749, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i32 %28, metadata !750, metadata !DIExpression()), !dbg !2771
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.94, ptr noundef nonnull @.str.11.93, i32 noundef 5) #41, !dbg !2775
  call void @llvm.dbg.value(metadata ptr %46, metadata !751, metadata !DIExpression()), !dbg !2771
  %47 = icmp eq ptr %46, @.str.11.93, !dbg !2776
  br i1 %47, label %48, label %57, !dbg !2778

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #41, !dbg !2779
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #41, !dbg !2780
  call void @llvm.dbg.value(metadata ptr %13, metadata !2781, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata ptr %13, metadata !2789, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata i32 0, metadata !2792, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata i64 8, metadata !2793, metadata !DIExpression()), !dbg !2794
  store i64 0, ptr %13, align 8, !dbg !2796
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #41, !dbg !2797
  %50 = icmp eq i64 %49, 3, !dbg !2799
  %51 = load i32, ptr %12, align 4
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !2800
  %54 = icmp eq i32 %28, 9, !dbg !2800
  %55 = select i1 %54, ptr @.str.10.95, ptr @.str.12.96, !dbg !2800
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !2800
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #41, !dbg !2801
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #41, !dbg !2801
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !2771
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !2693, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.assign(metadata i1 undef, metadata !752, metadata !DIExpression(), metadata !2748, metadata ptr %10, metadata !DIExpression()), !dbg !2802
  call void @llvm.dbg.assign(metadata i1 undef, metadata !753, metadata !DIExpression(), metadata !2749, metadata ptr %11, metadata !DIExpression()), !dbg !2802
  call void @llvm.dbg.value(metadata ptr @.str.12.96, metadata !749, metadata !DIExpression()), !dbg !2802
  call void @llvm.dbg.value(metadata i32 %28, metadata !750, metadata !DIExpression()), !dbg !2802
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.94, ptr noundef nonnull @.str.12.96, i32 noundef 5) #41, !dbg !2804
  call void @llvm.dbg.value(metadata ptr %59, metadata !751, metadata !DIExpression()), !dbg !2802
  %60 = icmp eq ptr %59, @.str.12.96, !dbg !2805
  br i1 %60, label %61, label %70, !dbg !2806

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #41, !dbg !2807
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #41, !dbg !2808
  call void @llvm.dbg.value(metadata ptr %11, metadata !2781, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata ptr %11, metadata !2789, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata i32 0, metadata !2792, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata i64 8, metadata !2793, metadata !DIExpression()), !dbg !2811
  store i64 0, ptr %11, align 8, !dbg !2813
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #41, !dbg !2814
  %63 = icmp eq i64 %62, 3, !dbg !2815
  %64 = load i32, ptr %10, align 4
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !2816
  %67 = icmp eq i32 %28, 9, !dbg !2816
  %68 = select i1 %67, ptr @.str.10.95, ptr @.str.12.96, !dbg !2816
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !2816
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #41, !dbg !2817
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #41, !dbg !2817
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !2694, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !2693, metadata !DIExpression()), !dbg !2756
  br i1 %36, label %88, label %73, !dbg !2818

73:                                               ; preds = %70
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !2706, metadata !DIExpression()), !dbg !2819
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2696, metadata !DIExpression()), !dbg !2756
  %74 = load i8, ptr %71, align 1, !dbg !2820, !tbaa !1080
  %75 = icmp eq i8 %74, 0, !dbg !2822
  br i1 %75, label %88, label %.preheader11, !dbg !2822

.preheader11:                                     ; preds = %73
  br label %76, !dbg !2822

76:                                               ; preds = %.preheader11, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %.preheader11 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %.preheader11 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %.preheader11 ]
  tail call void @llvm.dbg.value(metadata ptr %78, metadata !2706, metadata !DIExpression()), !dbg !2819
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !2696, metadata !DIExpression()), !dbg !2756
  %80 = icmp ult i64 %79, %39, !dbg !2823
  br i1 %80, label %81, label %83, !dbg !2826

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !2823
  store i8 %77, ptr %82, align 1, !dbg !2823, !tbaa !1080
  br label %83, !dbg !2823

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !2826
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !2696, metadata !DIExpression()), !dbg !2756
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !2827
  tail call void @llvm.dbg.value(metadata ptr %85, metadata !2706, metadata !DIExpression()), !dbg !2819
  %86 = load i8, ptr %85, align 1, !dbg !2820, !tbaa !1080
  %87 = icmp eq i8 %86, 0, !dbg !2822
  br i1 %87, label %.loopexit12, label %76, !dbg !2822, !llvm.loop !2828

.loopexit12:                                      ; preds = %83
  %.lcssa14 = phi i64 [ %84, %83 ], !dbg !2826
  br label %88, !dbg !2830

88:                                               ; preds = %.loopexit12, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %.lcssa14, %.loopexit12 ], !dbg !2831
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !2696, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2700, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !2698, metadata !DIExpression()), !dbg !2756
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #42, !dbg !2830
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !2699, metadata !DIExpression()), !dbg !2756
  br label %101, !dbg !2832

91:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2700, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2701, metadata !DIExpression()), !dbg !2756
  br label %101, !dbg !2833

92:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2701, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2700, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i32 2, metadata !2690, metadata !DIExpression()), !dbg !2756
  br label %101, !dbg !2834

93:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2701, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2700, metadata !DIExpression()), !dbg !2756
  br i1 %36, label %101, label %95, !dbg !2835

94:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2701, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2700, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i32 2, metadata !2690, metadata !DIExpression()), !dbg !2756
  br i1 %36, label %101, label %95, !dbg !2834

95:                                               ; preds = %93, %94
  %96 = phi i1 [ %35, %94 ], [ true, %93 ]
  %97 = icmp eq i64 %39, 0, !dbg !2836
  br i1 %97, label %101, label %98, !dbg !2840

98:                                               ; preds = %95
  store i8 39, ptr %0, align 1, !dbg !2836, !tbaa !1080
  br label %101, !dbg !2836

99:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2701, metadata !DIExpression()), !dbg !2756
  br label %101, !dbg !2841

100:                                              ; preds = %27
  call void @abort() #43, !dbg !2842
  unreachable, !dbg !2842

101:                                              ; preds = %93, %91, %92, %40, %94, %98, %95, %27, %41, %44, %42, %99, %88
  %102 = phi i32 [ 0, %99 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %95 ], [ 2, %98 ], [ 2, %94 ], [ 5, %40 ], [ 2, %91 ], [ 2, %92 ], [ 2, %93 ]
  %103 = phi ptr [ %29, %99 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %95 ], [ %29, %98 ], [ %29, %94 ], [ %29, %40 ], [ %29, %91 ], [ %29, %92 ], [ %29, %93 ]
  %104 = phi ptr [ %30, %99 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %95 ], [ %30, %98 ], [ %30, %94 ], [ %30, %40 ], [ %30, %91 ], [ %30, %92 ], [ %30, %93 ]
  %105 = phi i64 [ 0, %99 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %95 ], [ 1, %98 ], [ 0, %94 ], [ 0, %40 ], [ 0, %91 ], [ 0, %92 ], [ 0, %93 ], !dbg !2831
  %106 = phi ptr [ %33, %99 ], [ %72, %88 ], [ @.str.10.95, %42 ], [ @.str.10.95, %44 ], [ @.str.10.95, %41 ], [ %33, %27 ], [ @.str.12.96, %95 ], [ @.str.12.96, %98 ], [ @.str.12.96, %94 ], [ @.str.10.95, %40 ], [ @.str.12.96, %91 ], [ @.str.12.96, %92 ], [ @.str.12.96, %93 ], !dbg !2756
  %107 = phi i64 [ %34, %99 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %95 ], [ 1, %98 ], [ 1, %94 ], [ 1, %40 ], [ 1, %91 ], [ 1, %92 ], [ 1, %93 ], !dbg !2756
  %108 = phi i1 [ %35, %99 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %96, %95 ], [ %96, %98 ], [ %35, %94 ], [ true, %40 ], [ %35, %91 ], [ true, %92 ], [ %35, %93 ]
  %109 = phi i1 [ false, %99 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %95 ], [ false, %98 ], [ true, %94 ], [ true, %40 ], [ true, %91 ], [ true, %92 ], [ true, %93 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2701, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2700, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !2699, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata ptr %106, metadata !2698, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i64 %105, metadata !2696, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata ptr %104, metadata !2694, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata ptr %103, metadata !2693, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i32 %102, metadata !2690, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2711, metadata !DIExpression()), !dbg !2843
  %110 = icmp ne i32 %102, 2
  %111 = and i1 %110, %108
  %112 = icmp ne i64 %107, 0
  %113 = select i1 %111, i1 %112, i1 false
  %114 = icmp ugt i64 %107, 1
  %115 = icmp eq i32 %102, 2
  %116 = and i1 %108, %109
  %117 = select i1 %116, i1 %112, i1 false
  %118 = and i1 %115, %109
  %119 = xor i1 %108, true
  %120 = and i1 %25, %109
  br label %121, !dbg !2844

121:                                              ; preds = %563, %101
  %122 = phi i64 [ %31, %101 ], [ %564, %563 ]
  %123 = phi i64 [ %105, %101 ], [ %565, %563 ], !dbg !2831
  %124 = phi i64 [ %32, %101 ], [ %566, %563 ], !dbg !2760
  %125 = phi i1 [ %37, %101 ], [ %567, %563 ]
  %126 = phi i1 [ %38, %101 ], [ %568, %563 ]
  %127 = phi i1 [ false, %101 ], [ %569, %563 ]
  %128 = phi i64 [ 0, %101 ], [ %572, %563 ], !dbg !2845
  %129 = phi i64 [ %39, %101 ], [ %571, %563 ]
  tail call void @llvm.dbg.value(metadata i64 %129, metadata !2687, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i64 %128, metadata !2711, metadata !DIExpression()), !dbg !2843
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2705, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2703, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2702, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !2697, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i64 %123, metadata !2696, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i64 %122, metadata !2689, metadata !DIExpression()), !dbg !2756
  %130 = icmp eq i64 %122, -1, !dbg !2846
  br i1 %130, label %131, label %135, !dbg !2847

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2848
  %133 = load i8, ptr %132, align 1, !dbg !2848, !tbaa !1080
  %134 = icmp eq i8 %133, 0, !dbg !2849
  br i1 %134, label %573, label %137, !dbg !2850

135:                                              ; preds = %121
  %136 = icmp eq i64 %128, %122, !dbg !2851
  br i1 %136, label %573, label %137, !dbg !2850

137:                                              ; preds = %131, %135
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2713, metadata !DIExpression()), !dbg !2852
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2716, metadata !DIExpression()), !dbg !2852
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2717, metadata !DIExpression()), !dbg !2852
  br i1 %113, label %138, label %151, !dbg !2853

138:                                              ; preds = %137
  %139 = add i64 %128, %107, !dbg !2855
  %140 = select i1 %130, i1 %114, i1 false, !dbg !2856
  br i1 %140, label %141, label %143, !dbg !2856

141:                                              ; preds = %138
  %142 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #42, !dbg !2857
  tail call void @llvm.dbg.value(metadata i64 %142, metadata !2689, metadata !DIExpression()), !dbg !2756
  br label %143, !dbg !2858

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %122, %138 ], !dbg !2858
  tail call void @llvm.dbg.value(metadata i64 %144, metadata !2689, metadata !DIExpression()), !dbg !2756
  %145 = icmp ugt i64 %139, %144, !dbg !2859
  br i1 %145, label %151, label %146, !dbg !2860

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2861
  call void @llvm.dbg.value(metadata ptr %147, metadata !2862, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.value(metadata ptr %106, metadata !2865, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.value(metadata i64 %107, metadata !2866, metadata !DIExpression()), !dbg !2867
  %148 = call i32 @bcmp(ptr %147, ptr %106, i64 %107), !dbg !2869
  %149 = icmp eq i32 %148, 0, !dbg !2870
  %150 = and i1 %149, %109, !dbg !2871
  br i1 %150, label %.loopexit7, label %151, !dbg !2871

151:                                              ; preds = %146, %143, %137
  %152 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %122, %137 ]
  %153 = phi i1 [ %149, %146 ], [ false, %143 ], [ false, %137 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2713, metadata !DIExpression()), !dbg !2852
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !2689, metadata !DIExpression()), !dbg !2756
  %154 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2872
  %155 = load i8, ptr %154, align 1, !dbg !2872, !tbaa !1080
  tail call void @llvm.dbg.value(metadata i8 %155, metadata !2718, metadata !DIExpression()), !dbg !2852
  switch i8 %155, label %284 [
    i8 0, label %156
    i8 63, label %204
    i8 7, label %249
    i8 8, label %239
    i8 12, label %240
    i8 10, label %247
    i8 13, label %241
    i8 9, label %242
    i8 11, label %243
    i8 92, label %244
    i8 123, label %251
    i8 125, label %251
    i8 35, label %255
    i8 126, label %255
    i8 32, label %257
    i8 33, label %258
    i8 34, label %258
    i8 36, label %258
    i8 38, label %258
    i8 40, label %258
    i8 41, label %258
    i8 42, label %258
    i8 59, label %258
    i8 60, label %258
    i8 61, label %258
    i8 62, label %258
    i8 91, label %258
    i8 94, label %258
    i8 96, label %258
    i8 124, label %258
    i8 39, label %261
    i8 37, label %433
    i8 43, label %433
    i8 44, label %433
    i8 45, label %433
    i8 46, label %433
    i8 47, label %433
    i8 48, label %433
    i8 49, label %433
    i8 50, label %433
    i8 51, label %433
    i8 52, label %433
    i8 53, label %433
    i8 54, label %433
    i8 55, label %433
    i8 56, label %433
    i8 57, label %433
    i8 58, label %433
    i8 65, label %433
    i8 66, label %433
    i8 67, label %433
    i8 68, label %433
    i8 69, label %433
    i8 70, label %433
    i8 71, label %433
    i8 72, label %433
    i8 73, label %433
    i8 74, label %433
    i8 75, label %433
    i8 76, label %433
    i8 77, label %433
    i8 78, label %433
    i8 79, label %433
    i8 80, label %433
    i8 81, label %433
    i8 82, label %433
    i8 83, label %433
    i8 84, label %433
    i8 85, label %433
    i8 86, label %433
    i8 87, label %433
    i8 88, label %433
    i8 89, label %433
    i8 90, label %433
    i8 93, label %433
    i8 95, label %433
    i8 97, label %433
    i8 98, label %433
    i8 99, label %433
    i8 100, label %433
    i8 101, label %433
    i8 102, label %433
    i8 103, label %433
    i8 104, label %433
    i8 105, label %433
    i8 106, label %433
    i8 107, label %433
    i8 108, label %433
    i8 109, label %433
    i8 110, label %433
    i8 111, label %433
    i8 112, label %433
    i8 113, label %433
    i8 114, label %433
    i8 115, label %433
    i8 116, label %433
    i8 117, label %433
    i8 118, label %433
    i8 119, label %433
    i8 120, label %433
    i8 121, label %433
    i8 122, label %433
  ], !dbg !2873

156:                                              ; preds = %151
  br i1 %108, label %157, label %203, !dbg !2874

157:                                              ; preds = %156
  br i1 %109, label %613, label %158, !dbg !2875

158:                                              ; preds = %157
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2716, metadata !DIExpression()), !dbg !2852
  %159 = select i1 %110, i1 true, i1 %127, !dbg !2879
  br i1 %159, label %176, label %160, !dbg !2879

160:                                              ; preds = %158
  %161 = icmp ult i64 %123, %129, !dbg !2881
  br i1 %161, label %162, label %164, !dbg !2885

162:                                              ; preds = %160
  %163 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2881
  store i8 39, ptr %163, align 1, !dbg !2881, !tbaa !1080
  br label %164, !dbg !2881

164:                                              ; preds = %162, %160
  %165 = add i64 %123, 1, !dbg !2885
  tail call void @llvm.dbg.value(metadata i64 %165, metadata !2696, metadata !DIExpression()), !dbg !2756
  %166 = icmp ult i64 %165, %129, !dbg !2886
  br i1 %166, label %167, label %169, !dbg !2889

167:                                              ; preds = %164
  %168 = getelementptr inbounds i8, ptr %0, i64 %165, !dbg !2886
  store i8 36, ptr %168, align 1, !dbg !2886, !tbaa !1080
  br label %169, !dbg !2886

169:                                              ; preds = %167, %164
  %170 = add i64 %123, 2, !dbg !2889
  tail call void @llvm.dbg.value(metadata i64 %170, metadata !2696, metadata !DIExpression()), !dbg !2756
  %171 = icmp ult i64 %170, %129, !dbg !2890
  br i1 %171, label %172, label %174, !dbg !2893

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, ptr %0, i64 %170, !dbg !2890
  store i8 39, ptr %173, align 1, !dbg !2890, !tbaa !1080
  br label %174, !dbg !2890

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 3, !dbg !2893
  tail call void @llvm.dbg.value(metadata i64 %175, metadata !2696, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2705, metadata !DIExpression()), !dbg !2756
  br label %176, !dbg !2894

176:                                              ; preds = %158, %174
  %177 = phi i64 [ %175, %174 ], [ %123, %158 ], !dbg !2756
  %178 = phi i1 [ true, %174 ], [ %127, %158 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2705, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i64 %177, metadata !2696, metadata !DIExpression()), !dbg !2756
  %179 = icmp ult i64 %177, %129, !dbg !2895
  br i1 %179, label %180, label %182, !dbg !2898

180:                                              ; preds = %176
  %181 = getelementptr inbounds i8, ptr %0, i64 %177, !dbg !2895
  store i8 92, ptr %181, align 1, !dbg !2895, !tbaa !1080
  br label %182, !dbg !2895

182:                                              ; preds = %180, %176
  %183 = add i64 %177, 1, !dbg !2898
  tail call void @llvm.dbg.value(metadata i64 %183, metadata !2696, metadata !DIExpression()), !dbg !2756
  br i1 %110, label %184, label %476, !dbg !2899

184:                                              ; preds = %182
  %185 = add i64 %128, 1, !dbg !2901
  %186 = icmp ult i64 %185, %152, !dbg !2902
  br i1 %186, label %187, label %433, !dbg !2903

187:                                              ; preds = %184
  %188 = getelementptr inbounds i8, ptr %2, i64 %185, !dbg !2904
  %189 = load i8, ptr %188, align 1, !dbg !2904, !tbaa !1080
  %190 = add i8 %189, -48, !dbg !2905
  %191 = icmp ult i8 %190, 10, !dbg !2905
  br i1 %191, label %192, label %433, !dbg !2905

192:                                              ; preds = %187
  %193 = icmp ult i64 %183, %129, !dbg !2906
  br i1 %193, label %194, label %196, !dbg !2910

194:                                              ; preds = %192
  %195 = getelementptr inbounds i8, ptr %0, i64 %183, !dbg !2906
  store i8 48, ptr %195, align 1, !dbg !2906, !tbaa !1080
  br label %196, !dbg !2906

196:                                              ; preds = %194, %192
  %197 = add i64 %177, 2, !dbg !2910
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !2696, metadata !DIExpression()), !dbg !2756
  %198 = icmp ult i64 %197, %129, !dbg !2911
  br i1 %198, label %199, label %201, !dbg !2914

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, ptr %0, i64 %197, !dbg !2911
  store i8 48, ptr %200, align 1, !dbg !2911, !tbaa !1080
  br label %201, !dbg !2911

201:                                              ; preds = %199, %196
  %202 = add i64 %177, 3, !dbg !2914
  tail call void @llvm.dbg.value(metadata i64 %202, metadata !2696, metadata !DIExpression()), !dbg !2756
  br label %433, !dbg !2915

203:                                              ; preds = %156
  br i1 %24, label %444, label %563, !dbg !2916

204:                                              ; preds = %151
  switch i32 %102, label %433 [
    i32 2, label %205
    i32 5, label %206
  ], !dbg !2917

205:                                              ; preds = %204
  br i1 %109, label %.loopexit8, label %433, !dbg !2918

206:                                              ; preds = %204
  br i1 %22, label %433, label %207, !dbg !2920

207:                                              ; preds = %206
  %208 = add i64 %128, 2, !dbg !2922
  %209 = icmp ult i64 %208, %152, !dbg !2923
  br i1 %209, label %210, label %433, !dbg !2924

210:                                              ; preds = %207
  %211 = getelementptr i8, ptr %154, i64 1, !dbg !2925
  %212 = load i8, ptr %211, align 1, !dbg !2925, !tbaa !1080
  %213 = icmp eq i8 %212, 63, !dbg !2926
  br i1 %213, label %214, label %433, !dbg !2927

214:                                              ; preds = %210
  %215 = getelementptr inbounds i8, ptr %2, i64 %208, !dbg !2928
  %216 = load i8, ptr %215, align 1, !dbg !2928, !tbaa !1080
  switch i8 %216, label %433 [
    i8 33, label %217
    i8 39, label %217
    i8 40, label %217
    i8 41, label %217
    i8 45, label %217
    i8 47, label %217
    i8 60, label %217
    i8 61, label %217
    i8 62, label %217
  ], !dbg !2929

217:                                              ; preds = %214, %214, %214, %214, %214, %214, %214, %214, %214
  br i1 %109, label %.loopexit8, label %218, !dbg !2930

218:                                              ; preds = %217
  tail call void @llvm.dbg.value(metadata i8 %216, metadata !2718, metadata !DIExpression()), !dbg !2852
  tail call void @llvm.dbg.value(metadata i64 %208, metadata !2711, metadata !DIExpression()), !dbg !2843
  %219 = icmp ult i64 %123, %129, !dbg !2932
  br i1 %219, label %220, label %222, !dbg !2935

220:                                              ; preds = %218
  %221 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2932
  store i8 63, ptr %221, align 1, !dbg !2932, !tbaa !1080
  br label %222, !dbg !2932

222:                                              ; preds = %220, %218
  %223 = add i64 %123, 1, !dbg !2935
  tail call void @llvm.dbg.value(metadata i64 %223, metadata !2696, metadata !DIExpression()), !dbg !2756
  %224 = icmp ult i64 %223, %129, !dbg !2936
  br i1 %224, label %225, label %227, !dbg !2939

225:                                              ; preds = %222
  %226 = getelementptr inbounds i8, ptr %0, i64 %223, !dbg !2936
  store i8 34, ptr %226, align 1, !dbg !2936, !tbaa !1080
  br label %227, !dbg !2936

227:                                              ; preds = %225, %222
  %228 = add i64 %123, 2, !dbg !2939
  tail call void @llvm.dbg.value(metadata i64 %228, metadata !2696, metadata !DIExpression()), !dbg !2756
  %229 = icmp ult i64 %228, %129, !dbg !2940
  br i1 %229, label %230, label %232, !dbg !2943

230:                                              ; preds = %227
  %231 = getelementptr inbounds i8, ptr %0, i64 %228, !dbg !2940
  store i8 34, ptr %231, align 1, !dbg !2940, !tbaa !1080
  br label %232, !dbg !2940

232:                                              ; preds = %230, %227
  %233 = add i64 %123, 3, !dbg !2943
  tail call void @llvm.dbg.value(metadata i64 %233, metadata !2696, metadata !DIExpression()), !dbg !2756
  %234 = icmp ult i64 %233, %129, !dbg !2944
  br i1 %234, label %235, label %237, !dbg !2947

235:                                              ; preds = %232
  %236 = getelementptr inbounds i8, ptr %0, i64 %233, !dbg !2944
  store i8 63, ptr %236, align 1, !dbg !2944, !tbaa !1080
  br label %237, !dbg !2944

237:                                              ; preds = %235, %232
  %238 = add i64 %123, 4, !dbg !2947
  tail call void @llvm.dbg.value(metadata i64 %238, metadata !2696, metadata !DIExpression()), !dbg !2756
  br label %433, !dbg !2948

239:                                              ; preds = %151
  br label %249, !dbg !2949

240:                                              ; preds = %151
  br label %249, !dbg !2950

241:                                              ; preds = %151
  br label %247, !dbg !2951

242:                                              ; preds = %151
  br label %247, !dbg !2952

243:                                              ; preds = %151
  br label %249, !dbg !2953

244:                                              ; preds = %151
  br i1 %115, label %245, label %246, !dbg !2954

245:                                              ; preds = %244
  br i1 %109, label %.loopexit8, label %523, !dbg !2955

246:                                              ; preds = %244
  br i1 %117, label %523, label %249, !dbg !2958

247:                                              ; preds = %151, %242, %241
  %248 = phi i8 [ 116, %242 ], [ 114, %241 ], [ 110, %151 ], !dbg !2960
  call void @llvm.dbg.label(metadata !2719), !dbg !2961
  br i1 %118, label %.loopexit8, label %249, !dbg !2962

249:                                              ; preds = %246, %247, %151, %243, %240, %239
  %250 = phi i8 [ %248, %247 ], [ 118, %243 ], [ 102, %240 ], [ 98, %239 ], [ 97, %151 ], [ 92, %246 ], !dbg !2960
  call void @llvm.dbg.label(metadata !2722), !dbg !2964
  br i1 %108, label %487, label %444, !dbg !2965

251:                                              ; preds = %151, %151
  switch i64 %152, label %433 [
    i64 -1, label %252
    i64 1, label %255
  ], !dbg !2966

252:                                              ; preds = %251
  %253 = load i8, ptr %20, align 1, !dbg !2967, !tbaa !1080
  %254 = icmp eq i8 %253, 0, !dbg !2969
  br i1 %254, label %255, label %433, !dbg !2970

255:                                              ; preds = %251, %252, %151, %151
  %256 = icmp eq i64 %128, 0, !dbg !2971
  br i1 %256, label %257, label %433, !dbg !2973

257:                                              ; preds = %255, %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2717, metadata !DIExpression()), !dbg !2852
  br label %258, !dbg !2974

258:                                              ; preds = %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %257
  %259 = phi i1 [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ true, %257 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2717, metadata !DIExpression()), !dbg !2852
  br i1 %115, label %260, label %433, !dbg !2975

260:                                              ; preds = %258
  br i1 %109, label %.loopexit8, label %433, !dbg !2977

261:                                              ; preds = %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2702, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2717, metadata !DIExpression()), !dbg !2852
  br i1 %115, label %262, label %433, !dbg !2978

262:                                              ; preds = %261
  br i1 %109, label %.loopexit8, label %263, !dbg !2979

263:                                              ; preds = %262
  %264 = icmp eq i64 %129, 0, !dbg !2982
  %265 = icmp ne i64 %124, 0
  %266 = select i1 %264, i1 true, i1 %265, !dbg !2984
  %267 = select i1 %266, i64 %124, i64 %129, !dbg !2984
  %268 = select i1 %266, i64 %129, i64 0, !dbg !2984
  tail call void @llvm.dbg.value(metadata i64 %268, metadata !2687, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i64 %267, metadata !2697, metadata !DIExpression()), !dbg !2756
  %269 = icmp ult i64 %123, %268, !dbg !2985
  br i1 %269, label %270, label %272, !dbg !2988

270:                                              ; preds = %263
  %271 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2985
  store i8 39, ptr %271, align 1, !dbg !2985, !tbaa !1080
  br label %272, !dbg !2985

272:                                              ; preds = %270, %263
  %273 = add i64 %123, 1, !dbg !2988
  tail call void @llvm.dbg.value(metadata i64 %273, metadata !2696, metadata !DIExpression()), !dbg !2756
  %274 = icmp ult i64 %273, %268, !dbg !2989
  br i1 %274, label %275, label %277, !dbg !2992

275:                                              ; preds = %272
  %276 = getelementptr inbounds i8, ptr %0, i64 %273, !dbg !2989
  store i8 92, ptr %276, align 1, !dbg !2989, !tbaa !1080
  br label %277, !dbg !2989

277:                                              ; preds = %275, %272
  %278 = add i64 %123, 2, !dbg !2992
  tail call void @llvm.dbg.value(metadata i64 %278, metadata !2696, metadata !DIExpression()), !dbg !2756
  %279 = icmp ult i64 %278, %268, !dbg !2993
  br i1 %279, label %280, label %282, !dbg !2996

280:                                              ; preds = %277
  %281 = getelementptr inbounds i8, ptr %0, i64 %278, !dbg !2993
  store i8 39, ptr %281, align 1, !dbg !2993, !tbaa !1080
  br label %282, !dbg !2993

282:                                              ; preds = %280, %277
  %283 = add i64 %123, 3, !dbg !2996
  tail call void @llvm.dbg.value(metadata i64 %283, metadata !2696, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2705, metadata !DIExpression()), !dbg !2756
  br label %433, !dbg !2997

284:                                              ; preds = %151
  br i1 %17, label %285, label %293, !dbg !2998

285:                                              ; preds = %284
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2723, metadata !DIExpression()), !dbg !2999
  %286 = tail call ptr @__ctype_b_loc() #44, !dbg !3000
  %287 = load ptr, ptr %286, align 8, !dbg !3000, !tbaa !997
  %288 = zext i8 %155 to i64
  %289 = getelementptr inbounds i16, ptr %287, i64 %288, !dbg !3000
  %290 = load i16, ptr %289, align 2, !dbg !3000, !tbaa !1112
  %291 = and i16 %290, 16384, !dbg !3000
  %292 = icmp ne i16 %291, 0, !dbg !3002
  tail call void @llvm.dbg.value(metadata i1 %292, metadata !2725, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2999
  br label %334, !dbg !3003

293:                                              ; preds = %284
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #41, !dbg !3004
  call void @llvm.dbg.value(metadata ptr %14, metadata !2781, metadata !DIExpression()), !dbg !3005
  call void @llvm.dbg.value(metadata ptr %14, metadata !2789, metadata !DIExpression()), !dbg !3007
  call void @llvm.dbg.value(metadata i32 0, metadata !2792, metadata !DIExpression()), !dbg !3007
  call void @llvm.dbg.value(metadata i64 8, metadata !2793, metadata !DIExpression()), !dbg !3007
  store i64 0, ptr %14, align 8, !dbg !3009
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2723, metadata !DIExpression()), !dbg !2999
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2725, metadata !DIExpression()), !dbg !2999
  %294 = icmp eq i64 %152, -1, !dbg !3010
  br i1 %294, label %295, label %297, !dbg !3012

295:                                              ; preds = %293
  %296 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #42, !dbg !3013
  tail call void @llvm.dbg.value(metadata i64 %296, metadata !2689, metadata !DIExpression()), !dbg !2756
  br label %297, !dbg !3014

297:                                              ; preds = %293, %295
  %298 = phi i64 [ %296, %295 ], [ %152, %293 ], !dbg !2852
  tail call void @llvm.dbg.value(metadata i64 %298, metadata !2689, metadata !DIExpression()), !dbg !2756
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #41, !dbg !3015
  %299 = sub i64 %298, %128, !dbg !3016
  %300 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %154, i64 noundef %299, ptr noundef nonnull %14) #41, !dbg !3017
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2733, metadata !DIExpression()), !dbg !2755
  switch i64 %300, label %314 [
    i64 0, label %329
    i64 -1, label %303
    i64 -2, label %301
  ], !dbg !3018

301:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2723, metadata !DIExpression()), !dbg !2999
  %302 = icmp ult i64 %128, %298, !dbg !3019
  br i1 %302, label %.preheader5, label %329, !dbg !3021

.preheader5:                                      ; preds = %301
  br label %304, !dbg !3022

303:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2725, metadata !DIExpression()), !dbg !2999
  br label %329, !dbg !3023

304:                                              ; preds = %.preheader5, %310
  %305 = phi i64 [ %312, %310 ], [ %128, %.preheader5 ]
  %306 = phi i64 [ %311, %310 ], [ 0, %.preheader5 ]
  tail call void @llvm.dbg.value(metadata i64 %306, metadata !2723, metadata !DIExpression()), !dbg !2999
  %307 = getelementptr inbounds i8, ptr %2, i64 %305, !dbg !3025
  %308 = load i8, ptr %307, align 1, !dbg !3025, !tbaa !1080
  %309 = icmp eq i8 %308, 0, !dbg !3021
  br i1 %309, label %.loopexit6, label %310, !dbg !3022

310:                                              ; preds = %304
  %311 = add i64 %306, 1, !dbg !3026
  tail call void @llvm.dbg.value(metadata i64 %311, metadata !2723, metadata !DIExpression()), !dbg !2999
  %312 = add i64 %311, %128, !dbg !3027
  %313 = icmp eq i64 %311, %299, !dbg !3019
  br i1 %313, label %.loopexit6, label %304, !dbg !3021, !llvm.loop !3028

314:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2734, metadata !DIExpression()), !dbg !3029
  %315 = icmp ugt i64 %300, 1
  %316 = and i1 %115, %315, !dbg !3030
  %317 = and i1 %316, %109, !dbg !3030
  br i1 %317, label %.preheader3, label %325, !dbg !3030

.preheader3:                                      ; preds = %314
  br label %318, !dbg !3031

318:                                              ; preds = %.preheader3, %322
  %319 = phi i64 [ %323, %322 ], [ 1, %.preheader3 ]
  tail call void @llvm.dbg.value(metadata i64 %319, metadata !2734, metadata !DIExpression()), !dbg !3029
  %320 = getelementptr i8, ptr %154, i64 %319, !dbg !3032
  %321 = load i8, ptr %320, align 1, !dbg !3032, !tbaa !1080
  switch i8 %321, label %322 [
    i8 91, label %332
    i8 92, label %332
    i8 94, label %332
    i8 96, label %332
    i8 124, label %332
  ], !dbg !3034

322:                                              ; preds = %318
  %323 = add nuw i64 %319, 1, !dbg !3035
  tail call void @llvm.dbg.value(metadata i64 %323, metadata !2734, metadata !DIExpression()), !dbg !3029
  %324 = icmp eq i64 %323, %300, !dbg !3036
  br i1 %324, label %.loopexit4, label %318, !dbg !3031, !llvm.loop !3037

.loopexit4:                                       ; preds = %322
  br label %325, !dbg !3039

325:                                              ; preds = %.loopexit4, %314
  %326 = load i32, ptr %15, align 4, !dbg !3039, !tbaa !1071
  call void @llvm.dbg.value(metadata i32 %326, metadata !3041, metadata !DIExpression()), !dbg !3049
  %327 = call i32 @iswprint(i32 noundef %326) #41, !dbg !3051
  %328 = icmp ne i32 %327, 0, !dbg !3052
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2725, metadata !DIExpression()), !dbg !2999
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2723, metadata !DIExpression()), !dbg !2999
  br label %329, !dbg !3053

.loopexit6:                                       ; preds = %310, %304
  %.ph = phi i64 [ %299, %310 ], [ %306, %304 ]
  br label %329, !dbg !3054

329:                                              ; preds = %.loopexit6, %301, %303, %325, %297
  %330 = phi i64 [ %300, %297 ], [ %300, %325 ], [ 0, %303 ], [ 0, %301 ], [ %.ph, %.loopexit6 ]
  %331 = phi i1 [ true, %297 ], [ %328, %325 ], [ false, %303 ], [ false, %301 ], [ false, %.loopexit6 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2725, metadata !DIExpression()), !dbg !2999
  tail call void @llvm.dbg.value(metadata i64 %330, metadata !2723, metadata !DIExpression()), !dbg !2999
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #41, !dbg !3054
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #41, !dbg !3055
  br label %334

332:                                              ; preds = %318, %318, %318, %318, %318
  %.lcssa99 = phi ptr [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ]
  %.lcssa91 = phi ptr [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ]
  %.lcssa75 = phi i1 [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ]
  %.lcssa28 = phi i64 [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ]
  %.lcssa22 = phi i64 [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], !dbg !2852
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2725, metadata !DIExpression()), !dbg !2999
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2723, metadata !DIExpression()), !dbg !2999
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #41, !dbg !3054
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #41, !dbg !3055
  call void @llvm.dbg.label(metadata !2747), !dbg !3056
  %333 = select i1 %.lcssa75, i32 4, i32 2, !dbg !3057
  br label %624, !dbg !3057

334:                                              ; preds = %329, %285
  %335 = phi i64 [ %152, %285 ], [ %298, %329 ], !dbg !2852
  %336 = phi i64 [ 1, %285 ], [ %330, %329 ], !dbg !3059
  %337 = phi i1 [ %292, %285 ], [ %331, %329 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2725, metadata !DIExpression()), !dbg !2999
  tail call void @llvm.dbg.value(metadata i64 %336, metadata !2723, metadata !DIExpression()), !dbg !2999
  tail call void @llvm.dbg.value(metadata i64 %335, metadata !2689, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i1 %337, metadata !2717, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2852
  %338 = icmp ult i64 %336, 2, !dbg !3060
  %339 = select i1 %119, i1 true, i1 %337
  %340 = select i1 %338, i1 %339, i1 false, !dbg !3061
  br i1 %340, label %433, label %341, !dbg !3061

341:                                              ; preds = %334
  %342 = add i64 %336, %128, !dbg !3062
  tail call void @llvm.dbg.value(metadata i64 %342, metadata !2742, metadata !DIExpression()), !dbg !3063
  br label %343, !dbg !3064

343:                                              ; preds = %429, %341
  %344 = phi i64 [ %123, %341 ], [ %430, %429 ], !dbg !2756
  %345 = phi i1 [ %127, %341 ], [ %425, %429 ]
  %346 = phi i64 [ %128, %341 ], [ %407, %429 ], !dbg !2843
  %347 = phi i1 [ %153, %341 ], [ %404, %429 ]
  %348 = phi i1 [ false, %341 ], [ %405, %429 ]
  %349 = phi i8 [ %155, %341 ], [ %432, %429 ], !dbg !2852
  tail call void @llvm.dbg.value(metadata i8 %349, metadata !2718, metadata !DIExpression()), !dbg !2852
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2716, metadata !DIExpression()), !dbg !2852
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2713, metadata !DIExpression()), !dbg !2852
  tail call void @llvm.dbg.value(metadata i64 %346, metadata !2711, metadata !DIExpression()), !dbg !2843
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2705, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i64 %344, metadata !2696, metadata !DIExpression()), !dbg !2756
  br i1 %339, label %394, label %350, !dbg !3065

350:                                              ; preds = %343
  br i1 %109, label %.loopexit1, label %351, !dbg !3070

351:                                              ; preds = %350
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2716, metadata !DIExpression()), !dbg !2852
  %352 = select i1 %110, i1 true, i1 %345, !dbg !3073
  br i1 %352, label %369, label %353, !dbg !3073

353:                                              ; preds = %351
  %354 = icmp ult i64 %344, %129, !dbg !3075
  br i1 %354, label %355, label %357, !dbg !3079

355:                                              ; preds = %353
  %356 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !3075
  store i8 39, ptr %356, align 1, !dbg !3075, !tbaa !1080
  br label %357, !dbg !3075

357:                                              ; preds = %355, %353
  %358 = add i64 %344, 1, !dbg !3079
  tail call void @llvm.dbg.value(metadata i64 %358, metadata !2696, metadata !DIExpression()), !dbg !2756
  %359 = icmp ult i64 %358, %129, !dbg !3080
  br i1 %359, label %360, label %362, !dbg !3083

360:                                              ; preds = %357
  %361 = getelementptr inbounds i8, ptr %0, i64 %358, !dbg !3080
  store i8 36, ptr %361, align 1, !dbg !3080, !tbaa !1080
  br label %362, !dbg !3080

362:                                              ; preds = %360, %357
  %363 = add i64 %344, 2, !dbg !3083
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !2696, metadata !DIExpression()), !dbg !2756
  %364 = icmp ult i64 %363, %129, !dbg !3084
  br i1 %364, label %365, label %367, !dbg !3087

365:                                              ; preds = %362
  %366 = getelementptr inbounds i8, ptr %0, i64 %363, !dbg !3084
  store i8 39, ptr %366, align 1, !dbg !3084, !tbaa !1080
  br label %367, !dbg !3084

367:                                              ; preds = %365, %362
  %368 = add i64 %344, 3, !dbg !3087
  tail call void @llvm.dbg.value(metadata i64 %368, metadata !2696, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2705, metadata !DIExpression()), !dbg !2756
  br label %369, !dbg !3088

369:                                              ; preds = %351, %367
  %370 = phi i64 [ %368, %367 ], [ %344, %351 ], !dbg !2756
  %371 = phi i1 [ true, %367 ], [ %345, %351 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2705, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i64 %370, metadata !2696, metadata !DIExpression()), !dbg !2756
  %372 = icmp ult i64 %370, %129, !dbg !3089
  br i1 %372, label %373, label %375, !dbg !3092

373:                                              ; preds = %369
  %374 = getelementptr inbounds i8, ptr %0, i64 %370, !dbg !3089
  store i8 92, ptr %374, align 1, !dbg !3089, !tbaa !1080
  br label %375, !dbg !3089

375:                                              ; preds = %373, %369
  %376 = add i64 %370, 1, !dbg !3092
  tail call void @llvm.dbg.value(metadata i64 %376, metadata !2696, metadata !DIExpression()), !dbg !2756
  %377 = icmp ult i64 %376, %129, !dbg !3093
  br i1 %377, label %378, label %382, !dbg !3096

378:                                              ; preds = %375
  %379 = lshr i8 %349, 6
  %380 = or disjoint i8 %379, 48, !dbg !3093
  %381 = getelementptr inbounds i8, ptr %0, i64 %376, !dbg !3093
  store i8 %380, ptr %381, align 1, !dbg !3093, !tbaa !1080
  br label %382, !dbg !3093

382:                                              ; preds = %378, %375
  %383 = add i64 %370, 2, !dbg !3096
  tail call void @llvm.dbg.value(metadata i64 %383, metadata !2696, metadata !DIExpression()), !dbg !2756
  %384 = icmp ult i64 %383, %129, !dbg !3097
  br i1 %384, label %385, label %390, !dbg !3100

385:                                              ; preds = %382
  %386 = lshr i8 %349, 3
  %387 = and i8 %386, 7, !dbg !3097
  %388 = or disjoint i8 %387, 48, !dbg !3097
  %389 = getelementptr inbounds i8, ptr %0, i64 %383, !dbg !3097
  store i8 %388, ptr %389, align 1, !dbg !3097, !tbaa !1080
  br label %390, !dbg !3097

390:                                              ; preds = %385, %382
  %391 = add i64 %370, 3, !dbg !3100
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !2696, metadata !DIExpression()), !dbg !2756
  %392 = and i8 %349, 7, !dbg !3101
  %393 = or disjoint i8 %392, 48, !dbg !3102
  tail call void @llvm.dbg.value(metadata i8 %393, metadata !2718, metadata !DIExpression()), !dbg !2852
  br label %401, !dbg !3103

394:                                              ; preds = %343
  br i1 %347, label %395, label %401, !dbg !3104

395:                                              ; preds = %394
  %396 = icmp ult i64 %344, %129, !dbg !3105
  br i1 %396, label %397, label %399, !dbg !3110

397:                                              ; preds = %395
  %398 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !3105
  store i8 92, ptr %398, align 1, !dbg !3105, !tbaa !1080
  br label %399, !dbg !3105

399:                                              ; preds = %397, %395
  %400 = add i64 %344, 1, !dbg !3110
  tail call void @llvm.dbg.value(metadata i64 %400, metadata !2696, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2713, metadata !DIExpression()), !dbg !2852
  br label %401, !dbg !3111

401:                                              ; preds = %394, %399, %390
  %402 = phi i64 [ %400, %399 ], [ %344, %394 ], [ %391, %390 ], !dbg !2756
  %403 = phi i1 [ %345, %399 ], [ %345, %394 ], [ %371, %390 ]
  %404 = phi i1 [ false, %399 ], [ false, %394 ], [ %347, %390 ]
  %405 = phi i1 [ %348, %399 ], [ %348, %394 ], [ true, %390 ]
  %406 = phi i8 [ %349, %399 ], [ %349, %394 ], [ %393, %390 ], !dbg !2852
  tail call void @llvm.dbg.value(metadata i8 %406, metadata !2718, metadata !DIExpression()), !dbg !2852
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2716, metadata !DIExpression()), !dbg !2852
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2713, metadata !DIExpression()), !dbg !2852
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2705, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i64 %402, metadata !2696, metadata !DIExpression()), !dbg !2756
  %407 = add i64 %346, 1, !dbg !3112
  %408 = icmp ugt i64 %342, %407, !dbg !3114
  br i1 %408, label %409, label %.loopexit2, !dbg !3115

409:                                              ; preds = %401
  %410 = xor i1 %403, true, !dbg !3116
  %411 = select i1 %410, i1 true, i1 %405, !dbg !3116
  br i1 %411, label %423, label %412, !dbg !3116

412:                                              ; preds = %409
  %413 = icmp ult i64 %402, %129, !dbg !3119
  br i1 %413, label %414, label %416, !dbg !3123

414:                                              ; preds = %412
  %415 = getelementptr inbounds i8, ptr %0, i64 %402, !dbg !3119
  store i8 39, ptr %415, align 1, !dbg !3119, !tbaa !1080
  br label %416, !dbg !3119

416:                                              ; preds = %414, %412
  %417 = add i64 %402, 1, !dbg !3123
  tail call void @llvm.dbg.value(metadata i64 %417, metadata !2696, metadata !DIExpression()), !dbg !2756
  %418 = icmp ult i64 %417, %129, !dbg !3124
  br i1 %418, label %419, label %421, !dbg !3127

419:                                              ; preds = %416
  %420 = getelementptr inbounds i8, ptr %0, i64 %417, !dbg !3124
  store i8 39, ptr %420, align 1, !dbg !3124, !tbaa !1080
  br label %421, !dbg !3124

421:                                              ; preds = %419, %416
  %422 = add i64 %402, 2, !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 %422, metadata !2696, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2705, metadata !DIExpression()), !dbg !2756
  br label %423, !dbg !3128

423:                                              ; preds = %409, %421
  %424 = phi i64 [ %422, %421 ], [ %402, %409 ], !dbg !3129
  %425 = phi i1 [ false, %421 ], [ %403, %409 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2705, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i64 %424, metadata !2696, metadata !DIExpression()), !dbg !2756
  %426 = icmp ult i64 %424, %129, !dbg !3130
  br i1 %426, label %427, label %429, !dbg !3133

427:                                              ; preds = %423
  %428 = getelementptr inbounds i8, ptr %0, i64 %424, !dbg !3130
  store i8 %406, ptr %428, align 1, !dbg !3130, !tbaa !1080
  br label %429, !dbg !3130

429:                                              ; preds = %427, %423
  %430 = add i64 %424, 1, !dbg !3133
  tail call void @llvm.dbg.value(metadata i64 %430, metadata !2696, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i64 %407, metadata !2711, metadata !DIExpression()), !dbg !2843
  %431 = getelementptr inbounds i8, ptr %2, i64 %407, !dbg !3134
  %432 = load i8, ptr %431, align 1, !dbg !3134, !tbaa !1080
  tail call void @llvm.dbg.value(metadata i8 %432, metadata !2718, metadata !DIExpression()), !dbg !2852
  br label %343, !dbg !3135, !llvm.loop !3136

433:                                              ; preds = %334, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %251, %184, %187, %201, %261, %282, %258, %260, %255, %252, %204, %205, %237, %214, %210, %207, %206
  %434 = phi i64 [ %152, %282 ], [ %152, %261 ], [ %152, %260 ], [ %152, %258 ], [ %152, %255 ], [ -1, %252 ], [ %152, %204 ], [ %152, %214 ], [ %152, %237 ], [ %152, %210 ], [ %152, %207 ], [ %152, %206 ], [ %152, %205 ], [ %152, %201 ], [ %152, %187 ], [ %152, %184 ], [ %152, %251 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %335, %334 ], !dbg !3139
  %435 = phi i64 [ %283, %282 ], [ %123, %261 ], [ %123, %260 ], [ %123, %258 ], [ %123, %255 ], [ %123, %252 ], [ %123, %204 ], [ %123, %214 ], [ %238, %237 ], [ %123, %210 ], [ %123, %207 ], [ %123, %206 ], [ %123, %205 ], [ %202, %201 ], [ %183, %187 ], [ %183, %184 ], [ %123, %251 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %334 ], !dbg !2756
  %436 = phi i64 [ %267, %282 ], [ %124, %261 ], [ %124, %260 ], [ %124, %258 ], [ %124, %255 ], [ %124, %252 ], [ %124, %204 ], [ %124, %214 ], [ %124, %237 ], [ %124, %210 ], [ %124, %207 ], [ %124, %206 ], [ %124, %205 ], [ %124, %201 ], [ %124, %187 ], [ %124, %184 ], [ %124, %251 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %334 ], !dbg !2760
  %437 = phi i1 [ true, %282 ], [ true, %261 ], [ %125, %260 ], [ %125, %258 ], [ %125, %255 ], [ %125, %252 ], [ %125, %204 ], [ %125, %214 ], [ %125, %237 ], [ %125, %210 ], [ %125, %207 ], [ %125, %206 ], [ %125, %205 ], [ %125, %201 ], [ %125, %187 ], [ %125, %184 ], [ %125, %251 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %334 ]
  %438 = phi i1 [ false, %282 ], [ %127, %261 ], [ %127, %260 ], [ %127, %258 ], [ %127, %255 ], [ %127, %252 ], [ %127, %204 ], [ %127, %214 ], [ %127, %237 ], [ %127, %210 ], [ %127, %207 ], [ %127, %206 ], [ %127, %205 ], [ %178, %201 ], [ %178, %187 ], [ %178, %184 ], [ %127, %251 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %334 ]
  %439 = phi i64 [ %128, %282 ], [ %128, %261 ], [ %128, %260 ], [ %128, %258 ], [ %128, %255 ], [ %128, %252 ], [ %128, %204 ], [ %128, %214 ], [ %208, %237 ], [ %128, %210 ], [ %128, %207 ], [ %128, %206 ], [ %128, %205 ], [ %128, %201 ], [ %128, %187 ], [ %128, %184 ], [ %128, %251 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %334 ], !dbg !2843
  %440 = phi i1 [ false, %282 ], [ false, %261 ], [ false, %260 ], [ false, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ true, %201 ], [ true, %187 ], [ true, %184 ], [ false, %251 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %334 ]
  %441 = phi i1 [ true, %282 ], [ true, %261 ], [ %259, %260 ], [ %259, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ false, %201 ], [ false, %187 ], [ false, %184 ], [ false, %251 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ %337, %334 ]
  %442 = phi i8 [ 39, %282 ], [ 39, %261 ], [ %155, %260 ], [ %155, %258 ], [ %155, %255 ], [ %155, %252 ], [ 63, %204 ], [ 63, %214 ], [ %216, %237 ], [ 63, %210 ], [ 63, %207 ], [ 63, %206 ], [ 63, %205 ], [ 48, %201 ], [ 48, %187 ], [ 48, %184 ], [ %155, %251 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %334 ], !dbg !2852
  %443 = phi i64 [ %268, %282 ], [ %129, %261 ], [ %129, %260 ], [ %129, %258 ], [ %129, %255 ], [ %129, %252 ], [ %129, %204 ], [ %129, %214 ], [ %129, %237 ], [ %129, %210 ], [ %129, %207 ], [ %129, %206 ], [ %129, %205 ], [ %129, %201 ], [ %129, %187 ], [ %129, %184 ], [ %129, %251 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %334 ]
  tail call void @llvm.dbg.value(metadata i64 %443, metadata !2687, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i8 %442, metadata !2718, metadata !DIExpression()), !dbg !2852
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2717, metadata !DIExpression()), !dbg !2852
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2716, metadata !DIExpression()), !dbg !2852
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2713, metadata !DIExpression()), !dbg !2852
  tail call void @llvm.dbg.value(metadata i64 %439, metadata !2711, metadata !DIExpression()), !dbg !2843
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2705, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2702, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i64 %436, metadata !2697, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i64 %435, metadata !2696, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i64 %434, metadata !2689, metadata !DIExpression()), !dbg !2756
  br i1 %111, label %455, label %444, !dbg !3140

444:                                              ; preds = %203, %249, %433
  %445 = phi i64 [ %443, %433 ], [ %129, %249 ], [ %129, %203 ]
  %446 = phi i8 [ %442, %433 ], [ %155, %249 ], [ 0, %203 ]
  %447 = phi i1 [ %441, %433 ], [ false, %249 ], [ false, %203 ]
  %448 = phi i1 [ %440, %433 ], [ false, %249 ], [ false, %203 ]
  %449 = phi i64 [ %439, %433 ], [ %128, %249 ], [ %128, %203 ]
  %450 = phi i1 [ %438, %433 ], [ %127, %249 ], [ %127, %203 ]
  %451 = phi i1 [ %437, %433 ], [ %125, %249 ], [ %125, %203 ]
  %452 = phi i64 [ %436, %433 ], [ %124, %249 ], [ %124, %203 ]
  %453 = phi i64 [ %435, %433 ], [ %123, %249 ], [ %123, %203 ]
  %454 = phi i64 [ %434, %433 ], [ %152, %249 ], [ %152, %203 ]
  br i1 %120, label %456, label %476, !dbg !3142

455:                                              ; preds = %433
  br i1 %26, label %476, label %456, !dbg !3143

456:                                              ; preds = %444, %455
  %457 = phi i64 [ %445, %444 ], [ %443, %455 ]
  %458 = phi i8 [ %446, %444 ], [ %442, %455 ]
  %459 = phi i1 [ %447, %444 ], [ %441, %455 ]
  %460 = phi i1 [ %448, %444 ], [ %440, %455 ]
  %461 = phi i64 [ %449, %444 ], [ %439, %455 ]
  %462 = phi i1 [ %450, %444 ], [ %438, %455 ]
  %463 = phi i1 [ %451, %444 ], [ %437, %455 ]
  %464 = phi i64 [ %452, %444 ], [ %436, %455 ]
  %465 = phi i64 [ %453, %444 ], [ %435, %455 ]
  %466 = phi i64 [ %454, %444 ], [ %434, %455 ]
  %467 = lshr i8 %458, 5, !dbg !3144
  %468 = zext nneg i8 %467 to i64, !dbg !3144
  %469 = getelementptr inbounds i32, ptr %6, i64 %468, !dbg !3145
  %470 = load i32, ptr %469, align 4, !dbg !3145, !tbaa !1071
  %471 = and i8 %458, 31, !dbg !3146
  %472 = zext nneg i8 %471 to i32, !dbg !3146
  %473 = shl nuw i32 1, %472, !dbg !3147
  %474 = and i32 %470, %473, !dbg !3147
  %475 = icmp eq i32 %474, 0, !dbg !3147
  br i1 %475, label %476, label %487, !dbg !3148

476:                                              ; preds = %182, %456, %455, %444
  %477 = phi i64 [ %457, %456 ], [ %443, %455 ], [ %445, %444 ], [ %129, %182 ]
  %478 = phi i8 [ %458, %456 ], [ %442, %455 ], [ %446, %444 ], [ 48, %182 ]
  %479 = phi i1 [ %459, %456 ], [ %441, %455 ], [ %447, %444 ], [ false, %182 ]
  %480 = phi i1 [ %460, %456 ], [ %440, %455 ], [ %448, %444 ], [ true, %182 ]
  %481 = phi i64 [ %461, %456 ], [ %439, %455 ], [ %449, %444 ], [ %128, %182 ]
  %482 = phi i1 [ %462, %456 ], [ %438, %455 ], [ %450, %444 ], [ %178, %182 ]
  %483 = phi i1 [ %463, %456 ], [ %437, %455 ], [ %451, %444 ], [ %125, %182 ]
  %484 = phi i64 [ %464, %456 ], [ %436, %455 ], [ %452, %444 ], [ %124, %182 ]
  %485 = phi i64 [ %465, %456 ], [ %435, %455 ], [ %453, %444 ], [ %183, %182 ]
  %486 = phi i64 [ %466, %456 ], [ %434, %455 ], [ %454, %444 ], [ %152, %182 ]
  br i1 %153, label %487, label %523, !dbg !3149

487:                                              ; preds = %249, %476, %456
  %488 = phi i64 [ %466, %456 ], [ %486, %476 ], [ %152, %249 ], !dbg !3139
  %489 = phi i64 [ %465, %456 ], [ %485, %476 ], [ %123, %249 ], !dbg !2756
  %490 = phi i64 [ %464, %456 ], [ %484, %476 ], [ %124, %249 ], !dbg !2760
  %491 = phi i1 [ %463, %456 ], [ %483, %476 ], [ %125, %249 ]
  %492 = phi i1 [ %462, %456 ], [ %482, %476 ], [ %127, %249 ]
  %493 = phi i64 [ %461, %456 ], [ %481, %476 ], [ %128, %249 ], !dbg !3150
  %494 = phi i1 [ %459, %456 ], [ %479, %476 ], [ false, %249 ]
  %495 = phi i8 [ %458, %456 ], [ %478, %476 ], [ %250, %249 ], !dbg !2852
  %496 = phi i64 [ %457, %456 ], [ %477, %476 ], [ %129, %249 ]
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !2687, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !2718, metadata !DIExpression()), !dbg !2852
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2717, metadata !DIExpression()), !dbg !2852
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !2711, metadata !DIExpression()), !dbg !2843
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2705, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2702, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !2697, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i64 %489, metadata !2696, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !2689, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.label(metadata !2745), !dbg !3151
  br i1 %109, label %.loopexit8, label %497, !dbg !3152

497:                                              ; preds = %487
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2716, metadata !DIExpression()), !dbg !2852
  %498 = select i1 %110, i1 true, i1 %492, !dbg !3154
  br i1 %498, label %515, label %499, !dbg !3154

499:                                              ; preds = %497
  %500 = icmp ult i64 %489, %496, !dbg !3156
  br i1 %500, label %501, label %503, !dbg !3160

501:                                              ; preds = %499
  %502 = getelementptr inbounds i8, ptr %0, i64 %489, !dbg !3156
  store i8 39, ptr %502, align 1, !dbg !3156, !tbaa !1080
  br label %503, !dbg !3156

503:                                              ; preds = %501, %499
  %504 = add i64 %489, 1, !dbg !3160
  tail call void @llvm.dbg.value(metadata i64 %504, metadata !2696, metadata !DIExpression()), !dbg !2756
  %505 = icmp ult i64 %504, %496, !dbg !3161
  br i1 %505, label %506, label %508, !dbg !3164

506:                                              ; preds = %503
  %507 = getelementptr inbounds i8, ptr %0, i64 %504, !dbg !3161
  store i8 36, ptr %507, align 1, !dbg !3161, !tbaa !1080
  br label %508, !dbg !3161

508:                                              ; preds = %506, %503
  %509 = add i64 %489, 2, !dbg !3164
  tail call void @llvm.dbg.value(metadata i64 %509, metadata !2696, metadata !DIExpression()), !dbg !2756
  %510 = icmp ult i64 %509, %496, !dbg !3165
  br i1 %510, label %511, label %513, !dbg !3168

511:                                              ; preds = %508
  %512 = getelementptr inbounds i8, ptr %0, i64 %509, !dbg !3165
  store i8 39, ptr %512, align 1, !dbg !3165, !tbaa !1080
  br label %513, !dbg !3165

513:                                              ; preds = %511, %508
  %514 = add i64 %489, 3, !dbg !3168
  tail call void @llvm.dbg.value(metadata i64 %514, metadata !2696, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2705, metadata !DIExpression()), !dbg !2756
  br label %515, !dbg !3169

515:                                              ; preds = %497, %513
  %516 = phi i64 [ %514, %513 ], [ %489, %497 ], !dbg !2852
  %517 = phi i1 [ true, %513 ], [ %492, %497 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2705, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i64 %516, metadata !2696, metadata !DIExpression()), !dbg !2756
  %518 = icmp ult i64 %516, %496, !dbg !3170
  br i1 %518, label %519, label %521, !dbg !3173

519:                                              ; preds = %515
  %520 = getelementptr inbounds i8, ptr %0, i64 %516, !dbg !3170
  store i8 92, ptr %520, align 1, !dbg !3170, !tbaa !1080
  br label %521, !dbg !3170

521:                                              ; preds = %515, %519
  %522 = add i64 %516, 1, !dbg !3173
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !2687, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !2718, metadata !DIExpression()), !dbg !2852
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2717, metadata !DIExpression()), !dbg !2852
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2716, metadata !DIExpression()), !dbg !2852
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !2711, metadata !DIExpression()), !dbg !2843
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2705, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2702, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !2697, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !2696, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !2689, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.label(metadata !2746), !dbg !3174
  br label %547, !dbg !3175

.loopexit2:                                       ; preds = %401
  %.lcssa20 = phi i64 [ %402, %401 ], !dbg !2756
  %.lcssa19 = phi i1 [ %403, %401 ]
  %.lcssa18 = phi i1 [ %405, %401 ]
  %.lcssa17 = phi i8 [ %406, %401 ], !dbg !2852
  %.lcssa16 = phi i64 [ %346, %401 ], !dbg !2843
  br label %523, !dbg !3175

523:                                              ; preds = %.loopexit2, %246, %245, %476
  %524 = phi i64 [ %486, %476 ], [ %152, %245 ], [ %152, %246 ], [ %335, %.loopexit2 ], !dbg !3139
  %525 = phi i64 [ %485, %476 ], [ %123, %245 ], [ %123, %246 ], [ %.lcssa20, %.loopexit2 ], !dbg !2756
  %526 = phi i64 [ %484, %476 ], [ %124, %245 ], [ %124, %246 ], [ %124, %.loopexit2 ], !dbg !2760
  %527 = phi i1 [ %483, %476 ], [ %125, %245 ], [ %125, %246 ], [ %125, %.loopexit2 ]
  %528 = phi i1 [ %482, %476 ], [ %127, %245 ], [ %127, %246 ], [ %.lcssa19, %.loopexit2 ]
  %529 = phi i64 [ %481, %476 ], [ %128, %245 ], [ %128, %246 ], [ %.lcssa16, %.loopexit2 ], !dbg !3150
  %530 = phi i1 [ %480, %476 ], [ false, %245 ], [ false, %246 ], [ %.lcssa18, %.loopexit2 ]
  %531 = phi i1 [ %479, %476 ], [ false, %245 ], [ false, %246 ], [ %337, %.loopexit2 ]
  %532 = phi i8 [ %478, %476 ], [ 92, %245 ], [ 92, %246 ], [ %.lcssa17, %.loopexit2 ], !dbg !3178
  %533 = phi i64 [ %477, %476 ], [ %129, %245 ], [ %129, %246 ], [ %129, %.loopexit2 ]
  tail call void @llvm.dbg.value(metadata i64 %533, metadata !2687, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i8 %532, metadata !2718, metadata !DIExpression()), !dbg !2852
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2717, metadata !DIExpression()), !dbg !2852
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2716, metadata !DIExpression()), !dbg !2852
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !2711, metadata !DIExpression()), !dbg !2843
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2705, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2702, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !2697, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i64 %525, metadata !2696, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i64 %524, metadata !2689, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.label(metadata !2746), !dbg !3174
  %534 = xor i1 %528, true, !dbg !3175
  %535 = select i1 %534, i1 true, i1 %530, !dbg !3175
  br i1 %535, label %547, label %536, !dbg !3175

536:                                              ; preds = %523
  %537 = icmp ult i64 %525, %533, !dbg !3179
  br i1 %537, label %538, label %540, !dbg !3183

538:                                              ; preds = %536
  %539 = getelementptr inbounds i8, ptr %0, i64 %525, !dbg !3179
  store i8 39, ptr %539, align 1, !dbg !3179, !tbaa !1080
  br label %540, !dbg !3179

540:                                              ; preds = %538, %536
  %541 = add i64 %525, 1, !dbg !3183
  tail call void @llvm.dbg.value(metadata i64 %541, metadata !2696, metadata !DIExpression()), !dbg !2756
  %542 = icmp ult i64 %541, %533, !dbg !3184
  br i1 %542, label %543, label %545, !dbg !3187

543:                                              ; preds = %540
  %544 = getelementptr inbounds i8, ptr %0, i64 %541, !dbg !3184
  store i8 39, ptr %544, align 1, !dbg !3184, !tbaa !1080
  br label %545, !dbg !3184

545:                                              ; preds = %543, %540
  %546 = add i64 %525, 2, !dbg !3187
  tail call void @llvm.dbg.value(metadata i64 %546, metadata !2696, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2705, metadata !DIExpression()), !dbg !2756
  br label %547, !dbg !3188

547:                                              ; preds = %521, %523, %545
  %548 = phi i64 [ %533, %545 ], [ %533, %523 ], [ %496, %521 ]
  %549 = phi i8 [ %532, %545 ], [ %532, %523 ], [ %495, %521 ]
  %550 = phi i1 [ %531, %545 ], [ %531, %523 ], [ %494, %521 ]
  %551 = phi i64 [ %529, %545 ], [ %529, %523 ], [ %493, %521 ]
  %552 = phi i1 [ %527, %545 ], [ %527, %523 ], [ %491, %521 ]
  %553 = phi i64 [ %526, %545 ], [ %526, %523 ], [ %490, %521 ]
  %554 = phi i64 [ %524, %545 ], [ %524, %523 ], [ %488, %521 ]
  %555 = phi i64 [ %546, %545 ], [ %525, %523 ], [ %522, %521 ], !dbg !2852
  %556 = phi i1 [ false, %545 ], [ %528, %523 ], [ %517, %521 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2705, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i64 %555, metadata !2696, metadata !DIExpression()), !dbg !2756
  %557 = icmp ult i64 %555, %548, !dbg !3189
  br i1 %557, label %558, label %560, !dbg !3192

558:                                              ; preds = %547
  %559 = getelementptr inbounds i8, ptr %0, i64 %555, !dbg !3189
  store i8 %549, ptr %559, align 1, !dbg !3189, !tbaa !1080
  br label %560, !dbg !3189

560:                                              ; preds = %558, %547
  %561 = add i64 %555, 1, !dbg !3192
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !2696, metadata !DIExpression()), !dbg !2756
  %562 = select i1 %550, i1 %126, i1 false, !dbg !3193
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2703, metadata !DIExpression()), !dbg !2756
  br label %563, !dbg !3194

563:                                              ; preds = %203, %560
  %564 = phi i64 [ %554, %560 ], [ %152, %203 ], !dbg !3139
  %565 = phi i64 [ %561, %560 ], [ %123, %203 ], !dbg !2756
  %566 = phi i64 [ %553, %560 ], [ %124, %203 ], !dbg !2760
  %567 = phi i1 [ %552, %560 ], [ %125, %203 ]
  %568 = phi i1 [ %562, %560 ], [ %126, %203 ]
  %569 = phi i1 [ %556, %560 ], [ %127, %203 ]
  %570 = phi i64 [ %551, %560 ], [ %128, %203 ], !dbg !3150
  %571 = phi i64 [ %548, %560 ], [ %129, %203 ]
  tail call void @llvm.dbg.value(metadata i64 %571, metadata !2687, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i64 %570, metadata !2711, metadata !DIExpression()), !dbg !2843
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2705, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2703, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2702, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i64 %566, metadata !2697, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i64 %565, metadata !2696, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !2689, metadata !DIExpression()), !dbg !2756
  %572 = add i64 %570, 1, !dbg !3195
  tail call void @llvm.dbg.value(metadata i64 %572, metadata !2711, metadata !DIExpression()), !dbg !2843
  br label %121, !dbg !3196, !llvm.loop !3197

573:                                              ; preds = %135, %131
  %.lcssa60 = phi i64 [ %122, %135 ], [ %122, %131 ]
  %.lcssa52 = phi i64 [ %123, %135 ], [ %123, %131 ], !dbg !2831
  %.lcssa44 = phi i64 [ %124, %135 ], [ %124, %131 ], !dbg !2760
  %.lcssa38 = phi i1 [ %125, %135 ], [ %125, %131 ]
  %.lcssa32 = phi i1 [ %126, %135 ], [ %126, %131 ]
  %.lcssa24 = phi i64 [ %129, %135 ], [ %129, %131 ]
  tail call void @llvm.dbg.value(metadata i64 %.lcssa24, metadata !2687, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2703, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2702, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i64 %.lcssa44, metadata !2697, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52, metadata !2696, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i64 %.lcssa60, metadata !2689, metadata !DIExpression()), !dbg !2756
  %574 = icmp ne i64 %.lcssa52, 0, !dbg !3199
  %575 = xor i1 %109, true, !dbg !3201
  %576 = or i1 %574, %575, !dbg !3201
  %577 = or i1 %576, %110, !dbg !3201
  br i1 %577, label %578, label %.loopexit13, !dbg !3201

578:                                              ; preds = %573
  %579 = or i1 %110, %109, !dbg !3202
  %580 = xor i1 %.lcssa38, true, !dbg !3202
  %581 = select i1 %579, i1 true, i1 %580, !dbg !3202
  br i1 %581, label %589, label %582, !dbg !3202

582:                                              ; preds = %578
  br i1 %.lcssa32, label %583, label %585, !dbg !3204

583:                                              ; preds = %582
  %.lcssa103 = phi ptr [ %103, %582 ]
  %.lcssa95 = phi ptr [ %104, %582 ]
  %.lcssa60.lcssa67 = phi i64 [ %.lcssa60, %582 ]
  %.lcssa44.lcssa51 = phi i64 [ %.lcssa44, %582 ], !dbg !2760
  %584 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %.lcssa44.lcssa51, ptr noundef %2, i64 noundef %.lcssa60.lcssa67, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %.lcssa103, ptr noundef %.lcssa95), !dbg !3206
  br label %638, !dbg !3208

585:                                              ; preds = %582
  %586 = icmp eq i64 %.lcssa24, 0, !dbg !3209
  %587 = icmp ne i64 %.lcssa44, 0
  %588 = select i1 %586, i1 %587, i1 false, !dbg !3211
  br i1 %588, label %27, label %589, !dbg !3211

589:                                              ; preds = %578, %585
  %.lcssa86 = phi ptr [ %106, %578 ], [ %106, %585 ], !dbg !2756
  %.lcssa52.lcssa58 = phi i64 [ %.lcssa52, %578 ], [ %.lcssa52, %585 ], !dbg !2831
  %.lcssa24.lcssa30 = phi i64 [ %.lcssa24, %578 ], [ %.lcssa24, %585 ]
  %590 = phi i1 [ %109, %578 ], [ false, %585 ]
  %591 = icmp eq ptr %.lcssa86, null, !dbg !3212
  %592 = or i1 %591, %590, !dbg !3214
  br i1 %592, label %608, label %593, !dbg !3214

593:                                              ; preds = %589
  tail call void @llvm.dbg.value(metadata ptr %.lcssa86, metadata !2698, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52.lcssa58, metadata !2696, metadata !DIExpression()), !dbg !2756
  %594 = load i8, ptr %.lcssa86, align 1, !dbg !3215, !tbaa !1080
  %595 = icmp eq i8 %594, 0, !dbg !3218
  br i1 %595, label %608, label %.preheader, !dbg !3218

.preheader:                                       ; preds = %593
  br label %596, !dbg !3218

596:                                              ; preds = %.preheader, %603
  %597 = phi i8 [ %606, %603 ], [ %594, %.preheader ]
  %598 = phi ptr [ %605, %603 ], [ %.lcssa86, %.preheader ]
  %599 = phi i64 [ %604, %603 ], [ %.lcssa52.lcssa58, %.preheader ]
  tail call void @llvm.dbg.value(metadata ptr %598, metadata !2698, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !2696, metadata !DIExpression()), !dbg !2756
  %600 = icmp ult i64 %599, %.lcssa24.lcssa30, !dbg !3219
  br i1 %600, label %601, label %603, !dbg !3222

601:                                              ; preds = %596
  %602 = getelementptr inbounds i8, ptr %0, i64 %599, !dbg !3219
  store i8 %597, ptr %602, align 1, !dbg !3219, !tbaa !1080
  br label %603, !dbg !3219

603:                                              ; preds = %601, %596
  %604 = add i64 %599, 1, !dbg !3222
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !2696, metadata !DIExpression()), !dbg !2756
  %605 = getelementptr inbounds i8, ptr %598, i64 1, !dbg !3223
  tail call void @llvm.dbg.value(metadata ptr %605, metadata !2698, metadata !DIExpression()), !dbg !2756
  %606 = load i8, ptr %605, align 1, !dbg !3215, !tbaa !1080
  %607 = icmp eq i8 %606, 0, !dbg !3218
  br i1 %607, label %.loopexit, label %596, !dbg !3218, !llvm.loop !3224

.loopexit:                                        ; preds = %603
  %.lcssa = phi i64 [ %604, %603 ], !dbg !3222
  br label %608, !dbg !3226

608:                                              ; preds = %.loopexit, %593, %589
  %609 = phi i64 [ %.lcssa52.lcssa58, %589 ], [ %.lcssa52.lcssa58, %593 ], [ %.lcssa, %.loopexit ], !dbg !2831
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !2696, metadata !DIExpression()), !dbg !2756
  %610 = icmp ult i64 %609, %.lcssa24.lcssa30, !dbg !3226
  br i1 %610, label %611, label %638, !dbg !3228

611:                                              ; preds = %608
  %612 = getelementptr inbounds i8, ptr %0, i64 %609, !dbg !3229
  store i8 0, ptr %612, align 1, !dbg !3230, !tbaa !1080
  br label %638, !dbg !3229

613:                                              ; preds = %157
  %.lcssa106 = phi i32 [ %102, %157 ]
  %.lcssa98 = phi ptr [ %103, %157 ]
  %.lcssa90 = phi ptr [ %104, %157 ]
  %.lcssa69 = phi i64 [ %152, %157 ]
  %.lcssa27 = phi i64 [ %129, %157 ]
  call void @llvm.dbg.label(metadata !2747), !dbg !3056
  %614 = icmp eq i32 %.lcssa106, 2, !dbg !3231
  br i1 %614, label %624, label %630, !dbg !3057

.loopexit1:                                       ; preds = %350
  %.lcssa108 = phi i32 [ %102, %350 ]
  %.lcssa100 = phi ptr [ %103, %350 ]
  %.lcssa92 = phi ptr [ %104, %350 ]
  %.lcssa76 = phi i1 [ %108, %350 ]
  %.lcssa29 = phi i64 [ %129, %350 ]
  %.lcssa23 = phi i64 [ %335, %350 ], !dbg !2852
  br label %615, !dbg !3231

.loopexit8:                                       ; preds = %205, %217, %245, %247, %260, %262, %487
  %.lcssa105 = phi i32 [ %102, %205 ], [ %102, %217 ], [ %102, %245 ], [ %102, %247 ], [ %102, %260 ], [ %102, %262 ], [ %102, %487 ]
  %.lcssa97 = phi ptr [ %103, %205 ], [ %103, %217 ], [ %103, %245 ], [ %103, %247 ], [ %103, %260 ], [ %103, %262 ], [ %103, %487 ]
  %.lcssa89 = phi ptr [ %104, %205 ], [ %104, %217 ], [ %104, %245 ], [ %104, %247 ], [ %104, %260 ], [ %104, %262 ], [ %104, %487 ]
  %.lcssa73 = phi i1 [ %108, %205 ], [ %108, %217 ], [ %108, %245 ], [ %108, %247 ], [ %108, %260 ], [ %108, %262 ], [ %108, %487 ]
  %.ph9 = phi i64 [ %129, %205 ], [ %129, %217 ], [ %129, %245 ], [ %129, %247 ], [ %129, %260 ], [ %129, %262 ], [ %496, %487 ]
  %.ph10 = phi i64 [ %152, %205 ], [ %152, %217 ], [ %152, %245 ], [ %152, %247 ], [ %152, %260 ], [ %152, %262 ], [ %488, %487 ]
  br label %615, !dbg !3231

.loopexit13:                                      ; preds = %573
  %.lcssa109 = phi i32 [ %102, %573 ]
  %.lcssa101 = phi ptr [ %103, %573 ]
  %.lcssa93 = phi ptr [ %104, %573 ]
  %.lcssa77 = phi i1 [ %108, %573 ]
  %.lcssa60.lcssa = phi i64 [ %.lcssa60, %573 ]
  %.lcssa24.lcssa = phi i64 [ %.lcssa24, %573 ]
  br label %615, !dbg !3231

615:                                              ; preds = %.loopexit13, %.loopexit8, %.loopexit1
  %616 = phi i32 [ %.lcssa108, %.loopexit1 ], [ %.lcssa105, %.loopexit8 ], [ %.lcssa109, %.loopexit13 ]
  %617 = phi ptr [ %.lcssa100, %.loopexit1 ], [ %.lcssa97, %.loopexit8 ], [ %.lcssa101, %.loopexit13 ]
  %618 = phi ptr [ %.lcssa92, %.loopexit1 ], [ %.lcssa89, %.loopexit8 ], [ %.lcssa93, %.loopexit13 ]
  %619 = phi i1 [ %.lcssa76, %.loopexit1 ], [ %.lcssa73, %.loopexit8 ], [ %.lcssa77, %.loopexit13 ]
  %620 = phi i64 [ %.lcssa29, %.loopexit1 ], [ %.ph9, %.loopexit8 ], [ %.lcssa24.lcssa, %.loopexit13 ]
  %621 = phi i64 [ %.lcssa23, %.loopexit1 ], [ %.ph10, %.loopexit8 ], [ %.lcssa60.lcssa, %.loopexit13 ]
  call void @llvm.dbg.label(metadata !2747), !dbg !3056
  %622 = icmp eq i32 %616, 2, !dbg !3231
  %623 = select i1 %619, i32 4, i32 2, !dbg !3057
  br i1 %622, label %624, label %630, !dbg !3057

624:                                              ; preds = %332, %615, %613
  %625 = phi ptr [ %.lcssa98, %613 ], [ %.lcssa99, %332 ], [ %617, %615 ]
  %626 = phi ptr [ %.lcssa90, %613 ], [ %.lcssa91, %332 ], [ %618, %615 ]
  %627 = phi i32 [ 4, %613 ], [ %333, %332 ], [ %623, %615 ]
  %628 = phi i64 [ %.lcssa27, %613 ], [ %.lcssa28, %332 ], [ %620, %615 ]
  %629 = phi i64 [ %.lcssa69, %613 ], [ %.lcssa22, %332 ], [ %621, %615 ]
  br label %630, !dbg !3057

.loopexit7:                                       ; preds = %146
  %.lcssa104 = phi i32 [ %102, %146 ]
  %.lcssa96 = phi ptr [ %103, %146 ]
  %.lcssa88 = phi ptr [ %104, %146 ]
  %.lcssa25 = phi i64 [ %129, %146 ]
  %.lcssa21 = phi i64 [ %144, %146 ], !dbg !2858
  br label %630, !dbg !3232

630:                                              ; preds = %.loopexit7, %615, %613, %624
  %631 = phi ptr [ %625, %624 ], [ %.lcssa98, %613 ], [ %617, %615 ], [ %.lcssa96, %.loopexit7 ]
  %632 = phi ptr [ %626, %624 ], [ %.lcssa90, %613 ], [ %618, %615 ], [ %.lcssa88, %.loopexit7 ]
  %633 = phi i64 [ %628, %624 ], [ %.lcssa27, %613 ], [ %620, %615 ], [ %.lcssa25, %.loopexit7 ]
  %634 = phi i64 [ %629, %624 ], [ %.lcssa69, %613 ], [ %621, %615 ], [ %.lcssa21, %.loopexit7 ]
  %635 = phi i32 [ %627, %624 ], [ %.lcssa106, %613 ], [ %616, %615 ], [ %.lcssa104, %.loopexit7 ]
  tail call void @llvm.dbg.value(metadata i32 %635, metadata !2690, metadata !DIExpression()), !dbg !2756
  %636 = and i32 %5, -3, !dbg !3232
  %637 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %633, ptr noundef %2, i64 noundef %634, i32 noundef %635, i32 noundef %636, ptr noundef null, ptr noundef %631, ptr noundef %632), !dbg !3233
  br label %638, !dbg !3234

638:                                              ; preds = %608, %611, %630, %583
  %639 = phi i64 [ %637, %630 ], [ %584, %583 ], [ %609, %611 ], [ %609, %608 ]
  ret i64 %639, !dbg !3235
}

; Function Attrs: nounwind
declare !dbg !3236 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !3238 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !3241 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3243 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3247, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3248, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3249, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.value(metadata ptr %0, metadata !3251, metadata !DIExpression()), !dbg !3264
  call void @llvm.dbg.value(metadata i64 %1, metadata !3256, metadata !DIExpression()), !dbg !3264
  call void @llvm.dbg.value(metadata ptr null, metadata !3257, metadata !DIExpression()), !dbg !3264
  call void @llvm.dbg.value(metadata ptr %2, metadata !3258, metadata !DIExpression()), !dbg !3264
  %4 = icmp eq ptr %2, null, !dbg !3266
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3266
  call void @llvm.dbg.value(metadata ptr %5, metadata !3259, metadata !DIExpression()), !dbg !3264
  %6 = tail call ptr @__errno_location() #44, !dbg !3267
  %7 = load i32, ptr %6, align 4, !dbg !3267, !tbaa !1071
  call void @llvm.dbg.value(metadata i32 %7, metadata !3260, metadata !DIExpression()), !dbg !3264
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3268
  %9 = load i32, ptr %8, align 4, !dbg !3268, !tbaa !2630
  %10 = or i32 %9, 1, !dbg !3269
  call void @llvm.dbg.value(metadata i32 %10, metadata !3261, metadata !DIExpression()), !dbg !3264
  %11 = load i32, ptr %5, align 8, !dbg !3270, !tbaa !2580
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3271
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3272
  %14 = load ptr, ptr %13, align 8, !dbg !3272, !tbaa !2651
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3273
  %16 = load ptr, ptr %15, align 8, !dbg !3273, !tbaa !2654
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3274
  %18 = add i64 %17, 1, !dbg !3275
  call void @llvm.dbg.value(metadata i64 %18, metadata !3262, metadata !DIExpression()), !dbg !3264
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #48, !dbg !3276
  call void @llvm.dbg.value(metadata ptr %19, metadata !3263, metadata !DIExpression()), !dbg !3264
  %20 = load i32, ptr %5, align 8, !dbg !3277, !tbaa !2580
  %21 = load ptr, ptr %13, align 8, !dbg !3278, !tbaa !2651
  %22 = load ptr, ptr %15, align 8, !dbg !3279, !tbaa !2654
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3280
  store i32 %7, ptr %6, align 4, !dbg !3281, !tbaa !1071
  ret ptr %19, !dbg !3282
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3252 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3251, metadata !DIExpression()), !dbg !3283
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3256, metadata !DIExpression()), !dbg !3283
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3257, metadata !DIExpression()), !dbg !3283
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3258, metadata !DIExpression()), !dbg !3283
  %5 = icmp eq ptr %3, null, !dbg !3284
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3284
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3259, metadata !DIExpression()), !dbg !3283
  %7 = tail call ptr @__errno_location() #44, !dbg !3285
  %8 = load i32, ptr %7, align 4, !dbg !3285, !tbaa !1071
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !3260, metadata !DIExpression()), !dbg !3283
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3286
  %10 = load i32, ptr %9, align 4, !dbg !3286, !tbaa !2630
  %11 = icmp eq ptr %2, null, !dbg !3287
  %12 = zext i1 %11 to i32, !dbg !3287
  %13 = or i32 %10, %12, !dbg !3288
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !3261, metadata !DIExpression()), !dbg !3283
  %14 = load i32, ptr %6, align 8, !dbg !3289, !tbaa !2580
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3290
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3291
  %17 = load ptr, ptr %16, align 8, !dbg !3291, !tbaa !2651
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3292
  %19 = load ptr, ptr %18, align 8, !dbg !3292, !tbaa !2654
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3293
  %21 = add i64 %20, 1, !dbg !3294
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3262, metadata !DIExpression()), !dbg !3283
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #48, !dbg !3295
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !3263, metadata !DIExpression()), !dbg !3283
  %23 = load i32, ptr %6, align 8, !dbg !3296, !tbaa !2580
  %24 = load ptr, ptr %16, align 8, !dbg !3297, !tbaa !2651
  %25 = load ptr, ptr %18, align 8, !dbg !3298, !tbaa !2654
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3299
  store i32 %8, ptr %7, align 4, !dbg !3300, !tbaa !1071
  br i1 %11, label %28, label %27, !dbg !3301

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3302, !tbaa !3304
  br label %28, !dbg !3305

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3306
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !3307 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3312, !tbaa !997
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3309, metadata !DIExpression()), !dbg !3313
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3310, metadata !DIExpression()), !dbg !3314
  %2 = load i32, ptr @nslots, align 4, !tbaa !1071
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3310, metadata !DIExpression()), !dbg !3314
  %3 = icmp sgt i32 %2, 1, !dbg !3315
  br i1 %3, label %4, label %6, !dbg !3317

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !3315
  br label %10, !dbg !3317

.loopexit:                                        ; preds = %10
  br label %6, !dbg !3318

6:                                                ; preds = %.loopexit, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3318
  %8 = load ptr, ptr %7, align 8, !dbg !3318, !tbaa !3320
  %9 = icmp eq ptr %8, @slot0, !dbg !3322
  br i1 %9, label %17, label %16, !dbg !3323

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3310, metadata !DIExpression()), !dbg !3314
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3324
  %13 = load ptr, ptr %12, align 8, !dbg !3324, !tbaa !3320
  tail call void @free(ptr noundef %13) #41, !dbg !3325
  %14 = add nuw nsw i64 %11, 1, !dbg !3326
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !3310, metadata !DIExpression()), !dbg !3314
  %15 = icmp eq i64 %14, %5, !dbg !3315
  br i1 %15, label %.loopexit, label %10, !dbg !3317, !llvm.loop !3327

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #41, !dbg !3329
  store i64 256, ptr @slotvec0, align 8, !dbg !3331, !tbaa !3332
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3333, !tbaa !3320
  br label %17, !dbg !3334

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3335
  br i1 %18, label %20, label %19, !dbg !3337

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #41, !dbg !3338
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3340, !tbaa !997
  br label %20, !dbg !3341

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3342, !tbaa !1071
  ret void, !dbg !3343
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3344 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3346, metadata !DIExpression()), !dbg !3348
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3347, metadata !DIExpression()), !dbg !3348
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3349
  ret ptr %3, !dbg !3350
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !3351 {
  %5 = alloca i64, align 8, !DIAssignID !3371
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3365, metadata !DIExpression(), metadata !3371, metadata ptr %5, metadata !DIExpression()), !dbg !3372
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3355, metadata !DIExpression()), !dbg !3373
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3356, metadata !DIExpression()), !dbg !3373
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3357, metadata !DIExpression()), !dbg !3373
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3358, metadata !DIExpression()), !dbg !3373
  %6 = tail call ptr @__errno_location() #44, !dbg !3374
  %7 = load i32, ptr %6, align 4, !dbg !3374, !tbaa !1071
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !3359, metadata !DIExpression()), !dbg !3373
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3375, !tbaa !997
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !3360, metadata !DIExpression()), !dbg !3373
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !3361, metadata !DIExpression()), !dbg !3373
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3376
  br i1 %9, label %10, label %11, !dbg !3376

10:                                               ; preds = %4
  tail call void @abort() #43, !dbg !3378
  unreachable, !dbg !3378

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3379, !tbaa !1071
  %13 = icmp sgt i32 %12, %0, !dbg !3380
  br i1 %13, label %32, label %14, !dbg !3381

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3382
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !3362, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3372
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #41, !dbg !3383
  %16 = sext i32 %12 to i64, !dbg !3384
  store i64 %16, ptr %5, align 8, !dbg !3385, !tbaa !3304, !DIAssignID !3386
  call void @llvm.dbg.assign(metadata i64 %16, metadata !3365, metadata !DIExpression(), metadata !3386, metadata ptr %5, metadata !DIExpression()), !dbg !3372
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3387
  %18 = add nuw nsw i32 %0, 1, !dbg !3388
  %19 = sub i32 %18, %12, !dbg !3389
  %20 = sext i32 %19 to i64, !dbg !3390
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #41, !dbg !3391
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !3360, metadata !DIExpression()), !dbg !3373
  store ptr %21, ptr @slotvec, align 8, !dbg !3392, !tbaa !997
  br i1 %15, label %22, label %23, !dbg !3393

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3394, !tbaa.struct !3396
  br label %23, !dbg !3397

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3398, !tbaa !1071
  %25 = sext i32 %24 to i64, !dbg !3399
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3399
  %27 = load i64, ptr %5, align 8, !dbg !3400, !tbaa !3304
  %28 = sub nsw i64 %27, %25, !dbg !3401
  %29 = shl i64 %28, 4, !dbg !3402
  call void @llvm.dbg.value(metadata ptr %26, metadata !2789, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata i32 0, metadata !2792, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata i64 %29, metadata !2793, metadata !DIExpression()), !dbg !3403
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #41, !dbg !3405
  %30 = load i64, ptr %5, align 8, !dbg !3406, !tbaa !3304
  %31 = trunc i64 %30 to i32, !dbg !3406
  store i32 %31, ptr @nslots, align 4, !dbg !3407, !tbaa !1071
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #41, !dbg !3408
  br label %32, !dbg !3409

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3373
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !3360, metadata !DIExpression()), !dbg !3373
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3410
  %36 = load i64, ptr %35, align 8, !dbg !3411, !tbaa !3332
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !3366, metadata !DIExpression()), !dbg !3412
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3413
  %38 = load ptr, ptr %37, align 8, !dbg !3413, !tbaa !3320
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !3368, metadata !DIExpression()), !dbg !3412
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3414
  %40 = load i32, ptr %39, align 4, !dbg !3414, !tbaa !2630
  %41 = or i32 %40, 1, !dbg !3415
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !3369, metadata !DIExpression()), !dbg !3412
  %42 = load i32, ptr %3, align 8, !dbg !3416, !tbaa !2580
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3417
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3418
  %45 = load ptr, ptr %44, align 8, !dbg !3418, !tbaa !2651
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3419
  %47 = load ptr, ptr %46, align 8, !dbg !3419, !tbaa !2654
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3420
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !3370, metadata !DIExpression()), !dbg !3412
  %49 = icmp ugt i64 %36, %48, !dbg !3421
  br i1 %49, label %60, label %50, !dbg !3423

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3424
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !3366, metadata !DIExpression()), !dbg !3412
  store i64 %51, ptr %35, align 8, !dbg !3426, !tbaa !3332
  %52 = icmp eq ptr %38, @slot0, !dbg !3427
  br i1 %52, label %54, label %53, !dbg !3429

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #41, !dbg !3430
  br label %54, !dbg !3430

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #48, !dbg !3431
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !3368, metadata !DIExpression()), !dbg !3412
  store ptr %55, ptr %37, align 8, !dbg !3432, !tbaa !3320
  %56 = load i32, ptr %3, align 8, !dbg !3433, !tbaa !2580
  %57 = load ptr, ptr %44, align 8, !dbg !3434, !tbaa !2651
  %58 = load ptr, ptr %46, align 8, !dbg !3435, !tbaa !2654
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3436
  br label %60, !dbg !3437

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3412
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !3368, metadata !DIExpression()), !dbg !3412
  store i32 %7, ptr %6, align 4, !dbg !3438, !tbaa !1071
  ret ptr %61, !dbg !3439
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #26

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3440 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3444, metadata !DIExpression()), !dbg !3447
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3445, metadata !DIExpression()), !dbg !3447
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3446, metadata !DIExpression()), !dbg !3447
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3448
  ret ptr %4, !dbg !3449
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3450 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3452, metadata !DIExpression()), !dbg !3453
  call void @llvm.dbg.value(metadata i32 0, metadata !3346, metadata !DIExpression()), !dbg !3454
  call void @llvm.dbg.value(metadata ptr %0, metadata !3347, metadata !DIExpression()), !dbg !3454
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3456
  ret ptr %2, !dbg !3457
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3458 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3462, metadata !DIExpression()), !dbg !3464
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3463, metadata !DIExpression()), !dbg !3464
  call void @llvm.dbg.value(metadata i32 0, metadata !3444, metadata !DIExpression()), !dbg !3465
  call void @llvm.dbg.value(metadata ptr %0, metadata !3445, metadata !DIExpression()), !dbg !3465
  call void @llvm.dbg.value(metadata i64 %1, metadata !3446, metadata !DIExpression()), !dbg !3465
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3467
  ret ptr %3, !dbg !3468
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3469 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3477
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3476, metadata !DIExpression(), metadata !3477, metadata ptr %4, metadata !DIExpression()), !dbg !3478
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3473, metadata !DIExpression()), !dbg !3478
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3474, metadata !DIExpression()), !dbg !3478
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3475, metadata !DIExpression()), !dbg !3478
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !3479
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3480), !dbg !3483
  call void @llvm.dbg.value(metadata i32 %1, metadata !3484, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3489, metadata !DIExpression()), !dbg !3492
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3492, !alias.scope !3480, !DIAssignID !3493
  call void @llvm.dbg.assign(metadata i8 0, metadata !3476, metadata !DIExpression(), metadata !3493, metadata ptr %4, metadata !DIExpression()), !dbg !3478
  %5 = icmp eq i32 %1, 10, !dbg !3494
  br i1 %5, label %6, label %7, !dbg !3496

6:                                                ; preds = %3
  tail call void @abort() #43, !dbg !3497, !noalias !3480
  unreachable, !dbg !3497

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3498, !tbaa !2580, !alias.scope !3480, !DIAssignID !3499
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3476, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3499, metadata ptr %4, metadata !DIExpression()), !dbg !3478
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3500
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !3501
  ret ptr %8, !dbg !3502
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3503 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3512
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3511, metadata !DIExpression(), metadata !3512, metadata ptr %5, metadata !DIExpression()), !dbg !3513
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3507, metadata !DIExpression()), !dbg !3513
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3508, metadata !DIExpression()), !dbg !3513
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3509, metadata !DIExpression()), !dbg !3513
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3510, metadata !DIExpression()), !dbg !3513
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #41, !dbg !3514
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3515), !dbg !3518
  call void @llvm.dbg.value(metadata i32 %1, metadata !3484, metadata !DIExpression()), !dbg !3519
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3489, metadata !DIExpression()), !dbg !3521
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3521, !alias.scope !3515, !DIAssignID !3522
  call void @llvm.dbg.assign(metadata i8 0, metadata !3511, metadata !DIExpression(), metadata !3522, metadata ptr %5, metadata !DIExpression()), !dbg !3513
  %6 = icmp eq i32 %1, 10, !dbg !3523
  br i1 %6, label %7, label %8, !dbg !3524

7:                                                ; preds = %4
  tail call void @abort() #43, !dbg !3525, !noalias !3515
  unreachable, !dbg !3525

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3526, !tbaa !2580, !alias.scope !3515, !DIAssignID !3527
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3511, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3527, metadata ptr %5, metadata !DIExpression()), !dbg !3513
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3528
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #41, !dbg !3529
  ret ptr %9, !dbg !3530
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3531 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3537
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3535, metadata !DIExpression()), !dbg !3538
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3536, metadata !DIExpression()), !dbg !3538
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3476, metadata !DIExpression(), metadata !3537, metadata ptr %3, metadata !DIExpression()), !dbg !3539
  call void @llvm.dbg.value(metadata i32 0, metadata !3473, metadata !DIExpression()), !dbg !3539
  call void @llvm.dbg.value(metadata i32 %0, metadata !3474, metadata !DIExpression()), !dbg !3539
  call void @llvm.dbg.value(metadata ptr %1, metadata !3475, metadata !DIExpression()), !dbg !3539
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #41, !dbg !3541
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3542), !dbg !3545
  call void @llvm.dbg.value(metadata i32 %0, metadata !3484, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3489, metadata !DIExpression()), !dbg !3548
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3548, !alias.scope !3542, !DIAssignID !3549
  call void @llvm.dbg.assign(metadata i8 0, metadata !3476, metadata !DIExpression(), metadata !3549, metadata ptr %3, metadata !DIExpression()), !dbg !3539
  %4 = icmp eq i32 %0, 10, !dbg !3550
  br i1 %4, label %5, label %6, !dbg !3551

5:                                                ; preds = %2
  tail call void @abort() #43, !dbg !3552, !noalias !3542
  unreachable, !dbg !3552

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3553, !tbaa !2580, !alias.scope !3542, !DIAssignID !3554
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3476, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3554, metadata ptr %3, metadata !DIExpression()), !dbg !3539
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3555
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #41, !dbg !3556
  ret ptr %7, !dbg !3557
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3558 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3565
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3562, metadata !DIExpression()), !dbg !3566
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3563, metadata !DIExpression()), !dbg !3566
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3564, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3511, metadata !DIExpression(), metadata !3565, metadata ptr %4, metadata !DIExpression()), !dbg !3567
  call void @llvm.dbg.value(metadata i32 0, metadata !3507, metadata !DIExpression()), !dbg !3567
  call void @llvm.dbg.value(metadata i32 %0, metadata !3508, metadata !DIExpression()), !dbg !3567
  call void @llvm.dbg.value(metadata ptr %1, metadata !3509, metadata !DIExpression()), !dbg !3567
  call void @llvm.dbg.value(metadata i64 %2, metadata !3510, metadata !DIExpression()), !dbg !3567
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !3569
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3570), !dbg !3573
  call void @llvm.dbg.value(metadata i32 %0, metadata !3484, metadata !DIExpression()), !dbg !3574
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3489, metadata !DIExpression()), !dbg !3576
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3576, !alias.scope !3570, !DIAssignID !3577
  call void @llvm.dbg.assign(metadata i8 0, metadata !3511, metadata !DIExpression(), metadata !3577, metadata ptr %4, metadata !DIExpression()), !dbg !3567
  %5 = icmp eq i32 %0, 10, !dbg !3578
  br i1 %5, label %6, label %7, !dbg !3579

6:                                                ; preds = %3
  tail call void @abort() #43, !dbg !3580, !noalias !3570
  unreachable, !dbg !3580

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3581, !tbaa !2580, !alias.scope !3570, !DIAssignID !3582
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3511, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3582, metadata ptr %4, metadata !DIExpression()), !dbg !3567
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3583
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !3584
  ret ptr %8, !dbg !3585
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !3586 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3594
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3593, metadata !DIExpression(), metadata !3594, metadata ptr %4, metadata !DIExpression()), !dbg !3595
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3590, metadata !DIExpression()), !dbg !3595
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3591, metadata !DIExpression()), !dbg !3595
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !3592, metadata !DIExpression()), !dbg !3595
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !3596
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3597, !tbaa.struct !3598, !DIAssignID !3599
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3593, metadata !DIExpression(), metadata !3599, metadata ptr %4, metadata !DIExpression()), !dbg !3595
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2597, metadata !DIExpression()), !dbg !3600
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2598, metadata !DIExpression()), !dbg !3600
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2599, metadata !DIExpression()), !dbg !3600
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2600, metadata !DIExpression()), !dbg !3600
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3602
  %6 = lshr i8 %2, 5, !dbg !3603
  %7 = zext nneg i8 %6 to i64, !dbg !3603
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3604
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2601, metadata !DIExpression()), !dbg !3600
  %9 = and i8 %2, 31, !dbg !3605
  %10 = zext nneg i8 %9 to i32, !dbg !3605
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2603, metadata !DIExpression()), !dbg !3600
  %11 = load i32, ptr %8, align 4, !dbg !3606, !tbaa !1071
  %12 = lshr i32 %11, %10, !dbg !3607
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !2604, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3600
  %13 = and i32 %12, 1, !dbg !3608
  %14 = xor i32 %13, 1, !dbg !3608
  %15 = shl nuw i32 %14, %10, !dbg !3609
  %16 = xor i32 %15, %11, !dbg !3610
  store i32 %16, ptr %8, align 4, !dbg !3610, !tbaa !1071
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3611
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !3612
  ret ptr %17, !dbg !3613
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !3614 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3620
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3618, metadata !DIExpression()), !dbg !3621
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !3619, metadata !DIExpression()), !dbg !3621
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3593, metadata !DIExpression(), metadata !3620, metadata ptr %3, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata ptr %0, metadata !3590, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata i64 -1, metadata !3591, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata i8 %1, metadata !3592, metadata !DIExpression()), !dbg !3622
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #41, !dbg !3624
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3625, !tbaa.struct !3598, !DIAssignID !3626
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3593, metadata !DIExpression(), metadata !3626, metadata ptr %3, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata ptr %3, metadata !2597, metadata !DIExpression()), !dbg !3627
  call void @llvm.dbg.value(metadata i8 %1, metadata !2598, metadata !DIExpression()), !dbg !3627
  call void @llvm.dbg.value(metadata i32 1, metadata !2599, metadata !DIExpression()), !dbg !3627
  call void @llvm.dbg.value(metadata i8 %1, metadata !2600, metadata !DIExpression()), !dbg !3627
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3629
  %5 = lshr i8 %1, 5, !dbg !3630
  %6 = zext nneg i8 %5 to i64, !dbg !3630
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3631
  call void @llvm.dbg.value(metadata ptr %7, metadata !2601, metadata !DIExpression()), !dbg !3627
  %8 = and i8 %1, 31, !dbg !3632
  %9 = zext nneg i8 %8 to i32, !dbg !3632
  call void @llvm.dbg.value(metadata i32 %9, metadata !2603, metadata !DIExpression()), !dbg !3627
  %10 = load i32, ptr %7, align 4, !dbg !3633, !tbaa !1071
  %11 = lshr i32 %10, %9, !dbg !3634
  call void @llvm.dbg.value(metadata i32 %11, metadata !2604, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3627
  %12 = and i32 %11, 1, !dbg !3635
  %13 = xor i32 %12, 1, !dbg !3635
  %14 = shl nuw i32 %13, %9, !dbg !3636
  %15 = xor i32 %14, %10, !dbg !3637
  store i32 %15, ptr %7, align 4, !dbg !3637, !tbaa !1071
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3638
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #41, !dbg !3639
  ret ptr %16, !dbg !3640
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !3641 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !3644
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3643, metadata !DIExpression()), !dbg !3645
  call void @llvm.dbg.value(metadata ptr %0, metadata !3618, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i8 58, metadata !3619, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3593, metadata !DIExpression(), metadata !3644, metadata ptr %2, metadata !DIExpression()), !dbg !3648
  call void @llvm.dbg.value(metadata ptr %0, metadata !3590, metadata !DIExpression()), !dbg !3648
  call void @llvm.dbg.value(metadata i64 -1, metadata !3591, metadata !DIExpression()), !dbg !3648
  call void @llvm.dbg.value(metadata i8 58, metadata !3592, metadata !DIExpression()), !dbg !3648
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #41, !dbg !3650
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3651, !tbaa.struct !3598, !DIAssignID !3652
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3593, metadata !DIExpression(), metadata !3652, metadata ptr %2, metadata !DIExpression()), !dbg !3648
  call void @llvm.dbg.value(metadata ptr %2, metadata !2597, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata i8 58, metadata !2598, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata i32 1, metadata !2599, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata i8 58, metadata !2600, metadata !DIExpression()), !dbg !3653
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3655
  call void @llvm.dbg.value(metadata ptr %3, metadata !2601, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata i32 26, metadata !2603, metadata !DIExpression()), !dbg !3653
  %4 = load i32, ptr %3, align 4, !dbg !3656, !tbaa !1071
  call void @llvm.dbg.value(metadata i32 %4, metadata !2604, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3653
  %5 = or i32 %4, 67108864, !dbg !3657
  store i32 %5, ptr %3, align 4, !dbg !3657, !tbaa !1071
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3658
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #41, !dbg !3659
  ret ptr %6, !dbg !3660
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3661 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3665
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3663, metadata !DIExpression()), !dbg !3666
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3664, metadata !DIExpression()), !dbg !3666
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3593, metadata !DIExpression(), metadata !3665, metadata ptr %3, metadata !DIExpression()), !dbg !3667
  call void @llvm.dbg.value(metadata ptr %0, metadata !3590, metadata !DIExpression()), !dbg !3667
  call void @llvm.dbg.value(metadata i64 %1, metadata !3591, metadata !DIExpression()), !dbg !3667
  call void @llvm.dbg.value(metadata i8 58, metadata !3592, metadata !DIExpression()), !dbg !3667
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #41, !dbg !3669
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3670, !tbaa.struct !3598, !DIAssignID !3671
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3593, metadata !DIExpression(), metadata !3671, metadata ptr %3, metadata !DIExpression()), !dbg !3667
  call void @llvm.dbg.value(metadata ptr %3, metadata !2597, metadata !DIExpression()), !dbg !3672
  call void @llvm.dbg.value(metadata i8 58, metadata !2598, metadata !DIExpression()), !dbg !3672
  call void @llvm.dbg.value(metadata i32 1, metadata !2599, metadata !DIExpression()), !dbg !3672
  call void @llvm.dbg.value(metadata i8 58, metadata !2600, metadata !DIExpression()), !dbg !3672
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3674
  call void @llvm.dbg.value(metadata ptr %4, metadata !2601, metadata !DIExpression()), !dbg !3672
  call void @llvm.dbg.value(metadata i32 26, metadata !2603, metadata !DIExpression()), !dbg !3672
  %5 = load i32, ptr %4, align 4, !dbg !3675, !tbaa !1071
  call void @llvm.dbg.value(metadata i32 %5, metadata !2604, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3672
  %6 = or i32 %5, 67108864, !dbg !3676
  store i32 %6, ptr %4, align 4, !dbg !3676, !tbaa !1071
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3677
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #41, !dbg !3678
  ret ptr %7, !dbg !3679
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3680 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3686
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3685, metadata !DIExpression(), metadata !3686, metadata ptr %4, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3489, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3688
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3682, metadata !DIExpression()), !dbg !3687
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3683, metadata !DIExpression()), !dbg !3687
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3684, metadata !DIExpression()), !dbg !3687
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !3690
  call void @llvm.dbg.value(metadata i32 %1, metadata !3484, metadata !DIExpression()), !dbg !3691
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3489, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3691
  %5 = icmp eq i32 %1, 10, !dbg !3692
  br i1 %5, label %6, label %7, !dbg !3693

6:                                                ; preds = %3
  tail call void @abort() #43, !dbg !3694, !noalias !3695
  unreachable, !dbg !3694

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3489, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3691
  store i32 %1, ptr %4, align 8, !dbg !3698, !tbaa.struct !3598, !DIAssignID !3699
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3698
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3698
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3685, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3699, metadata ptr %4, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3685, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !3700, metadata ptr %8, metadata !DIExpression()), !dbg !3687
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2597, metadata !DIExpression()), !dbg !3701
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2598, metadata !DIExpression()), !dbg !3701
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2599, metadata !DIExpression()), !dbg !3701
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2600, metadata !DIExpression()), !dbg !3701
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3703
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2601, metadata !DIExpression()), !dbg !3701
  tail call void @llvm.dbg.value(metadata i32 26, metadata !2603, metadata !DIExpression()), !dbg !3701
  %10 = load i32, ptr %9, align 4, !dbg !3704, !tbaa !1071
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2604, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3701
  %11 = or i32 %10, 67108864, !dbg !3705
  store i32 %11, ptr %9, align 4, !dbg !3705, !tbaa !1071, !DIAssignID !3706
  call void @llvm.dbg.assign(metadata i32 %11, metadata !3685, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !3706, metadata ptr %9, metadata !DIExpression()), !dbg !3687
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3707
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !3708
  ret ptr %12, !dbg !3709
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3710 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3718
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3714, metadata !DIExpression()), !dbg !3719
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3715, metadata !DIExpression()), !dbg !3719
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3716, metadata !DIExpression()), !dbg !3719
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3717, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3720, metadata !DIExpression(), metadata !3718, metadata ptr %5, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata i32 %0, metadata !3725, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata ptr %1, metadata !3726, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata ptr %2, metadata !3727, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata ptr %3, metadata !3728, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata i64 -1, metadata !3729, metadata !DIExpression()), !dbg !3730
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #41, !dbg !3732
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3733, !tbaa.struct !3598, !DIAssignID !3734
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3720, metadata !DIExpression(), metadata !3734, metadata ptr %5, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3720, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3735, metadata ptr undef, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata ptr %5, metadata !2637, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata ptr %1, metadata !2638, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata ptr %2, metadata !2639, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata ptr %5, metadata !2637, metadata !DIExpression()), !dbg !3736
  store i32 10, ptr %5, align 8, !dbg !3738, !tbaa !2580, !DIAssignID !3739
  call void @llvm.dbg.assign(metadata i32 10, metadata !3720, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3739, metadata ptr %5, metadata !DIExpression()), !dbg !3730
  %6 = icmp ne ptr %1, null, !dbg !3740
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3741
  br i1 %8, label %10, label %9, !dbg !3741

9:                                                ; preds = %4
  tail call void @abort() #43, !dbg !3742
  unreachable, !dbg !3742

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3743
  store ptr %1, ptr %11, align 8, !dbg !3744, !tbaa !2651, !DIAssignID !3745
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3720, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3745, metadata ptr %11, metadata !DIExpression()), !dbg !3730
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3746
  store ptr %2, ptr %12, align 8, !dbg !3747, !tbaa !2654, !DIAssignID !3748
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3720, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3748, metadata ptr %12, metadata !DIExpression()), !dbg !3730
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3749
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #41, !dbg !3750
  ret ptr %13, !dbg !3751
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3721 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !3752
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3720, metadata !DIExpression(), metadata !3752, metadata ptr %6, metadata !DIExpression()), !dbg !3753
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3725, metadata !DIExpression()), !dbg !3753
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3726, metadata !DIExpression()), !dbg !3753
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3727, metadata !DIExpression()), !dbg !3753
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3728, metadata !DIExpression()), !dbg !3753
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !3729, metadata !DIExpression()), !dbg !3753
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #41, !dbg !3754
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3755, !tbaa.struct !3598, !DIAssignID !3756
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3720, metadata !DIExpression(), metadata !3756, metadata ptr %6, metadata !DIExpression()), !dbg !3753
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3720, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3757, metadata ptr undef, metadata !DIExpression()), !dbg !3753
  call void @llvm.dbg.value(metadata ptr %6, metadata !2637, metadata !DIExpression()), !dbg !3758
  call void @llvm.dbg.value(metadata ptr %1, metadata !2638, metadata !DIExpression()), !dbg !3758
  call void @llvm.dbg.value(metadata ptr %2, metadata !2639, metadata !DIExpression()), !dbg !3758
  call void @llvm.dbg.value(metadata ptr %6, metadata !2637, metadata !DIExpression()), !dbg !3758
  store i32 10, ptr %6, align 8, !dbg !3760, !tbaa !2580, !DIAssignID !3761
  call void @llvm.dbg.assign(metadata i32 10, metadata !3720, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3761, metadata ptr %6, metadata !DIExpression()), !dbg !3753
  %7 = icmp ne ptr %1, null, !dbg !3762
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3763
  br i1 %9, label %11, label %10, !dbg !3763

10:                                               ; preds = %5
  tail call void @abort() #43, !dbg !3764
  unreachable, !dbg !3764

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3765
  store ptr %1, ptr %12, align 8, !dbg !3766, !tbaa !2651, !DIAssignID !3767
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3720, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3767, metadata ptr %12, metadata !DIExpression()), !dbg !3753
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3768
  store ptr %2, ptr %13, align 8, !dbg !3769, !tbaa !2654, !DIAssignID !3770
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3720, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3770, metadata ptr %13, metadata !DIExpression()), !dbg !3753
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3771
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #41, !dbg !3772
  ret ptr %14, !dbg !3773
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3774 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3781
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3778, metadata !DIExpression()), !dbg !3782
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3779, metadata !DIExpression()), !dbg !3782
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3780, metadata !DIExpression()), !dbg !3782
  call void @llvm.dbg.value(metadata i32 0, metadata !3714, metadata !DIExpression()), !dbg !3783
  call void @llvm.dbg.value(metadata ptr %0, metadata !3715, metadata !DIExpression()), !dbg !3783
  call void @llvm.dbg.value(metadata ptr %1, metadata !3716, metadata !DIExpression()), !dbg !3783
  call void @llvm.dbg.value(metadata ptr %2, metadata !3717, metadata !DIExpression()), !dbg !3783
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3720, metadata !DIExpression(), metadata !3781, metadata ptr %4, metadata !DIExpression()), !dbg !3785
  call void @llvm.dbg.value(metadata i32 0, metadata !3725, metadata !DIExpression()), !dbg !3785
  call void @llvm.dbg.value(metadata ptr %0, metadata !3726, metadata !DIExpression()), !dbg !3785
  call void @llvm.dbg.value(metadata ptr %1, metadata !3727, metadata !DIExpression()), !dbg !3785
  call void @llvm.dbg.value(metadata ptr %2, metadata !3728, metadata !DIExpression()), !dbg !3785
  call void @llvm.dbg.value(metadata i64 -1, metadata !3729, metadata !DIExpression()), !dbg !3785
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !3787
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3788, !tbaa.struct !3598, !DIAssignID !3789
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3720, metadata !DIExpression(), metadata !3789, metadata ptr %4, metadata !DIExpression()), !dbg !3785
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3720, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3790, metadata ptr undef, metadata !DIExpression()), !dbg !3785
  call void @llvm.dbg.value(metadata ptr %4, metadata !2637, metadata !DIExpression()), !dbg !3791
  call void @llvm.dbg.value(metadata ptr %0, metadata !2638, metadata !DIExpression()), !dbg !3791
  call void @llvm.dbg.value(metadata ptr %1, metadata !2639, metadata !DIExpression()), !dbg !3791
  call void @llvm.dbg.value(metadata ptr %4, metadata !2637, metadata !DIExpression()), !dbg !3791
  store i32 10, ptr %4, align 8, !dbg !3793, !tbaa !2580, !DIAssignID !3794
  call void @llvm.dbg.assign(metadata i32 10, metadata !3720, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3794, metadata ptr %4, metadata !DIExpression()), !dbg !3785
  %5 = icmp ne ptr %0, null, !dbg !3795
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3796
  br i1 %7, label %9, label %8, !dbg !3796

8:                                                ; preds = %3
  tail call void @abort() #43, !dbg !3797
  unreachable, !dbg !3797

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3798
  store ptr %0, ptr %10, align 8, !dbg !3799, !tbaa !2651, !DIAssignID !3800
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3720, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3800, metadata ptr %10, metadata !DIExpression()), !dbg !3785
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3801
  store ptr %1, ptr %11, align 8, !dbg !3802, !tbaa !2654, !DIAssignID !3803
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3720, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3803, metadata ptr %11, metadata !DIExpression()), !dbg !3785
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3804
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !3805
  ret ptr %12, !dbg !3806
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3807 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3815
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3811, metadata !DIExpression()), !dbg !3816
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3812, metadata !DIExpression()), !dbg !3816
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3813, metadata !DIExpression()), !dbg !3816
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3814, metadata !DIExpression()), !dbg !3816
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3720, metadata !DIExpression(), metadata !3815, metadata ptr %5, metadata !DIExpression()), !dbg !3817
  call void @llvm.dbg.value(metadata i32 0, metadata !3725, metadata !DIExpression()), !dbg !3817
  call void @llvm.dbg.value(metadata ptr %0, metadata !3726, metadata !DIExpression()), !dbg !3817
  call void @llvm.dbg.value(metadata ptr %1, metadata !3727, metadata !DIExpression()), !dbg !3817
  call void @llvm.dbg.value(metadata ptr %2, metadata !3728, metadata !DIExpression()), !dbg !3817
  call void @llvm.dbg.value(metadata i64 %3, metadata !3729, metadata !DIExpression()), !dbg !3817
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #41, !dbg !3819
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3820, !tbaa.struct !3598, !DIAssignID !3821
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3720, metadata !DIExpression(), metadata !3821, metadata ptr %5, metadata !DIExpression()), !dbg !3817
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3720, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3822, metadata ptr undef, metadata !DIExpression()), !dbg !3817
  call void @llvm.dbg.value(metadata ptr %5, metadata !2637, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata ptr %0, metadata !2638, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata ptr %1, metadata !2639, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata ptr %5, metadata !2637, metadata !DIExpression()), !dbg !3823
  store i32 10, ptr %5, align 8, !dbg !3825, !tbaa !2580, !DIAssignID !3826
  call void @llvm.dbg.assign(metadata i32 10, metadata !3720, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3826, metadata ptr %5, metadata !DIExpression()), !dbg !3817
  %6 = icmp ne ptr %0, null, !dbg !3827
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3828
  br i1 %8, label %10, label %9, !dbg !3828

9:                                                ; preds = %4
  tail call void @abort() #43, !dbg !3829
  unreachable, !dbg !3829

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3830
  store ptr %0, ptr %11, align 8, !dbg !3831, !tbaa !2651, !DIAssignID !3832
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3720, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3832, metadata ptr %11, metadata !DIExpression()), !dbg !3817
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3833
  store ptr %1, ptr %12, align 8, !dbg !3834, !tbaa !2654, !DIAssignID !3835
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3720, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3835, metadata ptr %12, metadata !DIExpression()), !dbg !3817
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3836
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #41, !dbg !3837
  ret ptr %13, !dbg !3838
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3839 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3843, metadata !DIExpression()), !dbg !3846
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3844, metadata !DIExpression()), !dbg !3846
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3845, metadata !DIExpression()), !dbg !3846
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3847
  ret ptr %4, !dbg !3848
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3849 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3853, metadata !DIExpression()), !dbg !3855
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3854, metadata !DIExpression()), !dbg !3855
  call void @llvm.dbg.value(metadata i32 0, metadata !3843, metadata !DIExpression()), !dbg !3856
  call void @llvm.dbg.value(metadata ptr %0, metadata !3844, metadata !DIExpression()), !dbg !3856
  call void @llvm.dbg.value(metadata i64 %1, metadata !3845, metadata !DIExpression()), !dbg !3856
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3858
  ret ptr %3, !dbg !3859
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3860 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3864, metadata !DIExpression()), !dbg !3866
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3865, metadata !DIExpression()), !dbg !3866
  call void @llvm.dbg.value(metadata i32 %0, metadata !3843, metadata !DIExpression()), !dbg !3867
  call void @llvm.dbg.value(metadata ptr %1, metadata !3844, metadata !DIExpression()), !dbg !3867
  call void @llvm.dbg.value(metadata i64 -1, metadata !3845, metadata !DIExpression()), !dbg !3867
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3869
  ret ptr %3, !dbg !3870
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3871 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3875, metadata !DIExpression()), !dbg !3876
  call void @llvm.dbg.value(metadata i32 0, metadata !3864, metadata !DIExpression()), !dbg !3877
  call void @llvm.dbg.value(metadata ptr %0, metadata !3865, metadata !DIExpression()), !dbg !3877
  call void @llvm.dbg.value(metadata i32 0, metadata !3843, metadata !DIExpression()), !dbg !3879
  call void @llvm.dbg.value(metadata ptr %0, metadata !3844, metadata !DIExpression()), !dbg !3879
  call void @llvm.dbg.value(metadata i64 -1, metadata !3845, metadata !DIExpression()), !dbg !3879
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3881
  ret ptr %2, !dbg !3882
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i64 @safe_write(i32 noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3883 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3889, metadata !DIExpression()), !dbg !3898
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3890, metadata !DIExpression()), !dbg !3898
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3891, metadata !DIExpression()), !dbg !3898
  br label %4, !dbg !3899

4:                                                ; preds = %13, %3
  %5 = phi i64 [ 2146435072, %13 ], [ %2, %3 ]
  br label %6, !dbg !3900

6:                                                ; preds = %9, %4
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !3891, metadata !DIExpression()), !dbg !3898
  %7 = tail call i64 @write(i32 noundef %0, ptr noundef %1, i64 noundef %5) #41, !dbg !3901
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !3892, metadata !DIExpression()), !dbg !3902
  %8 = icmp sgt i64 %7, -1, !dbg !3903
  br i1 %8, label %.loopexit, label %9, !dbg !3900

9:                                                ; preds = %6
  %10 = tail call ptr @__errno_location() #44, !dbg !3905
  %11 = load i32, ptr %10, align 4, !dbg !3905, !tbaa !1071
  %12 = icmp eq i32 %11, 4, !dbg !3905
  br i1 %12, label %6, label %13, !dbg !3907, !llvm.loop !3908

13:                                               ; preds = %9
  %.lcssa3 = phi i32 [ %11, %9 ], !dbg !3905
  %.lcssa2 = phi i64 [ %7, %9 ], !dbg !3901
  %14 = icmp ne i32 %.lcssa3, 22, !dbg !3911
  %15 = icmp slt i64 %5, 2146435073
  %16 = or i1 %15, %14, !dbg !3913
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !3891, metadata !DIExpression()), !dbg !3898
  br i1 %16, label %.loopexit1, label %4

.loopexit:                                        ; preds = %6
  %.lcssa = phi i64 [ %7, %6 ], !dbg !3901
  br label %17, !dbg !3914

.loopexit1:                                       ; preds = %13
  %.lcssa2.lcssa = phi i64 [ %.lcssa2, %13 ], !dbg !3901
  br label %17, !dbg !3914

17:                                               ; preds = %.loopexit1, %.loopexit
  %18 = phi i64 [ %.lcssa2.lcssa, %.loopexit1 ], [ %.lcssa, %.loopexit ]
  ret i64 %18, !dbg !3914
}

; Function Attrs: nofree
declare !dbg !3915 noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3918 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3957, metadata !DIExpression()), !dbg !3963
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3958, metadata !DIExpression()), !dbg !3963
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3959, metadata !DIExpression()), !dbg !3963
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3960, metadata !DIExpression()), !dbg !3963
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3961, metadata !DIExpression()), !dbg !3963
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !3962, metadata !DIExpression()), !dbg !3963
  %7 = icmp eq ptr %1, null, !dbg !3964
  br i1 %7, label %10, label %8, !dbg !3966

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.105, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #41, !dbg !3967
  br label %12, !dbg !3967

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.106, ptr noundef %2, ptr noundef %3) #41, !dbg !3968
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.107, ptr noundef nonnull @.str.3.108, i32 noundef 5) #41, !dbg !3969
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #41, !dbg !3969
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.109, ptr noundef %0), !dbg !3970
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.107, ptr noundef nonnull @.str.5.110, i32 noundef 5) #41, !dbg !3971
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.111) #41, !dbg !3971
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.109, ptr noundef %0), !dbg !3972
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
  ], !dbg !3973

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.107, ptr noundef nonnull @.str.7.112, i32 noundef 5) #41, !dbg !3974
  %21 = load ptr, ptr %4, align 8, !dbg !3974, !tbaa !997
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #41, !dbg !3974
  br label %147, !dbg !3976

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.107, ptr noundef nonnull @.str.8.113, i32 noundef 5) #41, !dbg !3977
  %25 = load ptr, ptr %4, align 8, !dbg !3977, !tbaa !997
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3977
  %27 = load ptr, ptr %26, align 8, !dbg !3977, !tbaa !997
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #41, !dbg !3977
  br label %147, !dbg !3978

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.107, ptr noundef nonnull @.str.9.114, i32 noundef 5) #41, !dbg !3979
  %31 = load ptr, ptr %4, align 8, !dbg !3979, !tbaa !997
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3979
  %33 = load ptr, ptr %32, align 8, !dbg !3979, !tbaa !997
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3979
  %35 = load ptr, ptr %34, align 8, !dbg !3979, !tbaa !997
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #41, !dbg !3979
  br label %147, !dbg !3980

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.107, ptr noundef nonnull @.str.10.115, i32 noundef 5) #41, !dbg !3981
  %39 = load ptr, ptr %4, align 8, !dbg !3981, !tbaa !997
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3981
  %41 = load ptr, ptr %40, align 8, !dbg !3981, !tbaa !997
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3981
  %43 = load ptr, ptr %42, align 8, !dbg !3981, !tbaa !997
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3981
  %45 = load ptr, ptr %44, align 8, !dbg !3981, !tbaa !997
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #41, !dbg !3981
  br label %147, !dbg !3982

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.107, ptr noundef nonnull @.str.11.116, i32 noundef 5) #41, !dbg !3983
  %49 = load ptr, ptr %4, align 8, !dbg !3983, !tbaa !997
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3983
  %51 = load ptr, ptr %50, align 8, !dbg !3983, !tbaa !997
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3983
  %53 = load ptr, ptr %52, align 8, !dbg !3983, !tbaa !997
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3983
  %55 = load ptr, ptr %54, align 8, !dbg !3983, !tbaa !997
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3983
  %57 = load ptr, ptr %56, align 8, !dbg !3983, !tbaa !997
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #41, !dbg !3983
  br label %147, !dbg !3984

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.107, ptr noundef nonnull @.str.12.117, i32 noundef 5) #41, !dbg !3985
  %61 = load ptr, ptr %4, align 8, !dbg !3985, !tbaa !997
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3985
  %63 = load ptr, ptr %62, align 8, !dbg !3985, !tbaa !997
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3985
  %65 = load ptr, ptr %64, align 8, !dbg !3985, !tbaa !997
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3985
  %67 = load ptr, ptr %66, align 8, !dbg !3985, !tbaa !997
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3985
  %69 = load ptr, ptr %68, align 8, !dbg !3985, !tbaa !997
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3985
  %71 = load ptr, ptr %70, align 8, !dbg !3985, !tbaa !997
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #41, !dbg !3985
  br label %147, !dbg !3986

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.107, ptr noundef nonnull @.str.13.118, i32 noundef 5) #41, !dbg !3987
  %75 = load ptr, ptr %4, align 8, !dbg !3987, !tbaa !997
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3987
  %77 = load ptr, ptr %76, align 8, !dbg !3987, !tbaa !997
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3987
  %79 = load ptr, ptr %78, align 8, !dbg !3987, !tbaa !997
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3987
  %81 = load ptr, ptr %80, align 8, !dbg !3987, !tbaa !997
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3987
  %83 = load ptr, ptr %82, align 8, !dbg !3987, !tbaa !997
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3987
  %85 = load ptr, ptr %84, align 8, !dbg !3987, !tbaa !997
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3987
  %87 = load ptr, ptr %86, align 8, !dbg !3987, !tbaa !997
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #41, !dbg !3987
  br label %147, !dbg !3988

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.107, ptr noundef nonnull @.str.14.119, i32 noundef 5) #41, !dbg !3989
  %91 = load ptr, ptr %4, align 8, !dbg !3989, !tbaa !997
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3989
  %93 = load ptr, ptr %92, align 8, !dbg !3989, !tbaa !997
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3989
  %95 = load ptr, ptr %94, align 8, !dbg !3989, !tbaa !997
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3989
  %97 = load ptr, ptr %96, align 8, !dbg !3989, !tbaa !997
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3989
  %99 = load ptr, ptr %98, align 8, !dbg !3989, !tbaa !997
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3989
  %101 = load ptr, ptr %100, align 8, !dbg !3989, !tbaa !997
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3989
  %103 = load ptr, ptr %102, align 8, !dbg !3989, !tbaa !997
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3989
  %105 = load ptr, ptr %104, align 8, !dbg !3989, !tbaa !997
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #41, !dbg !3989
  br label %147, !dbg !3990

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.107, ptr noundef nonnull @.str.15.120, i32 noundef 5) #41, !dbg !3991
  %109 = load ptr, ptr %4, align 8, !dbg !3991, !tbaa !997
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3991
  %111 = load ptr, ptr %110, align 8, !dbg !3991, !tbaa !997
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3991
  %113 = load ptr, ptr %112, align 8, !dbg !3991, !tbaa !997
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3991
  %115 = load ptr, ptr %114, align 8, !dbg !3991, !tbaa !997
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3991
  %117 = load ptr, ptr %116, align 8, !dbg !3991, !tbaa !997
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3991
  %119 = load ptr, ptr %118, align 8, !dbg !3991, !tbaa !997
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3991
  %121 = load ptr, ptr %120, align 8, !dbg !3991, !tbaa !997
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3991
  %123 = load ptr, ptr %122, align 8, !dbg !3991, !tbaa !997
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3991
  %125 = load ptr, ptr %124, align 8, !dbg !3991, !tbaa !997
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #41, !dbg !3991
  br label %147, !dbg !3992

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.107, ptr noundef nonnull @.str.16.121, i32 noundef 5) #41, !dbg !3993
  %129 = load ptr, ptr %4, align 8, !dbg !3993, !tbaa !997
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3993
  %131 = load ptr, ptr %130, align 8, !dbg !3993, !tbaa !997
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3993
  %133 = load ptr, ptr %132, align 8, !dbg !3993, !tbaa !997
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3993
  %135 = load ptr, ptr %134, align 8, !dbg !3993, !tbaa !997
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3993
  %137 = load ptr, ptr %136, align 8, !dbg !3993, !tbaa !997
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3993
  %139 = load ptr, ptr %138, align 8, !dbg !3993, !tbaa !997
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3993
  %141 = load ptr, ptr %140, align 8, !dbg !3993, !tbaa !997
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3993
  %143 = load ptr, ptr %142, align 8, !dbg !3993, !tbaa !997
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3993
  %145 = load ptr, ptr %144, align 8, !dbg !3993, !tbaa !997
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #41, !dbg !3993
  br label %147, !dbg !3994

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3995
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3996 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4000, metadata !DIExpression()), !dbg !4006
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4001, metadata !DIExpression()), !dbg !4006
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4002, metadata !DIExpression()), !dbg !4006
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4003, metadata !DIExpression()), !dbg !4006
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4004, metadata !DIExpression()), !dbg !4006
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4005, metadata !DIExpression()), !dbg !4006
  br label %6, !dbg !4007

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4009
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !4005, metadata !DIExpression()), !dbg !4006
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !4010
  %9 = load ptr, ptr %8, align 8, !dbg !4010, !tbaa !997
  %10 = icmp eq ptr %9, null, !dbg !4012
  %11 = add i64 %7, 1, !dbg !4013
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4005, metadata !DIExpression()), !dbg !4006
  br i1 %10, label %12, label %6, !dbg !4012, !llvm.loop !4014

12:                                               ; preds = %6
  %.lcssa = phi i64 [ %7, %6 ], !dbg !4009
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %.lcssa), !dbg !4016
  ret void, !dbg !4017
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !4018 {
  %6 = alloca [10 x ptr], align 8, !DIAssignID !4040
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4038, metadata !DIExpression(), metadata !4040, metadata ptr %6, metadata !DIExpression()), !dbg !4041
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4032, metadata !DIExpression()), !dbg !4041
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4033, metadata !DIExpression()), !dbg !4041
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4034, metadata !DIExpression()), !dbg !4041
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4035, metadata !DIExpression()), !dbg !4041
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4036, metadata !DIExpression(DW_OP_deref)), !dbg !4041
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #41, !dbg !4042
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4037, metadata !DIExpression()), !dbg !4041
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4037, metadata !DIExpression()), !dbg !4041
  %10 = icmp sgt i32 %9, -1, !dbg !4043
  br i1 %10, label %18, label %11, !dbg !4043

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !4043
  store i32 %12, ptr %7, align 8, !dbg !4043
  %13 = icmp ult i32 %9, -7, !dbg !4043
  br i1 %13, label %14, label %18, !dbg !4043

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !4043
  %16 = sext i32 %9 to i64, !dbg !4043
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !4043
  br label %22, !dbg !4043

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !4043
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !4043
  store ptr %21, ptr %4, align 8, !dbg !4043
  br label %22, !dbg !4043

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !4043
  %25 = load ptr, ptr %24, align 8, !dbg !4043
  store ptr %25, ptr %6, align 8, !dbg !4046, !tbaa !997
  %26 = icmp eq ptr %25, null, !dbg !4047
  br i1 %26, label %197, label %27, !dbg !4048

27:                                               ; preds = %22
  tail call void @llvm.dbg.value(metadata i64 1, metadata !4037, metadata !DIExpression()), !dbg !4041
  tail call void @llvm.dbg.value(metadata i64 1, metadata !4037, metadata !DIExpression()), !dbg !4041
  %28 = icmp sgt i32 %23, -1, !dbg !4043
  br i1 %28, label %36, label %29, !dbg !4043

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !4043
  store i32 %30, ptr %7, align 8, !dbg !4043
  %31 = icmp ult i32 %23, -7, !dbg !4043
  br i1 %31, label %32, label %36, !dbg !4043

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !4043
  %34 = sext i32 %23 to i64, !dbg !4043
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !4043
  br label %40, !dbg !4043

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !4043
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !4043
  store ptr %39, ptr %4, align 8, !dbg !4043
  br label %40, !dbg !4043

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !4043
  %43 = load ptr, ptr %42, align 8, !dbg !4043
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !4049
  store ptr %43, ptr %44, align 8, !dbg !4046, !tbaa !997
  %45 = icmp eq ptr %43, null, !dbg !4047
  br i1 %45, label %197, label %46, !dbg !4048

46:                                               ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 2, metadata !4037, metadata !DIExpression()), !dbg !4041
  tail call void @llvm.dbg.value(metadata i64 2, metadata !4037, metadata !DIExpression()), !dbg !4041
  %47 = icmp sgt i32 %41, -1, !dbg !4043
  br i1 %47, label %55, label %48, !dbg !4043

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !4043
  store i32 %49, ptr %7, align 8, !dbg !4043
  %50 = icmp ult i32 %41, -7, !dbg !4043
  br i1 %50, label %51, label %55, !dbg !4043

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !4043
  %53 = sext i32 %41 to i64, !dbg !4043
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !4043
  br label %59, !dbg !4043

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !4043
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !4043
  store ptr %58, ptr %4, align 8, !dbg !4043
  br label %59, !dbg !4043

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !4043
  %62 = load ptr, ptr %61, align 8, !dbg !4043
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !4049
  store ptr %62, ptr %63, align 8, !dbg !4046, !tbaa !997
  %64 = icmp eq ptr %62, null, !dbg !4047
  br i1 %64, label %197, label %65, !dbg !4048

65:                                               ; preds = %59
  tail call void @llvm.dbg.value(metadata i64 3, metadata !4037, metadata !DIExpression()), !dbg !4041
  tail call void @llvm.dbg.value(metadata i64 3, metadata !4037, metadata !DIExpression()), !dbg !4041
  %66 = icmp sgt i32 %60, -1, !dbg !4043
  br i1 %66, label %74, label %67, !dbg !4043

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !4043
  store i32 %68, ptr %7, align 8, !dbg !4043
  %69 = icmp ult i32 %60, -7, !dbg !4043
  br i1 %69, label %70, label %74, !dbg !4043

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !4043
  %72 = sext i32 %60 to i64, !dbg !4043
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !4043
  br label %78, !dbg !4043

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !4043
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !4043
  store ptr %77, ptr %4, align 8, !dbg !4043
  br label %78, !dbg !4043

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !4043
  %81 = load ptr, ptr %80, align 8, !dbg !4043
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !4049
  store ptr %81, ptr %82, align 8, !dbg !4046, !tbaa !997
  %83 = icmp eq ptr %81, null, !dbg !4047
  br i1 %83, label %197, label %84, !dbg !4048

84:                                               ; preds = %78
  tail call void @llvm.dbg.value(metadata i64 4, metadata !4037, metadata !DIExpression()), !dbg !4041
  tail call void @llvm.dbg.value(metadata i64 4, metadata !4037, metadata !DIExpression()), !dbg !4041
  %85 = icmp sgt i32 %79, -1, !dbg !4043
  br i1 %85, label %93, label %86, !dbg !4043

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !4043
  store i32 %87, ptr %7, align 8, !dbg !4043
  %88 = icmp ult i32 %79, -7, !dbg !4043
  br i1 %88, label %89, label %93, !dbg !4043

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !4043
  %91 = sext i32 %79 to i64, !dbg !4043
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !4043
  br label %97, !dbg !4043

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !4043
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !4043
  store ptr %96, ptr %4, align 8, !dbg !4043
  br label %97, !dbg !4043

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !4043
  %100 = load ptr, ptr %99, align 8, !dbg !4043
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !4049
  store ptr %100, ptr %101, align 8, !dbg !4046, !tbaa !997
  %102 = icmp eq ptr %100, null, !dbg !4047
  br i1 %102, label %197, label %103, !dbg !4048

103:                                              ; preds = %97
  tail call void @llvm.dbg.value(metadata i64 5, metadata !4037, metadata !DIExpression()), !dbg !4041
  tail call void @llvm.dbg.value(metadata i64 5, metadata !4037, metadata !DIExpression()), !dbg !4041
  %104 = icmp sgt i32 %98, -1, !dbg !4043
  br i1 %104, label %112, label %105, !dbg !4043

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !4043
  store i32 %106, ptr %7, align 8, !dbg !4043
  %107 = icmp ult i32 %98, -7, !dbg !4043
  br i1 %107, label %108, label %112, !dbg !4043

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !4043
  %110 = sext i32 %98 to i64, !dbg !4043
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !4043
  br label %116, !dbg !4043

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !4043
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !4043
  store ptr %115, ptr %4, align 8, !dbg !4043
  br label %116, !dbg !4043

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !4043
  %119 = load ptr, ptr %118, align 8, !dbg !4043
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !4049
  store ptr %119, ptr %120, align 8, !dbg !4046, !tbaa !997
  %121 = icmp eq ptr %119, null, !dbg !4047
  br i1 %121, label %197, label %122, !dbg !4048

122:                                              ; preds = %116
  tail call void @llvm.dbg.value(metadata i64 6, metadata !4037, metadata !DIExpression()), !dbg !4041
  tail call void @llvm.dbg.value(metadata i64 6, metadata !4037, metadata !DIExpression()), !dbg !4041
  %123 = icmp sgt i32 %117, -1, !dbg !4043
  br i1 %123, label %131, label %124, !dbg !4043

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !4043
  store i32 %125, ptr %7, align 8, !dbg !4043
  %126 = icmp ult i32 %117, -7, !dbg !4043
  br i1 %126, label %127, label %131, !dbg !4043

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !4043
  %129 = sext i32 %117 to i64, !dbg !4043
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !4043
  br label %135, !dbg !4043

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !4043
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !4043
  store ptr %134, ptr %4, align 8, !dbg !4043
  br label %135, !dbg !4043

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !4043
  %138 = load ptr, ptr %137, align 8, !dbg !4043
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !4049
  store ptr %138, ptr %139, align 8, !dbg !4046, !tbaa !997
  %140 = icmp eq ptr %138, null, !dbg !4047
  br i1 %140, label %197, label %141, !dbg !4048

141:                                              ; preds = %135
  tail call void @llvm.dbg.value(metadata i64 7, metadata !4037, metadata !DIExpression()), !dbg !4041
  tail call void @llvm.dbg.value(metadata i64 7, metadata !4037, metadata !DIExpression()), !dbg !4041
  %142 = icmp sgt i32 %136, -1, !dbg !4043
  br i1 %142, label %150, label %143, !dbg !4043

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !4043
  store i32 %144, ptr %7, align 8, !dbg !4043
  %145 = icmp ult i32 %136, -7, !dbg !4043
  br i1 %145, label %146, label %150, !dbg !4043

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !4043
  %148 = sext i32 %136 to i64, !dbg !4043
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !4043
  br label %154, !dbg !4043

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !4043
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !4043
  store ptr %153, ptr %4, align 8, !dbg !4043
  br label %154, !dbg !4043

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !4043
  %157 = load ptr, ptr %156, align 8, !dbg !4043
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !4049
  store ptr %157, ptr %158, align 8, !dbg !4046, !tbaa !997
  %159 = icmp eq ptr %157, null, !dbg !4047
  br i1 %159, label %197, label %160, !dbg !4048

160:                                              ; preds = %154
  tail call void @llvm.dbg.value(metadata i64 8, metadata !4037, metadata !DIExpression()), !dbg !4041
  tail call void @llvm.dbg.value(metadata i64 8, metadata !4037, metadata !DIExpression()), !dbg !4041
  %161 = icmp sgt i32 %155, -1, !dbg !4043
  br i1 %161, label %169, label %162, !dbg !4043

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !4043
  store i32 %163, ptr %7, align 8, !dbg !4043
  %164 = icmp ult i32 %155, -7, !dbg !4043
  br i1 %164, label %165, label %169, !dbg !4043

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !4043
  %167 = sext i32 %155 to i64, !dbg !4043
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !4043
  br label %173, !dbg !4043

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !4043
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !4043
  store ptr %172, ptr %4, align 8, !dbg !4043
  br label %173, !dbg !4043

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !4043
  %176 = load ptr, ptr %175, align 8, !dbg !4043
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !4049
  store ptr %176, ptr %177, align 8, !dbg !4046, !tbaa !997
  %178 = icmp eq ptr %176, null, !dbg !4047
  br i1 %178, label %197, label %179, !dbg !4048

179:                                              ; preds = %173
  tail call void @llvm.dbg.value(metadata i64 9, metadata !4037, metadata !DIExpression()), !dbg !4041
  tail call void @llvm.dbg.value(metadata i64 9, metadata !4037, metadata !DIExpression()), !dbg !4041
  %180 = icmp sgt i32 %174, -1, !dbg !4043
  br i1 %180, label %188, label %181, !dbg !4043

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !4043
  store i32 %182, ptr %7, align 8, !dbg !4043
  %183 = icmp ult i32 %174, -7, !dbg !4043
  br i1 %183, label %184, label %188, !dbg !4043

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !4043
  %186 = sext i32 %174 to i64, !dbg !4043
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !4043
  br label %191, !dbg !4043

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !4043
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !4043
  store ptr %190, ptr %4, align 8, !dbg !4043
  br label %191, !dbg !4043

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !4043
  %193 = load ptr, ptr %192, align 8, !dbg !4043
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !4049
  store ptr %193, ptr %194, align 8, !dbg !4046, !tbaa !997
  %195 = icmp eq ptr %193, null, !dbg !4047
  %196 = select i1 %195, i64 9, i64 10, !dbg !4048
  br label %197, !dbg !4048

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !4050
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !4051
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #41, !dbg !4052
  ret void, !dbg !4052
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !4053 {
  %5 = alloca %struct.__va_list, align 8, !DIAssignID !4062
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4061, metadata !DIExpression(), metadata !4062, metadata ptr %5, metadata !DIExpression()), !dbg !4063
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4057, metadata !DIExpression()), !dbg !4063
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4058, metadata !DIExpression()), !dbg !4063
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4059, metadata !DIExpression()), !dbg !4063
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4060, metadata !DIExpression()), !dbg !4063
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #41, !dbg !4064
  call void @llvm.va_start(ptr nonnull %5), !dbg !4065
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #41, !dbg !4066
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !4066, !tbaa.struct !2029
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !4066
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #41, !dbg !4066
  call void @llvm.va_end(ptr nonnull %5), !dbg !4067
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #41, !dbg !4068
  ret void, !dbg !4068
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !4069 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !4070, !tbaa !997
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.109, ptr noundef %1), !dbg !4070
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.107, ptr noundef nonnull @.str.17.126, i32 noundef 5) #41, !dbg !4071
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.127) #41, !dbg !4071
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.107, ptr noundef nonnull @.str.19.128, i32 noundef 5) #41, !dbg !4072
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.129, ptr noundef nonnull @.str.21.130) #41, !dbg !4072
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.107, ptr noundef nonnull @.str.22.131, i32 noundef 5) #41, !dbg !4073
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.132) #41, !dbg !4073
  ret void, !dbg !4074
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xalignalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !4075 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4079, metadata !DIExpression()), !dbg !4082
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4080, metadata !DIExpression()), !dbg !4082
  call void @llvm.dbg.value(metadata i64 %0, metadata !4083, metadata !DIExpression()), !dbg !4088
  call void @llvm.dbg.value(metadata i64 %1, metadata !4087, metadata !DIExpression()), !dbg !4088
  call void @llvm.dbg.value(metadata i64 %0, metadata !4083, metadata !DIExpression()), !dbg !4088
  call void @llvm.dbg.value(metadata i64 %1, metadata !4087, metadata !DIExpression()), !dbg !4088
  %3 = tail call noalias ptr @aligned_alloc(i64 noundef %0, i64 noundef %1) #46, !dbg !4090
  call void @llvm.assume(i1 true) [ "align"(ptr %3, i64 %0) ], !dbg !4090
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4081, metadata !DIExpression()), !dbg !4082
  %4 = icmp eq ptr %3, null, !dbg !4091
  br i1 %4, label %5, label %6, !dbg !4093

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4094
  unreachable, !dbg !4094

6:                                                ; preds = %2
  ret ptr %3, !dbg !4095
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized,aligned") allocsize(1) memory(inaccessiblemem: readwrite)
declare !dbg !4096 noalias noundef ptr @aligned_alloc(i64 allocalign noundef, i64 noundef) local_unnamed_addr #30

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #31

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #32 !dbg !4099 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4104, metadata !DIExpression()), !dbg !4107
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4105, metadata !DIExpression()), !dbg !4107
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4106, metadata !DIExpression()), !dbg !4107
  call void @llvm.dbg.value(metadata ptr %0, metadata !4108, metadata !DIExpression()), !dbg !4113
  call void @llvm.dbg.value(metadata i64 %1, metadata !4111, metadata !DIExpression()), !dbg !4113
  call void @llvm.dbg.value(metadata i64 %2, metadata !4112, metadata !DIExpression()), !dbg !4113
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #41, !dbg !4115
  call void @llvm.dbg.value(metadata ptr %4, metadata !4116, metadata !DIExpression()), !dbg !4121
  %5 = icmp eq ptr %4, null, !dbg !4123
  br i1 %5, label %6, label %7, !dbg !4125

6:                                                ; preds = %3
  tail call void @xalloc_die() #43, !dbg !4126
  unreachable, !dbg !4126

7:                                                ; preds = %3
  ret ptr %4, !dbg !4127
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #33 !dbg !4109 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4108, metadata !DIExpression()), !dbg !4128
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4111, metadata !DIExpression()), !dbg !4128
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4112, metadata !DIExpression()), !dbg !4128
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #41, !dbg !4129
  call void @llvm.dbg.value(metadata ptr %4, metadata !4116, metadata !DIExpression()), !dbg !4130
  %5 = icmp eq ptr %4, null, !dbg !4132
  br i1 %5, label %6, label %7, !dbg !4133

6:                                                ; preds = %3
  tail call void @xalloc_die() #43, !dbg !4134
  unreachable, !dbg !4134

7:                                                ; preds = %3
  ret ptr %4, !dbg !4135
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #34 !dbg !4136 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4140, metadata !DIExpression()), !dbg !4141
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #48, !dbg !4142
  call void @llvm.dbg.value(metadata ptr %2, metadata !4116, metadata !DIExpression()), !dbg !4143
  %3 = icmp eq ptr %2, null, !dbg !4145
  br i1 %3, label %4, label %5, !dbg !4146

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4147
  unreachable, !dbg !4147

5:                                                ; preds = %1
  ret ptr %2, !dbg !4148
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !4149 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #35

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #34 !dbg !4150 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4154, metadata !DIExpression()), !dbg !4155
  call void @llvm.dbg.value(metadata i64 %0, metadata !4156, metadata !DIExpression()), !dbg !4160
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #48, !dbg !4162
  call void @llvm.dbg.value(metadata ptr %2, metadata !4116, metadata !DIExpression()), !dbg !4163
  %3 = icmp eq ptr %2, null, !dbg !4165
  br i1 %3, label %4, label %5, !dbg !4166

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4167
  unreachable, !dbg !4167

5:                                                ; preds = %1
  ret ptr %2, !dbg !4168
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #34 !dbg !4169 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4173, metadata !DIExpression()), !dbg !4174
  call void @llvm.dbg.value(metadata i64 %0, metadata !4140, metadata !DIExpression()), !dbg !4175
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #48, !dbg !4177
  call void @llvm.dbg.value(metadata ptr %2, metadata !4116, metadata !DIExpression()), !dbg !4178
  %3 = icmp eq ptr %2, null, !dbg !4180
  br i1 %3, label %4, label %5, !dbg !4181

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4182
  unreachable, !dbg !4182

5:                                                ; preds = %1
  ret ptr %2, !dbg !4183
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !4184 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4188, metadata !DIExpression()), !dbg !4190
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4189, metadata !DIExpression()), !dbg !4190
  call void @llvm.dbg.value(metadata ptr %0, metadata !4191, metadata !DIExpression()), !dbg !4196
  call void @llvm.dbg.value(metadata i64 %1, metadata !4195, metadata !DIExpression()), !dbg !4196
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4198
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #46, !dbg !4199
  call void @llvm.dbg.value(metadata ptr %4, metadata !4116, metadata !DIExpression()), !dbg !4200
  %5 = icmp eq ptr %4, null, !dbg !4202
  br i1 %5, label %6, label %7, !dbg !4203

6:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4204
  unreachable, !dbg !4204

7:                                                ; preds = %2
  ret ptr %4, !dbg !4205
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4206 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #36

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !4207 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4211, metadata !DIExpression()), !dbg !4213
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4212, metadata !DIExpression()), !dbg !4213
  call void @llvm.dbg.value(metadata ptr %0, metadata !4214, metadata !DIExpression()), !dbg !4218
  call void @llvm.dbg.value(metadata i64 %1, metadata !4217, metadata !DIExpression()), !dbg !4218
  call void @llvm.dbg.value(metadata ptr %0, metadata !4191, metadata !DIExpression()), !dbg !4220
  call void @llvm.dbg.value(metadata i64 %1, metadata !4195, metadata !DIExpression()), !dbg !4220
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4222
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #46, !dbg !4223
  call void @llvm.dbg.value(metadata ptr %4, metadata !4116, metadata !DIExpression()), !dbg !4224
  %5 = icmp eq ptr %4, null, !dbg !4226
  br i1 %5, label %6, label %7, !dbg !4227

6:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4228
  unreachable, !dbg !4228

7:                                                ; preds = %2
  ret ptr %4, !dbg !4229
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #33 !dbg !4230 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4234, metadata !DIExpression()), !dbg !4237
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4235, metadata !DIExpression()), !dbg !4237
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4236, metadata !DIExpression()), !dbg !4237
  call void @llvm.dbg.value(metadata ptr %0, metadata !4238, metadata !DIExpression()), !dbg !4243
  call void @llvm.dbg.value(metadata i64 %1, metadata !4241, metadata !DIExpression()), !dbg !4243
  call void @llvm.dbg.value(metadata i64 %2, metadata !4242, metadata !DIExpression()), !dbg !4243
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #41, !dbg !4245
  call void @llvm.dbg.value(metadata ptr %4, metadata !4116, metadata !DIExpression()), !dbg !4246
  %5 = icmp eq ptr %4, null, !dbg !4248
  br i1 %5, label %6, label %7, !dbg !4249

6:                                                ; preds = %3
  tail call void @xalloc_die() #43, !dbg !4250
  unreachable, !dbg !4250

7:                                                ; preds = %3
  ret ptr %4, !dbg !4251
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #37 !dbg !4252 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4254, metadata !DIExpression()), !dbg !4256
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4255, metadata !DIExpression()), !dbg !4256
  call void @llvm.dbg.value(metadata ptr null, metadata !4108, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata i64 %0, metadata !4111, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata i64 %1, metadata !4112, metadata !DIExpression()), !dbg !4257
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #41, !dbg !4259
  call void @llvm.dbg.value(metadata ptr %3, metadata !4116, metadata !DIExpression()), !dbg !4260
  %4 = icmp eq ptr %3, null, !dbg !4262
  br i1 %4, label %5, label %6, !dbg !4263

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4264
  unreachable, !dbg !4264

6:                                                ; preds = %2
  ret ptr %3, !dbg !4265
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #37 !dbg !4266 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4268, metadata !DIExpression()), !dbg !4270
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4269, metadata !DIExpression()), !dbg !4270
  call void @llvm.dbg.value(metadata ptr null, metadata !4234, metadata !DIExpression()), !dbg !4271
  call void @llvm.dbg.value(metadata i64 %0, metadata !4235, metadata !DIExpression()), !dbg !4271
  call void @llvm.dbg.value(metadata i64 %1, metadata !4236, metadata !DIExpression()), !dbg !4271
  call void @llvm.dbg.value(metadata ptr null, metadata !4238, metadata !DIExpression()), !dbg !4273
  call void @llvm.dbg.value(metadata i64 %0, metadata !4241, metadata !DIExpression()), !dbg !4273
  call void @llvm.dbg.value(metadata i64 %1, metadata !4242, metadata !DIExpression()), !dbg !4273
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #41, !dbg !4275
  call void @llvm.dbg.value(metadata ptr %3, metadata !4116, metadata !DIExpression()), !dbg !4276
  %4 = icmp eq ptr %3, null, !dbg !4278
  br i1 %4, label %5, label %6, !dbg !4279

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4280
  unreachable, !dbg !4280

6:                                                ; preds = %2
  ret ptr %3, !dbg !4281
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4282 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4286, metadata !DIExpression()), !dbg !4288
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4287, metadata !DIExpression()), !dbg !4288
  call void @llvm.dbg.value(metadata ptr %0, metadata !935, metadata !DIExpression()), !dbg !4289
  call void @llvm.dbg.value(metadata ptr %1, metadata !936, metadata !DIExpression()), !dbg !4289
  call void @llvm.dbg.value(metadata i64 1, metadata !937, metadata !DIExpression()), !dbg !4289
  %3 = load i64, ptr %1, align 8, !dbg !4291, !tbaa !3304
  call void @llvm.dbg.value(metadata i64 %3, metadata !938, metadata !DIExpression()), !dbg !4289
  %4 = icmp eq ptr %0, null, !dbg !4292
  br i1 %4, label %5, label %8, !dbg !4294

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4295
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4298
  br label %15, !dbg !4298

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4299
  %10 = add nuw i64 %9, 1, !dbg !4299
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4299
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4299
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4299
  call void @llvm.dbg.value(metadata i64 %13, metadata !938, metadata !DIExpression()), !dbg !4289
  br i1 %12, label %14, label %15, !dbg !4302

14:                                               ; preds = %8
  tail call void @xalloc_die() #43, !dbg !4303
  unreachable, !dbg !4303

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4289
  call void @llvm.dbg.value(metadata i64 %16, metadata !938, metadata !DIExpression()), !dbg !4289
  call void @llvm.dbg.value(metadata ptr %0, metadata !4108, metadata !DIExpression()), !dbg !4304
  call void @llvm.dbg.value(metadata i64 %16, metadata !4111, metadata !DIExpression()), !dbg !4304
  call void @llvm.dbg.value(metadata i64 1, metadata !4112, metadata !DIExpression()), !dbg !4304
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #41, !dbg !4306
  call void @llvm.dbg.value(metadata ptr %17, metadata !4116, metadata !DIExpression()), !dbg !4307
  %18 = icmp eq ptr %17, null, !dbg !4309
  br i1 %18, label %19, label %20, !dbg !4310

19:                                               ; preds = %15
  tail call void @xalloc_die() #43, !dbg !4311
  unreachable, !dbg !4311

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !935, metadata !DIExpression()), !dbg !4289
  store i64 %16, ptr %1, align 8, !dbg !4312, !tbaa !3304
  ret ptr %17, !dbg !4313
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !930 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !935, metadata !DIExpression()), !dbg !4314
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !936, metadata !DIExpression()), !dbg !4314
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !937, metadata !DIExpression()), !dbg !4314
  %4 = load i64, ptr %1, align 8, !dbg !4315, !tbaa !3304
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !938, metadata !DIExpression()), !dbg !4314
  %5 = icmp eq ptr %0, null, !dbg !4316
  br i1 %5, label %6, label %13, !dbg !4317

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4318
  br i1 %7, label %8, label %20, !dbg !4319

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4320
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !938, metadata !DIExpression()), !dbg !4314
  %10 = icmp ugt i64 %2, 128, !dbg !4322
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4323
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !938, metadata !DIExpression()), !dbg !4314
  br label %20, !dbg !4324

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4325
  %15 = add nuw i64 %14, 1, !dbg !4325
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4325
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4325
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4325
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !938, metadata !DIExpression()), !dbg !4314
  br i1 %17, label %19, label %20, !dbg !4326

19:                                               ; preds = %13
  tail call void @xalloc_die() #43, !dbg !4327
  unreachable, !dbg !4327

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4314
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !938, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata ptr %0, metadata !4108, metadata !DIExpression()), !dbg !4328
  call void @llvm.dbg.value(metadata i64 %21, metadata !4111, metadata !DIExpression()), !dbg !4328
  call void @llvm.dbg.value(metadata i64 %2, metadata !4112, metadata !DIExpression()), !dbg !4328
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #41, !dbg !4330
  call void @llvm.dbg.value(metadata ptr %22, metadata !4116, metadata !DIExpression()), !dbg !4331
  %23 = icmp eq ptr %22, null, !dbg !4333
  br i1 %23, label %24, label %25, !dbg !4334

24:                                               ; preds = %20
  tail call void @xalloc_die() #43, !dbg !4335
  unreachable, !dbg !4335

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !935, metadata !DIExpression()), !dbg !4314
  store i64 %21, ptr %1, align 8, !dbg !4336, !tbaa !3304
  ret ptr %22, !dbg !4337
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !942 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !949, metadata !DIExpression()), !dbg !4338
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !950, metadata !DIExpression()), !dbg !4338
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !951, metadata !DIExpression()), !dbg !4338
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !952, metadata !DIExpression()), !dbg !4338
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !953, metadata !DIExpression()), !dbg !4338
  %6 = load i64, ptr %1, align 8, !dbg !4339, !tbaa !3304
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !954, metadata !DIExpression()), !dbg !4338
  %7 = ashr i64 %6, 1, !dbg !4340
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4340
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4340
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4340
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !955, metadata !DIExpression()), !dbg !4338
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4342
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !955, metadata !DIExpression()), !dbg !4338
  %12 = icmp sgt i64 %3, -1, !dbg !4343
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !4345
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !4345
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !955, metadata !DIExpression()), !dbg !4338
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !4346
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !4346
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !4346
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !956, metadata !DIExpression()), !dbg !4338
  %18 = icmp slt i64 %17, 128, !dbg !4346
  %19 = select i1 %18, i64 128, i64 0, !dbg !4346
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !4346
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !957, metadata !DIExpression()), !dbg !4338
  %21 = icmp eq i64 %20, 0, !dbg !4347
  br i1 %21, label %28, label %22, !dbg !4349

22:                                               ; preds = %5
  %23 = freeze i64 %20
  %24 = sdiv i64 %23, %4, !dbg !4350
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !955, metadata !DIExpression()), !dbg !4338
  %25 = mul i64 %24, %4
  %26 = sub i64 %23, %25
  %27 = sub nsw i64 %20, %26, !dbg !4352
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !956, metadata !DIExpression()), !dbg !4338
  br label %28, !dbg !4353

28:                                               ; preds = %22, %5
  %29 = phi i64 [ %24, %22 ], [ %14, %5 ], !dbg !4338
  %30 = phi i64 [ %27, %22 ], [ %17, %5 ], !dbg !4338
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !956, metadata !DIExpression()), !dbg !4338
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !955, metadata !DIExpression()), !dbg !4338
  %31 = icmp eq ptr %0, null, !dbg !4354
  br i1 %31, label %32, label %33, !dbg !4356

32:                                               ; preds = %28
  store i64 0, ptr %1, align 8, !dbg !4357, !tbaa !3304
  br label %33, !dbg !4358

33:                                               ; preds = %32, %28
  %34 = sub nsw i64 %29, %6, !dbg !4359
  %35 = icmp slt i64 %34, %2, !dbg !4361
  br i1 %35, label %36, label %48, !dbg !4362

36:                                               ; preds = %33
  %37 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4363
  %38 = extractvalue { i64, i1 } %37, 1, !dbg !4363
  %39 = extractvalue { i64, i1 } %37, 0, !dbg !4363
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !955, metadata !DIExpression()), !dbg !4338
  %40 = icmp sgt i64 %39, %3
  %41 = select i1 %12, i1 %40, i1 false
  %42 = or i1 %38, %41, !dbg !4364
  br i1 %42, label %47, label %43, !dbg !4364

43:                                               ; preds = %36
  %44 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %39, i64 %4), !dbg !4365
  %45 = extractvalue { i64, i1 } %44, 1, !dbg !4365
  %46 = extractvalue { i64, i1 } %44, 0, !dbg !4365
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !956, metadata !DIExpression()), !dbg !4338
  br i1 %45, label %47, label %48, !dbg !4366

47:                                               ; preds = %43, %36
  tail call void @xalloc_die() #43, !dbg !4367
  unreachable, !dbg !4367

48:                                               ; preds = %43, %33
  %49 = phi i64 [ %39, %43 ], [ %29, %33 ], !dbg !4338
  %50 = phi i64 [ %46, %43 ], [ %30, %33 ], !dbg !4338
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !956, metadata !DIExpression()), !dbg !4338
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !955, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata ptr %0, metadata !4188, metadata !DIExpression()), !dbg !4368
  call void @llvm.dbg.value(metadata i64 %50, metadata !4189, metadata !DIExpression()), !dbg !4368
  call void @llvm.dbg.value(metadata ptr %0, metadata !4191, metadata !DIExpression()), !dbg !4370
  call void @llvm.dbg.value(metadata i64 %50, metadata !4195, metadata !DIExpression()), !dbg !4370
  %51 = tail call i64 @llvm.umax.i64(i64 %50, i64 1), !dbg !4372
  %52 = tail call ptr @realloc(ptr noundef %0, i64 noundef %51) #46, !dbg !4373
  call void @llvm.dbg.value(metadata ptr %52, metadata !4116, metadata !DIExpression()), !dbg !4374
  %53 = icmp eq ptr %52, null, !dbg !4376
  br i1 %53, label %54, label %55, !dbg !4377

54:                                               ; preds = %48
  tail call void @xalloc_die() #43, !dbg !4378
  unreachable, !dbg !4378

55:                                               ; preds = %48
  tail call void @llvm.dbg.value(metadata ptr %52, metadata !949, metadata !DIExpression()), !dbg !4338
  store i64 %49, ptr %1, align 8, !dbg !4379, !tbaa !3304
  ret ptr %52, !dbg !4380
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #34 !dbg !4381 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4383, metadata !DIExpression()), !dbg !4384
  call void @llvm.dbg.value(metadata i64 %0, metadata !4385, metadata !DIExpression()), !dbg !4389
  call void @llvm.dbg.value(metadata i64 1, metadata !4388, metadata !DIExpression()), !dbg !4389
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #49, !dbg !4391
  call void @llvm.dbg.value(metadata ptr %2, metadata !4116, metadata !DIExpression()), !dbg !4392
  %3 = icmp eq ptr %2, null, !dbg !4394
  br i1 %3, label %4, label %5, !dbg !4395

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4396
  unreachable, !dbg !4396

5:                                                ; preds = %1
  ret ptr %2, !dbg !4397
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4398 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #38

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #37 !dbg !4386 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4385, metadata !DIExpression()), !dbg !4399
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4388, metadata !DIExpression()), !dbg !4399
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #49, !dbg !4400
  call void @llvm.dbg.value(metadata ptr %3, metadata !4116, metadata !DIExpression()), !dbg !4401
  %4 = icmp eq ptr %3, null, !dbg !4403
  br i1 %4, label %5, label %6, !dbg !4404

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4405
  unreachable, !dbg !4405

6:                                                ; preds = %2
  ret ptr %3, !dbg !4406
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #34 !dbg !4407 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4409, metadata !DIExpression()), !dbg !4410
  call void @llvm.dbg.value(metadata i64 %0, metadata !4411, metadata !DIExpression()), !dbg !4415
  call void @llvm.dbg.value(metadata i64 1, metadata !4414, metadata !DIExpression()), !dbg !4415
  call void @llvm.dbg.value(metadata i64 %0, metadata !4417, metadata !DIExpression()), !dbg !4421
  call void @llvm.dbg.value(metadata i64 1, metadata !4420, metadata !DIExpression()), !dbg !4421
  call void @llvm.dbg.value(metadata i64 %0, metadata !4417, metadata !DIExpression()), !dbg !4421
  call void @llvm.dbg.value(metadata i64 1, metadata !4420, metadata !DIExpression()), !dbg !4421
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #49, !dbg !4423
  call void @llvm.dbg.value(metadata ptr %2, metadata !4116, metadata !DIExpression()), !dbg !4424
  %3 = icmp eq ptr %2, null, !dbg !4426
  br i1 %3, label %4, label %5, !dbg !4427

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4428
  unreachable, !dbg !4428

5:                                                ; preds = %1
  ret ptr %2, !dbg !4429
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #37 !dbg !4412 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4411, metadata !DIExpression()), !dbg !4430
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4414, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.value(metadata i64 %0, metadata !4417, metadata !DIExpression()), !dbg !4431
  call void @llvm.dbg.value(metadata i64 %1, metadata !4420, metadata !DIExpression()), !dbg !4431
  call void @llvm.dbg.value(metadata i64 %0, metadata !4417, metadata !DIExpression()), !dbg !4431
  call void @llvm.dbg.value(metadata i64 %1, metadata !4420, metadata !DIExpression()), !dbg !4431
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #49, !dbg !4433
  call void @llvm.dbg.value(metadata ptr %3, metadata !4116, metadata !DIExpression()), !dbg !4434
  %4 = icmp eq ptr %3, null, !dbg !4436
  br i1 %4, label %5, label %6, !dbg !4437

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4438
  unreachable, !dbg !4438

6:                                                ; preds = %2
  ret ptr %3, !dbg !4439
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #29 !dbg !4440 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4444, metadata !DIExpression()), !dbg !4446
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4445, metadata !DIExpression()), !dbg !4446
  call void @llvm.dbg.value(metadata i64 %1, metadata !4140, metadata !DIExpression()), !dbg !4447
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #48, !dbg !4449
  call void @llvm.dbg.value(metadata ptr %3, metadata !4116, metadata !DIExpression()), !dbg !4450
  %4 = icmp eq ptr %3, null, !dbg !4452
  br i1 %4, label %5, label %6, !dbg !4453

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4454
  unreachable, !dbg !4454

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4455, metadata !DIExpression()), !dbg !4463
  call void @llvm.dbg.value(metadata ptr %0, metadata !4461, metadata !DIExpression()), !dbg !4463
  call void @llvm.dbg.value(metadata i64 %1, metadata !4462, metadata !DIExpression()), !dbg !4463
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #41, !dbg !4465
  ret ptr %3, !dbg !4466
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #29 !dbg !4467 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4471, metadata !DIExpression()), !dbg !4473
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4472, metadata !DIExpression()), !dbg !4473
  call void @llvm.dbg.value(metadata i64 %1, metadata !4154, metadata !DIExpression()), !dbg !4474
  call void @llvm.dbg.value(metadata i64 %1, metadata !4156, metadata !DIExpression()), !dbg !4476
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #48, !dbg !4478
  call void @llvm.dbg.value(metadata ptr %3, metadata !4116, metadata !DIExpression()), !dbg !4479
  %4 = icmp eq ptr %3, null, !dbg !4481
  br i1 %4, label %5, label %6, !dbg !4482

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4483
  unreachable, !dbg !4483

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4455, metadata !DIExpression()), !dbg !4484
  call void @llvm.dbg.value(metadata ptr %0, metadata !4461, metadata !DIExpression()), !dbg !4484
  call void @llvm.dbg.value(metadata i64 %1, metadata !4462, metadata !DIExpression()), !dbg !4484
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #41, !dbg !4486
  ret ptr %3, !dbg !4487
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4488 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4492, metadata !DIExpression()), !dbg !4495
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4493, metadata !DIExpression()), !dbg !4495
  %3 = add nsw i64 %1, 1, !dbg !4496
  call void @llvm.dbg.value(metadata i64 %3, metadata !4154, metadata !DIExpression()), !dbg !4497
  call void @llvm.dbg.value(metadata i64 %3, metadata !4156, metadata !DIExpression()), !dbg !4499
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #48, !dbg !4501
  call void @llvm.dbg.value(metadata ptr %4, metadata !4116, metadata !DIExpression()), !dbg !4502
  %5 = icmp eq ptr %4, null, !dbg !4504
  br i1 %5, label %6, label %7, !dbg !4505

6:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4506
  unreachable, !dbg !4506

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4494, metadata !DIExpression()), !dbg !4495
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4507
  store i8 0, ptr %8, align 1, !dbg !4508, !tbaa !1080
  call void @llvm.dbg.value(metadata ptr %4, metadata !4455, metadata !DIExpression()), !dbg !4509
  call void @llvm.dbg.value(metadata ptr %0, metadata !4461, metadata !DIExpression()), !dbg !4509
  call void @llvm.dbg.value(metadata i64 %1, metadata !4462, metadata !DIExpression()), !dbg !4509
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #41, !dbg !4511
  ret ptr %4, !dbg !4512
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4513 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4515, metadata !DIExpression()), !dbg !4516
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #42, !dbg !4517
  %3 = add i64 %2, 1, !dbg !4518
  call void @llvm.dbg.value(metadata ptr %0, metadata !4444, metadata !DIExpression()), !dbg !4519
  call void @llvm.dbg.value(metadata i64 %3, metadata !4445, metadata !DIExpression()), !dbg !4519
  call void @llvm.dbg.value(metadata i64 %3, metadata !4140, metadata !DIExpression()), !dbg !4521
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #48, !dbg !4523
  call void @llvm.dbg.value(metadata ptr %4, metadata !4116, metadata !DIExpression()), !dbg !4524
  %5 = icmp eq ptr %4, null, !dbg !4526
  br i1 %5, label %6, label %7, !dbg !4527

6:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4528
  unreachable, !dbg !4528

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4455, metadata !DIExpression()), !dbg !4529
  call void @llvm.dbg.value(metadata ptr %0, metadata !4461, metadata !DIExpression()), !dbg !4529
  call void @llvm.dbg.value(metadata i64 %3, metadata !4462, metadata !DIExpression()), !dbg !4529
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #41, !dbg !4531
  ret ptr %4, !dbg !4532
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4533 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4538, !tbaa !1071
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4535, metadata !DIExpression()), !dbg !4539
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.145, ptr noundef nonnull @.str.2.146, i32 noundef 5) #41, !dbg !4538
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.147, ptr noundef %2) #41, !dbg !4538
  %3 = icmp eq i32 %1, 0, !dbg !4538
  tail call void @llvm.assume(i1 %3), !dbg !4538
  tail call void @abort() #43, !dbg !4540
  unreachable, !dbg !4540
}

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !4541 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4579, metadata !DIExpression()), !dbg !4584
  %2 = tail call i64 @__fpending(ptr noundef %0) #41, !dbg !4585
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4580, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4584
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4586, metadata !DIExpression()), !dbg !4589
  %3 = load i32, ptr %0, align 8, !dbg !4591, !tbaa !4592
  %4 = and i32 %3, 32, !dbg !4593
  %5 = icmp eq i32 %4, 0, !dbg !4593
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !4582, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4584
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #41, !dbg !4594
  %7 = icmp eq i32 %6, 0, !dbg !4595
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !4583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4584
  br i1 %5, label %8, label %18, !dbg !4596

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4598
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !4580, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4584
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4599
  %11 = xor i1 %7, true, !dbg !4599
  %12 = sext i1 %11 to i32, !dbg !4599
  br i1 %10, label %21, label %13, !dbg !4599

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #44, !dbg !4600
  %15 = load i32, ptr %14, align 4, !dbg !4600, !tbaa !1071
  %16 = icmp ne i32 %15, 9, !dbg !4601
  %17 = sext i1 %16 to i32, !dbg !4602
  br label %21, !dbg !4602

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4603

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #44, !dbg !4605
  store i32 0, ptr %20, align 4, !dbg !4607, !tbaa !1071
  br label %21, !dbg !4605

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4584
  ret i32 %22, !dbg !4608
}

; Function Attrs: nounwind
declare !dbg !4609 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !4612 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4650, metadata !DIExpression()), !dbg !4654
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4651, metadata !DIExpression()), !dbg !4654
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #41, !dbg !4655
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !4652, metadata !DIExpression()), !dbg !4654
  %3 = icmp slt i32 %2, 0, !dbg !4656
  br i1 %3, label %4, label %6, !dbg !4658

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4659
  br label %24, !dbg !4660

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #41, !dbg !4661
  %8 = icmp eq i32 %7, 0, !dbg !4661
  br i1 %8, label %13, label %9, !dbg !4663

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #41, !dbg !4664
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #41, !dbg !4665
  %12 = icmp eq i64 %11, -1, !dbg !4666
  br i1 %12, label %16, label %13, !dbg !4667

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #41, !dbg !4668
  %15 = icmp eq i32 %14, 0, !dbg !4668
  br i1 %15, label %16, label %18, !dbg !4669

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4651, metadata !DIExpression()), !dbg !4654
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4653, metadata !DIExpression()), !dbg !4654
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4670
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !4653, metadata !DIExpression()), !dbg !4654
  br label %24, !dbg !4671

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #44, !dbg !4672
  %20 = load i32, ptr %19, align 4, !dbg !4672, !tbaa !1071
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !4651, metadata !DIExpression()), !dbg !4654
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4653, metadata !DIExpression()), !dbg !4654
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4670
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !4653, metadata !DIExpression()), !dbg !4654
  %22 = icmp eq i32 %20, 0, !dbg !4673
  br i1 %22, label %24, label %23, !dbg !4671

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !4675, !tbaa !1071
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !4653, metadata !DIExpression()), !dbg !4654
  br label %24, !dbg !4677

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4654
  ret i32 %25, !dbg !4678
}

; Function Attrs: nofree nounwind
declare !dbg !4679 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !4680 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !4681 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4719, metadata !DIExpression()), !dbg !4720
  %2 = icmp eq ptr %0, null, !dbg !4721
  br i1 %2, label %6, label %3, !dbg !4723

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #41, !dbg !4724
  %5 = icmp eq i32 %4, 0, !dbg !4724
  br i1 %5, label %6, label %8, !dbg !4725

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !4726
  br label %16, !dbg !4727

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !4728, metadata !DIExpression()), !dbg !4733
  %9 = load i32, ptr %0, align 8, !dbg !4735, !tbaa !4592
  %10 = and i32 %9, 256, !dbg !4737
  %11 = icmp eq i32 %10, 0, !dbg !4737
  br i1 %11, label %14, label %12, !dbg !4738

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #41, !dbg !4739
  br label %14, !dbg !4739

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !4740
  br label %16, !dbg !4741

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !4720
  ret i32 %17, !dbg !4742
}

; Function Attrs: nofree nounwind
declare !dbg !4743 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !4744 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4782, metadata !DIExpression()), !dbg !4788
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4783, metadata !DIExpression()), !dbg !4788
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !4784, metadata !DIExpression()), !dbg !4788
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !4789
  %5 = load ptr, ptr %4, align 8, !dbg !4789, !tbaa !4790
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !4791
  %7 = load ptr, ptr %6, align 8, !dbg !4791, !tbaa !4792
  %8 = icmp eq ptr %5, %7, !dbg !4793
  br i1 %8, label %9, label %27, !dbg !4794

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !4795
  %11 = load ptr, ptr %10, align 8, !dbg !4795, !tbaa !2140
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !4796
  %13 = load ptr, ptr %12, align 8, !dbg !4796, !tbaa !4797
  %14 = icmp eq ptr %11, %13, !dbg !4798
  br i1 %14, label %15, label %27, !dbg !4799

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !4800
  %17 = load ptr, ptr %16, align 8, !dbg !4800, !tbaa !4801
  %18 = icmp eq ptr %17, null, !dbg !4802
  br i1 %18, label %19, label %27, !dbg !4803

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #41, !dbg !4804
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #41, !dbg !4805
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !4785, metadata !DIExpression()), !dbg !4806
  %22 = icmp eq i64 %21, -1, !dbg !4807
  br i1 %22, label %29, label %23, !dbg !4809

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !4810, !tbaa !4592
  %25 = and i32 %24, -17, !dbg !4810
  store i32 %25, ptr %0, align 8, !dbg !4810, !tbaa !4592
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !4811
  store i64 %21, ptr %26, align 8, !dbg !4812, !tbaa !4813
  br label %29, !dbg !4814

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4815
  br label %29, !dbg !4816

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !4788
  ret i32 %30, !dbg !4817
}

; Function Attrs: nofree nounwind
declare !dbg !4818 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4821 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4826, metadata !DIExpression()), !dbg !4831
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4827, metadata !DIExpression()), !dbg !4831
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4828, metadata !DIExpression()), !dbg !4831
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4829, metadata !DIExpression()), !dbg !4831
  %5 = icmp eq ptr %1, null, !dbg !4832
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4834
  %7 = select i1 %5, ptr @.str.158, ptr %1, !dbg !4834
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4834
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !4828, metadata !DIExpression()), !dbg !4831
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !4827, metadata !DIExpression()), !dbg !4831
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !4826, metadata !DIExpression()), !dbg !4831
  %9 = icmp eq ptr %3, null, !dbg !4835
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4837
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !4829, metadata !DIExpression()), !dbg !4831
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #41, !dbg !4838
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4830, metadata !DIExpression()), !dbg !4831
  %12 = icmp ult i64 %11, -3, !dbg !4839
  br i1 %12, label %13, label %17, !dbg !4841

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #42, !dbg !4842
  %15 = icmp eq i32 %14, 0, !dbg !4842
  br i1 %15, label %16, label %29, !dbg !4843

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4844, metadata !DIExpression()), !dbg !4849
  call void @llvm.dbg.value(metadata ptr %10, metadata !4851, metadata !DIExpression()), !dbg !4856
  call void @llvm.dbg.value(metadata i32 0, metadata !4854, metadata !DIExpression()), !dbg !4856
  call void @llvm.dbg.value(metadata i64 8, metadata !4855, metadata !DIExpression()), !dbg !4856
  store i64 0, ptr %10, align 1, !dbg !4858
  br label %29, !dbg !4859

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4860
  br i1 %18, label %19, label %20, !dbg !4862

19:                                               ; preds = %17
  tail call void @abort() #43, !dbg !4863
  unreachable, !dbg !4863

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4864

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #41, !dbg !4866
  br i1 %23, label %29, label %24, !dbg !4867

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4868
  br i1 %25, label %29, label %26, !dbg !4871

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4872, !tbaa !1080
  %28 = zext i8 %27 to i32, !dbg !4873
  store i32 %28, ptr %6, align 4, !dbg !4874, !tbaa !1071
  br label %29, !dbg !4875

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4831
  ret i64 %30, !dbg !4876
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4877 i32 @mbsinit(ptr noundef) local_unnamed_addr #39

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #40 !dbg !4883 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4885, metadata !DIExpression()), !dbg !4889
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4886, metadata !DIExpression()), !dbg !4889
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4887, metadata !DIExpression()), !dbg !4889
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !4890
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !4890
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !4888, metadata !DIExpression()), !dbg !4889
  br i1 %5, label %6, label %8, !dbg !4892

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #44, !dbg !4893
  store i32 12, ptr %7, align 4, !dbg !4895, !tbaa !1071
  br label %12, !dbg !4896

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !4890
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !4888, metadata !DIExpression()), !dbg !4889
  call void @llvm.dbg.value(metadata ptr %0, metadata !4897, metadata !DIExpression()), !dbg !4901
  call void @llvm.dbg.value(metadata i64 %9, metadata !4900, metadata !DIExpression()), !dbg !4901
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !4903
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #46, !dbg !4904
  br label %12, !dbg !4905

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !4889
  ret ptr %13, !dbg !4906
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4907 {
  %2 = alloca [257 x i8], align 1, !DIAssignID !4916
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4912, metadata !DIExpression(), metadata !4916, metadata ptr %2, metadata !DIExpression()), !dbg !4917
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4911, metadata !DIExpression()), !dbg !4917
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #41, !dbg !4918
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #41, !dbg !4919
  %4 = icmp eq i32 %3, 0, !dbg !4919
  br i1 %4, label %5, label %12, !dbg !4921

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4922, metadata !DIExpression()), !dbg !4926
  call void @llvm.dbg.value(metadata ptr @.str.163, metadata !4925, metadata !DIExpression()), !dbg !4926
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.163, i64 2), !dbg !4929
  %7 = icmp eq i32 %6, 0, !dbg !4930
  br i1 %7, label %11, label %8, !dbg !4931

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4922, metadata !DIExpression()), !dbg !4932
  call void @llvm.dbg.value(metadata ptr @.str.1.164, metadata !4925, metadata !DIExpression()), !dbg !4932
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.164, i64 6), !dbg !4934
  %10 = icmp eq i32 %9, 0, !dbg !4935
  br i1 %10, label %11, label %12, !dbg !4936

11:                                               ; preds = %8, %5
  br label %12, !dbg !4937

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4917
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #41, !dbg !4938
  ret i1 %13, !dbg !4938
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4939 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4943, metadata !DIExpression()), !dbg !4946
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4944, metadata !DIExpression()), !dbg !4946
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4945, metadata !DIExpression()), !dbg !4946
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #41, !dbg !4947
  ret i32 %4, !dbg !4948
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4949 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4953, metadata !DIExpression()), !dbg !4954
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #41, !dbg !4955
  ret ptr %2, !dbg !4956
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4957 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4959, metadata !DIExpression()), !dbg !4961
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #41, !dbg !4962
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4960, metadata !DIExpression()), !dbg !4961
  ret ptr %2, !dbg !4963
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4964 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4966, metadata !DIExpression()), !dbg !4973
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4967, metadata !DIExpression()), !dbg !4973
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4968, metadata !DIExpression()), !dbg !4973
  call void @llvm.dbg.value(metadata i32 %0, metadata !4959, metadata !DIExpression()), !dbg !4974
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #41, !dbg !4976
  call void @llvm.dbg.value(metadata ptr %4, metadata !4960, metadata !DIExpression()), !dbg !4974
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4969, metadata !DIExpression()), !dbg !4973
  %5 = icmp eq ptr %4, null, !dbg !4977
  br i1 %5, label %6, label %9, !dbg !4978

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4979
  br i1 %7, label %19, label %8, !dbg !4982

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4983, !tbaa !1080
  br label %19, !dbg !4984

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #42, !dbg !4985
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !4970, metadata !DIExpression()), !dbg !4986
  %11 = icmp ult i64 %10, %2, !dbg !4987
  br i1 %11, label %12, label %14, !dbg !4989

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4990
  call void @llvm.dbg.value(metadata ptr %1, metadata !4992, metadata !DIExpression()), !dbg !4997
  call void @llvm.dbg.value(metadata ptr %4, metadata !4995, metadata !DIExpression()), !dbg !4997
  call void @llvm.dbg.value(metadata i64 %13, metadata !4996, metadata !DIExpression()), !dbg !4997
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #41, !dbg !4999
  br label %19, !dbg !5000

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5001
  br i1 %15, label %19, label %16, !dbg !5004

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5005
  call void @llvm.dbg.value(metadata ptr %1, metadata !4992, metadata !DIExpression()), !dbg !5007
  call void @llvm.dbg.value(metadata ptr %4, metadata !4995, metadata !DIExpression()), !dbg !5007
  call void @llvm.dbg.value(metadata i64 %17, metadata !4996, metadata !DIExpression()), !dbg !5007
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #41, !dbg !5009
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !5010
  store i8 0, ptr %18, align 1, !dbg !5011, !tbaa !1080
  br label %19, !dbg !5012

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5013
  ret i32 %20, !dbg !5014
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
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #32 = { inlinehint nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #33 = { nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #34 = { nounwind allocsize(0) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #35 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #36 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #37 = { nounwind allocsize(0,1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #38 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #39 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #40 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #41 = { nounwind }
attributes #42 = { nounwind willreturn memory(read) }
attributes #43 = { noreturn nounwind }
attributes #44 = { nounwind willreturn memory(none) }
attributes #45 = { noreturn }
attributes #46 = { nounwind allocsize(1) }
attributes #47 = { cold }
attributes #48 = { nounwind allocsize(0) }
attributes #49 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!89, !546, !550, !897, !565, !863, !902, !624, !907, !909, !912, !638, !652, !703, !914, !917, !857, !924, !926, !959, !961, !963, !965, !967, !879, !969, !971, !973, !975}
!llvm.ident = !{!977, !977, !977, !977, !977, !977, !977, !977, !977, !977, !977, !977, !977, !977, !977, !977, !977, !977, !977, !977, !977, !977, !977, !977, !977, !977, !977, !977, !977}
!llvm.module.flags = !{!978, !979, !980, !981, !982, !983, !984, !985}

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
!82 = distinct !DIGlobalVariable(name: "long_options", scope: !83, file: !2, line: 566, type: !530, isLocal: true, isDefinition: true)
!83 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 550, type: !84, scopeLine: 551, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !452)
!84 = !DISubroutineType(types: !85)
!85 = !{!86, !86, !87}
!86 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!89 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/cat.o -MD -MP -MF src/.deps/cat.Tpo -c src/cat.c -o src/.cat.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !90, retainedTypes: !143, globals: !152, splitDebugInlining: false, nameTableKind: None)
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
!143 = !{!144, !88, !86, !145, !146, !149, !151}
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!145 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !147, line: 18, baseType: !148)
!147 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!148 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!151 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!152 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !49, !51, !56, !61, !66, !71, !76, !153, !158, !163, !168, !173, !178, !180, !185, !190, !81, !195, !200, !202, !207, !212, !214, !219, !224, !229, !231, !236, !241, !246, !248, !253, !255, !257, !262, !342, !344, !346, !348, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !390, !395, !400, !402, !404, !406, !408, !410, !415, !417, !419, !421, !426, !431, !436, !438, !440, !442, !444, !446, !448, !450}
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(scope: null, file: !2, line: 568, type: !155, isLocal: true, isDefinition: true)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 16)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(scope: null, file: !2, line: 569, type: !160, isLocal: true, isDefinition: true)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 7)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(scope: null, file: !2, line: 570, type: !165, isLocal: true, isDefinition: true)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !166)
!166 = !{!167}
!167 = !DISubrange(count: 14)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(scope: null, file: !2, line: 571, type: !170, isLocal: true, isDefinition: true)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !171)
!171 = !{!172}
!172 = !DISubrange(count: 17)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(scope: null, file: !2, line: 572, type: !175, isLocal: true, isDefinition: true)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !176)
!176 = !{!177}
!177 = !DISubrange(count: 10)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(scope: null, file: !2, line: 573, type: !175, isLocal: true, isDefinition: true)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(scope: null, file: !2, line: 574, type: !182, isLocal: true, isDefinition: true)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !183)
!183 = !{!184}
!184 = !DISubrange(count: 9)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(scope: null, file: !2, line: 575, type: !187, isLocal: true, isDefinition: true)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !188)
!188 = !{!189}
!189 = !DISubrange(count: 5)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(scope: null, file: !2, line: 576, type: !192, isLocal: true, isDefinition: true)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !193)
!193 = !{!194}
!194 = !DISubrange(count: 8)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(scope: null, file: !2, line: 582, type: !197, isLocal: true, isDefinition: true)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !198)
!198 = !{!199}
!199 = !DISubrange(count: 1)
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(scope: null, file: !2, line: 583, type: !175, isLocal: true, isDefinition: true)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(scope: null, file: !2, line: 583, type: !204, isLocal: true, isDefinition: true)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !205)
!205 = !{!206}
!206 = !DISubrange(count: 24)
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(scope: null, file: !2, line: 595, type: !209, isLocal: true, isDefinition: true)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !210)
!210 = !{!211}
!211 = !DISubrange(count: 11)
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(scope: null, file: !2, line: 647, type: !165, isLocal: true, isDefinition: true)
!214 = !DIGlobalVariableExpression(var: !215, expr: !DIExpression())
!215 = distinct !DIGlobalVariable(scope: null, file: !2, line: 647, type: !216, isLocal: true, isDefinition: true)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !217)
!217 = !{!218}
!218 = !DISubrange(count: 18)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(scope: null, file: !2, line: 647, type: !221, isLocal: true, isDefinition: true)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !222)
!222 = !{!223}
!223 = !DISubrange(count: 19)
!224 = !DIGlobalVariableExpression(var: !225, expr: !DIExpression())
!225 = distinct !DIGlobalVariable(scope: null, file: !2, line: 647, type: !226, isLocal: true, isDefinition: true)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !227)
!227 = !{!228}
!228 = !DISubrange(count: 20)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(scope: null, file: !2, line: 657, type: !155, isLocal: true, isDefinition: true)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(scope: null, file: !2, line: 676, type: !233, isLocal: true, isDefinition: true)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !234)
!234 = !{!235}
!235 = !DISubrange(count: 2)
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression())
!237 = distinct !DIGlobalVariable(scope: null, file: !2, line: 699, type: !238, isLocal: true, isDefinition: true)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !239)
!239 = !{!240}
!240 = !DISubrange(count: 3)
!241 = !DIGlobalVariableExpression(var: !242, expr: !DIExpression())
!242 = distinct !DIGlobalVariable(scope: null, file: !2, line: 736, type: !243, isLocal: true, isDefinition: true)
!243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !244)
!244 = !{!245}
!245 = !DISubrange(count: 30)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(scope: null, file: !2, line: 821, type: !233, isLocal: true, isDefinition: true)
!248 = !DIGlobalVariableExpression(var: !249, expr: !DIExpression())
!249 = distinct !DIGlobalVariable(scope: null, file: !2, line: 826, type: !250, isLocal: true, isDefinition: true)
!250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !251)
!251 = !{!252}
!252 = !DISubrange(count: 23)
!253 = !DIGlobalVariableExpression(var: !254, expr: !DIExpression())
!254 = distinct !DIGlobalVariable(name: "infile", scope: !89, file: !2, line: 50, type: !149, isLocal: true, isDefinition: true)
!255 = !DIGlobalVariableExpression(var: !256, expr: !DIExpression())
!256 = distinct !DIGlobalVariable(name: "input_desc", scope: !89, file: !2, line: 53, type: !86, isLocal: true, isDefinition: true)
!257 = !DIGlobalVariableExpression(var: !258, expr: !DIExpression())
!258 = distinct !DIGlobalVariable(scope: null, file: !92, line: 729, type: !259, isLocal: true, isDefinition: true)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !260)
!260 = !{!261}
!261 = !DISubrange(count: 56)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !264, file: !92, line: 575, type: !86, isLocal: true, isDefinition: true)
!264 = distinct !DISubprogram(name: "oputs_", scope: !92, file: !92, line: 573, type: !265, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !267)
!265 = !DISubroutineType(cc: DW_CC_nocall, types: !266)
!266 = !{null, !149, !149}
!267 = !{!268, !269, !270, !273, !275, !276, !277, !281, !282, !283, !284, !286, !336, !337, !338, !340, !341}
!268 = !DILocalVariable(name: "program", arg: 1, scope: !264, file: !92, line: 573, type: !149)
!269 = !DILocalVariable(name: "option", arg: 2, scope: !264, file: !92, line: 573, type: !149)
!270 = !DILocalVariable(name: "term", scope: !271, file: !92, line: 585, type: !149)
!271 = distinct !DILexicalBlock(scope: !272, file: !92, line: 582, column: 5)
!272 = distinct !DILexicalBlock(scope: !264, file: !92, line: 581, column: 7)
!273 = !DILocalVariable(name: "double_space", scope: !264, file: !92, line: 594, type: !274)
!274 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!275 = !DILocalVariable(name: "first_word", scope: !264, file: !92, line: 595, type: !149)
!276 = !DILocalVariable(name: "option_text", scope: !264, file: !92, line: 596, type: !149)
!277 = !DILocalVariable(name: "s", scope: !278, file: !92, line: 608, type: !149)
!278 = distinct !DILexicalBlock(scope: !279, file: !92, line: 605, column: 5)
!279 = distinct !DILexicalBlock(scope: !280, file: !92, line: 604, column: 12)
!280 = distinct !DILexicalBlock(scope: !264, file: !92, line: 597, column: 7)
!281 = !DILocalVariable(name: "spaces", scope: !278, file: !92, line: 609, type: !146)
!282 = !DILocalVariable(name: "anchor_len", scope: !264, file: !92, line: 620, type: !146)
!283 = !DILocalVariable(name: "desc_text", scope: !264, file: !92, line: 625, type: !149)
!284 = !DILocalVariable(name: "__ptr", scope: !285, file: !92, line: 644, type: !149)
!285 = distinct !DILexicalBlock(scope: !264, file: !92, line: 644, column: 3)
!286 = !DILocalVariable(name: "__stream", scope: !285, file: !92, line: 644, type: !287)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !289, line: 7, baseType: !290)
!289 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !291, line: 49, size: 1728, elements: !292)
!291 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!292 = !{!293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !308, !310, !311, !312, !316, !317, !319, !320, !323, !325, !328, !331, !332, !333, !334, !335}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !290, file: !291, line: 51, baseType: !86, size: 32)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !290, file: !291, line: 54, baseType: !88, size: 64, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !290, file: !291, line: 55, baseType: !88, size: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !290, file: !291, line: 56, baseType: !88, size: 64, offset: 192)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !290, file: !291, line: 57, baseType: !88, size: 64, offset: 256)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !290, file: !291, line: 58, baseType: !88, size: 64, offset: 320)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !290, file: !291, line: 59, baseType: !88, size: 64, offset: 384)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !290, file: !291, line: 60, baseType: !88, size: 64, offset: 448)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !290, file: !291, line: 61, baseType: !88, size: 64, offset: 512)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !290, file: !291, line: 64, baseType: !88, size: 64, offset: 576)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !290, file: !291, line: 65, baseType: !88, size: 64, offset: 640)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !290, file: !291, line: 66, baseType: !88, size: 64, offset: 704)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !290, file: !291, line: 68, baseType: !306, size: 64, offset: 768)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !291, line: 36, flags: DIFlagFwdDecl)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !290, file: !291, line: 70, baseType: !309, size: 64, offset: 832)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !290, file: !291, line: 72, baseType: !86, size: 32, offset: 896)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !290, file: !291, line: 73, baseType: !86, size: 32, offset: 928)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !290, file: !291, line: 74, baseType: !313, size: 64, offset: 960)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !314, line: 152, baseType: !315)
!314 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!315 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !290, file: !291, line: 77, baseType: !145, size: 16, offset: 1024)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !290, file: !291, line: 78, baseType: !318, size: 8, offset: 1040)
!318 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !290, file: !291, line: 79, baseType: !197, size: 8, offset: 1048)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !290, file: !291, line: 81, baseType: !321, size: 64, offset: 1088)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !291, line: 43, baseType: null)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !290, file: !291, line: 89, baseType: !324, size: 64, offset: 1152)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !314, line: 153, baseType: !315)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !290, file: !291, line: 91, baseType: !326, size: 64, offset: 1216)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !291, line: 37, flags: DIFlagFwdDecl)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !290, file: !291, line: 92, baseType: !329, size: 64, offset: 1280)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !291, line: 38, flags: DIFlagFwdDecl)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !290, file: !291, line: 93, baseType: !309, size: 64, offset: 1344)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !290, file: !291, line: 94, baseType: !144, size: 64, offset: 1408)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !290, file: !291, line: 95, baseType: !146, size: 64, offset: 1472)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !290, file: !291, line: 96, baseType: !86, size: 32, offset: 1536)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !290, file: !291, line: 98, baseType: !226, size: 160, offset: 1568)
!336 = !DILocalVariable(name: "__cnt", scope: !285, file: !92, line: 644, type: !146)
!337 = !DILocalVariable(name: "url_program", scope: !264, file: !92, line: 648, type: !149)
!338 = !DILocalVariable(name: "__ptr", scope: !339, file: !92, line: 686, type: !149)
!339 = distinct !DILexicalBlock(scope: !264, file: !92, line: 686, column: 3)
!340 = !DILocalVariable(name: "__stream", scope: !339, file: !92, line: 686, type: !287)
!341 = !DILocalVariable(name: "__cnt", scope: !339, file: !92, line: 686, type: !146)
!342 = !DIGlobalVariableExpression(var: !343, expr: !DIExpression())
!343 = distinct !DIGlobalVariable(scope: null, file: !92, line: 585, type: !187, isLocal: true, isDefinition: true)
!344 = !DIGlobalVariableExpression(var: !345, expr: !DIExpression())
!345 = distinct !DIGlobalVariable(scope: null, file: !92, line: 586, type: !187, isLocal: true, isDefinition: true)
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(scope: null, file: !92, line: 595, type: !19, isLocal: true, isDefinition: true)
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(scope: null, file: !92, line: 620, type: !350, isLocal: true, isDefinition: true)
!350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !351)
!351 = !{!352}
!352 = !DISubrange(count: 6)
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(scope: null, file: !92, line: 648, type: !233, isLocal: true, isDefinition: true)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(scope: null, file: !92, line: 648, type: !187, isLocal: true, isDefinition: true)
!357 = !DIGlobalVariableExpression(var: !358, expr: !DIExpression())
!358 = distinct !DIGlobalVariable(scope: null, file: !92, line: 649, type: !19, isLocal: true, isDefinition: true)
!359 = !DIGlobalVariableExpression(var: !360, expr: !DIExpression())
!360 = distinct !DIGlobalVariable(scope: null, file: !92, line: 649, type: !238, isLocal: true, isDefinition: true)
!361 = !DIGlobalVariableExpression(var: !362, expr: !DIExpression())
!362 = distinct !DIGlobalVariable(scope: null, file: !92, line: 650, type: !187, isLocal: true, isDefinition: true)
!363 = !DIGlobalVariableExpression(var: !364, expr: !DIExpression())
!364 = distinct !DIGlobalVariable(scope: null, file: !92, line: 651, type: !350, isLocal: true, isDefinition: true)
!365 = !DIGlobalVariableExpression(var: !366, expr: !DIExpression())
!366 = distinct !DIGlobalVariable(scope: null, file: !92, line: 651, type: !350, isLocal: true, isDefinition: true)
!367 = !DIGlobalVariableExpression(var: !368, expr: !DIExpression())
!368 = distinct !DIGlobalVariable(scope: null, file: !92, line: 652, type: !160, isLocal: true, isDefinition: true)
!369 = !DIGlobalVariableExpression(var: !370, expr: !DIExpression())
!370 = distinct !DIGlobalVariable(scope: null, file: !92, line: 653, type: !192, isLocal: true, isDefinition: true)
!371 = !DIGlobalVariableExpression(var: !372, expr: !DIExpression())
!372 = distinct !DIGlobalVariable(scope: null, file: !92, line: 654, type: !175, isLocal: true, isDefinition: true)
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(scope: null, file: !92, line: 655, type: !175, isLocal: true, isDefinition: true)
!375 = !DIGlobalVariableExpression(var: !376, expr: !DIExpression())
!376 = distinct !DIGlobalVariable(scope: null, file: !92, line: 656, type: !175, isLocal: true, isDefinition: true)
!377 = !DIGlobalVariableExpression(var: !378, expr: !DIExpression())
!378 = distinct !DIGlobalVariable(scope: null, file: !92, line: 657, type: !175, isLocal: true, isDefinition: true)
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression())
!380 = distinct !DIGlobalVariable(scope: null, file: !92, line: 663, type: !160, isLocal: true, isDefinition: true)
!381 = !DIGlobalVariableExpression(var: !382, expr: !DIExpression())
!382 = distinct !DIGlobalVariable(scope: null, file: !92, line: 664, type: !175, isLocal: true, isDefinition: true)
!383 = !DIGlobalVariableExpression(var: !384, expr: !DIExpression())
!384 = distinct !DIGlobalVariable(scope: null, file: !92, line: 669, type: !170, isLocal: true, isDefinition: true)
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
!401 = distinct !DIGlobalVariable(scope: null, file: !92, line: 679, type: !238, isLocal: true, isDefinition: true)
!402 = !DIGlobalVariableExpression(var: !403, expr: !DIExpression())
!403 = distinct !DIGlobalVariable(scope: null, file: !92, line: 683, type: !187, isLocal: true, isDefinition: true)
!404 = !DIGlobalVariableExpression(var: !405, expr: !DIExpression())
!405 = distinct !DIGlobalVariable(scope: null, file: !92, line: 688, type: !187, isLocal: true, isDefinition: true)
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(scope: null, file: !92, line: 691, type: !192, isLocal: true, isDefinition: true)
!408 = !DIGlobalVariableExpression(var: !409, expr: !DIExpression())
!409 = distinct !DIGlobalVariable(scope: null, file: !92, line: 839, type: !155, isLocal: true, isDefinition: true)
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
!445 = distinct !DIGlobalVariable(name: "line_buf", scope: !89, file: !2, line: 59, type: !226, isLocal: true, isDefinition: true)
!446 = !DIGlobalVariableExpression(var: !447, expr: !DIExpression())
!447 = distinct !DIGlobalVariable(name: "line_num_print", scope: !89, file: !2, line: 68, type: !88, isLocal: true, isDefinition: true)
!448 = !DIGlobalVariableExpression(var: !449, expr: !DIExpression())
!449 = distinct !DIGlobalVariable(name: "pending_cr", scope: !89, file: !2, line: 80, type: !274, isLocal: true, isDefinition: true)
!450 = !DIGlobalVariableExpression(var: !451, expr: !DIExpression())
!451 = distinct !DIGlobalVariable(scope: null, file: !92, line: 952, type: !433, isLocal: true, isDefinition: true)
!452 = !{!453, !454, !455, !456, !492, !493, !494, !495, !496, !497, !498, !499, !500, !505, !506, !507, !508, !509, !510, !512, !513, !514, !519, !522, !523, !526, !528, !529}
!453 = !DILocalVariable(name: "argc", arg: 1, scope: !83, file: !2, line: 550, type: !86)
!454 = !DILocalVariable(name: "argv", arg: 2, scope: !83, file: !2, line: 550, type: !87)
!455 = !DILocalVariable(name: "have_read_stdin", scope: !83, file: !2, line: 553, type: !274)
!456 = !DILocalVariable(name: "ostat_buf", scope: !83, file: !2, line: 555, type: !457)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !458, line: 44, size: 1024, elements: !459)
!458 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "910289113a4b669f8271729077b0f267")
!459 = !{!460, !462, !464, !466, !468, !470, !472, !473, !474, !475, !477, !478, !480, !488, !489, !490}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !457, file: !458, line: 46, baseType: !461, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !314, line: 145, baseType: !148)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !457, file: !458, line: 47, baseType: !463, size: 64, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !314, line: 148, baseType: !148)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !457, file: !458, line: 48, baseType: !465, size: 32, offset: 128)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !314, line: 150, baseType: !98)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !457, file: !458, line: 49, baseType: !467, size: 32, offset: 160)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !314, line: 151, baseType: !98)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !457, file: !458, line: 50, baseType: !469, size: 32, offset: 192)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !314, line: 146, baseType: !98)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !457, file: !458, line: 51, baseType: !471, size: 32, offset: 224)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !314, line: 147, baseType: !98)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !457, file: !458, line: 52, baseType: !461, size: 64, offset: 256)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !457, file: !458, line: 53, baseType: !461, size: 64, offset: 320)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !457, file: !458, line: 54, baseType: !313, size: 64, offset: 384)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !457, file: !458, line: 55, baseType: !476, size: 32, offset: 448)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !314, line: 175, baseType: !86)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !457, file: !458, line: 56, baseType: !86, size: 32, offset: 480)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !457, file: !458, line: 57, baseType: !479, size: 64, offset: 512)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !314, line: 180, baseType: !315)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !457, file: !458, line: 65, baseType: !481, size: 128, offset: 576)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !482, line: 11, size: 128, elements: !483)
!482 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!483 = !{!484, !486}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !481, file: !482, line: 16, baseType: !485, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !314, line: 160, baseType: !315)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !481, file: !482, line: 21, baseType: !487, size: 64, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !314, line: 197, baseType: !315)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !457, file: !458, line: 66, baseType: !481, size: 128, offset: 704)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !457, file: !458, line: 67, baseType: !481, size: 128, offset: 832)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !457, file: !458, line: 79, baseType: !491, size: 64, offset: 960)
!491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 64, elements: !234)
!492 = !DILocalVariable(name: "number", scope: !83, file: !2, line: 558, type: !274)
!493 = !DILocalVariable(name: "number_nonblank", scope: !83, file: !2, line: 559, type: !274)
!494 = !DILocalVariable(name: "squeeze_blank", scope: !83, file: !2, line: 560, type: !274)
!495 = !DILocalVariable(name: "show_ends", scope: !83, file: !2, line: 561, type: !274)
!496 = !DILocalVariable(name: "show_nonprinting", scope: !83, file: !2, line: 562, type: !274)
!497 = !DILocalVariable(name: "show_tabs", scope: !83, file: !2, line: 563, type: !274)
!498 = !DILocalVariable(name: "file_open_mode", scope: !83, file: !2, line: 564, type: !86)
!499 = !DILocalVariable(name: "c", scope: !83, file: !2, line: 594, type: !86)
!500 = !DILocalVariable(name: "outsize", scope: !83, file: !2, line: 660, type: !501)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !502, line: 130, baseType: !503)
!502 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !504, line: 18, baseType: !315)
!504 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!505 = !DILocalVariable(name: "out_flags", scope: !83, file: !2, line: 663, type: !86)
!506 = !DILocalVariable(name: "out_isreg", scope: !83, file: !2, line: 666, type: !274)
!507 = !DILocalVariable(name: "argind", scope: !83, file: !2, line: 677, type: !86)
!508 = !DILocalVariable(name: "ok", scope: !83, file: !2, line: 678, type: !274)
!509 = !DILocalVariable(name: "page_size", scope: !83, file: !2, line: 679, type: !501)
!510 = !DILocalVariable(name: "reading_stdin", scope: !511, file: !2, line: 686, type: !274)
!511 = distinct !DILexicalBlock(scope: !83, file: !2, line: 682, column: 5)
!512 = !DILocalVariable(name: "istat_buf", scope: !511, file: !2, line: 705, type: !457)
!513 = !DILocalVariable(name: "insize", scope: !511, file: !2, line: 714, type: !501)
!514 = !DILocalVariable(name: "in_pos", scope: !515, file: !2, line: 727, type: !517)
!515 = distinct !DILexicalBlock(scope: !516, file: !2, line: 726, column: 9)
!516 = distinct !DILexicalBlock(scope: !511, file: !2, line: 722, column: 11)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !518, line: 63, baseType: !313)
!518 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!519 = !DILocalVariable(name: "whence", scope: !520, file: !2, line: 732, type: !86)
!520 = distinct !DILexicalBlock(scope: !521, file: !2, line: 729, column: 13)
!521 = distinct !DILexicalBlock(scope: !515, file: !2, line: 728, column: 15)
!522 = !DILocalVariable(name: "inbuf", scope: !511, file: !2, line: 745, type: !88)
!523 = !DILocalVariable(name: "copy_cat_status", scope: !524, file: !2, line: 754, type: !86)
!524 = distinct !DILexicalBlock(scope: !525, file: !2, line: 753, column: 9)
!525 = distinct !DILexicalBlock(scope: !511, file: !2, line: 751, column: 11)
!526 = !DILocalVariable(name: "bufsize", scope: !527, file: !2, line: 794, type: !501)
!527 = distinct !DILexicalBlock(scope: !525, file: !2, line: 769, column: 9)
!528 = !DILocalVariable(name: "outbuf", scope: !527, file: !2, line: 799, type: !88)
!529 = !DILabel(scope: !511, name: "contin", file: !2, line: 810)
!530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !531, size: 2560, elements: !176)
!531 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !532)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !533, line: 50, size: 256, elements: !534)
!533 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!534 = !{!535, !536, !537, !539}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !532, file: !533, line: 52, baseType: !149, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !532, file: !533, line: 55, baseType: !86, size: 32, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !532, file: !533, line: 56, baseType: !538, size: 64, offset: 128)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !532, file: !533, line: 57, baseType: !86, size: 32, offset: 192)
!540 = !DIGlobalVariableExpression(var: !449, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!541 = !DIGlobalVariableExpression(var: !542, expr: !DIExpression())
!542 = distinct !DIGlobalVariable(scope: null, file: !543, line: 3, type: !392, isLocal: true, isDefinition: true)
!543 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!544 = !DIGlobalVariableExpression(var: !545, expr: !DIExpression())
!545 = distinct !DIGlobalVariable(name: "Version", scope: !546, file: !543, line: 3, type: !149, isLocal: false, isDefinition: true)
!546 = distinct !DICompileUnit(language: DW_LANG_C11, file: !543, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/version.o -MD -MP -MF src/.deps/version.Tpo -c src/version.c -o src/.version.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !547, splitDebugInlining: false, nameTableKind: None)
!547 = !{!541, !544}
!548 = !DIGlobalVariableExpression(var: !549, expr: !DIExpression())
!549 = distinct !DIGlobalVariable(name: "file_name", scope: !550, file: !551, line: 45, type: !149, isLocal: true, isDefinition: true)
!550 = distinct !DICompileUnit(language: DW_LANG_C11, file: !551, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-closeout.o -MD -MP -MF lib/.deps/libcoreutils_a-closeout.Tpo -c lib/closeout.c -o lib/.libcoreutils_a-closeout.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !552, splitDebugInlining: false, nameTableKind: None)
!551 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!552 = !{!553, !555, !557, !559, !548, !561}
!553 = !DIGlobalVariableExpression(var: !554, expr: !DIExpression())
!554 = distinct !DIGlobalVariable(scope: null, file: !551, line: 121, type: !160, isLocal: true, isDefinition: true)
!555 = !DIGlobalVariableExpression(var: !556, expr: !DIExpression())
!556 = distinct !DIGlobalVariable(scope: null, file: !551, line: 121, type: !433, isLocal: true, isDefinition: true)
!557 = !DIGlobalVariableExpression(var: !558, expr: !DIExpression())
!558 = distinct !DIGlobalVariable(scope: null, file: !551, line: 123, type: !160, isLocal: true, isDefinition: true)
!559 = !DIGlobalVariableExpression(var: !560, expr: !DIExpression())
!560 = distinct !DIGlobalVariable(scope: null, file: !551, line: 126, type: !238, isLocal: true, isDefinition: true)
!561 = !DIGlobalVariableExpression(var: !562, expr: !DIExpression())
!562 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !550, file: !551, line: 55, type: !274, isLocal: true, isDefinition: true)
!563 = !DIGlobalVariableExpression(var: !564, expr: !DIExpression())
!564 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !565, file: !566, line: 66, type: !615, isLocal: false, isDefinition: true)
!565 = distinct !DICompileUnit(language: DW_LANG_C11, file: !566, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !567, globals: !568, splitDebugInlining: false, nameTableKind: None)
!566 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!567 = !{!144, !151}
!568 = !{!569, !571, !594, !596, !598, !600, !563, !602, !604, !606, !608, !613}
!569 = !DIGlobalVariableExpression(var: !570, expr: !DIExpression())
!570 = distinct !DIGlobalVariable(scope: null, file: !566, line: 272, type: !187, isLocal: true, isDefinition: true)
!571 = !DIGlobalVariableExpression(var: !572, expr: !DIExpression())
!572 = distinct !DIGlobalVariable(name: "old_file_name", scope: !573, file: !566, line: 304, type: !149, isLocal: true, isDefinition: true)
!573 = distinct !DISubprogram(name: "verror_at_line", scope: !566, file: !566, line: 298, type: !574, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !587)
!574 = !DISubroutineType(types: !575)
!575 = !{null, !86, !86, !149, !98, !149, !576}
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !518, line: 52, baseType: !577)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !578, line: 12, baseType: !579)
!578 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !566, baseType: !580)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !581)
!581 = !{!582, !583, !584, !585, !586}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !580, file: !566, baseType: !144, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !580, file: !566, baseType: !144, size: 64, offset: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !580, file: !566, baseType: !144, size: 64, offset: 128)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !580, file: !566, baseType: !86, size: 32, offset: 192)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !580, file: !566, baseType: !86, size: 32, offset: 224)
!587 = !{!588, !589, !590, !591, !592, !593}
!588 = !DILocalVariable(name: "status", arg: 1, scope: !573, file: !566, line: 298, type: !86)
!589 = !DILocalVariable(name: "errnum", arg: 2, scope: !573, file: !566, line: 298, type: !86)
!590 = !DILocalVariable(name: "file_name", arg: 3, scope: !573, file: !566, line: 298, type: !149)
!591 = !DILocalVariable(name: "line_number", arg: 4, scope: !573, file: !566, line: 298, type: !98)
!592 = !DILocalVariable(name: "message", arg: 5, scope: !573, file: !566, line: 298, type: !149)
!593 = !DILocalVariable(name: "args", arg: 6, scope: !573, file: !566, line: 298, type: !576)
!594 = !DIGlobalVariableExpression(var: !595, expr: !DIExpression())
!595 = distinct !DIGlobalVariable(name: "old_line_number", scope: !573, file: !566, line: 305, type: !98, isLocal: true, isDefinition: true)
!596 = !DIGlobalVariableExpression(var: !597, expr: !DIExpression())
!597 = distinct !DIGlobalVariable(scope: null, file: !566, line: 338, type: !19, isLocal: true, isDefinition: true)
!598 = !DIGlobalVariableExpression(var: !599, expr: !DIExpression())
!599 = distinct !DIGlobalVariable(scope: null, file: !566, line: 346, type: !192, isLocal: true, isDefinition: true)
!600 = !DIGlobalVariableExpression(var: !601, expr: !DIExpression())
!601 = distinct !DIGlobalVariable(scope: null, file: !566, line: 346, type: !233, isLocal: true, isDefinition: true)
!602 = !DIGlobalVariableExpression(var: !603, expr: !DIExpression())
!603 = distinct !DIGlobalVariable(name: "error_message_count", scope: !565, file: !566, line: 69, type: !98, isLocal: false, isDefinition: true)
!604 = !DIGlobalVariableExpression(var: !605, expr: !DIExpression())
!605 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !565, file: !566, line: 295, type: !86, isLocal: false, isDefinition: true)
!606 = !DIGlobalVariableExpression(var: !607, expr: !DIExpression())
!607 = distinct !DIGlobalVariable(scope: null, file: !566, line: 208, type: !160, isLocal: true, isDefinition: true)
!608 = !DIGlobalVariableExpression(var: !609, expr: !DIExpression())
!609 = distinct !DIGlobalVariable(scope: null, file: !566, line: 208, type: !610, isLocal: true, isDefinition: true)
!610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !611)
!611 = !{!612}
!612 = !DISubrange(count: 21)
!613 = !DIGlobalVariableExpression(var: !614, expr: !DIExpression())
!614 = distinct !DIGlobalVariable(scope: null, file: !566, line: 214, type: !187, isLocal: true, isDefinition: true)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{null}
!618 = !DIGlobalVariableExpression(var: !619, expr: !DIExpression())
!619 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !620, file: !621, line: 506, type: !86, isLocal: true, isDefinition: true)
!620 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD_CLOEXEC", scope: !621, file: !621, line: 485, type: !622, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !624, retainedNodes: !626)
!621 = !DIFile(filename: "lib/fcntl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "bc4606a0e1e86be6126be7481cbd2f8d")
!622 = !DISubroutineType(types: !623)
!623 = !{!86, !86, !86}
!624 = distinct !DICompileUnit(language: DW_LANG_C11, file: !621, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fcntl.o -MD -MP -MF lib/.deps/libcoreutils_a-fcntl.Tpo -c lib/fcntl.c -o lib/.libcoreutils_a-fcntl.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !625, splitDebugInlining: false, nameTableKind: None)
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
!637 = distinct !DIGlobalVariable(name: "program_name", scope: !638, file: !639, line: 31, type: !149, isLocal: false, isDefinition: true)
!638 = distinct !DICompileUnit(language: DW_LANG_C11, file: !639, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !640, globals: !641, splitDebugInlining: false, nameTableKind: None)
!639 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!640 = !{!144, !88}
!641 = !{!636, !642, !644}
!642 = !DIGlobalVariableExpression(var: !643, expr: !DIExpression())
!643 = distinct !DIGlobalVariable(scope: null, file: !639, line: 46, type: !192, isLocal: true, isDefinition: true)
!644 = !DIGlobalVariableExpression(var: !645, expr: !DIExpression())
!645 = distinct !DIGlobalVariable(scope: null, file: !639, line: 49, type: !19, isLocal: true, isDefinition: true)
!646 = !DIGlobalVariableExpression(var: !647, expr: !DIExpression())
!647 = distinct !DIGlobalVariable(name: "utf07FF", scope: !648, file: !649, line: 46, type: !676, isLocal: true, isDefinition: true)
!648 = distinct !DISubprogram(name: "proper_name_lite", scope: !649, file: !649, line: 38, type: !650, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !652, retainedNodes: !654)
!649 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!650 = !DISubroutineType(types: !651)
!651 = !{!149, !149, !149}
!652 = distinct !DICompileUnit(language: DW_LANG_C11, file: !649, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !653, splitDebugInlining: false, nameTableKind: None)
!653 = !{!646}
!654 = !{!655, !656, !657, !658, !663}
!655 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !648, file: !649, line: 38, type: !149)
!656 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !648, file: !649, line: 38, type: !149)
!657 = !DILocalVariable(name: "translation", scope: !648, file: !649, line: 40, type: !149)
!658 = !DILocalVariable(name: "w", scope: !648, file: !649, line: 47, type: !659)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !660, line: 37, baseType: !661)
!660 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !314, line: 57, baseType: !662)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !314, line: 42, baseType: !98)
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
!676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 16, elements: !234)
!677 = !DIGlobalVariableExpression(var: !678, expr: !DIExpression())
!678 = distinct !DIGlobalVariable(scope: null, file: !679, line: 78, type: !192, isLocal: true, isDefinition: true)
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
!690 = distinct !DIGlobalVariable(scope: null, file: !679, line: 82, type: !226, isLocal: true, isDefinition: true)
!691 = !DIGlobalVariableExpression(var: !692, expr: !DIExpression())
!692 = distinct !DIGlobalVariable(scope: null, file: !679, line: 83, type: !233, isLocal: true, isDefinition: true)
!693 = !DIGlobalVariableExpression(var: !694, expr: !DIExpression())
!694 = distinct !DIGlobalVariable(scope: null, file: !679, line: 84, type: !192, isLocal: true, isDefinition: true)
!695 = !DIGlobalVariableExpression(var: !696, expr: !DIExpression())
!696 = distinct !DIGlobalVariable(scope: null, file: !679, line: 85, type: !160, isLocal: true, isDefinition: true)
!697 = !DIGlobalVariableExpression(var: !698, expr: !DIExpression())
!698 = distinct !DIGlobalVariable(scope: null, file: !679, line: 86, type: !160, isLocal: true, isDefinition: true)
!699 = !DIGlobalVariableExpression(var: !700, expr: !DIExpression())
!700 = distinct !DIGlobalVariable(scope: null, file: !679, line: 87, type: !192, isLocal: true, isDefinition: true)
!701 = !DIGlobalVariableExpression(var: !702, expr: !DIExpression())
!702 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !703, file: !679, line: 76, type: !777, isLocal: false, isDefinition: true)
!703 = distinct !DICompileUnit(language: DW_LANG_C11, file: !679, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !704, retainedTypes: !712, globals: !713, splitDebugInlining: false, nameTableKind: None)
!704 = !{!705, !707, !120}
!705 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !706, line: 42, baseType: !98, size: 32, elements: !99)
!706 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!707 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !706, line: 254, baseType: !98, size: 32, elements: !708)
!708 = !{!709, !710, !711}
!709 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!710 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!711 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!712 = !{!144, !86, !145, !146}
!713 = !{!677, !680, !682, !687, !689, !691, !693, !695, !697, !699, !701, !714, !718, !728, !730, !735, !737, !739, !741, !743, !766, !773, !775}
!714 = !DIGlobalVariableExpression(var: !715, expr: !DIExpression())
!715 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !703, file: !679, line: 92, type: !716, isLocal: false, isDefinition: true)
!716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !717, size: 320, elements: !176)
!717 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !705)
!718 = !DIGlobalVariableExpression(var: !719, expr: !DIExpression())
!719 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !703, file: !679, line: 1040, type: !720, isLocal: false, isDefinition: true)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !679, line: 56, size: 448, elements: !721)
!721 = !{!722, !723, !724, !726, !727}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !720, file: !679, line: 59, baseType: !705, size: 32)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !720, file: !679, line: 62, baseType: !86, size: 32, offset: 32)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !720, file: !679, line: 66, baseType: !725, size: 256, offset: 64)
!725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 256, elements: !193)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !720, file: !679, line: 69, baseType: !149, size: 64, offset: 320)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !720, file: !679, line: 72, baseType: !149, size: 64, offset: 384)
!728 = !DIGlobalVariableExpression(var: !729, expr: !DIExpression())
!729 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !703, file: !679, line: 107, type: !720, isLocal: true, isDefinition: true)
!730 = !DIGlobalVariableExpression(var: !731, expr: !DIExpression())
!731 = distinct !DIGlobalVariable(name: "slot0", scope: !703, file: !679, line: 831, type: !732, isLocal: true, isDefinition: true)
!732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !733)
!733 = !{!734}
!734 = !DISubrange(count: 256)
!735 = !DIGlobalVariableExpression(var: !736, expr: !DIExpression())
!736 = distinct !DIGlobalVariable(scope: null, file: !679, line: 321, type: !233, isLocal: true, isDefinition: true)
!737 = !DIGlobalVariableExpression(var: !738, expr: !DIExpression())
!738 = distinct !DIGlobalVariable(scope: null, file: !679, line: 357, type: !233, isLocal: true, isDefinition: true)
!739 = !DIGlobalVariableExpression(var: !740, expr: !DIExpression())
!740 = distinct !DIGlobalVariable(scope: null, file: !679, line: 358, type: !233, isLocal: true, isDefinition: true)
!741 = !DIGlobalVariableExpression(var: !742, expr: !DIExpression())
!742 = distinct !DIGlobalVariable(scope: null, file: !679, line: 199, type: !160, isLocal: true, isDefinition: true)
!743 = !DIGlobalVariableExpression(var: !744, expr: !DIExpression())
!744 = distinct !DIGlobalVariable(name: "quote", scope: !745, file: !679, line: 228, type: !764, isLocal: true, isDefinition: true)
!745 = distinct !DISubprogram(name: "gettext_quote", scope: !679, file: !679, line: 197, type: !746, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !748)
!746 = !DISubroutineType(types: !747)
!747 = !{!149, !149, !705}
!748 = !{!749, !750, !751, !752, !753}
!749 = !DILocalVariable(name: "msgid", arg: 1, scope: !745, file: !679, line: 197, type: !149)
!750 = !DILocalVariable(name: "s", arg: 2, scope: !745, file: !679, line: 197, type: !705)
!751 = !DILocalVariable(name: "translation", scope: !745, file: !679, line: 199, type: !149)
!752 = !DILocalVariable(name: "w", scope: !745, file: !679, line: 229, type: !659)
!753 = !DILocalVariable(name: "mbs", scope: !745, file: !679, line: 230, type: !754)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !665, line: 6, baseType: !755)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !667, line: 21, baseType: !756)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !667, line: 13, size: 64, elements: !757)
!757 = !{!758, !759}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !756, file: !667, line: 15, baseType: !86, size: 32)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !756, file: !667, line: 20, baseType: !760, size: 32, offset: 32)
!760 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !756, file: !667, line: 16, size: 32, elements: !761)
!761 = !{!762, !763}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !760, file: !667, line: 18, baseType: !98, size: 32)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !760, file: !667, line: 19, baseType: !19, size: 32)
!764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 64, elements: !765)
!765 = !{!235, !21}
!766 = !DIGlobalVariableExpression(var: !767, expr: !DIExpression())
!767 = distinct !DIGlobalVariable(name: "slotvec", scope: !703, file: !679, line: 834, type: !768, isLocal: true, isDefinition: true)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !679, line: 823, size: 128, elements: !770)
!770 = !{!771, !772}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !769, file: !679, line: 825, baseType: !146, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !769, file: !679, line: 826, baseType: !88, size: 64, offset: 64)
!773 = !DIGlobalVariableExpression(var: !774, expr: !DIExpression())
!774 = distinct !DIGlobalVariable(name: "nslots", scope: !703, file: !679, line: 832, type: !86, isLocal: true, isDefinition: true)
!775 = !DIGlobalVariableExpression(var: !776, expr: !DIExpression())
!776 = distinct !DIGlobalVariable(name: "slotvec0", scope: !703, file: !679, line: 833, type: !769, isLocal: true, isDefinition: true)
!777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !778, size: 704, elements: !210)
!778 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!779 = !DIGlobalVariableExpression(var: !780, expr: !DIExpression())
!780 = distinct !DIGlobalVariable(scope: null, file: !781, line: 67, type: !433, isLocal: true, isDefinition: true)
!781 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!782 = !DIGlobalVariableExpression(var: !783, expr: !DIExpression())
!783 = distinct !DIGlobalVariable(scope: null, file: !781, line: 69, type: !160, isLocal: true, isDefinition: true)
!784 = !DIGlobalVariableExpression(var: !785, expr: !DIExpression())
!785 = distinct !DIGlobalVariable(scope: null, file: !781, line: 83, type: !160, isLocal: true, isDefinition: true)
!786 = !DIGlobalVariableExpression(var: !787, expr: !DIExpression())
!787 = distinct !DIGlobalVariable(scope: null, file: !781, line: 83, type: !19, isLocal: true, isDefinition: true)
!788 = !DIGlobalVariableExpression(var: !789, expr: !DIExpression())
!789 = distinct !DIGlobalVariable(scope: null, file: !781, line: 85, type: !233, isLocal: true, isDefinition: true)
!790 = !DIGlobalVariableExpression(var: !791, expr: !DIExpression())
!791 = distinct !DIGlobalVariable(scope: null, file: !781, line: 88, type: !792, isLocal: true, isDefinition: true)
!792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !793)
!793 = !{!794}
!794 = !DISubrange(count: 171)
!795 = !DIGlobalVariableExpression(var: !796, expr: !DIExpression())
!796 = distinct !DIGlobalVariable(scope: null, file: !781, line: 88, type: !797, isLocal: true, isDefinition: true)
!797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !798)
!798 = !{!799}
!799 = !DISubrange(count: 34)
!800 = !DIGlobalVariableExpression(var: !801, expr: !DIExpression())
!801 = distinct !DIGlobalVariable(scope: null, file: !781, line: 105, type: !155, isLocal: true, isDefinition: true)
!802 = !DIGlobalVariableExpression(var: !803, expr: !DIExpression())
!803 = distinct !DIGlobalVariable(scope: null, file: !781, line: 109, type: !250, isLocal: true, isDefinition: true)
!804 = !DIGlobalVariableExpression(var: !805, expr: !DIExpression())
!805 = distinct !DIGlobalVariable(scope: null, file: !781, line: 113, type: !806, isLocal: true, isDefinition: true)
!806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !807)
!807 = !{!808}
!808 = !DISubrange(count: 28)
!809 = !DIGlobalVariableExpression(var: !810, expr: !DIExpression())
!810 = distinct !DIGlobalVariable(scope: null, file: !781, line: 120, type: !811, isLocal: true, isDefinition: true)
!811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !812)
!812 = !{!813}
!813 = !DISubrange(count: 32)
!814 = !DIGlobalVariableExpression(var: !815, expr: !DIExpression())
!815 = distinct !DIGlobalVariable(scope: null, file: !781, line: 127, type: !816, isLocal: true, isDefinition: true)
!816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !817)
!817 = !{!818}
!818 = !DISubrange(count: 36)
!819 = !DIGlobalVariableExpression(var: !820, expr: !DIExpression())
!820 = distinct !DIGlobalVariable(scope: null, file: !781, line: 134, type: !387, isLocal: true, isDefinition: true)
!821 = !DIGlobalVariableExpression(var: !822, expr: !DIExpression())
!822 = distinct !DIGlobalVariable(scope: null, file: !781, line: 142, type: !823, isLocal: true, isDefinition: true)
!823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !824)
!824 = !{!825}
!825 = !DISubrange(count: 44)
!826 = !DIGlobalVariableExpression(var: !827, expr: !DIExpression())
!827 = distinct !DIGlobalVariable(scope: null, file: !781, line: 150, type: !828, isLocal: true, isDefinition: true)
!828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !829)
!829 = !{!830}
!830 = !DISubrange(count: 48)
!831 = !DIGlobalVariableExpression(var: !832, expr: !DIExpression())
!832 = distinct !DIGlobalVariable(scope: null, file: !781, line: 159, type: !44, isLocal: true, isDefinition: true)
!833 = !DIGlobalVariableExpression(var: !834, expr: !DIExpression())
!834 = distinct !DIGlobalVariable(scope: null, file: !781, line: 170, type: !835, isLocal: true, isDefinition: true)
!835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !836)
!836 = !{!837}
!837 = !DISubrange(count: 60)
!838 = !DIGlobalVariableExpression(var: !839, expr: !DIExpression())
!839 = distinct !DIGlobalVariable(scope: null, file: !781, line: 248, type: !226, isLocal: true, isDefinition: true)
!840 = !DIGlobalVariableExpression(var: !841, expr: !DIExpression())
!841 = distinct !DIGlobalVariable(scope: null, file: !781, line: 248, type: !412, isLocal: true, isDefinition: true)
!842 = !DIGlobalVariableExpression(var: !843, expr: !DIExpression())
!843 = distinct !DIGlobalVariable(scope: null, file: !781, line: 254, type: !226, isLocal: true, isDefinition: true)
!844 = !DIGlobalVariableExpression(var: !845, expr: !DIExpression())
!845 = distinct !DIGlobalVariable(scope: null, file: !781, line: 254, type: !165, isLocal: true, isDefinition: true)
!846 = !DIGlobalVariableExpression(var: !847, expr: !DIExpression())
!847 = distinct !DIGlobalVariable(scope: null, file: !781, line: 254, type: !387, isLocal: true, isDefinition: true)
!848 = !DIGlobalVariableExpression(var: !849, expr: !DIExpression())
!849 = distinct !DIGlobalVariable(scope: null, file: !781, line: 259, type: !3, isLocal: true, isDefinition: true)
!850 = !DIGlobalVariableExpression(var: !851, expr: !DIExpression())
!851 = distinct !DIGlobalVariable(scope: null, file: !781, line: 259, type: !852, isLocal: true, isDefinition: true)
!852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !853)
!853 = !{!854}
!854 = !DISubrange(count: 29)
!855 = !DIGlobalVariableExpression(var: !856, expr: !DIExpression())
!856 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !857, file: !858, line: 26, type: !860, isLocal: false, isDefinition: true)
!857 = distinct !DICompileUnit(language: DW_LANG_C11, file: !858, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !859, splitDebugInlining: false, nameTableKind: None)
!858 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!859 = !{!855}
!860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 376, elements: !25)
!861 = !DIGlobalVariableExpression(var: !862, expr: !DIExpression())
!862 = distinct !DIGlobalVariable(name: "exit_failure", scope: !863, file: !864, line: 24, type: !866, isLocal: false, isDefinition: true)
!863 = distinct !DICompileUnit(language: DW_LANG_C11, file: !864, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !865, splitDebugInlining: false, nameTableKind: None)
!864 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!865 = !{!861}
!866 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !86)
!867 = !DIGlobalVariableExpression(var: !868, expr: !DIExpression())
!868 = distinct !DIGlobalVariable(scope: null, file: !869, line: 34, type: !238, isLocal: true, isDefinition: true)
!869 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!870 = !DIGlobalVariableExpression(var: !871, expr: !DIExpression())
!871 = distinct !DIGlobalVariable(scope: null, file: !869, line: 34, type: !160, isLocal: true, isDefinition: true)
!872 = !DIGlobalVariableExpression(var: !873, expr: !DIExpression())
!873 = distinct !DIGlobalVariable(scope: null, file: !869, line: 34, type: !170, isLocal: true, isDefinition: true)
!874 = !DIGlobalVariableExpression(var: !875, expr: !DIExpression())
!875 = distinct !DIGlobalVariable(scope: null, file: !876, line: 108, type: !197, isLocal: true, isDefinition: true)
!876 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!877 = !DIGlobalVariableExpression(var: !878, expr: !DIExpression())
!878 = distinct !DIGlobalVariable(name: "internal_state", scope: !879, file: !876, line: 97, type: !882, isLocal: true, isDefinition: true)
!879 = distinct !DICompileUnit(language: DW_LANG_C11, file: !876, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !880, globals: !881, splitDebugInlining: false, nameTableKind: None)
!880 = !{!144, !146, !151}
!881 = !{!874, !877}
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !665, line: 6, baseType: !883)
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !667, line: 21, baseType: !884)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !667, line: 13, size: 64, elements: !885)
!885 = !{!886, !887}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !884, file: !667, line: 15, baseType: !86, size: 32)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !884, file: !667, line: 20, baseType: !888, size: 32, offset: 32)
!888 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !884, file: !667, line: 16, size: 32, elements: !889)
!889 = !{!890, !891}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !888, file: !667, line: 18, baseType: !98, size: 32)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !888, file: !667, line: 19, baseType: !19, size: 32)
!892 = !DIGlobalVariableExpression(var: !893, expr: !DIExpression())
!893 = distinct !DIGlobalVariable(scope: null, file: !894, line: 35, type: !233, isLocal: true, isDefinition: true)
!894 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!895 = !DIGlobalVariableExpression(var: !896, expr: !DIExpression())
!896 = distinct !DIGlobalVariable(scope: null, file: !894, line: 35, type: !350, isLocal: true, isDefinition: true)
!897 = distinct !DICompileUnit(language: DW_LANG_C11, file: !898, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-copy-file-range.o -MD -MP -MF lib/.deps/libcoreutils_a-copy-file-range.Tpo -c lib/copy-file-range.c -o lib/.libcoreutils_a-copy-file-range.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !899, splitDebugInlining: false, nameTableKind: None)
!898 = !DIFile(filename: "lib/copy-file-range.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6733a97916f50c6b003a01ea6f4c9f0a")
!899 = !{!900}
!900 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !901, line: 36, baseType: !98, size: 32, elements: !141)
!901 = !DIFile(filename: "lib/sys-limits.h", directory: "/src", checksumkind: CSK_MD5, checksum: "6cbf2bea168df2a7bb951ccec5cf6fff")
!902 = distinct !DICompileUnit(language: DW_LANG_C11, file: !903, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fadvise.o -MD -MP -MF lib/.deps/libcoreutils_a-fadvise.Tpo -c lib/fadvise.c -o lib/.libcoreutils_a-fadvise.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !904, splitDebugInlining: false, nameTableKind: None)
!903 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!904 = !{!905}
!905 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !906, line: 44, baseType: !98, size: 32, elements: !113)
!906 = !DIFile(filename: "lib/fadvise.h", directory: "/src", checksumkind: CSK_MD5, checksum: "8bbfadd819a4efc4455fc2741023266a")
!907 = distinct !DICompileUnit(language: DW_LANG_C11, file: !908, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fpurge.o -MD -MP -MF lib/.deps/libcoreutils_a-fpurge.Tpo -c lib/fpurge.c -o lib/.libcoreutils_a-fpurge.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!908 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!909 = distinct !DICompileUnit(language: DW_LANG_C11, file: !910, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-full-write.o -MD -MP -MF lib/.deps/libcoreutils_a-full-write.Tpo -c lib/full-write.c -o lib/.libcoreutils_a-full-write.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !911, splitDebugInlining: false, nameTableKind: None)
!910 = !DIFile(filename: "lib/full-write.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3e4d1fbb34cc594bb17b421b58eed3ca")
!911 = !{!149}
!912 = distinct !DICompileUnit(language: DW_LANG_C11, file: !913, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!913 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!914 = distinct !DICompileUnit(language: DW_LANG_C11, file: !915, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-safe-write.o -MD -MP -MF lib/.deps/libcoreutils_a-safe-write.Tpo -c lib/safe-write.c -o lib/.libcoreutils_a-safe-write.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !899, retainedTypes: !916, splitDebugInlining: false, nameTableKind: None)
!915 = !DIFile(filename: "lib/safe-write.c", directory: "/src", checksumkind: CSK_MD5, checksum: "868d9fdfbe37109ce7387a63f56e5cc3")
!916 = !{!146}
!917 = distinct !DICompileUnit(language: DW_LANG_C11, file: !781, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !918, retainedTypes: !922, globals: !923, splitDebugInlining: false, nameTableKind: None)
!918 = !{!919}
!919 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !781, line: 40, baseType: !98, size: 32, elements: !920)
!920 = !{!921}
!921 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!922 = !{!144}
!923 = !{!779, !782, !784, !786, !788, !790, !795, !800, !802, !804, !809, !814, !819, !821, !826, !831, !833, !838, !840, !842, !844, !846, !848, !850}
!924 = distinct !DICompileUnit(language: DW_LANG_C11, file: !925, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalignalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xalignalloc.Tpo -c lib/xalignalloc.c -o lib/.libcoreutils_a-xalignalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !916, splitDebugInlining: false, nameTableKind: None)
!925 = !DIFile(filename: "lib/xalignalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3b950fafb945919ba44141bc7f11141c")
!926 = distinct !DICompileUnit(language: DW_LANG_C11, file: !927, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !928, retainedTypes: !958, splitDebugInlining: false, nameTableKind: None)
!927 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!928 = !{!929, !941}
!929 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !930, file: !927, line: 188, baseType: !98, size: 32, elements: !939)
!930 = distinct !DISubprogram(name: "x2nrealloc", scope: !927, file: !927, line: 176, type: !931, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !926, retainedNodes: !934)
!931 = !DISubroutineType(types: !932)
!932 = !{!144, !144, !933, !146}
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!934 = !{!935, !936, !937, !938}
!935 = !DILocalVariable(name: "p", arg: 1, scope: !930, file: !927, line: 176, type: !144)
!936 = !DILocalVariable(name: "pn", arg: 2, scope: !930, file: !927, line: 176, type: !933)
!937 = !DILocalVariable(name: "s", arg: 3, scope: !930, file: !927, line: 176, type: !146)
!938 = !DILocalVariable(name: "n", scope: !930, file: !927, line: 178, type: !146)
!939 = !{!940}
!940 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!941 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !942, file: !927, line: 228, baseType: !98, size: 32, elements: !939)
!942 = distinct !DISubprogram(name: "xpalloc", scope: !927, file: !927, line: 223, type: !943, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !926, retainedNodes: !948)
!943 = !DISubroutineType(types: !944)
!944 = !{!144, !144, !945, !946, !503, !946}
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !947, line: 130, baseType: !503)
!947 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!948 = !{!949, !950, !951, !952, !953, !954, !955, !956, !957}
!949 = !DILocalVariable(name: "pa", arg: 1, scope: !942, file: !927, line: 223, type: !144)
!950 = !DILocalVariable(name: "pn", arg: 2, scope: !942, file: !927, line: 223, type: !945)
!951 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !942, file: !927, line: 223, type: !946)
!952 = !DILocalVariable(name: "n_max", arg: 4, scope: !942, file: !927, line: 223, type: !503)
!953 = !DILocalVariable(name: "s", arg: 5, scope: !942, file: !927, line: 223, type: !946)
!954 = !DILocalVariable(name: "n0", scope: !942, file: !927, line: 230, type: !946)
!955 = !DILocalVariable(name: "n", scope: !942, file: !927, line: 237, type: !946)
!956 = !DILocalVariable(name: "nbytes", scope: !942, file: !927, line: 248, type: !946)
!957 = !DILocalVariable(name: "adjusted_nbytes", scope: !942, file: !927, line: 252, type: !946)
!958 = !{!88, !144}
!959 = distinct !DICompileUnit(language: DW_LANG_C11, file: !869, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !960, splitDebugInlining: false, nameTableKind: None)
!960 = !{!867, !870, !872}
!961 = distinct !DICompileUnit(language: DW_LANG_C11, file: !962, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!962 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!963 = distinct !DICompileUnit(language: DW_LANG_C11, file: !964, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!964 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!965 = distinct !DICompileUnit(language: DW_LANG_C11, file: !966, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !922, splitDebugInlining: false, nameTableKind: None)
!966 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!967 = distinct !DICompileUnit(language: DW_LANG_C11, file: !968, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !922, splitDebugInlining: false, nameTableKind: None)
!968 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!969 = distinct !DICompileUnit(language: DW_LANG_C11, file: !970, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !922, splitDebugInlining: false, nameTableKind: None)
!970 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!971 = distinct !DICompileUnit(language: DW_LANG_C11, file: !894, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !972, splitDebugInlining: false, nameTableKind: None)
!972 = !{!892, !895}
!973 = distinct !DICompileUnit(language: DW_LANG_C11, file: !974, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!974 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!975 = distinct !DICompileUnit(language: DW_LANG_C11, file: !976, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !922, splitDebugInlining: false, nameTableKind: None)
!976 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!977 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!978 = !{i32 7, !"Dwarf Version", i32 5}
!979 = !{i32 2, !"Debug Info Version", i32 3}
!980 = !{i32 1, !"wchar_size", i32 4}
!981 = !{i32 8, !"PIC Level", i32 2}
!982 = !{i32 7, !"PIE Level", i32 2}
!983 = !{i32 7, !"uwtable", i32 2}
!984 = !{i32 7, !"frame-pointer", i32 1}
!985 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!986 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 83, type: !987, scopeLine: 84, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !989)
!987 = !DISubroutineType(types: !988)
!988 = !{null, !86}
!989 = !{!990}
!990 = !DILocalVariable(name: "status", arg: 1, scope: !986, file: !2, line: 83, type: !86)
!991 = !DILocation(line: 0, scope: !986)
!992 = !DILocation(line: 85, column: 14, scope: !993)
!993 = distinct !DILexicalBlock(scope: !986, file: !2, line: 85, column: 7)
!994 = !DILocation(line: 85, column: 7, scope: !986)
!995 = !DILocation(line: 86, column: 5, scope: !996)
!996 = distinct !DILexicalBlock(scope: !993, file: !2, line: 86, column: 5)
!997 = !{!998, !998, i64 0}
!998 = !{!"any pointer", !999, i64 0}
!999 = !{!"omnipotent char", !1000, i64 0}
!1000 = !{!"Simple C/C++ TBAA"}
!1001 = !DILocation(line: 89, column: 7, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !993, file: !2, line: 88, column: 5)
!1003 = !DILocation(line: 93, column: 7, scope: !1002)
!1004 = !DILocation(line: 729, column: 3, scope: !1005, inlinedAt: !1006)
!1005 = distinct !DISubprogram(name: "emit_stdin_note", scope: !92, file: !92, line: 727, type: !616, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89)
!1006 = distinct !DILocation(line: 97, column: 7, scope: !1002)
!1007 = !DILocation(line: 99, column: 7, scope: !1002)
!1008 = !DILocation(line: 102, column: 7, scope: !1002)
!1009 = !DILocation(line: 105, column: 7, scope: !1002)
!1010 = !DILocation(line: 108, column: 7, scope: !1002)
!1011 = !DILocation(line: 111, column: 7, scope: !1002)
!1012 = !DILocation(line: 114, column: 7, scope: !1002)
!1013 = !DILocation(line: 117, column: 7, scope: !1002)
!1014 = !DILocation(line: 120, column: 7, scope: !1002)
!1015 = !DILocation(line: 123, column: 7, scope: !1002)
!1016 = !DILocation(line: 126, column: 7, scope: !1002)
!1017 = !DILocation(line: 129, column: 7, scope: !1002)
!1018 = !DILocation(line: 130, column: 7, scope: !1002)
!1019 = !DILocation(line: 131, column: 7, scope: !1002)
!1020 = !DILocalVariable(name: "program", arg: 1, scope: !1021, file: !92, line: 836, type: !149)
!1021 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !92, file: !92, line: 836, type: !1022, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1024)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{null, !149}
!1024 = !{!1020, !1025, !1032, !1033, !1035, !1036}
!1025 = !DILocalVariable(name: "infomap", scope: !1021, file: !92, line: 838, type: !1026)
!1026 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1027, size: 896, elements: !161)
!1027 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1028)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1021, file: !92, line: 838, size: 128, elements: !1029)
!1029 = !{!1030, !1031}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1028, file: !92, line: 838, baseType: !149, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1028, file: !92, line: 838, baseType: !149, size: 64, offset: 64)
!1032 = !DILocalVariable(name: "node", scope: !1021, file: !92, line: 848, type: !149)
!1033 = !DILocalVariable(name: "map_prog", scope: !1021, file: !92, line: 849, type: !1034)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1035 = !DILocalVariable(name: "lc_messages", scope: !1021, file: !92, line: 861, type: !149)
!1036 = !DILocalVariable(name: "url_program", scope: !1021, file: !92, line: 874, type: !149)
!1037 = !DILocation(line: 0, scope: !1021, inlinedAt: !1038)
!1038 = distinct !DILocation(line: 138, column: 7, scope: !1002)
!1039 = !{}
!1040 = !DILocation(line: 857, column: 3, scope: !1021, inlinedAt: !1038)
!1041 = !DILocation(line: 861, column: 29, scope: !1021, inlinedAt: !1038)
!1042 = !DILocation(line: 862, column: 7, scope: !1043, inlinedAt: !1038)
!1043 = distinct !DILexicalBlock(scope: !1021, file: !92, line: 862, column: 7)
!1044 = !DILocation(line: 862, column: 19, scope: !1043, inlinedAt: !1038)
!1045 = !DILocation(line: 862, column: 22, scope: !1043, inlinedAt: !1038)
!1046 = !DILocation(line: 862, column: 7, scope: !1021, inlinedAt: !1038)
!1047 = !DILocation(line: 868, column: 7, scope: !1048, inlinedAt: !1038)
!1048 = distinct !DILexicalBlock(scope: !1043, file: !92, line: 863, column: 5)
!1049 = !DILocation(line: 870, column: 5, scope: !1048, inlinedAt: !1038)
!1050 = !DILocation(line: 875, column: 3, scope: !1021, inlinedAt: !1038)
!1051 = !DILocation(line: 877, column: 3, scope: !1021, inlinedAt: !1038)
!1052 = !DILocation(line: 140, column: 3, scope: !986)
!1053 = !DISubprogram(name: "dcgettext", scope: !1054, file: !1054, line: 51, type: !1055, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1054 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!88, !149, !149, !86}
!1057 = !DISubprogram(name: "__fprintf_chk", scope: !1058, file: !1058, line: 93, type: !1059, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1058 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!86, !1061, !86, !1062, null}
!1061 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !287)
!1062 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !149)
!1063 = !DISubprogram(name: "__printf_chk", scope: !1058, file: !1058, line: 95, type: !1064, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!86, !86, !1062, null}
!1066 = !DISubprogram(name: "fputs_unlocked", scope: !518, file: !518, line: 691, type: !1067, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!86, !1062, !1061}
!1069 = !DILocation(line: 0, scope: !264)
!1070 = !DILocation(line: 581, column: 7, scope: !272)
!1071 = !{!1072, !1072, i64 0}
!1072 = !{!"int", !999, i64 0}
!1073 = !DILocation(line: 581, column: 19, scope: !272)
!1074 = !DILocation(line: 581, column: 7, scope: !264)
!1075 = !DILocation(line: 585, column: 26, scope: !271)
!1076 = !DILocation(line: 0, scope: !271)
!1077 = !DILocation(line: 586, column: 23, scope: !271)
!1078 = !DILocation(line: 586, column: 28, scope: !271)
!1079 = !DILocation(line: 586, column: 32, scope: !271)
!1080 = !{!999, !999, i64 0}
!1081 = !DILocation(line: 586, column: 38, scope: !271)
!1082 = !DILocalVariable(name: "__s1", arg: 1, scope: !1083, file: !1084, line: 1359, type: !149)
!1083 = distinct !DISubprogram(name: "streq", scope: !1084, file: !1084, line: 1359, type: !1085, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1087)
!1084 = !DIFile(filename: "./lib/string.h", directory: "/src")
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!274, !149, !149}
!1087 = !{!1082, !1088}
!1088 = !DILocalVariable(name: "__s2", arg: 2, scope: !1083, file: !1084, line: 1359, type: !149)
!1089 = !DILocation(line: 0, scope: !1083, inlinedAt: !1090)
!1090 = distinct !DILocation(line: 586, column: 41, scope: !271)
!1091 = !DILocation(line: 1361, column: 11, scope: !1083, inlinedAt: !1090)
!1092 = !DILocation(line: 1361, column: 10, scope: !1083, inlinedAt: !1090)
!1093 = !DILocation(line: 586, column: 19, scope: !271)
!1094 = !DILocation(line: 587, column: 5, scope: !271)
!1095 = !DILocation(line: 588, column: 7, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !264, file: !92, line: 588, column: 7)
!1097 = !DILocation(line: 588, column: 7, scope: !264)
!1098 = !DILocation(line: 590, column: 7, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1096, file: !92, line: 589, column: 5)
!1100 = !DILocation(line: 591, column: 7, scope: !1099)
!1101 = !DILocation(line: 595, column: 37, scope: !264)
!1102 = !DILocation(line: 595, column: 35, scope: !264)
!1103 = !DILocation(line: 596, column: 29, scope: !264)
!1104 = !DILocation(line: 597, column: 8, scope: !280)
!1105 = !DILocation(line: 597, column: 7, scope: !264)
!1106 = !DILocation(line: 604, column: 24, scope: !279)
!1107 = !DILocation(line: 604, column: 12, scope: !280)
!1108 = !DILocation(line: 0, scope: !278)
!1109 = !DILocation(line: 610, column: 16, scope: !278)
!1110 = !DILocation(line: 610, column: 7, scope: !278)
!1111 = !DILocation(line: 611, column: 21, scope: !278)
!1112 = !{!1113, !1113, i64 0}
!1113 = !{!"short", !999, i64 0}
!1114 = !DILocation(line: 611, column: 19, scope: !278)
!1115 = !DILocation(line: 611, column: 16, scope: !278)
!1116 = !DILocation(line: 610, column: 30, scope: !278)
!1117 = distinct !{!1117, !1110, !1111, !1118}
!1118 = !{!"llvm.loop.mustprogress"}
!1119 = !DILocation(line: 612, column: 18, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !278, file: !92, line: 612, column: 11)
!1121 = !DILocation(line: 612, column: 11, scope: !278)
!1122 = !DILocation(line: 620, column: 23, scope: !264)
!1123 = !DILocation(line: 625, column: 39, scope: !264)
!1124 = !DILocation(line: 626, column: 3, scope: !264)
!1125 = !DILocation(line: 626, column: 10, scope: !264)
!1126 = !DILocation(line: 626, column: 21, scope: !264)
!1127 = !DILocation(line: 628, column: 44, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1129, file: !92, line: 628, column: 11)
!1129 = distinct !DILexicalBlock(scope: !264, file: !92, line: 627, column: 5)
!1130 = !DILocation(line: 628, column: 32, scope: !1128)
!1131 = !DILocation(line: 628, column: 49, scope: !1128)
!1132 = !DILocation(line: 628, column: 11, scope: !1129)
!1133 = !DILocation(line: 630, column: 11, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1129, file: !92, line: 630, column: 11)
!1135 = !DILocation(line: 630, column: 11, scope: !1129)
!1136 = !DILocation(line: 632, column: 26, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1138, file: !92, line: 632, column: 15)
!1138 = distinct !DILexicalBlock(scope: !1134, file: !92, line: 631, column: 9)
!1139 = !DILocation(line: 632, column: 34, scope: !1137)
!1140 = !DILocation(line: 632, column: 37, scope: !1137)
!1141 = !DILocation(line: 632, column: 15, scope: !1138)
!1142 = !DILocation(line: 640, column: 16, scope: !1129)
!1143 = distinct !{!1143, !1124, !1144, !1118}
!1144 = !DILocation(line: 641, column: 5, scope: !264)
!1145 = !DILocation(line: 644, column: 3, scope: !264)
!1146 = !DILocation(line: 0, scope: !1083, inlinedAt: !1147)
!1147 = distinct !DILocation(line: 648, column: 31, scope: !264)
!1148 = !DILocation(line: 0, scope: !1083, inlinedAt: !1149)
!1149 = distinct !DILocation(line: 649, column: 31, scope: !264)
!1150 = !DILocation(line: 0, scope: !1083, inlinedAt: !1151)
!1151 = distinct !DILocation(line: 650, column: 31, scope: !264)
!1152 = !DILocation(line: 0, scope: !1083, inlinedAt: !1153)
!1153 = distinct !DILocation(line: 651, column: 31, scope: !264)
!1154 = !DILocation(line: 0, scope: !1083, inlinedAt: !1155)
!1155 = distinct !DILocation(line: 652, column: 31, scope: !264)
!1156 = !DILocation(line: 0, scope: !1083, inlinedAt: !1157)
!1157 = distinct !DILocation(line: 653, column: 31, scope: !264)
!1158 = !DILocation(line: 0, scope: !1083, inlinedAt: !1159)
!1159 = distinct !DILocation(line: 654, column: 31, scope: !264)
!1160 = !DILocation(line: 0, scope: !1083, inlinedAt: !1161)
!1161 = distinct !DILocation(line: 655, column: 31, scope: !264)
!1162 = !DILocation(line: 0, scope: !1083, inlinedAt: !1163)
!1163 = distinct !DILocation(line: 656, column: 31, scope: !264)
!1164 = !DILocation(line: 0, scope: !1083, inlinedAt: !1165)
!1165 = distinct !DILocation(line: 657, column: 31, scope: !264)
!1166 = !DILocation(line: 663, column: 7, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !264, file: !92, line: 663, column: 7)
!1168 = !DILocation(line: 664, column: 7, scope: !1167)
!1169 = !DILocation(line: 664, column: 10, scope: !1167)
!1170 = !DILocation(line: 663, column: 7, scope: !264)
!1171 = !DILocation(line: 669, column: 7, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1167, file: !92, line: 665, column: 5)
!1173 = !DILocation(line: 671, column: 5, scope: !1172)
!1174 = !DILocation(line: 676, column: 7, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1167, file: !92, line: 673, column: 5)
!1176 = !DILocation(line: 679, column: 3, scope: !264)
!1177 = !DILocation(line: 683, column: 3, scope: !264)
!1178 = !DILocation(line: 686, column: 3, scope: !264)
!1179 = !DILocation(line: 688, column: 3, scope: !264)
!1180 = !DILocation(line: 691, column: 3, scope: !264)
!1181 = !DILocation(line: 695, column: 3, scope: !264)
!1182 = !DILocation(line: 696, column: 1, scope: !264)
!1183 = !DISubprogram(name: "setlocale", scope: !1184, file: !1184, line: 122, type: !1185, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1184 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!88, !86, !149}
!1187 = !DISubprogram(name: "strncmp", scope: !1188, file: !1188, line: 159, type: !1189, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1188 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1189 = !DISubroutineType(types: !1190)
!1190 = !{!86, !149, !149, !146}
!1191 = !DISubprogram(name: "exit", scope: !1192, file: !1192, line: 624, type: !987, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1192 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1193 = !DISubprogram(name: "getenv", scope: !1192, file: !1192, line: 641, type: !1194, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{!88, !149}
!1196 = !DISubprogram(name: "strcmp", scope: !1188, file: !1188, line: 156, type: !1197, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{!86, !149, !149}
!1199 = !DISubprogram(name: "strspn", scope: !1188, file: !1188, line: 297, type: !1200, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{!148, !149, !149}
!1202 = !DISubprogram(name: "strchr", scope: !1188, file: !1188, line: 246, type: !1203, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!88, !149, !86}
!1205 = !DISubprogram(name: "__ctype_b_loc", scope: !121, file: !121, line: 79, type: !1206, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{!1208}
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !145)
!1211 = !DISubprogram(name: "strcspn", scope: !1188, file: !1188, line: 293, type: !1200, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1212 = !DISubprogram(name: "fwrite_unlocked", scope: !518, file: !518, line: 704, type: !1213, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{!146, !1215, !146, !146, !1061}
!1215 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1216)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1218 = distinct !DIAssignID()
!1219 = distinct !DIAssignID()
!1220 = !DILocation(line: 0, scope: !83)
!1221 = distinct !DIAssignID()
!1222 = !DILocation(line: 0, scope: !511)
!1223 = !DILocation(line: 555, column: 3, scope: !83)
!1224 = !DILocation(line: 581, column: 21, scope: !83)
!1225 = !DILocation(line: 581, column: 3, scope: !83)
!1226 = !DILocation(line: 582, column: 3, scope: !83)
!1227 = !DILocation(line: 583, column: 3, scope: !83)
!1228 = !DILocation(line: 584, column: 3, scope: !83)
!1229 = !DILocation(line: 590, column: 3, scope: !83)
!1230 = !DILocation(line: 595, column: 3, scope: !83)
!1231 = !DILocation(line: 595, column: 15, scope: !83)
!1232 = distinct !{!1232, !1230, !1233, !1118}
!1233 = !DILocation(line: 652, column: 5, scope: !83)
!1234 = !DILocation(line: 603, column: 11, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1236, file: !2, line: 599, column: 9)
!1236 = distinct !DILexicalBlock(scope: !83, file: !2, line: 597, column: 5)
!1237 = !DILocation(line: 608, column: 11, scope: !1235)
!1238 = !DILocation(line: 612, column: 11, scope: !1235)
!1239 = !DILocation(line: 616, column: 11, scope: !1235)
!1240 = !DILocation(line: 621, column: 11, scope: !1235)
!1241 = !DILocation(line: 629, column: 11, scope: !1235)
!1242 = !DILocation(line: 635, column: 11, scope: !1235)
!1243 = !DILocation(line: 639, column: 11, scope: !1235)
!1244 = !DILocation(line: 643, column: 11, scope: !1235)
!1245 = !DILocation(line: 645, column: 9, scope: !1235)
!1246 = !DILocation(line: 647, column: 9, scope: !1235)
!1247 = !DILocation(line: 650, column: 11, scope: !1235)
!1248 = !DILocation(line: 656, column: 7, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !83, file: !2, line: 656, column: 7)
!1250 = !DILocation(line: 656, column: 41, scope: !1249)
!1251 = !DILocation(line: 656, column: 7, scope: !83)
!1252 = !DILocation(line: 657, column: 5, scope: !1249)
!1253 = !DILocalVariable(name: "st", arg: 1, scope: !1254, file: !136, line: 81, type: !1257)
!1254 = distinct !DISubprogram(name: "io_blksize", scope: !136, file: !136, line: 81, type: !1255, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1259)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{!501, !1257}
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !457)
!1259 = !{!1253, !1260, !1261, !1264}
!1260 = !DILocalVariable(name: "blocksize", scope: !1254, file: !136, line: 84, type: !501)
!1261 = !DILocalVariable(name: "leading_zeros", scope: !1262, file: !136, line: 98, type: !86)
!1262 = distinct !DILexicalBlock(scope: !1263, file: !136, line: 97, column: 5)
!1263 = distinct !DILexicalBlock(scope: !1254, file: !136, line: 96, column: 7)
!1264 = !DILocalVariable(name: "power", scope: !1265, file: !136, line: 101, type: !1267)
!1265 = distinct !DILexicalBlock(scope: !1266, file: !136, line: 100, column: 9)
!1266 = distinct !DILexicalBlock(scope: !1262, file: !136, line: 99, column: 11)
!1267 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!1268 = !DILocation(line: 0, scope: !1254, inlinedAt: !1269)
!1269 = distinct !DILocation(line: 660, column: 19, scope: !83)
!1270 = !DILocation(line: 84, column: 21, scope: !1254, inlinedAt: !1269)
!1271 = !{!1272, !1072, i64 56}
!1272 = !{!"stat", !1273, i64 0, !1273, i64 8, !1072, i64 16, !1072, i64 20, !1072, i64 24, !1072, i64 28, !1273, i64 32, !1273, i64 40, !1273, i64 48, !1072, i64 56, !1072, i64 60, !1273, i64 64, !1274, i64 72, !1274, i64 88, !1274, i64 104, !999, i64 120}
!1273 = !{!"long", !999, i64 0}
!1274 = !{!"timespec", !1273, i64 0, !1273, i64 8}
!1275 = !DILocation(line: 84, column: 58, scope: !1254, inlinedAt: !1269)
!1276 = !DILocation(line: 88, column: 52, scope: !1254, inlinedAt: !1269)
!1277 = !DILocation(line: 88, column: 33, scope: !1254, inlinedAt: !1269)
!1278 = !DILocation(line: 88, column: 13, scope: !1254, inlinedAt: !1269)
!1279 = !DILocation(line: 96, column: 7, scope: !1263, inlinedAt: !1269)
!1280 = !{!1272, !1072, i64 16}
!1281 = !{i64 0, i64 33}
!1282 = !DILocation(line: 96, column: 29, scope: !1263, inlinedAt: !1269)
!1283 = !{i64 0, i64 65}
!1284 = !DILocation(line: 110, column: 10, scope: !1254, inlinedAt: !1269)
!1285 = !DILocation(line: 666, column: 20, scope: !83)
!1286 = !DILocation(line: 668, column: 17, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !83, file: !2, line: 668, column: 7)
!1288 = !DILocation(line: 676, column: 10, scope: !83)
!1289 = !DILocation(line: 677, column: 16, scope: !83)
!1290 = !DILocation(line: 679, column: 21, scope: !83)
!1291 = !DILocation(line: 681, column: 3, scope: !83)
!1292 = !DILocation(line: 663, column: 7, scope: !83)
!1293 = !DILocation(line: 683, column: 18, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !511, file: !2, line: 683, column: 11)
!1295 = !DILocation(line: 683, column: 11, scope: !511)
!1296 = !DILocation(line: 686, column: 35, scope: !511)
!1297 = !DILocation(line: 684, column: 18, scope: !1294)
!1298 = !DILocation(line: 684, column: 16, scope: !1294)
!1299 = !DILocation(line: 684, column: 9, scope: !1294)
!1300 = !DILocation(line: 0, scope: !1083, inlinedAt: !1301)
!1301 = distinct !DILocation(line: 686, column: 28, scope: !511)
!1302 = !DILocation(line: 1361, column: 11, scope: !1083, inlinedAt: !1301)
!1303 = !DILocation(line: 1361, column: 10, scope: !1083, inlinedAt: !1301)
!1304 = !DILocation(line: 687, column: 11, scope: !511)
!1305 = !DILocation(line: 690, column: 22, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1307, file: !2, line: 688, column: 9)
!1307 = distinct !DILexicalBlock(scope: !511, file: !2, line: 687, column: 11)
!1308 = !DILocation(line: 696, column: 24, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1307, file: !2, line: 695, column: 9)
!1310 = !DILocation(line: 696, column: 22, scope: !1309)
!1311 = !DILocation(line: 697, column: 26, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1309, file: !2, line: 697, column: 15)
!1313 = !DILocation(line: 697, column: 15, scope: !1309)
!1314 = !DILocation(line: 699, column: 15, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1312, file: !2, line: 698, column: 13)
!1316 = !DILocation(line: 701, column: 15, scope: !1315)
!1317 = !DILocation(line: 706, column: 18, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !511, file: !2, line: 706, column: 11)
!1319 = !DILocation(line: 705, column: 7, scope: !511)
!1320 = !DILocation(line: 706, column: 11, scope: !1318)
!1321 = !DILocation(line: 706, column: 42, scope: !1318)
!1322 = !DILocation(line: 706, column: 11, scope: !511)
!1323 = !DILocation(line: 708, column: 11, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1318, file: !2, line: 707, column: 9)
!1325 = !DILocation(line: 710, column: 11, scope: !1324)
!1326 = !DILocation(line: 0, scope: !1254, inlinedAt: !1327)
!1327 = distinct !DILocation(line: 714, column: 22, scope: !511)
!1328 = !DILocation(line: 84, column: 21, scope: !1254, inlinedAt: !1327)
!1329 = !DILocation(line: 84, column: 58, scope: !1254, inlinedAt: !1327)
!1330 = !DILocation(line: 88, column: 52, scope: !1254, inlinedAt: !1327)
!1331 = !DILocation(line: 88, column: 33, scope: !1254, inlinedAt: !1327)
!1332 = !DILocation(line: 88, column: 13, scope: !1254, inlinedAt: !1327)
!1333 = !DILocation(line: 96, column: 7, scope: !1263, inlinedAt: !1327)
!1334 = !DILocation(line: 96, column: 29, scope: !1263, inlinedAt: !1327)
!1335 = !DILocation(line: 110, column: 10, scope: !1254, inlinedAt: !1327)
!1336 = !DILocation(line: 716, column: 17, scope: !511)
!1337 = !DILocation(line: 716, column: 7, scope: !511)
!1338 = !DILocation(line: 722, column: 43, scope: !516)
!1339 = !DILocation(line: 725, column: 14, scope: !516)
!1340 = !{!1272, !1273, i64 0}
!1341 = !{!1272, !1273, i64 8}
!1342 = !DILocation(line: 722, column: 11, scope: !511)
!1343 = !DILocation(line: 727, column: 33, scope: !515)
!1344 = !DILocation(line: 727, column: 26, scope: !515)
!1345 = !DILocation(line: 0, scope: !515)
!1346 = !DILocation(line: 728, column: 17, scope: !521)
!1347 = !DILocation(line: 728, column: 15, scope: !515)
!1348 = !DILocation(line: 730, column: 29, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !520, file: !2, line: 730, column: 19)
!1350 = !DILocation(line: 730, column: 19, scope: !520)
!1351 = !DILocation(line: 731, column: 29, scope: !1349)
!1352 = !DILocation(line: 731, column: 17, scope: !1349)
!1353 = !DILocation(line: 732, column: 44, scope: !520)
!1354 = !DILocation(line: 732, column: 29, scope: !520)
!1355 = !DILocation(line: 0, scope: !520)
!1356 = !DILocation(line: 734, column: 28, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !520, file: !2, line: 734, column: 19)
!1358 = !DILocation(line: 734, column: 26, scope: !1357)
!1359 = !DILocation(line: 734, column: 19, scope: !520)
!1360 = !DILocation(line: 736, column: 19, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1357, file: !2, line: 735, column: 17)
!1362 = !DILocation(line: 751, column: 21, scope: !525)
!1363 = !DILocation(line: 755, column: 23, scope: !524)
!1364 = !DILocalVariable(name: "copy_max", scope: !1365, file: !2, line: 523, type: !1371)
!1365 = distinct !DISubprogram(name: "copy_cat", scope: !2, file: !2, line: 518, type: !1366, scopeLine: 519, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1368)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{!86}
!1368 = !{!1364, !1369}
!1369 = !DILocalVariable(name: "some_copied", scope: !1370, file: !2, line: 531, type: !274)
!1370 = distinct !DILexicalBlock(scope: !1365, file: !2, line: 531, column: 3)
!1371 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !518, line: 77, baseType: !1372)
!1372 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !314, line: 194, baseType: !315)
!1373 = !DILocation(line: 0, scope: !1365, inlinedAt: !1374)
!1374 = distinct !DILocation(line: 755, column: 56, scope: !524)
!1375 = !DILocation(line: 0, scope: !1370, inlinedAt: !1374)
!1376 = !DILocation(line: 532, column: 30, scope: !1377, inlinedAt: !1374)
!1377 = distinct !DILexicalBlock(scope: !1370, file: !2, line: 531, column: 3)
!1378 = !DILocation(line: 532, column: 13, scope: !1377, inlinedAt: !1374)
!1379 = !DILocation(line: 532, column: 5, scope: !1377, inlinedAt: !1374)
!1380 = !DILocation(line: 531, column: 3, scope: !1370, inlinedAt: !1374)
!1381 = distinct !{!1381, !1380, !1382, !1383}
!1382 = !DILocation(line: 545, column: 7, scope: !1370, inlinedAt: !1374)
!1383 = !{!"llvm.loop.peeled.count", i32 1}
!1384 = !DILocation(line: 539, column: 13, scope: !1385, inlinedAt: !1374)
!1385 = distinct !DILexicalBlock(scope: !1386, file: !2, line: 539, column: 13)
!1386 = distinct !DILexicalBlock(scope: !1377, file: !2, line: 534, column: 7)
!1387 = !DILocation(line: 539, column: 29, scope: !1385, inlinedAt: !1374)
!1388 = !DILocation(line: 543, column: 9, scope: !1386, inlinedAt: !1374)
!1389 = !DILocation(line: 544, column: 9, scope: !1386, inlinedAt: !1374)
!1390 = !DILocation(line: 0, scope: !524)
!1391 = !DILocation(line: 763, column: 24, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1393, file: !2, line: 762, column: 13)
!1393 = distinct !DILexicalBlock(scope: !524, file: !2, line: 756, column: 15)
!1394 = !DILocation(line: 764, column: 23, scope: !1392)
!1395 = !DILocalVariable(name: "buf", arg: 1, scope: !1396, file: !2, line: 170, type: !88)
!1396 = distinct !DISubprogram(name: "simple_cat", scope: !2, file: !2, line: 170, type: !1397, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1399)
!1397 = !DISubroutineType(types: !1398)
!1398 = !{!274, !88, !501}
!1399 = !{!1395, !1400, !1401}
!1400 = !DILocalVariable(name: "bufsize", arg: 2, scope: !1396, file: !2, line: 170, type: !501)
!1401 = !DILocalVariable(name: "n_read", scope: !1402, file: !2, line: 178, type: !1371)
!1402 = distinct !DILexicalBlock(scope: !1396, file: !2, line: 175, column: 5)
!1403 = !DILocation(line: 0, scope: !1396, inlinedAt: !1404)
!1404 = distinct !DILocation(line: 765, column: 21, scope: !1392)
!1405 = !DILocation(line: 174, column: 3, scope: !1396, inlinedAt: !1404)
!1406 = !DILocation(line: 178, column: 30, scope: !1402, inlinedAt: !1404)
!1407 = !DILocation(line: 178, column: 24, scope: !1402, inlinedAt: !1404)
!1408 = !DILocation(line: 0, scope: !1402, inlinedAt: !1404)
!1409 = !DILocation(line: 179, column: 18, scope: !1410, inlinedAt: !1404)
!1410 = distinct !DILexicalBlock(scope: !1402, file: !2, line: 179, column: 11)
!1411 = !DILocation(line: 179, column: 11, scope: !1402, inlinedAt: !1404)
!1412 = !DILocation(line: 181, column: 11, scope: !1413, inlinedAt: !1404)
!1413 = distinct !DILexicalBlock(scope: !1410, file: !2, line: 180, column: 9)
!1414 = !DILocation(line: 182, column: 11, scope: !1413, inlinedAt: !1404)
!1415 = !DILocation(line: 187, column: 18, scope: !1416, inlinedAt: !1404)
!1416 = distinct !DILexicalBlock(scope: !1402, file: !2, line: 187, column: 11)
!1417 = !DILocation(line: 187, column: 11, scope: !1402, inlinedAt: !1404)
!1418 = !DILocation(line: 192, column: 11, scope: !1419, inlinedAt: !1404)
!1419 = distinct !DILexicalBlock(scope: !1402, file: !2, line: 192, column: 11)
!1420 = !DILocation(line: 192, column: 51, scope: !1419, inlinedAt: !1404)
!1421 = !DILocation(line: 192, column: 11, scope: !1402, inlinedAt: !1404)
!1422 = !DILocation(line: 948, column: 21, scope: !1423, inlinedAt: !1426)
!1423 = distinct !DISubprogram(name: "write_error", scope: !92, file: !92, line: 946, type: !616, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1424)
!1424 = !{!1425}
!1425 = !DILocalVariable(name: "saved_errno", scope: !1423, file: !92, line: 948, type: !86)
!1426 = distinct !DILocation(line: 193, column: 9, scope: !1419, inlinedAt: !1404)
!1427 = !DILocation(line: 0, scope: !1423, inlinedAt: !1426)
!1428 = !DILocation(line: 949, column: 3, scope: !1423, inlinedAt: !1426)
!1429 = !DILocation(line: 950, column: 11, scope: !1423, inlinedAt: !1426)
!1430 = !DILocation(line: 950, column: 3, scope: !1423, inlinedAt: !1426)
!1431 = !DILocation(line: 951, column: 3, scope: !1423, inlinedAt: !1426)
!1432 = !DILocation(line: 952, column: 3, scope: !1423, inlinedAt: !1426)
!1433 = !DILocation(line: 771, column: 50, scope: !527)
!1434 = !DILocation(line: 771, column: 19, scope: !527)
!1435 = !DILocation(line: 0, scope: !527)
!1436 = !DILocation(line: 795, column: 15, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !527, file: !2, line: 795, column: 15)
!1438 = !DILocation(line: 797, column: 18, scope: !1437)
!1439 = !DILocation(line: 799, column: 26, scope: !527)
!1440 = !DILocalVariable(name: "n_to_read", scope: !1441, file: !2, line: 291, type: !86)
!1441 = distinct !DILexicalBlock(scope: !1442, file: !2, line: 288, column: 13)
!1442 = distinct !DILexicalBlock(scope: !1443, file: !2, line: 287, column: 15)
!1443 = distinct !DILexicalBlock(scope: !1444, file: !2, line: 262, column: 9)
!1444 = distinct !DILexicalBlock(scope: !1445, file: !2, line: 260, column: 5)
!1445 = distinct !DISubprogram(name: "cat", scope: !2, file: !2, line: 226, type: !1446, scopeLine: 229, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1448)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{!274, !88, !501, !88, !501, !274, !274, !274, !274, !274, !274}
!1448 = !{!1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1468, !1469, !1440, !1470}
!1449 = !DILocalVariable(name: "inbuf", arg: 1, scope: !1445, file: !2, line: 226, type: !88)
!1450 = !DILocalVariable(name: "insize", arg: 2, scope: !1445, file: !2, line: 226, type: !501)
!1451 = !DILocalVariable(name: "outbuf", arg: 3, scope: !1445, file: !2, line: 226, type: !88)
!1452 = !DILocalVariable(name: "outsize", arg: 4, scope: !1445, file: !2, line: 226, type: !501)
!1453 = !DILocalVariable(name: "show_nonprinting", arg: 5, scope: !1445, file: !2, line: 227, type: !274)
!1454 = !DILocalVariable(name: "show_tabs", arg: 6, scope: !1445, file: !2, line: 227, type: !274)
!1455 = !DILocalVariable(name: "number", arg: 7, scope: !1445, file: !2, line: 227, type: !274)
!1456 = !DILocalVariable(name: "number_nonblank", arg: 8, scope: !1445, file: !2, line: 227, type: !274)
!1457 = !DILocalVariable(name: "show_ends", arg: 9, scope: !1445, file: !2, line: 228, type: !274)
!1458 = !DILocalVariable(name: "squeeze_blank", arg: 10, scope: !1445, file: !2, line: 228, type: !274)
!1459 = !DILocalVariable(name: "ch", scope: !1445, file: !2, line: 231, type: !151)
!1460 = !DILocalVariable(name: "newlines", scope: !1445, file: !2, line: 238, type: !86)
!1461 = !DILocalVariable(name: "use_fionread", scope: !1445, file: !2, line: 243, type: !274)
!1462 = !DILocalVariable(name: "eob", scope: !1445, file: !2, line: 251, type: !88)
!1463 = !DILocalVariable(name: "bpin", scope: !1445, file: !2, line: 254, type: !88)
!1464 = !DILocalVariable(name: "bpout", scope: !1445, file: !2, line: 257, type: !88)
!1465 = !DILocalVariable(name: "wp", scope: !1466, file: !2, line: 267, type: !88)
!1466 = distinct !DILexicalBlock(scope: !1467, file: !2, line: 266, column: 13)
!1467 = distinct !DILexicalBlock(scope: !1443, file: !2, line: 265, column: 15)
!1468 = !DILocalVariable(name: "remaining_bytes", scope: !1466, file: !2, line: 268, type: !501)
!1469 = !DILocalVariable(name: "input_pending", scope: !1441, file: !2, line: 289, type: !274)
!1470 = !DILocalVariable(name: "n_read", scope: !1441, file: !2, line: 327, type: !1371)
!1471 = !DILocation(line: 0, scope: !1441, inlinedAt: !1472)
!1472 = distinct !DILocation(line: 801, column: 17, scope: !527)
!1473 = !DILocation(line: 0, scope: !1445, inlinedAt: !1472)
!1474 = !DILocation(line: 238, column: 18, scope: !1445, inlinedAt: !1472)
!1475 = !DILocation(line: 254, column: 20, scope: !1445, inlinedAt: !1472)
!1476 = !DILocation(line: 259, column: 3, scope: !1445, inlinedAt: !1472)
!1477 = !DILocation(line: 257, column: 9, scope: !1445, inlinedAt: !1472)
!1478 = !DILocation(line: 238, column: 7, scope: !1445, inlinedAt: !1472)
!1479 = !DILocation(line: 251, column: 9, scope: !1445, inlinedAt: !1472)
!1480 = !DILocation(line: 265, column: 32, scope: !1467, inlinedAt: !1472)
!1481 = !DILocation(line: 265, column: 15, scope: !1443, inlinedAt: !1472)
!1482 = !DILocation(line: 269, column: 15, scope: !1466, inlinedAt: !1472)
!1483 = !DILocation(line: 0, scope: !1466, inlinedAt: !1472)
!1484 = !DILocation(line: 271, column: 23, scope: !1485, inlinedAt: !1472)
!1485 = distinct !DILexicalBlock(scope: !1486, file: !2, line: 271, column: 23)
!1486 = distinct !DILexicalBlock(scope: !1466, file: !2, line: 270, column: 17)
!1487 = !DILocation(line: 271, column: 63, scope: !1485, inlinedAt: !1472)
!1488 = !DILocation(line: 271, column: 23, scope: !1486, inlinedAt: !1472)
!1489 = !DILocation(line: 948, column: 21, scope: !1423, inlinedAt: !1490)
!1490 = distinct !DILocation(line: 272, column: 21, scope: !1485, inlinedAt: !1472)
!1491 = !DILocation(line: 0, scope: !1423, inlinedAt: !1490)
!1492 = !DILocation(line: 949, column: 3, scope: !1423, inlinedAt: !1490)
!1493 = !DILocation(line: 950, column: 11, scope: !1423, inlinedAt: !1490)
!1494 = !DILocation(line: 950, column: 3, scope: !1423, inlinedAt: !1490)
!1495 = !DILocation(line: 951, column: 3, scope: !1423, inlinedAt: !1490)
!1496 = !DILocation(line: 952, column: 3, scope: !1423, inlinedAt: !1490)
!1497 = !DILocation(line: 273, column: 22, scope: !1486, inlinedAt: !1472)
!1498 = !DILocation(line: 274, column: 43, scope: !1486, inlinedAt: !1472)
!1499 = !DILocation(line: 276, column: 30, scope: !1466, inlinedAt: !1472)
!1500 = !DILocation(line: 275, column: 17, scope: !1486, inlinedAt: !1472)
!1501 = distinct !{!1501, !1482, !1502, !1118}
!1502 = !DILocation(line: 276, column: 48, scope: !1466, inlinedAt: !1472)
!1503 = !DILocalVariable(name: "__dest", arg: 1, scope: !1504, file: !1505, line: 34, type: !144)
!1504 = distinct !DISubprogram(name: "memmove", scope: !1505, file: !1505, line: 34, type: !1506, scopeLine: 35, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1508)
!1505 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1506 = !DISubroutineType(types: !1507)
!1507 = !{!144, !144, !1216, !146}
!1508 = !{!1503, !1509, !1510}
!1509 = !DILocalVariable(name: "__src", arg: 2, scope: !1504, file: !1505, line: 34, type: !1216)
!1510 = !DILocalVariable(name: "__len", arg: 3, scope: !1504, file: !1505, line: 34, type: !146)
!1511 = !DILocation(line: 0, scope: !1504, inlinedAt: !1512)
!1512 = distinct !DILocation(line: 281, column: 15, scope: !1466, inlinedAt: !1472)
!1513 = !DILocation(line: 36, column: 10, scope: !1504, inlinedAt: !1512)
!1514 = !DILocation(line: 282, column: 30, scope: !1466, inlinedAt: !1472)
!1515 = !DILocation(line: 283, column: 13, scope: !1466, inlinedAt: !1472)
!1516 = !DILocation(line: 287, column: 20, scope: !1442, inlinedAt: !1472)
!1517 = !DILocation(line: 287, column: 15, scope: !1443, inlinedAt: !1472)
!1518 = !DILocation(line: 291, column: 15, scope: !1441, inlinedAt: !1472)
!1519 = !DILocation(line: 291, column: 19, scope: !1441, inlinedAt: !1472)
!1520 = distinct !DIAssignID()
!1521 = !DILocation(line: 298, column: 19, scope: !1522, inlinedAt: !1472)
!1522 = distinct !DILexicalBlock(scope: !1441, file: !2, line: 297, column: 19)
!1523 = !DILocation(line: 298, column: 29, scope: !1522, inlinedAt: !1472)
!1524 = !DILocation(line: 298, column: 22, scope: !1522, inlinedAt: !1472)
!1525 = !DILocation(line: 298, column: 63, scope: !1522, inlinedAt: !1472)
!1526 = !DILocation(line: 297, column: 19, scope: !1441, inlinedAt: !1472)
!1527 = !DILocation(line: 306, column: 23, scope: !1528, inlinedAt: !1472)
!1528 = distinct !DILexicalBlock(scope: !1529, file: !2, line: 306, column: 23)
!1529 = distinct !DILexicalBlock(scope: !1522, file: !2, line: 299, column: 17)
!1530 = !DILocation(line: 306, column: 43, scope: !1528, inlinedAt: !1472)
!1531 = !DILocation(line: 312, column: 23, scope: !1532, inlinedAt: !1472)
!1532 = distinct !DILexicalBlock(scope: !1528, file: !2, line: 311, column: 21)
!1533 = !DILocation(line: 315, column: 23, scope: !1532, inlinedAt: !1472)
!1534 = !DILocation(line: 318, column: 19, scope: !1535, inlinedAt: !1472)
!1535 = distinct !DILexicalBlock(scope: !1441, file: !2, line: 318, column: 19)
!1536 = !DILocation(line: 318, column: 29, scope: !1535, inlinedAt: !1472)
!1537 = !DILocation(line: 322, column: 19, scope: !1441, inlinedAt: !1472)
!1538 = !DILocalVariable(name: "outbuf", arg: 1, scope: !1539, file: !2, line: 202, type: !88)
!1539 = distinct !DISubprogram(name: "write_pending", scope: !2, file: !2, line: 202, type: !1540, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1542)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{null, !88, !87}
!1542 = !{!1538, !1543, !1544}
!1543 = !DILocalVariable(name: "bpout", arg: 2, scope: !1539, file: !2, line: 202, type: !87)
!1544 = !DILocalVariable(name: "n_write", scope: !1539, file: !2, line: 204, type: !501)
!1545 = !DILocation(line: 0, scope: !1539, inlinedAt: !1546)
!1546 = distinct !DILocation(line: 323, column: 17, scope: !1547, inlinedAt: !1472)
!1547 = distinct !DILexicalBlock(scope: !1441, file: !2, line: 322, column: 19)
!1548 = !DILocation(line: 204, column: 26, scope: !1539, inlinedAt: !1546)
!1549 = !DILocation(line: 205, column: 9, scope: !1550, inlinedAt: !1546)
!1550 = distinct !DILexicalBlock(scope: !1539, file: !2, line: 205, column: 7)
!1551 = !DILocation(line: 205, column: 7, scope: !1539, inlinedAt: !1546)
!1552 = !DILocation(line: 207, column: 11, scope: !1553, inlinedAt: !1546)
!1553 = distinct !DILexicalBlock(scope: !1554, file: !2, line: 207, column: 11)
!1554 = distinct !DILexicalBlock(scope: !1550, file: !2, line: 206, column: 5)
!1555 = !DILocation(line: 207, column: 55, scope: !1553, inlinedAt: !1546)
!1556 = !DILocation(line: 207, column: 11, scope: !1554, inlinedAt: !1546)
!1557 = !DILocation(line: 948, column: 21, scope: !1423, inlinedAt: !1558)
!1558 = distinct !DILocation(line: 208, column: 9, scope: !1553, inlinedAt: !1546)
!1559 = !DILocation(line: 0, scope: !1423, inlinedAt: !1558)
!1560 = !DILocation(line: 949, column: 3, scope: !1423, inlinedAt: !1558)
!1561 = !DILocation(line: 950, column: 11, scope: !1423, inlinedAt: !1558)
!1562 = !DILocation(line: 950, column: 3, scope: !1423, inlinedAt: !1558)
!1563 = !DILocation(line: 951, column: 3, scope: !1423, inlinedAt: !1558)
!1564 = !DILocation(line: 952, column: 3, scope: !1423, inlinedAt: !1558)
!1565 = !DILocation(line: 327, column: 38, scope: !1441, inlinedAt: !1472)
!1566 = !DILocation(line: 327, column: 32, scope: !1441, inlinedAt: !1472)
!1567 = !DILocation(line: 328, column: 26, scope: !1568, inlinedAt: !1472)
!1568 = distinct !DILexicalBlock(scope: !1441, file: !2, line: 328, column: 19)
!1569 = !DILocation(line: 328, column: 19, scope: !1441, inlinedAt: !1472)
!1570 = !DILocation(line: 330, column: 19, scope: !1571, inlinedAt: !1472)
!1571 = distinct !DILexicalBlock(scope: !1568, file: !2, line: 329, column: 17)
!1572 = !DILocation(line: 0, scope: !1539, inlinedAt: !1573)
!1573 = distinct !DILocation(line: 331, column: 19, scope: !1571, inlinedAt: !1472)
!1574 = !DILocation(line: 204, column: 26, scope: !1539, inlinedAt: !1573)
!1575 = !DILocation(line: 205, column: 9, scope: !1550, inlinedAt: !1573)
!1576 = !DILocation(line: 205, column: 7, scope: !1539, inlinedAt: !1573)
!1577 = !DILocation(line: 207, column: 11, scope: !1553, inlinedAt: !1573)
!1578 = !DILocation(line: 207, column: 55, scope: !1553, inlinedAt: !1573)
!1579 = !DILocation(line: 207, column: 11, scope: !1554, inlinedAt: !1573)
!1580 = !DILocation(line: 948, column: 21, scope: !1423, inlinedAt: !1581)
!1581 = distinct !DILocation(line: 208, column: 9, scope: !1553, inlinedAt: !1573)
!1582 = !DILocation(line: 0, scope: !1423, inlinedAt: !1581)
!1583 = !DILocation(line: 949, column: 3, scope: !1423, inlinedAt: !1581)
!1584 = !DILocation(line: 950, column: 11, scope: !1423, inlinedAt: !1581)
!1585 = !DILocation(line: 950, column: 3, scope: !1423, inlinedAt: !1581)
!1586 = !DILocation(line: 951, column: 3, scope: !1423, inlinedAt: !1581)
!1587 = !DILocation(line: 952, column: 3, scope: !1423, inlinedAt: !1581)
!1588 = !DILocation(line: 335, column: 26, scope: !1589, inlinedAt: !1472)
!1589 = distinct !DILexicalBlock(scope: !1441, file: !2, line: 335, column: 19)
!1590 = !DILocation(line: 335, column: 19, scope: !1441, inlinedAt: !1472)
!1591 = !DILocation(line: 0, scope: !1539, inlinedAt: !1592)
!1592 = distinct !DILocation(line: 337, column: 19, scope: !1593, inlinedAt: !1472)
!1593 = distinct !DILexicalBlock(scope: !1589, file: !2, line: 336, column: 17)
!1594 = !DILocation(line: 204, column: 26, scope: !1539, inlinedAt: !1592)
!1595 = !DILocation(line: 205, column: 9, scope: !1550, inlinedAt: !1592)
!1596 = !DILocation(line: 205, column: 7, scope: !1539, inlinedAt: !1592)
!1597 = !DILocation(line: 207, column: 11, scope: !1553, inlinedAt: !1592)
!1598 = !DILocation(line: 207, column: 55, scope: !1553, inlinedAt: !1592)
!1599 = !DILocation(line: 207, column: 11, scope: !1554, inlinedAt: !1592)
!1600 = !DILocation(line: 948, column: 21, scope: !1423, inlinedAt: !1601)
!1601 = distinct !DILocation(line: 208, column: 9, scope: !1553, inlinedAt: !1592)
!1602 = !DILocation(line: 0, scope: !1423, inlinedAt: !1601)
!1603 = !DILocation(line: 949, column: 3, scope: !1423, inlinedAt: !1601)
!1604 = !DILocation(line: 950, column: 11, scope: !1423, inlinedAt: !1601)
!1605 = !DILocation(line: 950, column: 3, scope: !1423, inlinedAt: !1601)
!1606 = !DILocation(line: 951, column: 3, scope: !1423, inlinedAt: !1601)
!1607 = !DILocation(line: 952, column: 3, scope: !1423, inlinedAt: !1601)
!1608 = !DILocation(line: 346, column: 26, scope: !1441, inlinedAt: !1472)
!1609 = !DILocation(line: 347, column: 20, scope: !1441, inlinedAt: !1472)
!1610 = !DILocation(line: 348, column: 13, scope: !1442, inlinedAt: !1472)
!1611 = !DILocation(line: 356, column: 19, scope: !1612, inlinedAt: !1472)
!1612 = distinct !DILexicalBlock(scope: !1613, file: !2, line: 356, column: 19)
!1613 = distinct !DILexicalBlock(scope: !1442, file: !2, line: 350, column: 13)
!1614 = !DILocation(line: 356, column: 30, scope: !1612, inlinedAt: !1472)
!1615 = !DILocation(line: 356, column: 19, scope: !1613, inlinedAt: !1472)
!1616 = !DILocation(line: 358, column: 32, scope: !1617, inlinedAt: !1472)
!1617 = distinct !DILexicalBlock(scope: !1618, file: !2, line: 358, column: 23)
!1618 = distinct !DILexicalBlock(scope: !1612, file: !2, line: 357, column: 17)
!1619 = !DILocation(line: 358, column: 23, scope: !1618, inlinedAt: !1472)
!1620 = !DILocation(line: 377, column: 30, scope: !1621, inlinedAt: !1472)
!1621 = distinct !DILexicalBlock(scope: !1618, file: !2, line: 377, column: 23)
!1622 = !DILocalVariable(name: "endp", scope: !1623, file: !2, line: 148, type: !88)
!1623 = distinct !DISubprogram(name: "next_line_num", scope: !2, file: !2, line: 146, type: !616, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1624)
!1624 = !{!1622}
!1625 = !DILocation(line: 0, scope: !1623, inlinedAt: !1626)
!1626 = distinct !DILocation(line: 379, column: 23, scope: !1627, inlinedAt: !1472)
!1627 = distinct !DILexicalBlock(scope: !1621, file: !2, line: 378, column: 21)
!1628 = !DILocation(line: 149, column: 3, scope: !1623, inlinedAt: !1626)
!1629 = !DILocation(line: 151, column: 18, scope: !1630, inlinedAt: !1626)
!1630 = distinct !DILexicalBlock(scope: !1631, file: !2, line: 151, column: 11)
!1631 = distinct !DILexicalBlock(scope: !1623, file: !2, line: 150, column: 5)
!1632 = !DILocation(line: 151, column: 21, scope: !1630, inlinedAt: !1626)
!1633 = !DILocation(line: 151, column: 11, scope: !1631, inlinedAt: !1626)
!1634 = !DILocation(line: 153, column: 12, scope: !1631, inlinedAt: !1626)
!1635 = !DILocation(line: 153, column: 15, scope: !1631, inlinedAt: !1626)
!1636 = !DILocation(line: 155, column: 15, scope: !1623, inlinedAt: !1626)
!1637 = !DILocation(line: 154, column: 5, scope: !1631, inlinedAt: !1626)
!1638 = distinct !{!1638, !1628, !1639, !1118}
!1639 = !DILocation(line: 155, column: 32, scope: !1623, inlinedAt: !1626)
!1640 = !DILocation(line: 157, column: 22, scope: !1641, inlinedAt: !1626)
!1641 = distinct !DILexicalBlock(scope: !1623, file: !2, line: 157, column: 7)
!1642 = !DILocation(line: 157, column: 7, scope: !1623, inlinedAt: !1626)
!1643 = !DILocation(line: 158, column: 6, scope: !1641, inlinedAt: !1626)
!1644 = !DILocation(line: 158, column: 23, scope: !1641, inlinedAt: !1626)
!1645 = !DILocation(line: 158, column: 5, scope: !1641, inlinedAt: !1626)
!1646 = !DILocation(line: 160, column: 15, scope: !1641, inlinedAt: !1626)
!1647 = !DILocation(line: 161, column: 7, scope: !1648, inlinedAt: !1626)
!1648 = distinct !DILexicalBlock(scope: !1623, file: !2, line: 161, column: 7)
!1649 = !DILocation(line: 161, column: 24, scope: !1648, inlinedAt: !1626)
!1650 = !DILocation(line: 161, column: 22, scope: !1648, inlinedAt: !1626)
!1651 = !DILocation(line: 161, column: 7, scope: !1623, inlinedAt: !1626)
!1652 = !DILocation(line: 162, column: 19, scope: !1648, inlinedAt: !1626)
!1653 = !DILocation(line: 162, column: 5, scope: !1648, inlinedAt: !1626)
!1654 = !DILocation(line: 380, column: 46, scope: !1627, inlinedAt: !1472)
!1655 = !DILocalVariable(name: "__dest", arg: 1, scope: !1656, file: !1505, line: 84, type: !1659)
!1656 = distinct !DISubprogram(name: "stpcpy", scope: !1505, file: !1505, line: 84, type: !1657, scopeLine: 85, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1660)
!1657 = !DISubroutineType(types: !1658)
!1658 = !{!88, !1659, !1062}
!1659 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !88)
!1660 = !{!1655, !1661}
!1661 = !DILocalVariable(name: "__src", arg: 2, scope: !1656, file: !1505, line: 84, type: !1062)
!1662 = !DILocation(line: 0, scope: !1656, inlinedAt: !1663)
!1663 = distinct !DILocation(line: 380, column: 31, scope: !1627, inlinedAt: !1472)
!1664 = !DILocation(line: 86, column: 10, scope: !1656, inlinedAt: !1663)
!1665 = !DILocation(line: 381, column: 21, scope: !1627, inlinedAt: !1472)
!1666 = !DILocation(line: 0, scope: !1612, inlinedAt: !1472)
!1667 = !DILocation(line: 385, column: 19, scope: !1613, inlinedAt: !1472)
!1668 = !DILocation(line: 387, column: 23, scope: !1669, inlinedAt: !1472)
!1669 = distinct !DILexicalBlock(scope: !1670, file: !2, line: 387, column: 23)
!1670 = distinct !DILexicalBlock(scope: !1671, file: !2, line: 386, column: 17)
!1671 = distinct !DILexicalBlock(scope: !1613, file: !2, line: 385, column: 19)
!1672 = !DILocation(line: 387, column: 23, scope: !1670, inlinedAt: !1472)
!1673 = !DILocation(line: 389, column: 29, scope: !1674, inlinedAt: !1472)
!1674 = distinct !DILexicalBlock(scope: !1669, file: !2, line: 388, column: 21)
!1675 = !DILocation(line: 389, column: 32, scope: !1674, inlinedAt: !1472)
!1676 = !DILocation(line: 390, column: 29, scope: !1674, inlinedAt: !1472)
!1677 = !DILocation(line: 390, column: 32, scope: !1674, inlinedAt: !1472)
!1678 = !DILocation(line: 391, column: 34, scope: !1674, inlinedAt: !1472)
!1679 = !DILocation(line: 392, column: 21, scope: !1674, inlinedAt: !1472)
!1680 = !DILocation(line: 393, column: 25, scope: !1670, inlinedAt: !1472)
!1681 = !DILocation(line: 393, column: 28, scope: !1670, inlinedAt: !1472)
!1682 = !DILocation(line: 394, column: 17, scope: !1670, inlinedAt: !1472)
!1683 = !DILocation(line: 398, column: 21, scope: !1613, inlinedAt: !1472)
!1684 = !DILocation(line: 398, column: 24, scope: !1613, inlinedAt: !1472)
!1685 = !DILocation(line: 0, scope: !1443, inlinedAt: !1472)
!1686 = !DILocation(line: 402, column: 17, scope: !1444, inlinedAt: !1472)
!1687 = !DILocation(line: 401, column: 9, scope: !1443, inlinedAt: !1472)
!1688 = !DILocation(line: 0, scope: !1444, inlinedAt: !1472)
!1689 = distinct !{!1689, !1690, !1691, !1118}
!1690 = !DILocation(line: 261, column: 7, scope: !1444, inlinedAt: !1472)
!1691 = !DILocation(line: 402, column: 24, scope: !1444, inlinedAt: !1472)
!1692 = !DILocation(line: 406, column: 11, scope: !1693, inlinedAt: !1472)
!1693 = distinct !DILexicalBlock(scope: !1444, file: !2, line: 406, column: 11)
!1694 = !DILocation(line: 406, column: 11, scope: !1444, inlinedAt: !1472)
!1695 = !DILocation(line: 408, column: 17, scope: !1696, inlinedAt: !1472)
!1696 = distinct !DILexicalBlock(scope: !1693, file: !2, line: 407, column: 9)
!1697 = !DILocation(line: 408, column: 20, scope: !1696, inlinedAt: !1472)
!1698 = !DILocation(line: 409, column: 22, scope: !1696, inlinedAt: !1472)
!1699 = !DILocation(line: 410, column: 9, scope: !1696, inlinedAt: !1472)
!1700 = !DILocation(line: 414, column: 20, scope: !1701, inlinedAt: !1472)
!1701 = distinct !DILexicalBlock(scope: !1444, file: !2, line: 414, column: 11)
!1702 = !DILocation(line: 414, column: 25, scope: !1701, inlinedAt: !1472)
!1703 = !DILocation(line: 0, scope: !1623, inlinedAt: !1704)
!1704 = distinct !DILocation(line: 416, column: 11, scope: !1705, inlinedAt: !1472)
!1705 = distinct !DILexicalBlock(scope: !1701, file: !2, line: 415, column: 9)
!1706 = !DILocation(line: 149, column: 3, scope: !1623, inlinedAt: !1704)
!1707 = !DILocation(line: 151, column: 18, scope: !1630, inlinedAt: !1704)
!1708 = !DILocation(line: 151, column: 21, scope: !1630, inlinedAt: !1704)
!1709 = !DILocation(line: 151, column: 11, scope: !1631, inlinedAt: !1704)
!1710 = !DILocation(line: 153, column: 12, scope: !1631, inlinedAt: !1704)
!1711 = !DILocation(line: 153, column: 15, scope: !1631, inlinedAt: !1704)
!1712 = !DILocation(line: 155, column: 15, scope: !1623, inlinedAt: !1704)
!1713 = !DILocation(line: 154, column: 5, scope: !1631, inlinedAt: !1704)
!1714 = distinct !{!1714, !1706, !1715, !1118}
!1715 = !DILocation(line: 155, column: 32, scope: !1623, inlinedAt: !1704)
!1716 = !DILocation(line: 157, column: 22, scope: !1641, inlinedAt: !1704)
!1717 = !DILocation(line: 157, column: 7, scope: !1623, inlinedAt: !1704)
!1718 = !DILocation(line: 158, column: 6, scope: !1641, inlinedAt: !1704)
!1719 = !DILocation(line: 158, column: 23, scope: !1641, inlinedAt: !1704)
!1720 = !DILocation(line: 158, column: 5, scope: !1641, inlinedAt: !1704)
!1721 = !DILocation(line: 160, column: 15, scope: !1641, inlinedAt: !1704)
!1722 = !DILocation(line: 161, column: 7, scope: !1648, inlinedAt: !1704)
!1723 = !DILocation(line: 161, column: 24, scope: !1648, inlinedAt: !1704)
!1724 = !DILocation(line: 161, column: 22, scope: !1648, inlinedAt: !1704)
!1725 = !DILocation(line: 161, column: 7, scope: !1623, inlinedAt: !1704)
!1726 = !DILocation(line: 162, column: 19, scope: !1648, inlinedAt: !1704)
!1727 = !DILocation(line: 162, column: 5, scope: !1648, inlinedAt: !1704)
!1728 = !DILocation(line: 417, column: 34, scope: !1705, inlinedAt: !1472)
!1729 = !DILocation(line: 0, scope: !1656, inlinedAt: !1730)
!1730 = distinct !DILocation(line: 417, column: 19, scope: !1705, inlinedAt: !1472)
!1731 = !DILocation(line: 86, column: 10, scope: !1656, inlinedAt: !1730)
!1732 = !DILocation(line: 418, column: 9, scope: !1705, inlinedAt: !1472)
!1733 = !DILocation(line: 426, column: 11, scope: !1444, inlinedAt: !1472)
!1734 = !DILocation(line: 479, column: 11, scope: !1735, inlinedAt: !1472)
!1735 = distinct !DILexicalBlock(scope: !1736, file: !2, line: 477, column: 9)
!1736 = distinct !DILexicalBlock(scope: !1444, file: !2, line: 426, column: 11)
!1737 = !DILocation(line: 428, column: 11, scope: !1738, inlinedAt: !1472)
!1738 = distinct !DILexicalBlock(scope: !1736, file: !2, line: 427, column: 9)
!1739 = !DILocation(line: 430, column: 22, scope: !1740, inlinedAt: !1472)
!1740 = distinct !DILexicalBlock(scope: !1741, file: !2, line: 430, column: 19)
!1741 = distinct !DILexicalBlock(scope: !1738, file: !2, line: 429, column: 13)
!1742 = !DILocation(line: 430, column: 19, scope: !1741, inlinedAt: !1472)
!1743 = !DILocation(line: 432, column: 26, scope: !1744, inlinedAt: !1472)
!1744 = distinct !DILexicalBlock(scope: !1745, file: !2, line: 432, column: 23)
!1745 = distinct !DILexicalBlock(scope: !1740, file: !2, line: 431, column: 17)
!1746 = !DILocation(line: 432, column: 23, scope: !1745, inlinedAt: !1472)
!1747 = !DILocation(line: 433, column: 27, scope: !1744, inlinedAt: !1472)
!1748 = !DILocation(line: 433, column: 30, scope: !1744, inlinedAt: !1472)
!1749 = !DILocation(line: 433, column: 21, scope: !1744, inlinedAt: !1472)
!1750 = !DILocation(line: 434, column: 31, scope: !1751, inlinedAt: !1472)
!1751 = distinct !DILexicalBlock(scope: !1744, file: !2, line: 434, column: 28)
!1752 = !DILocation(line: 0, scope: !1751, inlinedAt: !1472)
!1753 = !DILocation(line: 434, column: 28, scope: !1744, inlinedAt: !1472)
!1754 = !DILocation(line: 436, column: 32, scope: !1755, inlinedAt: !1472)
!1755 = distinct !DILexicalBlock(scope: !1751, file: !2, line: 435, column: 21)
!1756 = !DILocation(line: 437, column: 32, scope: !1755, inlinedAt: !1472)
!1757 = !DILocation(line: 438, column: 21, scope: !1755, inlinedAt: !1472)
!1758 = !DILocation(line: 441, column: 32, scope: !1759, inlinedAt: !1472)
!1759 = distinct !DILexicalBlock(scope: !1751, file: !2, line: 440, column: 21)
!1760 = !DILocation(line: 442, column: 32, scope: !1759, inlinedAt: !1472)
!1761 = !DILocation(line: 443, column: 30, scope: !1762, inlinedAt: !1472)
!1762 = distinct !DILexicalBlock(scope: !1759, file: !2, line: 443, column: 27)
!1763 = !DILocation(line: 443, column: 27, scope: !1759, inlinedAt: !1472)
!1764 = !DILocation(line: 445, column: 34, scope: !1765, inlinedAt: !1472)
!1765 = distinct !DILexicalBlock(scope: !1766, file: !2, line: 445, column: 31)
!1766 = distinct !DILexicalBlock(scope: !1762, file: !2, line: 444, column: 25)
!1767 = !DILocation(line: 445, column: 31, scope: !1766, inlinedAt: !1472)
!1768 = !DILocation(line: 446, column: 43, scope: !1765, inlinedAt: !1472)
!1769 = !DILocation(line: 446, column: 35, scope: !1765, inlinedAt: !1472)
!1770 = !DILocation(line: 446, column: 38, scope: !1765, inlinedAt: !1472)
!1771 = !DILocation(line: 446, column: 29, scope: !1765, inlinedAt: !1472)
!1772 = !DILocation(line: 449, column: 37, scope: !1773, inlinedAt: !1472)
!1773 = distinct !DILexicalBlock(scope: !1765, file: !2, line: 448, column: 29)
!1774 = !DILocation(line: 449, column: 40, scope: !1773, inlinedAt: !1472)
!1775 = !DILocation(line: 450, column: 37, scope: !1773, inlinedAt: !1472)
!1776 = !DILocation(line: 450, column: 40, scope: !1773, inlinedAt: !1472)
!1777 = !DILocation(line: 455, column: 33, scope: !1778, inlinedAt: !1472)
!1778 = distinct !DILexicalBlock(scope: !1762, file: !2, line: 454, column: 25)
!1779 = !DILocation(line: 455, column: 36, scope: !1778, inlinedAt: !1472)
!1780 = !DILocation(line: 456, column: 47, scope: !1778, inlinedAt: !1472)
!1781 = !DILocation(line: 456, column: 33, scope: !1778, inlinedAt: !1472)
!1782 = !DILocation(line: 456, column: 36, scope: !1778, inlinedAt: !1472)
!1783 = !DILocation(line: 460, column: 27, scope: !1784, inlinedAt: !1472)
!1784 = distinct !DILexicalBlock(scope: !1740, file: !2, line: 460, column: 24)
!1785 = !DILocation(line: 460, column: 35, scope: !1784, inlinedAt: !1472)
!1786 = !DILocation(line: 461, column: 23, scope: !1784, inlinedAt: !1472)
!1787 = !DILocation(line: 461, column: 26, scope: !1784, inlinedAt: !1472)
!1788 = !DILocation(line: 461, column: 17, scope: !1784, inlinedAt: !1472)
!1789 = !DILocation(line: 462, column: 27, scope: !1790, inlinedAt: !1472)
!1790 = distinct !DILexicalBlock(scope: !1784, file: !2, line: 462, column: 24)
!1791 = !DILocation(line: 462, column: 24, scope: !1784, inlinedAt: !1472)
!1792 = distinct !{!1792, !1476, !1793}
!1793 = !DILocation(line: 510, column: 5, scope: !1445, inlinedAt: !1472)
!1794 = !DILocation(line: 469, column: 25, scope: !1795, inlinedAt: !1472)
!1795 = distinct !DILexicalBlock(scope: !1790, file: !2, line: 468, column: 17)
!1796 = !DILocation(line: 469, column: 28, scope: !1795, inlinedAt: !1472)
!1797 = !DILocation(line: 470, column: 33, scope: !1795, inlinedAt: !1472)
!1798 = !DILocation(line: 470, column: 25, scope: !1795, inlinedAt: !1472)
!1799 = !DILocation(line: 470, column: 28, scope: !1795, inlinedAt: !1472)
!1800 = !DILocation(line: 0, scope: !1740, inlinedAt: !1472)
!1801 = !DILocation(line: 473, column: 25, scope: !1741, inlinedAt: !1472)
!1802 = !DILocation(line: 473, column: 20, scope: !1741, inlinedAt: !1472)
!1803 = distinct !{!1803, !1737, !1804}
!1804 = !DILocation(line: 474, column: 13, scope: !1738, inlinedAt: !1472)
!1805 = !DILocation(line: 481, column: 22, scope: !1806, inlinedAt: !1472)
!1806 = distinct !DILexicalBlock(scope: !1807, file: !2, line: 481, column: 19)
!1807 = distinct !DILexicalBlock(scope: !1735, file: !2, line: 480, column: 13)
!1808 = !DILocation(line: 481, column: 30, scope: !1806, inlinedAt: !1472)
!1809 = !DILocation(line: 483, column: 25, scope: !1810, inlinedAt: !1472)
!1810 = distinct !DILexicalBlock(scope: !1806, file: !2, line: 482, column: 17)
!1811 = !DILocation(line: 483, column: 28, scope: !1810, inlinedAt: !1472)
!1812 = !DILocation(line: 484, column: 25, scope: !1810, inlinedAt: !1472)
!1813 = !DILocation(line: 484, column: 28, scope: !1810, inlinedAt: !1472)
!1814 = !DILocation(line: 485, column: 17, scope: !1810, inlinedAt: !1472)
!1815 = !DILocation(line: 486, column: 24, scope: !1806, inlinedAt: !1472)
!1816 = !DILocation(line: 488, column: 37, scope: !1817, inlinedAt: !1472)
!1817 = distinct !DILexicalBlock(scope: !1818, file: !2, line: 488, column: 23)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !2, line: 487, column: 17)
!1819 = distinct !DILexicalBlock(scope: !1806, file: !2, line: 486, column: 24)
!1820 = !DILocation(line: 488, column: 43, scope: !1817, inlinedAt: !1472)
!1821 = !DILocation(line: 488, column: 51, scope: !1817, inlinedAt: !1472)
!1822 = !DILocation(line: 490, column: 32, scope: !1823, inlinedAt: !1472)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !2, line: 490, column: 27)
!1824 = distinct !DILexicalBlock(scope: !1817, file: !2, line: 489, column: 21)
!1825 = !DILocation(line: 490, column: 27, scope: !1824, inlinedAt: !1472)
!1826 = !DILocation(line: 491, column: 36, scope: !1823, inlinedAt: !1472)
!1827 = !DILocation(line: 491, column: 25, scope: !1823, inlinedAt: !1472)
!1828 = !DILocation(line: 494, column: 33, scope: !1829, inlinedAt: !1472)
!1829 = distinct !DILexicalBlock(scope: !1823, file: !2, line: 493, column: 25)
!1830 = !DILocation(line: 494, column: 36, scope: !1829, inlinedAt: !1472)
!1831 = !DILocation(line: 495, column: 33, scope: !1829, inlinedAt: !1472)
!1832 = !DILocation(line: 495, column: 36, scope: !1829, inlinedAt: !1472)
!1833 = !DILocation(line: 499, column: 27, scope: !1817, inlinedAt: !1472)
!1834 = !DILocation(line: 499, column: 30, scope: !1817, inlinedAt: !1472)
!1835 = !DILocation(line: 507, column: 25, scope: !1807, inlinedAt: !1472)
!1836 = !DILocation(line: 507, column: 20, scope: !1807, inlinedAt: !1472)
!1837 = distinct !{!1837, !1734, !1838}
!1838 = !DILocation(line: 508, column: 13, scope: !1735, inlinedAt: !1472)
!1839 = !DILocalVariable(name: "ptr", arg: 1, scope: !1840, file: !1841, line: 75, type: !144)
!1840 = distinct !DISubprogram(name: "alignfree", scope: !1841, file: !1841, line: 75, type: !1842, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1844)
!1841 = !DIFile(filename: "./lib/alignalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0a7d01653c1483fdd96283992acf95d0")
!1842 = !DISubroutineType(types: !1843)
!1843 = !{null, !144}
!1844 = !{!1839}
!1845 = !DILocation(line: 0, scope: !1840, inlinedAt: !1846)
!1846 = distinct !DILocation(line: 805, column: 11, scope: !527)
!1847 = !DILocation(line: 77, column: 3, scope: !1840, inlinedAt: !1846)
!1848 = !DILocation(line: 0, scope: !525)
!1849 = !DILocation(line: 0, scope: !1840, inlinedAt: !1850)
!1850 = distinct !DILocation(line: 808, column: 7, scope: !511)
!1851 = !DILocation(line: 77, column: 3, scope: !1840, inlinedAt: !1850)
!1852 = !DILocation(line: 808, column: 7, scope: !511)
!1853 = !DILocation(line: 810, column: 5, scope: !511)
!1854 = !DILocation(line: 811, column: 26, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !511, file: !2, line: 811, column: 11)
!1856 = !DILocation(line: 811, column: 36, scope: !1855)
!1857 = !DILocation(line: 811, column: 29, scope: !1855)
!1858 = !DILocation(line: 811, column: 48, scope: !1855)
!1859 = !DILocation(line: 811, column: 11, scope: !511)
!1860 = !DILocation(line: 813, column: 11, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1855, file: !2, line: 812, column: 9)
!1862 = !DILocation(line: 815, column: 9, scope: !1861)
!1863 = !DILocation(line: 816, column: 5, scope: !83)
!1864 = !DILocation(line: 817, column: 10, scope: !83)
!1865 = !DILocation(line: 817, column: 19, scope: !83)
!1866 = !DILocation(line: 816, column: 5, scope: !511)
!1867 = distinct !{!1867, !1291, !1868, !1118}
!1868 = !DILocation(line: 817, column: 25, scope: !83)
!1869 = !DILocation(line: 819, column: 7, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !83, file: !2, line: 819, column: 7)
!1871 = !DILocation(line: 819, column: 7, scope: !83)
!1872 = !DILocation(line: 821, column: 11, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1874, file: !2, line: 821, column: 11)
!1874 = distinct !DILexicalBlock(scope: !1870, file: !2, line: 820, column: 5)
!1875 = !DILocation(line: 821, column: 47, scope: !1873)
!1876 = !DILocation(line: 821, column: 11, scope: !1874)
!1877 = !DILocation(line: 948, column: 21, scope: !1423, inlinedAt: !1878)
!1878 = distinct !DILocation(line: 822, column: 9, scope: !1873)
!1879 = !DILocation(line: 0, scope: !1423, inlinedAt: !1878)
!1880 = !DILocation(line: 949, column: 3, scope: !1423, inlinedAt: !1878)
!1881 = !DILocation(line: 950, column: 11, scope: !1423, inlinedAt: !1878)
!1882 = !DILocation(line: 950, column: 3, scope: !1423, inlinedAt: !1878)
!1883 = !DILocation(line: 951, column: 3, scope: !1423, inlinedAt: !1878)
!1884 = !DILocation(line: 952, column: 3, scope: !1423, inlinedAt: !1878)
!1885 = !DILocation(line: 825, column: 23, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !83, file: !2, line: 825, column: 7)
!1887 = !DILocation(line: 825, column: 26, scope: !1886)
!1888 = !DILocation(line: 825, column: 47, scope: !1886)
!1889 = !DILocation(line: 825, column: 7, scope: !83)
!1890 = !DILocation(line: 826, column: 5, scope: !1886)
!1891 = !DILocation(line: 828, column: 10, scope: !83)
!1892 = !DILocation(line: 829, column: 1, scope: !83)
!1893 = !DISubprogram(name: "bindtextdomain", scope: !1054, file: !1054, line: 86, type: !1894, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1894 = !DISubroutineType(types: !1895)
!1895 = !{!88, !149, !149}
!1896 = !DISubprogram(name: "textdomain", scope: !1054, file: !1054, line: 82, type: !1194, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1897 = !DISubprogram(name: "atexit", scope: !1192, file: !1192, line: 602, type: !1898, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1898 = !DISubroutineType(types: !1899)
!1899 = !{!86, !615}
!1900 = !DISubprogram(name: "getopt_long", scope: !533, file: !533, line: 66, type: !1901, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1901 = !DISubroutineType(types: !1902)
!1902 = !{!86, !86, !1903, !149, !1905, !538}
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!1906 = !DISubprogram(name: "fstat", scope: !1907, file: !1907, line: 210, type: !1908, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1907 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!1908 = !DISubroutineType(types: !1909)
!1909 = !{!86, !86, !1910}
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!1911 = !DISubprogram(name: "__errno_location", scope: !1912, file: !1912, line: 37, type: !1913, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1912 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1913 = !DISubroutineType(types: !1914)
!1914 = !{!538}
!1915 = !DISubprogram(name: "getpagesize", scope: !1916, file: !1916, line: 1011, type: !1366, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1916 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1917 = !DISubprogram(name: "open", scope: !1918, file: !1918, line: 181, type: !1919, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1918 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1919 = !DISubroutineType(types: !1920)
!1920 = !{!86, !149, !86, null}
!1921 = !DISubprogram(name: "lseek", scope: !1916, file: !1916, line: 339, type: !1922, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{!313, !86, !313, !86}
!1924 = !DISubprogram(name: "fflush_unlocked", scope: !518, file: !518, line: 239, type: !1925, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{!86, !287}
!1927 = !DISubprogram(name: "clearerr_unlocked", scope: !518, file: !518, line: 794, type: !1928, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{null, !287}
!1930 = !DISubprogram(name: "ioctl", scope: !1931, file: !1931, line: 42, type: !1932, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1931 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/ioctl.h", directory: "", checksumkind: CSK_MD5, checksum: "17041ae374bfd0bee8350d01883d298c")
!1932 = !DISubroutineType(types: !1933)
!1933 = !{!86, !86, !148, null}
!1934 = !DISubprogram(name: "free", scope: !1192, file: !1192, line: 555, type: !1842, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1935 = !DISubprogram(name: "close", scope: !1916, file: !1916, line: 358, type: !1936, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{!86, !86}
!1938 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !551, file: !551, line: 50, type: !1022, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !1939)
!1939 = !{!1940}
!1940 = !DILocalVariable(name: "file", arg: 1, scope: !1938, file: !551, line: 50, type: !149)
!1941 = !DILocation(line: 0, scope: !1938)
!1942 = !DILocation(line: 52, column: 13, scope: !1938)
!1943 = !DILocation(line: 53, column: 1, scope: !1938)
!1944 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !551, file: !551, line: 87, type: !1945, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !1947)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{null, !274}
!1947 = !{!1948}
!1948 = !DILocalVariable(name: "ignore", arg: 1, scope: !1944, file: !551, line: 87, type: !274)
!1949 = !DILocation(line: 0, scope: !1944)
!1950 = !DILocation(line: 89, column: 16, scope: !1944)
!1951 = !{!1952, !1952, i64 0}
!1952 = !{!"_Bool", !999, i64 0}
!1953 = !DILocation(line: 90, column: 1, scope: !1944)
!1954 = distinct !DISubprogram(name: "close_stdout", scope: !551, file: !551, line: 116, type: !616, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !1955)
!1955 = !{!1956}
!1956 = !DILocalVariable(name: "write_error", scope: !1957, file: !551, line: 121, type: !149)
!1957 = distinct !DILexicalBlock(scope: !1958, file: !551, line: 120, column: 5)
!1958 = distinct !DILexicalBlock(scope: !1954, file: !551, line: 118, column: 7)
!1959 = !DILocation(line: 118, column: 21, scope: !1958)
!1960 = !DILocation(line: 118, column: 7, scope: !1958)
!1961 = !DILocation(line: 118, column: 29, scope: !1958)
!1962 = !DILocation(line: 119, column: 7, scope: !1958)
!1963 = !DILocation(line: 119, column: 12, scope: !1958)
!1964 = !{i8 0, i8 2}
!1965 = !DILocation(line: 119, column: 25, scope: !1958)
!1966 = !DILocation(line: 119, column: 28, scope: !1958)
!1967 = !DILocation(line: 119, column: 34, scope: !1958)
!1968 = !DILocation(line: 118, column: 7, scope: !1954)
!1969 = !DILocation(line: 121, column: 33, scope: !1957)
!1970 = !DILocation(line: 0, scope: !1957)
!1971 = !DILocation(line: 122, column: 11, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1957, file: !551, line: 122, column: 11)
!1973 = !DILocation(line: 0, scope: !1972)
!1974 = !DILocation(line: 122, column: 11, scope: !1957)
!1975 = !DILocation(line: 123, column: 9, scope: !1972)
!1976 = !DILocation(line: 126, column: 9, scope: !1972)
!1977 = !DILocation(line: 128, column: 14, scope: !1957)
!1978 = !DILocation(line: 128, column: 7, scope: !1957)
!1979 = !DILocation(line: 133, column: 42, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1954, file: !551, line: 133, column: 7)
!1981 = !DILocation(line: 133, column: 28, scope: !1980)
!1982 = !DILocation(line: 133, column: 50, scope: !1980)
!1983 = !DILocation(line: 133, column: 7, scope: !1954)
!1984 = !DILocation(line: 134, column: 12, scope: !1980)
!1985 = !DILocation(line: 134, column: 5, scope: !1980)
!1986 = !DILocation(line: 135, column: 1, scope: !1954)
!1987 = !DISubprogram(name: "_exit", scope: !1916, file: !1916, line: 624, type: !987, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1988 = distinct !DISubprogram(name: "rpl_copy_file_range", scope: !898, file: !898, line: 41, type: !1989, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !897, retainedNodes: !1994)
!1989 = !DISubroutineType(types: !1990)
!1990 = !{!1991, !86, !1992, !86, !1992, !146, !98}
!1991 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !1916, line: 220, baseType: !1372)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1916, line: 243, baseType: !313)
!1994 = !{!1995, !1996, !1997, !1998, !1999, !2000, !2001}
!1995 = !DILocalVariable(name: "infd", arg: 1, scope: !1988, file: !898, line: 41, type: !86)
!1996 = !DILocalVariable(name: "pinoff", arg: 2, scope: !1988, file: !898, line: 41, type: !1992)
!1997 = !DILocalVariable(name: "outfd", arg: 3, scope: !1988, file: !898, line: 42, type: !86)
!1998 = !DILocalVariable(name: "poutoff", arg: 4, scope: !1988, file: !898, line: 42, type: !1992)
!1999 = !DILocalVariable(name: "length", arg: 5, scope: !1988, file: !898, line: 43, type: !146)
!2000 = !DILocalVariable(name: "flags", arg: 6, scope: !1988, file: !898, line: 43, type: !98)
!2001 = !DILocalVariable(name: "ok", scope: !1988, file: !898, line: 48, type: !274)
!2002 = !DILocation(line: 0, scope: !1988)
!2003 = !DILocation(line: 86, column: 11, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !898, line: 78, column: 5)
!2005 = distinct !DILexicalBlock(scope: !1988, file: !898, line: 77, column: 7)
!2006 = !DILocation(line: 90, column: 14, scope: !2004)
!2007 = !DILocation(line: 99, column: 1, scope: !1988)
!2008 = !DISubprogram(name: "copy_file_range", scope: !1916, file: !1916, line: 1142, type: !2009, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{!1991, !86, !2011, !86, !2011, !146, !98}
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!2012 = distinct !DISubprogram(name: "verror", scope: !566, file: !566, line: 251, type: !2013, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2015)
!2013 = !DISubroutineType(types: !2014)
!2014 = !{null, !86, !86, !149, !576}
!2015 = !{!2016, !2017, !2018, !2019}
!2016 = !DILocalVariable(name: "status", arg: 1, scope: !2012, file: !566, line: 251, type: !86)
!2017 = !DILocalVariable(name: "errnum", arg: 2, scope: !2012, file: !566, line: 251, type: !86)
!2018 = !DILocalVariable(name: "message", arg: 3, scope: !2012, file: !566, line: 251, type: !149)
!2019 = !DILocalVariable(name: "args", arg: 4, scope: !2012, file: !566, line: 251, type: !576)
!2020 = !DILocation(line: 0, scope: !2012)
!2021 = !DILocation(line: 261, column: 3, scope: !2012)
!2022 = !DILocation(line: 265, column: 7, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !2012, file: !566, line: 265, column: 7)
!2024 = !DILocation(line: 265, column: 7, scope: !2012)
!2025 = !DILocation(line: 266, column: 5, scope: !2023)
!2026 = !DILocation(line: 272, column: 7, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !2023, file: !566, line: 268, column: 5)
!2028 = !DILocation(line: 276, column: 3, scope: !2012)
!2029 = !{i64 0, i64 8, !997, i64 8, i64 8, !997, i64 16, i64 8, !997, i64 24, i64 4, !1071, i64 28, i64 4, !1071}
!2030 = !DILocation(line: 282, column: 1, scope: !2012)
!2031 = distinct !DISubprogram(name: "flush_stdout", scope: !566, file: !566, line: 163, type: !616, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2032)
!2032 = !{!2033}
!2033 = !DILocalVariable(name: "stdout_fd", scope: !2031, file: !566, line: 166, type: !86)
!2034 = !DILocation(line: 0, scope: !2031)
!2035 = !DILocalVariable(name: "fd", arg: 1, scope: !2036, file: !566, line: 145, type: !86)
!2036 = distinct !DISubprogram(name: "is_open", scope: !566, file: !566, line: 145, type: !1936, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2037)
!2037 = !{!2035}
!2038 = !DILocation(line: 0, scope: !2036, inlinedAt: !2039)
!2039 = distinct !DILocation(line: 182, column: 25, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2031, file: !566, line: 182, column: 7)
!2041 = !DILocation(line: 157, column: 15, scope: !2036, inlinedAt: !2039)
!2042 = !DILocation(line: 157, column: 12, scope: !2036, inlinedAt: !2039)
!2043 = !DILocation(line: 182, column: 7, scope: !2031)
!2044 = !DILocation(line: 184, column: 5, scope: !2040)
!2045 = !DILocation(line: 185, column: 1, scope: !2031)
!2046 = distinct !DISubprogram(name: "error_tail", scope: !566, file: !566, line: 219, type: !2013, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2047)
!2047 = !{!2048, !2049, !2050, !2051}
!2048 = !DILocalVariable(name: "status", arg: 1, scope: !2046, file: !566, line: 219, type: !86)
!2049 = !DILocalVariable(name: "errnum", arg: 2, scope: !2046, file: !566, line: 219, type: !86)
!2050 = !DILocalVariable(name: "message", arg: 3, scope: !2046, file: !566, line: 219, type: !149)
!2051 = !DILocalVariable(name: "args", arg: 4, scope: !2046, file: !566, line: 219, type: !576)
!2052 = distinct !DIAssignID()
!2053 = !DILocation(line: 0, scope: !2046)
!2054 = !DILocation(line: 229, column: 13, scope: !2046)
!2055 = !DILocation(line: 135, column: 10, scope: !2056, inlinedAt: !2098)
!2056 = distinct !DISubprogram(name: "vfprintf", scope: !1058, file: !1058, line: 132, type: !2057, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2094)
!2057 = !DISubroutineType(types: !2058)
!2058 = !{!86, !2059, !1062, !577}
!2059 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2060)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !289, line: 7, baseType: !2062)
!2062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !291, line: 49, size: 1728, elements: !2063)
!2063 = !{!2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2062, file: !291, line: 51, baseType: !86, size: 32)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2062, file: !291, line: 54, baseType: !88, size: 64, offset: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2062, file: !291, line: 55, baseType: !88, size: 64, offset: 128)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2062, file: !291, line: 56, baseType: !88, size: 64, offset: 192)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2062, file: !291, line: 57, baseType: !88, size: 64, offset: 256)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2062, file: !291, line: 58, baseType: !88, size: 64, offset: 320)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2062, file: !291, line: 59, baseType: !88, size: 64, offset: 384)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2062, file: !291, line: 60, baseType: !88, size: 64, offset: 448)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2062, file: !291, line: 61, baseType: !88, size: 64, offset: 512)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2062, file: !291, line: 64, baseType: !88, size: 64, offset: 576)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2062, file: !291, line: 65, baseType: !88, size: 64, offset: 640)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2062, file: !291, line: 66, baseType: !88, size: 64, offset: 704)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2062, file: !291, line: 68, baseType: !306, size: 64, offset: 768)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2062, file: !291, line: 70, baseType: !2078, size: 64, offset: 832)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2062, file: !291, line: 72, baseType: !86, size: 32, offset: 896)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2062, file: !291, line: 73, baseType: !86, size: 32, offset: 928)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2062, file: !291, line: 74, baseType: !313, size: 64, offset: 960)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2062, file: !291, line: 77, baseType: !145, size: 16, offset: 1024)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2062, file: !291, line: 78, baseType: !318, size: 8, offset: 1040)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2062, file: !291, line: 79, baseType: !197, size: 8, offset: 1048)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2062, file: !291, line: 81, baseType: !321, size: 64, offset: 1088)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2062, file: !291, line: 89, baseType: !324, size: 64, offset: 1152)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2062, file: !291, line: 91, baseType: !326, size: 64, offset: 1216)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2062, file: !291, line: 92, baseType: !329, size: 64, offset: 1280)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2062, file: !291, line: 93, baseType: !2078, size: 64, offset: 1344)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2062, file: !291, line: 94, baseType: !144, size: 64, offset: 1408)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2062, file: !291, line: 95, baseType: !146, size: 64, offset: 1472)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2062, file: !291, line: 96, baseType: !86, size: 32, offset: 1536)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2062, file: !291, line: 98, baseType: !226, size: 160, offset: 1568)
!2094 = !{!2095, !2096, !2097}
!2095 = !DILocalVariable(name: "__stream", arg: 1, scope: !2056, file: !1058, line: 132, type: !2059)
!2096 = !DILocalVariable(name: "__fmt", arg: 2, scope: !2056, file: !1058, line: 133, type: !1062)
!2097 = !DILocalVariable(name: "__ap", arg: 3, scope: !2056, file: !1058, line: 133, type: !577)
!2098 = distinct !DILocation(line: 229, column: 3, scope: !2046)
!2099 = !{!2100, !2102}
!2100 = distinct !{!2100, !2101, !"vfprintf.inline: argument 0"}
!2101 = distinct !{!2101, !"vfprintf.inline"}
!2102 = distinct !{!2102, !2101, !"vfprintf.inline: argument 1"}
!2103 = !DILocation(line: 229, column: 3, scope: !2046)
!2104 = !DILocation(line: 0, scope: !2056, inlinedAt: !2098)
!2105 = !DILocation(line: 232, column: 3, scope: !2046)
!2106 = !DILocation(line: 233, column: 7, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2046, file: !566, line: 233, column: 7)
!2108 = !DILocation(line: 233, column: 7, scope: !2046)
!2109 = !DILocalVariable(name: "errbuf", scope: !2110, file: !566, line: 193, type: !2114)
!2110 = distinct !DISubprogram(name: "print_errno_message", scope: !566, file: !566, line: 188, type: !987, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2111)
!2111 = !{!2112, !2113, !2109}
!2112 = !DILocalVariable(name: "errnum", arg: 1, scope: !2110, file: !566, line: 188, type: !86)
!2113 = !DILocalVariable(name: "s", scope: !2110, file: !566, line: 190, type: !149)
!2114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !2115)
!2115 = !{!2116}
!2116 = !DISubrange(count: 1024)
!2117 = !DILocation(line: 0, scope: !2110, inlinedAt: !2118)
!2118 = distinct !DILocation(line: 234, column: 5, scope: !2107)
!2119 = !DILocation(line: 193, column: 3, scope: !2110, inlinedAt: !2118)
!2120 = !DILocation(line: 195, column: 7, scope: !2110, inlinedAt: !2118)
!2121 = !DILocation(line: 207, column: 9, scope: !2122, inlinedAt: !2118)
!2122 = distinct !DILexicalBlock(scope: !2110, file: !566, line: 207, column: 7)
!2123 = !DILocation(line: 207, column: 7, scope: !2110, inlinedAt: !2118)
!2124 = !DILocation(line: 208, column: 9, scope: !2122, inlinedAt: !2118)
!2125 = !DILocation(line: 208, column: 5, scope: !2122, inlinedAt: !2118)
!2126 = !DILocation(line: 214, column: 3, scope: !2110, inlinedAt: !2118)
!2127 = !DILocation(line: 216, column: 1, scope: !2110, inlinedAt: !2118)
!2128 = !DILocation(line: 234, column: 5, scope: !2107)
!2129 = !DILocation(line: 238, column: 3, scope: !2046)
!2130 = !DILocalVariable(name: "__c", arg: 1, scope: !2131, file: !2132, line: 101, type: !86)
!2131 = distinct !DISubprogram(name: "putc_unlocked", scope: !2132, file: !2132, line: 101, type: !2133, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2135)
!2132 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!2133 = !DISubroutineType(types: !2134)
!2134 = !{!86, !86, !2060}
!2135 = !{!2130, !2136}
!2136 = !DILocalVariable(name: "__stream", arg: 2, scope: !2131, file: !2132, line: 101, type: !2060)
!2137 = !DILocation(line: 0, scope: !2131, inlinedAt: !2138)
!2138 = distinct !DILocation(line: 238, column: 3, scope: !2046)
!2139 = !DILocation(line: 103, column: 10, scope: !2131, inlinedAt: !2138)
!2140 = !{!2141, !998, i64 40}
!2141 = !{!"_IO_FILE", !1072, i64 0, !998, i64 8, !998, i64 16, !998, i64 24, !998, i64 32, !998, i64 40, !998, i64 48, !998, i64 56, !998, i64 64, !998, i64 72, !998, i64 80, !998, i64 88, !998, i64 96, !998, i64 104, !1072, i64 112, !1072, i64 116, !1273, i64 120, !1113, i64 128, !999, i64 130, !999, i64 131, !998, i64 136, !1273, i64 144, !998, i64 152, !998, i64 160, !998, i64 168, !998, i64 176, !1273, i64 184, !1072, i64 192, !999, i64 196}
!2142 = !{!2141, !998, i64 48}
!2143 = !{!"branch_weights", i32 2000, i32 1}
!2144 = !DILocation(line: 240, column: 3, scope: !2046)
!2145 = !DILocation(line: 241, column: 7, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2046, file: !566, line: 241, column: 7)
!2147 = !DILocation(line: 241, column: 7, scope: !2046)
!2148 = !DILocation(line: 242, column: 5, scope: !2146)
!2149 = !DILocation(line: 243, column: 1, scope: !2046)
!2150 = !DISubprogram(name: "__vfprintf_chk", scope: !1058, file: !1058, line: 96, type: !2151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!86, !2059, !86, !1062, !577}
!2153 = !DISubprogram(name: "strerror_r", scope: !1188, file: !1188, line: 444, type: !2154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{!88, !86, !88, !146}
!2156 = !DISubprogram(name: "__overflow", scope: !518, file: !518, line: 886, type: !2157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{!86, !2060, !86}
!2159 = !DISubprogram(name: "fcntl", scope: !1918, file: !1918, line: 149, type: !2160, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{!86, !86, !86, null}
!2162 = distinct !DISubprogram(name: "error", scope: !566, file: !566, line: 285, type: !2163, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2165)
!2163 = !DISubroutineType(types: !2164)
!2164 = !{null, !86, !86, !149, null}
!2165 = !{!2166, !2167, !2168, !2169}
!2166 = !DILocalVariable(name: "status", arg: 1, scope: !2162, file: !566, line: 285, type: !86)
!2167 = !DILocalVariable(name: "errnum", arg: 2, scope: !2162, file: !566, line: 285, type: !86)
!2168 = !DILocalVariable(name: "message", arg: 3, scope: !2162, file: !566, line: 285, type: !149)
!2169 = !DILocalVariable(name: "ap", scope: !2162, file: !566, line: 287, type: !576)
!2170 = distinct !DIAssignID()
!2171 = !DILocation(line: 0, scope: !2162)
!2172 = !DILocation(line: 287, column: 3, scope: !2162)
!2173 = !DILocation(line: 288, column: 3, scope: !2162)
!2174 = !DILocation(line: 289, column: 3, scope: !2162)
!2175 = !DILocation(line: 290, column: 3, scope: !2162)
!2176 = !DILocation(line: 291, column: 1, scope: !2162)
!2177 = !DILocation(line: 0, scope: !573)
!2178 = !DILocation(line: 302, column: 7, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !573, file: !566, line: 302, column: 7)
!2180 = !DILocation(line: 302, column: 7, scope: !573)
!2181 = !DILocation(line: 307, column: 11, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2183, file: !566, line: 307, column: 11)
!2183 = distinct !DILexicalBlock(scope: !2179, file: !566, line: 303, column: 5)
!2184 = !DILocation(line: 307, column: 27, scope: !2182)
!2185 = !DILocation(line: 308, column: 11, scope: !2182)
!2186 = !DILocation(line: 308, column: 28, scope: !2182)
!2187 = !DILocation(line: 308, column: 25, scope: !2182)
!2188 = !DILocation(line: 309, column: 15, scope: !2182)
!2189 = !DILocation(line: 309, column: 33, scope: !2182)
!2190 = !DILocation(line: 310, column: 19, scope: !2182)
!2191 = !DILocation(line: 311, column: 22, scope: !2182)
!2192 = !DILocation(line: 311, column: 56, scope: !2182)
!2193 = !DILocation(line: 307, column: 11, scope: !2183)
!2194 = !DILocation(line: 316, column: 21, scope: !2183)
!2195 = !DILocation(line: 317, column: 23, scope: !2183)
!2196 = !DILocation(line: 318, column: 5, scope: !2183)
!2197 = !DILocation(line: 327, column: 3, scope: !573)
!2198 = !DILocation(line: 331, column: 7, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !573, file: !566, line: 331, column: 7)
!2200 = !DILocation(line: 331, column: 7, scope: !573)
!2201 = !DILocation(line: 332, column: 5, scope: !2199)
!2202 = !DILocation(line: 338, column: 7, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2199, file: !566, line: 334, column: 5)
!2204 = !DILocation(line: 346, column: 3, scope: !573)
!2205 = !DILocation(line: 350, column: 3, scope: !573)
!2206 = !DILocation(line: 356, column: 1, scope: !573)
!2207 = distinct !DISubprogram(name: "error_at_line", scope: !566, file: !566, line: 359, type: !2208, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2210)
!2208 = !DISubroutineType(types: !2209)
!2209 = !{null, !86, !86, !149, !98, !149, null}
!2210 = !{!2211, !2212, !2213, !2214, !2215, !2216}
!2211 = !DILocalVariable(name: "status", arg: 1, scope: !2207, file: !566, line: 359, type: !86)
!2212 = !DILocalVariable(name: "errnum", arg: 2, scope: !2207, file: !566, line: 359, type: !86)
!2213 = !DILocalVariable(name: "file_name", arg: 3, scope: !2207, file: !566, line: 359, type: !149)
!2214 = !DILocalVariable(name: "line_number", arg: 4, scope: !2207, file: !566, line: 360, type: !98)
!2215 = !DILocalVariable(name: "message", arg: 5, scope: !2207, file: !566, line: 360, type: !149)
!2216 = !DILocalVariable(name: "ap", scope: !2207, file: !566, line: 362, type: !576)
!2217 = distinct !DIAssignID()
!2218 = !DILocation(line: 0, scope: !2207)
!2219 = !DILocation(line: 362, column: 3, scope: !2207)
!2220 = !DILocation(line: 363, column: 3, scope: !2207)
!2221 = !DILocation(line: 364, column: 3, scope: !2207)
!2222 = !DILocation(line: 366, column: 3, scope: !2207)
!2223 = !DILocation(line: 367, column: 1, scope: !2207)
!2224 = distinct !DISubprogram(name: "fdadvise", scope: !903, file: !903, line: 25, type: !2225, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !902, retainedNodes: !2228)
!2225 = !DISubroutineType(types: !2226)
!2226 = !{null, !86, !517, !517, !2227}
!2227 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !906, line: 51, baseType: !905)
!2228 = !{!2229, !2230, !2231, !2232}
!2229 = !DILocalVariable(name: "fd", arg: 1, scope: !2224, file: !903, line: 25, type: !86)
!2230 = !DILocalVariable(name: "offset", arg: 2, scope: !2224, file: !903, line: 25, type: !517)
!2231 = !DILocalVariable(name: "len", arg: 3, scope: !2224, file: !903, line: 25, type: !517)
!2232 = !DILocalVariable(name: "advice", arg: 4, scope: !2224, file: !903, line: 25, type: !2227)
!2233 = !DILocation(line: 0, scope: !2224)
!2234 = !DILocation(line: 28, column: 3, scope: !2224)
!2235 = !DILocation(line: 30, column: 1, scope: !2224)
!2236 = !DISubprogram(name: "posix_fadvise", scope: !1918, file: !1918, line: 273, type: !2237, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2237 = !DISubroutineType(types: !2238)
!2238 = !{!86, !86, !517, !517, !86}
!2239 = distinct !DISubprogram(name: "fadvise", scope: !903, file: !903, line: 33, type: !2240, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !902, retainedNodes: !2276)
!2240 = !DISubroutineType(types: !2241)
!2241 = !{null, !2242, !2227}
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !289, line: 7, baseType: !2244)
!2244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !291, line: 49, size: 1728, elements: !2245)
!2245 = !{!2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2244, file: !291, line: 51, baseType: !86, size: 32)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2244, file: !291, line: 54, baseType: !88, size: 64, offset: 64)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2244, file: !291, line: 55, baseType: !88, size: 64, offset: 128)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2244, file: !291, line: 56, baseType: !88, size: 64, offset: 192)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2244, file: !291, line: 57, baseType: !88, size: 64, offset: 256)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2244, file: !291, line: 58, baseType: !88, size: 64, offset: 320)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2244, file: !291, line: 59, baseType: !88, size: 64, offset: 384)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2244, file: !291, line: 60, baseType: !88, size: 64, offset: 448)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2244, file: !291, line: 61, baseType: !88, size: 64, offset: 512)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2244, file: !291, line: 64, baseType: !88, size: 64, offset: 576)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2244, file: !291, line: 65, baseType: !88, size: 64, offset: 640)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2244, file: !291, line: 66, baseType: !88, size: 64, offset: 704)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2244, file: !291, line: 68, baseType: !306, size: 64, offset: 768)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2244, file: !291, line: 70, baseType: !2260, size: 64, offset: 832)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2244, file: !291, line: 72, baseType: !86, size: 32, offset: 896)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2244, file: !291, line: 73, baseType: !86, size: 32, offset: 928)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2244, file: !291, line: 74, baseType: !313, size: 64, offset: 960)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2244, file: !291, line: 77, baseType: !145, size: 16, offset: 1024)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2244, file: !291, line: 78, baseType: !318, size: 8, offset: 1040)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2244, file: !291, line: 79, baseType: !197, size: 8, offset: 1048)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2244, file: !291, line: 81, baseType: !321, size: 64, offset: 1088)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2244, file: !291, line: 89, baseType: !324, size: 64, offset: 1152)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2244, file: !291, line: 91, baseType: !326, size: 64, offset: 1216)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2244, file: !291, line: 92, baseType: !329, size: 64, offset: 1280)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2244, file: !291, line: 93, baseType: !2260, size: 64, offset: 1344)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2244, file: !291, line: 94, baseType: !144, size: 64, offset: 1408)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2244, file: !291, line: 95, baseType: !146, size: 64, offset: 1472)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2244, file: !291, line: 96, baseType: !86, size: 32, offset: 1536)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2244, file: !291, line: 98, baseType: !226, size: 160, offset: 1568)
!2276 = !{!2277, !2278}
!2277 = !DILocalVariable(name: "fp", arg: 1, scope: !2239, file: !903, line: 33, type: !2242)
!2278 = !DILocalVariable(name: "advice", arg: 2, scope: !2239, file: !903, line: 33, type: !2227)
!2279 = !DILocation(line: 0, scope: !2239)
!2280 = !DILocation(line: 35, column: 7, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2239, file: !903, line: 35, column: 7)
!2282 = !DILocation(line: 35, column: 7, scope: !2239)
!2283 = !DILocation(line: 36, column: 15, scope: !2281)
!2284 = !DILocation(line: 0, scope: !2224, inlinedAt: !2285)
!2285 = distinct !DILocation(line: 36, column: 5, scope: !2281)
!2286 = !DILocation(line: 28, column: 3, scope: !2224, inlinedAt: !2285)
!2287 = !DILocation(line: 36, column: 5, scope: !2281)
!2288 = !DILocation(line: 37, column: 1, scope: !2239)
!2289 = !DISubprogram(name: "fileno", scope: !518, file: !518, line: 809, type: !2290, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2290 = !DISubroutineType(types: !2291)
!2291 = !{!86, !2242}
!2292 = distinct !DISubprogram(name: "rpl_fcntl", scope: !621, file: !621, line: 202, type: !2160, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !624, retainedNodes: !2293)
!2293 = !{!2294, !2295, !2296, !2307, !2308, !2311, !2313, !2317}
!2294 = !DILocalVariable(name: "fd", arg: 1, scope: !2292, file: !621, line: 202, type: !86)
!2295 = !DILocalVariable(name: "action", arg: 2, scope: !2292, file: !621, line: 202, type: !86)
!2296 = !DILocalVariable(name: "arg", scope: !2292, file: !621, line: 208, type: !2297)
!2297 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2298, line: 12, baseType: !2299)
!2298 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "7bd78a282b99fcfe41a9e3c566d14f7d")
!2299 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !621, baseType: !2300)
!2300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !2301)
!2301 = !{!2302, !2303, !2304, !2305, !2306}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !2300, file: !621, line: 208, baseType: !144, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !2300, file: !621, line: 208, baseType: !144, size: 64, offset: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !2300, file: !621, line: 208, baseType: !144, size: 64, offset: 128)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !2300, file: !621, line: 208, baseType: !86, size: 32, offset: 192)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !2300, file: !621, line: 208, baseType: !86, size: 32, offset: 224)
!2307 = !DILocalVariable(name: "result", scope: !2292, file: !621, line: 211, type: !86)
!2308 = !DILocalVariable(name: "target", scope: !2309, file: !621, line: 216, type: !86)
!2309 = distinct !DILexicalBlock(scope: !2310, file: !621, line: 215, column: 7)
!2310 = distinct !DILexicalBlock(scope: !2292, file: !621, line: 213, column: 5)
!2311 = !DILocalVariable(name: "target", scope: !2312, file: !621, line: 223, type: !86)
!2312 = distinct !DILexicalBlock(scope: !2310, file: !621, line: 222, column: 7)
!2313 = !DILocalVariable(name: "x", scope: !2314, file: !621, line: 418, type: !86)
!2314 = distinct !DILexicalBlock(scope: !2315, file: !621, line: 417, column: 13)
!2315 = distinct !DILexicalBlock(scope: !2316, file: !621, line: 261, column: 11)
!2316 = distinct !DILexicalBlock(scope: !2310, file: !621, line: 258, column: 7)
!2317 = !DILocalVariable(name: "p", scope: !2318, file: !621, line: 426, type: !144)
!2318 = distinct !DILexicalBlock(scope: !2315, file: !621, line: 425, column: 13)
!2319 = distinct !DIAssignID()
!2320 = !DILocation(line: 0, scope: !2292)
!2321 = !DILocation(line: 208, column: 3, scope: !2292)
!2322 = !DILocation(line: 209, column: 3, scope: !2292)
!2323 = !DILocation(line: 212, column: 3, scope: !2292)
!2324 = !DILocation(line: 216, column: 22, scope: !2309)
!2325 = distinct !DIAssignID()
!2326 = distinct !DIAssignID()
!2327 = !DILocation(line: 0, scope: !2309)
!2328 = !DILocalVariable(name: "fd", arg: 1, scope: !2329, file: !621, line: 444, type: !86)
!2329 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD", scope: !621, file: !621, line: 444, type: !622, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !624, retainedNodes: !2330)
!2330 = !{!2328, !2331, !2332}
!2331 = !DILocalVariable(name: "target", arg: 2, scope: !2329, file: !621, line: 444, type: !86)
!2332 = !DILocalVariable(name: "result", scope: !2329, file: !621, line: 446, type: !86)
!2333 = !DILocation(line: 0, scope: !2329, inlinedAt: !2334)
!2334 = distinct !DILocation(line: 217, column: 18, scope: !2309)
!2335 = !DILocation(line: 479, column: 12, scope: !2329, inlinedAt: !2334)
!2336 = !DILocation(line: 223, column: 22, scope: !2312)
!2337 = distinct !DIAssignID()
!2338 = distinct !DIAssignID()
!2339 = !DILocation(line: 0, scope: !2312)
!2340 = !DILocation(line: 0, scope: !620, inlinedAt: !2341)
!2341 = distinct !DILocation(line: 224, column: 18, scope: !2312)
!2342 = !DILocation(line: 507, column: 12, scope: !2343, inlinedAt: !2341)
!2343 = distinct !DILexicalBlock(scope: !620, file: !621, line: 507, column: 7)
!2344 = !DILocation(line: 507, column: 9, scope: !2343, inlinedAt: !2341)
!2345 = !DILocation(line: 507, column: 7, scope: !620, inlinedAt: !2341)
!2346 = !DILocation(line: 509, column: 16, scope: !2347, inlinedAt: !2341)
!2347 = distinct !DILexicalBlock(scope: !2343, file: !621, line: 508, column: 5)
!2348 = !DILocation(line: 510, column: 13, scope: !2349, inlinedAt: !2341)
!2349 = distinct !DILexicalBlock(scope: !2347, file: !621, line: 510, column: 11)
!2350 = !DILocation(line: 510, column: 23, scope: !2349, inlinedAt: !2341)
!2351 = !DILocation(line: 510, column: 26, scope: !2349, inlinedAt: !2341)
!2352 = !DILocation(line: 510, column: 32, scope: !2349, inlinedAt: !2341)
!2353 = !DILocation(line: 510, column: 11, scope: !2347, inlinedAt: !2341)
!2354 = !DILocation(line: 512, column: 30, scope: !2355, inlinedAt: !2341)
!2355 = distinct !DILexicalBlock(scope: !2349, file: !621, line: 511, column: 9)
!2356 = !DILocation(line: 528, column: 19, scope: !632, inlinedAt: !2341)
!2357 = !DILocation(line: 0, scope: !2329, inlinedAt: !2358)
!2358 = distinct !DILocation(line: 520, column: 20, scope: !2359, inlinedAt: !2341)
!2359 = distinct !DILexicalBlock(scope: !2349, file: !621, line: 519, column: 9)
!2360 = !DILocation(line: 479, column: 12, scope: !2329, inlinedAt: !2358)
!2361 = !DILocation(line: 521, column: 22, scope: !2362, inlinedAt: !2341)
!2362 = distinct !DILexicalBlock(scope: !2359, file: !621, line: 521, column: 15)
!2363 = !DILocation(line: 521, column: 15, scope: !2359, inlinedAt: !2341)
!2364 = !DILocation(line: 522, column: 32, scope: !2362, inlinedAt: !2341)
!2365 = !DILocation(line: 522, column: 13, scope: !2362, inlinedAt: !2341)
!2366 = !DILocation(line: 0, scope: !2329, inlinedAt: !2367)
!2367 = distinct !DILocation(line: 527, column: 14, scope: !2343, inlinedAt: !2341)
!2368 = !DILocation(line: 479, column: 12, scope: !2329, inlinedAt: !2367)
!2369 = !DILocation(line: 0, scope: !2343, inlinedAt: !2341)
!2370 = !DILocation(line: 528, column: 9, scope: !632, inlinedAt: !2341)
!2371 = !DILocation(line: 530, column: 19, scope: !631, inlinedAt: !2341)
!2372 = !DILocation(line: 0, scope: !631, inlinedAt: !2341)
!2373 = !DILocation(line: 531, column: 17, scope: !635, inlinedAt: !2341)
!2374 = !DILocation(line: 531, column: 21, scope: !635, inlinedAt: !2341)
!2375 = !DILocation(line: 531, column: 54, scope: !635, inlinedAt: !2341)
!2376 = !DILocation(line: 531, column: 24, scope: !635, inlinedAt: !2341)
!2377 = !DILocation(line: 531, column: 68, scope: !635, inlinedAt: !2341)
!2378 = !DILocation(line: 531, column: 11, scope: !631, inlinedAt: !2341)
!2379 = !DILocation(line: 533, column: 29, scope: !634, inlinedAt: !2341)
!2380 = !DILocation(line: 0, scope: !634, inlinedAt: !2341)
!2381 = !DILocation(line: 534, column: 11, scope: !634, inlinedAt: !2341)
!2382 = !DILocation(line: 535, column: 17, scope: !634, inlinedAt: !2341)
!2383 = !DILocation(line: 537, column: 9, scope: !634, inlinedAt: !2341)
!2384 = !DILocation(line: 329, column: 22, scope: !2315)
!2385 = !DILocation(line: 330, column: 13, scope: !2315)
!2386 = !DILocation(line: 418, column: 23, scope: !2314)
!2387 = distinct !DIAssignID()
!2388 = distinct !DIAssignID()
!2389 = !DILocation(line: 0, scope: !2314)
!2390 = !DILocation(line: 419, column: 24, scope: !2314)
!2391 = !DILocation(line: 421, column: 13, scope: !2315)
!2392 = !DILocation(line: 426, column: 25, scope: !2318)
!2393 = distinct !DIAssignID()
!2394 = distinct !DIAssignID()
!2395 = !DILocation(line: 0, scope: !2318)
!2396 = !DILocation(line: 427, column: 24, scope: !2318)
!2397 = !DILocation(line: 429, column: 13, scope: !2315)
!2398 = !DILocation(line: 0, scope: !2310)
!2399 = !DILocation(line: 438, column: 3, scope: !2292)
!2400 = !DILocation(line: 441, column: 1, scope: !2292)
!2401 = !DILocation(line: 440, column: 3, scope: !2292)
!2402 = distinct !DISubprogram(name: "fpurge", scope: !908, file: !908, line: 32, type: !2403, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !907, retainedNodes: !2439)
!2403 = !DISubroutineType(types: !2404)
!2404 = !{!86, !2405}
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !289, line: 7, baseType: !2407)
!2407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !291, line: 49, size: 1728, elements: !2408)
!2408 = !{!2409, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2421, !2422, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438}
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2407, file: !291, line: 51, baseType: !86, size: 32)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2407, file: !291, line: 54, baseType: !88, size: 64, offset: 64)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2407, file: !291, line: 55, baseType: !88, size: 64, offset: 128)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2407, file: !291, line: 56, baseType: !88, size: 64, offset: 192)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2407, file: !291, line: 57, baseType: !88, size: 64, offset: 256)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2407, file: !291, line: 58, baseType: !88, size: 64, offset: 320)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2407, file: !291, line: 59, baseType: !88, size: 64, offset: 384)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2407, file: !291, line: 60, baseType: !88, size: 64, offset: 448)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2407, file: !291, line: 61, baseType: !88, size: 64, offset: 512)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2407, file: !291, line: 64, baseType: !88, size: 64, offset: 576)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2407, file: !291, line: 65, baseType: !88, size: 64, offset: 640)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2407, file: !291, line: 66, baseType: !88, size: 64, offset: 704)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2407, file: !291, line: 68, baseType: !306, size: 64, offset: 768)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2407, file: !291, line: 70, baseType: !2423, size: 64, offset: 832)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2407, file: !291, line: 72, baseType: !86, size: 32, offset: 896)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2407, file: !291, line: 73, baseType: !86, size: 32, offset: 928)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2407, file: !291, line: 74, baseType: !313, size: 64, offset: 960)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2407, file: !291, line: 77, baseType: !145, size: 16, offset: 1024)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2407, file: !291, line: 78, baseType: !318, size: 8, offset: 1040)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2407, file: !291, line: 79, baseType: !197, size: 8, offset: 1048)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2407, file: !291, line: 81, baseType: !321, size: 64, offset: 1088)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2407, file: !291, line: 89, baseType: !324, size: 64, offset: 1152)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2407, file: !291, line: 91, baseType: !326, size: 64, offset: 1216)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2407, file: !291, line: 92, baseType: !329, size: 64, offset: 1280)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2407, file: !291, line: 93, baseType: !2423, size: 64, offset: 1344)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2407, file: !291, line: 94, baseType: !144, size: 64, offset: 1408)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2407, file: !291, line: 95, baseType: !146, size: 64, offset: 1472)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2407, file: !291, line: 96, baseType: !86, size: 32, offset: 1536)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2407, file: !291, line: 98, baseType: !226, size: 160, offset: 1568)
!2439 = !{!2440}
!2440 = !DILocalVariable(name: "fp", arg: 1, scope: !2402, file: !908, line: 32, type: !2405)
!2441 = !DILocation(line: 0, scope: !2402)
!2442 = !DILocation(line: 36, column: 3, scope: !2402)
!2443 = !DILocation(line: 38, column: 3, scope: !2402)
!2444 = !DISubprogram(name: "__fpurge", scope: !2445, file: !2445, line: 72, type: !2446, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2445 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!2446 = !DISubroutineType(types: !2447)
!2447 = !{null, !2405}
!2448 = distinct !DISubprogram(name: "full_write", scope: !910, file: !910, line: 58, type: !2449, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !909, retainedNodes: !2451)
!2449 = !DISubroutineType(types: !2450)
!2450 = !{!946, !86, !1216, !946}
!2451 = !{!2452, !2453, !2454, !2455, !2456, !2457}
!2452 = !DILocalVariable(name: "fd", arg: 1, scope: !2448, file: !910, line: 58, type: !86)
!2453 = !DILocalVariable(name: "buf", arg: 2, scope: !2448, file: !910, line: 58, type: !1216)
!2454 = !DILocalVariable(name: "count", arg: 3, scope: !2448, file: !910, line: 58, type: !946)
!2455 = !DILocalVariable(name: "total", scope: !2448, file: !910, line: 60, type: !946)
!2456 = !DILocalVariable(name: "ptr", scope: !2448, file: !910, line: 61, type: !149)
!2457 = !DILocalVariable(name: "n_rw", scope: !2458, file: !910, line: 65, type: !503)
!2458 = distinct !DILexicalBlock(scope: !2448, file: !910, line: 64, column: 5)
!2459 = !DILocation(line: 0, scope: !2448)
!2460 = !DILocation(line: 63, column: 16, scope: !2448)
!2461 = !DILocation(line: 63, column: 3, scope: !2448)
!2462 = !DILocation(line: 66, column: 11, scope: !2458)
!2463 = !DILocation(line: 65, column: 24, scope: !2458)
!2464 = !DILocation(line: 0, scope: !2458)
!2465 = !DILocation(line: 66, column: 16, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2458, file: !910, line: 66, column: 11)
!2467 = !DILocation(line: 68, column: 16, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2458, file: !910, line: 68, column: 11)
!2469 = !DILocation(line: 68, column: 11, scope: !2458)
!2470 = !DILocation(line: 70, column: 11, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2468, file: !910, line: 69, column: 9)
!2472 = !DILocation(line: 70, column: 17, scope: !2471)
!2473 = !DILocation(line: 71, column: 11, scope: !2471)
!2474 = !DILocation(line: 73, column: 13, scope: !2458)
!2475 = !DILocation(line: 74, column: 11, scope: !2458)
!2476 = !DILocation(line: 75, column: 13, scope: !2458)
!2477 = !DILocation(line: 78, column: 3, scope: !2448)
!2478 = distinct !DISubprogram(name: "getprogname", scope: !913, file: !913, line: 54, type: !2479, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !912)
!2479 = !DISubroutineType(types: !911)
!2480 = !DILocation(line: 58, column: 10, scope: !2478)
!2481 = !DILocation(line: 58, column: 3, scope: !2478)
!2482 = distinct !DISubprogram(name: "set_program_name", scope: !639, file: !639, line: 37, type: !1022, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !638, retainedNodes: !2483)
!2483 = !{!2484, !2485, !2486}
!2484 = !DILocalVariable(name: "argv0", arg: 1, scope: !2482, file: !639, line: 37, type: !149)
!2485 = !DILocalVariable(name: "slash", scope: !2482, file: !639, line: 44, type: !149)
!2486 = !DILocalVariable(name: "base", scope: !2482, file: !639, line: 45, type: !149)
!2487 = !DILocation(line: 0, scope: !2482)
!2488 = !DILocation(line: 44, column: 23, scope: !2482)
!2489 = !DILocation(line: 45, column: 22, scope: !2482)
!2490 = !DILocation(line: 46, column: 17, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2482, file: !639, line: 46, column: 7)
!2492 = !DILocation(line: 46, column: 9, scope: !2491)
!2493 = !DILocation(line: 46, column: 25, scope: !2491)
!2494 = !DILocation(line: 46, column: 40, scope: !2491)
!2495 = !DILocalVariable(name: "__s1", arg: 1, scope: !2496, file: !1084, line: 974, type: !1216)
!2496 = distinct !DISubprogram(name: "memeq", scope: !1084, file: !1084, line: 974, type: !2497, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !638, retainedNodes: !2499)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{!274, !1216, !1216, !146}
!2499 = !{!2495, !2500, !2501}
!2500 = !DILocalVariable(name: "__s2", arg: 2, scope: !2496, file: !1084, line: 974, type: !1216)
!2501 = !DILocalVariable(name: "__n", arg: 3, scope: !2496, file: !1084, line: 974, type: !146)
!2502 = !DILocation(line: 0, scope: !2496, inlinedAt: !2503)
!2503 = distinct !DILocation(line: 46, column: 28, scope: !2491)
!2504 = !DILocation(line: 976, column: 11, scope: !2496, inlinedAt: !2503)
!2505 = !DILocation(line: 976, column: 10, scope: !2496, inlinedAt: !2503)
!2506 = !DILocation(line: 46, column: 7, scope: !2482)
!2507 = !DILocation(line: 49, column: 11, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2509, file: !639, line: 49, column: 11)
!2509 = distinct !DILexicalBlock(scope: !2491, file: !639, line: 47, column: 5)
!2510 = !DILocation(line: 49, column: 36, scope: !2508)
!2511 = !DILocation(line: 49, column: 11, scope: !2509)
!2512 = !DILocation(line: 65, column: 16, scope: !2482)
!2513 = !DILocation(line: 71, column: 27, scope: !2482)
!2514 = !DILocation(line: 74, column: 33, scope: !2482)
!2515 = !DILocation(line: 76, column: 1, scope: !2482)
!2516 = !DISubprogram(name: "strrchr", scope: !1188, file: !1188, line: 273, type: !1203, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2517 = distinct !DIAssignID()
!2518 = !DILocation(line: 0, scope: !648)
!2519 = distinct !DIAssignID()
!2520 = !DILocation(line: 40, column: 29, scope: !648)
!2521 = !DILocation(line: 41, column: 19, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !648, file: !649, line: 41, column: 7)
!2523 = !DILocation(line: 41, column: 7, scope: !648)
!2524 = !DILocation(line: 47, column: 3, scope: !648)
!2525 = !DILocation(line: 48, column: 3, scope: !648)
!2526 = !DILocalVariable(name: "ps", arg: 1, scope: !2527, file: !2528, line: 1135, type: !2531)
!2527 = distinct !DISubprogram(name: "mbszero", scope: !2528, file: !2528, line: 1135, type: !2529, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !652, retainedNodes: !2532)
!2528 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2529 = !DISubroutineType(types: !2530)
!2530 = !{null, !2531}
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!2532 = !{!2526}
!2533 = !DILocation(line: 0, scope: !2527, inlinedAt: !2534)
!2534 = distinct !DILocation(line: 48, column: 18, scope: !648)
!2535 = !DILocalVariable(name: "__dest", arg: 1, scope: !2536, file: !1505, line: 57, type: !144)
!2536 = distinct !DISubprogram(name: "memset", scope: !1505, file: !1505, line: 57, type: !2537, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !652, retainedNodes: !2539)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{!144, !144, !86, !146}
!2539 = !{!2535, !2540, !2541}
!2540 = !DILocalVariable(name: "__ch", arg: 2, scope: !2536, file: !1505, line: 57, type: !86)
!2541 = !DILocalVariable(name: "__len", arg: 3, scope: !2536, file: !1505, line: 57, type: !146)
!2542 = !DILocation(line: 0, scope: !2536, inlinedAt: !2543)
!2543 = distinct !DILocation(line: 1137, column: 3, scope: !2527, inlinedAt: !2534)
!2544 = !DILocation(line: 59, column: 10, scope: !2536, inlinedAt: !2543)
!2545 = !DILocation(line: 49, column: 7, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !648, file: !649, line: 49, column: 7)
!2547 = !DILocation(line: 49, column: 39, scope: !2546)
!2548 = !DILocation(line: 49, column: 44, scope: !2546)
!2549 = !DILocation(line: 54, column: 1, scope: !648)
!2550 = !DISubprogram(name: "mbrtoc32", scope: !660, file: !660, line: 57, type: !2551, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{!146, !2553, !1062, !146, !2555}
!2553 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2554)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!2555 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2531)
!2556 = distinct !DISubprogram(name: "clone_quoting_options", scope: !679, file: !679, line: 113, type: !2557, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !2560)
!2557 = !DISubroutineType(types: !2558)
!2558 = !{!2559, !2559}
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!2560 = !{!2561, !2562, !2563}
!2561 = !DILocalVariable(name: "o", arg: 1, scope: !2556, file: !679, line: 113, type: !2559)
!2562 = !DILocalVariable(name: "saved_errno", scope: !2556, file: !679, line: 115, type: !86)
!2563 = !DILocalVariable(name: "p", scope: !2556, file: !679, line: 116, type: !2559)
!2564 = !DILocation(line: 0, scope: !2556)
!2565 = !DILocation(line: 115, column: 21, scope: !2556)
!2566 = !DILocation(line: 116, column: 40, scope: !2556)
!2567 = !DILocation(line: 116, column: 31, scope: !2556)
!2568 = !DILocation(line: 118, column: 9, scope: !2556)
!2569 = !DILocation(line: 119, column: 3, scope: !2556)
!2570 = distinct !DISubprogram(name: "get_quoting_style", scope: !679, file: !679, line: 124, type: !2571, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !2575)
!2571 = !DISubroutineType(types: !2572)
!2572 = !{!705, !2573}
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !720)
!2575 = !{!2576}
!2576 = !DILocalVariable(name: "o", arg: 1, scope: !2570, file: !679, line: 124, type: !2573)
!2577 = !DILocation(line: 0, scope: !2570)
!2578 = !DILocation(line: 126, column: 11, scope: !2570)
!2579 = !DILocation(line: 126, column: 46, scope: !2570)
!2580 = !{!2581, !1072, i64 0}
!2581 = !{!"quoting_options", !1072, i64 0, !1072, i64 4, !999, i64 8, !998, i64 40, !998, i64 48}
!2582 = !DILocation(line: 126, column: 3, scope: !2570)
!2583 = distinct !DISubprogram(name: "set_quoting_style", scope: !679, file: !679, line: 132, type: !2584, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !2586)
!2584 = !DISubroutineType(types: !2585)
!2585 = !{null, !2559, !705}
!2586 = !{!2587, !2588}
!2587 = !DILocalVariable(name: "o", arg: 1, scope: !2583, file: !679, line: 132, type: !2559)
!2588 = !DILocalVariable(name: "s", arg: 2, scope: !2583, file: !679, line: 132, type: !705)
!2589 = !DILocation(line: 0, scope: !2583)
!2590 = !DILocation(line: 134, column: 4, scope: !2583)
!2591 = !DILocation(line: 134, column: 45, scope: !2583)
!2592 = !DILocation(line: 135, column: 1, scope: !2583)
!2593 = distinct !DISubprogram(name: "set_char_quoting", scope: !679, file: !679, line: 143, type: !2594, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !2596)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{!86, !2559, !4, !86}
!2596 = !{!2597, !2598, !2599, !2600, !2601, !2603, !2604}
!2597 = !DILocalVariable(name: "o", arg: 1, scope: !2593, file: !679, line: 143, type: !2559)
!2598 = !DILocalVariable(name: "c", arg: 2, scope: !2593, file: !679, line: 143, type: !4)
!2599 = !DILocalVariable(name: "i", arg: 3, scope: !2593, file: !679, line: 143, type: !86)
!2600 = !DILocalVariable(name: "uc", scope: !2593, file: !679, line: 145, type: !151)
!2601 = !DILocalVariable(name: "p", scope: !2593, file: !679, line: 146, type: !2602)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!2603 = !DILocalVariable(name: "shift", scope: !2593, file: !679, line: 148, type: !86)
!2604 = !DILocalVariable(name: "r", scope: !2593, file: !679, line: 149, type: !98)
!2605 = !DILocation(line: 0, scope: !2593)
!2606 = !DILocation(line: 147, column: 6, scope: !2593)
!2607 = !DILocation(line: 147, column: 41, scope: !2593)
!2608 = !DILocation(line: 147, column: 62, scope: !2593)
!2609 = !DILocation(line: 147, column: 57, scope: !2593)
!2610 = !DILocation(line: 148, column: 15, scope: !2593)
!2611 = !DILocation(line: 149, column: 21, scope: !2593)
!2612 = !DILocation(line: 149, column: 24, scope: !2593)
!2613 = !DILocation(line: 149, column: 34, scope: !2593)
!2614 = !DILocation(line: 150, column: 19, scope: !2593)
!2615 = !DILocation(line: 150, column: 24, scope: !2593)
!2616 = !DILocation(line: 150, column: 6, scope: !2593)
!2617 = !DILocation(line: 151, column: 3, scope: !2593)
!2618 = distinct !DISubprogram(name: "set_quoting_flags", scope: !679, file: !679, line: 159, type: !2619, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !2621)
!2619 = !DISubroutineType(types: !2620)
!2620 = !{!86, !2559, !86}
!2621 = !{!2622, !2623, !2624}
!2622 = !DILocalVariable(name: "o", arg: 1, scope: !2618, file: !679, line: 159, type: !2559)
!2623 = !DILocalVariable(name: "i", arg: 2, scope: !2618, file: !679, line: 159, type: !86)
!2624 = !DILocalVariable(name: "r", scope: !2618, file: !679, line: 163, type: !86)
!2625 = !DILocation(line: 0, scope: !2618)
!2626 = !DILocation(line: 161, column: 8, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2618, file: !679, line: 161, column: 7)
!2628 = !DILocation(line: 161, column: 7, scope: !2618)
!2629 = !DILocation(line: 163, column: 14, scope: !2618)
!2630 = !{!2581, !1072, i64 4}
!2631 = !DILocation(line: 164, column: 12, scope: !2618)
!2632 = !DILocation(line: 165, column: 3, scope: !2618)
!2633 = distinct !DISubprogram(name: "set_custom_quoting", scope: !679, file: !679, line: 169, type: !2634, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !2636)
!2634 = !DISubroutineType(types: !2635)
!2635 = !{null, !2559, !149, !149}
!2636 = !{!2637, !2638, !2639}
!2637 = !DILocalVariable(name: "o", arg: 1, scope: !2633, file: !679, line: 169, type: !2559)
!2638 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2633, file: !679, line: 170, type: !149)
!2639 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2633, file: !679, line: 170, type: !149)
!2640 = !DILocation(line: 0, scope: !2633)
!2641 = !DILocation(line: 172, column: 8, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2633, file: !679, line: 172, column: 7)
!2643 = !DILocation(line: 172, column: 7, scope: !2633)
!2644 = !DILocation(line: 174, column: 12, scope: !2633)
!2645 = !DILocation(line: 175, column: 8, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2633, file: !679, line: 175, column: 7)
!2647 = !DILocation(line: 175, column: 19, scope: !2646)
!2648 = !DILocation(line: 176, column: 5, scope: !2646)
!2649 = !DILocation(line: 177, column: 6, scope: !2633)
!2650 = !DILocation(line: 177, column: 17, scope: !2633)
!2651 = !{!2581, !998, i64 40}
!2652 = !DILocation(line: 178, column: 6, scope: !2633)
!2653 = !DILocation(line: 178, column: 18, scope: !2633)
!2654 = !{!2581, !998, i64 48}
!2655 = !DILocation(line: 179, column: 1, scope: !2633)
!2656 = !DISubprogram(name: "abort", scope: !1192, file: !1192, line: 598, type: !616, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2657 = distinct !DISubprogram(name: "quotearg_buffer", scope: !679, file: !679, line: 774, type: !2658, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !2660)
!2658 = !DISubroutineType(types: !2659)
!2659 = !{!146, !88, !146, !149, !146, !2573}
!2660 = !{!2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668}
!2661 = !DILocalVariable(name: "buffer", arg: 1, scope: !2657, file: !679, line: 774, type: !88)
!2662 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2657, file: !679, line: 774, type: !146)
!2663 = !DILocalVariable(name: "arg", arg: 3, scope: !2657, file: !679, line: 775, type: !149)
!2664 = !DILocalVariable(name: "argsize", arg: 4, scope: !2657, file: !679, line: 775, type: !146)
!2665 = !DILocalVariable(name: "o", arg: 5, scope: !2657, file: !679, line: 776, type: !2573)
!2666 = !DILocalVariable(name: "p", scope: !2657, file: !679, line: 778, type: !2573)
!2667 = !DILocalVariable(name: "saved_errno", scope: !2657, file: !679, line: 779, type: !86)
!2668 = !DILocalVariable(name: "r", scope: !2657, file: !679, line: 780, type: !146)
!2669 = !DILocation(line: 0, scope: !2657)
!2670 = !DILocation(line: 778, column: 37, scope: !2657)
!2671 = !DILocation(line: 779, column: 21, scope: !2657)
!2672 = !DILocation(line: 781, column: 43, scope: !2657)
!2673 = !DILocation(line: 781, column: 53, scope: !2657)
!2674 = !DILocation(line: 781, column: 63, scope: !2657)
!2675 = !DILocation(line: 782, column: 43, scope: !2657)
!2676 = !DILocation(line: 782, column: 58, scope: !2657)
!2677 = !DILocation(line: 780, column: 14, scope: !2657)
!2678 = !DILocation(line: 783, column: 9, scope: !2657)
!2679 = !DILocation(line: 784, column: 3, scope: !2657)
!2680 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !679, file: !679, line: 251, type: !2681, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !2685)
!2681 = !DISubroutineType(types: !2682)
!2682 = !{!146, !88, !146, !149, !146, !705, !86, !2683, !149, !149}
!2683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2684, size: 64)
!2684 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!2685 = !{!2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2711, !2713, !2716, !2717, !2718, !2719, !2722, !2723, !2725, !2726, !2729, !2733, !2734, !2742, !2745, !2746, !2747}
!2686 = !DILocalVariable(name: "buffer", arg: 1, scope: !2680, file: !679, line: 251, type: !88)
!2687 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2680, file: !679, line: 251, type: !146)
!2688 = !DILocalVariable(name: "arg", arg: 3, scope: !2680, file: !679, line: 252, type: !149)
!2689 = !DILocalVariable(name: "argsize", arg: 4, scope: !2680, file: !679, line: 252, type: !146)
!2690 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2680, file: !679, line: 253, type: !705)
!2691 = !DILocalVariable(name: "flags", arg: 6, scope: !2680, file: !679, line: 253, type: !86)
!2692 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2680, file: !679, line: 254, type: !2683)
!2693 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2680, file: !679, line: 255, type: !149)
!2694 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2680, file: !679, line: 256, type: !149)
!2695 = !DILocalVariable(name: "unibyte_locale", scope: !2680, file: !679, line: 258, type: !274)
!2696 = !DILocalVariable(name: "len", scope: !2680, file: !679, line: 260, type: !146)
!2697 = !DILocalVariable(name: "orig_buffersize", scope: !2680, file: !679, line: 261, type: !146)
!2698 = !DILocalVariable(name: "quote_string", scope: !2680, file: !679, line: 262, type: !149)
!2699 = !DILocalVariable(name: "quote_string_len", scope: !2680, file: !679, line: 263, type: !146)
!2700 = !DILocalVariable(name: "backslash_escapes", scope: !2680, file: !679, line: 264, type: !274)
!2701 = !DILocalVariable(name: "elide_outer_quotes", scope: !2680, file: !679, line: 265, type: !274)
!2702 = !DILocalVariable(name: "encountered_single_quote", scope: !2680, file: !679, line: 266, type: !274)
!2703 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2680, file: !679, line: 267, type: !274)
!2704 = !DILabel(scope: !2680, name: "process_input", file: !679, line: 308)
!2705 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2680, file: !679, line: 309, type: !274)
!2706 = !DILocalVariable(name: "lq", scope: !2707, file: !679, line: 361, type: !149)
!2707 = distinct !DILexicalBlock(scope: !2708, file: !679, line: 361, column: 11)
!2708 = distinct !DILexicalBlock(scope: !2709, file: !679, line: 360, column: 13)
!2709 = distinct !DILexicalBlock(scope: !2710, file: !679, line: 333, column: 7)
!2710 = distinct !DILexicalBlock(scope: !2680, file: !679, line: 312, column: 5)
!2711 = !DILocalVariable(name: "i", scope: !2712, file: !679, line: 395, type: !146)
!2712 = distinct !DILexicalBlock(scope: !2680, file: !679, line: 395, column: 3)
!2713 = !DILocalVariable(name: "is_right_quote", scope: !2714, file: !679, line: 397, type: !274)
!2714 = distinct !DILexicalBlock(scope: !2715, file: !679, line: 396, column: 5)
!2715 = distinct !DILexicalBlock(scope: !2712, file: !679, line: 395, column: 3)
!2716 = !DILocalVariable(name: "escaping", scope: !2714, file: !679, line: 398, type: !274)
!2717 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2714, file: !679, line: 399, type: !274)
!2718 = !DILocalVariable(name: "c", scope: !2714, file: !679, line: 417, type: !151)
!2719 = !DILabel(scope: !2720, name: "c_and_shell_escape", file: !679, line: 502)
!2720 = distinct !DILexicalBlock(scope: !2721, file: !679, line: 478, column: 9)
!2721 = distinct !DILexicalBlock(scope: !2714, file: !679, line: 419, column: 9)
!2722 = !DILabel(scope: !2720, name: "c_escape", file: !679, line: 507)
!2723 = !DILocalVariable(name: "m", scope: !2724, file: !679, line: 598, type: !146)
!2724 = distinct !DILexicalBlock(scope: !2721, file: !679, line: 596, column: 11)
!2725 = !DILocalVariable(name: "printable", scope: !2724, file: !679, line: 600, type: !274)
!2726 = !DILocalVariable(name: "mbs", scope: !2727, file: !679, line: 609, type: !754)
!2727 = distinct !DILexicalBlock(scope: !2728, file: !679, line: 608, column: 15)
!2728 = distinct !DILexicalBlock(scope: !2724, file: !679, line: 602, column: 17)
!2729 = !DILocalVariable(name: "w", scope: !2730, file: !679, line: 618, type: !659)
!2730 = distinct !DILexicalBlock(scope: !2731, file: !679, line: 617, column: 19)
!2731 = distinct !DILexicalBlock(scope: !2732, file: !679, line: 616, column: 17)
!2732 = distinct !DILexicalBlock(scope: !2727, file: !679, line: 616, column: 17)
!2733 = !DILocalVariable(name: "bytes", scope: !2730, file: !679, line: 619, type: !146)
!2734 = !DILocalVariable(name: "j", scope: !2735, file: !679, line: 648, type: !146)
!2735 = distinct !DILexicalBlock(scope: !2736, file: !679, line: 648, column: 29)
!2736 = distinct !DILexicalBlock(scope: !2737, file: !679, line: 647, column: 27)
!2737 = distinct !DILexicalBlock(scope: !2738, file: !679, line: 645, column: 29)
!2738 = distinct !DILexicalBlock(scope: !2739, file: !679, line: 636, column: 23)
!2739 = distinct !DILexicalBlock(scope: !2740, file: !679, line: 628, column: 30)
!2740 = distinct !DILexicalBlock(scope: !2741, file: !679, line: 623, column: 30)
!2741 = distinct !DILexicalBlock(scope: !2730, file: !679, line: 621, column: 25)
!2742 = !DILocalVariable(name: "ilim", scope: !2743, file: !679, line: 674, type: !146)
!2743 = distinct !DILexicalBlock(scope: !2744, file: !679, line: 671, column: 15)
!2744 = distinct !DILexicalBlock(scope: !2724, file: !679, line: 670, column: 17)
!2745 = !DILabel(scope: !2714, name: "store_escape", file: !679, line: 709)
!2746 = !DILabel(scope: !2714, name: "store_c", file: !679, line: 712)
!2747 = !DILabel(scope: !2680, name: "force_outer_quoting_style", file: !679, line: 753)
!2748 = distinct !DIAssignID()
!2749 = distinct !DIAssignID()
!2750 = distinct !DIAssignID()
!2751 = distinct !DIAssignID()
!2752 = distinct !DIAssignID()
!2753 = !DILocation(line: 0, scope: !2727)
!2754 = distinct !DIAssignID()
!2755 = !DILocation(line: 0, scope: !2730)
!2756 = !DILocation(line: 0, scope: !2680)
!2757 = !DILocation(line: 258, column: 25, scope: !2680)
!2758 = !DILocation(line: 258, column: 36, scope: !2680)
!2759 = !DILocation(line: 267, column: 3, scope: !2680)
!2760 = !DILocation(line: 261, column: 10, scope: !2680)
!2761 = !DILocation(line: 262, column: 15, scope: !2680)
!2762 = !DILocation(line: 263, column: 10, scope: !2680)
!2763 = !DILocation(line: 308, column: 2, scope: !2680)
!2764 = !DILocation(line: 311, column: 3, scope: !2680)
!2765 = !DILocation(line: 318, column: 11, scope: !2710)
!2766 = !DILocation(line: 319, column: 9, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2768, file: !679, line: 319, column: 9)
!2768 = distinct !DILexicalBlock(scope: !2769, file: !679, line: 319, column: 9)
!2769 = distinct !DILexicalBlock(scope: !2710, file: !679, line: 318, column: 11)
!2770 = !DILocation(line: 319, column: 9, scope: !2768)
!2771 = !DILocation(line: 0, scope: !745, inlinedAt: !2772)
!2772 = distinct !DILocation(line: 357, column: 26, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2774, file: !679, line: 335, column: 11)
!2774 = distinct !DILexicalBlock(scope: !2709, file: !679, line: 334, column: 13)
!2775 = !DILocation(line: 199, column: 29, scope: !745, inlinedAt: !2772)
!2776 = !DILocation(line: 201, column: 19, scope: !2777, inlinedAt: !2772)
!2777 = distinct !DILexicalBlock(scope: !745, file: !679, line: 201, column: 7)
!2778 = !DILocation(line: 201, column: 7, scope: !745, inlinedAt: !2772)
!2779 = !DILocation(line: 229, column: 3, scope: !745, inlinedAt: !2772)
!2780 = !DILocation(line: 230, column: 3, scope: !745, inlinedAt: !2772)
!2781 = !DILocalVariable(name: "ps", arg: 1, scope: !2782, file: !2528, line: 1135, type: !2785)
!2782 = distinct !DISubprogram(name: "mbszero", scope: !2528, file: !2528, line: 1135, type: !2783, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !2786)
!2783 = !DISubroutineType(types: !2784)
!2784 = !{null, !2785}
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!2786 = !{!2781}
!2787 = !DILocation(line: 0, scope: !2782, inlinedAt: !2788)
!2788 = distinct !DILocation(line: 230, column: 18, scope: !745, inlinedAt: !2772)
!2789 = !DILocalVariable(name: "__dest", arg: 1, scope: !2790, file: !1505, line: 57, type: !144)
!2790 = distinct !DISubprogram(name: "memset", scope: !1505, file: !1505, line: 57, type: !2537, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !2791)
!2791 = !{!2789, !2792, !2793}
!2792 = !DILocalVariable(name: "__ch", arg: 2, scope: !2790, file: !1505, line: 57, type: !86)
!2793 = !DILocalVariable(name: "__len", arg: 3, scope: !2790, file: !1505, line: 57, type: !146)
!2794 = !DILocation(line: 0, scope: !2790, inlinedAt: !2795)
!2795 = distinct !DILocation(line: 1137, column: 3, scope: !2782, inlinedAt: !2788)
!2796 = !DILocation(line: 59, column: 10, scope: !2790, inlinedAt: !2795)
!2797 = !DILocation(line: 231, column: 7, scope: !2798, inlinedAt: !2772)
!2798 = distinct !DILexicalBlock(scope: !745, file: !679, line: 231, column: 7)
!2799 = !DILocation(line: 231, column: 40, scope: !2798, inlinedAt: !2772)
!2800 = !DILocation(line: 231, column: 45, scope: !2798, inlinedAt: !2772)
!2801 = !DILocation(line: 235, column: 1, scope: !745, inlinedAt: !2772)
!2802 = !DILocation(line: 0, scope: !745, inlinedAt: !2803)
!2803 = distinct !DILocation(line: 358, column: 27, scope: !2773)
!2804 = !DILocation(line: 199, column: 29, scope: !745, inlinedAt: !2803)
!2805 = !DILocation(line: 201, column: 19, scope: !2777, inlinedAt: !2803)
!2806 = !DILocation(line: 201, column: 7, scope: !745, inlinedAt: !2803)
!2807 = !DILocation(line: 229, column: 3, scope: !745, inlinedAt: !2803)
!2808 = !DILocation(line: 230, column: 3, scope: !745, inlinedAt: !2803)
!2809 = !DILocation(line: 0, scope: !2782, inlinedAt: !2810)
!2810 = distinct !DILocation(line: 230, column: 18, scope: !745, inlinedAt: !2803)
!2811 = !DILocation(line: 0, scope: !2790, inlinedAt: !2812)
!2812 = distinct !DILocation(line: 1137, column: 3, scope: !2782, inlinedAt: !2810)
!2813 = !DILocation(line: 59, column: 10, scope: !2790, inlinedAt: !2812)
!2814 = !DILocation(line: 231, column: 7, scope: !2798, inlinedAt: !2803)
!2815 = !DILocation(line: 231, column: 40, scope: !2798, inlinedAt: !2803)
!2816 = !DILocation(line: 231, column: 45, scope: !2798, inlinedAt: !2803)
!2817 = !DILocation(line: 235, column: 1, scope: !745, inlinedAt: !2803)
!2818 = !DILocation(line: 360, column: 13, scope: !2709)
!2819 = !DILocation(line: 0, scope: !2707)
!2820 = !DILocation(line: 361, column: 45, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2707, file: !679, line: 361, column: 11)
!2822 = !DILocation(line: 361, column: 11, scope: !2707)
!2823 = !DILocation(line: 362, column: 13, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2825, file: !679, line: 362, column: 13)
!2825 = distinct !DILexicalBlock(scope: !2821, file: !679, line: 362, column: 13)
!2826 = !DILocation(line: 362, column: 13, scope: !2825)
!2827 = !DILocation(line: 361, column: 52, scope: !2821)
!2828 = distinct !{!2828, !2822, !2829, !1118}
!2829 = !DILocation(line: 362, column: 13, scope: !2707)
!2830 = !DILocation(line: 365, column: 28, scope: !2709)
!2831 = !DILocation(line: 260, column: 10, scope: !2680)
!2832 = !DILocation(line: 367, column: 7, scope: !2710)
!2833 = !DILocation(line: 373, column: 7, scope: !2710)
!2834 = !DILocation(line: 381, column: 11, scope: !2710)
!2835 = !DILocation(line: 376, column: 11, scope: !2710)
!2836 = !DILocation(line: 382, column: 9, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !2838, file: !679, line: 382, column: 9)
!2838 = distinct !DILexicalBlock(scope: !2839, file: !679, line: 382, column: 9)
!2839 = distinct !DILexicalBlock(scope: !2710, file: !679, line: 381, column: 11)
!2840 = !DILocation(line: 382, column: 9, scope: !2838)
!2841 = !DILocation(line: 389, column: 7, scope: !2710)
!2842 = !DILocation(line: 392, column: 7, scope: !2710)
!2843 = !DILocation(line: 0, scope: !2712)
!2844 = !DILocation(line: 395, column: 8, scope: !2712)
!2845 = !DILocation(line: 395, scope: !2712)
!2846 = !DILocation(line: 395, column: 34, scope: !2715)
!2847 = !DILocation(line: 395, column: 26, scope: !2715)
!2848 = !DILocation(line: 395, column: 48, scope: !2715)
!2849 = !DILocation(line: 395, column: 55, scope: !2715)
!2850 = !DILocation(line: 395, column: 3, scope: !2712)
!2851 = !DILocation(line: 395, column: 67, scope: !2715)
!2852 = !DILocation(line: 0, scope: !2714)
!2853 = !DILocation(line: 402, column: 11, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2714, file: !679, line: 401, column: 11)
!2855 = !DILocation(line: 404, column: 17, scope: !2854)
!2856 = !DILocation(line: 405, column: 39, scope: !2854)
!2857 = !DILocation(line: 409, column: 32, scope: !2854)
!2858 = !DILocation(line: 405, column: 19, scope: !2854)
!2859 = !DILocation(line: 405, column: 15, scope: !2854)
!2860 = !DILocation(line: 410, column: 11, scope: !2854)
!2861 = !DILocation(line: 410, column: 25, scope: !2854)
!2862 = !DILocalVariable(name: "__s1", arg: 1, scope: !2863, file: !1084, line: 974, type: !1216)
!2863 = distinct !DISubprogram(name: "memeq", scope: !1084, file: !1084, line: 974, type: !2497, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !2864)
!2864 = !{!2862, !2865, !2866}
!2865 = !DILocalVariable(name: "__s2", arg: 2, scope: !2863, file: !1084, line: 974, type: !1216)
!2866 = !DILocalVariable(name: "__n", arg: 3, scope: !2863, file: !1084, line: 974, type: !146)
!2867 = !DILocation(line: 0, scope: !2863, inlinedAt: !2868)
!2868 = distinct !DILocation(line: 410, column: 14, scope: !2854)
!2869 = !DILocation(line: 976, column: 11, scope: !2863, inlinedAt: !2868)
!2870 = !DILocation(line: 976, column: 10, scope: !2863, inlinedAt: !2868)
!2871 = !DILocation(line: 401, column: 11, scope: !2714)
!2872 = !DILocation(line: 417, column: 25, scope: !2714)
!2873 = !DILocation(line: 418, column: 7, scope: !2714)
!2874 = !DILocation(line: 421, column: 15, scope: !2721)
!2875 = !DILocation(line: 423, column: 15, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2877, file: !679, line: 423, column: 15)
!2877 = distinct !DILexicalBlock(scope: !2878, file: !679, line: 422, column: 13)
!2878 = distinct !DILexicalBlock(scope: !2721, file: !679, line: 421, column: 15)
!2879 = !DILocation(line: 423, column: 15, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2876, file: !679, line: 423, column: 15)
!2881 = !DILocation(line: 423, column: 15, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2883, file: !679, line: 423, column: 15)
!2883 = distinct !DILexicalBlock(scope: !2884, file: !679, line: 423, column: 15)
!2884 = distinct !DILexicalBlock(scope: !2880, file: !679, line: 423, column: 15)
!2885 = !DILocation(line: 423, column: 15, scope: !2883)
!2886 = !DILocation(line: 423, column: 15, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2888, file: !679, line: 423, column: 15)
!2888 = distinct !DILexicalBlock(scope: !2884, file: !679, line: 423, column: 15)
!2889 = !DILocation(line: 423, column: 15, scope: !2888)
!2890 = !DILocation(line: 423, column: 15, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2892, file: !679, line: 423, column: 15)
!2892 = distinct !DILexicalBlock(scope: !2884, file: !679, line: 423, column: 15)
!2893 = !DILocation(line: 423, column: 15, scope: !2892)
!2894 = !DILocation(line: 423, column: 15, scope: !2884)
!2895 = !DILocation(line: 423, column: 15, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2897, file: !679, line: 423, column: 15)
!2897 = distinct !DILexicalBlock(scope: !2876, file: !679, line: 423, column: 15)
!2898 = !DILocation(line: 423, column: 15, scope: !2897)
!2899 = !DILocation(line: 431, column: 19, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2877, file: !679, line: 430, column: 19)
!2901 = !DILocation(line: 431, column: 24, scope: !2900)
!2902 = !DILocation(line: 431, column: 28, scope: !2900)
!2903 = !DILocation(line: 431, column: 38, scope: !2900)
!2904 = !DILocation(line: 431, column: 48, scope: !2900)
!2905 = !DILocation(line: 431, column: 59, scope: !2900)
!2906 = !DILocation(line: 433, column: 19, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2908, file: !679, line: 433, column: 19)
!2908 = distinct !DILexicalBlock(scope: !2909, file: !679, line: 433, column: 19)
!2909 = distinct !DILexicalBlock(scope: !2900, file: !679, line: 432, column: 17)
!2910 = !DILocation(line: 433, column: 19, scope: !2908)
!2911 = !DILocation(line: 434, column: 19, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2913, file: !679, line: 434, column: 19)
!2913 = distinct !DILexicalBlock(scope: !2909, file: !679, line: 434, column: 19)
!2914 = !DILocation(line: 434, column: 19, scope: !2913)
!2915 = !DILocation(line: 435, column: 17, scope: !2909)
!2916 = !DILocation(line: 442, column: 20, scope: !2878)
!2917 = !DILocation(line: 447, column: 11, scope: !2721)
!2918 = !DILocation(line: 450, column: 19, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2721, file: !679, line: 448, column: 13)
!2920 = !DILocation(line: 456, column: 19, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2919, file: !679, line: 455, column: 19)
!2922 = !DILocation(line: 456, column: 24, scope: !2921)
!2923 = !DILocation(line: 456, column: 28, scope: !2921)
!2924 = !DILocation(line: 456, column: 38, scope: !2921)
!2925 = !DILocation(line: 456, column: 41, scope: !2921)
!2926 = !DILocation(line: 456, column: 52, scope: !2921)
!2927 = !DILocation(line: 455, column: 19, scope: !2919)
!2928 = !DILocation(line: 457, column: 25, scope: !2921)
!2929 = !DILocation(line: 457, column: 17, scope: !2921)
!2930 = !DILocation(line: 464, column: 25, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2921, file: !679, line: 458, column: 19)
!2932 = !DILocation(line: 468, column: 21, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2934, file: !679, line: 468, column: 21)
!2934 = distinct !DILexicalBlock(scope: !2931, file: !679, line: 468, column: 21)
!2935 = !DILocation(line: 468, column: 21, scope: !2934)
!2936 = !DILocation(line: 469, column: 21, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2938, file: !679, line: 469, column: 21)
!2938 = distinct !DILexicalBlock(scope: !2931, file: !679, line: 469, column: 21)
!2939 = !DILocation(line: 469, column: 21, scope: !2938)
!2940 = !DILocation(line: 470, column: 21, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2942, file: !679, line: 470, column: 21)
!2942 = distinct !DILexicalBlock(scope: !2931, file: !679, line: 470, column: 21)
!2943 = !DILocation(line: 470, column: 21, scope: !2942)
!2944 = !DILocation(line: 471, column: 21, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2946, file: !679, line: 471, column: 21)
!2946 = distinct !DILexicalBlock(scope: !2931, file: !679, line: 471, column: 21)
!2947 = !DILocation(line: 471, column: 21, scope: !2946)
!2948 = !DILocation(line: 472, column: 21, scope: !2931)
!2949 = !DILocation(line: 482, column: 33, scope: !2720)
!2950 = !DILocation(line: 483, column: 33, scope: !2720)
!2951 = !DILocation(line: 485, column: 33, scope: !2720)
!2952 = !DILocation(line: 486, column: 33, scope: !2720)
!2953 = !DILocation(line: 487, column: 33, scope: !2720)
!2954 = !DILocation(line: 490, column: 17, scope: !2720)
!2955 = !DILocation(line: 492, column: 21, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2957, file: !679, line: 491, column: 15)
!2957 = distinct !DILexicalBlock(scope: !2720, file: !679, line: 490, column: 17)
!2958 = !DILocation(line: 499, column: 35, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2720, file: !679, line: 499, column: 17)
!2960 = !DILocation(line: 0, scope: !2720)
!2961 = !DILocation(line: 502, column: 11, scope: !2720)
!2962 = !DILocation(line: 504, column: 17, scope: !2963)
!2963 = distinct !DILexicalBlock(scope: !2720, file: !679, line: 503, column: 17)
!2964 = !DILocation(line: 507, column: 11, scope: !2720)
!2965 = !DILocation(line: 508, column: 17, scope: !2720)
!2966 = !DILocation(line: 517, column: 15, scope: !2721)
!2967 = !DILocation(line: 517, column: 40, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2721, file: !679, line: 517, column: 15)
!2969 = !DILocation(line: 517, column: 47, scope: !2968)
!2970 = !DILocation(line: 517, column: 18, scope: !2968)
!2971 = !DILocation(line: 521, column: 17, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2721, file: !679, line: 521, column: 15)
!2973 = !DILocation(line: 521, column: 15, scope: !2721)
!2974 = !DILocation(line: 525, column: 11, scope: !2721)
!2975 = !DILocation(line: 537, column: 15, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2721, file: !679, line: 536, column: 15)
!2977 = !DILocation(line: 536, column: 15, scope: !2721)
!2978 = !DILocation(line: 544, column: 15, scope: !2721)
!2979 = !DILocation(line: 546, column: 19, scope: !2980)
!2980 = distinct !DILexicalBlock(scope: !2981, file: !679, line: 545, column: 13)
!2981 = distinct !DILexicalBlock(scope: !2721, file: !679, line: 544, column: 15)
!2982 = !DILocation(line: 549, column: 19, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2980, file: !679, line: 549, column: 19)
!2984 = !DILocation(line: 549, column: 30, scope: !2983)
!2985 = !DILocation(line: 558, column: 15, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2987, file: !679, line: 558, column: 15)
!2987 = distinct !DILexicalBlock(scope: !2980, file: !679, line: 558, column: 15)
!2988 = !DILocation(line: 558, column: 15, scope: !2987)
!2989 = !DILocation(line: 559, column: 15, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2991, file: !679, line: 559, column: 15)
!2991 = distinct !DILexicalBlock(scope: !2980, file: !679, line: 559, column: 15)
!2992 = !DILocation(line: 559, column: 15, scope: !2991)
!2993 = !DILocation(line: 560, column: 15, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !2995, file: !679, line: 560, column: 15)
!2995 = distinct !DILexicalBlock(scope: !2980, file: !679, line: 560, column: 15)
!2996 = !DILocation(line: 560, column: 15, scope: !2995)
!2997 = !DILocation(line: 562, column: 13, scope: !2980)
!2998 = !DILocation(line: 602, column: 17, scope: !2724)
!2999 = !DILocation(line: 0, scope: !2724)
!3000 = !DILocation(line: 605, column: 29, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !2728, file: !679, line: 603, column: 15)
!3002 = !DILocation(line: 605, column: 41, scope: !3001)
!3003 = !DILocation(line: 606, column: 15, scope: !3001)
!3004 = !DILocation(line: 609, column: 17, scope: !2727)
!3005 = !DILocation(line: 0, scope: !2782, inlinedAt: !3006)
!3006 = distinct !DILocation(line: 609, column: 32, scope: !2727)
!3007 = !DILocation(line: 0, scope: !2790, inlinedAt: !3008)
!3008 = distinct !DILocation(line: 1137, column: 3, scope: !2782, inlinedAt: !3006)
!3009 = !DILocation(line: 59, column: 10, scope: !2790, inlinedAt: !3008)
!3010 = !DILocation(line: 613, column: 29, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !2727, file: !679, line: 613, column: 21)
!3012 = !DILocation(line: 613, column: 21, scope: !2727)
!3013 = !DILocation(line: 614, column: 29, scope: !3011)
!3014 = !DILocation(line: 614, column: 19, scope: !3011)
!3015 = !DILocation(line: 618, column: 21, scope: !2730)
!3016 = !DILocation(line: 620, column: 54, scope: !2730)
!3017 = !DILocation(line: 619, column: 36, scope: !2730)
!3018 = !DILocation(line: 621, column: 25, scope: !2730)
!3019 = !DILocation(line: 631, column: 38, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !2739, file: !679, line: 629, column: 23)
!3021 = !DILocation(line: 631, column: 48, scope: !3020)
!3022 = !DILocation(line: 631, column: 25, scope: !3020)
!3023 = !DILocation(line: 626, column: 25, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !2740, file: !679, line: 624, column: 23)
!3025 = !DILocation(line: 631, column: 51, scope: !3020)
!3026 = !DILocation(line: 632, column: 28, scope: !3020)
!3027 = !DILocation(line: 631, column: 34, scope: !3020)
!3028 = distinct !{!3028, !3022, !3026, !1118}
!3029 = !DILocation(line: 0, scope: !2735)
!3030 = !DILocation(line: 646, column: 29, scope: !2737)
!3031 = !DILocation(line: 648, column: 29, scope: !2735)
!3032 = !DILocation(line: 649, column: 39, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !2735, file: !679, line: 648, column: 29)
!3034 = !DILocation(line: 649, column: 31, scope: !3033)
!3035 = !DILocation(line: 648, column: 60, scope: !3033)
!3036 = !DILocation(line: 648, column: 50, scope: !3033)
!3037 = distinct !{!3037, !3031, !3038, !1118}
!3038 = !DILocation(line: 654, column: 33, scope: !2735)
!3039 = !DILocation(line: 657, column: 43, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !2738, file: !679, line: 657, column: 29)
!3041 = !DILocalVariable(name: "wc", arg: 1, scope: !3042, file: !3043, line: 865, type: !3046)
!3042 = distinct !DISubprogram(name: "c32isprint", scope: !3043, file: !3043, line: 865, type: !3044, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3048)
!3043 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!3044 = !DISubroutineType(types: !3045)
!3045 = !{!86, !3046}
!3046 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3047, line: 20, baseType: !98)
!3047 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3048 = !{!3041}
!3049 = !DILocation(line: 0, scope: !3042, inlinedAt: !3050)
!3050 = distinct !DILocation(line: 657, column: 31, scope: !3040)
!3051 = !DILocation(line: 871, column: 10, scope: !3042, inlinedAt: !3050)
!3052 = !DILocation(line: 657, column: 31, scope: !3040)
!3053 = !DILocation(line: 664, column: 23, scope: !2730)
!3054 = !DILocation(line: 665, column: 19, scope: !2731)
!3055 = !DILocation(line: 666, column: 15, scope: !2728)
!3056 = !DILocation(line: 753, column: 2, scope: !2680)
!3057 = !DILocation(line: 756, column: 51, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !2680, file: !679, line: 756, column: 7)
!3059 = !DILocation(line: 0, scope: !2728)
!3060 = !DILocation(line: 670, column: 19, scope: !2744)
!3061 = !DILocation(line: 670, column: 23, scope: !2744)
!3062 = !DILocation(line: 674, column: 33, scope: !2743)
!3063 = !DILocation(line: 0, scope: !2743)
!3064 = !DILocation(line: 676, column: 17, scope: !2743)
!3065 = !DILocation(line: 678, column: 43, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3067, file: !679, line: 678, column: 25)
!3067 = distinct !DILexicalBlock(scope: !3068, file: !679, line: 677, column: 19)
!3068 = distinct !DILexicalBlock(scope: !3069, file: !679, line: 676, column: 17)
!3069 = distinct !DILexicalBlock(scope: !2743, file: !679, line: 676, column: 17)
!3070 = !DILocation(line: 680, column: 25, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3072, file: !679, line: 680, column: 25)
!3072 = distinct !DILexicalBlock(scope: !3066, file: !679, line: 679, column: 23)
!3073 = !DILocation(line: 680, column: 25, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !3071, file: !679, line: 680, column: 25)
!3075 = !DILocation(line: 680, column: 25, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3077, file: !679, line: 680, column: 25)
!3077 = distinct !DILexicalBlock(scope: !3078, file: !679, line: 680, column: 25)
!3078 = distinct !DILexicalBlock(scope: !3074, file: !679, line: 680, column: 25)
!3079 = !DILocation(line: 680, column: 25, scope: !3077)
!3080 = !DILocation(line: 680, column: 25, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !3082, file: !679, line: 680, column: 25)
!3082 = distinct !DILexicalBlock(scope: !3078, file: !679, line: 680, column: 25)
!3083 = !DILocation(line: 680, column: 25, scope: !3082)
!3084 = !DILocation(line: 680, column: 25, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !3086, file: !679, line: 680, column: 25)
!3086 = distinct !DILexicalBlock(scope: !3078, file: !679, line: 680, column: 25)
!3087 = !DILocation(line: 680, column: 25, scope: !3086)
!3088 = !DILocation(line: 680, column: 25, scope: !3078)
!3089 = !DILocation(line: 680, column: 25, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3091, file: !679, line: 680, column: 25)
!3091 = distinct !DILexicalBlock(scope: !3071, file: !679, line: 680, column: 25)
!3092 = !DILocation(line: 680, column: 25, scope: !3091)
!3093 = !DILocation(line: 681, column: 25, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3095, file: !679, line: 681, column: 25)
!3095 = distinct !DILexicalBlock(scope: !3072, file: !679, line: 681, column: 25)
!3096 = !DILocation(line: 681, column: 25, scope: !3095)
!3097 = !DILocation(line: 682, column: 25, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !3099, file: !679, line: 682, column: 25)
!3099 = distinct !DILexicalBlock(scope: !3072, file: !679, line: 682, column: 25)
!3100 = !DILocation(line: 682, column: 25, scope: !3099)
!3101 = !DILocation(line: 683, column: 38, scope: !3072)
!3102 = !DILocation(line: 683, column: 33, scope: !3072)
!3103 = !DILocation(line: 684, column: 23, scope: !3072)
!3104 = !DILocation(line: 685, column: 30, scope: !3066)
!3105 = !DILocation(line: 687, column: 25, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !3107, file: !679, line: 687, column: 25)
!3107 = distinct !DILexicalBlock(scope: !3108, file: !679, line: 687, column: 25)
!3108 = distinct !DILexicalBlock(scope: !3109, file: !679, line: 686, column: 23)
!3109 = distinct !DILexicalBlock(scope: !3066, file: !679, line: 685, column: 30)
!3110 = !DILocation(line: 687, column: 25, scope: !3107)
!3111 = !DILocation(line: 689, column: 23, scope: !3108)
!3112 = !DILocation(line: 690, column: 35, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3067, file: !679, line: 690, column: 25)
!3114 = !DILocation(line: 690, column: 30, scope: !3113)
!3115 = !DILocation(line: 690, column: 25, scope: !3067)
!3116 = !DILocation(line: 692, column: 21, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !3118, file: !679, line: 692, column: 21)
!3118 = distinct !DILexicalBlock(scope: !3067, file: !679, line: 692, column: 21)
!3119 = !DILocation(line: 692, column: 21, scope: !3120)
!3120 = distinct !DILexicalBlock(scope: !3121, file: !679, line: 692, column: 21)
!3121 = distinct !DILexicalBlock(scope: !3122, file: !679, line: 692, column: 21)
!3122 = distinct !DILexicalBlock(scope: !3117, file: !679, line: 692, column: 21)
!3123 = !DILocation(line: 692, column: 21, scope: !3121)
!3124 = !DILocation(line: 692, column: 21, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !3126, file: !679, line: 692, column: 21)
!3126 = distinct !DILexicalBlock(scope: !3122, file: !679, line: 692, column: 21)
!3127 = !DILocation(line: 692, column: 21, scope: !3126)
!3128 = !DILocation(line: 692, column: 21, scope: !3122)
!3129 = !DILocation(line: 0, scope: !3067)
!3130 = !DILocation(line: 693, column: 21, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3132, file: !679, line: 693, column: 21)
!3132 = distinct !DILexicalBlock(scope: !3067, file: !679, line: 693, column: 21)
!3133 = !DILocation(line: 693, column: 21, scope: !3132)
!3134 = !DILocation(line: 694, column: 25, scope: !3067)
!3135 = !DILocation(line: 676, column: 17, scope: !3068)
!3136 = distinct !{!3136, !3137, !3138}
!3137 = !DILocation(line: 676, column: 17, scope: !3069)
!3138 = !DILocation(line: 695, column: 19, scope: !3069)
!3139 = !DILocation(line: 409, column: 30, scope: !2854)
!3140 = !DILocation(line: 702, column: 34, scope: !3141)
!3141 = distinct !DILexicalBlock(scope: !2714, file: !679, line: 702, column: 11)
!3142 = !DILocation(line: 704, column: 14, scope: !3141)
!3143 = !DILocation(line: 705, column: 14, scope: !3141)
!3144 = !DILocation(line: 705, column: 35, scope: !3141)
!3145 = !DILocation(line: 705, column: 17, scope: !3141)
!3146 = !DILocation(line: 705, column: 47, scope: !3141)
!3147 = !DILocation(line: 705, column: 65, scope: !3141)
!3148 = !DILocation(line: 706, column: 11, scope: !3141)
!3149 = !DILocation(line: 702, column: 11, scope: !2714)
!3150 = !DILocation(line: 395, column: 15, scope: !2712)
!3151 = !DILocation(line: 709, column: 5, scope: !2714)
!3152 = !DILocation(line: 710, column: 7, scope: !3153)
!3153 = distinct !DILexicalBlock(scope: !2714, file: !679, line: 710, column: 7)
!3154 = !DILocation(line: 710, column: 7, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !3153, file: !679, line: 710, column: 7)
!3156 = !DILocation(line: 710, column: 7, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !3158, file: !679, line: 710, column: 7)
!3158 = distinct !DILexicalBlock(scope: !3159, file: !679, line: 710, column: 7)
!3159 = distinct !DILexicalBlock(scope: !3155, file: !679, line: 710, column: 7)
!3160 = !DILocation(line: 710, column: 7, scope: !3158)
!3161 = !DILocation(line: 710, column: 7, scope: !3162)
!3162 = distinct !DILexicalBlock(scope: !3163, file: !679, line: 710, column: 7)
!3163 = distinct !DILexicalBlock(scope: !3159, file: !679, line: 710, column: 7)
!3164 = !DILocation(line: 710, column: 7, scope: !3163)
!3165 = !DILocation(line: 710, column: 7, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !3167, file: !679, line: 710, column: 7)
!3167 = distinct !DILexicalBlock(scope: !3159, file: !679, line: 710, column: 7)
!3168 = !DILocation(line: 710, column: 7, scope: !3167)
!3169 = !DILocation(line: 710, column: 7, scope: !3159)
!3170 = !DILocation(line: 710, column: 7, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !3172, file: !679, line: 710, column: 7)
!3172 = distinct !DILexicalBlock(scope: !3153, file: !679, line: 710, column: 7)
!3173 = !DILocation(line: 710, column: 7, scope: !3172)
!3174 = !DILocation(line: 712, column: 5, scope: !2714)
!3175 = !DILocation(line: 713, column: 7, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !3177, file: !679, line: 713, column: 7)
!3177 = distinct !DILexicalBlock(scope: !2714, file: !679, line: 713, column: 7)
!3178 = !DILocation(line: 417, column: 21, scope: !2714)
!3179 = !DILocation(line: 713, column: 7, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !3181, file: !679, line: 713, column: 7)
!3181 = distinct !DILexicalBlock(scope: !3182, file: !679, line: 713, column: 7)
!3182 = distinct !DILexicalBlock(scope: !3176, file: !679, line: 713, column: 7)
!3183 = !DILocation(line: 713, column: 7, scope: !3181)
!3184 = !DILocation(line: 713, column: 7, scope: !3185)
!3185 = distinct !DILexicalBlock(scope: !3186, file: !679, line: 713, column: 7)
!3186 = distinct !DILexicalBlock(scope: !3182, file: !679, line: 713, column: 7)
!3187 = !DILocation(line: 713, column: 7, scope: !3186)
!3188 = !DILocation(line: 713, column: 7, scope: !3182)
!3189 = !DILocation(line: 714, column: 7, scope: !3190)
!3190 = distinct !DILexicalBlock(scope: !3191, file: !679, line: 714, column: 7)
!3191 = distinct !DILexicalBlock(scope: !2714, file: !679, line: 714, column: 7)
!3192 = !DILocation(line: 714, column: 7, scope: !3191)
!3193 = !DILocation(line: 716, column: 11, scope: !2714)
!3194 = !DILocation(line: 718, column: 5, scope: !2715)
!3195 = !DILocation(line: 395, column: 82, scope: !2715)
!3196 = !DILocation(line: 395, column: 3, scope: !2715)
!3197 = distinct !{!3197, !2850, !3198, !1118}
!3198 = !DILocation(line: 718, column: 5, scope: !2712)
!3199 = !DILocation(line: 720, column: 11, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !2680, file: !679, line: 720, column: 7)
!3201 = !DILocation(line: 720, column: 16, scope: !3200)
!3202 = !DILocation(line: 728, column: 51, scope: !3203)
!3203 = distinct !DILexicalBlock(scope: !2680, file: !679, line: 728, column: 7)
!3204 = !DILocation(line: 731, column: 11, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !3203, file: !679, line: 730, column: 5)
!3206 = !DILocation(line: 732, column: 16, scope: !3207)
!3207 = distinct !DILexicalBlock(scope: !3205, file: !679, line: 731, column: 11)
!3208 = !DILocation(line: 732, column: 9, scope: !3207)
!3209 = !DILocation(line: 736, column: 18, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !3207, file: !679, line: 736, column: 16)
!3211 = !DILocation(line: 736, column: 29, scope: !3210)
!3212 = !DILocation(line: 745, column: 7, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !2680, file: !679, line: 745, column: 7)
!3214 = !DILocation(line: 745, column: 20, scope: !3213)
!3215 = !DILocation(line: 746, column: 12, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !3217, file: !679, line: 746, column: 5)
!3217 = distinct !DILexicalBlock(scope: !3213, file: !679, line: 746, column: 5)
!3218 = !DILocation(line: 746, column: 5, scope: !3217)
!3219 = !DILocation(line: 747, column: 7, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !3221, file: !679, line: 747, column: 7)
!3221 = distinct !DILexicalBlock(scope: !3216, file: !679, line: 747, column: 7)
!3222 = !DILocation(line: 747, column: 7, scope: !3221)
!3223 = !DILocation(line: 746, column: 39, scope: !3216)
!3224 = distinct !{!3224, !3218, !3225, !1118}
!3225 = !DILocation(line: 747, column: 7, scope: !3217)
!3226 = !DILocation(line: 749, column: 11, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !2680, file: !679, line: 749, column: 7)
!3228 = !DILocation(line: 749, column: 7, scope: !2680)
!3229 = !DILocation(line: 750, column: 5, scope: !3227)
!3230 = !DILocation(line: 750, column: 17, scope: !3227)
!3231 = !DILocation(line: 756, column: 21, scope: !3058)
!3232 = !DILocation(line: 760, column: 42, scope: !2680)
!3233 = !DILocation(line: 758, column: 10, scope: !2680)
!3234 = !DILocation(line: 758, column: 3, scope: !2680)
!3235 = !DILocation(line: 762, column: 1, scope: !2680)
!3236 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1192, file: !1192, line: 98, type: !3237, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3237 = !DISubroutineType(types: !916)
!3238 = !DISubprogram(name: "strlen", scope: !1188, file: !1188, line: 407, type: !3239, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3239 = !DISubroutineType(types: !3240)
!3240 = !{!148, !149}
!3241 = !DISubprogram(name: "iswprint", scope: !3242, file: !3242, line: 120, type: !3044, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3242 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3243 = distinct !DISubprogram(name: "quotearg_alloc", scope: !679, file: !679, line: 788, type: !3244, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3246)
!3244 = !DISubroutineType(types: !3245)
!3245 = !{!88, !149, !146, !2573}
!3246 = !{!3247, !3248, !3249}
!3247 = !DILocalVariable(name: "arg", arg: 1, scope: !3243, file: !679, line: 788, type: !149)
!3248 = !DILocalVariable(name: "argsize", arg: 2, scope: !3243, file: !679, line: 788, type: !146)
!3249 = !DILocalVariable(name: "o", arg: 3, scope: !3243, file: !679, line: 789, type: !2573)
!3250 = !DILocation(line: 0, scope: !3243)
!3251 = !DILocalVariable(name: "arg", arg: 1, scope: !3252, file: !679, line: 801, type: !149)
!3252 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !679, file: !679, line: 801, type: !3253, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3255)
!3253 = !DISubroutineType(types: !3254)
!3254 = !{!88, !149, !146, !933, !2573}
!3255 = !{!3251, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3263}
!3256 = !DILocalVariable(name: "argsize", arg: 2, scope: !3252, file: !679, line: 801, type: !146)
!3257 = !DILocalVariable(name: "size", arg: 3, scope: !3252, file: !679, line: 801, type: !933)
!3258 = !DILocalVariable(name: "o", arg: 4, scope: !3252, file: !679, line: 802, type: !2573)
!3259 = !DILocalVariable(name: "p", scope: !3252, file: !679, line: 804, type: !2573)
!3260 = !DILocalVariable(name: "saved_errno", scope: !3252, file: !679, line: 805, type: !86)
!3261 = !DILocalVariable(name: "flags", scope: !3252, file: !679, line: 807, type: !86)
!3262 = !DILocalVariable(name: "bufsize", scope: !3252, file: !679, line: 808, type: !146)
!3263 = !DILocalVariable(name: "buf", scope: !3252, file: !679, line: 812, type: !88)
!3264 = !DILocation(line: 0, scope: !3252, inlinedAt: !3265)
!3265 = distinct !DILocation(line: 791, column: 10, scope: !3243)
!3266 = !DILocation(line: 804, column: 37, scope: !3252, inlinedAt: !3265)
!3267 = !DILocation(line: 805, column: 21, scope: !3252, inlinedAt: !3265)
!3268 = !DILocation(line: 807, column: 18, scope: !3252, inlinedAt: !3265)
!3269 = !DILocation(line: 807, column: 24, scope: !3252, inlinedAt: !3265)
!3270 = !DILocation(line: 808, column: 72, scope: !3252, inlinedAt: !3265)
!3271 = !DILocation(line: 809, column: 56, scope: !3252, inlinedAt: !3265)
!3272 = !DILocation(line: 810, column: 49, scope: !3252, inlinedAt: !3265)
!3273 = !DILocation(line: 811, column: 49, scope: !3252, inlinedAt: !3265)
!3274 = !DILocation(line: 808, column: 20, scope: !3252, inlinedAt: !3265)
!3275 = !DILocation(line: 811, column: 62, scope: !3252, inlinedAt: !3265)
!3276 = !DILocation(line: 812, column: 15, scope: !3252, inlinedAt: !3265)
!3277 = !DILocation(line: 813, column: 60, scope: !3252, inlinedAt: !3265)
!3278 = !DILocation(line: 815, column: 32, scope: !3252, inlinedAt: !3265)
!3279 = !DILocation(line: 815, column: 47, scope: !3252, inlinedAt: !3265)
!3280 = !DILocation(line: 813, column: 3, scope: !3252, inlinedAt: !3265)
!3281 = !DILocation(line: 816, column: 9, scope: !3252, inlinedAt: !3265)
!3282 = !DILocation(line: 791, column: 3, scope: !3243)
!3283 = !DILocation(line: 0, scope: !3252)
!3284 = !DILocation(line: 804, column: 37, scope: !3252)
!3285 = !DILocation(line: 805, column: 21, scope: !3252)
!3286 = !DILocation(line: 807, column: 18, scope: !3252)
!3287 = !DILocation(line: 807, column: 27, scope: !3252)
!3288 = !DILocation(line: 807, column: 24, scope: !3252)
!3289 = !DILocation(line: 808, column: 72, scope: !3252)
!3290 = !DILocation(line: 809, column: 56, scope: !3252)
!3291 = !DILocation(line: 810, column: 49, scope: !3252)
!3292 = !DILocation(line: 811, column: 49, scope: !3252)
!3293 = !DILocation(line: 808, column: 20, scope: !3252)
!3294 = !DILocation(line: 811, column: 62, scope: !3252)
!3295 = !DILocation(line: 812, column: 15, scope: !3252)
!3296 = !DILocation(line: 813, column: 60, scope: !3252)
!3297 = !DILocation(line: 815, column: 32, scope: !3252)
!3298 = !DILocation(line: 815, column: 47, scope: !3252)
!3299 = !DILocation(line: 813, column: 3, scope: !3252)
!3300 = !DILocation(line: 816, column: 9, scope: !3252)
!3301 = !DILocation(line: 817, column: 7, scope: !3252)
!3302 = !DILocation(line: 818, column: 11, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !3252, file: !679, line: 817, column: 7)
!3304 = !{!1273, !1273, i64 0}
!3305 = !DILocation(line: 818, column: 5, scope: !3303)
!3306 = !DILocation(line: 819, column: 3, scope: !3252)
!3307 = distinct !DISubprogram(name: "quotearg_free", scope: !679, file: !679, line: 837, type: !616, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3308)
!3308 = !{!3309, !3310}
!3309 = !DILocalVariable(name: "sv", scope: !3307, file: !679, line: 839, type: !768)
!3310 = !DILocalVariable(name: "i", scope: !3311, file: !679, line: 840, type: !86)
!3311 = distinct !DILexicalBlock(scope: !3307, file: !679, line: 840, column: 3)
!3312 = !DILocation(line: 839, column: 24, scope: !3307)
!3313 = !DILocation(line: 0, scope: !3307)
!3314 = !DILocation(line: 0, scope: !3311)
!3315 = !DILocation(line: 840, column: 21, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3311, file: !679, line: 840, column: 3)
!3317 = !DILocation(line: 840, column: 3, scope: !3311)
!3318 = !DILocation(line: 842, column: 13, scope: !3319)
!3319 = distinct !DILexicalBlock(scope: !3307, file: !679, line: 842, column: 7)
!3320 = !{!3321, !998, i64 8}
!3321 = !{!"slotvec", !1273, i64 0, !998, i64 8}
!3322 = !DILocation(line: 842, column: 17, scope: !3319)
!3323 = !DILocation(line: 842, column: 7, scope: !3307)
!3324 = !DILocation(line: 841, column: 17, scope: !3316)
!3325 = !DILocation(line: 841, column: 5, scope: !3316)
!3326 = !DILocation(line: 840, column: 32, scope: !3316)
!3327 = distinct !{!3327, !3317, !3328, !1118}
!3328 = !DILocation(line: 841, column: 20, scope: !3311)
!3329 = !DILocation(line: 844, column: 7, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3319, file: !679, line: 843, column: 5)
!3331 = !DILocation(line: 845, column: 21, scope: !3330)
!3332 = !{!3321, !1273, i64 0}
!3333 = !DILocation(line: 846, column: 20, scope: !3330)
!3334 = !DILocation(line: 847, column: 5, scope: !3330)
!3335 = !DILocation(line: 848, column: 10, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3307, file: !679, line: 848, column: 7)
!3337 = !DILocation(line: 848, column: 7, scope: !3307)
!3338 = !DILocation(line: 850, column: 7, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3336, file: !679, line: 849, column: 5)
!3340 = !DILocation(line: 851, column: 15, scope: !3339)
!3341 = !DILocation(line: 852, column: 5, scope: !3339)
!3342 = !DILocation(line: 853, column: 10, scope: !3307)
!3343 = !DILocation(line: 854, column: 1, scope: !3307)
!3344 = distinct !DISubprogram(name: "quotearg_n", scope: !679, file: !679, line: 919, type: !1185, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3345)
!3345 = !{!3346, !3347}
!3346 = !DILocalVariable(name: "n", arg: 1, scope: !3344, file: !679, line: 919, type: !86)
!3347 = !DILocalVariable(name: "arg", arg: 2, scope: !3344, file: !679, line: 919, type: !149)
!3348 = !DILocation(line: 0, scope: !3344)
!3349 = !DILocation(line: 921, column: 10, scope: !3344)
!3350 = !DILocation(line: 921, column: 3, scope: !3344)
!3351 = distinct !DISubprogram(name: "quotearg_n_options", scope: !679, file: !679, line: 866, type: !3352, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3354)
!3352 = !DISubroutineType(types: !3353)
!3353 = !{!88, !86, !149, !146, !2573}
!3354 = !{!3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3365, !3366, !3368, !3369, !3370}
!3355 = !DILocalVariable(name: "n", arg: 1, scope: !3351, file: !679, line: 866, type: !86)
!3356 = !DILocalVariable(name: "arg", arg: 2, scope: !3351, file: !679, line: 866, type: !149)
!3357 = !DILocalVariable(name: "argsize", arg: 3, scope: !3351, file: !679, line: 866, type: !146)
!3358 = !DILocalVariable(name: "options", arg: 4, scope: !3351, file: !679, line: 867, type: !2573)
!3359 = !DILocalVariable(name: "saved_errno", scope: !3351, file: !679, line: 869, type: !86)
!3360 = !DILocalVariable(name: "sv", scope: !3351, file: !679, line: 871, type: !768)
!3361 = !DILocalVariable(name: "nslots_max", scope: !3351, file: !679, line: 873, type: !86)
!3362 = !DILocalVariable(name: "preallocated", scope: !3363, file: !679, line: 879, type: !274)
!3363 = distinct !DILexicalBlock(scope: !3364, file: !679, line: 878, column: 5)
!3364 = distinct !DILexicalBlock(scope: !3351, file: !679, line: 877, column: 7)
!3365 = !DILocalVariable(name: "new_nslots", scope: !3363, file: !679, line: 880, type: !946)
!3366 = !DILocalVariable(name: "size", scope: !3367, file: !679, line: 891, type: !146)
!3367 = distinct !DILexicalBlock(scope: !3351, file: !679, line: 890, column: 3)
!3368 = !DILocalVariable(name: "val", scope: !3367, file: !679, line: 892, type: !88)
!3369 = !DILocalVariable(name: "flags", scope: !3367, file: !679, line: 894, type: !86)
!3370 = !DILocalVariable(name: "qsize", scope: !3367, file: !679, line: 895, type: !146)
!3371 = distinct !DIAssignID()
!3372 = !DILocation(line: 0, scope: !3363)
!3373 = !DILocation(line: 0, scope: !3351)
!3374 = !DILocation(line: 869, column: 21, scope: !3351)
!3375 = !DILocation(line: 871, column: 24, scope: !3351)
!3376 = !DILocation(line: 874, column: 17, scope: !3377)
!3377 = distinct !DILexicalBlock(scope: !3351, file: !679, line: 874, column: 7)
!3378 = !DILocation(line: 875, column: 5, scope: !3377)
!3379 = !DILocation(line: 877, column: 7, scope: !3364)
!3380 = !DILocation(line: 877, column: 14, scope: !3364)
!3381 = !DILocation(line: 877, column: 7, scope: !3351)
!3382 = !DILocation(line: 879, column: 31, scope: !3363)
!3383 = !DILocation(line: 880, column: 7, scope: !3363)
!3384 = !DILocation(line: 880, column: 26, scope: !3363)
!3385 = !DILocation(line: 880, column: 13, scope: !3363)
!3386 = distinct !DIAssignID()
!3387 = !DILocation(line: 882, column: 31, scope: !3363)
!3388 = !DILocation(line: 883, column: 33, scope: !3363)
!3389 = !DILocation(line: 883, column: 42, scope: !3363)
!3390 = !DILocation(line: 883, column: 31, scope: !3363)
!3391 = !DILocation(line: 882, column: 22, scope: !3363)
!3392 = !DILocation(line: 882, column: 15, scope: !3363)
!3393 = !DILocation(line: 884, column: 11, scope: !3363)
!3394 = !DILocation(line: 885, column: 15, scope: !3395)
!3395 = distinct !DILexicalBlock(scope: !3363, file: !679, line: 884, column: 11)
!3396 = !{i64 0, i64 8, !3304, i64 8, i64 8, !997}
!3397 = !DILocation(line: 885, column: 9, scope: !3395)
!3398 = !DILocation(line: 886, column: 20, scope: !3363)
!3399 = !DILocation(line: 886, column: 18, scope: !3363)
!3400 = !DILocation(line: 886, column: 32, scope: !3363)
!3401 = !DILocation(line: 886, column: 43, scope: !3363)
!3402 = !DILocation(line: 886, column: 53, scope: !3363)
!3403 = !DILocation(line: 0, scope: !2790, inlinedAt: !3404)
!3404 = distinct !DILocation(line: 886, column: 7, scope: !3363)
!3405 = !DILocation(line: 59, column: 10, scope: !2790, inlinedAt: !3404)
!3406 = !DILocation(line: 887, column: 16, scope: !3363)
!3407 = !DILocation(line: 887, column: 14, scope: !3363)
!3408 = !DILocation(line: 888, column: 5, scope: !3364)
!3409 = !DILocation(line: 888, column: 5, scope: !3363)
!3410 = !DILocation(line: 891, column: 19, scope: !3367)
!3411 = !DILocation(line: 891, column: 25, scope: !3367)
!3412 = !DILocation(line: 0, scope: !3367)
!3413 = !DILocation(line: 892, column: 23, scope: !3367)
!3414 = !DILocation(line: 894, column: 26, scope: !3367)
!3415 = !DILocation(line: 894, column: 32, scope: !3367)
!3416 = !DILocation(line: 896, column: 55, scope: !3367)
!3417 = !DILocation(line: 897, column: 55, scope: !3367)
!3418 = !DILocation(line: 898, column: 55, scope: !3367)
!3419 = !DILocation(line: 899, column: 55, scope: !3367)
!3420 = !DILocation(line: 895, column: 20, scope: !3367)
!3421 = !DILocation(line: 901, column: 14, scope: !3422)
!3422 = distinct !DILexicalBlock(scope: !3367, file: !679, line: 901, column: 9)
!3423 = !DILocation(line: 901, column: 9, scope: !3367)
!3424 = !DILocation(line: 903, column: 35, scope: !3425)
!3425 = distinct !DILexicalBlock(scope: !3422, file: !679, line: 902, column: 7)
!3426 = !DILocation(line: 903, column: 20, scope: !3425)
!3427 = !DILocation(line: 904, column: 17, scope: !3428)
!3428 = distinct !DILexicalBlock(scope: !3425, file: !679, line: 904, column: 13)
!3429 = !DILocation(line: 904, column: 13, scope: !3425)
!3430 = !DILocation(line: 905, column: 11, scope: !3428)
!3431 = !DILocation(line: 906, column: 27, scope: !3425)
!3432 = !DILocation(line: 906, column: 19, scope: !3425)
!3433 = !DILocation(line: 907, column: 69, scope: !3425)
!3434 = !DILocation(line: 909, column: 44, scope: !3425)
!3435 = !DILocation(line: 910, column: 44, scope: !3425)
!3436 = !DILocation(line: 907, column: 9, scope: !3425)
!3437 = !DILocation(line: 911, column: 7, scope: !3425)
!3438 = !DILocation(line: 913, column: 11, scope: !3367)
!3439 = !DILocation(line: 914, column: 5, scope: !3367)
!3440 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !679, file: !679, line: 925, type: !3441, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3443)
!3441 = !DISubroutineType(types: !3442)
!3442 = !{!88, !86, !149, !146}
!3443 = !{!3444, !3445, !3446}
!3444 = !DILocalVariable(name: "n", arg: 1, scope: !3440, file: !679, line: 925, type: !86)
!3445 = !DILocalVariable(name: "arg", arg: 2, scope: !3440, file: !679, line: 925, type: !149)
!3446 = !DILocalVariable(name: "argsize", arg: 3, scope: !3440, file: !679, line: 925, type: !146)
!3447 = !DILocation(line: 0, scope: !3440)
!3448 = !DILocation(line: 927, column: 10, scope: !3440)
!3449 = !DILocation(line: 927, column: 3, scope: !3440)
!3450 = distinct !DISubprogram(name: "quotearg", scope: !679, file: !679, line: 931, type: !1194, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3451)
!3451 = !{!3452}
!3452 = !DILocalVariable(name: "arg", arg: 1, scope: !3450, file: !679, line: 931, type: !149)
!3453 = !DILocation(line: 0, scope: !3450)
!3454 = !DILocation(line: 0, scope: !3344, inlinedAt: !3455)
!3455 = distinct !DILocation(line: 933, column: 10, scope: !3450)
!3456 = !DILocation(line: 921, column: 10, scope: !3344, inlinedAt: !3455)
!3457 = !DILocation(line: 933, column: 3, scope: !3450)
!3458 = distinct !DISubprogram(name: "quotearg_mem", scope: !679, file: !679, line: 937, type: !3459, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3461)
!3459 = !DISubroutineType(types: !3460)
!3460 = !{!88, !149, !146}
!3461 = !{!3462, !3463}
!3462 = !DILocalVariable(name: "arg", arg: 1, scope: !3458, file: !679, line: 937, type: !149)
!3463 = !DILocalVariable(name: "argsize", arg: 2, scope: !3458, file: !679, line: 937, type: !146)
!3464 = !DILocation(line: 0, scope: !3458)
!3465 = !DILocation(line: 0, scope: !3440, inlinedAt: !3466)
!3466 = distinct !DILocation(line: 939, column: 10, scope: !3458)
!3467 = !DILocation(line: 927, column: 10, scope: !3440, inlinedAt: !3466)
!3468 = !DILocation(line: 939, column: 3, scope: !3458)
!3469 = distinct !DISubprogram(name: "quotearg_n_style", scope: !679, file: !679, line: 943, type: !3470, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3472)
!3470 = !DISubroutineType(types: !3471)
!3471 = !{!88, !86, !705, !149}
!3472 = !{!3473, !3474, !3475, !3476}
!3473 = !DILocalVariable(name: "n", arg: 1, scope: !3469, file: !679, line: 943, type: !86)
!3474 = !DILocalVariable(name: "s", arg: 2, scope: !3469, file: !679, line: 943, type: !705)
!3475 = !DILocalVariable(name: "arg", arg: 3, scope: !3469, file: !679, line: 943, type: !149)
!3476 = !DILocalVariable(name: "o", scope: !3469, file: !679, line: 945, type: !2574)
!3477 = distinct !DIAssignID()
!3478 = !DILocation(line: 0, scope: !3469)
!3479 = !DILocation(line: 945, column: 3, scope: !3469)
!3480 = !{!3481}
!3481 = distinct !{!3481, !3482, !"quoting_options_from_style: argument 0"}
!3482 = distinct !{!3482, !"quoting_options_from_style"}
!3483 = !DILocation(line: 945, column: 36, scope: !3469)
!3484 = !DILocalVariable(name: "style", arg: 1, scope: !3485, file: !679, line: 183, type: !705)
!3485 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !679, file: !679, line: 183, type: !3486, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3488)
!3486 = !DISubroutineType(types: !3487)
!3487 = !{!720, !705}
!3488 = !{!3484, !3489}
!3489 = !DILocalVariable(name: "o", scope: !3485, file: !679, line: 185, type: !720)
!3490 = !DILocation(line: 0, scope: !3485, inlinedAt: !3491)
!3491 = distinct !DILocation(line: 945, column: 36, scope: !3469)
!3492 = !DILocation(line: 185, column: 26, scope: !3485, inlinedAt: !3491)
!3493 = distinct !DIAssignID()
!3494 = !DILocation(line: 186, column: 13, scope: !3495, inlinedAt: !3491)
!3495 = distinct !DILexicalBlock(scope: !3485, file: !679, line: 186, column: 7)
!3496 = !DILocation(line: 186, column: 7, scope: !3485, inlinedAt: !3491)
!3497 = !DILocation(line: 187, column: 5, scope: !3495, inlinedAt: !3491)
!3498 = !DILocation(line: 188, column: 11, scope: !3485, inlinedAt: !3491)
!3499 = distinct !DIAssignID()
!3500 = !DILocation(line: 946, column: 10, scope: !3469)
!3501 = !DILocation(line: 947, column: 1, scope: !3469)
!3502 = !DILocation(line: 946, column: 3, scope: !3469)
!3503 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !679, file: !679, line: 950, type: !3504, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3506)
!3504 = !DISubroutineType(types: !3505)
!3505 = !{!88, !86, !705, !149, !146}
!3506 = !{!3507, !3508, !3509, !3510, !3511}
!3507 = !DILocalVariable(name: "n", arg: 1, scope: !3503, file: !679, line: 950, type: !86)
!3508 = !DILocalVariable(name: "s", arg: 2, scope: !3503, file: !679, line: 950, type: !705)
!3509 = !DILocalVariable(name: "arg", arg: 3, scope: !3503, file: !679, line: 951, type: !149)
!3510 = !DILocalVariable(name: "argsize", arg: 4, scope: !3503, file: !679, line: 951, type: !146)
!3511 = !DILocalVariable(name: "o", scope: !3503, file: !679, line: 953, type: !2574)
!3512 = distinct !DIAssignID()
!3513 = !DILocation(line: 0, scope: !3503)
!3514 = !DILocation(line: 953, column: 3, scope: !3503)
!3515 = !{!3516}
!3516 = distinct !{!3516, !3517, !"quoting_options_from_style: argument 0"}
!3517 = distinct !{!3517, !"quoting_options_from_style"}
!3518 = !DILocation(line: 953, column: 36, scope: !3503)
!3519 = !DILocation(line: 0, scope: !3485, inlinedAt: !3520)
!3520 = distinct !DILocation(line: 953, column: 36, scope: !3503)
!3521 = !DILocation(line: 185, column: 26, scope: !3485, inlinedAt: !3520)
!3522 = distinct !DIAssignID()
!3523 = !DILocation(line: 186, column: 13, scope: !3495, inlinedAt: !3520)
!3524 = !DILocation(line: 186, column: 7, scope: !3485, inlinedAt: !3520)
!3525 = !DILocation(line: 187, column: 5, scope: !3495, inlinedAt: !3520)
!3526 = !DILocation(line: 188, column: 11, scope: !3485, inlinedAt: !3520)
!3527 = distinct !DIAssignID()
!3528 = !DILocation(line: 954, column: 10, scope: !3503)
!3529 = !DILocation(line: 955, column: 1, scope: !3503)
!3530 = !DILocation(line: 954, column: 3, scope: !3503)
!3531 = distinct !DISubprogram(name: "quotearg_style", scope: !679, file: !679, line: 958, type: !3532, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3534)
!3532 = !DISubroutineType(types: !3533)
!3533 = !{!88, !705, !149}
!3534 = !{!3535, !3536}
!3535 = !DILocalVariable(name: "s", arg: 1, scope: !3531, file: !679, line: 958, type: !705)
!3536 = !DILocalVariable(name: "arg", arg: 2, scope: !3531, file: !679, line: 958, type: !149)
!3537 = distinct !DIAssignID()
!3538 = !DILocation(line: 0, scope: !3531)
!3539 = !DILocation(line: 0, scope: !3469, inlinedAt: !3540)
!3540 = distinct !DILocation(line: 960, column: 10, scope: !3531)
!3541 = !DILocation(line: 945, column: 3, scope: !3469, inlinedAt: !3540)
!3542 = !{!3543}
!3543 = distinct !{!3543, !3544, !"quoting_options_from_style: argument 0"}
!3544 = distinct !{!3544, !"quoting_options_from_style"}
!3545 = !DILocation(line: 945, column: 36, scope: !3469, inlinedAt: !3540)
!3546 = !DILocation(line: 0, scope: !3485, inlinedAt: !3547)
!3547 = distinct !DILocation(line: 945, column: 36, scope: !3469, inlinedAt: !3540)
!3548 = !DILocation(line: 185, column: 26, scope: !3485, inlinedAt: !3547)
!3549 = distinct !DIAssignID()
!3550 = !DILocation(line: 186, column: 13, scope: !3495, inlinedAt: !3547)
!3551 = !DILocation(line: 186, column: 7, scope: !3485, inlinedAt: !3547)
!3552 = !DILocation(line: 187, column: 5, scope: !3495, inlinedAt: !3547)
!3553 = !DILocation(line: 188, column: 11, scope: !3485, inlinedAt: !3547)
!3554 = distinct !DIAssignID()
!3555 = !DILocation(line: 946, column: 10, scope: !3469, inlinedAt: !3540)
!3556 = !DILocation(line: 947, column: 1, scope: !3469, inlinedAt: !3540)
!3557 = !DILocation(line: 960, column: 3, scope: !3531)
!3558 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !679, file: !679, line: 964, type: !3559, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3561)
!3559 = !DISubroutineType(types: !3560)
!3560 = !{!88, !705, !149, !146}
!3561 = !{!3562, !3563, !3564}
!3562 = !DILocalVariable(name: "s", arg: 1, scope: !3558, file: !679, line: 964, type: !705)
!3563 = !DILocalVariable(name: "arg", arg: 2, scope: !3558, file: !679, line: 964, type: !149)
!3564 = !DILocalVariable(name: "argsize", arg: 3, scope: !3558, file: !679, line: 964, type: !146)
!3565 = distinct !DIAssignID()
!3566 = !DILocation(line: 0, scope: !3558)
!3567 = !DILocation(line: 0, scope: !3503, inlinedAt: !3568)
!3568 = distinct !DILocation(line: 966, column: 10, scope: !3558)
!3569 = !DILocation(line: 953, column: 3, scope: !3503, inlinedAt: !3568)
!3570 = !{!3571}
!3571 = distinct !{!3571, !3572, !"quoting_options_from_style: argument 0"}
!3572 = distinct !{!3572, !"quoting_options_from_style"}
!3573 = !DILocation(line: 953, column: 36, scope: !3503, inlinedAt: !3568)
!3574 = !DILocation(line: 0, scope: !3485, inlinedAt: !3575)
!3575 = distinct !DILocation(line: 953, column: 36, scope: !3503, inlinedAt: !3568)
!3576 = !DILocation(line: 185, column: 26, scope: !3485, inlinedAt: !3575)
!3577 = distinct !DIAssignID()
!3578 = !DILocation(line: 186, column: 13, scope: !3495, inlinedAt: !3575)
!3579 = !DILocation(line: 186, column: 7, scope: !3485, inlinedAt: !3575)
!3580 = !DILocation(line: 187, column: 5, scope: !3495, inlinedAt: !3575)
!3581 = !DILocation(line: 188, column: 11, scope: !3485, inlinedAt: !3575)
!3582 = distinct !DIAssignID()
!3583 = !DILocation(line: 954, column: 10, scope: !3503, inlinedAt: !3568)
!3584 = !DILocation(line: 955, column: 1, scope: !3503, inlinedAt: !3568)
!3585 = !DILocation(line: 966, column: 3, scope: !3558)
!3586 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !679, file: !679, line: 970, type: !3587, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3589)
!3587 = !DISubroutineType(types: !3588)
!3588 = !{!88, !149, !146, !4}
!3589 = !{!3590, !3591, !3592, !3593}
!3590 = !DILocalVariable(name: "arg", arg: 1, scope: !3586, file: !679, line: 970, type: !149)
!3591 = !DILocalVariable(name: "argsize", arg: 2, scope: !3586, file: !679, line: 970, type: !146)
!3592 = !DILocalVariable(name: "ch", arg: 3, scope: !3586, file: !679, line: 970, type: !4)
!3593 = !DILocalVariable(name: "options", scope: !3586, file: !679, line: 972, type: !720)
!3594 = distinct !DIAssignID()
!3595 = !DILocation(line: 0, scope: !3586)
!3596 = !DILocation(line: 972, column: 3, scope: !3586)
!3597 = !DILocation(line: 973, column: 13, scope: !3586)
!3598 = !{i64 0, i64 4, !1071, i64 4, i64 4, !1071, i64 8, i64 32, !1080, i64 40, i64 8, !997, i64 48, i64 8, !997}
!3599 = distinct !DIAssignID()
!3600 = !DILocation(line: 0, scope: !2593, inlinedAt: !3601)
!3601 = distinct !DILocation(line: 974, column: 3, scope: !3586)
!3602 = !DILocation(line: 147, column: 41, scope: !2593, inlinedAt: !3601)
!3603 = !DILocation(line: 147, column: 62, scope: !2593, inlinedAt: !3601)
!3604 = !DILocation(line: 147, column: 57, scope: !2593, inlinedAt: !3601)
!3605 = !DILocation(line: 148, column: 15, scope: !2593, inlinedAt: !3601)
!3606 = !DILocation(line: 149, column: 21, scope: !2593, inlinedAt: !3601)
!3607 = !DILocation(line: 149, column: 24, scope: !2593, inlinedAt: !3601)
!3608 = !DILocation(line: 150, column: 19, scope: !2593, inlinedAt: !3601)
!3609 = !DILocation(line: 150, column: 24, scope: !2593, inlinedAt: !3601)
!3610 = !DILocation(line: 150, column: 6, scope: !2593, inlinedAt: !3601)
!3611 = !DILocation(line: 975, column: 10, scope: !3586)
!3612 = !DILocation(line: 976, column: 1, scope: !3586)
!3613 = !DILocation(line: 975, column: 3, scope: !3586)
!3614 = distinct !DISubprogram(name: "quotearg_char", scope: !679, file: !679, line: 979, type: !3615, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3617)
!3615 = !DISubroutineType(types: !3616)
!3616 = !{!88, !149, !4}
!3617 = !{!3618, !3619}
!3618 = !DILocalVariable(name: "arg", arg: 1, scope: !3614, file: !679, line: 979, type: !149)
!3619 = !DILocalVariable(name: "ch", arg: 2, scope: !3614, file: !679, line: 979, type: !4)
!3620 = distinct !DIAssignID()
!3621 = !DILocation(line: 0, scope: !3614)
!3622 = !DILocation(line: 0, scope: !3586, inlinedAt: !3623)
!3623 = distinct !DILocation(line: 981, column: 10, scope: !3614)
!3624 = !DILocation(line: 972, column: 3, scope: !3586, inlinedAt: !3623)
!3625 = !DILocation(line: 973, column: 13, scope: !3586, inlinedAt: !3623)
!3626 = distinct !DIAssignID()
!3627 = !DILocation(line: 0, scope: !2593, inlinedAt: !3628)
!3628 = distinct !DILocation(line: 974, column: 3, scope: !3586, inlinedAt: !3623)
!3629 = !DILocation(line: 147, column: 41, scope: !2593, inlinedAt: !3628)
!3630 = !DILocation(line: 147, column: 62, scope: !2593, inlinedAt: !3628)
!3631 = !DILocation(line: 147, column: 57, scope: !2593, inlinedAt: !3628)
!3632 = !DILocation(line: 148, column: 15, scope: !2593, inlinedAt: !3628)
!3633 = !DILocation(line: 149, column: 21, scope: !2593, inlinedAt: !3628)
!3634 = !DILocation(line: 149, column: 24, scope: !2593, inlinedAt: !3628)
!3635 = !DILocation(line: 150, column: 19, scope: !2593, inlinedAt: !3628)
!3636 = !DILocation(line: 150, column: 24, scope: !2593, inlinedAt: !3628)
!3637 = !DILocation(line: 150, column: 6, scope: !2593, inlinedAt: !3628)
!3638 = !DILocation(line: 975, column: 10, scope: !3586, inlinedAt: !3623)
!3639 = !DILocation(line: 976, column: 1, scope: !3586, inlinedAt: !3623)
!3640 = !DILocation(line: 981, column: 3, scope: !3614)
!3641 = distinct !DISubprogram(name: "quotearg_colon", scope: !679, file: !679, line: 985, type: !1194, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3642)
!3642 = !{!3643}
!3643 = !DILocalVariable(name: "arg", arg: 1, scope: !3641, file: !679, line: 985, type: !149)
!3644 = distinct !DIAssignID()
!3645 = !DILocation(line: 0, scope: !3641)
!3646 = !DILocation(line: 0, scope: !3614, inlinedAt: !3647)
!3647 = distinct !DILocation(line: 987, column: 10, scope: !3641)
!3648 = !DILocation(line: 0, scope: !3586, inlinedAt: !3649)
!3649 = distinct !DILocation(line: 981, column: 10, scope: !3614, inlinedAt: !3647)
!3650 = !DILocation(line: 972, column: 3, scope: !3586, inlinedAt: !3649)
!3651 = !DILocation(line: 973, column: 13, scope: !3586, inlinedAt: !3649)
!3652 = distinct !DIAssignID()
!3653 = !DILocation(line: 0, scope: !2593, inlinedAt: !3654)
!3654 = distinct !DILocation(line: 974, column: 3, scope: !3586, inlinedAt: !3649)
!3655 = !DILocation(line: 147, column: 57, scope: !2593, inlinedAt: !3654)
!3656 = !DILocation(line: 149, column: 21, scope: !2593, inlinedAt: !3654)
!3657 = !DILocation(line: 150, column: 6, scope: !2593, inlinedAt: !3654)
!3658 = !DILocation(line: 975, column: 10, scope: !3586, inlinedAt: !3649)
!3659 = !DILocation(line: 976, column: 1, scope: !3586, inlinedAt: !3649)
!3660 = !DILocation(line: 987, column: 3, scope: !3641)
!3661 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !679, file: !679, line: 991, type: !3459, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3662)
!3662 = !{!3663, !3664}
!3663 = !DILocalVariable(name: "arg", arg: 1, scope: !3661, file: !679, line: 991, type: !149)
!3664 = !DILocalVariable(name: "argsize", arg: 2, scope: !3661, file: !679, line: 991, type: !146)
!3665 = distinct !DIAssignID()
!3666 = !DILocation(line: 0, scope: !3661)
!3667 = !DILocation(line: 0, scope: !3586, inlinedAt: !3668)
!3668 = distinct !DILocation(line: 993, column: 10, scope: !3661)
!3669 = !DILocation(line: 972, column: 3, scope: !3586, inlinedAt: !3668)
!3670 = !DILocation(line: 973, column: 13, scope: !3586, inlinedAt: !3668)
!3671 = distinct !DIAssignID()
!3672 = !DILocation(line: 0, scope: !2593, inlinedAt: !3673)
!3673 = distinct !DILocation(line: 974, column: 3, scope: !3586, inlinedAt: !3668)
!3674 = !DILocation(line: 147, column: 57, scope: !2593, inlinedAt: !3673)
!3675 = !DILocation(line: 149, column: 21, scope: !2593, inlinedAt: !3673)
!3676 = !DILocation(line: 150, column: 6, scope: !2593, inlinedAt: !3673)
!3677 = !DILocation(line: 975, column: 10, scope: !3586, inlinedAt: !3668)
!3678 = !DILocation(line: 976, column: 1, scope: !3586, inlinedAt: !3668)
!3679 = !DILocation(line: 993, column: 3, scope: !3661)
!3680 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !679, file: !679, line: 997, type: !3470, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3681)
!3681 = !{!3682, !3683, !3684, !3685}
!3682 = !DILocalVariable(name: "n", arg: 1, scope: !3680, file: !679, line: 997, type: !86)
!3683 = !DILocalVariable(name: "s", arg: 2, scope: !3680, file: !679, line: 997, type: !705)
!3684 = !DILocalVariable(name: "arg", arg: 3, scope: !3680, file: !679, line: 997, type: !149)
!3685 = !DILocalVariable(name: "options", scope: !3680, file: !679, line: 999, type: !720)
!3686 = distinct !DIAssignID()
!3687 = !DILocation(line: 0, scope: !3680)
!3688 = !DILocation(line: 185, column: 26, scope: !3485, inlinedAt: !3689)
!3689 = distinct !DILocation(line: 1000, column: 13, scope: !3680)
!3690 = !DILocation(line: 999, column: 3, scope: !3680)
!3691 = !DILocation(line: 0, scope: !3485, inlinedAt: !3689)
!3692 = !DILocation(line: 186, column: 13, scope: !3495, inlinedAt: !3689)
!3693 = !DILocation(line: 186, column: 7, scope: !3485, inlinedAt: !3689)
!3694 = !DILocation(line: 187, column: 5, scope: !3495, inlinedAt: !3689)
!3695 = !{!3696}
!3696 = distinct !{!3696, !3697, !"quoting_options_from_style: argument 0"}
!3697 = distinct !{!3697, !"quoting_options_from_style"}
!3698 = !DILocation(line: 1000, column: 13, scope: !3680)
!3699 = distinct !DIAssignID()
!3700 = distinct !DIAssignID()
!3701 = !DILocation(line: 0, scope: !2593, inlinedAt: !3702)
!3702 = distinct !DILocation(line: 1001, column: 3, scope: !3680)
!3703 = !DILocation(line: 147, column: 57, scope: !2593, inlinedAt: !3702)
!3704 = !DILocation(line: 149, column: 21, scope: !2593, inlinedAt: !3702)
!3705 = !DILocation(line: 150, column: 6, scope: !2593, inlinedAt: !3702)
!3706 = distinct !DIAssignID()
!3707 = !DILocation(line: 1002, column: 10, scope: !3680)
!3708 = !DILocation(line: 1003, column: 1, scope: !3680)
!3709 = !DILocation(line: 1002, column: 3, scope: !3680)
!3710 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !679, file: !679, line: 1006, type: !3711, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3713)
!3711 = !DISubroutineType(types: !3712)
!3712 = !{!88, !86, !149, !149, !149}
!3713 = !{!3714, !3715, !3716, !3717}
!3714 = !DILocalVariable(name: "n", arg: 1, scope: !3710, file: !679, line: 1006, type: !86)
!3715 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3710, file: !679, line: 1006, type: !149)
!3716 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3710, file: !679, line: 1007, type: !149)
!3717 = !DILocalVariable(name: "arg", arg: 4, scope: !3710, file: !679, line: 1007, type: !149)
!3718 = distinct !DIAssignID()
!3719 = !DILocation(line: 0, scope: !3710)
!3720 = !DILocalVariable(name: "o", scope: !3721, file: !679, line: 1018, type: !720)
!3721 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !679, file: !679, line: 1014, type: !3722, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3724)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{!88, !86, !149, !149, !149, !146}
!3724 = !{!3725, !3726, !3727, !3728, !3729, !3720}
!3725 = !DILocalVariable(name: "n", arg: 1, scope: !3721, file: !679, line: 1014, type: !86)
!3726 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3721, file: !679, line: 1014, type: !149)
!3727 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3721, file: !679, line: 1015, type: !149)
!3728 = !DILocalVariable(name: "arg", arg: 4, scope: !3721, file: !679, line: 1016, type: !149)
!3729 = !DILocalVariable(name: "argsize", arg: 5, scope: !3721, file: !679, line: 1016, type: !146)
!3730 = !DILocation(line: 0, scope: !3721, inlinedAt: !3731)
!3731 = distinct !DILocation(line: 1009, column: 10, scope: !3710)
!3732 = !DILocation(line: 1018, column: 3, scope: !3721, inlinedAt: !3731)
!3733 = !DILocation(line: 1018, column: 30, scope: !3721, inlinedAt: !3731)
!3734 = distinct !DIAssignID()
!3735 = distinct !DIAssignID()
!3736 = !DILocation(line: 0, scope: !2633, inlinedAt: !3737)
!3737 = distinct !DILocation(line: 1019, column: 3, scope: !3721, inlinedAt: !3731)
!3738 = !DILocation(line: 174, column: 12, scope: !2633, inlinedAt: !3737)
!3739 = distinct !DIAssignID()
!3740 = !DILocation(line: 175, column: 8, scope: !2646, inlinedAt: !3737)
!3741 = !DILocation(line: 175, column: 19, scope: !2646, inlinedAt: !3737)
!3742 = !DILocation(line: 176, column: 5, scope: !2646, inlinedAt: !3737)
!3743 = !DILocation(line: 177, column: 6, scope: !2633, inlinedAt: !3737)
!3744 = !DILocation(line: 177, column: 17, scope: !2633, inlinedAt: !3737)
!3745 = distinct !DIAssignID()
!3746 = !DILocation(line: 178, column: 6, scope: !2633, inlinedAt: !3737)
!3747 = !DILocation(line: 178, column: 18, scope: !2633, inlinedAt: !3737)
!3748 = distinct !DIAssignID()
!3749 = !DILocation(line: 1020, column: 10, scope: !3721, inlinedAt: !3731)
!3750 = !DILocation(line: 1021, column: 1, scope: !3721, inlinedAt: !3731)
!3751 = !DILocation(line: 1009, column: 3, scope: !3710)
!3752 = distinct !DIAssignID()
!3753 = !DILocation(line: 0, scope: !3721)
!3754 = !DILocation(line: 1018, column: 3, scope: !3721)
!3755 = !DILocation(line: 1018, column: 30, scope: !3721)
!3756 = distinct !DIAssignID()
!3757 = distinct !DIAssignID()
!3758 = !DILocation(line: 0, scope: !2633, inlinedAt: !3759)
!3759 = distinct !DILocation(line: 1019, column: 3, scope: !3721)
!3760 = !DILocation(line: 174, column: 12, scope: !2633, inlinedAt: !3759)
!3761 = distinct !DIAssignID()
!3762 = !DILocation(line: 175, column: 8, scope: !2646, inlinedAt: !3759)
!3763 = !DILocation(line: 175, column: 19, scope: !2646, inlinedAt: !3759)
!3764 = !DILocation(line: 176, column: 5, scope: !2646, inlinedAt: !3759)
!3765 = !DILocation(line: 177, column: 6, scope: !2633, inlinedAt: !3759)
!3766 = !DILocation(line: 177, column: 17, scope: !2633, inlinedAt: !3759)
!3767 = distinct !DIAssignID()
!3768 = !DILocation(line: 178, column: 6, scope: !2633, inlinedAt: !3759)
!3769 = !DILocation(line: 178, column: 18, scope: !2633, inlinedAt: !3759)
!3770 = distinct !DIAssignID()
!3771 = !DILocation(line: 1020, column: 10, scope: !3721)
!3772 = !DILocation(line: 1021, column: 1, scope: !3721)
!3773 = !DILocation(line: 1020, column: 3, scope: !3721)
!3774 = distinct !DISubprogram(name: "quotearg_custom", scope: !679, file: !679, line: 1024, type: !3775, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3777)
!3775 = !DISubroutineType(types: !3776)
!3776 = !{!88, !149, !149, !149}
!3777 = !{!3778, !3779, !3780}
!3778 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3774, file: !679, line: 1024, type: !149)
!3779 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3774, file: !679, line: 1024, type: !149)
!3780 = !DILocalVariable(name: "arg", arg: 3, scope: !3774, file: !679, line: 1025, type: !149)
!3781 = distinct !DIAssignID()
!3782 = !DILocation(line: 0, scope: !3774)
!3783 = !DILocation(line: 0, scope: !3710, inlinedAt: !3784)
!3784 = distinct !DILocation(line: 1027, column: 10, scope: !3774)
!3785 = !DILocation(line: 0, scope: !3721, inlinedAt: !3786)
!3786 = distinct !DILocation(line: 1009, column: 10, scope: !3710, inlinedAt: !3784)
!3787 = !DILocation(line: 1018, column: 3, scope: !3721, inlinedAt: !3786)
!3788 = !DILocation(line: 1018, column: 30, scope: !3721, inlinedAt: !3786)
!3789 = distinct !DIAssignID()
!3790 = distinct !DIAssignID()
!3791 = !DILocation(line: 0, scope: !2633, inlinedAt: !3792)
!3792 = distinct !DILocation(line: 1019, column: 3, scope: !3721, inlinedAt: !3786)
!3793 = !DILocation(line: 174, column: 12, scope: !2633, inlinedAt: !3792)
!3794 = distinct !DIAssignID()
!3795 = !DILocation(line: 175, column: 8, scope: !2646, inlinedAt: !3792)
!3796 = !DILocation(line: 175, column: 19, scope: !2646, inlinedAt: !3792)
!3797 = !DILocation(line: 176, column: 5, scope: !2646, inlinedAt: !3792)
!3798 = !DILocation(line: 177, column: 6, scope: !2633, inlinedAt: !3792)
!3799 = !DILocation(line: 177, column: 17, scope: !2633, inlinedAt: !3792)
!3800 = distinct !DIAssignID()
!3801 = !DILocation(line: 178, column: 6, scope: !2633, inlinedAt: !3792)
!3802 = !DILocation(line: 178, column: 18, scope: !2633, inlinedAt: !3792)
!3803 = distinct !DIAssignID()
!3804 = !DILocation(line: 1020, column: 10, scope: !3721, inlinedAt: !3786)
!3805 = !DILocation(line: 1021, column: 1, scope: !3721, inlinedAt: !3786)
!3806 = !DILocation(line: 1027, column: 3, scope: !3774)
!3807 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !679, file: !679, line: 1031, type: !3808, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3810)
!3808 = !DISubroutineType(types: !3809)
!3809 = !{!88, !149, !149, !149, !146}
!3810 = !{!3811, !3812, !3813, !3814}
!3811 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3807, file: !679, line: 1031, type: !149)
!3812 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3807, file: !679, line: 1031, type: !149)
!3813 = !DILocalVariable(name: "arg", arg: 3, scope: !3807, file: !679, line: 1032, type: !149)
!3814 = !DILocalVariable(name: "argsize", arg: 4, scope: !3807, file: !679, line: 1032, type: !146)
!3815 = distinct !DIAssignID()
!3816 = !DILocation(line: 0, scope: !3807)
!3817 = !DILocation(line: 0, scope: !3721, inlinedAt: !3818)
!3818 = distinct !DILocation(line: 1034, column: 10, scope: !3807)
!3819 = !DILocation(line: 1018, column: 3, scope: !3721, inlinedAt: !3818)
!3820 = !DILocation(line: 1018, column: 30, scope: !3721, inlinedAt: !3818)
!3821 = distinct !DIAssignID()
!3822 = distinct !DIAssignID()
!3823 = !DILocation(line: 0, scope: !2633, inlinedAt: !3824)
!3824 = distinct !DILocation(line: 1019, column: 3, scope: !3721, inlinedAt: !3818)
!3825 = !DILocation(line: 174, column: 12, scope: !2633, inlinedAt: !3824)
!3826 = distinct !DIAssignID()
!3827 = !DILocation(line: 175, column: 8, scope: !2646, inlinedAt: !3824)
!3828 = !DILocation(line: 175, column: 19, scope: !2646, inlinedAt: !3824)
!3829 = !DILocation(line: 176, column: 5, scope: !2646, inlinedAt: !3824)
!3830 = !DILocation(line: 177, column: 6, scope: !2633, inlinedAt: !3824)
!3831 = !DILocation(line: 177, column: 17, scope: !2633, inlinedAt: !3824)
!3832 = distinct !DIAssignID()
!3833 = !DILocation(line: 178, column: 6, scope: !2633, inlinedAt: !3824)
!3834 = !DILocation(line: 178, column: 18, scope: !2633, inlinedAt: !3824)
!3835 = distinct !DIAssignID()
!3836 = !DILocation(line: 1020, column: 10, scope: !3721, inlinedAt: !3818)
!3837 = !DILocation(line: 1021, column: 1, scope: !3721, inlinedAt: !3818)
!3838 = !DILocation(line: 1034, column: 3, scope: !3807)
!3839 = distinct !DISubprogram(name: "quote_n_mem", scope: !679, file: !679, line: 1049, type: !3840, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3842)
!3840 = !DISubroutineType(types: !3841)
!3841 = !{!149, !86, !149, !146}
!3842 = !{!3843, !3844, !3845}
!3843 = !DILocalVariable(name: "n", arg: 1, scope: !3839, file: !679, line: 1049, type: !86)
!3844 = !DILocalVariable(name: "arg", arg: 2, scope: !3839, file: !679, line: 1049, type: !149)
!3845 = !DILocalVariable(name: "argsize", arg: 3, scope: !3839, file: !679, line: 1049, type: !146)
!3846 = !DILocation(line: 0, scope: !3839)
!3847 = !DILocation(line: 1051, column: 10, scope: !3839)
!3848 = !DILocation(line: 1051, column: 3, scope: !3839)
!3849 = distinct !DISubprogram(name: "quote_mem", scope: !679, file: !679, line: 1055, type: !3850, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3852)
!3850 = !DISubroutineType(types: !3851)
!3851 = !{!149, !149, !146}
!3852 = !{!3853, !3854}
!3853 = !DILocalVariable(name: "arg", arg: 1, scope: !3849, file: !679, line: 1055, type: !149)
!3854 = !DILocalVariable(name: "argsize", arg: 2, scope: !3849, file: !679, line: 1055, type: !146)
!3855 = !DILocation(line: 0, scope: !3849)
!3856 = !DILocation(line: 0, scope: !3839, inlinedAt: !3857)
!3857 = distinct !DILocation(line: 1057, column: 10, scope: !3849)
!3858 = !DILocation(line: 1051, column: 10, scope: !3839, inlinedAt: !3857)
!3859 = !DILocation(line: 1057, column: 3, scope: !3849)
!3860 = distinct !DISubprogram(name: "quote_n", scope: !679, file: !679, line: 1061, type: !3861, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3863)
!3861 = !DISubroutineType(types: !3862)
!3862 = !{!149, !86, !149}
!3863 = !{!3864, !3865}
!3864 = !DILocalVariable(name: "n", arg: 1, scope: !3860, file: !679, line: 1061, type: !86)
!3865 = !DILocalVariable(name: "arg", arg: 2, scope: !3860, file: !679, line: 1061, type: !149)
!3866 = !DILocation(line: 0, scope: !3860)
!3867 = !DILocation(line: 0, scope: !3839, inlinedAt: !3868)
!3868 = distinct !DILocation(line: 1063, column: 10, scope: !3860)
!3869 = !DILocation(line: 1051, column: 10, scope: !3839, inlinedAt: !3868)
!3870 = !DILocation(line: 1063, column: 3, scope: !3860)
!3871 = distinct !DISubprogram(name: "quote", scope: !679, file: !679, line: 1067, type: !3872, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3874)
!3872 = !DISubroutineType(types: !3873)
!3873 = !{!149, !149}
!3874 = !{!3875}
!3875 = !DILocalVariable(name: "arg", arg: 1, scope: !3871, file: !679, line: 1067, type: !149)
!3876 = !DILocation(line: 0, scope: !3871)
!3877 = !DILocation(line: 0, scope: !3860, inlinedAt: !3878)
!3878 = distinct !DILocation(line: 1069, column: 10, scope: !3871)
!3879 = !DILocation(line: 0, scope: !3839, inlinedAt: !3880)
!3880 = distinct !DILocation(line: 1063, column: 10, scope: !3860, inlinedAt: !3878)
!3881 = !DILocation(line: 1051, column: 10, scope: !3839, inlinedAt: !3880)
!3882 = !DILocation(line: 1069, column: 3, scope: !3871)
!3883 = distinct !DISubprogram(name: "safe_write", scope: !3884, file: !3884, line: 56, type: !3885, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !914, retainedNodes: !3888)
!3884 = !DIFile(filename: "lib/safe-read.c", directory: "/src", checksumkind: CSK_MD5, checksum: "434e548fbeff241cc07e1dbcc7b4611f")
!3885 = !DISubroutineType(types: !3886)
!3886 = !{!503, !86, !3887, !946}
!3887 = !DIDerivedType(tag: DW_TAG_typedef, name: "bufptr", file: !3884, line: 45, baseType: !1216)
!3888 = !{!3889, !3890, !3891, !3892}
!3889 = !DILocalVariable(name: "fd", arg: 1, scope: !3883, file: !3884, line: 56, type: !86)
!3890 = !DILocalVariable(name: "buf", arg: 2, scope: !3883, file: !3884, line: 56, type: !3887)
!3891 = !DILocalVariable(name: "count", arg: 3, scope: !3883, file: !3884, line: 56, type: !946)
!3892 = !DILocalVariable(name: "result", scope: !3893, file: !3884, line: 60, type: !3896)
!3893 = distinct !DILexicalBlock(scope: !3894, file: !3884, line: 59, column: 5)
!3894 = distinct !DILexicalBlock(scope: !3895, file: !3884, line: 58, column: 3)
!3895 = distinct !DILexicalBlock(scope: !3883, file: !3884, line: 58, column: 3)
!3896 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !3897, line: 108, baseType: !1372)
!3897 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!3898 = !DILocation(line: 0, scope: !3883)
!3899 = !DILocation(line: 58, column: 3, scope: !3883)
!3900 = !DILocation(line: 62, column: 11, scope: !3893)
!3901 = !DILocation(line: 60, column: 24, scope: !3893)
!3902 = !DILocation(line: 0, scope: !3893)
!3903 = !DILocation(line: 62, column: 13, scope: !3904)
!3904 = distinct !DILexicalBlock(scope: !3893, file: !3884, line: 62, column: 11)
!3905 = !DILocation(line: 64, column: 16, scope: !3906)
!3906 = distinct !DILexicalBlock(scope: !3904, file: !3884, line: 64, column: 16)
!3907 = !DILocation(line: 64, column: 16, scope: !3904)
!3908 = distinct !{!3908, !3909, !3910}
!3909 = !DILocation(line: 58, column: 3, scope: !3895)
!3910 = !DILocation(line: 70, column: 5, scope: !3895)
!3911 = !DILocation(line: 66, column: 22, scope: !3912)
!3912 = distinct !DILexicalBlock(scope: !3906, file: !3884, line: 66, column: 16)
!3913 = !DILocation(line: 0, scope: !3894)
!3914 = !DILocation(line: 71, column: 1, scope: !3883)
!3915 = !DISubprogram(name: "write", scope: !1916, file: !1916, line: 378, type: !3916, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3916 = !DISubroutineType(types: !3917)
!3917 = !{!3896, !86, !1216, !146}
!3918 = distinct !DISubprogram(name: "version_etc_arn", scope: !781, file: !781, line: 61, type: !3919, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !917, retainedNodes: !3956)
!3919 = !DISubroutineType(types: !3920)
!3920 = !{null, !3921, !149, !149, !149, !3955, !146}
!3921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3922, size: 64)
!3922 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !289, line: 7, baseType: !3923)
!3923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !291, line: 49, size: 1728, elements: !3924)
!3924 = !{!3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954}
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3923, file: !291, line: 51, baseType: !86, size: 32)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3923, file: !291, line: 54, baseType: !88, size: 64, offset: 64)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3923, file: !291, line: 55, baseType: !88, size: 64, offset: 128)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3923, file: !291, line: 56, baseType: !88, size: 64, offset: 192)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3923, file: !291, line: 57, baseType: !88, size: 64, offset: 256)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3923, file: !291, line: 58, baseType: !88, size: 64, offset: 320)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3923, file: !291, line: 59, baseType: !88, size: 64, offset: 384)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3923, file: !291, line: 60, baseType: !88, size: 64, offset: 448)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3923, file: !291, line: 61, baseType: !88, size: 64, offset: 512)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3923, file: !291, line: 64, baseType: !88, size: 64, offset: 576)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3923, file: !291, line: 65, baseType: !88, size: 64, offset: 640)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3923, file: !291, line: 66, baseType: !88, size: 64, offset: 704)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3923, file: !291, line: 68, baseType: !306, size: 64, offset: 768)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3923, file: !291, line: 70, baseType: !3939, size: 64, offset: 832)
!3939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3923, file: !291, line: 72, baseType: !86, size: 32, offset: 896)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3923, file: !291, line: 73, baseType: !86, size: 32, offset: 928)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3923, file: !291, line: 74, baseType: !313, size: 64, offset: 960)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3923, file: !291, line: 77, baseType: !145, size: 16, offset: 1024)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3923, file: !291, line: 78, baseType: !318, size: 8, offset: 1040)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3923, file: !291, line: 79, baseType: !197, size: 8, offset: 1048)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3923, file: !291, line: 81, baseType: !321, size: 64, offset: 1088)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3923, file: !291, line: 89, baseType: !324, size: 64, offset: 1152)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3923, file: !291, line: 91, baseType: !326, size: 64, offset: 1216)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3923, file: !291, line: 92, baseType: !329, size: 64, offset: 1280)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3923, file: !291, line: 93, baseType: !3939, size: 64, offset: 1344)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3923, file: !291, line: 94, baseType: !144, size: 64, offset: 1408)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3923, file: !291, line: 95, baseType: !146, size: 64, offset: 1472)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3923, file: !291, line: 96, baseType: !86, size: 32, offset: 1536)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3923, file: !291, line: 98, baseType: !226, size: 160, offset: 1568)
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!3956 = !{!3957, !3958, !3959, !3960, !3961, !3962}
!3957 = !DILocalVariable(name: "stream", arg: 1, scope: !3918, file: !781, line: 61, type: !3921)
!3958 = !DILocalVariable(name: "command_name", arg: 2, scope: !3918, file: !781, line: 62, type: !149)
!3959 = !DILocalVariable(name: "package", arg: 3, scope: !3918, file: !781, line: 62, type: !149)
!3960 = !DILocalVariable(name: "version", arg: 4, scope: !3918, file: !781, line: 63, type: !149)
!3961 = !DILocalVariable(name: "authors", arg: 5, scope: !3918, file: !781, line: 64, type: !3955)
!3962 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3918, file: !781, line: 64, type: !146)
!3963 = !DILocation(line: 0, scope: !3918)
!3964 = !DILocation(line: 66, column: 7, scope: !3965)
!3965 = distinct !DILexicalBlock(scope: !3918, file: !781, line: 66, column: 7)
!3966 = !DILocation(line: 66, column: 7, scope: !3918)
!3967 = !DILocation(line: 67, column: 5, scope: !3965)
!3968 = !DILocation(line: 69, column: 5, scope: !3965)
!3969 = !DILocation(line: 83, column: 3, scope: !3918)
!3970 = !DILocation(line: 85, column: 3, scope: !3918)
!3971 = !DILocation(line: 88, column: 3, scope: !3918)
!3972 = !DILocation(line: 95, column: 3, scope: !3918)
!3973 = !DILocation(line: 97, column: 3, scope: !3918)
!3974 = !DILocation(line: 105, column: 7, scope: !3975)
!3975 = distinct !DILexicalBlock(scope: !3918, file: !781, line: 98, column: 5)
!3976 = !DILocation(line: 106, column: 7, scope: !3975)
!3977 = !DILocation(line: 109, column: 7, scope: !3975)
!3978 = !DILocation(line: 110, column: 7, scope: !3975)
!3979 = !DILocation(line: 113, column: 7, scope: !3975)
!3980 = !DILocation(line: 115, column: 7, scope: !3975)
!3981 = !DILocation(line: 120, column: 7, scope: !3975)
!3982 = !DILocation(line: 122, column: 7, scope: !3975)
!3983 = !DILocation(line: 127, column: 7, scope: !3975)
!3984 = !DILocation(line: 129, column: 7, scope: !3975)
!3985 = !DILocation(line: 134, column: 7, scope: !3975)
!3986 = !DILocation(line: 137, column: 7, scope: !3975)
!3987 = !DILocation(line: 142, column: 7, scope: !3975)
!3988 = !DILocation(line: 145, column: 7, scope: !3975)
!3989 = !DILocation(line: 150, column: 7, scope: !3975)
!3990 = !DILocation(line: 154, column: 7, scope: !3975)
!3991 = !DILocation(line: 159, column: 7, scope: !3975)
!3992 = !DILocation(line: 163, column: 7, scope: !3975)
!3993 = !DILocation(line: 170, column: 7, scope: !3975)
!3994 = !DILocation(line: 174, column: 7, scope: !3975)
!3995 = !DILocation(line: 176, column: 1, scope: !3918)
!3996 = distinct !DISubprogram(name: "version_etc_ar", scope: !781, file: !781, line: 183, type: !3997, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !917, retainedNodes: !3999)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{null, !3921, !149, !149, !149, !3955}
!3999 = !{!4000, !4001, !4002, !4003, !4004, !4005}
!4000 = !DILocalVariable(name: "stream", arg: 1, scope: !3996, file: !781, line: 183, type: !3921)
!4001 = !DILocalVariable(name: "command_name", arg: 2, scope: !3996, file: !781, line: 184, type: !149)
!4002 = !DILocalVariable(name: "package", arg: 3, scope: !3996, file: !781, line: 184, type: !149)
!4003 = !DILocalVariable(name: "version", arg: 4, scope: !3996, file: !781, line: 185, type: !149)
!4004 = !DILocalVariable(name: "authors", arg: 5, scope: !3996, file: !781, line: 185, type: !3955)
!4005 = !DILocalVariable(name: "n_authors", scope: !3996, file: !781, line: 187, type: !146)
!4006 = !DILocation(line: 0, scope: !3996)
!4007 = !DILocation(line: 189, column: 8, scope: !4008)
!4008 = distinct !DILexicalBlock(scope: !3996, file: !781, line: 189, column: 3)
!4009 = !DILocation(line: 189, scope: !4008)
!4010 = !DILocation(line: 189, column: 23, scope: !4011)
!4011 = distinct !DILexicalBlock(scope: !4008, file: !781, line: 189, column: 3)
!4012 = !DILocation(line: 189, column: 3, scope: !4008)
!4013 = !DILocation(line: 189, column: 52, scope: !4011)
!4014 = distinct !{!4014, !4012, !4015, !1118}
!4015 = !DILocation(line: 190, column: 5, scope: !4008)
!4016 = !DILocation(line: 191, column: 3, scope: !3996)
!4017 = !DILocation(line: 192, column: 1, scope: !3996)
!4018 = distinct !DISubprogram(name: "version_etc_va", scope: !781, file: !781, line: 199, type: !4019, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !917, retainedNodes: !4031)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{null, !3921, !149, !149, !149, !4021}
!4021 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !518, line: 52, baseType: !4022)
!4022 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !578, line: 12, baseType: !4023)
!4023 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !781, baseType: !4024)
!4024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !4025)
!4025 = !{!4026, !4027, !4028, !4029, !4030}
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !4024, file: !781, line: 192, baseType: !144, size: 64)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !4024, file: !781, line: 192, baseType: !144, size: 64, offset: 64)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !4024, file: !781, line: 192, baseType: !144, size: 64, offset: 128)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !4024, file: !781, line: 192, baseType: !86, size: 32, offset: 192)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !4024, file: !781, line: 192, baseType: !86, size: 32, offset: 224)
!4031 = !{!4032, !4033, !4034, !4035, !4036, !4037, !4038}
!4032 = !DILocalVariable(name: "stream", arg: 1, scope: !4018, file: !781, line: 199, type: !3921)
!4033 = !DILocalVariable(name: "command_name", arg: 2, scope: !4018, file: !781, line: 200, type: !149)
!4034 = !DILocalVariable(name: "package", arg: 3, scope: !4018, file: !781, line: 200, type: !149)
!4035 = !DILocalVariable(name: "version", arg: 4, scope: !4018, file: !781, line: 201, type: !149)
!4036 = !DILocalVariable(name: "authors", arg: 5, scope: !4018, file: !781, line: 201, type: !4021)
!4037 = !DILocalVariable(name: "n_authors", scope: !4018, file: !781, line: 203, type: !146)
!4038 = !DILocalVariable(name: "authtab", scope: !4018, file: !781, line: 204, type: !4039)
!4039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 640, elements: !176)
!4040 = distinct !DIAssignID()
!4041 = !DILocation(line: 0, scope: !4018)
!4042 = !DILocation(line: 204, column: 3, scope: !4018)
!4043 = !DILocation(line: 208, column: 35, scope: !4044)
!4044 = distinct !DILexicalBlock(scope: !4045, file: !781, line: 206, column: 3)
!4045 = distinct !DILexicalBlock(scope: !4018, file: !781, line: 206, column: 3)
!4046 = !DILocation(line: 208, column: 33, scope: !4044)
!4047 = !DILocation(line: 208, column: 67, scope: !4044)
!4048 = !DILocation(line: 206, column: 3, scope: !4045)
!4049 = !DILocation(line: 208, column: 14, scope: !4044)
!4050 = !DILocation(line: 0, scope: !4045)
!4051 = !DILocation(line: 211, column: 3, scope: !4018)
!4052 = !DILocation(line: 213, column: 1, scope: !4018)
!4053 = distinct !DISubprogram(name: "version_etc", scope: !781, file: !781, line: 230, type: !4054, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !917, retainedNodes: !4056)
!4054 = !DISubroutineType(types: !4055)
!4055 = !{null, !3921, !149, !149, !149, null}
!4056 = !{!4057, !4058, !4059, !4060, !4061}
!4057 = !DILocalVariable(name: "stream", arg: 1, scope: !4053, file: !781, line: 230, type: !3921)
!4058 = !DILocalVariable(name: "command_name", arg: 2, scope: !4053, file: !781, line: 231, type: !149)
!4059 = !DILocalVariable(name: "package", arg: 3, scope: !4053, file: !781, line: 231, type: !149)
!4060 = !DILocalVariable(name: "version", arg: 4, scope: !4053, file: !781, line: 232, type: !149)
!4061 = !DILocalVariable(name: "authors", scope: !4053, file: !781, line: 234, type: !4021)
!4062 = distinct !DIAssignID()
!4063 = !DILocation(line: 0, scope: !4053)
!4064 = !DILocation(line: 234, column: 3, scope: !4053)
!4065 = !DILocation(line: 235, column: 3, scope: !4053)
!4066 = !DILocation(line: 236, column: 3, scope: !4053)
!4067 = !DILocation(line: 237, column: 3, scope: !4053)
!4068 = !DILocation(line: 238, column: 1, scope: !4053)
!4069 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !781, file: !781, line: 241, type: !616, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !917)
!4070 = !DILocation(line: 243, column: 3, scope: !4069)
!4071 = !DILocation(line: 248, column: 3, scope: !4069)
!4072 = !DILocation(line: 254, column: 3, scope: !4069)
!4073 = !DILocation(line: 259, column: 3, scope: !4069)
!4074 = !DILocation(line: 261, column: 1, scope: !4069)
!4075 = distinct !DISubprogram(name: "xalignalloc", scope: !925, file: !925, line: 27, type: !4076, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !924, retainedNodes: !4078)
!4076 = !DISubroutineType(types: !4077)
!4077 = !{!144, !946, !946}
!4078 = !{!4079, !4080, !4081}
!4079 = !DILocalVariable(name: "alignment", arg: 1, scope: !4075, file: !925, line: 27, type: !946)
!4080 = !DILocalVariable(name: "size", arg: 2, scope: !4075, file: !925, line: 27, type: !946)
!4081 = !DILocalVariable(name: "p", scope: !4075, file: !925, line: 29, type: !144)
!4082 = !DILocation(line: 0, scope: !4075)
!4083 = !DILocalVariable(name: "alignment", arg: 1, scope: !4084, file: !4085, line: 90, type: !946)
!4084 = distinct !DISubprogram(name: "alignalloc", scope: !4085, file: !4085, line: 90, type: !4076, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !924, retainedNodes: !4086)
!4085 = !DIFile(filename: "lib/alignalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0a7d01653c1483fdd96283992acf95d0")
!4086 = !{!4083, !4087}
!4087 = !DILocalVariable(name: "size", arg: 2, scope: !4084, file: !4085, line: 90, type: !946)
!4088 = !DILocation(line: 0, scope: !4084, inlinedAt: !4089)
!4089 = distinct !DILocation(line: 29, column: 13, scope: !4075)
!4090 = !DILocation(line: 98, column: 10, scope: !4084, inlinedAt: !4089)
!4091 = !DILocation(line: 30, column: 8, scope: !4092)
!4092 = distinct !DILexicalBlock(scope: !4075, file: !925, line: 30, column: 7)
!4093 = !DILocation(line: 30, column: 7, scope: !4075)
!4094 = !DILocation(line: 31, column: 5, scope: !4092)
!4095 = !DILocation(line: 32, column: 3, scope: !4075)
!4096 = !DISubprogram(name: "aligned_alloc", scope: !1192, file: !1192, line: 592, type: !4097, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4097 = !DISubroutineType(types: !4098)
!4098 = !{!144, !146, !146}
!4099 = distinct !DISubprogram(name: "xnrealloc", scope: !4100, file: !4100, line: 147, type: !4101, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !926, retainedNodes: !4103)
!4100 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4101 = !DISubroutineType(types: !4102)
!4102 = !{!144, !144, !146, !146}
!4103 = !{!4104, !4105, !4106}
!4104 = !DILocalVariable(name: "p", arg: 1, scope: !4099, file: !4100, line: 147, type: !144)
!4105 = !DILocalVariable(name: "n", arg: 2, scope: !4099, file: !4100, line: 147, type: !146)
!4106 = !DILocalVariable(name: "s", arg: 3, scope: !4099, file: !4100, line: 147, type: !146)
!4107 = !DILocation(line: 0, scope: !4099)
!4108 = !DILocalVariable(name: "p", arg: 1, scope: !4109, file: !927, line: 83, type: !144)
!4109 = distinct !DISubprogram(name: "xreallocarray", scope: !927, file: !927, line: 83, type: !4101, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !926, retainedNodes: !4110)
!4110 = !{!4108, !4111, !4112}
!4111 = !DILocalVariable(name: "n", arg: 2, scope: !4109, file: !927, line: 83, type: !146)
!4112 = !DILocalVariable(name: "s", arg: 3, scope: !4109, file: !927, line: 83, type: !146)
!4113 = !DILocation(line: 0, scope: !4109, inlinedAt: !4114)
!4114 = distinct !DILocation(line: 149, column: 10, scope: !4099)
!4115 = !DILocation(line: 85, column: 25, scope: !4109, inlinedAt: !4114)
!4116 = !DILocalVariable(name: "p", arg: 1, scope: !4117, file: !927, line: 37, type: !144)
!4117 = distinct !DISubprogram(name: "check_nonnull", scope: !927, file: !927, line: 37, type: !4118, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !926, retainedNodes: !4120)
!4118 = !DISubroutineType(types: !4119)
!4119 = !{!144, !144}
!4120 = !{!4116}
!4121 = !DILocation(line: 0, scope: !4117, inlinedAt: !4122)
!4122 = distinct !DILocation(line: 85, column: 10, scope: !4109, inlinedAt: !4114)
!4123 = !DILocation(line: 39, column: 8, scope: !4124, inlinedAt: !4122)
!4124 = distinct !DILexicalBlock(scope: !4117, file: !927, line: 39, column: 7)
!4125 = !DILocation(line: 39, column: 7, scope: !4117, inlinedAt: !4122)
!4126 = !DILocation(line: 40, column: 5, scope: !4124, inlinedAt: !4122)
!4127 = !DILocation(line: 149, column: 3, scope: !4099)
!4128 = !DILocation(line: 0, scope: !4109)
!4129 = !DILocation(line: 85, column: 25, scope: !4109)
!4130 = !DILocation(line: 0, scope: !4117, inlinedAt: !4131)
!4131 = distinct !DILocation(line: 85, column: 10, scope: !4109)
!4132 = !DILocation(line: 39, column: 8, scope: !4124, inlinedAt: !4131)
!4133 = !DILocation(line: 39, column: 7, scope: !4117, inlinedAt: !4131)
!4134 = !DILocation(line: 40, column: 5, scope: !4124, inlinedAt: !4131)
!4135 = !DILocation(line: 85, column: 3, scope: !4109)
!4136 = distinct !DISubprogram(name: "xmalloc", scope: !927, file: !927, line: 47, type: !4137, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !926, retainedNodes: !4139)
!4137 = !DISubroutineType(types: !4138)
!4138 = !{!144, !146}
!4139 = !{!4140}
!4140 = !DILocalVariable(name: "s", arg: 1, scope: !4136, file: !927, line: 47, type: !146)
!4141 = !DILocation(line: 0, scope: !4136)
!4142 = !DILocation(line: 49, column: 25, scope: !4136)
!4143 = !DILocation(line: 0, scope: !4117, inlinedAt: !4144)
!4144 = distinct !DILocation(line: 49, column: 10, scope: !4136)
!4145 = !DILocation(line: 39, column: 8, scope: !4124, inlinedAt: !4144)
!4146 = !DILocation(line: 39, column: 7, scope: !4117, inlinedAt: !4144)
!4147 = !DILocation(line: 40, column: 5, scope: !4124, inlinedAt: !4144)
!4148 = !DILocation(line: 49, column: 3, scope: !4136)
!4149 = !DISubprogram(name: "malloc", scope: !1192, file: !1192, line: 540, type: !4137, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4150 = distinct !DISubprogram(name: "ximalloc", scope: !927, file: !927, line: 53, type: !4151, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !926, retainedNodes: !4153)
!4151 = !DISubroutineType(types: !4152)
!4152 = !{!144, !946}
!4153 = !{!4154}
!4154 = !DILocalVariable(name: "s", arg: 1, scope: !4150, file: !927, line: 53, type: !946)
!4155 = !DILocation(line: 0, scope: !4150)
!4156 = !DILocalVariable(name: "s", arg: 1, scope: !4157, file: !4158, line: 55, type: !946)
!4157 = distinct !DISubprogram(name: "imalloc", scope: !4158, file: !4158, line: 55, type: !4151, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !926, retainedNodes: !4159)
!4158 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4159 = !{!4156}
!4160 = !DILocation(line: 0, scope: !4157, inlinedAt: !4161)
!4161 = distinct !DILocation(line: 55, column: 25, scope: !4150)
!4162 = !DILocation(line: 57, column: 26, scope: !4157, inlinedAt: !4161)
!4163 = !DILocation(line: 0, scope: !4117, inlinedAt: !4164)
!4164 = distinct !DILocation(line: 55, column: 10, scope: !4150)
!4165 = !DILocation(line: 39, column: 8, scope: !4124, inlinedAt: !4164)
!4166 = !DILocation(line: 39, column: 7, scope: !4117, inlinedAt: !4164)
!4167 = !DILocation(line: 40, column: 5, scope: !4124, inlinedAt: !4164)
!4168 = !DILocation(line: 55, column: 3, scope: !4150)
!4169 = distinct !DISubprogram(name: "xcharalloc", scope: !927, file: !927, line: 59, type: !4170, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !926, retainedNodes: !4172)
!4170 = !DISubroutineType(types: !4171)
!4171 = !{!88, !146}
!4172 = !{!4173}
!4173 = !DILocalVariable(name: "n", arg: 1, scope: !4169, file: !927, line: 59, type: !146)
!4174 = !DILocation(line: 0, scope: !4169)
!4175 = !DILocation(line: 0, scope: !4136, inlinedAt: !4176)
!4176 = distinct !DILocation(line: 61, column: 10, scope: !4169)
!4177 = !DILocation(line: 49, column: 25, scope: !4136, inlinedAt: !4176)
!4178 = !DILocation(line: 0, scope: !4117, inlinedAt: !4179)
!4179 = distinct !DILocation(line: 49, column: 10, scope: !4136, inlinedAt: !4176)
!4180 = !DILocation(line: 39, column: 8, scope: !4124, inlinedAt: !4179)
!4181 = !DILocation(line: 39, column: 7, scope: !4117, inlinedAt: !4179)
!4182 = !DILocation(line: 40, column: 5, scope: !4124, inlinedAt: !4179)
!4183 = !DILocation(line: 61, column: 3, scope: !4169)
!4184 = distinct !DISubprogram(name: "xrealloc", scope: !927, file: !927, line: 68, type: !4185, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !926, retainedNodes: !4187)
!4185 = !DISubroutineType(types: !4186)
!4186 = !{!144, !144, !146}
!4187 = !{!4188, !4189}
!4188 = !DILocalVariable(name: "p", arg: 1, scope: !4184, file: !927, line: 68, type: !144)
!4189 = !DILocalVariable(name: "s", arg: 2, scope: !4184, file: !927, line: 68, type: !146)
!4190 = !DILocation(line: 0, scope: !4184)
!4191 = !DILocalVariable(name: "ptr", arg: 1, scope: !4192, file: !4193, line: 2057, type: !144)
!4192 = distinct !DISubprogram(name: "rpl_realloc", scope: !4193, file: !4193, line: 2057, type: !4185, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !926, retainedNodes: !4194)
!4193 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4194 = !{!4191, !4195}
!4195 = !DILocalVariable(name: "size", arg: 2, scope: !4192, file: !4193, line: 2057, type: !146)
!4196 = !DILocation(line: 0, scope: !4192, inlinedAt: !4197)
!4197 = distinct !DILocation(line: 70, column: 25, scope: !4184)
!4198 = !DILocation(line: 2059, column: 24, scope: !4192, inlinedAt: !4197)
!4199 = !DILocation(line: 2059, column: 10, scope: !4192, inlinedAt: !4197)
!4200 = !DILocation(line: 0, scope: !4117, inlinedAt: !4201)
!4201 = distinct !DILocation(line: 70, column: 10, scope: !4184)
!4202 = !DILocation(line: 39, column: 8, scope: !4124, inlinedAt: !4201)
!4203 = !DILocation(line: 39, column: 7, scope: !4117, inlinedAt: !4201)
!4204 = !DILocation(line: 40, column: 5, scope: !4124, inlinedAt: !4201)
!4205 = !DILocation(line: 70, column: 3, scope: !4184)
!4206 = !DISubprogram(name: "realloc", scope: !1192, file: !1192, line: 551, type: !4185, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4207 = distinct !DISubprogram(name: "xirealloc", scope: !927, file: !927, line: 74, type: !4208, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !926, retainedNodes: !4210)
!4208 = !DISubroutineType(types: !4209)
!4209 = !{!144, !144, !946}
!4210 = !{!4211, !4212}
!4211 = !DILocalVariable(name: "p", arg: 1, scope: !4207, file: !927, line: 74, type: !144)
!4212 = !DILocalVariable(name: "s", arg: 2, scope: !4207, file: !927, line: 74, type: !946)
!4213 = !DILocation(line: 0, scope: !4207)
!4214 = !DILocalVariable(name: "p", arg: 1, scope: !4215, file: !4158, line: 66, type: !144)
!4215 = distinct !DISubprogram(name: "irealloc", scope: !4158, file: !4158, line: 66, type: !4208, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !926, retainedNodes: !4216)
!4216 = !{!4214, !4217}
!4217 = !DILocalVariable(name: "s", arg: 2, scope: !4215, file: !4158, line: 66, type: !946)
!4218 = !DILocation(line: 0, scope: !4215, inlinedAt: !4219)
!4219 = distinct !DILocation(line: 76, column: 25, scope: !4207)
!4220 = !DILocation(line: 0, scope: !4192, inlinedAt: !4221)
!4221 = distinct !DILocation(line: 68, column: 26, scope: !4215, inlinedAt: !4219)
!4222 = !DILocation(line: 2059, column: 24, scope: !4192, inlinedAt: !4221)
!4223 = !DILocation(line: 2059, column: 10, scope: !4192, inlinedAt: !4221)
!4224 = !DILocation(line: 0, scope: !4117, inlinedAt: !4225)
!4225 = distinct !DILocation(line: 76, column: 10, scope: !4207)
!4226 = !DILocation(line: 39, column: 8, scope: !4124, inlinedAt: !4225)
!4227 = !DILocation(line: 39, column: 7, scope: !4117, inlinedAt: !4225)
!4228 = !DILocation(line: 40, column: 5, scope: !4124, inlinedAt: !4225)
!4229 = !DILocation(line: 76, column: 3, scope: !4207)
!4230 = distinct !DISubprogram(name: "xireallocarray", scope: !927, file: !927, line: 89, type: !4231, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !926, retainedNodes: !4233)
!4231 = !DISubroutineType(types: !4232)
!4232 = !{!144, !144, !946, !946}
!4233 = !{!4234, !4235, !4236}
!4234 = !DILocalVariable(name: "p", arg: 1, scope: !4230, file: !927, line: 89, type: !144)
!4235 = !DILocalVariable(name: "n", arg: 2, scope: !4230, file: !927, line: 89, type: !946)
!4236 = !DILocalVariable(name: "s", arg: 3, scope: !4230, file: !927, line: 89, type: !946)
!4237 = !DILocation(line: 0, scope: !4230)
!4238 = !DILocalVariable(name: "p", arg: 1, scope: !4239, file: !4158, line: 98, type: !144)
!4239 = distinct !DISubprogram(name: "ireallocarray", scope: !4158, file: !4158, line: 98, type: !4231, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !926, retainedNodes: !4240)
!4240 = !{!4238, !4241, !4242}
!4241 = !DILocalVariable(name: "n", arg: 2, scope: !4239, file: !4158, line: 98, type: !946)
!4242 = !DILocalVariable(name: "s", arg: 3, scope: !4239, file: !4158, line: 98, type: !946)
!4243 = !DILocation(line: 0, scope: !4239, inlinedAt: !4244)
!4244 = distinct !DILocation(line: 91, column: 25, scope: !4230)
!4245 = !DILocation(line: 101, column: 13, scope: !4239, inlinedAt: !4244)
!4246 = !DILocation(line: 0, scope: !4117, inlinedAt: !4247)
!4247 = distinct !DILocation(line: 91, column: 10, scope: !4230)
!4248 = !DILocation(line: 39, column: 8, scope: !4124, inlinedAt: !4247)
!4249 = !DILocation(line: 39, column: 7, scope: !4117, inlinedAt: !4247)
!4250 = !DILocation(line: 40, column: 5, scope: !4124, inlinedAt: !4247)
!4251 = !DILocation(line: 91, column: 3, scope: !4230)
!4252 = distinct !DISubprogram(name: "xnmalloc", scope: !927, file: !927, line: 98, type: !4097, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !926, retainedNodes: !4253)
!4253 = !{!4254, !4255}
!4254 = !DILocalVariable(name: "n", arg: 1, scope: !4252, file: !927, line: 98, type: !146)
!4255 = !DILocalVariable(name: "s", arg: 2, scope: !4252, file: !927, line: 98, type: !146)
!4256 = !DILocation(line: 0, scope: !4252)
!4257 = !DILocation(line: 0, scope: !4109, inlinedAt: !4258)
!4258 = distinct !DILocation(line: 100, column: 10, scope: !4252)
!4259 = !DILocation(line: 85, column: 25, scope: !4109, inlinedAt: !4258)
!4260 = !DILocation(line: 0, scope: !4117, inlinedAt: !4261)
!4261 = distinct !DILocation(line: 85, column: 10, scope: !4109, inlinedAt: !4258)
!4262 = !DILocation(line: 39, column: 8, scope: !4124, inlinedAt: !4261)
!4263 = !DILocation(line: 39, column: 7, scope: !4117, inlinedAt: !4261)
!4264 = !DILocation(line: 40, column: 5, scope: !4124, inlinedAt: !4261)
!4265 = !DILocation(line: 100, column: 3, scope: !4252)
!4266 = distinct !DISubprogram(name: "xinmalloc", scope: !927, file: !927, line: 104, type: !4076, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !926, retainedNodes: !4267)
!4267 = !{!4268, !4269}
!4268 = !DILocalVariable(name: "n", arg: 1, scope: !4266, file: !927, line: 104, type: !946)
!4269 = !DILocalVariable(name: "s", arg: 2, scope: !4266, file: !927, line: 104, type: !946)
!4270 = !DILocation(line: 0, scope: !4266)
!4271 = !DILocation(line: 0, scope: !4230, inlinedAt: !4272)
!4272 = distinct !DILocation(line: 106, column: 10, scope: !4266)
!4273 = !DILocation(line: 0, scope: !4239, inlinedAt: !4274)
!4274 = distinct !DILocation(line: 91, column: 25, scope: !4230, inlinedAt: !4272)
!4275 = !DILocation(line: 101, column: 13, scope: !4239, inlinedAt: !4274)
!4276 = !DILocation(line: 0, scope: !4117, inlinedAt: !4277)
!4277 = distinct !DILocation(line: 91, column: 10, scope: !4230, inlinedAt: !4272)
!4278 = !DILocation(line: 39, column: 8, scope: !4124, inlinedAt: !4277)
!4279 = !DILocation(line: 39, column: 7, scope: !4117, inlinedAt: !4277)
!4280 = !DILocation(line: 40, column: 5, scope: !4124, inlinedAt: !4277)
!4281 = !DILocation(line: 106, column: 3, scope: !4266)
!4282 = distinct !DISubprogram(name: "x2realloc", scope: !927, file: !927, line: 116, type: !4283, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !926, retainedNodes: !4285)
!4283 = !DISubroutineType(types: !4284)
!4284 = !{!144, !144, !933}
!4285 = !{!4286, !4287}
!4286 = !DILocalVariable(name: "p", arg: 1, scope: !4282, file: !927, line: 116, type: !144)
!4287 = !DILocalVariable(name: "ps", arg: 2, scope: !4282, file: !927, line: 116, type: !933)
!4288 = !DILocation(line: 0, scope: !4282)
!4289 = !DILocation(line: 0, scope: !930, inlinedAt: !4290)
!4290 = distinct !DILocation(line: 118, column: 10, scope: !4282)
!4291 = !DILocation(line: 178, column: 14, scope: !930, inlinedAt: !4290)
!4292 = !DILocation(line: 180, column: 9, scope: !4293, inlinedAt: !4290)
!4293 = distinct !DILexicalBlock(scope: !930, file: !927, line: 180, column: 7)
!4294 = !DILocation(line: 180, column: 7, scope: !930, inlinedAt: !4290)
!4295 = !DILocation(line: 182, column: 13, scope: !4296, inlinedAt: !4290)
!4296 = distinct !DILexicalBlock(scope: !4297, file: !927, line: 182, column: 11)
!4297 = distinct !DILexicalBlock(scope: !4293, file: !927, line: 181, column: 5)
!4298 = !DILocation(line: 182, column: 11, scope: !4297, inlinedAt: !4290)
!4299 = !DILocation(line: 197, column: 11, scope: !4300, inlinedAt: !4290)
!4300 = distinct !DILexicalBlock(scope: !4301, file: !927, line: 197, column: 11)
!4301 = distinct !DILexicalBlock(scope: !4293, file: !927, line: 195, column: 5)
!4302 = !DILocation(line: 197, column: 11, scope: !4301, inlinedAt: !4290)
!4303 = !DILocation(line: 198, column: 9, scope: !4300, inlinedAt: !4290)
!4304 = !DILocation(line: 0, scope: !4109, inlinedAt: !4305)
!4305 = distinct !DILocation(line: 201, column: 7, scope: !930, inlinedAt: !4290)
!4306 = !DILocation(line: 85, column: 25, scope: !4109, inlinedAt: !4305)
!4307 = !DILocation(line: 0, scope: !4117, inlinedAt: !4308)
!4308 = distinct !DILocation(line: 85, column: 10, scope: !4109, inlinedAt: !4305)
!4309 = !DILocation(line: 39, column: 8, scope: !4124, inlinedAt: !4308)
!4310 = !DILocation(line: 39, column: 7, scope: !4117, inlinedAt: !4308)
!4311 = !DILocation(line: 40, column: 5, scope: !4124, inlinedAt: !4308)
!4312 = !DILocation(line: 202, column: 7, scope: !930, inlinedAt: !4290)
!4313 = !DILocation(line: 118, column: 3, scope: !4282)
!4314 = !DILocation(line: 0, scope: !930)
!4315 = !DILocation(line: 178, column: 14, scope: !930)
!4316 = !DILocation(line: 180, column: 9, scope: !4293)
!4317 = !DILocation(line: 180, column: 7, scope: !930)
!4318 = !DILocation(line: 182, column: 13, scope: !4296)
!4319 = !DILocation(line: 182, column: 11, scope: !4297)
!4320 = !DILocation(line: 190, column: 30, scope: !4321)
!4321 = distinct !DILexicalBlock(scope: !4296, file: !927, line: 183, column: 9)
!4322 = !DILocation(line: 191, column: 16, scope: !4321)
!4323 = !DILocation(line: 191, column: 13, scope: !4321)
!4324 = !DILocation(line: 192, column: 9, scope: !4321)
!4325 = !DILocation(line: 197, column: 11, scope: !4300)
!4326 = !DILocation(line: 197, column: 11, scope: !4301)
!4327 = !DILocation(line: 198, column: 9, scope: !4300)
!4328 = !DILocation(line: 0, scope: !4109, inlinedAt: !4329)
!4329 = distinct !DILocation(line: 201, column: 7, scope: !930)
!4330 = !DILocation(line: 85, column: 25, scope: !4109, inlinedAt: !4329)
!4331 = !DILocation(line: 0, scope: !4117, inlinedAt: !4332)
!4332 = distinct !DILocation(line: 85, column: 10, scope: !4109, inlinedAt: !4329)
!4333 = !DILocation(line: 39, column: 8, scope: !4124, inlinedAt: !4332)
!4334 = !DILocation(line: 39, column: 7, scope: !4117, inlinedAt: !4332)
!4335 = !DILocation(line: 40, column: 5, scope: !4124, inlinedAt: !4332)
!4336 = !DILocation(line: 202, column: 7, scope: !930)
!4337 = !DILocation(line: 203, column: 3, scope: !930)
!4338 = !DILocation(line: 0, scope: !942)
!4339 = !DILocation(line: 230, column: 14, scope: !942)
!4340 = !DILocation(line: 238, column: 7, scope: !4341)
!4341 = distinct !DILexicalBlock(scope: !942, file: !927, line: 238, column: 7)
!4342 = !DILocation(line: 238, column: 7, scope: !942)
!4343 = !DILocation(line: 240, column: 9, scope: !4344)
!4344 = distinct !DILexicalBlock(scope: !942, file: !927, line: 240, column: 7)
!4345 = !DILocation(line: 240, column: 18, scope: !4344)
!4346 = !DILocation(line: 253, column: 8, scope: !942)
!4347 = !DILocation(line: 256, column: 7, scope: !4348)
!4348 = distinct !DILexicalBlock(scope: !942, file: !927, line: 256, column: 7)
!4349 = !DILocation(line: 256, column: 7, scope: !942)
!4350 = !DILocation(line: 258, column: 27, scope: !4351)
!4351 = distinct !DILexicalBlock(scope: !4348, file: !927, line: 257, column: 5)
!4352 = !DILocation(line: 259, column: 32, scope: !4351)
!4353 = !DILocation(line: 260, column: 5, scope: !4351)
!4354 = !DILocation(line: 262, column: 9, scope: !4355)
!4355 = distinct !DILexicalBlock(scope: !942, file: !927, line: 262, column: 7)
!4356 = !DILocation(line: 262, column: 7, scope: !942)
!4357 = !DILocation(line: 263, column: 9, scope: !4355)
!4358 = !DILocation(line: 263, column: 5, scope: !4355)
!4359 = !DILocation(line: 264, column: 9, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !942, file: !927, line: 264, column: 7)
!4361 = !DILocation(line: 264, column: 14, scope: !4360)
!4362 = !DILocation(line: 265, column: 7, scope: !4360)
!4363 = !DILocation(line: 265, column: 11, scope: !4360)
!4364 = !DILocation(line: 266, column: 11, scope: !4360)
!4365 = !DILocation(line: 267, column: 14, scope: !4360)
!4366 = !DILocation(line: 264, column: 7, scope: !942)
!4367 = !DILocation(line: 268, column: 5, scope: !4360)
!4368 = !DILocation(line: 0, scope: !4184, inlinedAt: !4369)
!4369 = distinct !DILocation(line: 269, column: 8, scope: !942)
!4370 = !DILocation(line: 0, scope: !4192, inlinedAt: !4371)
!4371 = distinct !DILocation(line: 70, column: 25, scope: !4184, inlinedAt: !4369)
!4372 = !DILocation(line: 2059, column: 24, scope: !4192, inlinedAt: !4371)
!4373 = !DILocation(line: 2059, column: 10, scope: !4192, inlinedAt: !4371)
!4374 = !DILocation(line: 0, scope: !4117, inlinedAt: !4375)
!4375 = distinct !DILocation(line: 70, column: 10, scope: !4184, inlinedAt: !4369)
!4376 = !DILocation(line: 39, column: 8, scope: !4124, inlinedAt: !4375)
!4377 = !DILocation(line: 39, column: 7, scope: !4117, inlinedAt: !4375)
!4378 = !DILocation(line: 40, column: 5, scope: !4124, inlinedAt: !4375)
!4379 = !DILocation(line: 270, column: 7, scope: !942)
!4380 = !DILocation(line: 271, column: 3, scope: !942)
!4381 = distinct !DISubprogram(name: "xzalloc", scope: !927, file: !927, line: 279, type: !4137, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !926, retainedNodes: !4382)
!4382 = !{!4383}
!4383 = !DILocalVariable(name: "s", arg: 1, scope: !4381, file: !927, line: 279, type: !146)
!4384 = !DILocation(line: 0, scope: !4381)
!4385 = !DILocalVariable(name: "n", arg: 1, scope: !4386, file: !927, line: 294, type: !146)
!4386 = distinct !DISubprogram(name: "xcalloc", scope: !927, file: !927, line: 294, type: !4097, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !926, retainedNodes: !4387)
!4387 = !{!4385, !4388}
!4388 = !DILocalVariable(name: "s", arg: 2, scope: !4386, file: !927, line: 294, type: !146)
!4389 = !DILocation(line: 0, scope: !4386, inlinedAt: !4390)
!4390 = distinct !DILocation(line: 281, column: 10, scope: !4381)
!4391 = !DILocation(line: 296, column: 25, scope: !4386, inlinedAt: !4390)
!4392 = !DILocation(line: 0, scope: !4117, inlinedAt: !4393)
!4393 = distinct !DILocation(line: 296, column: 10, scope: !4386, inlinedAt: !4390)
!4394 = !DILocation(line: 39, column: 8, scope: !4124, inlinedAt: !4393)
!4395 = !DILocation(line: 39, column: 7, scope: !4117, inlinedAt: !4393)
!4396 = !DILocation(line: 40, column: 5, scope: !4124, inlinedAt: !4393)
!4397 = !DILocation(line: 281, column: 3, scope: !4381)
!4398 = !DISubprogram(name: "calloc", scope: !1192, file: !1192, line: 543, type: !4097, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4399 = !DILocation(line: 0, scope: !4386)
!4400 = !DILocation(line: 296, column: 25, scope: !4386)
!4401 = !DILocation(line: 0, scope: !4117, inlinedAt: !4402)
!4402 = distinct !DILocation(line: 296, column: 10, scope: !4386)
!4403 = !DILocation(line: 39, column: 8, scope: !4124, inlinedAt: !4402)
!4404 = !DILocation(line: 39, column: 7, scope: !4117, inlinedAt: !4402)
!4405 = !DILocation(line: 40, column: 5, scope: !4124, inlinedAt: !4402)
!4406 = !DILocation(line: 296, column: 3, scope: !4386)
!4407 = distinct !DISubprogram(name: "xizalloc", scope: !927, file: !927, line: 285, type: !4151, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !926, retainedNodes: !4408)
!4408 = !{!4409}
!4409 = !DILocalVariable(name: "s", arg: 1, scope: !4407, file: !927, line: 285, type: !946)
!4410 = !DILocation(line: 0, scope: !4407)
!4411 = !DILocalVariable(name: "n", arg: 1, scope: !4412, file: !927, line: 300, type: !946)
!4412 = distinct !DISubprogram(name: "xicalloc", scope: !927, file: !927, line: 300, type: !4076, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !926, retainedNodes: !4413)
!4413 = !{!4411, !4414}
!4414 = !DILocalVariable(name: "s", arg: 2, scope: !4412, file: !927, line: 300, type: !946)
!4415 = !DILocation(line: 0, scope: !4412, inlinedAt: !4416)
!4416 = distinct !DILocation(line: 287, column: 10, scope: !4407)
!4417 = !DILocalVariable(name: "n", arg: 1, scope: !4418, file: !4158, line: 77, type: !946)
!4418 = distinct !DISubprogram(name: "icalloc", scope: !4158, file: !4158, line: 77, type: !4076, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !926, retainedNodes: !4419)
!4419 = !{!4417, !4420}
!4420 = !DILocalVariable(name: "s", arg: 2, scope: !4418, file: !4158, line: 77, type: !946)
!4421 = !DILocation(line: 0, scope: !4418, inlinedAt: !4422)
!4422 = distinct !DILocation(line: 302, column: 25, scope: !4412, inlinedAt: !4416)
!4423 = !DILocation(line: 91, column: 10, scope: !4418, inlinedAt: !4422)
!4424 = !DILocation(line: 0, scope: !4117, inlinedAt: !4425)
!4425 = distinct !DILocation(line: 302, column: 10, scope: !4412, inlinedAt: !4416)
!4426 = !DILocation(line: 39, column: 8, scope: !4124, inlinedAt: !4425)
!4427 = !DILocation(line: 39, column: 7, scope: !4117, inlinedAt: !4425)
!4428 = !DILocation(line: 40, column: 5, scope: !4124, inlinedAt: !4425)
!4429 = !DILocation(line: 287, column: 3, scope: !4407)
!4430 = !DILocation(line: 0, scope: !4412)
!4431 = !DILocation(line: 0, scope: !4418, inlinedAt: !4432)
!4432 = distinct !DILocation(line: 302, column: 25, scope: !4412)
!4433 = !DILocation(line: 91, column: 10, scope: !4418, inlinedAt: !4432)
!4434 = !DILocation(line: 0, scope: !4117, inlinedAt: !4435)
!4435 = distinct !DILocation(line: 302, column: 10, scope: !4412)
!4436 = !DILocation(line: 39, column: 8, scope: !4124, inlinedAt: !4435)
!4437 = !DILocation(line: 39, column: 7, scope: !4117, inlinedAt: !4435)
!4438 = !DILocation(line: 40, column: 5, scope: !4124, inlinedAt: !4435)
!4439 = !DILocation(line: 302, column: 3, scope: !4412)
!4440 = distinct !DISubprogram(name: "xmemdup", scope: !927, file: !927, line: 310, type: !4441, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !926, retainedNodes: !4443)
!4441 = !DISubroutineType(types: !4442)
!4442 = !{!144, !1216, !146}
!4443 = !{!4444, !4445}
!4444 = !DILocalVariable(name: "p", arg: 1, scope: !4440, file: !927, line: 310, type: !1216)
!4445 = !DILocalVariable(name: "s", arg: 2, scope: !4440, file: !927, line: 310, type: !146)
!4446 = !DILocation(line: 0, scope: !4440)
!4447 = !DILocation(line: 0, scope: !4136, inlinedAt: !4448)
!4448 = distinct !DILocation(line: 312, column: 18, scope: !4440)
!4449 = !DILocation(line: 49, column: 25, scope: !4136, inlinedAt: !4448)
!4450 = !DILocation(line: 0, scope: !4117, inlinedAt: !4451)
!4451 = distinct !DILocation(line: 49, column: 10, scope: !4136, inlinedAt: !4448)
!4452 = !DILocation(line: 39, column: 8, scope: !4124, inlinedAt: !4451)
!4453 = !DILocation(line: 39, column: 7, scope: !4117, inlinedAt: !4451)
!4454 = !DILocation(line: 40, column: 5, scope: !4124, inlinedAt: !4451)
!4455 = !DILocalVariable(name: "__dest", arg: 1, scope: !4456, file: !1505, line: 26, type: !4459)
!4456 = distinct !DISubprogram(name: "memcpy", scope: !1505, file: !1505, line: 26, type: !4457, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !926, retainedNodes: !4460)
!4457 = !DISubroutineType(types: !4458)
!4458 = !{!144, !4459, !1215, !146}
!4459 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !144)
!4460 = !{!4455, !4461, !4462}
!4461 = !DILocalVariable(name: "__src", arg: 2, scope: !4456, file: !1505, line: 26, type: !1215)
!4462 = !DILocalVariable(name: "__len", arg: 3, scope: !4456, file: !1505, line: 26, type: !146)
!4463 = !DILocation(line: 0, scope: !4456, inlinedAt: !4464)
!4464 = distinct !DILocation(line: 312, column: 10, scope: !4440)
!4465 = !DILocation(line: 29, column: 10, scope: !4456, inlinedAt: !4464)
!4466 = !DILocation(line: 312, column: 3, scope: !4440)
!4467 = distinct !DISubprogram(name: "ximemdup", scope: !927, file: !927, line: 316, type: !4468, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !926, retainedNodes: !4470)
!4468 = !DISubroutineType(types: !4469)
!4469 = !{!144, !1216, !946}
!4470 = !{!4471, !4472}
!4471 = !DILocalVariable(name: "p", arg: 1, scope: !4467, file: !927, line: 316, type: !1216)
!4472 = !DILocalVariable(name: "s", arg: 2, scope: !4467, file: !927, line: 316, type: !946)
!4473 = !DILocation(line: 0, scope: !4467)
!4474 = !DILocation(line: 0, scope: !4150, inlinedAt: !4475)
!4475 = distinct !DILocation(line: 318, column: 18, scope: !4467)
!4476 = !DILocation(line: 0, scope: !4157, inlinedAt: !4477)
!4477 = distinct !DILocation(line: 55, column: 25, scope: !4150, inlinedAt: !4475)
!4478 = !DILocation(line: 57, column: 26, scope: !4157, inlinedAt: !4477)
!4479 = !DILocation(line: 0, scope: !4117, inlinedAt: !4480)
!4480 = distinct !DILocation(line: 55, column: 10, scope: !4150, inlinedAt: !4475)
!4481 = !DILocation(line: 39, column: 8, scope: !4124, inlinedAt: !4480)
!4482 = !DILocation(line: 39, column: 7, scope: !4117, inlinedAt: !4480)
!4483 = !DILocation(line: 40, column: 5, scope: !4124, inlinedAt: !4480)
!4484 = !DILocation(line: 0, scope: !4456, inlinedAt: !4485)
!4485 = distinct !DILocation(line: 318, column: 10, scope: !4467)
!4486 = !DILocation(line: 29, column: 10, scope: !4456, inlinedAt: !4485)
!4487 = !DILocation(line: 318, column: 3, scope: !4467)
!4488 = distinct !DISubprogram(name: "ximemdup0", scope: !927, file: !927, line: 325, type: !4489, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !926, retainedNodes: !4491)
!4489 = !DISubroutineType(types: !4490)
!4490 = !{!88, !1216, !946}
!4491 = !{!4492, !4493, !4494}
!4492 = !DILocalVariable(name: "p", arg: 1, scope: !4488, file: !927, line: 325, type: !1216)
!4493 = !DILocalVariable(name: "s", arg: 2, scope: !4488, file: !927, line: 325, type: !946)
!4494 = !DILocalVariable(name: "result", scope: !4488, file: !927, line: 327, type: !88)
!4495 = !DILocation(line: 0, scope: !4488)
!4496 = !DILocation(line: 327, column: 30, scope: !4488)
!4497 = !DILocation(line: 0, scope: !4150, inlinedAt: !4498)
!4498 = distinct !DILocation(line: 327, column: 18, scope: !4488)
!4499 = !DILocation(line: 0, scope: !4157, inlinedAt: !4500)
!4500 = distinct !DILocation(line: 55, column: 25, scope: !4150, inlinedAt: !4498)
!4501 = !DILocation(line: 57, column: 26, scope: !4157, inlinedAt: !4500)
!4502 = !DILocation(line: 0, scope: !4117, inlinedAt: !4503)
!4503 = distinct !DILocation(line: 55, column: 10, scope: !4150, inlinedAt: !4498)
!4504 = !DILocation(line: 39, column: 8, scope: !4124, inlinedAt: !4503)
!4505 = !DILocation(line: 39, column: 7, scope: !4117, inlinedAt: !4503)
!4506 = !DILocation(line: 40, column: 5, scope: !4124, inlinedAt: !4503)
!4507 = !DILocation(line: 328, column: 3, scope: !4488)
!4508 = !DILocation(line: 328, column: 13, scope: !4488)
!4509 = !DILocation(line: 0, scope: !4456, inlinedAt: !4510)
!4510 = distinct !DILocation(line: 329, column: 10, scope: !4488)
!4511 = !DILocation(line: 29, column: 10, scope: !4456, inlinedAt: !4510)
!4512 = !DILocation(line: 329, column: 3, scope: !4488)
!4513 = distinct !DISubprogram(name: "xstrdup", scope: !927, file: !927, line: 335, type: !1194, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !926, retainedNodes: !4514)
!4514 = !{!4515}
!4515 = !DILocalVariable(name: "string", arg: 1, scope: !4513, file: !927, line: 335, type: !149)
!4516 = !DILocation(line: 0, scope: !4513)
!4517 = !DILocation(line: 337, column: 27, scope: !4513)
!4518 = !DILocation(line: 337, column: 43, scope: !4513)
!4519 = !DILocation(line: 0, scope: !4440, inlinedAt: !4520)
!4520 = distinct !DILocation(line: 337, column: 10, scope: !4513)
!4521 = !DILocation(line: 0, scope: !4136, inlinedAt: !4522)
!4522 = distinct !DILocation(line: 312, column: 18, scope: !4440, inlinedAt: !4520)
!4523 = !DILocation(line: 49, column: 25, scope: !4136, inlinedAt: !4522)
!4524 = !DILocation(line: 0, scope: !4117, inlinedAt: !4525)
!4525 = distinct !DILocation(line: 49, column: 10, scope: !4136, inlinedAt: !4522)
!4526 = !DILocation(line: 39, column: 8, scope: !4124, inlinedAt: !4525)
!4527 = !DILocation(line: 39, column: 7, scope: !4117, inlinedAt: !4525)
!4528 = !DILocation(line: 40, column: 5, scope: !4124, inlinedAt: !4525)
!4529 = !DILocation(line: 0, scope: !4456, inlinedAt: !4530)
!4530 = distinct !DILocation(line: 312, column: 10, scope: !4440, inlinedAt: !4520)
!4531 = !DILocation(line: 29, column: 10, scope: !4456, inlinedAt: !4530)
!4532 = !DILocation(line: 337, column: 3, scope: !4513)
!4533 = distinct !DISubprogram(name: "xalloc_die", scope: !869, file: !869, line: 32, type: !616, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !959, retainedNodes: !4534)
!4534 = !{!4535}
!4535 = !DILocalVariable(name: "__errstatus", scope: !4536, file: !869, line: 34, type: !4537)
!4536 = distinct !DILexicalBlock(scope: !4533, file: !869, line: 34, column: 3)
!4537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!4538 = !DILocation(line: 34, column: 3, scope: !4536)
!4539 = !DILocation(line: 0, scope: !4536)
!4540 = !DILocation(line: 40, column: 3, scope: !4533)
!4541 = distinct !DISubprogram(name: "close_stream", scope: !962, file: !962, line: 55, type: !4542, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !4578)
!4542 = !DISubroutineType(types: !4543)
!4543 = !{!86, !4544}
!4544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4545, size: 64)
!4545 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !289, line: 7, baseType: !4546)
!4546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !291, line: 49, size: 1728, elements: !4547)
!4547 = !{!4548, !4549, !4550, !4551, !4552, !4553, !4554, !4555, !4556, !4557, !4558, !4559, !4560, !4561, !4563, !4564, !4565, !4566, !4567, !4568, !4569, !4570, !4571, !4572, !4573, !4574, !4575, !4576, !4577}
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4546, file: !291, line: 51, baseType: !86, size: 32)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4546, file: !291, line: 54, baseType: !88, size: 64, offset: 64)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4546, file: !291, line: 55, baseType: !88, size: 64, offset: 128)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4546, file: !291, line: 56, baseType: !88, size: 64, offset: 192)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4546, file: !291, line: 57, baseType: !88, size: 64, offset: 256)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4546, file: !291, line: 58, baseType: !88, size: 64, offset: 320)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4546, file: !291, line: 59, baseType: !88, size: 64, offset: 384)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4546, file: !291, line: 60, baseType: !88, size: 64, offset: 448)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4546, file: !291, line: 61, baseType: !88, size: 64, offset: 512)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4546, file: !291, line: 64, baseType: !88, size: 64, offset: 576)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4546, file: !291, line: 65, baseType: !88, size: 64, offset: 640)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4546, file: !291, line: 66, baseType: !88, size: 64, offset: 704)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4546, file: !291, line: 68, baseType: !306, size: 64, offset: 768)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4546, file: !291, line: 70, baseType: !4562, size: 64, offset: 832)
!4562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4546, size: 64)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4546, file: !291, line: 72, baseType: !86, size: 32, offset: 896)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4546, file: !291, line: 73, baseType: !86, size: 32, offset: 928)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4546, file: !291, line: 74, baseType: !313, size: 64, offset: 960)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4546, file: !291, line: 77, baseType: !145, size: 16, offset: 1024)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4546, file: !291, line: 78, baseType: !318, size: 8, offset: 1040)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4546, file: !291, line: 79, baseType: !197, size: 8, offset: 1048)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4546, file: !291, line: 81, baseType: !321, size: 64, offset: 1088)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4546, file: !291, line: 89, baseType: !324, size: 64, offset: 1152)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4546, file: !291, line: 91, baseType: !326, size: 64, offset: 1216)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4546, file: !291, line: 92, baseType: !329, size: 64, offset: 1280)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4546, file: !291, line: 93, baseType: !4562, size: 64, offset: 1344)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4546, file: !291, line: 94, baseType: !144, size: 64, offset: 1408)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4546, file: !291, line: 95, baseType: !146, size: 64, offset: 1472)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4546, file: !291, line: 96, baseType: !86, size: 32, offset: 1536)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4546, file: !291, line: 98, baseType: !226, size: 160, offset: 1568)
!4578 = !{!4579, !4580, !4582, !4583}
!4579 = !DILocalVariable(name: "stream", arg: 1, scope: !4541, file: !962, line: 55, type: !4544)
!4580 = !DILocalVariable(name: "some_pending", scope: !4541, file: !962, line: 57, type: !4581)
!4581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !274)
!4582 = !DILocalVariable(name: "prev_fail", scope: !4541, file: !962, line: 58, type: !4581)
!4583 = !DILocalVariable(name: "fclose_fail", scope: !4541, file: !962, line: 59, type: !4581)
!4584 = !DILocation(line: 0, scope: !4541)
!4585 = !DILocation(line: 57, column: 30, scope: !4541)
!4586 = !DILocalVariable(name: "__stream", arg: 1, scope: !4587, file: !2132, line: 135, type: !4544)
!4587 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2132, file: !2132, line: 135, type: !4542, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !4588)
!4588 = !{!4586}
!4589 = !DILocation(line: 0, scope: !4587, inlinedAt: !4590)
!4590 = distinct !DILocation(line: 58, column: 27, scope: !4541)
!4591 = !DILocation(line: 137, column: 10, scope: !4587, inlinedAt: !4590)
!4592 = !{!2141, !1072, i64 0}
!4593 = !DILocation(line: 58, column: 43, scope: !4541)
!4594 = !DILocation(line: 59, column: 29, scope: !4541)
!4595 = !DILocation(line: 59, column: 45, scope: !4541)
!4596 = !DILocation(line: 69, column: 17, scope: !4597)
!4597 = distinct !DILexicalBlock(scope: !4541, file: !962, line: 69, column: 7)
!4598 = !DILocation(line: 57, column: 50, scope: !4541)
!4599 = !DILocation(line: 69, column: 33, scope: !4597)
!4600 = !DILocation(line: 69, column: 53, scope: !4597)
!4601 = !DILocation(line: 69, column: 59, scope: !4597)
!4602 = !DILocation(line: 69, column: 7, scope: !4541)
!4603 = !DILocation(line: 71, column: 11, scope: !4604)
!4604 = distinct !DILexicalBlock(scope: !4597, file: !962, line: 70, column: 5)
!4605 = !DILocation(line: 72, column: 9, scope: !4606)
!4606 = distinct !DILexicalBlock(scope: !4604, file: !962, line: 71, column: 11)
!4607 = !DILocation(line: 72, column: 15, scope: !4606)
!4608 = !DILocation(line: 77, column: 1, scope: !4541)
!4609 = !DISubprogram(name: "__fpending", scope: !2445, file: !2445, line: 75, type: !4610, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4610 = !DISubroutineType(types: !4611)
!4611 = !{!146, !4544}
!4612 = distinct !DISubprogram(name: "rpl_fclose", scope: !964, file: !964, line: 58, type: !4613, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !963, retainedNodes: !4649)
!4613 = !DISubroutineType(types: !4614)
!4614 = !{!86, !4615}
!4615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4616, size: 64)
!4616 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !289, line: 7, baseType: !4617)
!4617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !291, line: 49, size: 1728, elements: !4618)
!4618 = !{!4619, !4620, !4621, !4622, !4623, !4624, !4625, !4626, !4627, !4628, !4629, !4630, !4631, !4632, !4634, !4635, !4636, !4637, !4638, !4639, !4640, !4641, !4642, !4643, !4644, !4645, !4646, !4647, !4648}
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4617, file: !291, line: 51, baseType: !86, size: 32)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4617, file: !291, line: 54, baseType: !88, size: 64, offset: 64)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4617, file: !291, line: 55, baseType: !88, size: 64, offset: 128)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4617, file: !291, line: 56, baseType: !88, size: 64, offset: 192)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4617, file: !291, line: 57, baseType: !88, size: 64, offset: 256)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4617, file: !291, line: 58, baseType: !88, size: 64, offset: 320)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4617, file: !291, line: 59, baseType: !88, size: 64, offset: 384)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4617, file: !291, line: 60, baseType: !88, size: 64, offset: 448)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4617, file: !291, line: 61, baseType: !88, size: 64, offset: 512)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4617, file: !291, line: 64, baseType: !88, size: 64, offset: 576)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4617, file: !291, line: 65, baseType: !88, size: 64, offset: 640)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4617, file: !291, line: 66, baseType: !88, size: 64, offset: 704)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4617, file: !291, line: 68, baseType: !306, size: 64, offset: 768)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4617, file: !291, line: 70, baseType: !4633, size: 64, offset: 832)
!4633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4617, size: 64)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4617, file: !291, line: 72, baseType: !86, size: 32, offset: 896)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4617, file: !291, line: 73, baseType: !86, size: 32, offset: 928)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4617, file: !291, line: 74, baseType: !313, size: 64, offset: 960)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4617, file: !291, line: 77, baseType: !145, size: 16, offset: 1024)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4617, file: !291, line: 78, baseType: !318, size: 8, offset: 1040)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4617, file: !291, line: 79, baseType: !197, size: 8, offset: 1048)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4617, file: !291, line: 81, baseType: !321, size: 64, offset: 1088)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4617, file: !291, line: 89, baseType: !324, size: 64, offset: 1152)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4617, file: !291, line: 91, baseType: !326, size: 64, offset: 1216)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4617, file: !291, line: 92, baseType: !329, size: 64, offset: 1280)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4617, file: !291, line: 93, baseType: !4633, size: 64, offset: 1344)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4617, file: !291, line: 94, baseType: !144, size: 64, offset: 1408)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4617, file: !291, line: 95, baseType: !146, size: 64, offset: 1472)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4617, file: !291, line: 96, baseType: !86, size: 32, offset: 1536)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4617, file: !291, line: 98, baseType: !226, size: 160, offset: 1568)
!4649 = !{!4650, !4651, !4652, !4653}
!4650 = !DILocalVariable(name: "fp", arg: 1, scope: !4612, file: !964, line: 58, type: !4615)
!4651 = !DILocalVariable(name: "saved_errno", scope: !4612, file: !964, line: 60, type: !86)
!4652 = !DILocalVariable(name: "fd", scope: !4612, file: !964, line: 63, type: !86)
!4653 = !DILocalVariable(name: "result", scope: !4612, file: !964, line: 74, type: !86)
!4654 = !DILocation(line: 0, scope: !4612)
!4655 = !DILocation(line: 63, column: 12, scope: !4612)
!4656 = !DILocation(line: 64, column: 10, scope: !4657)
!4657 = distinct !DILexicalBlock(scope: !4612, file: !964, line: 64, column: 7)
!4658 = !DILocation(line: 64, column: 7, scope: !4612)
!4659 = !DILocation(line: 65, column: 12, scope: !4657)
!4660 = !DILocation(line: 65, column: 5, scope: !4657)
!4661 = !DILocation(line: 70, column: 9, scope: !4662)
!4662 = distinct !DILexicalBlock(scope: !4612, file: !964, line: 70, column: 7)
!4663 = !DILocation(line: 70, column: 23, scope: !4662)
!4664 = !DILocation(line: 70, column: 33, scope: !4662)
!4665 = !DILocation(line: 70, column: 26, scope: !4662)
!4666 = !DILocation(line: 70, column: 59, scope: !4662)
!4667 = !DILocation(line: 71, column: 7, scope: !4662)
!4668 = !DILocation(line: 71, column: 10, scope: !4662)
!4669 = !DILocation(line: 70, column: 7, scope: !4612)
!4670 = !DILocation(line: 100, column: 12, scope: !4612)
!4671 = !DILocation(line: 105, column: 7, scope: !4612)
!4672 = !DILocation(line: 72, column: 19, scope: !4662)
!4673 = !DILocation(line: 105, column: 19, scope: !4674)
!4674 = distinct !DILexicalBlock(scope: !4612, file: !964, line: 105, column: 7)
!4675 = !DILocation(line: 107, column: 13, scope: !4676)
!4676 = distinct !DILexicalBlock(scope: !4674, file: !964, line: 106, column: 5)
!4677 = !DILocation(line: 109, column: 5, scope: !4676)
!4678 = !DILocation(line: 112, column: 1, scope: !4612)
!4679 = !DISubprogram(name: "fclose", scope: !518, file: !518, line: 178, type: !4613, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4680 = !DISubprogram(name: "__freading", scope: !2445, file: !2445, line: 51, type: !4613, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4681 = distinct !DISubprogram(name: "rpl_fflush", scope: !966, file: !966, line: 130, type: !4682, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !965, retainedNodes: !4718)
!4682 = !DISubroutineType(types: !4683)
!4683 = !{!86, !4684}
!4684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4685, size: 64)
!4685 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !289, line: 7, baseType: !4686)
!4686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !291, line: 49, size: 1728, elements: !4687)
!4687 = !{!4688, !4689, !4690, !4691, !4692, !4693, !4694, !4695, !4696, !4697, !4698, !4699, !4700, !4701, !4703, !4704, !4705, !4706, !4707, !4708, !4709, !4710, !4711, !4712, !4713, !4714, !4715, !4716, !4717}
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4686, file: !291, line: 51, baseType: !86, size: 32)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4686, file: !291, line: 54, baseType: !88, size: 64, offset: 64)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4686, file: !291, line: 55, baseType: !88, size: 64, offset: 128)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4686, file: !291, line: 56, baseType: !88, size: 64, offset: 192)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4686, file: !291, line: 57, baseType: !88, size: 64, offset: 256)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4686, file: !291, line: 58, baseType: !88, size: 64, offset: 320)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4686, file: !291, line: 59, baseType: !88, size: 64, offset: 384)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4686, file: !291, line: 60, baseType: !88, size: 64, offset: 448)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4686, file: !291, line: 61, baseType: !88, size: 64, offset: 512)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4686, file: !291, line: 64, baseType: !88, size: 64, offset: 576)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4686, file: !291, line: 65, baseType: !88, size: 64, offset: 640)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4686, file: !291, line: 66, baseType: !88, size: 64, offset: 704)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4686, file: !291, line: 68, baseType: !306, size: 64, offset: 768)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4686, file: !291, line: 70, baseType: !4702, size: 64, offset: 832)
!4702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4686, size: 64)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4686, file: !291, line: 72, baseType: !86, size: 32, offset: 896)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4686, file: !291, line: 73, baseType: !86, size: 32, offset: 928)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4686, file: !291, line: 74, baseType: !313, size: 64, offset: 960)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4686, file: !291, line: 77, baseType: !145, size: 16, offset: 1024)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4686, file: !291, line: 78, baseType: !318, size: 8, offset: 1040)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4686, file: !291, line: 79, baseType: !197, size: 8, offset: 1048)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4686, file: !291, line: 81, baseType: !321, size: 64, offset: 1088)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4686, file: !291, line: 89, baseType: !324, size: 64, offset: 1152)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4686, file: !291, line: 91, baseType: !326, size: 64, offset: 1216)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4686, file: !291, line: 92, baseType: !329, size: 64, offset: 1280)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4686, file: !291, line: 93, baseType: !4702, size: 64, offset: 1344)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4686, file: !291, line: 94, baseType: !144, size: 64, offset: 1408)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4686, file: !291, line: 95, baseType: !146, size: 64, offset: 1472)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4686, file: !291, line: 96, baseType: !86, size: 32, offset: 1536)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4686, file: !291, line: 98, baseType: !226, size: 160, offset: 1568)
!4718 = !{!4719}
!4719 = !DILocalVariable(name: "stream", arg: 1, scope: !4681, file: !966, line: 130, type: !4684)
!4720 = !DILocation(line: 0, scope: !4681)
!4721 = !DILocation(line: 151, column: 14, scope: !4722)
!4722 = distinct !DILexicalBlock(scope: !4681, file: !966, line: 151, column: 7)
!4723 = !DILocation(line: 151, column: 22, scope: !4722)
!4724 = !DILocation(line: 151, column: 27, scope: !4722)
!4725 = !DILocation(line: 151, column: 7, scope: !4681)
!4726 = !DILocation(line: 152, column: 12, scope: !4722)
!4727 = !DILocation(line: 152, column: 5, scope: !4722)
!4728 = !DILocalVariable(name: "fp", arg: 1, scope: !4729, file: !966, line: 42, type: !4684)
!4729 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !966, file: !966, line: 42, type: !4730, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !965, retainedNodes: !4732)
!4730 = !DISubroutineType(types: !4731)
!4731 = !{null, !4684}
!4732 = !{!4728}
!4733 = !DILocation(line: 0, scope: !4729, inlinedAt: !4734)
!4734 = distinct !DILocation(line: 157, column: 3, scope: !4681)
!4735 = !DILocation(line: 44, column: 12, scope: !4736, inlinedAt: !4734)
!4736 = distinct !DILexicalBlock(scope: !4729, file: !966, line: 44, column: 7)
!4737 = !DILocation(line: 44, column: 19, scope: !4736, inlinedAt: !4734)
!4738 = !DILocation(line: 44, column: 7, scope: !4729, inlinedAt: !4734)
!4739 = !DILocation(line: 46, column: 5, scope: !4736, inlinedAt: !4734)
!4740 = !DILocation(line: 159, column: 10, scope: !4681)
!4741 = !DILocation(line: 159, column: 3, scope: !4681)
!4742 = !DILocation(line: 236, column: 1, scope: !4681)
!4743 = !DISubprogram(name: "fflush", scope: !518, file: !518, line: 230, type: !4682, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4744 = distinct !DISubprogram(name: "rpl_fseeko", scope: !968, file: !968, line: 28, type: !4745, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !967, retainedNodes: !4781)
!4745 = !DISubroutineType(types: !4746)
!4746 = !{!86, !4747, !517, !86}
!4747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4748, size: 64)
!4748 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !289, line: 7, baseType: !4749)
!4749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !291, line: 49, size: 1728, elements: !4750)
!4750 = !{!4751, !4752, !4753, !4754, !4755, !4756, !4757, !4758, !4759, !4760, !4761, !4762, !4763, !4764, !4766, !4767, !4768, !4769, !4770, !4771, !4772, !4773, !4774, !4775, !4776, !4777, !4778, !4779, !4780}
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4749, file: !291, line: 51, baseType: !86, size: 32)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4749, file: !291, line: 54, baseType: !88, size: 64, offset: 64)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4749, file: !291, line: 55, baseType: !88, size: 64, offset: 128)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4749, file: !291, line: 56, baseType: !88, size: 64, offset: 192)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4749, file: !291, line: 57, baseType: !88, size: 64, offset: 256)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4749, file: !291, line: 58, baseType: !88, size: 64, offset: 320)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4749, file: !291, line: 59, baseType: !88, size: 64, offset: 384)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4749, file: !291, line: 60, baseType: !88, size: 64, offset: 448)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4749, file: !291, line: 61, baseType: !88, size: 64, offset: 512)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4749, file: !291, line: 64, baseType: !88, size: 64, offset: 576)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4749, file: !291, line: 65, baseType: !88, size: 64, offset: 640)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4749, file: !291, line: 66, baseType: !88, size: 64, offset: 704)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4749, file: !291, line: 68, baseType: !306, size: 64, offset: 768)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4749, file: !291, line: 70, baseType: !4765, size: 64, offset: 832)
!4765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4749, size: 64)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4749, file: !291, line: 72, baseType: !86, size: 32, offset: 896)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4749, file: !291, line: 73, baseType: !86, size: 32, offset: 928)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4749, file: !291, line: 74, baseType: !313, size: 64, offset: 960)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4749, file: !291, line: 77, baseType: !145, size: 16, offset: 1024)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4749, file: !291, line: 78, baseType: !318, size: 8, offset: 1040)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4749, file: !291, line: 79, baseType: !197, size: 8, offset: 1048)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4749, file: !291, line: 81, baseType: !321, size: 64, offset: 1088)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4749, file: !291, line: 89, baseType: !324, size: 64, offset: 1152)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4749, file: !291, line: 91, baseType: !326, size: 64, offset: 1216)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4749, file: !291, line: 92, baseType: !329, size: 64, offset: 1280)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4749, file: !291, line: 93, baseType: !4765, size: 64, offset: 1344)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4749, file: !291, line: 94, baseType: !144, size: 64, offset: 1408)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4749, file: !291, line: 95, baseType: !146, size: 64, offset: 1472)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4749, file: !291, line: 96, baseType: !86, size: 32, offset: 1536)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4749, file: !291, line: 98, baseType: !226, size: 160, offset: 1568)
!4781 = !{!4782, !4783, !4784, !4785}
!4782 = !DILocalVariable(name: "fp", arg: 1, scope: !4744, file: !968, line: 28, type: !4747)
!4783 = !DILocalVariable(name: "offset", arg: 2, scope: !4744, file: !968, line: 28, type: !517)
!4784 = !DILocalVariable(name: "whence", arg: 3, scope: !4744, file: !968, line: 28, type: !86)
!4785 = !DILocalVariable(name: "pos", scope: !4786, file: !968, line: 123, type: !517)
!4786 = distinct !DILexicalBlock(scope: !4787, file: !968, line: 119, column: 5)
!4787 = distinct !DILexicalBlock(scope: !4744, file: !968, line: 55, column: 7)
!4788 = !DILocation(line: 0, scope: !4744)
!4789 = !DILocation(line: 55, column: 12, scope: !4787)
!4790 = !{!2141, !998, i64 16}
!4791 = !DILocation(line: 55, column: 33, scope: !4787)
!4792 = !{!2141, !998, i64 8}
!4793 = !DILocation(line: 55, column: 25, scope: !4787)
!4794 = !DILocation(line: 56, column: 7, scope: !4787)
!4795 = !DILocation(line: 56, column: 15, scope: !4787)
!4796 = !DILocation(line: 56, column: 37, scope: !4787)
!4797 = !{!2141, !998, i64 32}
!4798 = !DILocation(line: 56, column: 29, scope: !4787)
!4799 = !DILocation(line: 57, column: 7, scope: !4787)
!4800 = !DILocation(line: 57, column: 15, scope: !4787)
!4801 = !{!2141, !998, i64 72}
!4802 = !DILocation(line: 57, column: 29, scope: !4787)
!4803 = !DILocation(line: 55, column: 7, scope: !4744)
!4804 = !DILocation(line: 123, column: 26, scope: !4786)
!4805 = !DILocation(line: 123, column: 19, scope: !4786)
!4806 = !DILocation(line: 0, scope: !4786)
!4807 = !DILocation(line: 124, column: 15, scope: !4808)
!4808 = distinct !DILexicalBlock(scope: !4786, file: !968, line: 124, column: 11)
!4809 = !DILocation(line: 124, column: 11, scope: !4786)
!4810 = !DILocation(line: 135, column: 19, scope: !4786)
!4811 = !DILocation(line: 136, column: 12, scope: !4786)
!4812 = !DILocation(line: 136, column: 20, scope: !4786)
!4813 = !{!2141, !1273, i64 144}
!4814 = !DILocation(line: 167, column: 7, scope: !4786)
!4815 = !DILocation(line: 169, column: 10, scope: !4744)
!4816 = !DILocation(line: 169, column: 3, scope: !4744)
!4817 = !DILocation(line: 170, column: 1, scope: !4744)
!4818 = !DISubprogram(name: "fseeko", scope: !518, file: !518, line: 736, type: !4819, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4819 = !DISubroutineType(types: !4820)
!4820 = !{!86, !4747, !313, !86}
!4821 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !876, file: !876, line: 100, type: !4822, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !4825)
!4822 = !DISubroutineType(types: !4823)
!4823 = !{!146, !2554, !149, !146, !4824}
!4824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!4825 = !{!4826, !4827, !4828, !4829, !4830}
!4826 = !DILocalVariable(name: "pwc", arg: 1, scope: !4821, file: !876, line: 100, type: !2554)
!4827 = !DILocalVariable(name: "s", arg: 2, scope: !4821, file: !876, line: 100, type: !149)
!4828 = !DILocalVariable(name: "n", arg: 3, scope: !4821, file: !876, line: 100, type: !146)
!4829 = !DILocalVariable(name: "ps", arg: 4, scope: !4821, file: !876, line: 100, type: !4824)
!4830 = !DILocalVariable(name: "ret", scope: !4821, file: !876, line: 130, type: !146)
!4831 = !DILocation(line: 0, scope: !4821)
!4832 = !DILocation(line: 105, column: 9, scope: !4833)
!4833 = distinct !DILexicalBlock(scope: !4821, file: !876, line: 105, column: 7)
!4834 = !DILocation(line: 105, column: 7, scope: !4821)
!4835 = !DILocation(line: 117, column: 10, scope: !4836)
!4836 = distinct !DILexicalBlock(scope: !4821, file: !876, line: 117, column: 7)
!4837 = !DILocation(line: 117, column: 7, scope: !4821)
!4838 = !DILocation(line: 130, column: 16, scope: !4821)
!4839 = !DILocation(line: 135, column: 11, scope: !4840)
!4840 = distinct !DILexicalBlock(scope: !4821, file: !876, line: 135, column: 7)
!4841 = !DILocation(line: 135, column: 25, scope: !4840)
!4842 = !DILocation(line: 135, column: 30, scope: !4840)
!4843 = !DILocation(line: 135, column: 7, scope: !4821)
!4844 = !DILocalVariable(name: "ps", arg: 1, scope: !4845, file: !2528, line: 1135, type: !4824)
!4845 = distinct !DISubprogram(name: "mbszero", scope: !2528, file: !2528, line: 1135, type: !4846, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !4848)
!4846 = !DISubroutineType(types: !4847)
!4847 = !{null, !4824}
!4848 = !{!4844}
!4849 = !DILocation(line: 0, scope: !4845, inlinedAt: !4850)
!4850 = distinct !DILocation(line: 137, column: 5, scope: !4840)
!4851 = !DILocalVariable(name: "__dest", arg: 1, scope: !4852, file: !1505, line: 57, type: !144)
!4852 = distinct !DISubprogram(name: "memset", scope: !1505, file: !1505, line: 57, type: !2537, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !4853)
!4853 = !{!4851, !4854, !4855}
!4854 = !DILocalVariable(name: "__ch", arg: 2, scope: !4852, file: !1505, line: 57, type: !86)
!4855 = !DILocalVariable(name: "__len", arg: 3, scope: !4852, file: !1505, line: 57, type: !146)
!4856 = !DILocation(line: 0, scope: !4852, inlinedAt: !4857)
!4857 = distinct !DILocation(line: 1137, column: 3, scope: !4845, inlinedAt: !4850)
!4858 = !DILocation(line: 59, column: 10, scope: !4852, inlinedAt: !4857)
!4859 = !DILocation(line: 137, column: 5, scope: !4840)
!4860 = !DILocation(line: 138, column: 11, scope: !4861)
!4861 = distinct !DILexicalBlock(scope: !4821, file: !876, line: 138, column: 7)
!4862 = !DILocation(line: 138, column: 7, scope: !4821)
!4863 = !DILocation(line: 139, column: 5, scope: !4861)
!4864 = !DILocation(line: 143, column: 26, scope: !4865)
!4865 = distinct !DILexicalBlock(scope: !4821, file: !876, line: 143, column: 7)
!4866 = !DILocation(line: 143, column: 41, scope: !4865)
!4867 = !DILocation(line: 143, column: 7, scope: !4821)
!4868 = !DILocation(line: 145, column: 15, scope: !4869)
!4869 = distinct !DILexicalBlock(scope: !4870, file: !876, line: 145, column: 11)
!4870 = distinct !DILexicalBlock(scope: !4865, file: !876, line: 144, column: 5)
!4871 = !DILocation(line: 145, column: 11, scope: !4870)
!4872 = !DILocation(line: 146, column: 32, scope: !4869)
!4873 = !DILocation(line: 146, column: 16, scope: !4869)
!4874 = !DILocation(line: 146, column: 14, scope: !4869)
!4875 = !DILocation(line: 146, column: 9, scope: !4869)
!4876 = !DILocation(line: 286, column: 1, scope: !4821)
!4877 = !DISubprogram(name: "mbsinit", scope: !4878, file: !4878, line: 293, type: !4879, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4878 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4879 = !DISubroutineType(types: !4880)
!4880 = !{!86, !4881}
!4881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4882, size: 64)
!4882 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !882)
!4883 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !970, file: !970, line: 27, type: !4101, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !969, retainedNodes: !4884)
!4884 = !{!4885, !4886, !4887, !4888}
!4885 = !DILocalVariable(name: "ptr", arg: 1, scope: !4883, file: !970, line: 27, type: !144)
!4886 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4883, file: !970, line: 27, type: !146)
!4887 = !DILocalVariable(name: "size", arg: 3, scope: !4883, file: !970, line: 27, type: !146)
!4888 = !DILocalVariable(name: "nbytes", scope: !4883, file: !970, line: 29, type: !146)
!4889 = !DILocation(line: 0, scope: !4883)
!4890 = !DILocation(line: 30, column: 7, scope: !4891)
!4891 = distinct !DILexicalBlock(scope: !4883, file: !970, line: 30, column: 7)
!4892 = !DILocation(line: 30, column: 7, scope: !4883)
!4893 = !DILocation(line: 32, column: 7, scope: !4894)
!4894 = distinct !DILexicalBlock(scope: !4891, file: !970, line: 31, column: 5)
!4895 = !DILocation(line: 32, column: 13, scope: !4894)
!4896 = !DILocation(line: 33, column: 7, scope: !4894)
!4897 = !DILocalVariable(name: "ptr", arg: 1, scope: !4898, file: !4193, line: 2057, type: !144)
!4898 = distinct !DISubprogram(name: "rpl_realloc", scope: !4193, file: !4193, line: 2057, type: !4185, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !969, retainedNodes: !4899)
!4899 = !{!4897, !4900}
!4900 = !DILocalVariable(name: "size", arg: 2, scope: !4898, file: !4193, line: 2057, type: !146)
!4901 = !DILocation(line: 0, scope: !4898, inlinedAt: !4902)
!4902 = distinct !DILocation(line: 37, column: 10, scope: !4883)
!4903 = !DILocation(line: 2059, column: 24, scope: !4898, inlinedAt: !4902)
!4904 = !DILocation(line: 2059, column: 10, scope: !4898, inlinedAt: !4902)
!4905 = !DILocation(line: 37, column: 3, scope: !4883)
!4906 = !DILocation(line: 38, column: 1, scope: !4883)
!4907 = distinct !DISubprogram(name: "hard_locale", scope: !894, file: !894, line: 28, type: !4908, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !971, retainedNodes: !4910)
!4908 = !DISubroutineType(types: !4909)
!4909 = !{!274, !86}
!4910 = !{!4911, !4912}
!4911 = !DILocalVariable(name: "category", arg: 1, scope: !4907, file: !894, line: 28, type: !86)
!4912 = !DILocalVariable(name: "locale", scope: !4907, file: !894, line: 30, type: !4913)
!4913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4914)
!4914 = !{!4915}
!4915 = !DISubrange(count: 257)
!4916 = distinct !DIAssignID()
!4917 = !DILocation(line: 0, scope: !4907)
!4918 = !DILocation(line: 30, column: 3, scope: !4907)
!4919 = !DILocation(line: 32, column: 7, scope: !4920)
!4920 = distinct !DILexicalBlock(scope: !4907, file: !894, line: 32, column: 7)
!4921 = !DILocation(line: 32, column: 7, scope: !4907)
!4922 = !DILocalVariable(name: "__s1", arg: 1, scope: !4923, file: !1084, line: 1359, type: !149)
!4923 = distinct !DISubprogram(name: "streq", scope: !1084, file: !1084, line: 1359, type: !1085, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !971, retainedNodes: !4924)
!4924 = !{!4922, !4925}
!4925 = !DILocalVariable(name: "__s2", arg: 2, scope: !4923, file: !1084, line: 1359, type: !149)
!4926 = !DILocation(line: 0, scope: !4923, inlinedAt: !4927)
!4927 = distinct !DILocation(line: 35, column: 9, scope: !4928)
!4928 = distinct !DILexicalBlock(scope: !4907, file: !894, line: 35, column: 7)
!4929 = !DILocation(line: 1361, column: 11, scope: !4923, inlinedAt: !4927)
!4930 = !DILocation(line: 1361, column: 10, scope: !4923, inlinedAt: !4927)
!4931 = !DILocation(line: 35, column: 29, scope: !4928)
!4932 = !DILocation(line: 0, scope: !4923, inlinedAt: !4933)
!4933 = distinct !DILocation(line: 35, column: 32, scope: !4928)
!4934 = !DILocation(line: 1361, column: 11, scope: !4923, inlinedAt: !4933)
!4935 = !DILocation(line: 1361, column: 10, scope: !4923, inlinedAt: !4933)
!4936 = !DILocation(line: 35, column: 7, scope: !4907)
!4937 = !DILocation(line: 46, column: 3, scope: !4907)
!4938 = !DILocation(line: 47, column: 1, scope: !4907)
!4939 = distinct !DISubprogram(name: "setlocale_null_r", scope: !974, file: !974, line: 154, type: !4940, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !973, retainedNodes: !4942)
!4940 = !DISubroutineType(types: !4941)
!4941 = !{!86, !86, !88, !146}
!4942 = !{!4943, !4944, !4945}
!4943 = !DILocalVariable(name: "category", arg: 1, scope: !4939, file: !974, line: 154, type: !86)
!4944 = !DILocalVariable(name: "buf", arg: 2, scope: !4939, file: !974, line: 154, type: !88)
!4945 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4939, file: !974, line: 154, type: !146)
!4946 = !DILocation(line: 0, scope: !4939)
!4947 = !DILocation(line: 159, column: 10, scope: !4939)
!4948 = !DILocation(line: 159, column: 3, scope: !4939)
!4949 = distinct !DISubprogram(name: "setlocale_null", scope: !974, file: !974, line: 186, type: !4950, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !973, retainedNodes: !4952)
!4950 = !DISubroutineType(types: !4951)
!4951 = !{!149, !86}
!4952 = !{!4953}
!4953 = !DILocalVariable(name: "category", arg: 1, scope: !4949, file: !974, line: 186, type: !86)
!4954 = !DILocation(line: 0, scope: !4949)
!4955 = !DILocation(line: 189, column: 10, scope: !4949)
!4956 = !DILocation(line: 189, column: 3, scope: !4949)
!4957 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !976, file: !976, line: 35, type: !4950, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !975, retainedNodes: !4958)
!4958 = !{!4959, !4960}
!4959 = !DILocalVariable(name: "category", arg: 1, scope: !4957, file: !976, line: 35, type: !86)
!4960 = !DILocalVariable(name: "result", scope: !4957, file: !976, line: 37, type: !149)
!4961 = !DILocation(line: 0, scope: !4957)
!4962 = !DILocation(line: 37, column: 24, scope: !4957)
!4963 = !DILocation(line: 62, column: 3, scope: !4957)
!4964 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !976, file: !976, line: 66, type: !4940, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !975, retainedNodes: !4965)
!4965 = !{!4966, !4967, !4968, !4969, !4970}
!4966 = !DILocalVariable(name: "category", arg: 1, scope: !4964, file: !976, line: 66, type: !86)
!4967 = !DILocalVariable(name: "buf", arg: 2, scope: !4964, file: !976, line: 66, type: !88)
!4968 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4964, file: !976, line: 66, type: !146)
!4969 = !DILocalVariable(name: "result", scope: !4964, file: !976, line: 111, type: !149)
!4970 = !DILocalVariable(name: "length", scope: !4971, file: !976, line: 125, type: !146)
!4971 = distinct !DILexicalBlock(scope: !4972, file: !976, line: 124, column: 5)
!4972 = distinct !DILexicalBlock(scope: !4964, file: !976, line: 113, column: 7)
!4973 = !DILocation(line: 0, scope: !4964)
!4974 = !DILocation(line: 0, scope: !4957, inlinedAt: !4975)
!4975 = distinct !DILocation(line: 111, column: 24, scope: !4964)
!4976 = !DILocation(line: 37, column: 24, scope: !4957, inlinedAt: !4975)
!4977 = !DILocation(line: 113, column: 14, scope: !4972)
!4978 = !DILocation(line: 113, column: 7, scope: !4964)
!4979 = !DILocation(line: 116, column: 19, scope: !4980)
!4980 = distinct !DILexicalBlock(scope: !4981, file: !976, line: 116, column: 11)
!4981 = distinct !DILexicalBlock(scope: !4972, file: !976, line: 114, column: 5)
!4982 = !DILocation(line: 116, column: 11, scope: !4981)
!4983 = !DILocation(line: 120, column: 16, scope: !4980)
!4984 = !DILocation(line: 120, column: 9, scope: !4980)
!4985 = !DILocation(line: 125, column: 23, scope: !4971)
!4986 = !DILocation(line: 0, scope: !4971)
!4987 = !DILocation(line: 126, column: 18, scope: !4988)
!4988 = distinct !DILexicalBlock(scope: !4971, file: !976, line: 126, column: 11)
!4989 = !DILocation(line: 126, column: 11, scope: !4971)
!4990 = !DILocation(line: 128, column: 39, scope: !4991)
!4991 = distinct !DILexicalBlock(scope: !4988, file: !976, line: 127, column: 9)
!4992 = !DILocalVariable(name: "__dest", arg: 1, scope: !4993, file: !1505, line: 26, type: !4459)
!4993 = distinct !DISubprogram(name: "memcpy", scope: !1505, file: !1505, line: 26, type: !4457, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !975, retainedNodes: !4994)
!4994 = !{!4992, !4995, !4996}
!4995 = !DILocalVariable(name: "__src", arg: 2, scope: !4993, file: !1505, line: 26, type: !1215)
!4996 = !DILocalVariable(name: "__len", arg: 3, scope: !4993, file: !1505, line: 26, type: !146)
!4997 = !DILocation(line: 0, scope: !4993, inlinedAt: !4998)
!4998 = distinct !DILocation(line: 128, column: 11, scope: !4991)
!4999 = !DILocation(line: 29, column: 10, scope: !4993, inlinedAt: !4998)
!5000 = !DILocation(line: 129, column: 11, scope: !4991)
!5001 = !DILocation(line: 133, column: 23, scope: !5002)
!5002 = distinct !DILexicalBlock(scope: !5003, file: !976, line: 133, column: 15)
!5003 = distinct !DILexicalBlock(scope: !4988, file: !976, line: 132, column: 9)
!5004 = !DILocation(line: 133, column: 15, scope: !5003)
!5005 = !DILocation(line: 138, column: 44, scope: !5006)
!5006 = distinct !DILexicalBlock(scope: !5002, file: !976, line: 134, column: 13)
!5007 = !DILocation(line: 0, scope: !4993, inlinedAt: !5008)
!5008 = distinct !DILocation(line: 138, column: 15, scope: !5006)
!5009 = !DILocation(line: 29, column: 10, scope: !4993, inlinedAt: !5008)
!5010 = !DILocation(line: 139, column: 15, scope: !5006)
!5011 = !DILocation(line: 139, column: 32, scope: !5006)
!5012 = !DILocation(line: 140, column: 13, scope: !5006)
!5013 = !DILocation(line: 0, scope: !4972)
!5014 = !DILocation(line: 145, column: 1, scope: !4964)
