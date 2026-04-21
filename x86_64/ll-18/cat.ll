; ModuleID = 'src/cat.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
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
@pending_cr = internal unnamed_addr global i1 false, align 1, !dbg !539
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
@line_buf = internal global [20 x i8] c"                 0\09\00", align 16, !dbg !444
@.str.77 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !450
@.str.45 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !540
@Version = dso_local local_unnamed_addr global ptr @.str.45, align 8, !dbg !543
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !547
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !560
@.str.48 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !552
@.str.1.49 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !554
@.str.2.50 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !556
@.str.3.51 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !558
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !562
@stderr = external local_unnamed_addr global ptr, align 8
@.str.54 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !568
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !599
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !570
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !709
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !723
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !761
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !768
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !725
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !770
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !713
@.str.10.95 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !730
@.str.11.93 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !732
@.str.12.96 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !734
@.str.13.94 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !736
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !738
@.str.105 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !774
@.str.1.106 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !777
@.str.2.107 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !779
@.str.3.108 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !781
@.str.4.109 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !783
@.str.5.110 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !785
@.str.6.111 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !790
@.str.7.112 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !795
@.str.8.113 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !797
@.str.9.114 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !799
@.str.10.115 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !804
@.str.11.116 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !809
@.str.12.117 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !814
@.str.13.118 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !816
@.str.14.119 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !821
@.str.15.120 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !826
@.str.16.121 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !828
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.126 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !833
@.str.18.127 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !835
@.str.19.128 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !837
@.str.20.129 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !839
@.str.21.130 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !841
@.str.22.131 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !843
@.str.23.132 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !845
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !850
@exit_failure = dso_local global i32 1, align 4, !dbg !856
@.str.147 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !862
@.str.1.145 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !865
@.str.2.146 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !867
@.str.158 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !869
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !872
@.str.1.163 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !887

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !980 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !984, metadata !DIExpression()), !dbg !985
  %2 = icmp eq i32 %0, 0, !dbg !986
  br i1 %2, label %8, label %3, !dbg !988

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !989, !tbaa !991
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #41, !dbg !989
  %6 = load ptr, ptr @program_name, align 8, !dbg !989, !tbaa !991
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #41, !dbg !989
  br label %47, !dbg !989

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #41, !dbg !995
  %10 = load ptr, ptr @program_name, align 8, !dbg !995, !tbaa !991
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #41, !dbg !995
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #41, !dbg !997
  %13 = load ptr, ptr @stdout, align 8, !dbg !997, !tbaa !991
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !997
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.40, i32 noundef 5) #41, !dbg !998
  %16 = load ptr, ptr @stdout, align 8, !dbg !998, !tbaa !991
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !998
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #41, !dbg !1001
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !1001
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #41, !dbg !1002
  tail call fastcc void @oputs_(ptr noundef %19), !dbg !1002
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #41, !dbg !1003
  tail call fastcc void @oputs_(ptr noundef %20), !dbg !1003
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #41, !dbg !1004
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !1004
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #41, !dbg !1005
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !1005
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #41, !dbg !1006
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !1006
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #41, !dbg !1007
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !1007
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #41, !dbg !1008
  tail call fastcc void @oputs_(ptr noundef %25), !dbg !1008
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #41, !dbg !1009
  tail call fastcc void @oputs_(ptr noundef %26), !dbg !1009
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #41, !dbg !1010
  tail call fastcc void @oputs_(ptr noundef %27), !dbg !1010
  %28 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #41, !dbg !1011
  tail call fastcc void @oputs_(ptr noundef %28), !dbg !1011
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #41, !dbg !1012
  tail call fastcc void @oputs_(ptr noundef %29), !dbg !1012
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #41, !dbg !1013
  %31 = load ptr, ptr @program_name, align 8, !dbg !1013, !tbaa !991
  %32 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %31) #41, !dbg !1013
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1014, metadata !DIExpression()), !dbg !1031
  call void @llvm.dbg.value(metadata !1033, metadata !1027, metadata !DIExpression()), !dbg !1031
  call void @llvm.dbg.value(metadata ptr poison, metadata !1026, metadata !DIExpression()), !dbg !1031
  tail call void @emit_bug_reporting_address() #41, !dbg !1034
  %33 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #41, !dbg !1035
  call void @llvm.dbg.value(metadata ptr %33, metadata !1029, metadata !DIExpression()), !dbg !1031
  %34 = icmp eq ptr %33, null, !dbg !1036
  br i1 %34, label %42, label %35, !dbg !1038

35:                                               ; preds = %8
  %36 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %33, ptr noundef nonnull dereferenceable(4) @.str.71, i64 noundef 3) #42, !dbg !1039
  %37 = icmp eq i32 %36, 0, !dbg !1039
  br i1 %37, label %42, label %38, !dbg !1040

38:                                               ; preds = %35
  %39 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.72, i32 noundef 5) #41, !dbg !1041
  %40 = load ptr, ptr @stdout, align 8, !dbg !1041, !tbaa !991
  %41 = tail call i32 @fputs_unlocked(ptr noundef %39, ptr noundef %40), !dbg !1041
  br label %42, !dbg !1043

42:                                               ; preds = %8, %35, %38
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1026, metadata !DIExpression()), !dbg !1031
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1030, metadata !DIExpression()), !dbg !1031
  %43 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.73, i32 noundef 5) #41, !dbg !1044
  %44 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %43, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.3) #41, !dbg !1044
  %45 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.74, i32 noundef 5) #41, !dbg !1045
  %46 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %45, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.75) #41, !dbg !1045
  br label %47

47:                                               ; preds = %42, %3
  tail call void @exit(i32 noundef %0) #43, !dbg !1046
  unreachable, !dbg !1046
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1047 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1051 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1057 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1060 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !264 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !268, metadata !DIExpression()), !dbg !1063
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !269, metadata !DIExpression()), !dbg !1063
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !1064, !tbaa !1065
  %3 = icmp eq i32 %2, -1, !dbg !1067
  br i1 %3, label %4, label %16, !dbg !1068

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.41) #41, !dbg !1069
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !270, metadata !DIExpression()), !dbg !1070
  %6 = icmp eq ptr %5, null, !dbg !1071
  br i1 %6, label %14, label %7, !dbg !1072

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !1073, !tbaa !1074
  %9 = icmp eq i8 %8, 0, !dbg !1073
  br i1 %9, label %14, label %10, !dbg !1075

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !1076, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata ptr @.str.42, metadata !1082, metadata !DIExpression()), !dbg !1083
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.42) #42, !dbg !1085
  %12 = icmp eq i32 %11, 0, !dbg !1086
  %13 = zext i1 %12 to i32, !dbg !1075
  br label %14, !dbg !1075

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !1087, !tbaa !1065
  br label %16, !dbg !1088

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !1089
  %18 = icmp eq i32 %17, 0, !dbg !1089
  br i1 %18, label %22, label %19, !dbg !1091

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !1092, !tbaa !991
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !1092
  br label %124, !dbg !1094

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !273, metadata !DIExpression()), !dbg !1063
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.43) #42, !dbg !1095
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1096
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !275, metadata !DIExpression()), !dbg !1063
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #42, !dbg !1097
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !276, metadata !DIExpression()), !dbg !1063
  %26 = icmp eq ptr %25, null, !dbg !1098
  br i1 %26, label %54, label %27, !dbg !1099

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1100
  br i1 %28, label %54, label %29, !dbg !1101

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !277, metadata !DIExpression()), !dbg !1102
  tail call void @llvm.dbg.value(metadata i64 0, metadata !281, metadata !DIExpression()), !dbg !1102
  %30 = icmp ult ptr %24, %25, !dbg !1103
  br i1 %30, label %31, label %54, !dbg !1104

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #44, !dbg !1063
  %33 = load ptr, ptr %32, align 8, !tbaa !991
  br label %34, !dbg !1104

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !277, metadata !DIExpression()), !dbg !1102
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !281, metadata !DIExpression()), !dbg !1102
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1105
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !277, metadata !DIExpression()), !dbg !1102
  %38 = load i8, ptr %35, align 1, !dbg !1105, !tbaa !1074
  %39 = sext i8 %38 to i64, !dbg !1105
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1105
  %41 = load i16, ptr %40, align 2, !dbg !1105, !tbaa !1106
  %42 = freeze i16 %41, !dbg !1108
  %43 = lshr i16 %42, 13, !dbg !1108
  %44 = and i16 %43, 1, !dbg !1108
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1109
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !281, metadata !DIExpression()), !dbg !1102
  %47 = icmp ult ptr %37, %25, !dbg !1103
  %48 = icmp ult i64 %46, 2, !dbg !1110
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1110
  br i1 %49, label %34, label %50, !dbg !1104, !llvm.loop !1111

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !1113
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !1115
  %53 = zext i1 %51 to i8, !dbg !1115
  br label %54, !dbg !1115

54:                                               ; preds = %29, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !1063
  %56 = phi i8 [ 1, %27 ], [ 0, %22 ], [ 1, %29 ], [ %53, %50 ], !dbg !1063
  tail call void @llvm.dbg.value(metadata i8 %56, metadata !273, metadata !DIExpression()), !dbg !1063
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !276, metadata !DIExpression()), !dbg !1063
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.44) #42, !dbg !1116
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !282, metadata !DIExpression()), !dbg !1063
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !1117
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !283, metadata !DIExpression()), !dbg !1063
  br label %59, !dbg !1118

59:                                               ; preds = %92, %54
  %60 = phi ptr [ %58, %54 ], [ %93, %92 ], !dbg !1063
  %61 = phi i8 [ %56, %54 ], [ %69, %92 ], !dbg !1063
  tail call void @llvm.dbg.value(metadata i8 %61, metadata !273, metadata !DIExpression()), !dbg !1063
  tail call void @llvm.dbg.value(metadata ptr %60, metadata !283, metadata !DIExpression()), !dbg !1063
  %62 = load i8, ptr %60, align 1, !dbg !1119, !tbaa !1074
  switch i8 %62, label %68 [
    i8 0, label %94
    i8 10, label %94
    i8 45, label %63
  ], !dbg !1120

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1121
  %65 = load i8, ptr %64, align 1, !dbg !1124, !tbaa !1074
  %66 = icmp eq i8 %65, 45, !dbg !1125
  %67 = select i1 %66, i8 0, i8 %61, !dbg !1126
  br label %68, !dbg !1126

68:                                               ; preds = %63, %59
  %69 = phi i8 [ %61, %59 ], [ %67, %63 ], !dbg !1063
  tail call void @llvm.dbg.value(metadata i8 %69, metadata !273, metadata !DIExpression()), !dbg !1063
  %70 = tail call ptr @__ctype_b_loc() #44, !dbg !1127
  %71 = load ptr, ptr %70, align 8, !dbg !1127, !tbaa !991
  %72 = sext i8 %62 to i64, !dbg !1127
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !1127
  %74 = load i16, ptr %73, align 2, !dbg !1127, !tbaa !1106
  %75 = and i16 %74, 8192, !dbg !1127
  %76 = icmp eq i16 %75, 0, !dbg !1127
  br i1 %76, label %92, label %77, !dbg !1129

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !1130
  br i1 %78, label %94, label %79, !dbg !1133

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1134
  %81 = load i8, ptr %80, align 1, !dbg !1134, !tbaa !1074
  %82 = sext i8 %81 to i64, !dbg !1134
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !1134
  %84 = load i16, ptr %83, align 2, !dbg !1134, !tbaa !1106
  %85 = and i16 %84, 8192, !dbg !1134
  %86 = icmp eq i16 %85, 0, !dbg !1134
  br i1 %86, label %87, label %94, !dbg !1135

87:                                               ; preds = %79
  %88 = and i8 %69, 1, !dbg !1136
  %89 = icmp ne i8 %88, 0, !dbg !1136
  %90 = icmp eq i8 %81, 45
  %91 = or i1 %89, %90, !dbg !1138
  br i1 %91, label %92, label %94, !dbg !1138

92:                                               ; preds = %87, %68
  %93 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1139
  tail call void @llvm.dbg.value(metadata ptr %93, metadata !283, metadata !DIExpression()), !dbg !1063
  br label %59, !dbg !1118, !llvm.loop !1140

94:                                               ; preds = %87, %59, %59, %77, %79
  %95 = ptrtoint ptr %24 to i64, !dbg !1142
  %96 = load ptr, ptr @stdout, align 8, !dbg !1142, !tbaa !991
  %97 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %96), !dbg !1142
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1076, metadata !DIExpression()), !dbg !1143
  call void @llvm.dbg.value(metadata !1033, metadata !1082, metadata !DIExpression()), !dbg !1143
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1076, metadata !DIExpression()), !dbg !1145
  call void @llvm.dbg.value(metadata !1033, metadata !1082, metadata !DIExpression()), !dbg !1145
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1076, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata !1033, metadata !1082, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1076, metadata !DIExpression()), !dbg !1149
  call void @llvm.dbg.value(metadata !1033, metadata !1082, metadata !DIExpression()), !dbg !1149
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1076, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata !1033, metadata !1082, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1076, metadata !DIExpression()), !dbg !1153
  call void @llvm.dbg.value(metadata !1033, metadata !1082, metadata !DIExpression()), !dbg !1153
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1076, metadata !DIExpression()), !dbg !1155
  call void @llvm.dbg.value(metadata !1033, metadata !1082, metadata !DIExpression()), !dbg !1155
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1076, metadata !DIExpression()), !dbg !1157
  call void @llvm.dbg.value(metadata !1033, metadata !1082, metadata !DIExpression()), !dbg !1157
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1076, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata !1033, metadata !1082, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1076, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata !1033, metadata !1082, metadata !DIExpression()), !dbg !1161
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !337, metadata !DIExpression()), !dbg !1063
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.58, i64 noundef 6) #42, !dbg !1163
  %99 = icmp eq i32 %98, 0, !dbg !1163
  br i1 %99, label %103, label %100, !dbg !1165

100:                                              ; preds = %94
  %101 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.59, i64 noundef 9) #42, !dbg !1166
  %102 = icmp eq i32 %101, 0, !dbg !1166
  br i1 %102, label %103, label %106, !dbg !1167

103:                                              ; preds = %100, %94
  %104 = trunc i64 %57 to i32, !dbg !1168
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %55) #41, !dbg !1168
  br label %109, !dbg !1170

106:                                              ; preds = %100
  %107 = trunc i64 %57 to i32, !dbg !1171
  %108 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.3, i32 noundef %107, ptr noundef %55) #41, !dbg !1171
  br label %109

109:                                              ; preds = %106, %103
  %110 = load ptr, ptr @stdout, align 8, !dbg !1173, !tbaa !991
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.64, ptr noundef %110), !dbg !1173
  %112 = load ptr, ptr @stdout, align 8, !dbg !1174, !tbaa !991
  %113 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.65, ptr noundef %112), !dbg !1174
  %114 = ptrtoint ptr %60 to i64, !dbg !1175
  %115 = sub i64 %114, %95, !dbg !1175
  %116 = load ptr, ptr @stdout, align 8, !dbg !1175, !tbaa !991
  %117 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %115, ptr noundef %116), !dbg !1175
  %118 = load ptr, ptr @stdout, align 8, !dbg !1176, !tbaa !991
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.66, ptr noundef %118), !dbg !1176
  %120 = load ptr, ptr @stdout, align 8, !dbg !1177, !tbaa !991
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.67, ptr noundef %120), !dbg !1177
  %122 = load ptr, ptr @stdout, align 8, !dbg !1178, !tbaa !991
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %122), !dbg !1178
  br label %124, !dbg !1179

124:                                              ; preds = %109, %19
  ret void, !dbg !1179
}

; Function Attrs: nounwind
declare !dbg !1180 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1184 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1188 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1190 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1193 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1196 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1199 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1202 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1208 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1209 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !83 {
  %3 = alloca i32, align 4, !DIAssignID !1215
  %4 = alloca %struct.stat, align 8, !DIAssignID !1216
  call void @llvm.dbg.assign(metadata i1 undef, metadata !456, metadata !DIExpression(), metadata !1216, metadata ptr %4, metadata !DIExpression()), !dbg !1217
  %5 = alloca %struct.stat, align 8, !DIAssignID !1218
  call void @llvm.dbg.assign(metadata i1 undef, metadata !511, metadata !DIExpression(), metadata !1218, metadata ptr %5, metadata !DIExpression()), !dbg !1219
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !453, metadata !DIExpression()), !dbg !1217
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !454, metadata !DIExpression()), !dbg !1217
  tail call void @llvm.dbg.value(metadata i8 0, metadata !455, metadata !DIExpression()), !dbg !1217
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %4) #41, !dbg !1220
  tail call void @llvm.dbg.value(metadata i8 0, metadata !491, metadata !DIExpression()), !dbg !1217
  tail call void @llvm.dbg.value(metadata i8 0, metadata !492, metadata !DIExpression()), !dbg !1217
  tail call void @llvm.dbg.value(metadata i8 0, metadata !493, metadata !DIExpression()), !dbg !1217
  tail call void @llvm.dbg.value(metadata i8 0, metadata !494, metadata !DIExpression()), !dbg !1217
  tail call void @llvm.dbg.value(metadata i8 0, metadata !495, metadata !DIExpression()), !dbg !1217
  tail call void @llvm.dbg.value(metadata i8 0, metadata !496, metadata !DIExpression()), !dbg !1217
  tail call void @llvm.dbg.value(metadata i32 0, metadata !497, metadata !DIExpression()), !dbg !1217
  %6 = load ptr, ptr %1, align 8, !dbg !1221, !tbaa !991
  tail call void @set_program_name(ptr noundef %6) #41, !dbg !1222
  %7 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.26) #41, !dbg !1223
  %8 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #41, !dbg !1224
  %9 = tail call ptr @textdomain(ptr noundef nonnull @.str.27) #41, !dbg !1225
  %10 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #41, !dbg !1226
  br label %11, !dbg !1227

11:                                               ; preds = %19, %2
  %12 = phi i8 [ 0, %2 ], [ %20, %19 ], !dbg !1217
  %13 = phi i8 [ 0, %2 ], [ %21, %19 ], !dbg !1228
  %14 = phi i8 [ 0, %2 ], [ %22, %19 ], !dbg !1229
  %15 = phi i8 [ 0, %2 ], [ %23, %19 ], !dbg !1230
  %16 = phi i8 [ 0, %2 ], [ %24, %19 ], !dbg !1231
  %17 = phi i8 [ 0, %2 ], [ %25, %19 ], !dbg !1232
  tail call void @llvm.dbg.value(metadata i8 %17, metadata !491, metadata !DIExpression()), !dbg !1217
  tail call void @llvm.dbg.value(metadata i8 %16, metadata !492, metadata !DIExpression()), !dbg !1217
  tail call void @llvm.dbg.value(metadata i8 %15, metadata !493, metadata !DIExpression()), !dbg !1217
  tail call void @llvm.dbg.value(metadata i8 %14, metadata !494, metadata !DIExpression()), !dbg !1217
  tail call void @llvm.dbg.value(metadata i8 %13, metadata !495, metadata !DIExpression()), !dbg !1217
  tail call void @llvm.dbg.value(metadata i8 %12, metadata !496, metadata !DIExpression()), !dbg !1217
  %18 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.29, ptr noundef nonnull @main.long_options, ptr noundef null) #41, !dbg !1233
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !498, metadata !DIExpression()), !dbg !1217
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
  ], !dbg !1227

19:                                               ; preds = %11, %34, %33, %32, %31, %30, %29, %28, %27, %26
  %20 = phi i8 [ 1, %34 ], [ %12, %33 ], [ 1, %32 ], [ %12, %31 ], [ 1, %30 ], [ %12, %29 ], [ %12, %28 ], [ %12, %27 ], [ %12, %26 ], [ %12, %11 ]
  %21 = phi i8 [ %13, %34 ], [ %13, %33 ], [ 1, %32 ], [ 1, %31 ], [ 1, %30 ], [ %13, %29 ], [ %13, %28 ], [ 1, %27 ], [ %13, %26 ], [ %13, %11 ]
  %22 = phi i8 [ %14, %34 ], [ 1, %33 ], [ 1, %32 ], [ %14, %31 ], [ %14, %30 ], [ %14, %29 ], [ %14, %28 ], [ 1, %27 ], [ %14, %26 ], [ %14, %11 ]
  %23 = phi i8 [ %15, %34 ], [ %15, %33 ], [ %15, %32 ], [ %15, %31 ], [ %15, %30 ], [ 1, %29 ], [ %15, %28 ], [ %15, %27 ], [ %15, %26 ], [ %15, %11 ]
  %24 = phi i8 [ %16, %34 ], [ %16, %33 ], [ %16, %32 ], [ %16, %31 ], [ %16, %30 ], [ %16, %29 ], [ %16, %28 ], [ %16, %27 ], [ 1, %26 ], [ %16, %11 ]
  %25 = phi i8 [ %17, %34 ], [ %17, %33 ], [ %17, %32 ], [ %17, %31 ], [ %17, %30 ], [ %17, %29 ], [ 1, %28 ], [ %17, %27 ], [ 1, %26 ], [ %17, %11 ]
  br label %11, !dbg !1217, !llvm.loop !1234

26:                                               ; preds = %11
  tail call void @llvm.dbg.value(metadata i8 1, metadata !491, metadata !DIExpression()), !dbg !1217
  tail call void @llvm.dbg.value(metadata i8 1, metadata !492, metadata !DIExpression()), !dbg !1217
  br label %19, !dbg !1236

27:                                               ; preds = %11
  tail call void @llvm.dbg.value(metadata i8 1, metadata !494, metadata !DIExpression()), !dbg !1217
  tail call void @llvm.dbg.value(metadata i8 1, metadata !495, metadata !DIExpression()), !dbg !1217
  br label %19, !dbg !1239

28:                                               ; preds = %11
  tail call void @llvm.dbg.value(metadata i8 1, metadata !491, metadata !DIExpression()), !dbg !1217
  br label %19, !dbg !1240

29:                                               ; preds = %11
  tail call void @llvm.dbg.value(metadata i8 1, metadata !493, metadata !DIExpression()), !dbg !1217
  br label %19, !dbg !1241

30:                                               ; preds = %11
  tail call void @llvm.dbg.value(metadata i8 1, metadata !496, metadata !DIExpression()), !dbg !1217
  tail call void @llvm.dbg.value(metadata i8 1, metadata !495, metadata !DIExpression()), !dbg !1217
  br label %19, !dbg !1242

31:                                               ; preds = %11
  tail call void @llvm.dbg.value(metadata i8 1, metadata !495, metadata !DIExpression()), !dbg !1217
  br label %19, !dbg !1243

32:                                               ; preds = %11
  tail call void @llvm.dbg.value(metadata i8 1, metadata !495, metadata !DIExpression()), !dbg !1217
  tail call void @llvm.dbg.value(metadata i8 1, metadata !494, metadata !DIExpression()), !dbg !1217
  tail call void @llvm.dbg.value(metadata i8 1, metadata !496, metadata !DIExpression()), !dbg !1217
  br label %19, !dbg !1244

33:                                               ; preds = %11
  tail call void @llvm.dbg.value(metadata i8 1, metadata !494, metadata !DIExpression()), !dbg !1217
  br label %19, !dbg !1245

34:                                               ; preds = %11
  tail call void @llvm.dbg.value(metadata i8 1, metadata !496, metadata !DIExpression()), !dbg !1217
  br label %19, !dbg !1246

35:                                               ; preds = %11
  tail call void @usage(i32 noundef 0) #45, !dbg !1247
  unreachable, !dbg !1247

36:                                               ; preds = %11
  %37 = load ptr, ptr @stdout, align 8, !dbg !1248, !tbaa !991
  %38 = load ptr, ptr @Version, align 8, !dbg !1248, !tbaa !991
  %39 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32) #41, !dbg !1248
  %40 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.33) #41, !dbg !1248
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %37, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.30, ptr noundef %38, ptr noundef %39, ptr noundef %40, ptr noundef null) #41, !dbg !1248
  tail call void @exit(i32 noundef 0) #43, !dbg !1248
  unreachable, !dbg !1248

41:                                               ; preds = %11
  tail call void @usage(i32 noundef 1) #45, !dbg !1249
  unreachable, !dbg !1249

42:                                               ; preds = %11
  %43 = call i32 @fstat(i32 noundef 1, ptr noundef nonnull %4) #41, !dbg !1250
  %44 = icmp slt i32 %43, 0, !dbg !1252
  br i1 %44, label %45, label %49, !dbg !1253

45:                                               ; preds = %42
  %46 = tail call ptr @__errno_location() #44, !dbg !1254
  %47 = load i32, ptr %46, align 4, !dbg !1254, !tbaa !1065
  %48 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.34, i32 noundef 5) #41, !dbg !1254
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %47, ptr noundef %48) #41, !dbg !1254
  unreachable, !dbg !1254

49:                                               ; preds = %42
  call void @llvm.dbg.value(metadata ptr %4, metadata !1255, metadata !DIExpression()), !dbg !1270
  %50 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 9, !dbg !1272
  %51 = load i64, ptr %50, align 8, !dbg !1272, !tbaa !1273
  %52 = add i64 %51, -1, !dbg !1277
  %53 = icmp ult i64 %52, 2305843009213693952, !dbg !1277
  %54 = select i1 %53, i64 %51, i64 512, !dbg !1277
  call void @llvm.dbg.value(metadata i64 %54, metadata !1262, metadata !DIExpression()), !dbg !1270
  %55 = urem i64 262143, %54
  %56 = xor i64 %55, 262143, !dbg !1278
  %57 = add nuw nsw i64 %54, %56, !dbg !1279
  call void @llvm.dbg.value(metadata i64 %57, metadata !1262, metadata !DIExpression()), !dbg !1270
  %58 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 3, !dbg !1280
  %59 = load i32, ptr %58, align 8, !dbg !1280, !tbaa !1281
  %60 = and i32 %59, 61440, !dbg !1280
  %61 = icmp ne i32 %60, 32768, !dbg !1280
  %62 = tail call i64 @llvm.ctpop.i64(i64 %57), !range !1282
  %63 = icmp ult i64 %62, 2
  %64 = select i1 %61, i1 true, i1 %63, !dbg !1283
  br i1 %64, label %71, label %65, !dbg !1283

65:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i64 %57, metadata !1284, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.value(metadata i64 %57, metadata !1292, metadata !DIExpression()), !dbg !1297
  %66 = tail call i64 @llvm.ctlz.i64(i64 %57, i1 true), !dbg !1299, !range !1300
  call void @llvm.dbg.value(metadata i64 %66, metadata !1263, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1301
  call void @llvm.dbg.value(metadata !DIArgList(i64 1, i32 64, i64 %66), metadata !1266, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_minus, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_stack_value)), !dbg !1302
  %67 = icmp eq i64 %66, 1, !dbg !1303
  %68 = sub nuw nsw i64 64, %66, !dbg !1305
  %69 = shl nuw i64 1, %68, !dbg !1305
  %70 = select i1 %67, i64 %57, i64 %69, !dbg !1305
  call void @llvm.dbg.value(metadata i64 %70, metadata !1262, metadata !DIExpression()), !dbg !1270
  br label %71, !dbg !1306

71:                                               ; preds = %49, %65
  %72 = phi i64 [ %70, %65 ], [ %57, %49 ], !dbg !1270
  call void @llvm.dbg.value(metadata i64 %72, metadata !1262, metadata !DIExpression()), !dbg !1270
  %73 = tail call i64 @llvm.smin.i64(i64 %72, i64 2146435072), !dbg !1307
  tail call void @llvm.dbg.value(metadata i64 %73, metadata !499, metadata !DIExpression()), !dbg !1217
  tail call void @llvm.dbg.value(metadata i32 -2, metadata !504, metadata !DIExpression()), !dbg !1217
  %74 = icmp eq i32 %60, 32768, !dbg !1308
  tail call void @llvm.dbg.value(metadata i1 %74, metadata !505, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1217
  %75 = icmp ne i8 %17, 0, !dbg !1309
  %76 = xor i1 %75, true, !dbg !1311
  %77 = icmp eq i8 %14, 0
  %78 = select i1 %76, i1 %77, i1 false, !dbg !1311
  %79 = icmp eq i8 %15, 0
  tail call void @llvm.dbg.value(metadata i32 0, metadata !497, metadata !DIExpression()), !dbg !1217
  store ptr @.str.35, ptr @infile, align 8, !dbg !1312, !tbaa !991
  %80 = load i32, ptr @optind, align 4, !dbg !1313, !tbaa !1065
  tail call void @llvm.dbg.value(metadata i32 %80, metadata !506, metadata !DIExpression()), !dbg !1217
  tail call void @llvm.dbg.value(metadata i8 1, metadata !507, metadata !DIExpression()), !dbg !1217
  %81 = tail call i32 @getpagesize() #44, !dbg !1314
  %82 = sext i32 %81 to i64, !dbg !1314
  tail call void @llvm.dbg.value(metadata i64 %82, metadata !508, metadata !DIExpression()), !dbg !1217
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
  %97 = sext i32 %80 to i64, !dbg !1315
  %98 = sext i32 %0 to i64, !dbg !1315
  br label %99, !dbg !1315

99:                                               ; preds = %558, %71
  %100 = phi i64 [ %562, %558 ], [ %97, %71 ], !dbg !1316
  %101 = phi i32 [ %559, %558 ], [ -2, %71 ], !dbg !1316
  %102 = phi i8 [ %560, %558 ], [ 1, %71 ], !dbg !1217
  %103 = phi i8 [ %561, %558 ], [ 0, %71 ], !dbg !1217
  tail call void @llvm.dbg.value(metadata i8 %103, metadata !455, metadata !DIExpression()), !dbg !1217
  tail call void @llvm.dbg.value(metadata i8 %102, metadata !507, metadata !DIExpression()), !dbg !1217
  tail call void @llvm.dbg.value(metadata i64 %100, metadata !506, metadata !DIExpression()), !dbg !1217
  tail call void @llvm.dbg.value(metadata i32 %101, metadata !504, metadata !DIExpression()), !dbg !1217
  %104 = icmp slt i64 %100, %98, !dbg !1317
  br i1 %104, label %107, label %105, !dbg !1319

105:                                              ; preds = %99
  %106 = load ptr, ptr @infile, align 8, !dbg !1320, !tbaa !991
  br label %110, !dbg !1319

107:                                              ; preds = %99
  %108 = getelementptr inbounds ptr, ptr %1, i64 %100, !dbg !1321
  %109 = load ptr, ptr %108, align 8, !dbg !1321, !tbaa !991
  store ptr %109, ptr @infile, align 8, !dbg !1322, !tbaa !991
  br label %110, !dbg !1323

110:                                              ; preds = %105, %107
  %111 = phi ptr [ %106, %105 ], [ %109, %107 ], !dbg !1320
  call void @llvm.dbg.value(metadata ptr %111, metadata !1076, metadata !DIExpression()), !dbg !1324
  call void @llvm.dbg.value(metadata ptr @.str.35, metadata !1082, metadata !DIExpression()), !dbg !1324
  %112 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %111, ptr noundef nonnull dereferenceable(2) @.str.35) #42, !dbg !1326
  %113 = icmp eq i32 %112, 0, !dbg !1327
  tail call void @llvm.dbg.value(metadata i1 %113, metadata !509, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1219
  br i1 %113, label %114, label %115, !dbg !1328

114:                                              ; preds = %110
  tail call void @llvm.dbg.value(metadata i8 1, metadata !455, metadata !DIExpression()), !dbg !1217
  store i32 0, ptr @input_desc, align 4, !dbg !1329, !tbaa !1065
  br label %123

115:                                              ; preds = %110
  %116 = call i32 (ptr, i32, ...) @open(ptr noundef %111, i32 noundef 0) #41, !dbg !1332
  store i32 %116, ptr @input_desc, align 4, !dbg !1334, !tbaa !1065
  %117 = icmp slt i32 %116, 0, !dbg !1335
  br i1 %117, label %118, label %123, !dbg !1337

118:                                              ; preds = %115
  %119 = tail call ptr @__errno_location() #44, !dbg !1338
  %120 = load i32, ptr %119, align 4, !dbg !1338, !tbaa !1065
  %121 = load ptr, ptr @infile, align 8, !dbg !1338, !tbaa !991
  %122 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %121) #41, !dbg !1338
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %120, ptr noundef nonnull @.str.36, ptr noundef %122) #41, !dbg !1338
  tail call void @llvm.dbg.value(metadata i8 0, metadata !507, metadata !DIExpression()), !dbg !1217
  br label %558, !dbg !1340

123:                                              ; preds = %114, %115
  %124 = phi i32 [ 0, %114 ], [ %116, %115 ], !dbg !1341
  %125 = phi i8 [ 1, %114 ], [ %103, %115 ], !dbg !1217
  tail call void @llvm.dbg.value(metadata i8 %125, metadata !455, metadata !DIExpression()), !dbg !1217
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %5) #41, !dbg !1343
  %126 = call i32 @fstat(i32 noundef %124, ptr noundef nonnull %5) #41, !dbg !1344
  %127 = icmp slt i32 %126, 0, !dbg !1345
  br i1 %127, label %128, label %133, !dbg !1346

128:                                              ; preds = %123
  %129 = tail call ptr @__errno_location() #44, !dbg !1347
  %130 = load i32, ptr %129, align 4, !dbg !1347, !tbaa !1065
  %131 = load ptr, ptr @infile, align 8, !dbg !1347, !tbaa !991
  %132 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %131) #41, !dbg !1347
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %130, ptr noundef nonnull @.str.36, ptr noundef %132) #41, !dbg !1347
  tail call void @llvm.dbg.value(metadata i8 0, metadata !507, metadata !DIExpression()), !dbg !1217
  br label %544, !dbg !1349

133:                                              ; preds = %123
  call void @llvm.dbg.value(metadata ptr %5, metadata !1255, metadata !DIExpression()), !dbg !1350
  %134 = load i64, ptr %83, align 8, !dbg !1352, !tbaa !1273
  %135 = add i64 %134, -1, !dbg !1353
  %136 = icmp ult i64 %135, 2305843009213693952, !dbg !1353
  %137 = select i1 %136, i64 %134, i64 512, !dbg !1353
  call void @llvm.dbg.value(metadata i64 %137, metadata !1262, metadata !DIExpression()), !dbg !1350
  %138 = urem i64 262143, %137
  %139 = xor i64 %138, 262143, !dbg !1354
  %140 = add nuw nsw i64 %137, %139, !dbg !1355
  call void @llvm.dbg.value(metadata i64 %140, metadata !1262, metadata !DIExpression()), !dbg !1350
  %141 = load i32, ptr %84, align 8, !dbg !1356, !tbaa !1281
  %142 = and i32 %141, 61440, !dbg !1356
  %143 = icmp ne i32 %142, 32768, !dbg !1356
  %144 = call i64 @llvm.ctpop.i64(i64 %140), !range !1282
  %145 = icmp ult i64 %144, 2
  %146 = select i1 %143, i1 true, i1 %145, !dbg !1357
  br i1 %146, label %155, label %147, !dbg !1357

147:                                              ; preds = %133
  call void @llvm.dbg.value(metadata i64 %140, metadata !1284, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.value(metadata i64 %140, metadata !1292, metadata !DIExpression()), !dbg !1360
  %148 = call i64 @llvm.ctlz.i64(i64 %140, i1 true), !dbg !1362, !range !1300
  call void @llvm.dbg.value(metadata i64 %148, metadata !1263, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1363
  call void @llvm.dbg.value(metadata !DIArgList(i64 1, i32 64, i64 %148), metadata !1266, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_minus, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_stack_value)), !dbg !1364
  %149 = icmp eq i64 %148, 1, !dbg !1365
  %150 = sub nuw nsw i64 64, %148, !dbg !1366
  %151 = shl nuw i64 1, %150, !dbg !1366
  %152 = select i1 %149, i64 %140, i64 %151, !dbg !1366
  call void @llvm.dbg.value(metadata i64 %152, metadata !1262, metadata !DIExpression()), !dbg !1350
  %153 = call i64 @llvm.smin.i64(i64 %152, i64 2146435072), !dbg !1367
  tail call void @llvm.dbg.value(metadata i64 %153, metadata !512, metadata !DIExpression()), !dbg !1219
  %154 = load i32, ptr @input_desc, align 4, !dbg !1368, !tbaa !1065
  call void @fdadvise(i32 noundef %154, i64 noundef 0, i64 noundef 0, i32 noundef 2) #41, !dbg !1369
  br label %159, !dbg !1370

155:                                              ; preds = %133
  call void @llvm.dbg.value(metadata i64 %140, metadata !1262, metadata !DIExpression()), !dbg !1350
  %156 = call i64 @llvm.smin.i64(i64 %140, i64 2146435072), !dbg !1367
  tail call void @llvm.dbg.value(metadata i64 %156, metadata !512, metadata !DIExpression()), !dbg !1219
  %157 = load i32, ptr @input_desc, align 4, !dbg !1368, !tbaa !1065
  call void @fdadvise(i32 noundef %157, i64 noundef 0, i64 noundef 0, i32 noundef 2) #41, !dbg !1369
  %158 = trunc i32 %142 to i16, !dbg !1370
  switch i16 %158, label %159 [
    i16 4096, label %187
    i16 -16384, label %187
  ], !dbg !1370

159:                                              ; preds = %147, %155
  %160 = phi i64 [ %153, %147 ], [ %156, %155 ]
  %161 = load i64, ptr %5, align 8, !dbg !1371, !tbaa !1372
  %162 = load i64, ptr %4, align 8, !dbg !1371, !tbaa !1372
  %163 = load i64, ptr %85, align 8, !dbg !1371, !tbaa !1373
  %164 = load i64, ptr %86, align 8, !dbg !1371, !tbaa !1373
  %165 = icmp eq i64 %161, %162, !dbg !1371
  %166 = icmp eq i64 %163, %164, !dbg !1371
  %167 = and i1 %165, %166, !dbg !1371
  br i1 %167, label %168, label %187, !dbg !1374

168:                                              ; preds = %159
  %169 = load i32, ptr @input_desc, align 4, !dbg !1375, !tbaa !1065
  %170 = call i64 @lseek(i32 noundef %169, i64 noundef 0, i32 noundef 1) #41, !dbg !1376
  tail call void @llvm.dbg.value(metadata i64 %170, metadata !513, metadata !DIExpression()), !dbg !1377
  %171 = icmp sgt i64 %170, -1, !dbg !1378
  br i1 %171, label %172, label %187, !dbg !1379

172:                                              ; preds = %168
  %173 = icmp slt i32 %101, -1, !dbg !1380
  br i1 %173, label %174, label %176, !dbg !1382

174:                                              ; preds = %172
  %175 = call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef 1, i32 noundef 3) #41, !dbg !1383
  tail call void @llvm.dbg.value(metadata i32 %175, metadata !504, metadata !DIExpression()), !dbg !1217
  br label %176, !dbg !1384

176:                                              ; preds = %174, %172
  %177 = phi i32 [ %175, %174 ], [ %101, %172 ], !dbg !1217
  tail call void @llvm.dbg.value(metadata i32 %177, metadata !504, metadata !DIExpression()), !dbg !1217
  %178 = and i32 %177, -2147482624, !dbg !1385
  %179 = icmp eq i32 %178, 1024, !dbg !1385
  %180 = select i1 %179, i32 2, i32 1, !dbg !1386
  tail call void @llvm.dbg.value(metadata i32 %180, metadata !518, metadata !DIExpression()), !dbg !1387
  %181 = call i64 @lseek(i32 noundef 1, i64 noundef 0, i32 noundef %180) #41, !dbg !1388
  %182 = icmp slt i64 %170, %181, !dbg !1390
  br i1 %182, label %183, label %187, !dbg !1391

183:                                              ; preds = %176
  %184 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.37, i32 noundef 5) #41, !dbg !1392
  %185 = load ptr, ptr @infile, align 8, !dbg !1392, !tbaa !991
  %186 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %185) #41, !dbg !1392
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %184, ptr noundef %186) #41, !dbg !1392
  tail call void @llvm.dbg.value(metadata i8 0, metadata !507, metadata !DIExpression()), !dbg !1217
  tail call void @llvm.dbg.value(metadata i32 %177, metadata !504, metadata !DIExpression()), !dbg !1217
  br label %544

187:                                              ; preds = %176, %168, %155, %155, %159
  %188 = phi i64 [ %156, %155 ], [ %160, %159 ], [ %156, %155 ], [ %160, %168 ], [ %160, %176 ]
  %189 = phi i32 [ %101, %155 ], [ %101, %159 ], [ %101, %155 ], [ %101, %168 ], [ %177, %176 ], !dbg !1217
  tail call void @llvm.dbg.value(metadata i8 %102, metadata !507, metadata !DIExpression()), !dbg !1217
  tail call void @llvm.dbg.value(metadata i32 %189, metadata !504, metadata !DIExpression()), !dbg !1217
  br i1 %91, label %190, label %238, !dbg !1394

190:                                              ; preds = %187
  %191 = icmp eq i32 %142, 32768
  %192 = and i1 %74, %191, !dbg !1395
  br i1 %192, label %193, label %209, !dbg !1395

193:                                              ; preds = %190
  call void @llvm.dbg.value(metadata i64 9223372035781033984, metadata !1396, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata i8 poison, metadata !1401, metadata !DIExpression()), !dbg !1407
  %194 = load i32, ptr @input_desc, align 4, !dbg !1408, !tbaa !1065
  %195 = call i64 @rpl_copy_file_range(i32 noundef %194, ptr noundef null, i32 noundef 1, ptr noundef null, i64 noundef 9223372035781033984, i32 noundef 0) #41, !dbg !1410
  switch i64 %195, label %196 [
    i64 0, label %209
    i64 -1, label %199
  ], !dbg !1411

196:                                              ; preds = %193, %196
  call void @llvm.dbg.value(metadata i8 poison, metadata !1401, metadata !DIExpression()), !dbg !1407
  %197 = load i32, ptr @input_desc, align 4, !dbg !1408, !tbaa !1065
  %198 = call i64 @rpl_copy_file_range(i32 noundef %197, ptr noundef null, i32 noundef 1, ptr noundef null, i64 noundef 9223372035781033984, i32 noundef 0) #41, !dbg !1410
  switch i64 %198, label %196 [
    i64 0, label %205
    i64 -1, label %199
  ], !dbg !1411, !llvm.loop !1412

199:                                              ; preds = %196, %193
  %200 = tail call ptr @__errno_location() #44, !dbg !1416
  %201 = load i32, ptr %200, align 4, !dbg !1416, !tbaa !1065
  switch i32 %201, label %202 [
    i32 38, label %209
    i32 95, label %209
    i32 22, label %209
    i32 9, label %209
    i32 18, label %209
    i32 26, label %209
    i32 1, label %209
    i32 27, label %209
  ], !dbg !1419

202:                                              ; preds = %199
  %203 = load ptr, ptr @infile, align 8, !dbg !1420, !tbaa !991
  %204 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %203) #41, !dbg !1420
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %201, ptr noundef nonnull @.str.36, ptr noundef %204) #41, !dbg !1420
  br label %205, !dbg !1421

205:                                              ; preds = %196, %202
  %206 = phi i1 [ false, %202 ], [ true, %196 ], !dbg !1422
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !522, metadata !DIExpression()), !dbg !1423
  tail call void @llvm.dbg.value(metadata ptr null, metadata !521, metadata !DIExpression()), !dbg !1219
  %207 = icmp ne i8 %102, 0, !dbg !1424
  %208 = select i1 %206, i1 %207, i1 false, !dbg !1424
  tail call void @llvm.dbg.value(metadata i1 %208, metadata !507, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1217
  br label %540, !dbg !1427

209:                                              ; preds = %190, %199, %199, %199, %199, %199, %199, %199, %199, %193
  tail call void @llvm.dbg.value(metadata i32 0, metadata !522, metadata !DIExpression()), !dbg !1423
  %210 = call i64 @llvm.umax.i64(i64 %188, i64 %73), !dbg !1428
  tail call void @llvm.dbg.value(metadata i64 %210, metadata !512, metadata !DIExpression()), !dbg !1219
  %211 = call noalias nonnull ptr @xalignalloc(i64 noundef %82, i64 noundef %210) #46, !dbg !1430
  tail call void @llvm.dbg.value(metadata ptr %211, metadata !521, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata ptr %211, metadata !1431, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i64 %210, metadata !1436, metadata !DIExpression()), !dbg !1439
  br label %212, !dbg !1441

212:                                              ; preds = %223, %209
  %213 = load i32, ptr @input_desc, align 4, !dbg !1442, !tbaa !1065
  %214 = call i64 @read(i32 noundef %213, ptr noundef nonnull %211, i64 noundef %210) #41, !dbg !1443
  call void @llvm.dbg.value(metadata i64 %214, metadata !1437, metadata !DIExpression()), !dbg !1444
  %215 = icmp sgt i64 %214, -1, !dbg !1445
  br i1 %215, label %221, label %216, !dbg !1447

216:                                              ; preds = %212
  %217 = tail call ptr @__errno_location() #44, !dbg !1448
  %218 = load i32, ptr %217, align 4, !dbg !1448, !tbaa !1065
  %219 = load ptr, ptr @infile, align 8, !dbg !1448, !tbaa !991
  %220 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %219) #41, !dbg !1448
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %218, ptr noundef nonnull @.str.36, ptr noundef %220) #41, !dbg !1448
  br label %235, !dbg !1450

221:                                              ; preds = %212
  %222 = icmp eq i64 %214, 0, !dbg !1451
  br i1 %222, label %235, label %223, !dbg !1453

223:                                              ; preds = %221
  %224 = call i64 @full_write(i32 noundef 1, ptr noundef nonnull %211, i64 noundef %214) #41, !dbg !1454
  %225 = icmp eq i64 %224, %214, !dbg !1456
  br i1 %225, label %212, label %226, !dbg !1457

226:                                              ; preds = %223
  %227 = tail call ptr @__errno_location() #44, !dbg !1458
  %228 = load i32, ptr %227, align 4, !dbg !1458, !tbaa !1065
  call void @llvm.dbg.value(metadata i32 %228, metadata !1461, metadata !DIExpression()), !dbg !1463
  %229 = load ptr, ptr @stdout, align 8, !dbg !1464, !tbaa !991
  %230 = call i32 @fflush_unlocked(ptr noundef %229) #41, !dbg !1464
  %231 = load ptr, ptr @stdout, align 8, !dbg !1465, !tbaa !991
  %232 = call i32 @fpurge(ptr noundef %231) #41, !dbg !1466
  %233 = load ptr, ptr @stdout, align 8, !dbg !1467, !tbaa !991
  call void @clearerr_unlocked(ptr noundef %233) #41, !dbg !1467
  %234 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.77, i32 noundef 5) #41, !dbg !1468
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %228, ptr noundef %234) #41, !dbg !1468
  unreachable, !dbg !1468

235:                                              ; preds = %221, %216
  %236 = icmp ne i8 %102, 0, !dbg !1469
  %237 = select i1 %215, i1 %236, i1 false, !dbg !1469
  tail call void @llvm.dbg.value(metadata i1 %237, metadata !507, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1217
  br label %540

238:                                              ; preds = %187
  %239 = add nuw nsw i64 %188, 1, !dbg !1470
  %240 = call noalias nonnull ptr @xalignalloc(i64 noundef %82, i64 noundef %239) #46, !dbg !1471
  tail call void @llvm.dbg.value(metadata ptr %240, metadata !521, metadata !DIExpression()), !dbg !1219
  %241 = icmp ugt i64 %188, 2305843009213693951, !dbg !1472
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !525, metadata !DIExpression()), !dbg !1474
  br i1 %241, label %250, label %242, !dbg !1475

242:                                              ; preds = %238
  %243 = shl nuw nsw i64 %188, 2, !dbg !1472
  tail call void @llvm.dbg.value(metadata i64 %243, metadata !525, metadata !DIExpression()), !dbg !1474
  %244 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %243, i64 %73), !dbg !1476
  %245 = extractvalue { i64, i1 } %244, 1, !dbg !1476
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !525, metadata !DIExpression()), !dbg !1474
  br i1 %245, label %250, label %246, !dbg !1477

246:                                              ; preds = %242
  %247 = extractvalue { i64, i1 } %244, 0, !dbg !1476
  tail call void @llvm.dbg.value(metadata i64 %247, metadata !525, metadata !DIExpression()), !dbg !1474
  %248 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %247, i64 19), !dbg !1478
  %249 = extractvalue { i64, i1 } %248, 1, !dbg !1478
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !525, metadata !DIExpression()), !dbg !1474
  br i1 %249, label %250, label %251, !dbg !1479

250:                                              ; preds = %246, %242, %238
  call void @xalloc_die() #43, !dbg !1480
  unreachable, !dbg !1480

251:                                              ; preds = %246
  %252 = extractvalue { i64, i1 } %248, 0, !dbg !1478
  tail call void @llvm.dbg.value(metadata i64 %252, metadata !525, metadata !DIExpression()), !dbg !1474
  %253 = call noalias nonnull ptr @xalignalloc(i64 noundef %82, i64 noundef %252) #46, !dbg !1481
  tail call void @llvm.dbg.value(metadata ptr %253, metadata !527, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1482, metadata !DIExpression(), metadata !1215, metadata ptr %3, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata ptr %240, metadata !1491, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata i64 %188, metadata !1492, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata ptr %253, metadata !1493, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata i64 %73, metadata !1494, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata i1 %87, metadata !1495, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1515
  call void @llvm.dbg.value(metadata i1 %92, metadata !1496, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1515
  call void @llvm.dbg.value(metadata i1 %75, metadata !1497, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1515
  call void @llvm.dbg.value(metadata i1 %93, metadata !1498, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1515
  call void @llvm.dbg.value(metadata i1 %94, metadata !1499, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1515
  call void @llvm.dbg.value(metadata i1 %95, metadata !1500, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1515
  %254 = load i32, ptr @newlines2, align 4, !dbg !1516, !tbaa !1065
  call void @llvm.dbg.value(metadata i32 %254, metadata !1502, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata i8 1, metadata !1503, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata ptr %240, metadata !1504, metadata !DIExpression()), !dbg !1515
  %255 = getelementptr inbounds i8, ptr %240, i64 1, !dbg !1517
  call void @llvm.dbg.value(metadata ptr %255, metadata !1505, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata ptr %253, metadata !1506, metadata !DIExpression()), !dbg !1515
  %256 = getelementptr inbounds i8, ptr %253, i64 %73
  %257 = ptrtoint ptr %253 to i64
  br label %258, !dbg !1518

258:                                              ; preds = %427, %251
  %259 = phi ptr [ %253, %251 ], [ %428, %427 ], !dbg !1515
  %260 = phi i32 [ %254, %251 ], [ %429, %427 ], !dbg !1519
  %261 = phi i8 [ 1, %251 ], [ %421, %427 ], !dbg !1515
  %262 = phi ptr [ %240, %251 ], [ %422, %427 ], !dbg !1520
  %263 = phi ptr [ %255, %251 ], [ %430, %427 ], !dbg !1515
  call void @llvm.dbg.value(metadata ptr %259, metadata !1506, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata ptr %263, metadata !1505, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata ptr %262, metadata !1504, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata i8 %261, metadata !1503, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata i32 %260, metadata !1502, metadata !DIExpression()), !dbg !1515
  %264 = icmp ugt ptr %256, %259, !dbg !1521
  br i1 %264, label %287, label %265, !dbg !1522

265:                                              ; preds = %258
  %266 = ptrtoint ptr %259 to i64
  br label %267, !dbg !1523

267:                                              ; preds = %280, %265
  %268 = phi ptr [ %281, %280 ], [ %253, %265 ], !dbg !1524
  call void @llvm.dbg.value(metadata ptr %268, metadata !1507, metadata !DIExpression()), !dbg !1524
  %269 = call i64 @full_write(i32 noundef 1, ptr noundef %268, i64 noundef %73) #41, !dbg !1525
  %270 = icmp eq i64 %269, %73, !dbg !1528
  br i1 %270, label %280, label %271, !dbg !1529

271:                                              ; preds = %267
  %272 = tail call ptr @__errno_location() #44, !dbg !1530
  %273 = load i32, ptr %272, align 4, !dbg !1530, !tbaa !1065
  call void @llvm.dbg.value(metadata i32 %273, metadata !1461, metadata !DIExpression()), !dbg !1532
  %274 = load ptr, ptr @stdout, align 8, !dbg !1533, !tbaa !991
  %275 = call i32 @fflush_unlocked(ptr noundef %274) #41, !dbg !1533
  %276 = load ptr, ptr @stdout, align 8, !dbg !1534, !tbaa !991
  %277 = call i32 @fpurge(ptr noundef %276) #41, !dbg !1535
  %278 = load ptr, ptr @stdout, align 8, !dbg !1536, !tbaa !991
  call void @clearerr_unlocked(ptr noundef %278) #41, !dbg !1536
  %279 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.77, i32 noundef 5) #41, !dbg !1537
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %273, ptr noundef %279) #41, !dbg !1537
  unreachable, !dbg !1537

280:                                              ; preds = %267
  %281 = getelementptr inbounds i8, ptr %268, i64 %73, !dbg !1538
  call void @llvm.dbg.value(metadata ptr %281, metadata !1507, metadata !DIExpression()), !dbg !1524
  %282 = ptrtoint ptr %281 to i64, !dbg !1539
  %283 = sub i64 %266, %282, !dbg !1539
  call void @llvm.dbg.value(metadata i64 %283, metadata !1510, metadata !DIExpression()), !dbg !1524
  %284 = icmp slt i64 %283, %73, !dbg !1540
  br i1 %284, label %285, label %267, !dbg !1541, !llvm.loop !1542

285:                                              ; preds = %280
  call void @llvm.dbg.value(metadata ptr %253, metadata !1544, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata ptr %281, metadata !1550, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i64 %283, metadata !1551, metadata !DIExpression()), !dbg !1552
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %253, ptr noundef nonnull align 1 %281, i64 noundef %283, i1 noundef false) #41, !dbg !1554
  %286 = getelementptr inbounds i8, ptr %253, i64 %283, !dbg !1555
  call void @llvm.dbg.value(metadata ptr %286, metadata !1506, metadata !DIExpression()), !dbg !1515
  br label %287, !dbg !1556

287:                                              ; preds = %285, %258
  %288 = phi ptr [ %259, %258 ], [ %286, %285 ], !dbg !1515
  call void @llvm.dbg.value(metadata ptr %288, metadata !1506, metadata !DIExpression()), !dbg !1515
  %289 = icmp ugt ptr %263, %262, !dbg !1557
  br i1 %289, label %290, label %370, !dbg !1558

290:                                              ; preds = %287
  call void @llvm.dbg.value(metadata i8 0, metadata !1511, metadata !DIExpression()), !dbg !1513
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #41, !dbg !1559
  store i32 0, ptr %3, align 4, !dbg !1560, !tbaa !1065, !DIAssignID !1561
  call void @llvm.dbg.assign(metadata i32 0, metadata !1482, metadata !DIExpression(), metadata !1561, metadata ptr %3, metadata !DIExpression()), !dbg !1513
  %291 = and i8 %261, 1, !dbg !1562
  %292 = icmp eq i8 %291, 0, !dbg !1562
  br i1 %292, label %308, label %293, !dbg !1564

293:                                              ; preds = %290
  %294 = load i32, ptr @input_desc, align 4, !dbg !1565, !tbaa !1065
  %295 = call i32 (i32, i64, ...) @ioctl(i32 noundef %294, i64 noundef 21531, ptr noundef nonnull %3) #41, !dbg !1566
  %296 = icmp slt i32 %295, 0, !dbg !1567
  br i1 %296, label %297, label %304, !dbg !1568

297:                                              ; preds = %293
  %298 = tail call ptr @__errno_location() #44, !dbg !1569
  %299 = load i32, ptr %298, align 4, !dbg !1569, !tbaa !1065
  switch i32 %299, label %300 [
    i32 95, label %304
    i32 25, label %304
    i32 22, label %304
    i32 19, label %304
    i32 38, label %304
  ], !dbg !1572

300:                                              ; preds = %297
  %301 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.76, i32 noundef 5) #41, !dbg !1573
  %302 = load ptr, ptr @infile, align 8, !dbg !1573, !tbaa !991
  %303 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %302) #41, !dbg !1573
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %299, ptr noundef %301, ptr noundef %303) #41, !dbg !1573
  br label %536, !dbg !1575

304:                                              ; preds = %297, %297, %297, %297, %297, %293
  %305 = phi i8 [ 0, %297 ], [ 0, %297 ], [ 0, %297 ], [ 0, %297 ], [ 0, %297 ], [ %261, %293 ]
  %306 = load i32, ptr %3, align 4, !dbg !1576, !tbaa !1065
  call void @llvm.dbg.value(metadata i8 %305, metadata !1503, metadata !DIExpression()), !dbg !1515
  %307 = icmp eq i32 %306, 0, !dbg !1578
  call void @llvm.dbg.value(metadata i8 poison, metadata !1511, metadata !DIExpression()), !dbg !1513
  br i1 %307, label %308, label %325, !dbg !1579

308:                                              ; preds = %304, %290
  %309 = phi i8 [ %305, %304 ], [ %261, %290 ]
  call void @llvm.dbg.value(metadata ptr %253, metadata !1580, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata ptr undef, metadata !1585, metadata !DIExpression()), !dbg !1587
  %310 = ptrtoint ptr %288 to i64, !dbg !1590
  %311 = sub i64 %310, %257, !dbg !1590
  call void @llvm.dbg.value(metadata i64 %311, metadata !1586, metadata !DIExpression()), !dbg !1587
  %312 = icmp sgt i64 %311, 0, !dbg !1591
  br i1 %312, label %313, label %325, !dbg !1593

313:                                              ; preds = %308
  %314 = call i64 @full_write(i32 noundef 1, ptr noundef nonnull %253, i64 noundef %311) #41, !dbg !1594
  %315 = icmp eq i64 %314, %311, !dbg !1597
  br i1 %315, label %325, label %316, !dbg !1598

316:                                              ; preds = %313
  %317 = tail call ptr @__errno_location() #44, !dbg !1599
  %318 = load i32, ptr %317, align 4, !dbg !1599, !tbaa !1065
  call void @llvm.dbg.value(metadata i32 %318, metadata !1461, metadata !DIExpression()), !dbg !1601
  %319 = load ptr, ptr @stdout, align 8, !dbg !1602, !tbaa !991
  %320 = call i32 @fflush_unlocked(ptr noundef %319) #41, !dbg !1602
  %321 = load ptr, ptr @stdout, align 8, !dbg !1603, !tbaa !991
  %322 = call i32 @fpurge(ptr noundef %321) #41, !dbg !1604
  %323 = load ptr, ptr @stdout, align 8, !dbg !1605, !tbaa !991
  call void @clearerr_unlocked(ptr noundef %323) #41, !dbg !1605
  %324 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.77, i32 noundef 5) #41, !dbg !1606
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %318, ptr noundef %324) #41, !dbg !1606
  unreachable, !dbg !1606

325:                                              ; preds = %313, %308, %304
  %326 = phi i8 [ %305, %304 ], [ %309, %313 ], [ %309, %308 ]
  %327 = phi ptr [ %288, %304 ], [ %253, %313 ], [ %288, %308 ], !dbg !1515
  call void @llvm.dbg.value(metadata ptr %327, metadata !1506, metadata !DIExpression()), !dbg !1515
  %328 = load i32, ptr @input_desc, align 4, !dbg !1607, !tbaa !1065
  %329 = call i64 @read(i32 noundef %328, ptr noundef nonnull %240, i64 noundef %188) #41, !dbg !1608
  call void @llvm.dbg.value(metadata i64 %329, metadata !1512, metadata !DIExpression()), !dbg !1513
  %330 = icmp slt i64 %329, 0, !dbg !1609
  br i1 %330, label %331, label %350, !dbg !1611

331:                                              ; preds = %325
  %332 = tail call ptr @__errno_location() #44, !dbg !1612
  %333 = load i32, ptr %332, align 4, !dbg !1612, !tbaa !1065
  %334 = load ptr, ptr @infile, align 8, !dbg !1612, !tbaa !991
  %335 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %334) #41, !dbg !1612
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %333, ptr noundef nonnull @.str.36, ptr noundef %335) #41, !dbg !1612
  call void @llvm.dbg.value(metadata ptr %253, metadata !1580, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata ptr undef, metadata !1585, metadata !DIExpression()), !dbg !1614
  %336 = ptrtoint ptr %327 to i64, !dbg !1616
  %337 = sub i64 %336, %257, !dbg !1616
  call void @llvm.dbg.value(metadata i64 %337, metadata !1586, metadata !DIExpression()), !dbg !1614
  %338 = icmp sgt i64 %337, 0, !dbg !1617
  br i1 %338, label %339, label %536, !dbg !1618

339:                                              ; preds = %331
  %340 = call i64 @full_write(i32 noundef 1, ptr noundef nonnull %253, i64 noundef %337) #41, !dbg !1619
  %341 = icmp eq i64 %340, %337, !dbg !1620
  br i1 %341, label %536, label %342, !dbg !1621

342:                                              ; preds = %339
  %343 = load i32, ptr %332, align 4, !dbg !1622, !tbaa !1065
  call void @llvm.dbg.value(metadata i32 %343, metadata !1461, metadata !DIExpression()), !dbg !1624
  %344 = load ptr, ptr @stdout, align 8, !dbg !1625, !tbaa !991
  %345 = call i32 @fflush_unlocked(ptr noundef %344) #41, !dbg !1625
  %346 = load ptr, ptr @stdout, align 8, !dbg !1626, !tbaa !991
  %347 = call i32 @fpurge(ptr noundef %346) #41, !dbg !1627
  %348 = load ptr, ptr @stdout, align 8, !dbg !1628, !tbaa !991
  call void @clearerr_unlocked(ptr noundef %348) #41, !dbg !1628
  %349 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.77, i32 noundef 5) #41, !dbg !1629
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %343, ptr noundef %349) #41, !dbg !1629
  unreachable, !dbg !1629

350:                                              ; preds = %325
  %351 = icmp eq i64 %329, 0, !dbg !1630
  br i1 %351, label %352, label %368, !dbg !1632

352:                                              ; preds = %350
  call void @llvm.dbg.value(metadata ptr %253, metadata !1580, metadata !DIExpression()), !dbg !1633
  call void @llvm.dbg.value(metadata ptr undef, metadata !1585, metadata !DIExpression()), !dbg !1633
  %353 = ptrtoint ptr %327 to i64, !dbg !1636
  %354 = sub i64 %353, %257, !dbg !1636
  call void @llvm.dbg.value(metadata i64 %354, metadata !1586, metadata !DIExpression()), !dbg !1633
  %355 = icmp sgt i64 %354, 0, !dbg !1637
  br i1 %355, label %356, label %536, !dbg !1638

356:                                              ; preds = %352
  %357 = call i64 @full_write(i32 noundef 1, ptr noundef nonnull %253, i64 noundef %354) #41, !dbg !1639
  %358 = icmp eq i64 %357, %354, !dbg !1640
  br i1 %358, label %536, label %359, !dbg !1641

359:                                              ; preds = %356
  %360 = tail call ptr @__errno_location() #44, !dbg !1642
  %361 = load i32, ptr %360, align 4, !dbg !1642, !tbaa !1065
  call void @llvm.dbg.value(metadata i32 %361, metadata !1461, metadata !DIExpression()), !dbg !1644
  %362 = load ptr, ptr @stdout, align 8, !dbg !1645, !tbaa !991
  %363 = call i32 @fflush_unlocked(ptr noundef %362) #41, !dbg !1645
  %364 = load ptr, ptr @stdout, align 8, !dbg !1646, !tbaa !991
  %365 = call i32 @fpurge(ptr noundef %364) #41, !dbg !1647
  %366 = load ptr, ptr @stdout, align 8, !dbg !1648, !tbaa !991
  call void @clearerr_unlocked(ptr noundef %366) #41, !dbg !1648
  %367 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.77, i32 noundef 5) #41, !dbg !1649
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %361, ptr noundef %367) #41, !dbg !1649
  unreachable, !dbg !1649

368:                                              ; preds = %350
  call void @llvm.dbg.value(metadata ptr %240, metadata !1505, metadata !DIExpression()), !dbg !1515
  %369 = getelementptr inbounds i8, ptr %240, i64 %329, !dbg !1650
  call void @llvm.dbg.value(metadata ptr %369, metadata !1504, metadata !DIExpression()), !dbg !1515
  store i8 10, ptr %369, align 1, !dbg !1651, !tbaa !1074
  call void @llvm.dbg.value(metadata ptr %327, metadata !1506, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata i8 %326, metadata !1503, metadata !DIExpression()), !dbg !1515
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #41, !dbg !1652
  br label %418

370:                                              ; preds = %287
  %371 = add nsw i32 %260, 1, !dbg !1653
  call void @llvm.dbg.value(metadata i32 %371, metadata !1502, metadata !DIExpression()), !dbg !1515
  %372 = icmp sgt i32 %260, -1, !dbg !1656
  br i1 %372, label %373, label %404, !dbg !1657

373:                                              ; preds = %370
  %374 = icmp ne i32 %260, 0, !dbg !1658
  %375 = and i1 %95, %374, !dbg !1661
  %376 = select i1 %374, i32 2, i32 1, !dbg !1661
  br i1 %375, label %418, label %377, !dbg !1661

377:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i32 %376, metadata !1502, metadata !DIExpression()), !dbg !1515
  br i1 %96, label %378, label %404, !dbg !1662

378:                                              ; preds = %377
  call void @llvm.dbg.value(metadata !1033, metadata !1664, metadata !DIExpression()), !dbg !1667
  %379 = load ptr, ptr @line_num_start, align 8
  br label %380, !dbg !1670

380:                                              ; preds = %385, %378
  %381 = phi ptr [ getelementptr inbounds ([20 x i8], ptr @line_buf, i64 0, i64 17), %378 ], [ %386, %385 ], !dbg !1667
  call void @llvm.dbg.value(metadata ptr %381, metadata !1664, metadata !DIExpression()), !dbg !1667
  %382 = load i8, ptr %381, align 1, !dbg !1671, !tbaa !1074
  %383 = add i8 %382, 1, !dbg !1671
  store i8 %383, ptr %381, align 1, !dbg !1671, !tbaa !1074
  %384 = icmp slt i8 %382, 57, !dbg !1674
  br i1 %384, label %399, label %385, !dbg !1675

385:                                              ; preds = %380
  %386 = getelementptr inbounds i8, ptr %381, i64 -1, !dbg !1676
  call void @llvm.dbg.value(metadata ptr %386, metadata !1664, metadata !DIExpression()), !dbg !1667
  store i8 48, ptr %381, align 1, !dbg !1677, !tbaa !1074
  %387 = icmp ult ptr %386, %379, !dbg !1678
  br i1 %387, label %388, label %380, !dbg !1679, !llvm.loop !1680

388:                                              ; preds = %385
  %389 = icmp ugt ptr %379, @line_buf, !dbg !1682
  br i1 %389, label %390, label %392, !dbg !1684

390:                                              ; preds = %388
  %391 = getelementptr inbounds i8, ptr %379, i64 -1, !dbg !1685
  store ptr %391, ptr @line_num_start, align 8, !dbg !1685, !tbaa !991
  store i8 49, ptr %391, align 1, !dbg !1686, !tbaa !1074
  br label %393, !dbg !1687

392:                                              ; preds = %388
  store i8 62, ptr @line_buf, align 16, !dbg !1688, !tbaa !1074
  br label %393

393:                                              ; preds = %392, %390
  %394 = phi ptr [ %379, %392 ], [ %391, %390 ], !dbg !1689
  %395 = load ptr, ptr @line_num_print, align 8, !dbg !1691, !tbaa !991
  %396 = icmp ult ptr %394, %395, !dbg !1692
  br i1 %396, label %397, label %401, !dbg !1693

397:                                              ; preds = %393
  %398 = getelementptr inbounds i8, ptr %395, i64 -1, !dbg !1694
  store ptr %398, ptr @line_num_print, align 8, !dbg !1694, !tbaa !991
  br label %401, !dbg !1695

399:                                              ; preds = %380
  %400 = load ptr, ptr @line_num_print, align 8, !dbg !1696, !tbaa !991
  br label %401, !dbg !1696

401:                                              ; preds = %399, %397, %393
  %402 = phi ptr [ %400, %399 ], [ %395, %393 ], [ %398, %397 ], !dbg !1696
  call void @llvm.dbg.value(metadata ptr %288, metadata !1697, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata ptr %402, metadata !1703, metadata !DIExpression()), !dbg !1704
  %403 = call ptr @stpcpy(ptr %288, ptr %402), !dbg !1706
  call void @llvm.dbg.value(metadata ptr %403, metadata !1506, metadata !DIExpression()), !dbg !1515
  br label %404, !dbg !1707

404:                                              ; preds = %401, %377, %370
  %405 = phi ptr [ %288, %377 ], [ %403, %401 ], [ %288, %370 ], !dbg !1515
  %406 = phi i32 [ %376, %377 ], [ %376, %401 ], [ %371, %370 ], !dbg !1708
  call void @llvm.dbg.value(metadata ptr %405, metadata !1506, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata i32 %406, metadata !1502, metadata !DIExpression()), !dbg !1515
  br i1 %94, label %407, label %415, !dbg !1709

407:                                              ; preds = %404
  %408 = load i1, ptr @pending_cr, align 1, !dbg !1710
  br i1 %408, label %409, label %412, !dbg !1714

409:                                              ; preds = %407
  %410 = getelementptr inbounds i8, ptr %405, i64 1, !dbg !1715
  call void @llvm.dbg.value(metadata ptr %410, metadata !1506, metadata !DIExpression()), !dbg !1515
  store i8 94, ptr %405, align 1, !dbg !1717, !tbaa !1074
  %411 = getelementptr inbounds i8, ptr %405, i64 2, !dbg !1718
  call void @llvm.dbg.value(metadata ptr %411, metadata !1506, metadata !DIExpression()), !dbg !1515
  store i8 77, ptr %410, align 1, !dbg !1719, !tbaa !1074
  store i1 false, ptr @pending_cr, align 1, !dbg !1720
  br label %412, !dbg !1721

412:                                              ; preds = %409, %407
  %413 = phi ptr [ %411, %409 ], [ %405, %407 ], !dbg !1515
  call void @llvm.dbg.value(metadata ptr %413, metadata !1506, metadata !DIExpression()), !dbg !1515
  %414 = getelementptr inbounds i8, ptr %413, i64 1, !dbg !1722
  call void @llvm.dbg.value(metadata ptr %414, metadata !1506, metadata !DIExpression()), !dbg !1515
  store i8 36, ptr %413, align 1, !dbg !1723, !tbaa !1074
  br label %415, !dbg !1724

415:                                              ; preds = %412, %404
  %416 = phi ptr [ %414, %412 ], [ %405, %404 ], !dbg !1515
  call void @llvm.dbg.value(metadata ptr %416, metadata !1506, metadata !DIExpression()), !dbg !1515
  %417 = getelementptr inbounds i8, ptr %416, i64 1, !dbg !1725
  call void @llvm.dbg.value(metadata ptr %417, metadata !1506, metadata !DIExpression()), !dbg !1515
  store i8 10, ptr %416, align 1, !dbg !1726, !tbaa !1074
  br label %418

418:                                              ; preds = %415, %373, %368
  %419 = phi ptr [ %327, %368 ], [ %417, %415 ], [ %288, %373 ], !dbg !1515
  %420 = phi i32 [ %260, %368 ], [ %406, %415 ], [ 2, %373 ], !dbg !1515
  %421 = phi i8 [ %326, %368 ], [ %261, %415 ], [ %261, %373 ], !dbg !1515
  %422 = phi ptr [ %369, %368 ], [ %262, %415 ], [ %262, %373 ], !dbg !1520
  %423 = phi ptr [ %240, %368 ], [ %263, %415 ], [ %263, %373 ]
  call void @llvm.dbg.value(metadata ptr %419, metadata !1506, metadata !DIExpression()), !dbg !1515
  %424 = load i8, ptr %423, align 1, !dbg !1727, !tbaa !1074
  %425 = getelementptr inbounds i8, ptr %423, i64 1, !dbg !1727
  call void @llvm.dbg.value(metadata i8 %424, metadata !1501, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata ptr %425, metadata !1505, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata ptr %422, metadata !1504, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata i8 %421, metadata !1503, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata i32 %420, metadata !1502, metadata !DIExpression()), !dbg !1515
  %426 = icmp eq i8 %424, 10, !dbg !1728
  br i1 %426, label %427, label %431, !dbg !1729

427:                                              ; preds = %500, %519, %418
  %428 = phi ptr [ %419, %418 ], [ %511, %519 ], [ %468, %500 ]
  %429 = phi i32 [ %420, %418 ], [ -1, %519 ], [ -1, %500 ]
  %430 = phi ptr [ %425, %418 ], [ %512, %519 ], [ %469, %500 ]
  br label %258, !dbg !1515, !llvm.loop !1730

431:                                              ; preds = %418
  %432 = load i1, ptr @pending_cr, align 1, !dbg !1733
  br i1 %432, label %433, label %435, !dbg !1735

433:                                              ; preds = %431
  %434 = getelementptr inbounds i8, ptr %419, i64 1, !dbg !1736
  call void @llvm.dbg.value(metadata ptr %434, metadata !1506, metadata !DIExpression()), !dbg !1515
  store i8 13, ptr %419, align 1, !dbg !1738, !tbaa !1074
  store i1 false, ptr @pending_cr, align 1, !dbg !1739
  br label %435, !dbg !1740

435:                                              ; preds = %433, %431
  %436 = phi ptr [ %434, %433 ], [ %419, %431 ], !dbg !1741
  call void @llvm.dbg.value(metadata ptr %436, metadata !1506, metadata !DIExpression()), !dbg !1515
  %437 = icmp sgt i32 %420, -1, !dbg !1742
  %438 = and i1 %75, %437, !dbg !1744
  br i1 %438, label %439, label %465, !dbg !1744

439:                                              ; preds = %435
  call void @llvm.dbg.value(metadata !1033, metadata !1664, metadata !DIExpression()), !dbg !1745
  %440 = load ptr, ptr @line_num_start, align 8
  br label %441, !dbg !1748

441:                                              ; preds = %446, %439
  %442 = phi ptr [ getelementptr inbounds ([20 x i8], ptr @line_buf, i64 0, i64 17), %439 ], [ %447, %446 ], !dbg !1745
  call void @llvm.dbg.value(metadata ptr %442, metadata !1664, metadata !DIExpression()), !dbg !1745
  %443 = load i8, ptr %442, align 1, !dbg !1749, !tbaa !1074
  %444 = add i8 %443, 1, !dbg !1749
  store i8 %444, ptr %442, align 1, !dbg !1749, !tbaa !1074
  %445 = icmp slt i8 %443, 57, !dbg !1750
  br i1 %445, label %460, label %446, !dbg !1751

446:                                              ; preds = %441
  %447 = getelementptr inbounds i8, ptr %442, i64 -1, !dbg !1752
  call void @llvm.dbg.value(metadata ptr %447, metadata !1664, metadata !DIExpression()), !dbg !1745
  store i8 48, ptr %442, align 1, !dbg !1753, !tbaa !1074
  %448 = icmp ult ptr %447, %440, !dbg !1754
  br i1 %448, label %449, label %441, !dbg !1755, !llvm.loop !1756

449:                                              ; preds = %446
  %450 = icmp ugt ptr %440, @line_buf, !dbg !1758
  br i1 %450, label %451, label %453, !dbg !1759

451:                                              ; preds = %449
  %452 = getelementptr inbounds i8, ptr %440, i64 -1, !dbg !1760
  store ptr %452, ptr @line_num_start, align 8, !dbg !1760, !tbaa !991
  store i8 49, ptr %452, align 1, !dbg !1761, !tbaa !1074
  br label %454, !dbg !1762

453:                                              ; preds = %449
  store i8 62, ptr @line_buf, align 16, !dbg !1763, !tbaa !1074
  br label %454

454:                                              ; preds = %453, %451
  %455 = phi ptr [ %440, %453 ], [ %452, %451 ], !dbg !1764
  %456 = load ptr, ptr @line_num_print, align 8, !dbg !1765, !tbaa !991
  %457 = icmp ult ptr %455, %456, !dbg !1766
  br i1 %457, label %458, label %462, !dbg !1767

458:                                              ; preds = %454
  %459 = getelementptr inbounds i8, ptr %456, i64 -1, !dbg !1768
  store ptr %459, ptr @line_num_print, align 8, !dbg !1768, !tbaa !991
  br label %462, !dbg !1769

460:                                              ; preds = %441
  %461 = load ptr, ptr @line_num_print, align 8, !dbg !1770, !tbaa !991
  br label %462, !dbg !1770

462:                                              ; preds = %460, %458, %454
  %463 = phi ptr [ %461, %460 ], [ %456, %454 ], [ %459, %458 ], !dbg !1770
  call void @llvm.dbg.value(metadata ptr %436, metadata !1697, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata ptr %463, metadata !1703, metadata !DIExpression()), !dbg !1771
  %464 = call ptr @stpcpy(ptr %436, ptr %463), !dbg !1773
  call void @llvm.dbg.value(metadata ptr %464, metadata !1506, metadata !DIExpression()), !dbg !1515
  br label %465, !dbg !1774

465:                                              ; preds = %462, %435
  %466 = phi ptr [ %436, %435 ], [ %464, %462 ], !dbg !1741
  call void @llvm.dbg.value(metadata ptr %466, metadata !1506, metadata !DIExpression()), !dbg !1515
  br i1 %87, label %510, label %467, !dbg !1775

467:                                              ; preds = %465, %506
  %468 = phi ptr [ %507, %506 ], [ %466, %465 ], !dbg !1741
  %469 = phi ptr [ %508, %506 ], [ %425, %465 ], !dbg !1741
  %470 = phi i8 [ %509, %506 ], [ %424, %465 ], !dbg !1741
  call void @llvm.dbg.value(metadata ptr %468, metadata !1506, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata i8 %470, metadata !1501, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata ptr %469, metadata !1505, metadata !DIExpression()), !dbg !1515
  %471 = icmp ugt i8 %470, 31, !dbg !1776
  br i1 %471, label %472, label %495, !dbg !1781

472:                                              ; preds = %467
  %473 = icmp ult i8 %470, 127, !dbg !1782
  br i1 %473, label %474, label %476, !dbg !1785

474:                                              ; preds = %472
  %475 = getelementptr inbounds i8, ptr %468, i64 1, !dbg !1786
  call void @llvm.dbg.value(metadata ptr %475, metadata !1506, metadata !DIExpression()), !dbg !1515
  store i8 %470, ptr %468, align 1, !dbg !1787, !tbaa !1074
  br label %506, !dbg !1788

476:                                              ; preds = %472
  %477 = icmp eq i8 %470, 127, !dbg !1789
  %478 = getelementptr inbounds i8, ptr %468, i64 1, !dbg !1791
  call void @llvm.dbg.value(metadata ptr %478, metadata !1506, metadata !DIExpression()), !dbg !1515
  %479 = getelementptr inbounds i8, ptr %468, i64 2, !dbg !1791
  call void @llvm.dbg.value(metadata ptr %479, metadata !1506, metadata !DIExpression()), !dbg !1515
  br i1 %477, label %480, label %481, !dbg !1792

480:                                              ; preds = %476
  store i8 94, ptr %468, align 1, !dbg !1793, !tbaa !1074
  store i8 63, ptr %478, align 1, !dbg !1795, !tbaa !1074
  br label %506, !dbg !1796

481:                                              ; preds = %476
  store i8 77, ptr %468, align 1, !dbg !1797, !tbaa !1074
  store i8 45, ptr %478, align 1, !dbg !1799, !tbaa !1074
  %482 = icmp ugt i8 %470, -97, !dbg !1800
  br i1 %482, label %483, label %491, !dbg !1802

483:                                              ; preds = %481
  %484 = icmp eq i8 %470, -1, !dbg !1803
  br i1 %484, label %488, label %485, !dbg !1806

485:                                              ; preds = %483
  %486 = and i8 %470, 127, !dbg !1807
  %487 = getelementptr inbounds i8, ptr %468, i64 3, !dbg !1808
  call void @llvm.dbg.value(metadata ptr %487, metadata !1506, metadata !DIExpression()), !dbg !1515
  store i8 %486, ptr %479, align 1, !dbg !1809, !tbaa !1074
  br label %506, !dbg !1810

488:                                              ; preds = %483
  %489 = getelementptr inbounds i8, ptr %468, i64 3, !dbg !1811
  call void @llvm.dbg.value(metadata ptr %489, metadata !1506, metadata !DIExpression()), !dbg !1515
  store i8 94, ptr %479, align 1, !dbg !1813, !tbaa !1074
  %490 = getelementptr inbounds i8, ptr %468, i64 4, !dbg !1814
  call void @llvm.dbg.value(metadata ptr %490, metadata !1506, metadata !DIExpression()), !dbg !1515
  store i8 63, ptr %489, align 1, !dbg !1815, !tbaa !1074
  br label %506

491:                                              ; preds = %481
  %492 = getelementptr inbounds i8, ptr %468, i64 3, !dbg !1816
  call void @llvm.dbg.value(metadata ptr %492, metadata !1506, metadata !DIExpression()), !dbg !1515
  store i8 94, ptr %479, align 1, !dbg !1818, !tbaa !1074
  %493 = add i8 %470, -64, !dbg !1819
  %494 = getelementptr inbounds i8, ptr %468, i64 4, !dbg !1820
  call void @llvm.dbg.value(metadata ptr %494, metadata !1506, metadata !DIExpression()), !dbg !1515
  store i8 %493, ptr %492, align 1, !dbg !1821, !tbaa !1074
  br label %506

495:                                              ; preds = %467
  %496 = icmp ne i8 %470, 9, !dbg !1822
  %497 = or i1 %92, %496, !dbg !1824
  br i1 %497, label %500, label %498, !dbg !1824

498:                                              ; preds = %495
  %499 = getelementptr inbounds i8, ptr %468, i64 1, !dbg !1825
  call void @llvm.dbg.value(metadata ptr %499, metadata !1506, metadata !DIExpression()), !dbg !1515
  store i8 9, ptr %468, align 1, !dbg !1826, !tbaa !1074
  br label %506, !dbg !1827

500:                                              ; preds = %495
  %501 = icmp eq i8 %470, 10, !dbg !1828
  br i1 %501, label %427, label %502, !dbg !1830, !llvm.loop !1831

502:                                              ; preds = %500
  %503 = getelementptr inbounds i8, ptr %468, i64 1, !dbg !1833
  call void @llvm.dbg.value(metadata ptr %503, metadata !1506, metadata !DIExpression()), !dbg !1515
  store i8 94, ptr %468, align 1, !dbg !1835, !tbaa !1074
  %504 = or disjoint i8 %470, 64, !dbg !1836
  %505 = getelementptr inbounds i8, ptr %468, i64 2, !dbg !1837
  call void @llvm.dbg.value(metadata ptr %505, metadata !1506, metadata !DIExpression()), !dbg !1515
  store i8 %504, ptr %503, align 1, !dbg !1838, !tbaa !1074
  br label %506

506:                                              ; preds = %502, %498, %491, %488, %485, %480, %474
  %507 = phi ptr [ %475, %474 ], [ %479, %480 ], [ %490, %488 ], [ %487, %485 ], [ %494, %491 ], [ %505, %502 ], [ %499, %498 ], !dbg !1839
  call void @llvm.dbg.value(metadata ptr %507, metadata !1506, metadata !DIExpression()), !dbg !1515
  %508 = getelementptr inbounds i8, ptr %469, i64 1, !dbg !1840
  call void @llvm.dbg.value(metadata ptr %508, metadata !1505, metadata !DIExpression()), !dbg !1515
  %509 = load i8, ptr %469, align 1, !dbg !1841, !tbaa !1074
  call void @llvm.dbg.value(metadata i8 %509, metadata !1501, metadata !DIExpression()), !dbg !1515
  br label %467, !dbg !1842, !llvm.loop !1843

510:                                              ; preds = %465, %532
  %511 = phi ptr [ %533, %532 ], [ %466, %465 ], !dbg !1741
  %512 = phi ptr [ %534, %532 ], [ %425, %465 ], !dbg !1741
  %513 = phi i8 [ %535, %532 ], [ %424, %465 ], !dbg !1741
  call void @llvm.dbg.value(metadata ptr %511, metadata !1506, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata i8 %513, metadata !1501, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata ptr %512, metadata !1505, metadata !DIExpression()), !dbg !1515
  %514 = icmp eq i8 %513, 9, !dbg !1845
  %515 = and i1 %92, %514, !dbg !1849
  br i1 %515, label %516, label %519, !dbg !1849

516:                                              ; preds = %510
  %517 = getelementptr inbounds i8, ptr %511, i64 1, !dbg !1850
  call void @llvm.dbg.value(metadata ptr %517, metadata !1506, metadata !DIExpression()), !dbg !1515
  store i8 94, ptr %511, align 1, !dbg !1852, !tbaa !1074
  %518 = getelementptr inbounds i8, ptr %511, i64 2, !dbg !1853
  call void @llvm.dbg.value(metadata ptr %518, metadata !1506, metadata !DIExpression()), !dbg !1515
  store i8 73, ptr %517, align 1, !dbg !1854, !tbaa !1074
  br label %532, !dbg !1855

519:                                              ; preds = %510
  switch i8 %513, label %530 [
    i8 10, label %427
    i8 13, label %520
  ], !dbg !1856, !llvm.loop !1831

520:                                              ; preds = %519
  %521 = load i8, ptr %512, align 1, !dbg !1857, !tbaa !1074
  %522 = icmp eq i8 %521, 10, !dbg !1861
  %523 = and i1 %94, %522, !dbg !1862
  br i1 %523, label %524, label %530, !dbg !1862

524:                                              ; preds = %520
  %525 = icmp eq ptr %512, %422, !dbg !1863
  br i1 %525, label %526, label %527, !dbg !1866

526:                                              ; preds = %524
  store i1 true, ptr @pending_cr, align 1, !dbg !1867
  br label %532, !dbg !1868

527:                                              ; preds = %524
  %528 = getelementptr inbounds i8, ptr %511, i64 1, !dbg !1869
  call void @llvm.dbg.value(metadata ptr %528, metadata !1506, metadata !DIExpression()), !dbg !1515
  store i8 94, ptr %511, align 1, !dbg !1871, !tbaa !1074
  %529 = getelementptr inbounds i8, ptr %511, i64 2, !dbg !1872
  call void @llvm.dbg.value(metadata ptr %529, metadata !1506, metadata !DIExpression()), !dbg !1515
  store i8 77, ptr %528, align 1, !dbg !1873, !tbaa !1074
  br label %532

530:                                              ; preds = %520, %519
  %531 = getelementptr inbounds i8, ptr %511, i64 1, !dbg !1874
  call void @llvm.dbg.value(metadata ptr %531, metadata !1506, metadata !DIExpression()), !dbg !1515
  store i8 %513, ptr %511, align 1, !dbg !1875, !tbaa !1074
  br label %532

532:                                              ; preds = %530, %527, %526, %516
  %533 = phi ptr [ %531, %530 ], [ %511, %526 ], [ %529, %527 ], [ %518, %516 ], !dbg !1741
  call void @llvm.dbg.value(metadata ptr %533, metadata !1506, metadata !DIExpression()), !dbg !1515
  %534 = getelementptr inbounds i8, ptr %512, i64 1, !dbg !1876
  call void @llvm.dbg.value(metadata ptr %534, metadata !1505, metadata !DIExpression()), !dbg !1515
  %535 = load i8, ptr %512, align 1, !dbg !1877, !tbaa !1074
  call void @llvm.dbg.value(metadata i8 %535, metadata !1501, metadata !DIExpression()), !dbg !1515
  br label %510, !dbg !1878, !llvm.loop !1879

536:                                              ; preds = %300, %331, %339, %352, %356
  %537 = phi i1 [ false, %300 ], [ false, %339 ], [ false, %331 ], [ true, %356 ], [ true, %352 ]
  store i32 %260, ptr @newlines2, align 4, !dbg !1513, !tbaa !1065
  call void @llvm.dbg.value(metadata ptr poison, metadata !1506, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata ptr poison, metadata !1505, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata ptr poison, metadata !1504, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata i8 poison, metadata !1503, metadata !DIExpression()), !dbg !1515
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #41, !dbg !1652
  %538 = icmp ne i8 %102, 0, !dbg !1881
  %539 = select i1 %537, i1 %538, i1 false, !dbg !1881
  tail call void @llvm.dbg.value(metadata i1 %539, metadata !507, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1217
  call void @llvm.dbg.value(metadata ptr %253, metadata !1882, metadata !DIExpression()), !dbg !1888
  call void @free(ptr noundef nonnull %253) #41, !dbg !1890
  br label %540

540:                                              ; preds = %205, %235, %536
  %541 = phi i1 [ %539, %536 ], [ %208, %205 ], [ %237, %235 ]
  %542 = phi ptr [ %240, %536 ], [ null, %205 ], [ %211, %235 ], !dbg !1891
  %543 = zext i1 %541 to i8, !dbg !1891
  tail call void @llvm.dbg.value(metadata ptr %542, metadata !521, metadata !DIExpression()), !dbg !1219
  tail call void @llvm.dbg.value(metadata i8 %543, metadata !507, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata ptr %542, metadata !1882, metadata !DIExpression()), !dbg !1892
  call void @free(ptr noundef %542) #41, !dbg !1894
  br label %544, !dbg !1895

544:                                              ; preds = %183, %540, %128
  %545 = phi i32 [ %101, %128 ], [ %189, %540 ], [ %177, %183 ], !dbg !1217
  %546 = phi i8 [ 0, %128 ], [ %543, %540 ], [ 0, %183 ], !dbg !1219
  tail call void @llvm.dbg.value(metadata i8 %546, metadata !507, metadata !DIExpression()), !dbg !1217
  tail call void @llvm.dbg.value(metadata i32 %545, metadata !504, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.label(metadata !528), !dbg !1896
  br i1 %113, label %556, label %547, !dbg !1897

547:                                              ; preds = %544
  %548 = load i32, ptr @input_desc, align 4, !dbg !1899, !tbaa !1065
  %549 = call i32 @close(i32 noundef %548) #41, !dbg !1900
  %550 = icmp slt i32 %549, 0, !dbg !1901
  br i1 %550, label %551, label %556, !dbg !1902

551:                                              ; preds = %547
  %552 = tail call ptr @__errno_location() #44, !dbg !1903
  %553 = load i32, ptr %552, align 4, !dbg !1903, !tbaa !1065
  %554 = load ptr, ptr @infile, align 8, !dbg !1903, !tbaa !991
  %555 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %554) #41, !dbg !1903
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %553, ptr noundef nonnull @.str.36, ptr noundef %555) #41, !dbg !1903
  tail call void @llvm.dbg.value(metadata i8 0, metadata !507, metadata !DIExpression()), !dbg !1217
  br label %556, !dbg !1905

556:                                              ; preds = %551, %547, %544
  %557 = phi i8 [ %546, %544 ], [ 0, %551 ], [ %546, %547 ], !dbg !1219
  tail call void @llvm.dbg.value(metadata i8 %557, metadata !507, metadata !DIExpression()), !dbg !1217
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %5) #41, !dbg !1906
  br label %558, !dbg !1906

558:                                              ; preds = %556, %118
  %559 = phi i32 [ %545, %556 ], [ %101, %118 ], !dbg !1316
  %560 = phi i8 [ %557, %556 ], [ 0, %118 ], !dbg !1219
  %561 = phi i8 [ %125, %556 ], [ %103, %118 ], !dbg !1217
  tail call void @llvm.dbg.value(metadata i8 %561, metadata !455, metadata !DIExpression()), !dbg !1217
  tail call void @llvm.dbg.value(metadata i8 %560, metadata !507, metadata !DIExpression()), !dbg !1217
  tail call void @llvm.dbg.value(metadata i32 %559, metadata !504, metadata !DIExpression()), !dbg !1217
  %562 = add nsw i64 %100, 1, !dbg !1907
  tail call void @llvm.dbg.value(metadata i64 %562, metadata !506, metadata !DIExpression()), !dbg !1217
  %563 = icmp slt i64 %562, %98, !dbg !1908
  br i1 %563, label %99, label %564, !dbg !1909, !llvm.loop !1910

564:                                              ; preds = %558
  %565 = load i1, ptr @pending_cr, align 1, !dbg !1912
  br i1 %565, label %566, label %578, !dbg !1914

566:                                              ; preds = %564
  %567 = call i64 @full_write(i32 noundef 1, ptr noundef nonnull @.str.38, i64 noundef 1) #41, !dbg !1915
  %568 = icmp eq i64 %567, 1, !dbg !1918
  br i1 %568, label %578, label %569, !dbg !1919

569:                                              ; preds = %566
  %570 = tail call ptr @__errno_location() #44, !dbg !1920
  %571 = load i32, ptr %570, align 4, !dbg !1920, !tbaa !1065
  call void @llvm.dbg.value(metadata i32 %571, metadata !1461, metadata !DIExpression()), !dbg !1922
  %572 = load ptr, ptr @stdout, align 8, !dbg !1923, !tbaa !991
  %573 = call i32 @fflush_unlocked(ptr noundef %572) #41, !dbg !1923
  %574 = load ptr, ptr @stdout, align 8, !dbg !1924, !tbaa !991
  %575 = call i32 @fpurge(ptr noundef %574) #41, !dbg !1925
  %576 = load ptr, ptr @stdout, align 8, !dbg !1926, !tbaa !991
  call void @clearerr_unlocked(ptr noundef %576) #41, !dbg !1926
  %577 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.77, i32 noundef 5) #41, !dbg !1927
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %571, ptr noundef %577) #41, !dbg !1927
  unreachable, !dbg !1927

578:                                              ; preds = %566, %564
  %579 = and i8 %561, 1, !dbg !1928
  %580 = icmp eq i8 %579, 0, !dbg !1928
  br i1 %580, label %588, label %581, !dbg !1930

581:                                              ; preds = %578
  %582 = call i32 @close(i32 noundef 0) #41, !dbg !1931
  %583 = icmp slt i32 %582, 0, !dbg !1932
  br i1 %583, label %584, label %588, !dbg !1933

584:                                              ; preds = %581
  %585 = tail call ptr @__errno_location() #44, !dbg !1934
  %586 = load i32, ptr %585, align 4, !dbg !1934, !tbaa !1065
  %587 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.39, i32 noundef 5) #41, !dbg !1934
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %586, ptr noundef %587) #41, !dbg !1934
  unreachable, !dbg !1934

588:                                              ; preds = %581, %578
  %589 = xor i8 %560, 1, !dbg !1935
  %590 = zext nneg i8 %589 to i32, !dbg !1935
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #41, !dbg !1936
  ret i32 %590, !dbg !1936
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nounwind
declare !dbg !1937 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1940 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1941 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1944 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !1950 noundef i32 @fstat(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1955 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1959 i32 @getpagesize() local_unnamed_addr #9

; Function Attrs: nofree
declare !dbg !1961 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #12

; Function Attrs: nounwind
declare !dbg !1965 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #12

declare !dbg !1968 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1971 void @clearerr_unlocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #13

; Function Attrs: nounwind
declare !dbg !1974 i32 @ioctl(i32 noundef, i64 noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @stpcpy(ptr noalias writeonly, ptr noalias nocapture readonly) #14

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1978 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

declare !dbg !1979 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #16 !dbg !1982 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1984, metadata !DIExpression()), !dbg !1985
  store ptr %0, ptr @file_name, align 8, !dbg !1986, !tbaa !991
  ret void, !dbg !1987
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #16 !dbg !1988 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1992, metadata !DIExpression()), !dbg !1993
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1994, !tbaa !1995
  ret void, !dbg !1997
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1998 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2003, !tbaa !991
  %2 = tail call i32 @close_stream(ptr noundef %1) #41, !dbg !2004
  %3 = icmp eq i32 %2, 0, !dbg !2005
  br i1 %3, label %22, label %4, !dbg !2006

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !2007, !tbaa !1995, !range !2008, !noundef !1033
  %6 = icmp eq i8 %5, 0, !dbg !2007
  br i1 %6, label %11, label %7, !dbg !2009

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #44, !dbg !2010
  %9 = load i32, ptr %8, align 4, !dbg !2010, !tbaa !1065
  %10 = icmp eq i32 %9, 32, !dbg !2011
  br i1 %10, label %22, label %11, !dbg !2012

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.1.49, i32 noundef 5) #41, !dbg !2013
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !2000, metadata !DIExpression()), !dbg !2014
  %13 = load ptr, ptr @file_name, align 8, !dbg !2015, !tbaa !991
  %14 = icmp eq ptr %13, null, !dbg !2015
  %15 = tail call ptr @__errno_location() #44, !dbg !2017
  %16 = load i32, ptr %15, align 4, !dbg !2017, !tbaa !1065
  br i1 %14, label %19, label %17, !dbg !2018

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #41, !dbg !2019
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.50, ptr noundef %18, ptr noundef %12) #41, !dbg !2019
  br label %20, !dbg !2019

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.51, ptr noundef %12) #41, !dbg !2020
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !2021, !tbaa !1065
  tail call void @_exit(i32 noundef %21) #43, !dbg !2022
  unreachable, !dbg !2022

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !2023, !tbaa !991
  %24 = tail call i32 @close_stream(ptr noundef %23) #41, !dbg !2025
  %25 = icmp eq i32 %24, 0, !dbg !2026
  br i1 %25, label %28, label %26, !dbg !2027

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !2028, !tbaa !1065
  tail call void @_exit(i32 noundef %27) #43, !dbg !2029
  unreachable, !dbg !2029

28:                                               ; preds = %22
  ret void, !dbg !2030
}

; Function Attrs: noreturn
declare !dbg !2031 void @_exit(i32 noundef) local_unnamed_addr #17

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_copy_file_range(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #10 !dbg !2032 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2039, metadata !DIExpression()), !dbg !2046
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2040, metadata !DIExpression()), !dbg !2046
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2041, metadata !DIExpression()), !dbg !2046
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2042, metadata !DIExpression()), !dbg !2046
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !2043, metadata !DIExpression()), !dbg !2046
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2044, metadata !DIExpression()), !dbg !2046
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2045, metadata !DIExpression()), !dbg !2046
  %7 = tail call i64 @llvm.umin.i64(i64 %4, i64 2146435072), !dbg !2047
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !2043, metadata !DIExpression()), !dbg !2046
  %8 = tail call i64 @copy_file_range(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %7, i32 noundef %5) #41, !dbg !2050
  ret i64 %8, !dbg !2051
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

declare !dbg !2052 i64 @copy_file_range(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #18 !dbg !2056 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2060, metadata !DIExpression()), !dbg !2064
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2061, metadata !DIExpression()), !dbg !2064
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2062, metadata !DIExpression()), !dbg !2064
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2063, metadata !DIExpression()), !dbg !2064
  tail call fastcc void @flush_stdout(), !dbg !2065
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !2066, !tbaa !991
  %6 = icmp eq ptr %5, null, !dbg !2066
  br i1 %6, label %8, label %7, !dbg !2068

7:                                                ; preds = %4
  tail call void %5() #41, !dbg !2069
  br label %12, !dbg !2069

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !2070, !tbaa !991
  %10 = tail call ptr @getprogname() #42, !dbg !2070
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.54, ptr noundef %10) #41, !dbg !2070
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !2072
  ret void, !dbg !2073
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !2074 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2076, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i32 1, metadata !2078, metadata !DIExpression()), !dbg !2081
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #41, !dbg !2084
  %2 = icmp slt i32 %1, 0, !dbg !2085
  br i1 %2, label %6, label %3, !dbg !2086

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !2087, !tbaa !991
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #41, !dbg !2087
  br label %6, !dbg !2087

6:                                                ; preds = %3, %0
  ret void, !dbg !2088
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !2089 {
  %5 = alloca [1024 x i8], align 16, !DIAssignID !2095
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2091, metadata !DIExpression()), !dbg !2096
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2092, metadata !DIExpression()), !dbg !2096
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2093, metadata !DIExpression()), !dbg !2096
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2094, metadata !DIExpression()), !dbg !2096
  %6 = load ptr, ptr @stderr, align 8, !dbg !2097, !tbaa !991
  call void @llvm.dbg.value(metadata ptr %6, metadata !2098, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata ptr %2, metadata !2138, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata ptr %3, metadata !2139, metadata !DIExpression()), !dbg !2140
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #41, !dbg !2142
  %8 = load i32, ptr @error_message_count, align 4, !dbg !2143, !tbaa !1065
  %9 = add i32 %8, 1, !dbg !2143
  store i32 %9, ptr @error_message_count, align 4, !dbg !2143, !tbaa !1065
  %10 = icmp eq i32 %1, 0, !dbg !2144
  br i1 %10, label %20, label %11, !dbg !2146

11:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2147, metadata !DIExpression(), metadata !2095, metadata ptr %5, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.value(metadata i32 %1, metadata !2150, metadata !DIExpression()), !dbg !2155
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #41, !dbg !2157
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #41, !dbg !2158
  call void @llvm.dbg.value(metadata ptr %12, metadata !2151, metadata !DIExpression()), !dbg !2155
  %13 = icmp eq ptr %12, null, !dbg !2159
  br i1 %13, label %14, label %16, !dbg !2161

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.55, ptr noundef nonnull @.str.5.56, i32 noundef 5) #41, !dbg !2162
  call void @llvm.dbg.value(metadata ptr %15, metadata !2151, metadata !DIExpression()), !dbg !2155
  br label %16, !dbg !2163

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !2155
  call void @llvm.dbg.value(metadata ptr %17, metadata !2151, metadata !DIExpression()), !dbg !2155
  %18 = load ptr, ptr @stderr, align 8, !dbg !2164, !tbaa !991
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.57, ptr noundef %17) #41, !dbg !2164
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #41, !dbg !2165
  br label %20, !dbg !2166

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !2167, !tbaa !991
  call void @llvm.dbg.value(metadata i32 10, metadata !2168, metadata !DIExpression()), !dbg !2175
  call void @llvm.dbg.value(metadata ptr %21, metadata !2174, metadata !DIExpression()), !dbg !2175
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !2177
  %23 = load ptr, ptr %22, align 8, !dbg !2177, !tbaa !2178
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !2177
  %25 = load ptr, ptr %24, align 8, !dbg !2177, !tbaa !2180
  %26 = icmp ult ptr %23, %25, !dbg !2177
  br i1 %26, label %29, label %27, !dbg !2177, !prof !2181

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #41, !dbg !2177
  br label %31, !dbg !2177

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !2177
  store ptr %30, ptr %22, align 8, !dbg !2177, !tbaa !2178
  store i8 10, ptr %23, align 1, !dbg !2177, !tbaa !1074
  br label %31, !dbg !2177

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !2182, !tbaa !991
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #41, !dbg !2182
  %34 = icmp eq i32 %0, 0, !dbg !2183
  br i1 %34, label %36, label %35, !dbg !2185

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #43, !dbg !2186
  unreachable, !dbg !2186

36:                                               ; preds = %31
  ret void, !dbg !2187
}

declare !dbg !2188 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !2191 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2194 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !2197 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !2200 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !2213
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2207, metadata !DIExpression(), metadata !2213, metadata ptr %4, metadata !DIExpression()), !dbg !2214
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2204, metadata !DIExpression()), !dbg !2214
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2205, metadata !DIExpression()), !dbg !2214
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2206, metadata !DIExpression()), !dbg !2214
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #41, !dbg !2215
  call void @llvm.va_start(ptr nonnull %4), !dbg !2216
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #47, !dbg !2217
  call void @llvm.va_end(ptr nonnull %4), !dbg !2218
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #41, !dbg !2219
  ret void, !dbg !2219
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #19

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #18 !dbg !572 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !583, metadata !DIExpression()), !dbg !2220
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !584, metadata !DIExpression()), !dbg !2220
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !585, metadata !DIExpression()), !dbg !2220
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !586, metadata !DIExpression()), !dbg !2220
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !587, metadata !DIExpression()), !dbg !2220
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !588, metadata !DIExpression()), !dbg !2220
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !2221, !tbaa !1065
  %8 = icmp eq i32 %7, 0, !dbg !2221
  br i1 %8, label %23, label %9, !dbg !2223

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !2224, !tbaa !1065
  %11 = icmp eq i32 %10, %3, !dbg !2227
  br i1 %11, label %12, label %22, !dbg !2228

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !2229, !tbaa !991
  %14 = icmp eq ptr %13, %2, !dbg !2230
  br i1 %14, label %36, label %15, !dbg !2231

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !2232
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !2233
  br i1 %18, label %19, label %22, !dbg !2233

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #42, !dbg !2234
  %21 = icmp eq i32 %20, 0, !dbg !2235
  br i1 %21, label %36, label %22, !dbg !2236

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !2237, !tbaa !991
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !2238, !tbaa !1065
  br label %23, !dbg !2239

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !2240
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !2241, !tbaa !991
  %25 = icmp eq ptr %24, null, !dbg !2241
  br i1 %25, label %27, label %26, !dbg !2243

26:                                               ; preds = %23
  tail call void %24() #41, !dbg !2244
  br label %31, !dbg !2244

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !2245, !tbaa !991
  %29 = tail call ptr @getprogname() #42, !dbg !2245
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.60, ptr noundef %29) #41, !dbg !2245
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !2247, !tbaa !991
  %33 = icmp eq ptr %2, null, !dbg !2247
  %34 = select i1 %33, ptr @.str.3.61, ptr @.str.2.62, !dbg !2247
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #41, !dbg !2247
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !2248
  br label %36, !dbg !2249

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !2249
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !2250 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !2260
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2259, metadata !DIExpression(), metadata !2260, metadata ptr %6, metadata !DIExpression()), !dbg !2261
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2254, metadata !DIExpression()), !dbg !2261
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2255, metadata !DIExpression()), !dbg !2261
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2256, metadata !DIExpression()), !dbg !2261
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2257, metadata !DIExpression()), !dbg !2261
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2258, metadata !DIExpression()), !dbg !2261
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #41, !dbg !2262
  call void @llvm.va_start(ptr nonnull %6), !dbg !2263
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #47, !dbg !2264
  call void @llvm.va_end(ptr nonnull %6), !dbg !2265
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #41, !dbg !2266
  ret void, !dbg !2266
}

; Function Attrs: nounwind uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #10 !dbg !2267 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2272, metadata !DIExpression()), !dbg !2276
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2273, metadata !DIExpression()), !dbg !2276
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2274, metadata !DIExpression()), !dbg !2276
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2275, metadata !DIExpression()), !dbg !2276
  %5 = tail call i32 @posix_fadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #41, !dbg !2277
  ret void, !dbg !2278
}

; Function Attrs: nounwind
declare !dbg !2279 i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fadvise(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !2282 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2320, metadata !DIExpression()), !dbg !2322
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2321, metadata !DIExpression()), !dbg !2322
  %3 = icmp eq ptr %0, null, !dbg !2323
  br i1 %3, label %7, label %4, !dbg !2325

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(ptr noundef nonnull %0) #41, !dbg !2326
  call void @llvm.dbg.value(metadata i32 %5, metadata !2272, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.value(metadata i64 0, metadata !2273, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.value(metadata i64 0, metadata !2274, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.value(metadata i32 %1, metadata !2275, metadata !DIExpression()), !dbg !2327
  %6 = tail call i32 @posix_fadvise(i32 noundef %5, i64 noundef 0, i64 noundef 0, i32 noundef %1) #41, !dbg !2329
  br label %7, !dbg !2330

7:                                                ; preds = %4, %2
  ret void, !dbg !2331
}

; Function Attrs: nofree nounwind
declare !dbg !2332 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fcntl(i32 noundef %0, i32 noundef %1, ...) local_unnamed_addr #10 !dbg !2335 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !2362
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2339, metadata !DIExpression(), metadata !2362, metadata ptr %3, metadata !DIExpression()), !dbg !2363
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2337, metadata !DIExpression()), !dbg !2363
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2338, metadata !DIExpression()), !dbg !2363
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #41, !dbg !2364
  call void @llvm.va_start(ptr nonnull %3), !dbg !2365
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !2350, metadata !DIExpression()), !dbg !2363
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
  ], !dbg !2366

4:                                                ; preds = %2
  %5 = load i32, ptr %3, align 16, !dbg !2367
  %6 = icmp ult i32 %5, 41, !dbg !2367
  br i1 %6, label %7, label %13, !dbg !2367

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !2367
  %9 = load ptr, ptr %8, align 16, !dbg !2367
  %10 = zext nneg i32 %5 to i64, !dbg !2367
  %11 = getelementptr i8, ptr %9, i64 %10, !dbg !2367
  %12 = add nuw nsw i32 %5, 8, !dbg !2367
  store i32 %12, ptr %3, align 16, !dbg !2367, !DIAssignID !2368
  call void @llvm.dbg.assign(metadata i32 %12, metadata !2339, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2368, metadata ptr %3, metadata !DIExpression()), !dbg !2363
  br label %17, !dbg !2367

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !2367
  %15 = load ptr, ptr %14, align 8, !dbg !2367
  %16 = getelementptr i8, ptr %15, i64 8, !dbg !2367
  store ptr %16, ptr %14, align 8, !dbg !2367, !DIAssignID !2369
  call void @llvm.dbg.assign(metadata ptr %16, metadata !2339, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !2369, metadata ptr %14, metadata !DIExpression()), !dbg !2363
  br label %17, !dbg !2367

17:                                               ; preds = %13, %7
  %18 = phi ptr [ %11, %7 ], [ %15, %13 ], !dbg !2367
  %19 = load i32, ptr %18, align 4, !dbg !2367
  tail call void @llvm.dbg.value(metadata i32 %19, metadata !2351, metadata !DIExpression()), !dbg !2370
  call void @llvm.dbg.value(metadata i32 %0, metadata !2371, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i32 %19, metadata !2374, metadata !DIExpression()), !dbg !2376
  %20 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %19) #41, !dbg !2378
  call void @llvm.dbg.value(metadata i32 %20, metadata !2375, metadata !DIExpression()), !dbg !2376
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !2350, metadata !DIExpression()), !dbg !2363
  br label %107

21:                                               ; preds = %2
  %22 = load i32, ptr %3, align 16, !dbg !2379
  %23 = icmp ult i32 %22, 41, !dbg !2379
  br i1 %23, label %24, label %30, !dbg !2379

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !2379
  %26 = load ptr, ptr %25, align 16, !dbg !2379
  %27 = zext nneg i32 %22 to i64, !dbg !2379
  %28 = getelementptr i8, ptr %26, i64 %27, !dbg !2379
  %29 = add nuw nsw i32 %22, 8, !dbg !2379
  store i32 %29, ptr %3, align 16, !dbg !2379, !DIAssignID !2380
  call void @llvm.dbg.assign(metadata i32 %29, metadata !2339, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2380, metadata ptr %3, metadata !DIExpression()), !dbg !2363
  br label %34, !dbg !2379

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !2379
  %32 = load ptr, ptr %31, align 8, !dbg !2379
  %33 = getelementptr i8, ptr %32, i64 8, !dbg !2379
  store ptr %33, ptr %31, align 8, !dbg !2379, !DIAssignID !2381
  call void @llvm.dbg.assign(metadata ptr %33, metadata !2339, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !2381, metadata ptr %31, metadata !DIExpression()), !dbg !2363
  br label %34, !dbg !2379

34:                                               ; preds = %30, %24
  %35 = phi ptr [ %28, %24 ], [ %32, %30 ], !dbg !2379
  %36 = load i32, ptr %35, align 4, !dbg !2379
  tail call void @llvm.dbg.value(metadata i32 %36, metadata !2354, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata i32 %0, metadata !622, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i32 %36, metadata !623, metadata !DIExpression()), !dbg !2383
  %37 = load i32, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !2385, !tbaa !1065
  %38 = icmp sgt i32 %37, -1, !dbg !2387
  br i1 %38, label %39, label %51, !dbg !2388

39:                                               ; preds = %34
  %40 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 1030, i32 noundef %36) #41, !dbg !2389
  call void @llvm.dbg.value(metadata i32 %40, metadata !624, metadata !DIExpression()), !dbg !2383
  %41 = icmp sgt i32 %40, -1, !dbg !2391
  br i1 %41, label %46, label %42, !dbg !2393

42:                                               ; preds = %39
  %43 = tail call ptr @__errno_location() #44, !dbg !2394
  %44 = load i32, ptr %43, align 4, !dbg !2394, !tbaa !1065
  %45 = icmp eq i32 %44, 22, !dbg !2395
  br i1 %45, label %47, label %46, !dbg !2396

46:                                               ; preds = %42, %39
  store i32 1, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !2397, !tbaa !1065
  call void @llvm.dbg.value(metadata i32 %40, metadata !624, metadata !DIExpression()), !dbg !2383
  br label %107, !dbg !2399

47:                                               ; preds = %42
  call void @llvm.dbg.value(metadata i32 %0, metadata !2371, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i32 %36, metadata !2374, metadata !DIExpression()), !dbg !2400
  %48 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %36) #41, !dbg !2403
  call void @llvm.dbg.value(metadata i32 %48, metadata !2375, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i32 %48, metadata !624, metadata !DIExpression()), !dbg !2383
  %49 = icmp sgt i32 %48, -1, !dbg !2404
  br i1 %49, label %50, label %107, !dbg !2406

50:                                               ; preds = %47
  store i32 -1, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !2407, !tbaa !1065
  br label %55, !dbg !2408

51:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i32 %0, metadata !2371, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i32 %36, metadata !2374, metadata !DIExpression()), !dbg !2409
  %52 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %36) #41, !dbg !2411
  call void @llvm.dbg.value(metadata i32 %52, metadata !2375, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i32 %52, metadata !624, metadata !DIExpression()), !dbg !2383
  %53 = load i32, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4
  %54 = icmp eq i32 %53, -1
  br label %55

55:                                               ; preds = %51, %50
  %56 = phi i1 [ true, %50 ], [ %54, %51 ]
  %57 = phi i32 [ %48, %50 ], [ %52, %51 ], !dbg !2412
  call void @llvm.dbg.value(metadata i32 %57, metadata !624, metadata !DIExpression()), !dbg !2383
  %58 = icmp sgt i32 %57, -1, !dbg !2413
  %59 = select i1 %58, i1 %56, i1 false, !dbg !2399
  br i1 %59, label %60, label %107, !dbg !2399

60:                                               ; preds = %55
  %61 = call i32 (i32, i32, ...) @fcntl(i32 noundef %57, i32 noundef 1) #41, !dbg !2414
  call void @llvm.dbg.value(metadata i32 %61, metadata !625, metadata !DIExpression()), !dbg !2415
  %62 = icmp slt i32 %61, 0, !dbg !2416
  br i1 %62, label %67, label %63, !dbg !2417

63:                                               ; preds = %60
  %64 = or i32 %61, 1, !dbg !2418
  %65 = call i32 (i32, i32, ...) @fcntl(i32 noundef %57, i32 noundef 2, i32 noundef %64) #41, !dbg !2419
  %66 = icmp eq i32 %65, -1, !dbg !2420
  br i1 %66, label %67, label %107, !dbg !2421

67:                                               ; preds = %63, %60
  %68 = tail call ptr @__errno_location() #44, !dbg !2422
  %69 = load i32, ptr %68, align 4, !dbg !2422, !tbaa !1065
  call void @llvm.dbg.value(metadata i32 %69, metadata !628, metadata !DIExpression()), !dbg !2423
  %70 = call i32 @close(i32 noundef %57) #41, !dbg !2424
  store i32 %69, ptr %68, align 4, !dbg !2425, !tbaa !1065
  call void @llvm.dbg.value(metadata i32 -1, metadata !624, metadata !DIExpression()), !dbg !2383
  br label %107, !dbg !2426

71:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %72 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1) #41, !dbg !2427
  tail call void @llvm.dbg.value(metadata i32 %72, metadata !2350, metadata !DIExpression()), !dbg !2363
  br label %107, !dbg !2428

73:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %74 = load i32, ptr %3, align 16, !dbg !2429
  %75 = icmp ult i32 %74, 41, !dbg !2429
  br i1 %75, label %76, label %82, !dbg !2429

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !2429
  %78 = load ptr, ptr %77, align 16, !dbg !2429
  %79 = zext nneg i32 %74 to i64, !dbg !2429
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !2429
  %81 = add nuw nsw i32 %74, 8, !dbg !2429
  store i32 %81, ptr %3, align 16, !dbg !2429, !DIAssignID !2430
  call void @llvm.dbg.assign(metadata i32 %81, metadata !2339, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2430, metadata ptr %3, metadata !DIExpression()), !dbg !2363
  br label %86, !dbg !2429

82:                                               ; preds = %73
  %83 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !2429
  %84 = load ptr, ptr %83, align 8, !dbg !2429
  %85 = getelementptr i8, ptr %84, i64 8, !dbg !2429
  store ptr %85, ptr %83, align 8, !dbg !2429, !DIAssignID !2431
  call void @llvm.dbg.assign(metadata ptr %85, metadata !2339, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !2431, metadata ptr %83, metadata !DIExpression()), !dbg !2363
  br label %86, !dbg !2429

86:                                               ; preds = %82, %76
  %87 = phi ptr [ %80, %76 ], [ %84, %82 ], !dbg !2429
  %88 = load i32, ptr %87, align 4, !dbg !2429
  tail call void @llvm.dbg.value(metadata i32 %88, metadata !2356, metadata !DIExpression()), !dbg !2432
  %89 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, i32 noundef %88) #41, !dbg !2433
  tail call void @llvm.dbg.value(metadata i32 %89, metadata !2350, metadata !DIExpression()), !dbg !2363
  br label %107, !dbg !2434

90:                                               ; preds = %2
  %91 = load i32, ptr %3, align 16, !dbg !2435
  %92 = icmp ult i32 %91, 41, !dbg !2435
  br i1 %92, label %93, label %99, !dbg !2435

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !2435
  %95 = load ptr, ptr %94, align 16, !dbg !2435
  %96 = zext nneg i32 %91 to i64, !dbg !2435
  %97 = getelementptr i8, ptr %95, i64 %96, !dbg !2435
  %98 = add nuw nsw i32 %91, 8, !dbg !2435
  store i32 %98, ptr %3, align 16, !dbg !2435, !DIAssignID !2436
  call void @llvm.dbg.assign(metadata i32 %98, metadata !2339, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2436, metadata ptr %3, metadata !DIExpression()), !dbg !2363
  br label %103, !dbg !2435

99:                                               ; preds = %90
  %100 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !2435
  %101 = load ptr, ptr %100, align 8, !dbg !2435
  %102 = getelementptr i8, ptr %101, i64 8, !dbg !2435
  store ptr %102, ptr %100, align 8, !dbg !2435, !DIAssignID !2437
  call void @llvm.dbg.assign(metadata ptr %102, metadata !2339, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !2437, metadata ptr %100, metadata !DIExpression()), !dbg !2363
  br label %103, !dbg !2435

103:                                              ; preds = %99, %93
  %104 = phi ptr [ %97, %93 ], [ %101, %99 ], !dbg !2435
  %105 = load ptr, ptr %104, align 8, !dbg !2435
  tail call void @llvm.dbg.value(metadata ptr %105, metadata !2360, metadata !DIExpression()), !dbg !2438
  %106 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, ptr noundef %105) #41, !dbg !2439
  tail call void @llvm.dbg.value(metadata i32 %106, metadata !2350, metadata !DIExpression()), !dbg !2363
  br label %107, !dbg !2440

107:                                              ; preds = %67, %63, %55, %47, %46, %71, %86, %103, %17
  %108 = phi i32 [ %106, %103 ], [ %89, %86 ], [ %72, %71 ], [ %20, %17 ], [ %57, %55 ], [ -1, %67 ], [ %57, %63 ], [ %48, %47 ], [ %40, %46 ], !dbg !2441
  tail call void @llvm.dbg.value(metadata i32 %108, metadata !2350, metadata !DIExpression()), !dbg !2363
  call void @llvm.va_end(ptr nonnull %3), !dbg !2442
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #41, !dbg !2443
  ret i32 %108, !dbg !2444
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @fpurge(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2445 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2483, metadata !DIExpression()), !dbg !2484
  tail call void @__fpurge(ptr noundef nonnull %0) #41, !dbg !2485
  ret i32 0, !dbg !2486
}

; Function Attrs: nounwind
declare !dbg !2487 void @__fpurge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @full_write(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2491 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2495, metadata !DIExpression()), !dbg !2502
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2496, metadata !DIExpression()), !dbg !2502
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2497, metadata !DIExpression()), !dbg !2502
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2498, metadata !DIExpression()), !dbg !2502
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2499, metadata !DIExpression()), !dbg !2502
  %4 = icmp sgt i64 %2, 0, !dbg !2503
  br i1 %4, label %5, label %20, !dbg !2504

5:                                                ; preds = %3, %15
  %6 = phi i64 [ %18, %15 ], [ %2, %3 ]
  %7 = phi ptr [ %17, %15 ], [ %1, %3 ]
  %8 = phi i64 [ %16, %15 ], [ 0, %3 ]
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !2497, metadata !DIExpression()), !dbg !2502
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2499, metadata !DIExpression()), !dbg !2502
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !2498, metadata !DIExpression()), !dbg !2502
  %9 = tail call i64 @safe_write(i32 noundef %0, ptr noundef %7, i64 noundef %6) #41, !dbg !2505
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !2500, metadata !DIExpression()), !dbg !2506
  %10 = icmp slt i64 %9, 0, !dbg !2507
  br i1 %10, label %20, label %11, !dbg !2509

11:                                               ; preds = %5
  %12 = icmp eq i64 %9, 0, !dbg !2510
  br i1 %12, label %13, label %15, !dbg !2512

13:                                               ; preds = %11
  %14 = tail call ptr @__errno_location() #44, !dbg !2513
  store i32 28, ptr %14, align 4, !dbg !2515, !tbaa !1065
  br label %20, !dbg !2516

15:                                               ; preds = %11
  %16 = add nuw nsw i64 %9, %8, !dbg !2517
  tail call void @llvm.dbg.value(metadata i64 %16, metadata !2498, metadata !DIExpression()), !dbg !2502
  %17 = getelementptr inbounds i8, ptr %7, i64 %9, !dbg !2518
  tail call void @llvm.dbg.value(metadata ptr %17, metadata !2499, metadata !DIExpression()), !dbg !2502
  %18 = sub nsw i64 %6, %9, !dbg !2519
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !2497, metadata !DIExpression()), !dbg !2502
  %19 = icmp sgt i64 %18, 0, !dbg !2503
  br i1 %19, label %5, label %20, !dbg !2504

20:                                               ; preds = %15, %5, %3, %13
  %21 = phi i64 [ %8, %13 ], [ 0, %3 ], [ %16, %15 ], [ %8, %5 ]
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2498, metadata !DIExpression()), !dbg !2502
  ret i64 %21, !dbg !2520
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #20 !dbg !2521 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2523, !tbaa !991
  ret ptr %1, !dbg !2524
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #21 !dbg !2525 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2527, metadata !DIExpression()), !dbg !2530
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #42, !dbg !2531
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2528, metadata !DIExpression()), !dbg !2530
  %3 = icmp eq ptr %2, null, !dbg !2532
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2532
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2532
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2529, metadata !DIExpression()), !dbg !2530
  %6 = ptrtoint ptr %5 to i64, !dbg !2533
  %7 = ptrtoint ptr %0 to i64, !dbg !2533
  %8 = sub i64 %6, %7, !dbg !2533
  %9 = icmp sgt i64 %8, 6, !dbg !2535
  br i1 %9, label %10, label %19, !dbg !2536

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2537
  call void @llvm.dbg.value(metadata ptr %11, metadata !2538, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata ptr @.str.79, metadata !2543, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata i64 7, metadata !2544, metadata !DIExpression()), !dbg !2545
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.79, i64 7), !dbg !2547
  %13 = icmp eq i32 %12, 0, !dbg !2548
  br i1 %13, label %14, label %19, !dbg !2549

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2527, metadata !DIExpression()), !dbg !2530
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.80, i64 noundef 3) #42, !dbg !2550
  %16 = icmp eq i32 %15, 0, !dbg !2553
  %17 = select i1 %16, i64 3, i64 0, !dbg !2554
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !2554
  br label %19, !dbg !2554

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2530
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2529, metadata !DIExpression()), !dbg !2530
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !2527, metadata !DIExpression()), !dbg !2530
  store ptr %20, ptr @program_name, align 8, !dbg !2555, !tbaa !991
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2556, !tbaa !991
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2557, !tbaa !991
  ret void, !dbg !2558
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2559 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #22

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !643 {
  %3 = alloca i32, align 4, !DIAssignID !2560
  call void @llvm.dbg.assign(metadata i1 undef, metadata !653, metadata !DIExpression(), metadata !2560, metadata ptr %3, metadata !DIExpression()), !dbg !2561
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2562
  call void @llvm.dbg.assign(metadata i1 undef, metadata !658, metadata !DIExpression(), metadata !2562, metadata ptr %4, metadata !DIExpression()), !dbg !2561
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !650, metadata !DIExpression()), !dbg !2561
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !651, metadata !DIExpression()), !dbg !2561
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #41, !dbg !2563
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !652, metadata !DIExpression()), !dbg !2561
  %6 = icmp eq ptr %5, %0, !dbg !2564
  br i1 %6, label %7, label %14, !dbg !2566

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #41, !dbg !2567
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #41, !dbg !2568
  call void @llvm.dbg.value(metadata ptr %4, metadata !2569, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata ptr %4, metadata !2578, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i32 0, metadata !2583, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i64 8, metadata !2584, metadata !DIExpression()), !dbg !2585
  store i64 0, ptr %4, align 8, !dbg !2587
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #41, !dbg !2588
  %9 = icmp eq i64 %8, 2, !dbg !2590
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2591
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2561
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #41, !dbg !2592
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #41, !dbg !2592
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2561
  ret ptr %15, !dbg !2592
}

; Function Attrs: nounwind
declare !dbg !2593 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2599 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2604, metadata !DIExpression()), !dbg !2607
  %2 = tail call ptr @__errno_location() #44, !dbg !2608
  %3 = load i32, ptr %2, align 4, !dbg !2608, !tbaa !1065
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2605, metadata !DIExpression()), !dbg !2607
  %4 = icmp eq ptr %0, null, !dbg !2609
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2609
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #46, !dbg !2610
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2606, metadata !DIExpression()), !dbg !2607
  store i32 %3, ptr %2, align 4, !dbg !2611, !tbaa !1065
  ret ptr %6, !dbg !2612
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #23 !dbg !2613 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2619, metadata !DIExpression()), !dbg !2620
  %2 = icmp eq ptr %0, null, !dbg !2621
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2621
  %4 = load i32, ptr %3, align 8, !dbg !2622, !tbaa !2623
  ret i32 %4, !dbg !2625
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #24 !dbg !2626 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2630, metadata !DIExpression()), !dbg !2632
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2631, metadata !DIExpression()), !dbg !2632
  %3 = icmp eq ptr %0, null, !dbg !2633
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2633
  store i32 %1, ptr %4, align 8, !dbg !2634, !tbaa !2623
  ret void, !dbg !2635
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #25 !dbg !2636 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2640, metadata !DIExpression()), !dbg !2648
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2641, metadata !DIExpression()), !dbg !2648
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2642, metadata !DIExpression()), !dbg !2648
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2643, metadata !DIExpression()), !dbg !2648
  %4 = icmp eq ptr %0, null, !dbg !2649
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2649
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2650
  %7 = lshr i8 %1, 5, !dbg !2651
  %8 = zext nneg i8 %7 to i64, !dbg !2651
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2652
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2644, metadata !DIExpression()), !dbg !2648
  %10 = and i8 %1, 31, !dbg !2653
  %11 = zext nneg i8 %10 to i32, !dbg !2653
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !2646, metadata !DIExpression()), !dbg !2648
  %12 = load i32, ptr %9, align 4, !dbg !2654, !tbaa !1065
  %13 = lshr i32 %12, %11, !dbg !2655
  %14 = and i32 %13, 1, !dbg !2656
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !2647, metadata !DIExpression()), !dbg !2648
  %15 = xor i32 %13, %2, !dbg !2657
  %16 = and i32 %15, 1, !dbg !2657
  %17 = shl nuw i32 %16, %11, !dbg !2658
  %18 = xor i32 %17, %12, !dbg !2659
  store i32 %18, ptr %9, align 4, !dbg !2659, !tbaa !1065
  ret i32 %14, !dbg !2660
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #25 !dbg !2661 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2665, metadata !DIExpression()), !dbg !2668
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2666, metadata !DIExpression()), !dbg !2668
  %3 = icmp eq ptr %0, null, !dbg !2669
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2671
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2665, metadata !DIExpression()), !dbg !2668
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2672
  %6 = load i32, ptr %5, align 4, !dbg !2672, !tbaa !2673
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !2667, metadata !DIExpression()), !dbg !2668
  store i32 %1, ptr %5, align 4, !dbg !2674, !tbaa !2673
  ret i32 %6, !dbg !2675
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2676 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2680, metadata !DIExpression()), !dbg !2683
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2681, metadata !DIExpression()), !dbg !2683
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2682, metadata !DIExpression()), !dbg !2683
  %4 = icmp eq ptr %0, null, !dbg !2684
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2686
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2680, metadata !DIExpression()), !dbg !2683
  store i32 10, ptr %5, align 8, !dbg !2687, !tbaa !2623
  %6 = icmp ne ptr %1, null, !dbg !2688
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2690
  br i1 %8, label %10, label %9, !dbg !2690

9:                                                ; preds = %3
  tail call void @abort() #43, !dbg !2691
  unreachable, !dbg !2691

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2692
  store ptr %1, ptr %11, align 8, !dbg !2693, !tbaa !2694
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2695
  store ptr %2, ptr %12, align 8, !dbg !2696, !tbaa !2697
  ret void, !dbg !2698
}

; Function Attrs: noreturn nounwind
declare !dbg !2699 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !2700 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2704, metadata !DIExpression()), !dbg !2712
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2705, metadata !DIExpression()), !dbg !2712
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2706, metadata !DIExpression()), !dbg !2712
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2707, metadata !DIExpression()), !dbg !2712
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2708, metadata !DIExpression()), !dbg !2712
  %6 = icmp eq ptr %4, null, !dbg !2713
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2713
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2709, metadata !DIExpression()), !dbg !2712
  %8 = tail call ptr @__errno_location() #44, !dbg !2714
  %9 = load i32, ptr %8, align 4, !dbg !2714, !tbaa !1065
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !2710, metadata !DIExpression()), !dbg !2712
  %10 = load i32, ptr %7, align 8, !dbg !2715, !tbaa !2623
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2716
  %12 = load i32, ptr %11, align 4, !dbg !2716, !tbaa !2673
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2717
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2718
  %15 = load ptr, ptr %14, align 8, !dbg !2718, !tbaa !2694
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2719
  %17 = load ptr, ptr %16, align 8, !dbg !2719, !tbaa !2697
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2720
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !2711, metadata !DIExpression()), !dbg !2712
  store i32 %9, ptr %8, align 4, !dbg !2721, !tbaa !1065
  ret i64 %18, !dbg !2722
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !2723 {
  %10 = alloca i32, align 4, !DIAssignID !2791
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2792
  %12 = alloca i32, align 4, !DIAssignID !2793
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2794
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2795
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2769, metadata !DIExpression(), metadata !2795, metadata ptr %14, metadata !DIExpression()), !dbg !2796
  %15 = alloca i32, align 4, !DIAssignID !2797
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2772, metadata !DIExpression(), metadata !2797, metadata ptr %15, metadata !DIExpression()), !dbg !2798
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2729, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2730, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2731, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2732, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !2733, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2734, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2735, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2736, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2737, metadata !DIExpression()), !dbg !2799
  %16 = tail call i64 @__ctype_get_mb_cur_max() #41, !dbg !2800
  %17 = icmp eq i64 %16, 1, !dbg !2801
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !2738, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2799
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2739, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2740, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata ptr null, metadata !2741, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2742, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2743, metadata !DIExpression()), !dbg !2799
  %18 = trunc i32 %5 to i8, !dbg !2802
  %19 = lshr i8 %18, 1, !dbg !2802
  %20 = and i8 %19, 1, !dbg !2802
  tail call void @llvm.dbg.value(metadata i8 %20, metadata !2744, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2745, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2746, metadata !DIExpression()), !dbg !2799
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !2803

28:                                               ; preds = %627, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %627 ]
  %30 = phi ptr [ %7, %9 ], [ %116, %627 ]
  %31 = phi ptr [ %8, %9 ], [ %117, %627 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %627 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %627 ], !dbg !2804
  %34 = phi ptr [ null, %9 ], [ %119, %627 ], !dbg !2805
  %35 = phi i64 [ 0, %9 ], [ %120, %627 ], !dbg !2806
  %36 = phi i8 [ 0, %9 ], [ %121, %627 ], !dbg !2807
  %37 = phi i8 [ %20, %9 ], [ %122, %627 ], !dbg !2799
  %38 = phi i8 [ 0, %9 ], [ %142, %627 ], !dbg !2808
  %39 = phi i8 [ 1, %9 ], [ %143, %627 ], !dbg !2809
  %40 = phi i64 [ %1, %9 ], [ %141, %627 ]
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !2730, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i8 %39, metadata !2746, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i8 %38, metadata !2745, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !2744, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i8 %36, metadata !2743, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !2742, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata ptr %34, metadata !2741, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !2740, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2739, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !2732, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !2737, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !2736, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !2733, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.label(metadata !2747), !dbg !2810
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2748, metadata !DIExpression()), !dbg !2799
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
  ], !dbg !2811

41:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2744, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2733, metadata !DIExpression()), !dbg !2799
  br label %114, !dbg !2812

42:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !2744, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2733, metadata !DIExpression()), !dbg !2799
  %43 = and i8 %37, 1, !dbg !2813
  %44 = icmp eq i8 %43, 0, !dbg !2813
  br i1 %44, label %45, label %114, !dbg !2812

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2815
  br i1 %46, label %114, label %47, !dbg !2818

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !2815, !tbaa !1074
  br label %114, !dbg !2815

48:                                               ; preds = %28, %28
  call void @llvm.dbg.assign(metadata i1 undef, metadata !747, metadata !DIExpression(), metadata !2793, metadata ptr %12, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.assign(metadata i1 undef, metadata !748, metadata !DIExpression(), metadata !2794, metadata ptr %13, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.value(metadata ptr @.str.11.93, metadata !744, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.value(metadata i32 %29, metadata !745, metadata !DIExpression()), !dbg !2819
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.94, ptr noundef nonnull @.str.11.93, i32 noundef 5) #41, !dbg !2823
  call void @llvm.dbg.value(metadata ptr %49, metadata !746, metadata !DIExpression()), !dbg !2819
  %50 = icmp eq ptr %49, @.str.11.93, !dbg !2824
  br i1 %50, label %51, label %60, !dbg !2826

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #41, !dbg !2827
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #41, !dbg !2828
  call void @llvm.dbg.value(metadata ptr %13, metadata !2829, metadata !DIExpression()), !dbg !2835
  call void @llvm.dbg.value(metadata ptr %13, metadata !2837, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i32 0, metadata !2840, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i64 8, metadata !2841, metadata !DIExpression()), !dbg !2842
  store i64 0, ptr %13, align 8, !dbg !2844
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #41, !dbg !2845
  %53 = icmp eq i64 %52, 3, !dbg !2847
  %54 = load i32, ptr %12, align 4
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !2848
  %57 = icmp eq i32 %29, 9, !dbg !2848
  %58 = select i1 %57, ptr @.str.10.95, ptr @.str.12.96, !dbg !2848
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !2848
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #41, !dbg !2849
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #41, !dbg !2849
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !2819
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2736, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.assign(metadata i1 undef, metadata !747, metadata !DIExpression(), metadata !2791, metadata ptr %10, metadata !DIExpression()), !dbg !2850
  call void @llvm.dbg.assign(metadata i1 undef, metadata !748, metadata !DIExpression(), metadata !2792, metadata ptr %11, metadata !DIExpression()), !dbg !2850
  call void @llvm.dbg.value(metadata ptr @.str.12.96, metadata !744, metadata !DIExpression()), !dbg !2850
  call void @llvm.dbg.value(metadata i32 %29, metadata !745, metadata !DIExpression()), !dbg !2850
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.94, ptr noundef nonnull @.str.12.96, i32 noundef 5) #41, !dbg !2852
  call void @llvm.dbg.value(metadata ptr %62, metadata !746, metadata !DIExpression()), !dbg !2850
  %63 = icmp eq ptr %62, @.str.12.96, !dbg !2853
  br i1 %63, label %64, label %73, !dbg !2854

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #41, !dbg !2855
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #41, !dbg !2856
  call void @llvm.dbg.value(metadata ptr %11, metadata !2829, metadata !DIExpression()), !dbg !2857
  call void @llvm.dbg.value(metadata ptr %11, metadata !2837, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.value(metadata i32 0, metadata !2840, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.value(metadata i64 8, metadata !2841, metadata !DIExpression()), !dbg !2859
  store i64 0, ptr %11, align 8, !dbg !2861
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #41, !dbg !2862
  %66 = icmp eq i64 %65, 3, !dbg !2863
  %67 = load i32, ptr %10, align 4
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !2864
  %70 = icmp eq i32 %29, 9, !dbg !2864
  %71 = select i1 %70, ptr @.str.10.95, ptr @.str.12.96, !dbg !2864
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !2864
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #41, !dbg !2865
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #41, !dbg !2865
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !2737, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !2736, metadata !DIExpression()), !dbg !2799
  %76 = and i8 %37, 1, !dbg !2866
  %77 = icmp eq i8 %76, 0, !dbg !2866
  br i1 %77, label %78, label %93, !dbg !2867

78:                                               ; preds = %73
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !2749, metadata !DIExpression()), !dbg !2868
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2739, metadata !DIExpression()), !dbg !2799
  %79 = load i8, ptr %74, align 1, !dbg !2869, !tbaa !1074
  %80 = icmp eq i8 %79, 0, !dbg !2871
  br i1 %80, label %93, label %81, !dbg !2871

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  tail call void @llvm.dbg.value(metadata ptr %83, metadata !2749, metadata !DIExpression()), !dbg !2868
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !2739, metadata !DIExpression()), !dbg !2799
  %85 = icmp ult i64 %84, %40, !dbg !2872
  br i1 %85, label %86, label %88, !dbg !2875

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !2872
  store i8 %82, ptr %87, align 1, !dbg !2872, !tbaa !1074
  br label %88, !dbg !2872

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !2875
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !2739, metadata !DIExpression()), !dbg !2799
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !2876
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !2749, metadata !DIExpression()), !dbg !2868
  %91 = load i8, ptr %90, align 1, !dbg !2869, !tbaa !1074
  %92 = icmp eq i8 %91, 0, !dbg !2871
  br i1 %92, label %93, label %81, !dbg !2871, !llvm.loop !2877

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !2879
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !2739, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2743, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !2741, metadata !DIExpression()), !dbg !2799
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #42, !dbg !2880
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !2742, metadata !DIExpression()), !dbg !2799
  br label %114, !dbg !2881

96:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2743, metadata !DIExpression()), !dbg !2799
  br label %98, !dbg !2882

97:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 undef, metadata !2743, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2744, metadata !DIExpression()), !dbg !2799
  br label %98, !dbg !2883

98:                                               ; preds = %96, %28, %97
  %99 = phi i8 [ %36, %28 ], [ 1, %96 ], [ %36, %97 ], !dbg !2807
  %100 = phi i8 [ %37, %28 ], [ 1, %96 ], [ 1, %97 ], !dbg !2799
  tail call void @llvm.dbg.value(metadata i8 %100, metadata !2744, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i8 %99, metadata !2743, metadata !DIExpression()), !dbg !2799
  %101 = and i8 %100, 1, !dbg !2884
  %102 = icmp eq i8 %101, 0, !dbg !2884
  %103 = select i1 %102, i8 1, i8 %99, !dbg !2886
  br label %104, !dbg !2886

104:                                              ; preds = %98, %28
  %105 = phi i8 [ %36, %28 ], [ %103, %98 ], !dbg !2799
  %106 = phi i8 [ %37, %28 ], [ %100, %98 ], !dbg !2802
  tail call void @llvm.dbg.value(metadata i8 %106, metadata !2744, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i8 %105, metadata !2743, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i32 2, metadata !2733, metadata !DIExpression()), !dbg !2799
  %107 = and i8 %106, 1, !dbg !2887
  %108 = icmp eq i8 %107, 0, !dbg !2887
  br i1 %108, label %109, label %114, !dbg !2889

109:                                              ; preds = %104
  %110 = icmp eq i64 %40, 0, !dbg !2890
  br i1 %110, label %114, label %111, !dbg !2893

111:                                              ; preds = %109
  store i8 39, ptr %0, align 1, !dbg !2890, !tbaa !1074
  br label %114, !dbg !2890

112:                                              ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2744, metadata !DIExpression()), !dbg !2799
  br label %114, !dbg !2894

113:                                              ; preds = %28
  call void @abort() #43, !dbg !2895
  unreachable, !dbg !2895

114:                                              ; preds = %41, %104, %111, %109, %28, %42, %47, %45, %112, %93
  %115 = phi i32 [ 0, %112 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %109 ], [ 2, %111 ], [ 2, %104 ], [ 5, %41 ]
  %116 = phi ptr [ %30, %112 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %109 ], [ %30, %111 ], [ %30, %104 ], [ %30, %41 ]
  %117 = phi ptr [ %31, %112 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %109 ], [ %31, %111 ], [ %31, %104 ], [ %31, %41 ]
  %118 = phi i64 [ 0, %112 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %109 ], [ 1, %111 ], [ 0, %104 ], [ 0, %41 ], !dbg !2879
  %119 = phi ptr [ %34, %112 ], [ %75, %93 ], [ @.str.10.95, %45 ], [ @.str.10.95, %47 ], [ @.str.10.95, %42 ], [ %34, %28 ], [ @.str.12.96, %109 ], [ @.str.12.96, %111 ], [ @.str.12.96, %104 ], [ @.str.10.95, %41 ], !dbg !2799
  %120 = phi i64 [ %35, %112 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %109 ], [ 1, %111 ], [ 1, %104 ], [ 1, %41 ], !dbg !2799
  %121 = phi i8 [ %36, %112 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %105, %109 ], [ %105, %111 ], [ %105, %104 ], [ 1, %41 ], !dbg !2799
  %122 = phi i8 [ 0, %112 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %106, %109 ], [ %106, %111 ], [ %106, %104 ], [ 1, %41 ], !dbg !2799
  tail call void @llvm.dbg.value(metadata i8 %122, metadata !2744, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i8 %121, metadata !2743, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i64 %120, metadata !2742, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !2741, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !2739, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata ptr %117, metadata !2737, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata ptr %116, metadata !2736, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i32 %115, metadata !2733, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2754, metadata !DIExpression()), !dbg !2896
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
  br label %138, !dbg !2897

138:                                              ; preds = %602, %114
  %139 = phi i64 [ %32, %114 ], [ %603, %602 ]
  %140 = phi i64 [ %118, %114 ], [ %604, %602 ], !dbg !2879
  %141 = phi i64 [ %33, %114 ], [ %605, %602 ], !dbg !2804
  %142 = phi i8 [ %38, %114 ], [ %606, %602 ], !dbg !2808
  %143 = phi i8 [ %39, %114 ], [ %607, %602 ], !dbg !2809
  %144 = phi i8 [ 0, %114 ], [ %608, %602 ], !dbg !2898
  %145 = phi i64 [ 0, %114 ], [ %611, %602 ], !dbg !2899
  %146 = phi i64 [ %40, %114 ], [ %610, %602 ]
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !2730, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !2754, metadata !DIExpression()), !dbg !2896
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !2748, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !2746, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !2745, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !2740, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2739, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !2732, metadata !DIExpression()), !dbg !2799
  %147 = icmp eq i64 %139, -1, !dbg !2900
  br i1 %147, label %148, label %152, !dbg !2901

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2902
  %150 = load i8, ptr %149, align 1, !dbg !2902, !tbaa !1074
  %151 = icmp eq i8 %150, 0, !dbg !2903
  br i1 %151, label %612, label %154, !dbg !2904

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !2905
  br i1 %153, label %612, label %154, !dbg !2904

154:                                              ; preds = %148, %152
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2756, metadata !DIExpression()), !dbg !2906
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2759, metadata !DIExpression()), !dbg !2906
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2760, metadata !DIExpression()), !dbg !2906
  br i1 %128, label %155, label %170, !dbg !2907

155:                                              ; preds = %154
  %156 = add i64 %145, %120, !dbg !2909
  %157 = select i1 %147, i1 %129, i1 false, !dbg !2910
  br i1 %157, label %158, label %160, !dbg !2910

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #42, !dbg !2911
  tail call void @llvm.dbg.value(metadata i64 %159, metadata !2732, metadata !DIExpression()), !dbg !2799
  br label %160, !dbg !2912

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !2912
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !2732, metadata !DIExpression()), !dbg !2799
  %162 = icmp ugt i64 %156, %161, !dbg !2913
  br i1 %162, label %170, label %163, !dbg !2914

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2915
  call void @llvm.dbg.value(metadata ptr %164, metadata !2916, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata ptr %119, metadata !2919, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata i64 %120, metadata !2920, metadata !DIExpression()), !dbg !2921
  %165 = call i32 @bcmp(ptr %164, ptr %119, i64 %120), !dbg !2923
  %166 = icmp ne i32 %165, 0, !dbg !2924
  %167 = select i1 %166, i1 true, i1 %131, !dbg !2925
  %168 = xor i1 %166, true, !dbg !2925
  %169 = zext i1 %168 to i8, !dbg !2925
  br i1 %167, label %170, label %666, !dbg !2925

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !2906
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !2906
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !2756, metadata !DIExpression()), !dbg !2906
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !2732, metadata !DIExpression()), !dbg !2799
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2926
  %175 = load i8, ptr %174, align 1, !dbg !2926, !tbaa !1074
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !2761, metadata !DIExpression()), !dbg !2906
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
  ], !dbg !2927

176:                                              ; preds = %170
  br i1 %124, label %177, label %225, !dbg !2928

177:                                              ; preds = %176
  br i1 %131, label %178, label %659, !dbg !2929

178:                                              ; preds = %177
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2759, metadata !DIExpression()), !dbg !2906
  %179 = and i8 %144, 1, !dbg !2933
  %180 = icmp eq i8 %179, 0, !dbg !2933
  %181 = select i1 %132, i1 %180, i1 false, !dbg !2933
  br i1 %181, label %182, label %198, !dbg !2933

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !2935
  br i1 %183, label %184, label %186, !dbg !2939

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2935
  store i8 39, ptr %185, align 1, !dbg !2935, !tbaa !1074
  br label %186, !dbg !2935

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !2939
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !2739, metadata !DIExpression()), !dbg !2799
  %188 = icmp ult i64 %187, %146, !dbg !2940
  br i1 %188, label %189, label %191, !dbg !2943

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !2940
  store i8 36, ptr %190, align 1, !dbg !2940, !tbaa !1074
  br label %191, !dbg !2940

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !2943
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !2739, metadata !DIExpression()), !dbg !2799
  %193 = icmp ult i64 %192, %146, !dbg !2944
  br i1 %193, label %194, label %196, !dbg !2947

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !2944
  store i8 39, ptr %195, align 1, !dbg !2944, !tbaa !1074
  br label %196, !dbg !2944

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !2947
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !2739, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2748, metadata !DIExpression()), !dbg !2799
  br label %198, !dbg !2948

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !2799
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !2799
  tail call void @llvm.dbg.value(metadata i8 %200, metadata !2748, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i64 %199, metadata !2739, metadata !DIExpression()), !dbg !2799
  %201 = icmp ult i64 %199, %146, !dbg !2949
  br i1 %201, label %202, label %204, !dbg !2952

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !2949
  store i8 92, ptr %203, align 1, !dbg !2949, !tbaa !1074
  br label %204, !dbg !2949

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !2952
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !2739, metadata !DIExpression()), !dbg !2799
  br i1 %125, label %206, label %476, !dbg !2953

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !2955
  %208 = icmp ult i64 %207, %171, !dbg !2956
  br i1 %208, label %209, label %465, !dbg !2957

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !2958
  %211 = load i8, ptr %210, align 1, !dbg !2958, !tbaa !1074
  %212 = add i8 %211, -48, !dbg !2959
  %213 = icmp ult i8 %212, 10, !dbg !2959
  br i1 %213, label %214, label %465, !dbg !2959

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !2960
  br i1 %215, label %216, label %218, !dbg !2964

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !2960
  store i8 48, ptr %217, align 1, !dbg !2960, !tbaa !1074
  br label %218, !dbg !2960

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !2964
  tail call void @llvm.dbg.value(metadata i64 %219, metadata !2739, metadata !DIExpression()), !dbg !2799
  %220 = icmp ult i64 %219, %146, !dbg !2965
  br i1 %220, label %221, label %223, !dbg !2968

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !2965
  store i8 48, ptr %222, align 1, !dbg !2965, !tbaa !1074
  br label %223, !dbg !2965

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !2968
  tail call void @llvm.dbg.value(metadata i64 %224, metadata !2739, metadata !DIExpression()), !dbg !2799
  br label %465, !dbg !2969

225:                                              ; preds = %176
  br i1 %25, label %476, label %602, !dbg !2970

226:                                              ; preds = %170
  switch i32 %115, label %465 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !2971

227:                                              ; preds = %226
  br i1 %131, label %465, label %655, !dbg !2972

228:                                              ; preds = %226
  br i1 %23, label %465, label %229, !dbg !2974

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !2976
  %231 = icmp ult i64 %230, %171, !dbg !2977
  br i1 %231, label %232, label %465, !dbg !2978

232:                                              ; preds = %229
  %233 = getelementptr i8, ptr %174, i64 1, !dbg !2979
  %234 = load i8, ptr %233, align 1, !dbg !2979, !tbaa !1074
  %235 = icmp eq i8 %234, 63, !dbg !2980
  br i1 %235, label %236, label %465, !dbg !2981

236:                                              ; preds = %232
  %237 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !2982
  %238 = load i8, ptr %237, align 1, !dbg !2982, !tbaa !1074
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
  ], !dbg !2983

239:                                              ; preds = %236, %236, %236, %236, %236, %236, %236, %236, %236
  br i1 %131, label %240, label %666, !dbg !2984

240:                                              ; preds = %239
  tail call void @llvm.dbg.value(metadata i8 %238, metadata !2761, metadata !DIExpression()), !dbg !2906
  tail call void @llvm.dbg.value(metadata i64 %230, metadata !2754, metadata !DIExpression()), !dbg !2896
  %241 = icmp ult i64 %140, %146, !dbg !2986
  br i1 %241, label %242, label %244, !dbg !2989

242:                                              ; preds = %240
  %243 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2986
  store i8 63, ptr %243, align 1, !dbg !2986, !tbaa !1074
  br label %244, !dbg !2986

244:                                              ; preds = %242, %240
  %245 = add i64 %140, 1, !dbg !2989
  tail call void @llvm.dbg.value(metadata i64 %245, metadata !2739, metadata !DIExpression()), !dbg !2799
  %246 = icmp ult i64 %245, %146, !dbg !2990
  br i1 %246, label %247, label %249, !dbg !2993

247:                                              ; preds = %244
  %248 = getelementptr inbounds i8, ptr %0, i64 %245, !dbg !2990
  store i8 34, ptr %248, align 1, !dbg !2990, !tbaa !1074
  br label %249, !dbg !2990

249:                                              ; preds = %247, %244
  %250 = add i64 %140, 2, !dbg !2993
  tail call void @llvm.dbg.value(metadata i64 %250, metadata !2739, metadata !DIExpression()), !dbg !2799
  %251 = icmp ult i64 %250, %146, !dbg !2994
  br i1 %251, label %252, label %254, !dbg !2997

252:                                              ; preds = %249
  %253 = getelementptr inbounds i8, ptr %0, i64 %250, !dbg !2994
  store i8 34, ptr %253, align 1, !dbg !2994, !tbaa !1074
  br label %254, !dbg !2994

254:                                              ; preds = %252, %249
  %255 = add i64 %140, 3, !dbg !2997
  tail call void @llvm.dbg.value(metadata i64 %255, metadata !2739, metadata !DIExpression()), !dbg !2799
  %256 = icmp ult i64 %255, %146, !dbg !2998
  br i1 %256, label %257, label %259, !dbg !3001

257:                                              ; preds = %254
  %258 = getelementptr inbounds i8, ptr %0, i64 %255, !dbg !2998
  store i8 63, ptr %258, align 1, !dbg !2998, !tbaa !1074
  br label %259, !dbg !2998

259:                                              ; preds = %257, %254
  %260 = add i64 %140, 4, !dbg !3001
  tail call void @llvm.dbg.value(metadata i64 %260, metadata !2739, metadata !DIExpression()), !dbg !2799
  br label %465, !dbg !3002

261:                                              ; preds = %170
  br label %272, !dbg !3003

262:                                              ; preds = %170
  br label %272, !dbg !3004

263:                                              ; preds = %170
  br label %270, !dbg !3005

264:                                              ; preds = %170
  br label %270, !dbg !3006

265:                                              ; preds = %170
  br label %272, !dbg !3007

266:                                              ; preds = %170
  br i1 %132, label %267, label %268, !dbg !3008

267:                                              ; preds = %266
  br i1 %131, label %558, label %655, !dbg !3009

268:                                              ; preds = %266
  br i1 %124, label %269, label %476, !dbg !3012

269:                                              ; preds = %268
  br i1 %135, label %558, label %520, !dbg !3014

270:                                              ; preds = %170, %264, %263
  %271 = phi i8 [ 116, %264 ], [ 114, %263 ], [ 110, %170 ], !dbg !3015
  call void @llvm.dbg.label(metadata !2762), !dbg !3016
  br i1 %133, label %272, label %655, !dbg !3017

272:                                              ; preds = %170, %270, %265, %262, %261
  %273 = phi i8 [ %271, %270 ], [ 118, %265 ], [ 102, %262 ], [ 98, %261 ], [ 97, %170 ], !dbg !3015
  call void @llvm.dbg.label(metadata !2765), !dbg !3019
  br i1 %124, label %520, label %476, !dbg !3020

274:                                              ; preds = %170, %170
  switch i64 %171, label %465 [
    i64 -1, label %275
    i64 1, label %278
  ], !dbg !3021

275:                                              ; preds = %274
  %276 = load i8, ptr %21, align 1, !dbg !3022, !tbaa !1074
  %277 = icmp eq i8 %276, 0, !dbg !3024
  br i1 %277, label %278, label %465, !dbg !3025

278:                                              ; preds = %274, %275, %170, %170
  %279 = icmp eq i64 %145, 0, !dbg !3026
  br i1 %279, label %280, label %465, !dbg !3028

280:                                              ; preds = %278, %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2760, metadata !DIExpression()), !dbg !2906
  br label %281, !dbg !3029

281:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %280
  %282 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %280 ], !dbg !2906
  tail call void @llvm.dbg.value(metadata i8 %282, metadata !2760, metadata !DIExpression()), !dbg !2906
  br i1 %133, label %465, label %655, !dbg !3030

283:                                              ; preds = %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2745, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2760, metadata !DIExpression()), !dbg !2906
  br i1 %132, label %284, label %465, !dbg !3032

284:                                              ; preds = %283
  br i1 %131, label %285, label %655, !dbg !3033

285:                                              ; preds = %284
  %286 = icmp eq i64 %146, 0, !dbg !3036
  %287 = icmp ne i64 %141, 0
  %288 = select i1 %286, i1 true, i1 %287, !dbg !3038
  %289 = select i1 %288, i64 %141, i64 %146, !dbg !3038
  %290 = select i1 %288, i64 %146, i64 0, !dbg !3038
  tail call void @llvm.dbg.value(metadata i64 %290, metadata !2730, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i64 %289, metadata !2740, metadata !DIExpression()), !dbg !2799
  %291 = icmp ult i64 %140, %290, !dbg !3039
  br i1 %291, label %292, label %294, !dbg !3042

292:                                              ; preds = %285
  %293 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3039
  store i8 39, ptr %293, align 1, !dbg !3039, !tbaa !1074
  br label %294, !dbg !3039

294:                                              ; preds = %292, %285
  %295 = add i64 %140, 1, !dbg !3042
  tail call void @llvm.dbg.value(metadata i64 %295, metadata !2739, metadata !DIExpression()), !dbg !2799
  %296 = icmp ult i64 %295, %290, !dbg !3043
  br i1 %296, label %297, label %299, !dbg !3046

297:                                              ; preds = %294
  %298 = getelementptr inbounds i8, ptr %0, i64 %295, !dbg !3043
  store i8 92, ptr %298, align 1, !dbg !3043, !tbaa !1074
  br label %299, !dbg !3043

299:                                              ; preds = %297, %294
  %300 = add i64 %140, 2, !dbg !3046
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2739, metadata !DIExpression()), !dbg !2799
  %301 = icmp ult i64 %300, %290, !dbg !3047
  br i1 %301, label %302, label %304, !dbg !3050

302:                                              ; preds = %299
  %303 = getelementptr inbounds i8, ptr %0, i64 %300, !dbg !3047
  store i8 39, ptr %303, align 1, !dbg !3047, !tbaa !1074
  br label %304, !dbg !3047

304:                                              ; preds = %302, %299
  %305 = add i64 %140, 3, !dbg !3050
  tail call void @llvm.dbg.value(metadata i64 %305, metadata !2739, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2748, metadata !DIExpression()), !dbg !2799
  br label %465, !dbg !3051

306:                                              ; preds = %170
  br i1 %17, label %307, label %315, !dbg !3052

307:                                              ; preds = %306
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2766, metadata !DIExpression()), !dbg !3053
  %308 = tail call ptr @__ctype_b_loc() #44, !dbg !3054
  %309 = load ptr, ptr %308, align 8, !dbg !3054, !tbaa !991
  %310 = zext i8 %175 to i64
  %311 = getelementptr inbounds i16, ptr %309, i64 %310, !dbg !3054
  %312 = load i16, ptr %311, align 2, !dbg !3054, !tbaa !1106
  %313 = and i16 %312, 16384, !dbg !3056
  %314 = icmp ne i16 %313, 0, !dbg !3056
  tail call void @llvm.dbg.value(metadata i16 %312, metadata !2768, metadata !DIExpression(DW_OP_constu, 14, DW_OP_shr, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3053
  br label %355, !dbg !3057

315:                                              ; preds = %306
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #41, !dbg !3058
  call void @llvm.dbg.value(metadata ptr %14, metadata !2829, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata ptr %14, metadata !2837, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.value(metadata i32 0, metadata !2840, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.value(metadata i64 8, metadata !2841, metadata !DIExpression()), !dbg !3061
  store i64 0, ptr %14, align 8, !dbg !3063
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2766, metadata !DIExpression()), !dbg !3053
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2768, metadata !DIExpression()), !dbg !3053
  %316 = icmp eq i64 %171, -1, !dbg !3064
  br i1 %316, label %317, label %319, !dbg !3066

317:                                              ; preds = %315
  %318 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #42, !dbg !3067
  tail call void @llvm.dbg.value(metadata i64 %318, metadata !2732, metadata !DIExpression()), !dbg !2799
  br label %319, !dbg !3068

319:                                              ; preds = %315, %317
  %320 = phi i64 [ %318, %317 ], [ %171, %315 ], !dbg !2906
  tail call void @llvm.dbg.value(metadata i64 %320, metadata !2732, metadata !DIExpression()), !dbg !2799
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #41, !dbg !3069
  %321 = sub i64 %320, %145, !dbg !3070
  %322 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %321, ptr noundef nonnull %14) #41, !dbg !3071
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !2776, metadata !DIExpression()), !dbg !2798
  switch i64 %322, label %336 [
    i64 0, label %351
    i64 -1, label %325
    i64 -2, label %323
  ], !dbg !3072

323:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2766, metadata !DIExpression()), !dbg !3053
  %324 = icmp ult i64 %145, %320, !dbg !3073
  br i1 %324, label %326, label %351, !dbg !3075

325:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2768, metadata !DIExpression()), !dbg !3053
  br label %351, !dbg !3076

326:                                              ; preds = %323, %332
  %327 = phi i64 [ %334, %332 ], [ %145, %323 ]
  %328 = phi i64 [ %333, %332 ], [ 0, %323 ]
  tail call void @llvm.dbg.value(metadata i64 %328, metadata !2766, metadata !DIExpression()), !dbg !3053
  %329 = getelementptr inbounds i8, ptr %2, i64 %327, !dbg !3078
  %330 = load i8, ptr %329, align 1, !dbg !3078, !tbaa !1074
  %331 = icmp eq i8 %330, 0, !dbg !3075
  br i1 %331, label %351, label %332, !dbg !3079

332:                                              ; preds = %326
  %333 = add i64 %328, 1, !dbg !3080
  tail call void @llvm.dbg.value(metadata i64 %333, metadata !2766, metadata !DIExpression()), !dbg !3053
  %334 = add i64 %333, %145, !dbg !3081
  %335 = icmp eq i64 %333, %321, !dbg !3073
  br i1 %335, label %351, label %326, !dbg !3075, !llvm.loop !3082

336:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2777, metadata !DIExpression()), !dbg !3083
  %337 = icmp ugt i64 %322, 1
  %338 = and i1 %134, %337, !dbg !3084
  %339 = and i1 %338, %132, !dbg !3084
  br i1 %339, label %340, label %347, !dbg !3084

340:                                              ; preds = %336, %344
  %341 = phi i64 [ %345, %344 ], [ 1, %336 ]
  tail call void @llvm.dbg.value(metadata i64 %341, metadata !2777, metadata !DIExpression()), !dbg !3083
  %342 = getelementptr i8, ptr %174, i64 %341, !dbg !3085
  %343 = load i8, ptr %342, align 1, !dbg !3085, !tbaa !1074
  switch i8 %343, label %344 [
    i8 91, label %354
    i8 92, label %354
    i8 94, label %354
    i8 96, label %354
    i8 124, label %354
  ], !dbg !3087

344:                                              ; preds = %340
  %345 = add nuw i64 %341, 1, !dbg !3088
  tail call void @llvm.dbg.value(metadata i64 %345, metadata !2777, metadata !DIExpression()), !dbg !3083
  %346 = icmp eq i64 %345, %322, !dbg !3089
  br i1 %346, label %347, label %340, !dbg !3090, !llvm.loop !3091

347:                                              ; preds = %344, %336
  %348 = load i32, ptr %15, align 4, !dbg !3093, !tbaa !1065
  call void @llvm.dbg.value(metadata i32 %348, metadata !3095, metadata !DIExpression()), !dbg !3103
  %349 = call i32 @iswprint(i32 noundef %348) #41, !dbg !3105
  %350 = icmp ne i32 %349, 0, !dbg !3106
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2768, metadata !DIExpression()), !dbg !3053
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !2766, metadata !DIExpression()), !dbg !3053
  br label %351, !dbg !3107

351:                                              ; preds = %326, %332, %323, %325, %347, %319
  %352 = phi i64 [ %322, %319 ], [ %322, %347 ], [ 0, %325 ], [ 0, %323 ], [ %328, %326 ], [ %321, %332 ]
  %353 = phi i1 [ true, %319 ], [ %350, %347 ], [ false, %325 ], [ false, %323 ], [ false, %332 ], [ false, %326 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2768, metadata !DIExpression()), !dbg !3053
  tail call void @llvm.dbg.value(metadata i64 %352, metadata !2766, metadata !DIExpression()), !dbg !3053
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #41, !dbg !3108
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #41, !dbg !3109
  br label %355

354:                                              ; preds = %340, %340, %340, %340, %340
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2768, metadata !DIExpression()), !dbg !3053
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2766, metadata !DIExpression()), !dbg !3053
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #41, !dbg !3108
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #41, !dbg !3109
  br label %655

355:                                              ; preds = %351, %307
  %356 = phi i64 [ %171, %307 ], [ %320, %351 ], !dbg !2906
  %357 = phi i64 [ 1, %307 ], [ %352, %351 ], !dbg !3110
  %358 = phi i1 [ %314, %307 ], [ %353, %351 ], !dbg !3110
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2768, metadata !DIExpression()), !dbg !3053
  tail call void @llvm.dbg.value(metadata i64 %357, metadata !2766, metadata !DIExpression()), !dbg !3053
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !2732, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i1 %358, metadata !2760, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2906
  %359 = icmp ult i64 %357, 2, !dbg !3111
  %360 = select i1 %136, i1 true, i1 %358
  %361 = select i1 %359, i1 %360, i1 false, !dbg !3112
  br i1 %361, label %461, label %362, !dbg !3112

362:                                              ; preds = %355
  %363 = add i64 %357, %145, !dbg !3113
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !2785, metadata !DIExpression()), !dbg !3114
  br label %364, !dbg !3115

364:                                              ; preds = %457, %362
  %365 = phi i64 [ %140, %362 ], [ %458, %457 ], !dbg !2799
  %366 = phi i8 [ %144, %362 ], [ %453, %457 ], !dbg !2898
  %367 = phi i64 [ %145, %362 ], [ %432, %457 ], !dbg !2896
  %368 = phi i8 [ %173, %362 ], [ %429, %457 ], !dbg !2906
  %369 = phi i8 [ 0, %362 ], [ %430, %457 ], !dbg !3116
  %370 = phi i8 [ %175, %362 ], [ %460, %457 ], !dbg !2906
  tail call void @llvm.dbg.value(metadata i8 %370, metadata !2761, metadata !DIExpression()), !dbg !2906
  tail call void @llvm.dbg.value(metadata i8 %369, metadata !2759, metadata !DIExpression()), !dbg !2906
  tail call void @llvm.dbg.value(metadata i8 %368, metadata !2756, metadata !DIExpression()), !dbg !2906
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !2754, metadata !DIExpression()), !dbg !2896
  tail call void @llvm.dbg.value(metadata i8 %366, metadata !2748, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i64 %365, metadata !2739, metadata !DIExpression()), !dbg !2799
  br i1 %360, label %417, label %371, !dbg !3117

371:                                              ; preds = %364
  br i1 %131, label %372, label %659, !dbg !3122

372:                                              ; preds = %371
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2759, metadata !DIExpression()), !dbg !2906
  %373 = and i8 %366, 1, !dbg !3125
  %374 = icmp eq i8 %373, 0, !dbg !3125
  %375 = select i1 %132, i1 %374, i1 false, !dbg !3125
  br i1 %375, label %376, label %392, !dbg !3125

376:                                              ; preds = %372
  %377 = icmp ult i64 %365, %146, !dbg !3127
  br i1 %377, label %378, label %380, !dbg !3131

378:                                              ; preds = %376
  %379 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !3127
  store i8 39, ptr %379, align 1, !dbg !3127, !tbaa !1074
  br label %380, !dbg !3127

380:                                              ; preds = %378, %376
  %381 = add i64 %365, 1, !dbg !3131
  tail call void @llvm.dbg.value(metadata i64 %381, metadata !2739, metadata !DIExpression()), !dbg !2799
  %382 = icmp ult i64 %381, %146, !dbg !3132
  br i1 %382, label %383, label %385, !dbg !3135

383:                                              ; preds = %380
  %384 = getelementptr inbounds i8, ptr %0, i64 %381, !dbg !3132
  store i8 36, ptr %384, align 1, !dbg !3132, !tbaa !1074
  br label %385, !dbg !3132

385:                                              ; preds = %383, %380
  %386 = add i64 %365, 2, !dbg !3135
  tail call void @llvm.dbg.value(metadata i64 %386, metadata !2739, metadata !DIExpression()), !dbg !2799
  %387 = icmp ult i64 %386, %146, !dbg !3136
  br i1 %387, label %388, label %390, !dbg !3139

388:                                              ; preds = %385
  %389 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !3136
  store i8 39, ptr %389, align 1, !dbg !3136, !tbaa !1074
  br label %390, !dbg !3136

390:                                              ; preds = %388, %385
  %391 = add i64 %365, 3, !dbg !3139
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !2739, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2748, metadata !DIExpression()), !dbg !2799
  br label %392, !dbg !3140

392:                                              ; preds = %372, %390
  %393 = phi i64 [ %391, %390 ], [ %365, %372 ], !dbg !2799
  %394 = phi i8 [ 1, %390 ], [ %366, %372 ], !dbg !2799
  tail call void @llvm.dbg.value(metadata i8 %394, metadata !2748, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i64 %393, metadata !2739, metadata !DIExpression()), !dbg !2799
  %395 = icmp ult i64 %393, %146, !dbg !3141
  br i1 %395, label %396, label %398, !dbg !3144

396:                                              ; preds = %392
  %397 = getelementptr inbounds i8, ptr %0, i64 %393, !dbg !3141
  store i8 92, ptr %397, align 1, !dbg !3141, !tbaa !1074
  br label %398, !dbg !3141

398:                                              ; preds = %396, %392
  %399 = add i64 %393, 1, !dbg !3144
  tail call void @llvm.dbg.value(metadata i64 %399, metadata !2739, metadata !DIExpression()), !dbg !2799
  %400 = icmp ult i64 %399, %146, !dbg !3145
  br i1 %400, label %401, label %405, !dbg !3148

401:                                              ; preds = %398
  %402 = lshr i8 %370, 6
  %403 = or disjoint i8 %402, 48, !dbg !3145
  %404 = getelementptr inbounds i8, ptr %0, i64 %399, !dbg !3145
  store i8 %403, ptr %404, align 1, !dbg !3145, !tbaa !1074
  br label %405, !dbg !3145

405:                                              ; preds = %401, %398
  %406 = add i64 %393, 2, !dbg !3148
  tail call void @llvm.dbg.value(metadata i64 %406, metadata !2739, metadata !DIExpression()), !dbg !2799
  %407 = icmp ult i64 %406, %146, !dbg !3149
  br i1 %407, label %408, label %413, !dbg !3152

408:                                              ; preds = %405
  %409 = lshr i8 %370, 3
  %410 = and i8 %409, 7, !dbg !3149
  %411 = or disjoint i8 %410, 48, !dbg !3149
  %412 = getelementptr inbounds i8, ptr %0, i64 %406, !dbg !3149
  store i8 %411, ptr %412, align 1, !dbg !3149, !tbaa !1074
  br label %413, !dbg !3149

413:                                              ; preds = %408, %405
  %414 = add i64 %393, 3, !dbg !3152
  tail call void @llvm.dbg.value(metadata i64 %414, metadata !2739, metadata !DIExpression()), !dbg !2799
  %415 = and i8 %370, 7, !dbg !3153
  %416 = or disjoint i8 %415, 48, !dbg !3154
  tail call void @llvm.dbg.value(metadata i8 %416, metadata !2761, metadata !DIExpression()), !dbg !2906
  br label %426, !dbg !3155

417:                                              ; preds = %364
  %418 = and i8 %368, 1, !dbg !3156
  %419 = icmp eq i8 %418, 0, !dbg !3156
  br i1 %419, label %426, label %420, !dbg !3158

420:                                              ; preds = %417
  %421 = icmp ult i64 %365, %146, !dbg !3159
  br i1 %421, label %422, label %424, !dbg !3163

422:                                              ; preds = %420
  %423 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !3159
  store i8 92, ptr %423, align 1, !dbg !3159, !tbaa !1074
  br label %424, !dbg !3159

424:                                              ; preds = %422, %420
  %425 = add i64 %365, 1, !dbg !3163
  tail call void @llvm.dbg.value(metadata i64 %425, metadata !2739, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2756, metadata !DIExpression()), !dbg !2906
  br label %426, !dbg !3164

426:                                              ; preds = %417, %424, %413
  %427 = phi i64 [ %425, %424 ], [ %365, %417 ], [ %414, %413 ], !dbg !2799
  %428 = phi i8 [ %366, %424 ], [ %366, %417 ], [ %394, %413 ], !dbg !2898
  %429 = phi i8 [ 0, %424 ], [ %368, %417 ], [ %368, %413 ], !dbg !2906
  %430 = phi i8 [ %369, %424 ], [ %369, %417 ], [ 1, %413 ], !dbg !2906
  %431 = phi i8 [ %370, %424 ], [ %370, %417 ], [ %416, %413 ], !dbg !2906
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !2761, metadata !DIExpression()), !dbg !2906
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !2759, metadata !DIExpression()), !dbg !2906
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !2756, metadata !DIExpression()), !dbg !2906
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !2748, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !2739, metadata !DIExpression()), !dbg !2799
  %432 = add i64 %367, 1, !dbg !3165
  %433 = icmp ugt i64 %363, %432, !dbg !3167
  br i1 %433, label %434, label %463, !dbg !3168

434:                                              ; preds = %426
  %435 = and i8 %428, 1, !dbg !3169
  %436 = icmp ne i8 %435, 0, !dbg !3169
  %437 = and i8 %430, 1, !dbg !3169
  %438 = icmp eq i8 %437, 0, !dbg !3169
  %439 = select i1 %436, i1 %438, i1 false, !dbg !3169
  br i1 %439, label %440, label %451, !dbg !3169

440:                                              ; preds = %434
  %441 = icmp ult i64 %427, %146, !dbg !3172
  br i1 %441, label %442, label %444, !dbg !3176

442:                                              ; preds = %440
  %443 = getelementptr inbounds i8, ptr %0, i64 %427, !dbg !3172
  store i8 39, ptr %443, align 1, !dbg !3172, !tbaa !1074
  br label %444, !dbg !3172

444:                                              ; preds = %442, %440
  %445 = add i64 %427, 1, !dbg !3176
  tail call void @llvm.dbg.value(metadata i64 %445, metadata !2739, metadata !DIExpression()), !dbg !2799
  %446 = icmp ult i64 %445, %146, !dbg !3177
  br i1 %446, label %447, label %449, !dbg !3180

447:                                              ; preds = %444
  %448 = getelementptr inbounds i8, ptr %0, i64 %445, !dbg !3177
  store i8 39, ptr %448, align 1, !dbg !3177, !tbaa !1074
  br label %449, !dbg !3177

449:                                              ; preds = %447, %444
  %450 = add i64 %427, 2, !dbg !3180
  tail call void @llvm.dbg.value(metadata i64 %450, metadata !2739, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2748, metadata !DIExpression()), !dbg !2799
  br label %451, !dbg !3181

451:                                              ; preds = %434, %449
  %452 = phi i64 [ %450, %449 ], [ %427, %434 ], !dbg !3182
  %453 = phi i8 [ 0, %449 ], [ %428, %434 ], !dbg !2799
  tail call void @llvm.dbg.value(metadata i8 %453, metadata !2748, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i64 %452, metadata !2739, metadata !DIExpression()), !dbg !2799
  %454 = icmp ult i64 %452, %146, !dbg !3183
  br i1 %454, label %455, label %457, !dbg !3186

455:                                              ; preds = %451
  %456 = getelementptr inbounds i8, ptr %0, i64 %452, !dbg !3183
  store i8 %431, ptr %456, align 1, !dbg !3183, !tbaa !1074
  br label %457, !dbg !3183

457:                                              ; preds = %455, %451
  %458 = add i64 %452, 1, !dbg !3186
  tail call void @llvm.dbg.value(metadata i64 %458, metadata !2739, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i64 %432, metadata !2754, metadata !DIExpression()), !dbg !2896
  %459 = getelementptr inbounds i8, ptr %2, i64 %432, !dbg !3187
  %460 = load i8, ptr %459, align 1, !dbg !3187, !tbaa !1074
  tail call void @llvm.dbg.value(metadata i8 %460, metadata !2761, metadata !DIExpression()), !dbg !2906
  br label %364, !dbg !3188, !llvm.loop !3189

461:                                              ; preds = %355
  %462 = zext i1 %358 to i8, !dbg !2906
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !2761, metadata !DIExpression()), !dbg !2906
  tail call void @llvm.dbg.value(metadata i8 %462, metadata !2760, metadata !DIExpression()), !dbg !2906
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2759, metadata !DIExpression()), !dbg !2906
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !2756, metadata !DIExpression()), !dbg !2906
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !2754, metadata !DIExpression()), !dbg !2896
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !2748, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2739, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !2732, metadata !DIExpression()), !dbg !2799
  br label %465

463:                                              ; preds = %426
  %464 = zext i1 %358 to i8, !dbg !2906
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !2761, metadata !DIExpression()), !dbg !2906
  tail call void @llvm.dbg.value(metadata i8 %464, metadata !2760, metadata !DIExpression()), !dbg !2906
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !2759, metadata !DIExpression()), !dbg !2906
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !2756, metadata !DIExpression()), !dbg !2906
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !2754, metadata !DIExpression()), !dbg !2896
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !2748, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !2739, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !2732, metadata !DIExpression()), !dbg !2799
  br label %558

465:                                              ; preds = %461, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %274, %206, %209, %223, %283, %304, %281, %278, %275, %226, %227, %259, %236, %232, %229, %228
  %466 = phi i64 [ %171, %304 ], [ %171, %283 ], [ %171, %281 ], [ %171, %278 ], [ -1, %275 ], [ %171, %226 ], [ %171, %236 ], [ %171, %259 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %274 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %356, %461 ], !dbg !3192
  %467 = phi i64 [ %305, %304 ], [ %140, %283 ], [ %140, %281 ], [ %140, %278 ], [ %140, %275 ], [ %140, %226 ], [ %140, %236 ], [ %260, %259 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %274 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %461 ], !dbg !2799
  %468 = phi i64 [ %289, %304 ], [ %141, %283 ], [ %141, %281 ], [ %141, %278 ], [ %141, %275 ], [ %141, %226 ], [ %141, %236 ], [ %141, %259 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %274 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %461 ], !dbg !2804
  %469 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %142, %281 ], [ %142, %278 ], [ %142, %275 ], [ %142, %226 ], [ %142, %236 ], [ %142, %259 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %274 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %461 ], !dbg !2799
  %470 = phi i8 [ 0, %304 ], [ %144, %283 ], [ %144, %281 ], [ %144, %278 ], [ %144, %275 ], [ %144, %226 ], [ %144, %236 ], [ %144, %259 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %274 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %461 ], !dbg !2799
  %471 = phi i64 [ %145, %304 ], [ %145, %283 ], [ %145, %281 ], [ %145, %278 ], [ %145, %275 ], [ %145, %226 ], [ %145, %236 ], [ %230, %259 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %274 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %461 ], !dbg !2896
  %472 = phi i8 [ 0, %304 ], [ 0, %283 ], [ 0, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %274 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %461 ], !dbg !2906
  %473 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %282, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %274 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %462, %461 ], !dbg !2906
  %474 = phi i8 [ 39, %304 ], [ 39, %283 ], [ %175, %281 ], [ %175, %278 ], [ %175, %275 ], [ 63, %226 ], [ 63, %236 ], [ %238, %259 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %274 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %461 ], !dbg !2906
  %475 = phi i64 [ %290, %304 ], [ %146, %283 ], [ %146, %281 ], [ %146, %278 ], [ %146, %275 ], [ %146, %226 ], [ %146, %236 ], [ %146, %259 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %274 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %461 ]
  tail call void @llvm.dbg.value(metadata i64 %475, metadata !2730, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i8 %474, metadata !2761, metadata !DIExpression()), !dbg !2906
  tail call void @llvm.dbg.value(metadata i8 %473, metadata !2760, metadata !DIExpression()), !dbg !2906
  tail call void @llvm.dbg.value(metadata i8 %472, metadata !2759, metadata !DIExpression()), !dbg !2906
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !2756, metadata !DIExpression()), !dbg !2906
  tail call void @llvm.dbg.value(metadata i64 %471, metadata !2754, metadata !DIExpression()), !dbg !2896
  tail call void @llvm.dbg.value(metadata i8 %470, metadata !2748, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i8 %469, metadata !2745, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i64 %468, metadata !2740, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i64 %467, metadata !2739, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i64 %466, metadata !2732, metadata !DIExpression()), !dbg !2799
  br i1 %126, label %487, label %476, !dbg !3193

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
  br i1 %137, label %488, label %509, !dbg !3195

487:                                              ; preds = %465
  br i1 %27, label %509, label %488, !dbg !3196

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
  %499 = lshr i8 %490, 5, !dbg !3197
  %500 = zext nneg i8 %499 to i64, !dbg !3197
  %501 = getelementptr inbounds i32, ptr %6, i64 %500, !dbg !3198
  %502 = load i32, ptr %501, align 4, !dbg !3198, !tbaa !1065
  %503 = and i8 %490, 31, !dbg !3199
  %504 = zext nneg i8 %503 to i32, !dbg !3199
  %505 = shl nuw i32 1, %504, !dbg !3200
  %506 = and i32 %502, %505, !dbg !3200
  %507 = icmp eq i32 %506, 0, !dbg !3200
  %508 = and i1 %172, %507, !dbg !3201
  br i1 %508, label %558, label %520, !dbg !3201

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
  br i1 %172, label %558, label %520, !dbg !3202

520:                                              ; preds = %269, %272, %509, %488
  %521 = phi i64 [ %498, %488 ], [ %519, %509 ], [ %171, %272 ], [ %171, %269 ], !dbg !3192
  %522 = phi i64 [ %497, %488 ], [ %518, %509 ], [ %140, %272 ], [ %140, %269 ], !dbg !2799
  %523 = phi i64 [ %496, %488 ], [ %517, %509 ], [ %141, %272 ], [ %141, %269 ], !dbg !2804
  %524 = phi i8 [ %495, %488 ], [ %516, %509 ], [ %142, %272 ], [ %142, %269 ], !dbg !2808
  %525 = phi i8 [ %494, %488 ], [ %515, %509 ], [ %144, %272 ], [ %144, %269 ], !dbg !2898
  %526 = phi i64 [ %493, %488 ], [ %514, %509 ], [ %145, %272 ], [ %145, %269 ], !dbg !3203
  %527 = phi i8 [ %491, %488 ], [ %512, %509 ], [ 0, %272 ], [ 0, %269 ], !dbg !2906
  %528 = phi i8 [ %490, %488 ], [ %511, %509 ], [ %273, %272 ], [ 92, %269 ], !dbg !2906
  %529 = phi i64 [ %489, %488 ], [ %510, %509 ], [ %146, %272 ], [ %146, %269 ]
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !2730, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !2761, metadata !DIExpression()), !dbg !2906
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !2760, metadata !DIExpression()), !dbg !2906
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !2754, metadata !DIExpression()), !dbg !2896
  tail call void @llvm.dbg.value(metadata i8 %525, metadata !2748, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !2745, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !2740, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !2739, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !2732, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.label(metadata !2788), !dbg !3204
  br i1 %131, label %530, label %659, !dbg !3205

530:                                              ; preds = %520
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2759, metadata !DIExpression()), !dbg !2906
  %531 = and i8 %525, 1, !dbg !3207
  %532 = icmp eq i8 %531, 0, !dbg !3207
  %533 = select i1 %132, i1 %532, i1 false, !dbg !3207
  br i1 %533, label %534, label %550, !dbg !3207

534:                                              ; preds = %530
  %535 = icmp ult i64 %522, %529, !dbg !3209
  br i1 %535, label %536, label %538, !dbg !3213

536:                                              ; preds = %534
  %537 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !3209
  store i8 39, ptr %537, align 1, !dbg !3209, !tbaa !1074
  br label %538, !dbg !3209

538:                                              ; preds = %536, %534
  %539 = add i64 %522, 1, !dbg !3213
  tail call void @llvm.dbg.value(metadata i64 %539, metadata !2739, metadata !DIExpression()), !dbg !2799
  %540 = icmp ult i64 %539, %529, !dbg !3214
  br i1 %540, label %541, label %543, !dbg !3217

541:                                              ; preds = %538
  %542 = getelementptr inbounds i8, ptr %0, i64 %539, !dbg !3214
  store i8 36, ptr %542, align 1, !dbg !3214, !tbaa !1074
  br label %543, !dbg !3214

543:                                              ; preds = %541, %538
  %544 = add i64 %522, 2, !dbg !3217
  tail call void @llvm.dbg.value(metadata i64 %544, metadata !2739, metadata !DIExpression()), !dbg !2799
  %545 = icmp ult i64 %544, %529, !dbg !3218
  br i1 %545, label %546, label %548, !dbg !3221

546:                                              ; preds = %543
  %547 = getelementptr inbounds i8, ptr %0, i64 %544, !dbg !3218
  store i8 39, ptr %547, align 1, !dbg !3218, !tbaa !1074
  br label %548, !dbg !3218

548:                                              ; preds = %546, %543
  %549 = add i64 %522, 3, !dbg !3221
  tail call void @llvm.dbg.value(metadata i64 %549, metadata !2739, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2748, metadata !DIExpression()), !dbg !2799
  br label %550, !dbg !3222

550:                                              ; preds = %530, %548
  %551 = phi i64 [ %549, %548 ], [ %522, %530 ], !dbg !2906
  %552 = phi i8 [ 1, %548 ], [ %525, %530 ], !dbg !2799
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !2748, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i64 %551, metadata !2739, metadata !DIExpression()), !dbg !2799
  %553 = icmp ult i64 %551, %529, !dbg !3223
  br i1 %553, label %554, label %556, !dbg !3226

554:                                              ; preds = %550
  %555 = getelementptr inbounds i8, ptr %0, i64 %551, !dbg !3223
  store i8 92, ptr %555, align 1, !dbg !3223, !tbaa !1074
  br label %556, !dbg !3223

556:                                              ; preds = %550, %554
  %557 = add i64 %551, 1, !dbg !3226
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !2730, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !2761, metadata !DIExpression()), !dbg !2906
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !2760, metadata !DIExpression()), !dbg !2906
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2759, metadata !DIExpression()), !dbg !2906
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !2754, metadata !DIExpression()), !dbg !2896
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !2748, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !2745, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !2740, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i64 %557, metadata !2739, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !2732, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.label(metadata !2789), !dbg !3227
  br label %585, !dbg !3228

558:                                              ; preds = %463, %488, %267, %269, %509
  %559 = phi i64 [ %356, %463 ], [ %519, %509 ], [ %171, %267 ], [ %171, %269 ], [ %498, %488 ], !dbg !3192
  %560 = phi i64 [ %427, %463 ], [ %518, %509 ], [ %140, %267 ], [ %140, %269 ], [ %497, %488 ], !dbg !2799
  %561 = phi i64 [ %141, %463 ], [ %517, %509 ], [ %141, %267 ], [ %141, %269 ], [ %496, %488 ], !dbg !2804
  %562 = phi i8 [ %142, %463 ], [ %516, %509 ], [ %142, %267 ], [ %142, %269 ], [ %495, %488 ], !dbg !2808
  %563 = phi i8 [ %428, %463 ], [ %515, %509 ], [ %144, %267 ], [ %144, %269 ], [ %494, %488 ], !dbg !2898
  %564 = phi i64 [ %367, %463 ], [ %514, %509 ], [ %145, %267 ], [ %145, %269 ], [ %493, %488 ], !dbg !3203
  %565 = phi i8 [ %430, %463 ], [ %513, %509 ], [ 0, %267 ], [ 0, %269 ], [ %492, %488 ], !dbg !2906
  %566 = phi i8 [ %464, %463 ], [ %512, %509 ], [ 0, %267 ], [ 0, %269 ], [ %491, %488 ], !dbg !2906
  %567 = phi i8 [ %431, %463 ], [ %511, %509 ], [ 92, %267 ], [ 92, %269 ], [ %490, %488 ], !dbg !3231
  %568 = phi i64 [ %146, %463 ], [ %510, %509 ], [ %146, %267 ], [ %146, %269 ], [ %489, %488 ]
  tail call void @llvm.dbg.value(metadata i64 %568, metadata !2730, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i8 %567, metadata !2761, metadata !DIExpression()), !dbg !2906
  tail call void @llvm.dbg.value(metadata i8 %566, metadata !2760, metadata !DIExpression()), !dbg !2906
  tail call void @llvm.dbg.value(metadata i8 %565, metadata !2759, metadata !DIExpression()), !dbg !2906
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !2754, metadata !DIExpression()), !dbg !2896
  tail call void @llvm.dbg.value(metadata i8 %563, metadata !2748, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i8 %562, metadata !2745, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !2740, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i64 %560, metadata !2739, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i64 %559, metadata !2732, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.label(metadata !2789), !dbg !3227
  %569 = and i8 %563, 1, !dbg !3228
  %570 = icmp ne i8 %569, 0, !dbg !3228
  %571 = and i8 %565, 1, !dbg !3228
  %572 = icmp eq i8 %571, 0, !dbg !3228
  %573 = select i1 %570, i1 %572, i1 false, !dbg !3228
  br i1 %573, label %574, label %585, !dbg !3228

574:                                              ; preds = %558
  %575 = icmp ult i64 %560, %568, !dbg !3232
  br i1 %575, label %576, label %578, !dbg !3236

576:                                              ; preds = %574
  %577 = getelementptr inbounds i8, ptr %0, i64 %560, !dbg !3232
  store i8 39, ptr %577, align 1, !dbg !3232, !tbaa !1074
  br label %578, !dbg !3232

578:                                              ; preds = %576, %574
  %579 = add i64 %560, 1, !dbg !3236
  tail call void @llvm.dbg.value(metadata i64 %579, metadata !2739, metadata !DIExpression()), !dbg !2799
  %580 = icmp ult i64 %579, %568, !dbg !3237
  br i1 %580, label %581, label %583, !dbg !3240

581:                                              ; preds = %578
  %582 = getelementptr inbounds i8, ptr %0, i64 %579, !dbg !3237
  store i8 39, ptr %582, align 1, !dbg !3237, !tbaa !1074
  br label %583, !dbg !3237

583:                                              ; preds = %581, %578
  %584 = add i64 %560, 2, !dbg !3240
  tail call void @llvm.dbg.value(metadata i64 %584, metadata !2739, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2748, metadata !DIExpression()), !dbg !2799
  br label %585, !dbg !3241

585:                                              ; preds = %556, %558, %583
  %586 = phi i64 [ %568, %583 ], [ %568, %558 ], [ %529, %556 ]
  %587 = phi i8 [ %567, %583 ], [ %567, %558 ], [ %528, %556 ]
  %588 = phi i8 [ %566, %583 ], [ %566, %558 ], [ %527, %556 ]
  %589 = phi i64 [ %564, %583 ], [ %564, %558 ], [ %526, %556 ]
  %590 = phi i8 [ %562, %583 ], [ %562, %558 ], [ %524, %556 ]
  %591 = phi i64 [ %561, %583 ], [ %561, %558 ], [ %523, %556 ]
  %592 = phi i64 [ %559, %583 ], [ %559, %558 ], [ %521, %556 ]
  %593 = phi i64 [ %584, %583 ], [ %560, %558 ], [ %557, %556 ], !dbg !2906
  %594 = phi i8 [ 0, %583 ], [ %563, %558 ], [ %552, %556 ], !dbg !2799
  tail call void @llvm.dbg.value(metadata i8 %594, metadata !2748, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i64 %593, metadata !2739, metadata !DIExpression()), !dbg !2799
  %595 = icmp ult i64 %593, %586, !dbg !3242
  br i1 %595, label %596, label %598, !dbg !3245

596:                                              ; preds = %585
  %597 = getelementptr inbounds i8, ptr %0, i64 %593, !dbg !3242
  store i8 %587, ptr %597, align 1, !dbg !3242, !tbaa !1074
  br label %598, !dbg !3242

598:                                              ; preds = %596, %585
  %599 = add i64 %593, 1, !dbg !3245
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !2739, metadata !DIExpression()), !dbg !2799
  %600 = icmp eq i8 %588, 0, !dbg !3246
  %601 = select i1 %600, i8 0, i8 %143, !dbg !3248
  tail call void @llvm.dbg.value(metadata i8 %601, metadata !2746, metadata !DIExpression()), !dbg !2799
  br label %602, !dbg !3249

602:                                              ; preds = %225, %598
  %603 = phi i64 [ %592, %598 ], [ %171, %225 ], !dbg !3192
  %604 = phi i64 [ %599, %598 ], [ %140, %225 ], !dbg !2799
  %605 = phi i64 [ %591, %598 ], [ %141, %225 ], !dbg !2804
  %606 = phi i8 [ %590, %598 ], [ %142, %225 ], !dbg !2808
  %607 = phi i8 [ %601, %598 ], [ %143, %225 ], !dbg !2809
  %608 = phi i8 [ %594, %598 ], [ %144, %225 ], !dbg !2898
  %609 = phi i64 [ %589, %598 ], [ %145, %225 ], !dbg !3203
  %610 = phi i64 [ %586, %598 ], [ %146, %225 ]
  tail call void @llvm.dbg.value(metadata i64 %610, metadata !2730, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !2754, metadata !DIExpression()), !dbg !2896
  tail call void @llvm.dbg.value(metadata i8 %608, metadata !2748, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i8 %607, metadata !2746, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i8 %606, metadata !2745, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i64 %605, metadata !2740, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !2739, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i64 %603, metadata !2732, metadata !DIExpression()), !dbg !2799
  %611 = add i64 %609, 1, !dbg !3250
  tail call void @llvm.dbg.value(metadata i64 %611, metadata !2754, metadata !DIExpression()), !dbg !2896
  br label %138, !dbg !3251, !llvm.loop !3252

612:                                              ; preds = %152, %148
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !2730, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !2746, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !2745, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !2740, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2739, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !2732, metadata !DIExpression()), !dbg !2799
  %613 = icmp eq i64 %140, 0, !dbg !3254
  %614 = and i1 %132, %613, !dbg !3256
  %615 = xor i1 %614, true, !dbg !3256
  %616 = select i1 %615, i1 true, i1 %131, !dbg !3256
  br i1 %616, label %617, label %655, !dbg !3256

617:                                              ; preds = %612
  %618 = select i1 %132, i1 %131, i1 false, !dbg !3257
  %619 = and i8 %142, 1
  %620 = icmp ne i8 %619, 0
  %621 = select i1 %618, i1 %620, i1 false, !dbg !3257
  br i1 %621, label %622, label %631, !dbg !3257

622:                                              ; preds = %617
  %623 = and i8 %143, 1, !dbg !3259
  %624 = icmp eq i8 %623, 0, !dbg !3259
  br i1 %624, label %627, label %625, !dbg !3262

625:                                              ; preds = %622
  %626 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %116, ptr noundef %117), !dbg !3263
  br label %672, !dbg !3264

627:                                              ; preds = %622
  %628 = icmp eq i64 %146, 0, !dbg !3265
  %629 = icmp ne i64 %141, 0
  %630 = select i1 %628, i1 %629, i1 false, !dbg !3267
  br i1 %630, label %28, label %631, !dbg !3267

631:                                              ; preds = %627, %617
  %632 = phi i1 [ true, %627 ], [ %131, %617 ]
  %633 = icmp ne ptr %119, null, !dbg !3268
  %634 = select i1 %633, i1 %632, i1 false, !dbg !3270
  br i1 %634, label %635, label %650, !dbg !3270

635:                                              ; preds = %631
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !2741, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2739, metadata !DIExpression()), !dbg !2799
  %636 = load i8, ptr %119, align 1, !dbg !3271, !tbaa !1074
  %637 = icmp eq i8 %636, 0, !dbg !3274
  br i1 %637, label %650, label %638, !dbg !3274

638:                                              ; preds = %635, %645
  %639 = phi i8 [ %648, %645 ], [ %636, %635 ]
  %640 = phi ptr [ %647, %645 ], [ %119, %635 ]
  %641 = phi i64 [ %646, %645 ], [ %140, %635 ]
  tail call void @llvm.dbg.value(metadata ptr %640, metadata !2741, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata i64 %641, metadata !2739, metadata !DIExpression()), !dbg !2799
  %642 = icmp ult i64 %641, %146, !dbg !3275
  br i1 %642, label %643, label %645, !dbg !3278

643:                                              ; preds = %638
  %644 = getelementptr inbounds i8, ptr %0, i64 %641, !dbg !3275
  store i8 %639, ptr %644, align 1, !dbg !3275, !tbaa !1074
  br label %645, !dbg !3275

645:                                              ; preds = %643, %638
  %646 = add i64 %641, 1, !dbg !3278
  tail call void @llvm.dbg.value(metadata i64 %646, metadata !2739, metadata !DIExpression()), !dbg !2799
  %647 = getelementptr inbounds i8, ptr %640, i64 1, !dbg !3279
  tail call void @llvm.dbg.value(metadata ptr %647, metadata !2741, metadata !DIExpression()), !dbg !2799
  %648 = load i8, ptr %647, align 1, !dbg !3271, !tbaa !1074
  %649 = icmp eq i8 %648, 0, !dbg !3274
  br i1 %649, label %650, label %638, !dbg !3274, !llvm.loop !3280

650:                                              ; preds = %645, %635, %631
  %651 = phi i64 [ %140, %631 ], [ %140, %635 ], [ %646, %645 ], !dbg !2879
  tail call void @llvm.dbg.value(metadata i64 %651, metadata !2739, metadata !DIExpression()), !dbg !2799
  %652 = icmp ult i64 %651, %146, !dbg !3282
  br i1 %652, label %653, label %672, !dbg !3284

653:                                              ; preds = %650
  %654 = getelementptr inbounds i8, ptr %0, i64 %651, !dbg !3285
  store i8 0, ptr %654, align 1, !dbg !3286, !tbaa !1074
  br label %672, !dbg !3285

655:                                              ; preds = %612, %227, %267, %270, %281, %284, %354
  %656 = phi i64 [ %320, %354 ], [ %171, %284 ], [ %171, %281 ], [ %171, %270 ], [ %171, %267 ], [ %171, %227 ], [ %139, %612 ]
  call void @llvm.dbg.label(metadata !2790), !dbg !3287
  %657 = icmp eq i8 %123, 0, !dbg !3288
  %658 = select i1 %657, i32 2, i32 4, !dbg !3288
  br label %666, !dbg !3288

659:                                              ; preds = %520, %177, %371
  %660 = phi i64 [ %146, %371 ], [ %529, %520 ], [ %146, %177 ]
  %661 = phi i64 [ %356, %371 ], [ %521, %520 ], [ %171, %177 ]
  call void @llvm.dbg.label(metadata !2790), !dbg !3287
  %662 = icmp eq i32 %115, 2, !dbg !3290
  %663 = icmp eq i8 %123, 0, !dbg !3288
  %664 = select i1 %663, i32 2, i32 4, !dbg !3288
  %665 = select i1 %662, i32 %664, i32 %115, !dbg !3288
  br label %666, !dbg !3288

666:                                              ; preds = %239, %163, %659, %655
  %667 = phi i64 [ %656, %655 ], [ %661, %659 ], [ %161, %163 ], [ %171, %239 ]
  %668 = phi i64 [ %146, %655 ], [ %660, %659 ], [ %146, %163 ], [ %146, %239 ]
  %669 = phi i32 [ %658, %655 ], [ %665, %659 ], [ %115, %163 ], [ 5, %239 ]
  tail call void @llvm.dbg.value(metadata i32 %669, metadata !2733, metadata !DIExpression()), !dbg !2799
  %670 = and i32 %5, -3, !dbg !3291
  %671 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %668, ptr noundef %2, i64 noundef %667, i32 noundef %669, i32 noundef %670, ptr noundef null, ptr noundef %116, ptr noundef %117), !dbg !3292
  br label %672, !dbg !3293

672:                                              ; preds = %650, %653, %666, %625
  %673 = phi i64 [ %671, %666 ], [ %626, %625 ], [ %651, %653 ], [ %651, %650 ]
  ret i64 %673, !dbg !3294
}

; Function Attrs: nounwind
declare !dbg !3295 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !3297 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !3300 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3302 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3306, metadata !DIExpression()), !dbg !3309
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3307, metadata !DIExpression()), !dbg !3309
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3308, metadata !DIExpression()), !dbg !3309
  call void @llvm.dbg.value(metadata ptr %0, metadata !3310, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata i64 %1, metadata !3315, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata ptr null, metadata !3316, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata ptr %2, metadata !3317, metadata !DIExpression()), !dbg !3323
  %4 = icmp eq ptr %2, null, !dbg !3325
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3325
  call void @llvm.dbg.value(metadata ptr %5, metadata !3318, metadata !DIExpression()), !dbg !3323
  %6 = tail call ptr @__errno_location() #44, !dbg !3326
  %7 = load i32, ptr %6, align 4, !dbg !3326, !tbaa !1065
  call void @llvm.dbg.value(metadata i32 %7, metadata !3319, metadata !DIExpression()), !dbg !3323
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3327
  %9 = load i32, ptr %8, align 4, !dbg !3327, !tbaa !2673
  %10 = or i32 %9, 1, !dbg !3328
  call void @llvm.dbg.value(metadata i32 %10, metadata !3320, metadata !DIExpression()), !dbg !3323
  %11 = load i32, ptr %5, align 8, !dbg !3329, !tbaa !2623
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3330
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3331
  %14 = load ptr, ptr %13, align 8, !dbg !3331, !tbaa !2694
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3332
  %16 = load ptr, ptr %15, align 8, !dbg !3332, !tbaa !2697
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3333
  %18 = add i64 %17, 1, !dbg !3334
  call void @llvm.dbg.value(metadata i64 %18, metadata !3321, metadata !DIExpression()), !dbg !3323
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #48, !dbg !3335
  call void @llvm.dbg.value(metadata ptr %19, metadata !3322, metadata !DIExpression()), !dbg !3323
  %20 = load i32, ptr %5, align 8, !dbg !3336, !tbaa !2623
  %21 = load ptr, ptr %13, align 8, !dbg !3337, !tbaa !2694
  %22 = load ptr, ptr %15, align 8, !dbg !3338, !tbaa !2697
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3339
  store i32 %7, ptr %6, align 4, !dbg !3340, !tbaa !1065
  ret ptr %19, !dbg !3341
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3311 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3310, metadata !DIExpression()), !dbg !3342
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3315, metadata !DIExpression()), !dbg !3342
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3316, metadata !DIExpression()), !dbg !3342
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3317, metadata !DIExpression()), !dbg !3342
  %5 = icmp eq ptr %3, null, !dbg !3343
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3343
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3318, metadata !DIExpression()), !dbg !3342
  %7 = tail call ptr @__errno_location() #44, !dbg !3344
  %8 = load i32, ptr %7, align 4, !dbg !3344, !tbaa !1065
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !3319, metadata !DIExpression()), !dbg !3342
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3345
  %10 = load i32, ptr %9, align 4, !dbg !3345, !tbaa !2673
  %11 = icmp eq ptr %2, null, !dbg !3346
  %12 = zext i1 %11 to i32, !dbg !3346
  %13 = or i32 %10, %12, !dbg !3347
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !3320, metadata !DIExpression()), !dbg !3342
  %14 = load i32, ptr %6, align 8, !dbg !3348, !tbaa !2623
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3349
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3350
  %17 = load ptr, ptr %16, align 8, !dbg !3350, !tbaa !2694
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3351
  %19 = load ptr, ptr %18, align 8, !dbg !3351, !tbaa !2697
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3352
  %21 = add i64 %20, 1, !dbg !3353
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3321, metadata !DIExpression()), !dbg !3342
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #48, !dbg !3354
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !3322, metadata !DIExpression()), !dbg !3342
  %23 = load i32, ptr %6, align 8, !dbg !3355, !tbaa !2623
  %24 = load ptr, ptr %16, align 8, !dbg !3356, !tbaa !2694
  %25 = load ptr, ptr %18, align 8, !dbg !3357, !tbaa !2697
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3358
  store i32 %8, ptr %7, align 4, !dbg !3359, !tbaa !1065
  br i1 %11, label %28, label %27, !dbg !3360

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3361, !tbaa !3363
  br label %28, !dbg !3364

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3365
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !3366 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3371, !tbaa !991
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3368, metadata !DIExpression()), !dbg !3372
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3369, metadata !DIExpression()), !dbg !3373
  %2 = load i32, ptr @nslots, align 4, !tbaa !1065
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3369, metadata !DIExpression()), !dbg !3373
  %3 = icmp sgt i32 %2, 1, !dbg !3374
  br i1 %3, label %4, label %6, !dbg !3376

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !3374
  br label %10, !dbg !3376

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3377
  %8 = load ptr, ptr %7, align 8, !dbg !3377, !tbaa !3379
  %9 = icmp eq ptr %8, @slot0, !dbg !3381
  br i1 %9, label %17, label %16, !dbg !3382

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3369, metadata !DIExpression()), !dbg !3373
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3383
  %13 = load ptr, ptr %12, align 8, !dbg !3383, !tbaa !3379
  tail call void @free(ptr noundef %13) #41, !dbg !3384
  %14 = add nuw nsw i64 %11, 1, !dbg !3385
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !3369, metadata !DIExpression()), !dbg !3373
  %15 = icmp eq i64 %14, %5, !dbg !3374
  br i1 %15, label %6, label %10, !dbg !3376, !llvm.loop !3386

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #41, !dbg !3388
  store i64 256, ptr @slotvec0, align 8, !dbg !3390, !tbaa !3391
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3392, !tbaa !3379
  br label %17, !dbg !3393

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3394
  br i1 %18, label %20, label %19, !dbg !3396

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #41, !dbg !3397
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3399, !tbaa !991
  br label %20, !dbg !3400

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3401, !tbaa !1065
  ret void, !dbg !3402
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3403 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3405, metadata !DIExpression()), !dbg !3407
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3406, metadata !DIExpression()), !dbg !3407
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3408
  ret ptr %3, !dbg !3409
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !3410 {
  %5 = alloca i64, align 8, !DIAssignID !3430
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3424, metadata !DIExpression(), metadata !3430, metadata ptr %5, metadata !DIExpression()), !dbg !3431
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3414, metadata !DIExpression()), !dbg !3432
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3415, metadata !DIExpression()), !dbg !3432
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3416, metadata !DIExpression()), !dbg !3432
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3417, metadata !DIExpression()), !dbg !3432
  %6 = tail call ptr @__errno_location() #44, !dbg !3433
  %7 = load i32, ptr %6, align 4, !dbg !3433, !tbaa !1065
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !3418, metadata !DIExpression()), !dbg !3432
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3434, !tbaa !991
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !3419, metadata !DIExpression()), !dbg !3432
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !3420, metadata !DIExpression()), !dbg !3432
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3435
  br i1 %9, label %10, label %11, !dbg !3435

10:                                               ; preds = %4
  tail call void @abort() #43, !dbg !3437
  unreachable, !dbg !3437

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3438, !tbaa !1065
  %13 = icmp sgt i32 %12, %0, !dbg !3439
  br i1 %13, label %32, label %14, !dbg !3440

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3441
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !3421, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3431
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #41, !dbg !3442
  %16 = sext i32 %12 to i64, !dbg !3443
  store i64 %16, ptr %5, align 8, !dbg !3444, !tbaa !3363, !DIAssignID !3445
  call void @llvm.dbg.assign(metadata i64 %16, metadata !3424, metadata !DIExpression(), metadata !3445, metadata ptr %5, metadata !DIExpression()), !dbg !3431
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3446
  %18 = add nuw nsw i32 %0, 1, !dbg !3447
  %19 = sub i32 %18, %12, !dbg !3448
  %20 = sext i32 %19 to i64, !dbg !3449
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #41, !dbg !3450
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !3419, metadata !DIExpression()), !dbg !3432
  store ptr %21, ptr @slotvec, align 8, !dbg !3451, !tbaa !991
  br i1 %15, label %22, label %23, !dbg !3452

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3453, !tbaa.struct !3455
  br label %23, !dbg !3456

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3457, !tbaa !1065
  %25 = sext i32 %24 to i64, !dbg !3458
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3458
  %27 = load i64, ptr %5, align 8, !dbg !3459, !tbaa !3363
  %28 = sub nsw i64 %27, %25, !dbg !3460
  %29 = shl i64 %28, 4, !dbg !3461
  call void @llvm.dbg.value(metadata ptr %26, metadata !2837, metadata !DIExpression()), !dbg !3462
  call void @llvm.dbg.value(metadata i32 0, metadata !2840, metadata !DIExpression()), !dbg !3462
  call void @llvm.dbg.value(metadata i64 %29, metadata !2841, metadata !DIExpression()), !dbg !3462
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #41, !dbg !3464
  %30 = load i64, ptr %5, align 8, !dbg !3465, !tbaa !3363
  %31 = trunc i64 %30 to i32, !dbg !3465
  store i32 %31, ptr @nslots, align 4, !dbg !3466, !tbaa !1065
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #41, !dbg !3467
  br label %32, !dbg !3468

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3432
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !3419, metadata !DIExpression()), !dbg !3432
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3469
  %36 = load i64, ptr %35, align 8, !dbg !3470, !tbaa !3391
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !3425, metadata !DIExpression()), !dbg !3471
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3472
  %38 = load ptr, ptr %37, align 8, !dbg !3472, !tbaa !3379
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !3427, metadata !DIExpression()), !dbg !3471
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3473
  %40 = load i32, ptr %39, align 4, !dbg !3473, !tbaa !2673
  %41 = or i32 %40, 1, !dbg !3474
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !3428, metadata !DIExpression()), !dbg !3471
  %42 = load i32, ptr %3, align 8, !dbg !3475, !tbaa !2623
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3476
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3477
  %45 = load ptr, ptr %44, align 8, !dbg !3477, !tbaa !2694
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3478
  %47 = load ptr, ptr %46, align 8, !dbg !3478, !tbaa !2697
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3479
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !3429, metadata !DIExpression()), !dbg !3471
  %49 = icmp ugt i64 %36, %48, !dbg !3480
  br i1 %49, label %60, label %50, !dbg !3482

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3483
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !3425, metadata !DIExpression()), !dbg !3471
  store i64 %51, ptr %35, align 8, !dbg !3485, !tbaa !3391
  %52 = icmp eq ptr %38, @slot0, !dbg !3486
  br i1 %52, label %54, label %53, !dbg !3488

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #41, !dbg !3489
  br label %54, !dbg !3489

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #48, !dbg !3490
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !3427, metadata !DIExpression()), !dbg !3471
  store ptr %55, ptr %37, align 8, !dbg !3491, !tbaa !3379
  %56 = load i32, ptr %3, align 8, !dbg !3492, !tbaa !2623
  %57 = load ptr, ptr %44, align 8, !dbg !3493, !tbaa !2694
  %58 = load ptr, ptr %46, align 8, !dbg !3494, !tbaa !2697
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3495
  br label %60, !dbg !3496

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3471
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !3427, metadata !DIExpression()), !dbg !3471
  store i32 %7, ptr %6, align 4, !dbg !3497, !tbaa !1065
  ret ptr %61, !dbg !3498
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #26

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3499 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3503, metadata !DIExpression()), !dbg !3506
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3504, metadata !DIExpression()), !dbg !3506
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3505, metadata !DIExpression()), !dbg !3506
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3507
  ret ptr %4, !dbg !3508
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3509 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3511, metadata !DIExpression()), !dbg !3512
  call void @llvm.dbg.value(metadata i32 0, metadata !3405, metadata !DIExpression()), !dbg !3513
  call void @llvm.dbg.value(metadata ptr %0, metadata !3406, metadata !DIExpression()), !dbg !3513
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3515
  ret ptr %2, !dbg !3516
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3517 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3521, metadata !DIExpression()), !dbg !3523
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3522, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata i32 0, metadata !3503, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata ptr %0, metadata !3504, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i64 %1, metadata !3505, metadata !DIExpression()), !dbg !3524
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3526
  ret ptr %3, !dbg !3527
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3528 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3536
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3535, metadata !DIExpression(), metadata !3536, metadata ptr %4, metadata !DIExpression()), !dbg !3537
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3532, metadata !DIExpression()), !dbg !3537
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3533, metadata !DIExpression()), !dbg !3537
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3534, metadata !DIExpression()), !dbg !3537
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !3538
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3539), !dbg !3542
  call void @llvm.dbg.value(metadata i32 %1, metadata !3543, metadata !DIExpression()), !dbg !3549
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3548, metadata !DIExpression()), !dbg !3551
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3551, !alias.scope !3539, !DIAssignID !3552
  call void @llvm.dbg.assign(metadata i8 0, metadata !3535, metadata !DIExpression(), metadata !3552, metadata ptr %4, metadata !DIExpression()), !dbg !3537
  %5 = icmp eq i32 %1, 10, !dbg !3553
  br i1 %5, label %6, label %7, !dbg !3555

6:                                                ; preds = %3
  tail call void @abort() #43, !dbg !3556, !noalias !3539
  unreachable, !dbg !3556

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3557, !tbaa !2623, !alias.scope !3539, !DIAssignID !3558
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3535, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3558, metadata ptr %4, metadata !DIExpression()), !dbg !3537
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3559
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !3560
  ret ptr %8, !dbg !3561
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3562 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3571
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3570, metadata !DIExpression(), metadata !3571, metadata ptr %5, metadata !DIExpression()), !dbg !3572
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3566, metadata !DIExpression()), !dbg !3572
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3567, metadata !DIExpression()), !dbg !3572
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3568, metadata !DIExpression()), !dbg !3572
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3569, metadata !DIExpression()), !dbg !3572
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #41, !dbg !3573
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3574), !dbg !3577
  call void @llvm.dbg.value(metadata i32 %1, metadata !3543, metadata !DIExpression()), !dbg !3578
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3548, metadata !DIExpression()), !dbg !3580
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3580, !alias.scope !3574, !DIAssignID !3581
  call void @llvm.dbg.assign(metadata i8 0, metadata !3570, metadata !DIExpression(), metadata !3581, metadata ptr %5, metadata !DIExpression()), !dbg !3572
  %6 = icmp eq i32 %1, 10, !dbg !3582
  br i1 %6, label %7, label %8, !dbg !3583

7:                                                ; preds = %4
  tail call void @abort() #43, !dbg !3584, !noalias !3574
  unreachable, !dbg !3584

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3585, !tbaa !2623, !alias.scope !3574, !DIAssignID !3586
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3570, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3586, metadata ptr %5, metadata !DIExpression()), !dbg !3572
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3587
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #41, !dbg !3588
  ret ptr %9, !dbg !3589
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3590 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3596
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3594, metadata !DIExpression()), !dbg !3597
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3595, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3535, metadata !DIExpression(), metadata !3596, metadata ptr %3, metadata !DIExpression()), !dbg !3598
  call void @llvm.dbg.value(metadata i32 0, metadata !3532, metadata !DIExpression()), !dbg !3598
  call void @llvm.dbg.value(metadata i32 %0, metadata !3533, metadata !DIExpression()), !dbg !3598
  call void @llvm.dbg.value(metadata ptr %1, metadata !3534, metadata !DIExpression()), !dbg !3598
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #41, !dbg !3600
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3601), !dbg !3604
  call void @llvm.dbg.value(metadata i32 %0, metadata !3543, metadata !DIExpression()), !dbg !3605
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3548, metadata !DIExpression()), !dbg !3607
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3607, !alias.scope !3601, !DIAssignID !3608
  call void @llvm.dbg.assign(metadata i8 0, metadata !3535, metadata !DIExpression(), metadata !3608, metadata ptr %3, metadata !DIExpression()), !dbg !3598
  %4 = icmp eq i32 %0, 10, !dbg !3609
  br i1 %4, label %5, label %6, !dbg !3610

5:                                                ; preds = %2
  tail call void @abort() #43, !dbg !3611, !noalias !3601
  unreachable, !dbg !3611

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3612, !tbaa !2623, !alias.scope !3601, !DIAssignID !3613
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3535, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3613, metadata ptr %3, metadata !DIExpression()), !dbg !3598
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3614
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #41, !dbg !3615
  ret ptr %7, !dbg !3616
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3617 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3624
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3621, metadata !DIExpression()), !dbg !3625
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3622, metadata !DIExpression()), !dbg !3625
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3623, metadata !DIExpression()), !dbg !3625
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3570, metadata !DIExpression(), metadata !3624, metadata ptr %4, metadata !DIExpression()), !dbg !3626
  call void @llvm.dbg.value(metadata i32 0, metadata !3566, metadata !DIExpression()), !dbg !3626
  call void @llvm.dbg.value(metadata i32 %0, metadata !3567, metadata !DIExpression()), !dbg !3626
  call void @llvm.dbg.value(metadata ptr %1, metadata !3568, metadata !DIExpression()), !dbg !3626
  call void @llvm.dbg.value(metadata i64 %2, metadata !3569, metadata !DIExpression()), !dbg !3626
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !3628
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3629), !dbg !3632
  call void @llvm.dbg.value(metadata i32 %0, metadata !3543, metadata !DIExpression()), !dbg !3633
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3548, metadata !DIExpression()), !dbg !3635
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3635, !alias.scope !3629, !DIAssignID !3636
  call void @llvm.dbg.assign(metadata i8 0, metadata !3570, metadata !DIExpression(), metadata !3636, metadata ptr %4, metadata !DIExpression()), !dbg !3626
  %5 = icmp eq i32 %0, 10, !dbg !3637
  br i1 %5, label %6, label %7, !dbg !3638

6:                                                ; preds = %3
  tail call void @abort() #43, !dbg !3639, !noalias !3629
  unreachable, !dbg !3639

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3640, !tbaa !2623, !alias.scope !3629, !DIAssignID !3641
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3570, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3641, metadata ptr %4, metadata !DIExpression()), !dbg !3626
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3642
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !3643
  ret ptr %8, !dbg !3644
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !3645 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3653
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3652, metadata !DIExpression(), metadata !3653, metadata ptr %4, metadata !DIExpression()), !dbg !3654
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3649, metadata !DIExpression()), !dbg !3654
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3650, metadata !DIExpression()), !dbg !3654
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !3651, metadata !DIExpression()), !dbg !3654
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !3655
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3656, !tbaa.struct !3657, !DIAssignID !3658
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3652, metadata !DIExpression(), metadata !3658, metadata ptr %4, metadata !DIExpression()), !dbg !3654
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2640, metadata !DIExpression()), !dbg !3659
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2641, metadata !DIExpression()), !dbg !3659
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2642, metadata !DIExpression()), !dbg !3659
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2643, metadata !DIExpression()), !dbg !3659
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3661
  %6 = lshr i8 %2, 5, !dbg !3662
  %7 = zext nneg i8 %6 to i64, !dbg !3662
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3663
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2644, metadata !DIExpression()), !dbg !3659
  %9 = and i8 %2, 31, !dbg !3664
  %10 = zext nneg i8 %9 to i32, !dbg !3664
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2646, metadata !DIExpression()), !dbg !3659
  %11 = load i32, ptr %8, align 4, !dbg !3665, !tbaa !1065
  %12 = lshr i32 %11, %10, !dbg !3666
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !2647, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3659
  %13 = and i32 %12, 1, !dbg !3667
  %14 = xor i32 %13, 1, !dbg !3667
  %15 = shl nuw i32 %14, %10, !dbg !3668
  %16 = xor i32 %15, %11, !dbg !3669
  store i32 %16, ptr %8, align 4, !dbg !3669, !tbaa !1065
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3670
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !3671
  ret ptr %17, !dbg !3672
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !3673 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3679
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3677, metadata !DIExpression()), !dbg !3680
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !3678, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3652, metadata !DIExpression(), metadata !3679, metadata ptr %3, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata ptr %0, metadata !3649, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata i64 -1, metadata !3650, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata i8 %1, metadata !3651, metadata !DIExpression()), !dbg !3681
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #41, !dbg !3683
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3684, !tbaa.struct !3657, !DIAssignID !3685
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3652, metadata !DIExpression(), metadata !3685, metadata ptr %3, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata ptr %3, metadata !2640, metadata !DIExpression()), !dbg !3686
  call void @llvm.dbg.value(metadata i8 %1, metadata !2641, metadata !DIExpression()), !dbg !3686
  call void @llvm.dbg.value(metadata i32 1, metadata !2642, metadata !DIExpression()), !dbg !3686
  call void @llvm.dbg.value(metadata i8 %1, metadata !2643, metadata !DIExpression()), !dbg !3686
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3688
  %5 = lshr i8 %1, 5, !dbg !3689
  %6 = zext nneg i8 %5 to i64, !dbg !3689
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3690
  call void @llvm.dbg.value(metadata ptr %7, metadata !2644, metadata !DIExpression()), !dbg !3686
  %8 = and i8 %1, 31, !dbg !3691
  %9 = zext nneg i8 %8 to i32, !dbg !3691
  call void @llvm.dbg.value(metadata i32 %9, metadata !2646, metadata !DIExpression()), !dbg !3686
  %10 = load i32, ptr %7, align 4, !dbg !3692, !tbaa !1065
  %11 = lshr i32 %10, %9, !dbg !3693
  call void @llvm.dbg.value(metadata i32 %11, metadata !2647, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3686
  %12 = and i32 %11, 1, !dbg !3694
  %13 = xor i32 %12, 1, !dbg !3694
  %14 = shl nuw i32 %13, %9, !dbg !3695
  %15 = xor i32 %14, %10, !dbg !3696
  store i32 %15, ptr %7, align 4, !dbg !3696, !tbaa !1065
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3697
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #41, !dbg !3698
  ret ptr %16, !dbg !3699
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !3700 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !3703
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3702, metadata !DIExpression()), !dbg !3704
  call void @llvm.dbg.value(metadata ptr %0, metadata !3677, metadata !DIExpression()), !dbg !3705
  call void @llvm.dbg.value(metadata i8 58, metadata !3678, metadata !DIExpression()), !dbg !3705
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3652, metadata !DIExpression(), metadata !3703, metadata ptr %2, metadata !DIExpression()), !dbg !3707
  call void @llvm.dbg.value(metadata ptr %0, metadata !3649, metadata !DIExpression()), !dbg !3707
  call void @llvm.dbg.value(metadata i64 -1, metadata !3650, metadata !DIExpression()), !dbg !3707
  call void @llvm.dbg.value(metadata i8 58, metadata !3651, metadata !DIExpression()), !dbg !3707
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #41, !dbg !3709
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3710, !tbaa.struct !3657, !DIAssignID !3711
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3652, metadata !DIExpression(), metadata !3711, metadata ptr %2, metadata !DIExpression()), !dbg !3707
  call void @llvm.dbg.value(metadata ptr %2, metadata !2640, metadata !DIExpression()), !dbg !3712
  call void @llvm.dbg.value(metadata i8 58, metadata !2641, metadata !DIExpression()), !dbg !3712
  call void @llvm.dbg.value(metadata i32 1, metadata !2642, metadata !DIExpression()), !dbg !3712
  call void @llvm.dbg.value(metadata i8 58, metadata !2643, metadata !DIExpression()), !dbg !3712
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3714
  call void @llvm.dbg.value(metadata ptr %3, metadata !2644, metadata !DIExpression()), !dbg !3712
  call void @llvm.dbg.value(metadata i32 26, metadata !2646, metadata !DIExpression()), !dbg !3712
  %4 = load i32, ptr %3, align 4, !dbg !3715, !tbaa !1065
  call void @llvm.dbg.value(metadata i32 %4, metadata !2647, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3712
  %5 = or i32 %4, 67108864, !dbg !3716
  store i32 %5, ptr %3, align 4, !dbg !3716, !tbaa !1065
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3717
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #41, !dbg !3718
  ret ptr %6, !dbg !3719
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3720 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3724
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3722, metadata !DIExpression()), !dbg !3725
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3723, metadata !DIExpression()), !dbg !3725
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3652, metadata !DIExpression(), metadata !3724, metadata ptr %3, metadata !DIExpression()), !dbg !3726
  call void @llvm.dbg.value(metadata ptr %0, metadata !3649, metadata !DIExpression()), !dbg !3726
  call void @llvm.dbg.value(metadata i64 %1, metadata !3650, metadata !DIExpression()), !dbg !3726
  call void @llvm.dbg.value(metadata i8 58, metadata !3651, metadata !DIExpression()), !dbg !3726
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #41, !dbg !3728
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3729, !tbaa.struct !3657, !DIAssignID !3730
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3652, metadata !DIExpression(), metadata !3730, metadata ptr %3, metadata !DIExpression()), !dbg !3726
  call void @llvm.dbg.value(metadata ptr %3, metadata !2640, metadata !DIExpression()), !dbg !3731
  call void @llvm.dbg.value(metadata i8 58, metadata !2641, metadata !DIExpression()), !dbg !3731
  call void @llvm.dbg.value(metadata i32 1, metadata !2642, metadata !DIExpression()), !dbg !3731
  call void @llvm.dbg.value(metadata i8 58, metadata !2643, metadata !DIExpression()), !dbg !3731
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3733
  call void @llvm.dbg.value(metadata ptr %4, metadata !2644, metadata !DIExpression()), !dbg !3731
  call void @llvm.dbg.value(metadata i32 26, metadata !2646, metadata !DIExpression()), !dbg !3731
  %5 = load i32, ptr %4, align 4, !dbg !3734, !tbaa !1065
  call void @llvm.dbg.value(metadata i32 %5, metadata !2647, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3731
  %6 = or i32 %5, 67108864, !dbg !3735
  store i32 %6, ptr %4, align 4, !dbg !3735, !tbaa !1065
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3736
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #41, !dbg !3737
  ret ptr %7, !dbg !3738
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3739 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3745
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3744, metadata !DIExpression(), metadata !3745, metadata ptr %4, metadata !DIExpression()), !dbg !3746
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3548, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3747
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3741, metadata !DIExpression()), !dbg !3746
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3742, metadata !DIExpression()), !dbg !3746
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3743, metadata !DIExpression()), !dbg !3746
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !3749
  call void @llvm.dbg.value(metadata i32 %1, metadata !3543, metadata !DIExpression()), !dbg !3750
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3548, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3750
  %5 = icmp eq i32 %1, 10, !dbg !3751
  br i1 %5, label %6, label %7, !dbg !3752

6:                                                ; preds = %3
  tail call void @abort() #43, !dbg !3753, !noalias !3754
  unreachable, !dbg !3753

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3548, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3750
  store i32 %1, ptr %4, align 8, !dbg !3757, !tbaa.struct !3657, !DIAssignID !3758
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3757
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3757
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3744, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3758, metadata ptr %4, metadata !DIExpression()), !dbg !3746
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3744, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !3759, metadata ptr %8, metadata !DIExpression()), !dbg !3746
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2640, metadata !DIExpression()), !dbg !3760
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2641, metadata !DIExpression()), !dbg !3760
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2642, metadata !DIExpression()), !dbg !3760
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2643, metadata !DIExpression()), !dbg !3760
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3762
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2644, metadata !DIExpression()), !dbg !3760
  tail call void @llvm.dbg.value(metadata i32 26, metadata !2646, metadata !DIExpression()), !dbg !3760
  %10 = load i32, ptr %9, align 4, !dbg !3763, !tbaa !1065
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2647, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3760
  %11 = or i32 %10, 67108864, !dbg !3764
  store i32 %11, ptr %9, align 4, !dbg !3764, !tbaa !1065, !DIAssignID !3765
  call void @llvm.dbg.assign(metadata i32 %11, metadata !3744, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !3765, metadata ptr %9, metadata !DIExpression()), !dbg !3746
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3766
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !3767
  ret ptr %12, !dbg !3768
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3769 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3777
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3773, metadata !DIExpression()), !dbg !3778
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3774, metadata !DIExpression()), !dbg !3778
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3775, metadata !DIExpression()), !dbg !3778
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3776, metadata !DIExpression()), !dbg !3778
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3779, metadata !DIExpression(), metadata !3777, metadata ptr %5, metadata !DIExpression()), !dbg !3789
  call void @llvm.dbg.value(metadata i32 %0, metadata !3784, metadata !DIExpression()), !dbg !3789
  call void @llvm.dbg.value(metadata ptr %1, metadata !3785, metadata !DIExpression()), !dbg !3789
  call void @llvm.dbg.value(metadata ptr %2, metadata !3786, metadata !DIExpression()), !dbg !3789
  call void @llvm.dbg.value(metadata ptr %3, metadata !3787, metadata !DIExpression()), !dbg !3789
  call void @llvm.dbg.value(metadata i64 -1, metadata !3788, metadata !DIExpression()), !dbg !3789
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #41, !dbg !3791
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3792, !tbaa.struct !3657, !DIAssignID !3793
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3779, metadata !DIExpression(), metadata !3793, metadata ptr %5, metadata !DIExpression()), !dbg !3789
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3779, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3794, metadata ptr undef, metadata !DIExpression()), !dbg !3789
  call void @llvm.dbg.value(metadata ptr %5, metadata !2680, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata ptr %1, metadata !2681, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata ptr %2, metadata !2682, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata ptr %5, metadata !2680, metadata !DIExpression()), !dbg !3795
  store i32 10, ptr %5, align 8, !dbg !3797, !tbaa !2623, !DIAssignID !3798
  call void @llvm.dbg.assign(metadata i32 10, metadata !3779, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3798, metadata ptr %5, metadata !DIExpression()), !dbg !3789
  %6 = icmp ne ptr %1, null, !dbg !3799
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3800
  br i1 %8, label %10, label %9, !dbg !3800

9:                                                ; preds = %4
  tail call void @abort() #43, !dbg !3801
  unreachable, !dbg !3801

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3802
  store ptr %1, ptr %11, align 8, !dbg !3803, !tbaa !2694, !DIAssignID !3804
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3779, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3804, metadata ptr %11, metadata !DIExpression()), !dbg !3789
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3805
  store ptr %2, ptr %12, align 8, !dbg !3806, !tbaa !2697, !DIAssignID !3807
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3779, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3807, metadata ptr %12, metadata !DIExpression()), !dbg !3789
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3808
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #41, !dbg !3809
  ret ptr %13, !dbg !3810
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3780 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !3811
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3779, metadata !DIExpression(), metadata !3811, metadata ptr %6, metadata !DIExpression()), !dbg !3812
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3784, metadata !DIExpression()), !dbg !3812
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3785, metadata !DIExpression()), !dbg !3812
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3786, metadata !DIExpression()), !dbg !3812
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3787, metadata !DIExpression()), !dbg !3812
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !3788, metadata !DIExpression()), !dbg !3812
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #41, !dbg !3813
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3814, !tbaa.struct !3657, !DIAssignID !3815
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3779, metadata !DIExpression(), metadata !3815, metadata ptr %6, metadata !DIExpression()), !dbg !3812
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3779, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3816, metadata ptr undef, metadata !DIExpression()), !dbg !3812
  call void @llvm.dbg.value(metadata ptr %6, metadata !2680, metadata !DIExpression()), !dbg !3817
  call void @llvm.dbg.value(metadata ptr %1, metadata !2681, metadata !DIExpression()), !dbg !3817
  call void @llvm.dbg.value(metadata ptr %2, metadata !2682, metadata !DIExpression()), !dbg !3817
  call void @llvm.dbg.value(metadata ptr %6, metadata !2680, metadata !DIExpression()), !dbg !3817
  store i32 10, ptr %6, align 8, !dbg !3819, !tbaa !2623, !DIAssignID !3820
  call void @llvm.dbg.assign(metadata i32 10, metadata !3779, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3820, metadata ptr %6, metadata !DIExpression()), !dbg !3812
  %7 = icmp ne ptr %1, null, !dbg !3821
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3822
  br i1 %9, label %11, label %10, !dbg !3822

10:                                               ; preds = %5
  tail call void @abort() #43, !dbg !3823
  unreachable, !dbg !3823

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3824
  store ptr %1, ptr %12, align 8, !dbg !3825, !tbaa !2694, !DIAssignID !3826
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3779, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3826, metadata ptr %12, metadata !DIExpression()), !dbg !3812
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3827
  store ptr %2, ptr %13, align 8, !dbg !3828, !tbaa !2697, !DIAssignID !3829
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3779, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3829, metadata ptr %13, metadata !DIExpression()), !dbg !3812
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3830
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #41, !dbg !3831
  ret ptr %14, !dbg !3832
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3833 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3840
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3837, metadata !DIExpression()), !dbg !3841
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3838, metadata !DIExpression()), !dbg !3841
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3839, metadata !DIExpression()), !dbg !3841
  call void @llvm.dbg.value(metadata i32 0, metadata !3773, metadata !DIExpression()), !dbg !3842
  call void @llvm.dbg.value(metadata ptr %0, metadata !3774, metadata !DIExpression()), !dbg !3842
  call void @llvm.dbg.value(metadata ptr %1, metadata !3775, metadata !DIExpression()), !dbg !3842
  call void @llvm.dbg.value(metadata ptr %2, metadata !3776, metadata !DIExpression()), !dbg !3842
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3779, metadata !DIExpression(), metadata !3840, metadata ptr %4, metadata !DIExpression()), !dbg !3844
  call void @llvm.dbg.value(metadata i32 0, metadata !3784, metadata !DIExpression()), !dbg !3844
  call void @llvm.dbg.value(metadata ptr %0, metadata !3785, metadata !DIExpression()), !dbg !3844
  call void @llvm.dbg.value(metadata ptr %1, metadata !3786, metadata !DIExpression()), !dbg !3844
  call void @llvm.dbg.value(metadata ptr %2, metadata !3787, metadata !DIExpression()), !dbg !3844
  call void @llvm.dbg.value(metadata i64 -1, metadata !3788, metadata !DIExpression()), !dbg !3844
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !3846
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3847, !tbaa.struct !3657, !DIAssignID !3848
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3779, metadata !DIExpression(), metadata !3848, metadata ptr %4, metadata !DIExpression()), !dbg !3844
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3779, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3849, metadata ptr undef, metadata !DIExpression()), !dbg !3844
  call void @llvm.dbg.value(metadata ptr %4, metadata !2680, metadata !DIExpression()), !dbg !3850
  call void @llvm.dbg.value(metadata ptr %0, metadata !2681, metadata !DIExpression()), !dbg !3850
  call void @llvm.dbg.value(metadata ptr %1, metadata !2682, metadata !DIExpression()), !dbg !3850
  call void @llvm.dbg.value(metadata ptr %4, metadata !2680, metadata !DIExpression()), !dbg !3850
  store i32 10, ptr %4, align 8, !dbg !3852, !tbaa !2623, !DIAssignID !3853
  call void @llvm.dbg.assign(metadata i32 10, metadata !3779, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3853, metadata ptr %4, metadata !DIExpression()), !dbg !3844
  %5 = icmp ne ptr %0, null, !dbg !3854
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3855
  br i1 %7, label %9, label %8, !dbg !3855

8:                                                ; preds = %3
  tail call void @abort() #43, !dbg !3856
  unreachable, !dbg !3856

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3857
  store ptr %0, ptr %10, align 8, !dbg !3858, !tbaa !2694, !DIAssignID !3859
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3779, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3859, metadata ptr %10, metadata !DIExpression()), !dbg !3844
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3860
  store ptr %1, ptr %11, align 8, !dbg !3861, !tbaa !2697, !DIAssignID !3862
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3779, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3862, metadata ptr %11, metadata !DIExpression()), !dbg !3844
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3863
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !3864
  ret ptr %12, !dbg !3865
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3866 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3874
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3870, metadata !DIExpression()), !dbg !3875
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3871, metadata !DIExpression()), !dbg !3875
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3872, metadata !DIExpression()), !dbg !3875
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3873, metadata !DIExpression()), !dbg !3875
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3779, metadata !DIExpression(), metadata !3874, metadata ptr %5, metadata !DIExpression()), !dbg !3876
  call void @llvm.dbg.value(metadata i32 0, metadata !3784, metadata !DIExpression()), !dbg !3876
  call void @llvm.dbg.value(metadata ptr %0, metadata !3785, metadata !DIExpression()), !dbg !3876
  call void @llvm.dbg.value(metadata ptr %1, metadata !3786, metadata !DIExpression()), !dbg !3876
  call void @llvm.dbg.value(metadata ptr %2, metadata !3787, metadata !DIExpression()), !dbg !3876
  call void @llvm.dbg.value(metadata i64 %3, metadata !3788, metadata !DIExpression()), !dbg !3876
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #41, !dbg !3878
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3879, !tbaa.struct !3657, !DIAssignID !3880
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3779, metadata !DIExpression(), metadata !3880, metadata ptr %5, metadata !DIExpression()), !dbg !3876
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3779, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3881, metadata ptr undef, metadata !DIExpression()), !dbg !3876
  call void @llvm.dbg.value(metadata ptr %5, metadata !2680, metadata !DIExpression()), !dbg !3882
  call void @llvm.dbg.value(metadata ptr %0, metadata !2681, metadata !DIExpression()), !dbg !3882
  call void @llvm.dbg.value(metadata ptr %1, metadata !2682, metadata !DIExpression()), !dbg !3882
  call void @llvm.dbg.value(metadata ptr %5, metadata !2680, metadata !DIExpression()), !dbg !3882
  store i32 10, ptr %5, align 8, !dbg !3884, !tbaa !2623, !DIAssignID !3885
  call void @llvm.dbg.assign(metadata i32 10, metadata !3779, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3885, metadata ptr %5, metadata !DIExpression()), !dbg !3876
  %6 = icmp ne ptr %0, null, !dbg !3886
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3887
  br i1 %8, label %10, label %9, !dbg !3887

9:                                                ; preds = %4
  tail call void @abort() #43, !dbg !3888
  unreachable, !dbg !3888

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3889
  store ptr %0, ptr %11, align 8, !dbg !3890, !tbaa !2694, !DIAssignID !3891
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3779, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3891, metadata ptr %11, metadata !DIExpression()), !dbg !3876
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3892
  store ptr %1, ptr %12, align 8, !dbg !3893, !tbaa !2697, !DIAssignID !3894
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3779, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3894, metadata ptr %12, metadata !DIExpression()), !dbg !3876
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3895
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #41, !dbg !3896
  ret ptr %13, !dbg !3897
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3898 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3902, metadata !DIExpression()), !dbg !3905
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3903, metadata !DIExpression()), !dbg !3905
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3904, metadata !DIExpression()), !dbg !3905
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3906
  ret ptr %4, !dbg !3907
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3908 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3912, metadata !DIExpression()), !dbg !3914
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3913, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata i32 0, metadata !3902, metadata !DIExpression()), !dbg !3915
  call void @llvm.dbg.value(metadata ptr %0, metadata !3903, metadata !DIExpression()), !dbg !3915
  call void @llvm.dbg.value(metadata i64 %1, metadata !3904, metadata !DIExpression()), !dbg !3915
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3917
  ret ptr %3, !dbg !3918
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3919 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3923, metadata !DIExpression()), !dbg !3925
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3924, metadata !DIExpression()), !dbg !3925
  call void @llvm.dbg.value(metadata i32 %0, metadata !3902, metadata !DIExpression()), !dbg !3926
  call void @llvm.dbg.value(metadata ptr %1, metadata !3903, metadata !DIExpression()), !dbg !3926
  call void @llvm.dbg.value(metadata i64 -1, metadata !3904, metadata !DIExpression()), !dbg !3926
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3928
  ret ptr %3, !dbg !3929
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3930 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3934, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata i32 0, metadata !3923, metadata !DIExpression()), !dbg !3936
  call void @llvm.dbg.value(metadata ptr %0, metadata !3924, metadata !DIExpression()), !dbg !3936
  call void @llvm.dbg.value(metadata i32 0, metadata !3902, metadata !DIExpression()), !dbg !3938
  call void @llvm.dbg.value(metadata ptr %0, metadata !3903, metadata !DIExpression()), !dbg !3938
  call void @llvm.dbg.value(metadata i64 -1, metadata !3904, metadata !DIExpression()), !dbg !3938
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3940
  ret ptr %2, !dbg !3941
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i64 @safe_write(i32 noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3942 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3948, metadata !DIExpression()), !dbg !3957
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3949, metadata !DIExpression()), !dbg !3957
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3950, metadata !DIExpression()), !dbg !3957
  br label %4, !dbg !3958

4:                                                ; preds = %13, %3
  %5 = phi i64 [ 2146435072, %13 ], [ %2, %3 ]
  br label %6, !dbg !3959

6:                                                ; preds = %9, %4
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !3950, metadata !DIExpression()), !dbg !3957
  %7 = tail call i64 @write(i32 noundef %0, ptr noundef %1, i64 noundef %5) #41, !dbg !3960
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !3951, metadata !DIExpression()), !dbg !3961
  %8 = icmp sgt i64 %7, -1, !dbg !3962
  br i1 %8, label %17, label %9, !dbg !3959

9:                                                ; preds = %6
  %10 = tail call ptr @__errno_location() #44, !dbg !3964
  %11 = load i32, ptr %10, align 4, !dbg !3964, !tbaa !1065
  %12 = icmp eq i32 %11, 4, !dbg !3964
  br i1 %12, label %6, label %13, !dbg !3966, !llvm.loop !3967

13:                                               ; preds = %9
  %14 = icmp ne i32 %11, 22, !dbg !3970
  %15 = icmp slt i64 %5, 2146435073
  %16 = or i1 %15, %14, !dbg !3972
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !3950, metadata !DIExpression()), !dbg !3957
  br i1 %16, label %17, label %4

17:                                               ; preds = %13, %6
  ret i64 %7, !dbg !3973
}

; Function Attrs: nofree
declare !dbg !3974 noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3977 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4016, metadata !DIExpression()), !dbg !4022
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4017, metadata !DIExpression()), !dbg !4022
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4018, metadata !DIExpression()), !dbg !4022
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4019, metadata !DIExpression()), !dbg !4022
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4020, metadata !DIExpression()), !dbg !4022
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !4021, metadata !DIExpression()), !dbg !4022
  %7 = icmp eq ptr %1, null, !dbg !4023
  br i1 %7, label %10, label %8, !dbg !4025

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.105, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #41, !dbg !4026
  br label %12, !dbg !4026

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.106, ptr noundef %2, ptr noundef %3) #41, !dbg !4027
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.107, ptr noundef nonnull @.str.3.108, i32 noundef 5) #41, !dbg !4028
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #41, !dbg !4028
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.109, ptr noundef %0), !dbg !4029
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.107, ptr noundef nonnull @.str.5.110, i32 noundef 5) #41, !dbg !4030
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.111) #41, !dbg !4030
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.109, ptr noundef %0), !dbg !4031
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
  ], !dbg !4032

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.107, ptr noundef nonnull @.str.7.112, i32 noundef 5) #41, !dbg !4033
  %21 = load ptr, ptr %4, align 8, !dbg !4033, !tbaa !991
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #41, !dbg !4033
  br label %147, !dbg !4035

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.107, ptr noundef nonnull @.str.8.113, i32 noundef 5) #41, !dbg !4036
  %25 = load ptr, ptr %4, align 8, !dbg !4036, !tbaa !991
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4036
  %27 = load ptr, ptr %26, align 8, !dbg !4036, !tbaa !991
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #41, !dbg !4036
  br label %147, !dbg !4037

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.107, ptr noundef nonnull @.str.9.114, i32 noundef 5) #41, !dbg !4038
  %31 = load ptr, ptr %4, align 8, !dbg !4038, !tbaa !991
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4038
  %33 = load ptr, ptr %32, align 8, !dbg !4038, !tbaa !991
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4038
  %35 = load ptr, ptr %34, align 8, !dbg !4038, !tbaa !991
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #41, !dbg !4038
  br label %147, !dbg !4039

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.107, ptr noundef nonnull @.str.10.115, i32 noundef 5) #41, !dbg !4040
  %39 = load ptr, ptr %4, align 8, !dbg !4040, !tbaa !991
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4040
  %41 = load ptr, ptr %40, align 8, !dbg !4040, !tbaa !991
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4040
  %43 = load ptr, ptr %42, align 8, !dbg !4040, !tbaa !991
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4040
  %45 = load ptr, ptr %44, align 8, !dbg !4040, !tbaa !991
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #41, !dbg !4040
  br label %147, !dbg !4041

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.107, ptr noundef nonnull @.str.11.116, i32 noundef 5) #41, !dbg !4042
  %49 = load ptr, ptr %4, align 8, !dbg !4042, !tbaa !991
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4042
  %51 = load ptr, ptr %50, align 8, !dbg !4042, !tbaa !991
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4042
  %53 = load ptr, ptr %52, align 8, !dbg !4042, !tbaa !991
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4042
  %55 = load ptr, ptr %54, align 8, !dbg !4042, !tbaa !991
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4042
  %57 = load ptr, ptr %56, align 8, !dbg !4042, !tbaa !991
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #41, !dbg !4042
  br label %147, !dbg !4043

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.107, ptr noundef nonnull @.str.12.117, i32 noundef 5) #41, !dbg !4044
  %61 = load ptr, ptr %4, align 8, !dbg !4044, !tbaa !991
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4044
  %63 = load ptr, ptr %62, align 8, !dbg !4044, !tbaa !991
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4044
  %65 = load ptr, ptr %64, align 8, !dbg !4044, !tbaa !991
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4044
  %67 = load ptr, ptr %66, align 8, !dbg !4044, !tbaa !991
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4044
  %69 = load ptr, ptr %68, align 8, !dbg !4044, !tbaa !991
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4044
  %71 = load ptr, ptr %70, align 8, !dbg !4044, !tbaa !991
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #41, !dbg !4044
  br label %147, !dbg !4045

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.107, ptr noundef nonnull @.str.13.118, i32 noundef 5) #41, !dbg !4046
  %75 = load ptr, ptr %4, align 8, !dbg !4046, !tbaa !991
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4046
  %77 = load ptr, ptr %76, align 8, !dbg !4046, !tbaa !991
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4046
  %79 = load ptr, ptr %78, align 8, !dbg !4046, !tbaa !991
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4046
  %81 = load ptr, ptr %80, align 8, !dbg !4046, !tbaa !991
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4046
  %83 = load ptr, ptr %82, align 8, !dbg !4046, !tbaa !991
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4046
  %85 = load ptr, ptr %84, align 8, !dbg !4046, !tbaa !991
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4046
  %87 = load ptr, ptr %86, align 8, !dbg !4046, !tbaa !991
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #41, !dbg !4046
  br label %147, !dbg !4047

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.107, ptr noundef nonnull @.str.14.119, i32 noundef 5) #41, !dbg !4048
  %91 = load ptr, ptr %4, align 8, !dbg !4048, !tbaa !991
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4048
  %93 = load ptr, ptr %92, align 8, !dbg !4048, !tbaa !991
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4048
  %95 = load ptr, ptr %94, align 8, !dbg !4048, !tbaa !991
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4048
  %97 = load ptr, ptr %96, align 8, !dbg !4048, !tbaa !991
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4048
  %99 = load ptr, ptr %98, align 8, !dbg !4048, !tbaa !991
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4048
  %101 = load ptr, ptr %100, align 8, !dbg !4048, !tbaa !991
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4048
  %103 = load ptr, ptr %102, align 8, !dbg !4048, !tbaa !991
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4048
  %105 = load ptr, ptr %104, align 8, !dbg !4048, !tbaa !991
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #41, !dbg !4048
  br label %147, !dbg !4049

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.107, ptr noundef nonnull @.str.15.120, i32 noundef 5) #41, !dbg !4050
  %109 = load ptr, ptr %4, align 8, !dbg !4050, !tbaa !991
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4050
  %111 = load ptr, ptr %110, align 8, !dbg !4050, !tbaa !991
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4050
  %113 = load ptr, ptr %112, align 8, !dbg !4050, !tbaa !991
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4050
  %115 = load ptr, ptr %114, align 8, !dbg !4050, !tbaa !991
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4050
  %117 = load ptr, ptr %116, align 8, !dbg !4050, !tbaa !991
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4050
  %119 = load ptr, ptr %118, align 8, !dbg !4050, !tbaa !991
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4050
  %121 = load ptr, ptr %120, align 8, !dbg !4050, !tbaa !991
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4050
  %123 = load ptr, ptr %122, align 8, !dbg !4050, !tbaa !991
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4050
  %125 = load ptr, ptr %124, align 8, !dbg !4050, !tbaa !991
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #41, !dbg !4050
  br label %147, !dbg !4051

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.107, ptr noundef nonnull @.str.16.121, i32 noundef 5) #41, !dbg !4052
  %129 = load ptr, ptr %4, align 8, !dbg !4052, !tbaa !991
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4052
  %131 = load ptr, ptr %130, align 8, !dbg !4052, !tbaa !991
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4052
  %133 = load ptr, ptr %132, align 8, !dbg !4052, !tbaa !991
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4052
  %135 = load ptr, ptr %134, align 8, !dbg !4052, !tbaa !991
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4052
  %137 = load ptr, ptr %136, align 8, !dbg !4052, !tbaa !991
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4052
  %139 = load ptr, ptr %138, align 8, !dbg !4052, !tbaa !991
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4052
  %141 = load ptr, ptr %140, align 8, !dbg !4052, !tbaa !991
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4052
  %143 = load ptr, ptr %142, align 8, !dbg !4052, !tbaa !991
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4052
  %145 = load ptr, ptr %144, align 8, !dbg !4052, !tbaa !991
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #41, !dbg !4052
  br label %147, !dbg !4053

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4054
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !4055 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4059, metadata !DIExpression()), !dbg !4065
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4060, metadata !DIExpression()), !dbg !4065
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4061, metadata !DIExpression()), !dbg !4065
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4062, metadata !DIExpression()), !dbg !4065
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4063, metadata !DIExpression()), !dbg !4065
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4064, metadata !DIExpression()), !dbg !4065
  br label %6, !dbg !4066

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4068
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !4064, metadata !DIExpression()), !dbg !4065
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !4069
  %9 = load ptr, ptr %8, align 8, !dbg !4069, !tbaa !991
  %10 = icmp eq ptr %9, null, !dbg !4071
  %11 = add i64 %7, 1, !dbg !4072
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4064, metadata !DIExpression()), !dbg !4065
  br i1 %10, label %12, label %6, !dbg !4071, !llvm.loop !4073

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !4075
  ret void, !dbg !4076
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !4077 {
  %6 = alloca [10 x ptr], align 16, !DIAssignID !4096
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4094, metadata !DIExpression(), metadata !4096, metadata ptr %6, metadata !DIExpression()), !dbg !4097
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4088, metadata !DIExpression()), !dbg !4097
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4089, metadata !DIExpression()), !dbg !4097
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4090, metadata !DIExpression()), !dbg !4097
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4091, metadata !DIExpression()), !dbg !4097
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4092, metadata !DIExpression()), !dbg !4097
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #41, !dbg !4098
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4093, metadata !DIExpression()), !dbg !4097
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4093, metadata !DIExpression()), !dbg !4097
  %10 = icmp ult i32 %9, 41, !dbg !4099
  br i1 %10, label %11, label %16, !dbg !4099

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !4099
  %13 = zext nneg i32 %9 to i64, !dbg !4099
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !4099
  %15 = add nuw nsw i32 %9, 8, !dbg !4099
  store i32 %15, ptr %4, align 8, !dbg !4099
  br label %19, !dbg !4099

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !4099
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !4099
  store ptr %18, ptr %7, align 8, !dbg !4099
  br label %19, !dbg !4099

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !4099
  %22 = load ptr, ptr %21, align 8, !dbg !4099
  store ptr %22, ptr %6, align 16, !dbg !4102, !tbaa !991
  %23 = icmp eq ptr %22, null, !dbg !4103
  br i1 %23, label %128, label %24, !dbg !4104

24:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata i64 1, metadata !4093, metadata !DIExpression()), !dbg !4097
  tail call void @llvm.dbg.value(metadata i64 1, metadata !4093, metadata !DIExpression()), !dbg !4097
  %25 = icmp ult i32 %20, 41, !dbg !4099
  br i1 %25, label %29, label %26, !dbg !4099

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !4099
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !4099
  store ptr %28, ptr %7, align 8, !dbg !4099
  br label %34, !dbg !4099

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !4099
  %31 = zext nneg i32 %20 to i64, !dbg !4099
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !4099
  %33 = add nuw nsw i32 %20, 8, !dbg !4099
  store i32 %33, ptr %4, align 8, !dbg !4099
  br label %34, !dbg !4099

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !4099
  %37 = load ptr, ptr %36, align 8, !dbg !4099
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !4105
  store ptr %37, ptr %38, align 8, !dbg !4102, !tbaa !991
  %39 = icmp eq ptr %37, null, !dbg !4103
  br i1 %39, label %128, label %40, !dbg !4104

40:                                               ; preds = %34
  tail call void @llvm.dbg.value(metadata i64 2, metadata !4093, metadata !DIExpression()), !dbg !4097
  tail call void @llvm.dbg.value(metadata i64 2, metadata !4093, metadata !DIExpression()), !dbg !4097
  %41 = icmp ult i32 %35, 41, !dbg !4099
  br i1 %41, label %45, label %42, !dbg !4099

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !4099
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !4099
  store ptr %44, ptr %7, align 8, !dbg !4099
  br label %50, !dbg !4099

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !4099
  %47 = zext nneg i32 %35 to i64, !dbg !4099
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !4099
  %49 = add nuw nsw i32 %35, 8, !dbg !4099
  store i32 %49, ptr %4, align 8, !dbg !4099
  br label %50, !dbg !4099

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !4099
  %53 = load ptr, ptr %52, align 8, !dbg !4099
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !4105
  store ptr %53, ptr %54, align 16, !dbg !4102, !tbaa !991
  %55 = icmp eq ptr %53, null, !dbg !4103
  br i1 %55, label %128, label %56, !dbg !4104

56:                                               ; preds = %50
  tail call void @llvm.dbg.value(metadata i64 3, metadata !4093, metadata !DIExpression()), !dbg !4097
  tail call void @llvm.dbg.value(metadata i64 3, metadata !4093, metadata !DIExpression()), !dbg !4097
  %57 = icmp ult i32 %51, 41, !dbg !4099
  br i1 %57, label %61, label %58, !dbg !4099

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !4099
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !4099
  store ptr %60, ptr %7, align 8, !dbg !4099
  br label %66, !dbg !4099

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !4099
  %63 = zext nneg i32 %51 to i64, !dbg !4099
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !4099
  %65 = add nuw nsw i32 %51, 8, !dbg !4099
  store i32 %65, ptr %4, align 8, !dbg !4099
  br label %66, !dbg !4099

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !4099
  %69 = load ptr, ptr %68, align 8, !dbg !4099
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !4105
  store ptr %69, ptr %70, align 8, !dbg !4102, !tbaa !991
  %71 = icmp eq ptr %69, null, !dbg !4103
  br i1 %71, label %128, label %72, !dbg !4104

72:                                               ; preds = %66
  tail call void @llvm.dbg.value(metadata i64 4, metadata !4093, metadata !DIExpression()), !dbg !4097
  tail call void @llvm.dbg.value(metadata i64 4, metadata !4093, metadata !DIExpression()), !dbg !4097
  %73 = icmp ult i32 %67, 41, !dbg !4099
  br i1 %73, label %77, label %74, !dbg !4099

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !4099
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !4099
  store ptr %76, ptr %7, align 8, !dbg !4099
  br label %82, !dbg !4099

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !4099
  %79 = zext nneg i32 %67 to i64, !dbg !4099
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !4099
  %81 = add nuw nsw i32 %67, 8, !dbg !4099
  store i32 %81, ptr %4, align 8, !dbg !4099
  br label %82, !dbg !4099

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !4099
  %85 = load ptr, ptr %84, align 8, !dbg !4099
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !4105
  store ptr %85, ptr %86, align 16, !dbg !4102, !tbaa !991
  %87 = icmp eq ptr %85, null, !dbg !4103
  br i1 %87, label %128, label %88, !dbg !4104

88:                                               ; preds = %82
  tail call void @llvm.dbg.value(metadata i64 5, metadata !4093, metadata !DIExpression()), !dbg !4097
  tail call void @llvm.dbg.value(metadata i64 5, metadata !4093, metadata !DIExpression()), !dbg !4097
  %89 = icmp ult i32 %83, 41, !dbg !4099
  br i1 %89, label %93, label %90, !dbg !4099

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !4099
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !4099
  store ptr %92, ptr %7, align 8, !dbg !4099
  br label %98, !dbg !4099

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !4099
  %95 = zext nneg i32 %83 to i64, !dbg !4099
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !4099
  %97 = add nuw nsw i32 %83, 8, !dbg !4099
  store i32 %97, ptr %4, align 8, !dbg !4099
  br label %98, !dbg !4099

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !4099
  %100 = load ptr, ptr %99, align 8, !dbg !4099
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !4105
  store ptr %100, ptr %101, align 8, !dbg !4102, !tbaa !991
  %102 = icmp eq ptr %100, null, !dbg !4103
  br i1 %102, label %128, label %103, !dbg !4104

103:                                              ; preds = %98
  tail call void @llvm.dbg.value(metadata i64 6, metadata !4093, metadata !DIExpression()), !dbg !4097
  %104 = load ptr, ptr %7, align 8, !dbg !4099
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !4099
  store ptr %105, ptr %7, align 8, !dbg !4099
  %106 = load ptr, ptr %104, align 8, !dbg !4099
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !4105
  store ptr %106, ptr %107, align 16, !dbg !4102, !tbaa !991
  %108 = icmp eq ptr %106, null, !dbg !4103
  br i1 %108, label %128, label %109, !dbg !4104

109:                                              ; preds = %103
  tail call void @llvm.dbg.value(metadata i64 7, metadata !4093, metadata !DIExpression()), !dbg !4097
  %110 = load ptr, ptr %7, align 8, !dbg !4099
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !4099
  store ptr %111, ptr %7, align 8, !dbg !4099
  %112 = load ptr, ptr %110, align 8, !dbg !4099
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !4105
  store ptr %112, ptr %113, align 8, !dbg !4102, !tbaa !991
  %114 = icmp eq ptr %112, null, !dbg !4103
  br i1 %114, label %128, label %115, !dbg !4104

115:                                              ; preds = %109
  tail call void @llvm.dbg.value(metadata i64 8, metadata !4093, metadata !DIExpression()), !dbg !4097
  %116 = load ptr, ptr %7, align 8, !dbg !4099
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !4099
  store ptr %117, ptr %7, align 8, !dbg !4099
  %118 = load ptr, ptr %116, align 8, !dbg !4099
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !4105
  store ptr %118, ptr %119, align 16, !dbg !4102, !tbaa !991
  %120 = icmp eq ptr %118, null, !dbg !4103
  br i1 %120, label %128, label %121, !dbg !4104

121:                                              ; preds = %115
  tail call void @llvm.dbg.value(metadata i64 9, metadata !4093, metadata !DIExpression()), !dbg !4097
  %122 = load ptr, ptr %7, align 8, !dbg !4099
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !4099
  store ptr %123, ptr %7, align 8, !dbg !4099
  %124 = load ptr, ptr %122, align 8, !dbg !4099
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !4105
  store ptr %124, ptr %125, align 8, !dbg !4102, !tbaa !991
  %126 = icmp eq ptr %124, null, !dbg !4103
  %127 = select i1 %126, i64 9, i64 10, !dbg !4104
  br label %128, !dbg !4104

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !4106
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !4107
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #41, !dbg !4108
  ret void, !dbg !4108
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !4109 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !4122
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4117, metadata !DIExpression(), metadata !4122, metadata ptr %5, metadata !DIExpression()), !dbg !4123
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4113, metadata !DIExpression()), !dbg !4123
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4114, metadata !DIExpression()), !dbg !4123
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4115, metadata !DIExpression()), !dbg !4123
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4116, metadata !DIExpression()), !dbg !4123
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #41, !dbg !4124
  call void @llvm.va_start(ptr nonnull %5), !dbg !4125
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !4126
  call void @llvm.va_end(ptr nonnull %5), !dbg !4127
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #41, !dbg !4128
  ret void, !dbg !4128
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !4129 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !4130, !tbaa !991
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.109, ptr noundef %1), !dbg !4130
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.107, ptr noundef nonnull @.str.17.126, i32 noundef 5) #41, !dbg !4131
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.127) #41, !dbg !4131
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.107, ptr noundef nonnull @.str.19.128, i32 noundef 5) #41, !dbg !4132
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.129, ptr noundef nonnull @.str.21.130) #41, !dbg !4132
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.107, ptr noundef nonnull @.str.22.131, i32 noundef 5) #41, !dbg !4133
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.132) #41, !dbg !4133
  ret void, !dbg !4134
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xalignalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !4135 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4139, metadata !DIExpression()), !dbg !4142
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4140, metadata !DIExpression()), !dbg !4142
  call void @llvm.dbg.value(metadata i64 %0, metadata !4143, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata i64 %1, metadata !4147, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata i64 %0, metadata !4143, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata i64 %1, metadata !4147, metadata !DIExpression()), !dbg !4148
  %3 = tail call noalias ptr @aligned_alloc(i64 noundef %0, i64 noundef %1) #46, !dbg !4150
  call void @llvm.assume(i1 true) [ "align"(ptr %3, i64 %0) ], !dbg !4150
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4141, metadata !DIExpression()), !dbg !4142
  %4 = icmp eq ptr %3, null, !dbg !4151
  br i1 %4, label %5, label %6, !dbg !4153

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4154
  unreachable, !dbg !4154

6:                                                ; preds = %2
  ret ptr %3, !dbg !4155
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized,aligned") allocsize(1) memory(inaccessiblemem: readwrite)
declare !dbg !4156 noalias noundef ptr @aligned_alloc(i64 allocalign noundef, i64 noundef) local_unnamed_addr #30

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #31

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #32 !dbg !4159 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4164, metadata !DIExpression()), !dbg !4167
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4165, metadata !DIExpression()), !dbg !4167
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4166, metadata !DIExpression()), !dbg !4167
  call void @llvm.dbg.value(metadata ptr %0, metadata !4168, metadata !DIExpression()), !dbg !4173
  call void @llvm.dbg.value(metadata i64 %1, metadata !4171, metadata !DIExpression()), !dbg !4173
  call void @llvm.dbg.value(metadata i64 %2, metadata !4172, metadata !DIExpression()), !dbg !4173
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #41, !dbg !4175
  call void @llvm.dbg.value(metadata ptr %4, metadata !4176, metadata !DIExpression()), !dbg !4181
  %5 = icmp eq ptr %4, null, !dbg !4183
  br i1 %5, label %6, label %7, !dbg !4185

6:                                                ; preds = %3
  tail call void @xalloc_die() #43, !dbg !4186
  unreachable, !dbg !4186

7:                                                ; preds = %3
  ret ptr %4, !dbg !4187
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #33 !dbg !4169 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4168, metadata !DIExpression()), !dbg !4188
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4171, metadata !DIExpression()), !dbg !4188
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4172, metadata !DIExpression()), !dbg !4188
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #41, !dbg !4189
  call void @llvm.dbg.value(metadata ptr %4, metadata !4176, metadata !DIExpression()), !dbg !4190
  %5 = icmp eq ptr %4, null, !dbg !4192
  br i1 %5, label %6, label %7, !dbg !4193

6:                                                ; preds = %3
  tail call void @xalloc_die() #43, !dbg !4194
  unreachable, !dbg !4194

7:                                                ; preds = %3
  ret ptr %4, !dbg !4195
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #34 !dbg !4196 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4200, metadata !DIExpression()), !dbg !4201
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #48, !dbg !4202
  call void @llvm.dbg.value(metadata ptr %2, metadata !4176, metadata !DIExpression()), !dbg !4203
  %3 = icmp eq ptr %2, null, !dbg !4205
  br i1 %3, label %4, label %5, !dbg !4206

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4207
  unreachable, !dbg !4207

5:                                                ; preds = %1
  ret ptr %2, !dbg !4208
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !4209 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #35

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #34 !dbg !4210 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4214, metadata !DIExpression()), !dbg !4215
  call void @llvm.dbg.value(metadata i64 %0, metadata !4216, metadata !DIExpression()), !dbg !4220
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #48, !dbg !4222
  call void @llvm.dbg.value(metadata ptr %2, metadata !4176, metadata !DIExpression()), !dbg !4223
  %3 = icmp eq ptr %2, null, !dbg !4225
  br i1 %3, label %4, label %5, !dbg !4226

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4227
  unreachable, !dbg !4227

5:                                                ; preds = %1
  ret ptr %2, !dbg !4228
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #34 !dbg !4229 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4233, metadata !DIExpression()), !dbg !4234
  call void @llvm.dbg.value(metadata i64 %0, metadata !4200, metadata !DIExpression()), !dbg !4235
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #48, !dbg !4237
  call void @llvm.dbg.value(metadata ptr %2, metadata !4176, metadata !DIExpression()), !dbg !4238
  %3 = icmp eq ptr %2, null, !dbg !4240
  br i1 %3, label %4, label %5, !dbg !4241

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4242
  unreachable, !dbg !4242

5:                                                ; preds = %1
  ret ptr %2, !dbg !4243
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !4244 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4248, metadata !DIExpression()), !dbg !4250
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4249, metadata !DIExpression()), !dbg !4250
  call void @llvm.dbg.value(metadata ptr %0, metadata !4251, metadata !DIExpression()), !dbg !4256
  call void @llvm.dbg.value(metadata i64 %1, metadata !4255, metadata !DIExpression()), !dbg !4256
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4258
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #46, !dbg !4259
  call void @llvm.dbg.value(metadata ptr %4, metadata !4176, metadata !DIExpression()), !dbg !4260
  %5 = icmp eq ptr %4, null, !dbg !4262
  br i1 %5, label %6, label %7, !dbg !4263

6:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4264
  unreachable, !dbg !4264

7:                                                ; preds = %2
  ret ptr %4, !dbg !4265
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4266 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #36

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !4267 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4271, metadata !DIExpression()), !dbg !4273
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4272, metadata !DIExpression()), !dbg !4273
  call void @llvm.dbg.value(metadata ptr %0, metadata !4274, metadata !DIExpression()), !dbg !4278
  call void @llvm.dbg.value(metadata i64 %1, metadata !4277, metadata !DIExpression()), !dbg !4278
  call void @llvm.dbg.value(metadata ptr %0, metadata !4251, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata i64 %1, metadata !4255, metadata !DIExpression()), !dbg !4280
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4282
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #46, !dbg !4283
  call void @llvm.dbg.value(metadata ptr %4, metadata !4176, metadata !DIExpression()), !dbg !4284
  %5 = icmp eq ptr %4, null, !dbg !4286
  br i1 %5, label %6, label %7, !dbg !4287

6:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4288
  unreachable, !dbg !4288

7:                                                ; preds = %2
  ret ptr %4, !dbg !4289
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #33 !dbg !4290 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4294, metadata !DIExpression()), !dbg !4297
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4295, metadata !DIExpression()), !dbg !4297
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4296, metadata !DIExpression()), !dbg !4297
  call void @llvm.dbg.value(metadata ptr %0, metadata !4298, metadata !DIExpression()), !dbg !4303
  call void @llvm.dbg.value(metadata i64 %1, metadata !4301, metadata !DIExpression()), !dbg !4303
  call void @llvm.dbg.value(metadata i64 %2, metadata !4302, metadata !DIExpression()), !dbg !4303
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #41, !dbg !4305
  call void @llvm.dbg.value(metadata ptr %4, metadata !4176, metadata !DIExpression()), !dbg !4306
  %5 = icmp eq ptr %4, null, !dbg !4308
  br i1 %5, label %6, label %7, !dbg !4309

6:                                                ; preds = %3
  tail call void @xalloc_die() #43, !dbg !4310
  unreachable, !dbg !4310

7:                                                ; preds = %3
  ret ptr %4, !dbg !4311
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #37 !dbg !4312 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4314, metadata !DIExpression()), !dbg !4316
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4315, metadata !DIExpression()), !dbg !4316
  call void @llvm.dbg.value(metadata ptr null, metadata !4168, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.value(metadata i64 %0, metadata !4171, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.value(metadata i64 %1, metadata !4172, metadata !DIExpression()), !dbg !4317
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #41, !dbg !4319
  call void @llvm.dbg.value(metadata ptr %3, metadata !4176, metadata !DIExpression()), !dbg !4320
  %4 = icmp eq ptr %3, null, !dbg !4322
  br i1 %4, label %5, label %6, !dbg !4323

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4324
  unreachable, !dbg !4324

6:                                                ; preds = %2
  ret ptr %3, !dbg !4325
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #37 !dbg !4326 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4328, metadata !DIExpression()), !dbg !4330
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4329, metadata !DIExpression()), !dbg !4330
  call void @llvm.dbg.value(metadata ptr null, metadata !4294, metadata !DIExpression()), !dbg !4331
  call void @llvm.dbg.value(metadata i64 %0, metadata !4295, metadata !DIExpression()), !dbg !4331
  call void @llvm.dbg.value(metadata i64 %1, metadata !4296, metadata !DIExpression()), !dbg !4331
  call void @llvm.dbg.value(metadata ptr null, metadata !4298, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i64 %0, metadata !4301, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i64 %1, metadata !4302, metadata !DIExpression()), !dbg !4333
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #41, !dbg !4335
  call void @llvm.dbg.value(metadata ptr %3, metadata !4176, metadata !DIExpression()), !dbg !4336
  %4 = icmp eq ptr %3, null, !dbg !4338
  br i1 %4, label %5, label %6, !dbg !4339

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4340
  unreachable, !dbg !4340

6:                                                ; preds = %2
  ret ptr %3, !dbg !4341
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4342 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4346, metadata !DIExpression()), !dbg !4348
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4347, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata ptr %0, metadata !928, metadata !DIExpression()), !dbg !4349
  call void @llvm.dbg.value(metadata ptr %1, metadata !929, metadata !DIExpression()), !dbg !4349
  call void @llvm.dbg.value(metadata i64 1, metadata !930, metadata !DIExpression()), !dbg !4349
  %3 = load i64, ptr %1, align 8, !dbg !4351, !tbaa !3363
  call void @llvm.dbg.value(metadata i64 %3, metadata !931, metadata !DIExpression()), !dbg !4349
  %4 = icmp eq ptr %0, null, !dbg !4352
  br i1 %4, label %5, label %8, !dbg !4354

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4355
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4358
  br label %15, !dbg !4358

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4359
  %10 = add nuw i64 %9, 1, !dbg !4359
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4359
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4359
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4359
  call void @llvm.dbg.value(metadata i64 %13, metadata !931, metadata !DIExpression()), !dbg !4349
  br i1 %12, label %14, label %15, !dbg !4362

14:                                               ; preds = %8
  tail call void @xalloc_die() #43, !dbg !4363
  unreachable, !dbg !4363

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4349
  call void @llvm.dbg.value(metadata i64 %16, metadata !931, metadata !DIExpression()), !dbg !4349
  call void @llvm.dbg.value(metadata ptr %0, metadata !4168, metadata !DIExpression()), !dbg !4364
  call void @llvm.dbg.value(metadata i64 %16, metadata !4171, metadata !DIExpression()), !dbg !4364
  call void @llvm.dbg.value(metadata i64 1, metadata !4172, metadata !DIExpression()), !dbg !4364
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #41, !dbg !4366
  call void @llvm.dbg.value(metadata ptr %17, metadata !4176, metadata !DIExpression()), !dbg !4367
  %18 = icmp eq ptr %17, null, !dbg !4369
  br i1 %18, label %19, label %20, !dbg !4370

19:                                               ; preds = %15
  tail call void @xalloc_die() #43, !dbg !4371
  unreachable, !dbg !4371

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !928, metadata !DIExpression()), !dbg !4349
  store i64 %16, ptr %1, align 8, !dbg !4372, !tbaa !3363
  ret ptr %17, !dbg !4373
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !923 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !928, metadata !DIExpression()), !dbg !4374
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !929, metadata !DIExpression()), !dbg !4374
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !930, metadata !DIExpression()), !dbg !4374
  %4 = load i64, ptr %1, align 8, !dbg !4375, !tbaa !3363
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !931, metadata !DIExpression()), !dbg !4374
  %5 = icmp eq ptr %0, null, !dbg !4376
  br i1 %5, label %6, label %13, !dbg !4377

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4378
  br i1 %7, label %8, label %20, !dbg !4379

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4380
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !931, metadata !DIExpression()), !dbg !4374
  %10 = icmp ugt i64 %2, 128, !dbg !4382
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4383
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !931, metadata !DIExpression()), !dbg !4374
  br label %20, !dbg !4384

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4385
  %15 = add nuw i64 %14, 1, !dbg !4385
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4385
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4385
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4385
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !931, metadata !DIExpression()), !dbg !4374
  br i1 %17, label %19, label %20, !dbg !4386

19:                                               ; preds = %13
  tail call void @xalloc_die() #43, !dbg !4387
  unreachable, !dbg !4387

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4374
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !931, metadata !DIExpression()), !dbg !4374
  call void @llvm.dbg.value(metadata ptr %0, metadata !4168, metadata !DIExpression()), !dbg !4388
  call void @llvm.dbg.value(metadata i64 %21, metadata !4171, metadata !DIExpression()), !dbg !4388
  call void @llvm.dbg.value(metadata i64 %2, metadata !4172, metadata !DIExpression()), !dbg !4388
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #41, !dbg !4390
  call void @llvm.dbg.value(metadata ptr %22, metadata !4176, metadata !DIExpression()), !dbg !4391
  %23 = icmp eq ptr %22, null, !dbg !4393
  br i1 %23, label %24, label %25, !dbg !4394

24:                                               ; preds = %20
  tail call void @xalloc_die() #43, !dbg !4395
  unreachable, !dbg !4395

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !928, metadata !DIExpression()), !dbg !4374
  store i64 %21, ptr %1, align 8, !dbg !4396, !tbaa !3363
  ret ptr %22, !dbg !4397
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !935 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !942, metadata !DIExpression()), !dbg !4398
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !943, metadata !DIExpression()), !dbg !4398
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !944, metadata !DIExpression()), !dbg !4398
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !945, metadata !DIExpression()), !dbg !4398
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !946, metadata !DIExpression()), !dbg !4398
  %6 = load i64, ptr %1, align 8, !dbg !4399, !tbaa !3363
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !947, metadata !DIExpression()), !dbg !4398
  %7 = ashr i64 %6, 1, !dbg !4400
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4400
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4400
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4400
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !948, metadata !DIExpression()), !dbg !4398
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4402
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !948, metadata !DIExpression()), !dbg !4398
  %12 = icmp sgt i64 %3, -1, !dbg !4403
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !4405
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !4405
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !948, metadata !DIExpression()), !dbg !4398
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !4406
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !4406
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !4406
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !949, metadata !DIExpression()), !dbg !4398
  %18 = icmp slt i64 %17, 128, !dbg !4406
  %19 = select i1 %18, i64 128, i64 0, !dbg !4406
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !4406
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !950, metadata !DIExpression()), !dbg !4398
  %21 = icmp eq i64 %20, 0, !dbg !4407
  br i1 %21, label %26, label %22, !dbg !4409

22:                                               ; preds = %5
  %23 = sdiv i64 %20, %4, !dbg !4410
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !948, metadata !DIExpression()), !dbg !4398
  %24 = srem i64 %20, %4, !dbg !4412
  %25 = sub nsw i64 %20, %24, !dbg !4413
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !949, metadata !DIExpression()), !dbg !4398
  br label %26, !dbg !4414

26:                                               ; preds = %22, %5
  %27 = phi i64 [ %23, %22 ], [ %14, %5 ], !dbg !4398
  %28 = phi i64 [ %25, %22 ], [ %17, %5 ], !dbg !4398
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !949, metadata !DIExpression()), !dbg !4398
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !948, metadata !DIExpression()), !dbg !4398
  %29 = icmp eq ptr %0, null, !dbg !4415
  br i1 %29, label %30, label %31, !dbg !4417

30:                                               ; preds = %26
  store i64 0, ptr %1, align 8, !dbg !4418, !tbaa !3363
  br label %31, !dbg !4419

31:                                               ; preds = %30, %26
  %32 = sub nsw i64 %27, %6, !dbg !4420
  %33 = icmp slt i64 %32, %2, !dbg !4422
  br i1 %33, label %34, label %46, !dbg !4423

34:                                               ; preds = %31
  %35 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4424
  %36 = extractvalue { i64, i1 } %35, 1, !dbg !4424
  %37 = extractvalue { i64, i1 } %35, 0, !dbg !4424
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !948, metadata !DIExpression()), !dbg !4398
  %38 = icmp sgt i64 %37, %3
  %39 = select i1 %12, i1 %38, i1 false
  %40 = or i1 %36, %39, !dbg !4425
  br i1 %40, label %45, label %41, !dbg !4425

41:                                               ; preds = %34
  %42 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %37, i64 %4), !dbg !4426
  %43 = extractvalue { i64, i1 } %42, 1, !dbg !4426
  %44 = extractvalue { i64, i1 } %42, 0, !dbg !4426
  tail call void @llvm.dbg.value(metadata i64 %44, metadata !949, metadata !DIExpression()), !dbg !4398
  br i1 %43, label %45, label %46, !dbg !4427

45:                                               ; preds = %41, %34
  tail call void @xalloc_die() #43, !dbg !4428
  unreachable, !dbg !4428

46:                                               ; preds = %41, %31
  %47 = phi i64 [ %37, %41 ], [ %27, %31 ], !dbg !4398
  %48 = phi i64 [ %44, %41 ], [ %28, %31 ], !dbg !4398
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !949, metadata !DIExpression()), !dbg !4398
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !948, metadata !DIExpression()), !dbg !4398
  call void @llvm.dbg.value(metadata ptr %0, metadata !4248, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata i64 %48, metadata !4249, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata ptr %0, metadata !4251, metadata !DIExpression()), !dbg !4431
  call void @llvm.dbg.value(metadata i64 %48, metadata !4255, metadata !DIExpression()), !dbg !4431
  %49 = tail call i64 @llvm.umax.i64(i64 %48, i64 1), !dbg !4433
  %50 = tail call ptr @realloc(ptr noundef %0, i64 noundef %49) #46, !dbg !4434
  call void @llvm.dbg.value(metadata ptr %50, metadata !4176, metadata !DIExpression()), !dbg !4435
  %51 = icmp eq ptr %50, null, !dbg !4437
  br i1 %51, label %52, label %53, !dbg !4438

52:                                               ; preds = %46
  tail call void @xalloc_die() #43, !dbg !4439
  unreachable, !dbg !4439

53:                                               ; preds = %46
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !942, metadata !DIExpression()), !dbg !4398
  store i64 %47, ptr %1, align 8, !dbg !4440, !tbaa !3363
  ret ptr %50, !dbg !4441
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #34 !dbg !4442 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4444, metadata !DIExpression()), !dbg !4445
  call void @llvm.dbg.value(metadata i64 %0, metadata !4446, metadata !DIExpression()), !dbg !4450
  call void @llvm.dbg.value(metadata i64 1, metadata !4449, metadata !DIExpression()), !dbg !4450
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #49, !dbg !4452
  call void @llvm.dbg.value(metadata ptr %2, metadata !4176, metadata !DIExpression()), !dbg !4453
  %3 = icmp eq ptr %2, null, !dbg !4455
  br i1 %3, label %4, label %5, !dbg !4456

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4457
  unreachable, !dbg !4457

5:                                                ; preds = %1
  ret ptr %2, !dbg !4458
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4459 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #38

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #37 !dbg !4447 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4446, metadata !DIExpression()), !dbg !4460
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4449, metadata !DIExpression()), !dbg !4460
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #49, !dbg !4461
  call void @llvm.dbg.value(metadata ptr %3, metadata !4176, metadata !DIExpression()), !dbg !4462
  %4 = icmp eq ptr %3, null, !dbg !4464
  br i1 %4, label %5, label %6, !dbg !4465

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4466
  unreachable, !dbg !4466

6:                                                ; preds = %2
  ret ptr %3, !dbg !4467
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #34 !dbg !4468 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4470, metadata !DIExpression()), !dbg !4471
  call void @llvm.dbg.value(metadata i64 %0, metadata !4472, metadata !DIExpression()), !dbg !4476
  call void @llvm.dbg.value(metadata i64 1, metadata !4475, metadata !DIExpression()), !dbg !4476
  call void @llvm.dbg.value(metadata i64 %0, metadata !4478, metadata !DIExpression()), !dbg !4482
  call void @llvm.dbg.value(metadata i64 1, metadata !4481, metadata !DIExpression()), !dbg !4482
  call void @llvm.dbg.value(metadata i64 %0, metadata !4478, metadata !DIExpression()), !dbg !4482
  call void @llvm.dbg.value(metadata i64 1, metadata !4481, metadata !DIExpression()), !dbg !4482
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #49, !dbg !4484
  call void @llvm.dbg.value(metadata ptr %2, metadata !4176, metadata !DIExpression()), !dbg !4485
  %3 = icmp eq ptr %2, null, !dbg !4487
  br i1 %3, label %4, label %5, !dbg !4488

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4489
  unreachable, !dbg !4489

5:                                                ; preds = %1
  ret ptr %2, !dbg !4490
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #37 !dbg !4473 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4472, metadata !DIExpression()), !dbg !4491
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4475, metadata !DIExpression()), !dbg !4491
  call void @llvm.dbg.value(metadata i64 %0, metadata !4478, metadata !DIExpression()), !dbg !4492
  call void @llvm.dbg.value(metadata i64 %1, metadata !4481, metadata !DIExpression()), !dbg !4492
  call void @llvm.dbg.value(metadata i64 %0, metadata !4478, metadata !DIExpression()), !dbg !4492
  call void @llvm.dbg.value(metadata i64 %1, metadata !4481, metadata !DIExpression()), !dbg !4492
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #49, !dbg !4494
  call void @llvm.dbg.value(metadata ptr %3, metadata !4176, metadata !DIExpression()), !dbg !4495
  %4 = icmp eq ptr %3, null, !dbg !4497
  br i1 %4, label %5, label %6, !dbg !4498

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4499
  unreachable, !dbg !4499

6:                                                ; preds = %2
  ret ptr %3, !dbg !4500
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #29 !dbg !4501 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4505, metadata !DIExpression()), !dbg !4507
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4506, metadata !DIExpression()), !dbg !4507
  call void @llvm.dbg.value(metadata i64 %1, metadata !4200, metadata !DIExpression()), !dbg !4508
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #48, !dbg !4510
  call void @llvm.dbg.value(metadata ptr %3, metadata !4176, metadata !DIExpression()), !dbg !4511
  %4 = icmp eq ptr %3, null, !dbg !4513
  br i1 %4, label %5, label %6, !dbg !4514

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4515
  unreachable, !dbg !4515

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4516, metadata !DIExpression()), !dbg !4524
  call void @llvm.dbg.value(metadata ptr %0, metadata !4522, metadata !DIExpression()), !dbg !4524
  call void @llvm.dbg.value(metadata i64 %1, metadata !4523, metadata !DIExpression()), !dbg !4524
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #41, !dbg !4526
  ret ptr %3, !dbg !4527
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #29 !dbg !4528 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4532, metadata !DIExpression()), !dbg !4534
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4533, metadata !DIExpression()), !dbg !4534
  call void @llvm.dbg.value(metadata i64 %1, metadata !4214, metadata !DIExpression()), !dbg !4535
  call void @llvm.dbg.value(metadata i64 %1, metadata !4216, metadata !DIExpression()), !dbg !4537
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #48, !dbg !4539
  call void @llvm.dbg.value(metadata ptr %3, metadata !4176, metadata !DIExpression()), !dbg !4540
  %4 = icmp eq ptr %3, null, !dbg !4542
  br i1 %4, label %5, label %6, !dbg !4543

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4544
  unreachable, !dbg !4544

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4516, metadata !DIExpression()), !dbg !4545
  call void @llvm.dbg.value(metadata ptr %0, metadata !4522, metadata !DIExpression()), !dbg !4545
  call void @llvm.dbg.value(metadata i64 %1, metadata !4523, metadata !DIExpression()), !dbg !4545
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #41, !dbg !4547
  ret ptr %3, !dbg !4548
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4549 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4553, metadata !DIExpression()), !dbg !4556
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4554, metadata !DIExpression()), !dbg !4556
  %3 = add nsw i64 %1, 1, !dbg !4557
  call void @llvm.dbg.value(metadata i64 %3, metadata !4214, metadata !DIExpression()), !dbg !4558
  call void @llvm.dbg.value(metadata i64 %3, metadata !4216, metadata !DIExpression()), !dbg !4560
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #48, !dbg !4562
  call void @llvm.dbg.value(metadata ptr %4, metadata !4176, metadata !DIExpression()), !dbg !4563
  %5 = icmp eq ptr %4, null, !dbg !4565
  br i1 %5, label %6, label %7, !dbg !4566

6:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4567
  unreachable, !dbg !4567

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4555, metadata !DIExpression()), !dbg !4556
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4568
  store i8 0, ptr %8, align 1, !dbg !4569, !tbaa !1074
  call void @llvm.dbg.value(metadata ptr %4, metadata !4516, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata ptr %0, metadata !4522, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata i64 %1, metadata !4523, metadata !DIExpression()), !dbg !4570
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #41, !dbg !4572
  ret ptr %4, !dbg !4573
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4574 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4576, metadata !DIExpression()), !dbg !4577
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #42, !dbg !4578
  %3 = add i64 %2, 1, !dbg !4579
  call void @llvm.dbg.value(metadata ptr %0, metadata !4505, metadata !DIExpression()), !dbg !4580
  call void @llvm.dbg.value(metadata i64 %3, metadata !4506, metadata !DIExpression()), !dbg !4580
  call void @llvm.dbg.value(metadata i64 %3, metadata !4200, metadata !DIExpression()), !dbg !4582
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #48, !dbg !4584
  call void @llvm.dbg.value(metadata ptr %4, metadata !4176, metadata !DIExpression()), !dbg !4585
  %5 = icmp eq ptr %4, null, !dbg !4587
  br i1 %5, label %6, label %7, !dbg !4588

6:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4589
  unreachable, !dbg !4589

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4516, metadata !DIExpression()), !dbg !4590
  call void @llvm.dbg.value(metadata ptr %0, metadata !4522, metadata !DIExpression()), !dbg !4590
  call void @llvm.dbg.value(metadata i64 %3, metadata !4523, metadata !DIExpression()), !dbg !4590
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #41, !dbg !4592
  ret ptr %4, !dbg !4593
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4594 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4599, !tbaa !1065
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4596, metadata !DIExpression()), !dbg !4600
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.145, ptr noundef nonnull @.str.2.146, i32 noundef 5) #41, !dbg !4599
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.147, ptr noundef %2) #41, !dbg !4599
  %3 = icmp eq i32 %1, 0, !dbg !4599
  tail call void @llvm.assume(i1 %3), !dbg !4599
  tail call void @abort() #43, !dbg !4601
  unreachable, !dbg !4601
}

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !4602 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4640, metadata !DIExpression()), !dbg !4645
  %2 = tail call i64 @__fpending(ptr noundef %0) #41, !dbg !4646
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4641, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4645
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4647, metadata !DIExpression()), !dbg !4650
  %3 = load i32, ptr %0, align 8, !dbg !4652, !tbaa !4653
  %4 = and i32 %3, 32, !dbg !4654
  %5 = icmp eq i32 %4, 0, !dbg !4654
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !4643, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4645
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #41, !dbg !4655
  %7 = icmp eq i32 %6, 0, !dbg !4656
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !4644, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4645
  br i1 %5, label %8, label %18, !dbg !4657

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4659
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !4641, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4645
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4660
  %11 = xor i1 %7, true, !dbg !4660
  %12 = sext i1 %11 to i32, !dbg !4660
  br i1 %10, label %21, label %13, !dbg !4660

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #44, !dbg !4661
  %15 = load i32, ptr %14, align 4, !dbg !4661, !tbaa !1065
  %16 = icmp ne i32 %15, 9, !dbg !4662
  %17 = sext i1 %16 to i32, !dbg !4663
  br label %21, !dbg !4663

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4664

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #44, !dbg !4666
  store i32 0, ptr %20, align 4, !dbg !4668, !tbaa !1065
  br label %21, !dbg !4666

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4645
  ret i32 %22, !dbg !4669
}

; Function Attrs: nounwind
declare !dbg !4670 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !4673 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4711, metadata !DIExpression()), !dbg !4715
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4712, metadata !DIExpression()), !dbg !4715
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #41, !dbg !4716
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !4713, metadata !DIExpression()), !dbg !4715
  %3 = icmp slt i32 %2, 0, !dbg !4717
  br i1 %3, label %4, label %6, !dbg !4719

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4720
  br label %24, !dbg !4721

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #41, !dbg !4722
  %8 = icmp eq i32 %7, 0, !dbg !4722
  br i1 %8, label %13, label %9, !dbg !4724

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #41, !dbg !4725
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #41, !dbg !4726
  %12 = icmp eq i64 %11, -1, !dbg !4727
  br i1 %12, label %16, label %13, !dbg !4728

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #41, !dbg !4729
  %15 = icmp eq i32 %14, 0, !dbg !4729
  br i1 %15, label %16, label %18, !dbg !4730

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4712, metadata !DIExpression()), !dbg !4715
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4714, metadata !DIExpression()), !dbg !4715
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4731
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !4714, metadata !DIExpression()), !dbg !4715
  br label %24, !dbg !4732

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #44, !dbg !4733
  %20 = load i32, ptr %19, align 4, !dbg !4733, !tbaa !1065
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !4712, metadata !DIExpression()), !dbg !4715
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4714, metadata !DIExpression()), !dbg !4715
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4731
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !4714, metadata !DIExpression()), !dbg !4715
  %22 = icmp eq i32 %20, 0, !dbg !4734
  br i1 %22, label %24, label %23, !dbg !4732

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !4736, !tbaa !1065
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !4714, metadata !DIExpression()), !dbg !4715
  br label %24, !dbg !4738

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4715
  ret i32 %25, !dbg !4739
}

; Function Attrs: nofree nounwind
declare !dbg !4740 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !4741 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !4742 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4780, metadata !DIExpression()), !dbg !4781
  %2 = icmp eq ptr %0, null, !dbg !4782
  br i1 %2, label %6, label %3, !dbg !4784

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #41, !dbg !4785
  %5 = icmp eq i32 %4, 0, !dbg !4785
  br i1 %5, label %6, label %8, !dbg !4786

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !4787
  br label %16, !dbg !4788

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !4789, metadata !DIExpression()), !dbg !4794
  %9 = load i32, ptr %0, align 8, !dbg !4796, !tbaa !4653
  %10 = and i32 %9, 256, !dbg !4798
  %11 = icmp eq i32 %10, 0, !dbg !4798
  br i1 %11, label %14, label %12, !dbg !4799

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #41, !dbg !4800
  br label %14, !dbg !4800

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !4801
  br label %16, !dbg !4802

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !4781
  ret i32 %17, !dbg !4803
}

; Function Attrs: nofree nounwind
declare !dbg !4804 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !4805 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4843, metadata !DIExpression()), !dbg !4849
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4844, metadata !DIExpression()), !dbg !4849
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !4845, metadata !DIExpression()), !dbg !4849
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !4850
  %5 = load ptr, ptr %4, align 8, !dbg !4850, !tbaa !4851
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !4852
  %7 = load ptr, ptr %6, align 8, !dbg !4852, !tbaa !4853
  %8 = icmp eq ptr %5, %7, !dbg !4854
  br i1 %8, label %9, label %27, !dbg !4855

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !4856
  %11 = load ptr, ptr %10, align 8, !dbg !4856, !tbaa !2178
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !4857
  %13 = load ptr, ptr %12, align 8, !dbg !4857, !tbaa !4858
  %14 = icmp eq ptr %11, %13, !dbg !4859
  br i1 %14, label %15, label %27, !dbg !4860

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !4861
  %17 = load ptr, ptr %16, align 8, !dbg !4861, !tbaa !4862
  %18 = icmp eq ptr %17, null, !dbg !4863
  br i1 %18, label %19, label %27, !dbg !4864

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #41, !dbg !4865
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #41, !dbg !4866
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !4846, metadata !DIExpression()), !dbg !4867
  %22 = icmp eq i64 %21, -1, !dbg !4868
  br i1 %22, label %29, label %23, !dbg !4870

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !4871, !tbaa !4653
  %25 = and i32 %24, -17, !dbg !4871
  store i32 %25, ptr %0, align 8, !dbg !4871, !tbaa !4653
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !4872
  store i64 %21, ptr %26, align 8, !dbg !4873, !tbaa !4874
  br label %29, !dbg !4875

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4876
  br label %29, !dbg !4877

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !4849
  ret i32 %30, !dbg !4878
}

; Function Attrs: nofree nounwind
declare !dbg !4879 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4882 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4887, metadata !DIExpression()), !dbg !4892
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4888, metadata !DIExpression()), !dbg !4892
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4889, metadata !DIExpression()), !dbg !4892
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4890, metadata !DIExpression()), !dbg !4892
  %5 = icmp eq ptr %1, null, !dbg !4893
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4895
  %7 = select i1 %5, ptr @.str.158, ptr %1, !dbg !4895
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4895
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !4889, metadata !DIExpression()), !dbg !4892
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !4888, metadata !DIExpression()), !dbg !4892
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !4887, metadata !DIExpression()), !dbg !4892
  %9 = icmp eq ptr %3, null, !dbg !4896
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4898
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !4890, metadata !DIExpression()), !dbg !4892
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #41, !dbg !4899
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4891, metadata !DIExpression()), !dbg !4892
  %12 = icmp ult i64 %11, -3, !dbg !4900
  br i1 %12, label %13, label %17, !dbg !4902

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #42, !dbg !4903
  %15 = icmp eq i32 %14, 0, !dbg !4903
  br i1 %15, label %16, label %29, !dbg !4904

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4905, metadata !DIExpression()), !dbg !4910
  call void @llvm.dbg.value(metadata ptr %10, metadata !4912, metadata !DIExpression()), !dbg !4917
  call void @llvm.dbg.value(metadata i32 0, metadata !4915, metadata !DIExpression()), !dbg !4917
  call void @llvm.dbg.value(metadata i64 8, metadata !4916, metadata !DIExpression()), !dbg !4917
  store i64 0, ptr %10, align 1, !dbg !4919
  br label %29, !dbg !4920

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4921
  br i1 %18, label %19, label %20, !dbg !4923

19:                                               ; preds = %17
  tail call void @abort() #43, !dbg !4924
  unreachable, !dbg !4924

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4925

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #41, !dbg !4927
  br i1 %23, label %29, label %24, !dbg !4928

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4929
  br i1 %25, label %29, label %26, !dbg !4932

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4933, !tbaa !1074
  %28 = zext i8 %27 to i32, !dbg !4934
  store i32 %28, ptr %6, align 4, !dbg !4935, !tbaa !1065
  br label %29, !dbg !4936

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4892
  ret i64 %30, !dbg !4937
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4938 i32 @mbsinit(ptr noundef) local_unnamed_addr #39

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #40 !dbg !4944 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4946, metadata !DIExpression()), !dbg !4950
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4947, metadata !DIExpression()), !dbg !4950
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4948, metadata !DIExpression()), !dbg !4950
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !4951
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !4951
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !4949, metadata !DIExpression()), !dbg !4950
  br i1 %5, label %6, label %8, !dbg !4953

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #44, !dbg !4954
  store i32 12, ptr %7, align 4, !dbg !4956, !tbaa !1065
  br label %12, !dbg !4957

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !4951
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !4949, metadata !DIExpression()), !dbg !4950
  call void @llvm.dbg.value(metadata ptr %0, metadata !4958, metadata !DIExpression()), !dbg !4962
  call void @llvm.dbg.value(metadata i64 %9, metadata !4961, metadata !DIExpression()), !dbg !4962
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !4964
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #46, !dbg !4965
  br label %12, !dbg !4966

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !4950
  ret ptr %13, !dbg !4967
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4968 {
  %2 = alloca [257 x i8], align 16, !DIAssignID !4977
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4973, metadata !DIExpression(), metadata !4977, metadata ptr %2, metadata !DIExpression()), !dbg !4978
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4972, metadata !DIExpression()), !dbg !4978
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #41, !dbg !4979
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #41, !dbg !4980
  %4 = icmp eq i32 %3, 0, !dbg !4980
  br i1 %4, label %5, label %12, !dbg !4982

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4983, metadata !DIExpression()), !dbg !4987
  call void @llvm.dbg.value(metadata !1033, metadata !4986, metadata !DIExpression()), !dbg !4987
  %6 = load i16, ptr %2, align 16, !dbg !4990
  %7 = icmp eq i16 %6, 67, !dbg !4990
  br i1 %7, label %11, label %8, !dbg !4991

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4983, metadata !DIExpression()), !dbg !4992
  call void @llvm.dbg.value(metadata ptr @.str.1.163, metadata !4986, metadata !DIExpression()), !dbg !4992
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.163, i64 6), !dbg !4994
  %10 = icmp eq i32 %9, 0, !dbg !4995
  br i1 %10, label %11, label %12, !dbg !4996

11:                                               ; preds = %8, %5
  br label %12, !dbg !4997

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4978
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #41, !dbg !4998
  ret i1 %13, !dbg !4998
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4999 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5003, metadata !DIExpression()), !dbg !5006
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5004, metadata !DIExpression()), !dbg !5006
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5005, metadata !DIExpression()), !dbg !5006
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #41, !dbg !5007
  ret i32 %4, !dbg !5008
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !5009 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5013, metadata !DIExpression()), !dbg !5014
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #41, !dbg !5015
  ret ptr %2, !dbg !5016
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !5017 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5019, metadata !DIExpression()), !dbg !5021
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #41, !dbg !5022
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !5020, metadata !DIExpression()), !dbg !5021
  ret ptr %2, !dbg !5023
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5024 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5026, metadata !DIExpression()), !dbg !5033
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5027, metadata !DIExpression()), !dbg !5033
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5028, metadata !DIExpression()), !dbg !5033
  call void @llvm.dbg.value(metadata i32 %0, metadata !5019, metadata !DIExpression()), !dbg !5034
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #41, !dbg !5036
  call void @llvm.dbg.value(metadata ptr %4, metadata !5020, metadata !DIExpression()), !dbg !5034
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !5029, metadata !DIExpression()), !dbg !5033
  %5 = icmp eq ptr %4, null, !dbg !5037
  br i1 %5, label %6, label %9, !dbg !5038

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5039
  br i1 %7, label %19, label %8, !dbg !5042

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !5043, !tbaa !1074
  br label %19, !dbg !5044

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #42, !dbg !5045
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !5030, metadata !DIExpression()), !dbg !5046
  %11 = icmp ult i64 %10, %2, !dbg !5047
  br i1 %11, label %12, label %14, !dbg !5049

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5050
  call void @llvm.dbg.value(metadata ptr %1, metadata !5052, metadata !DIExpression()), !dbg !5057
  call void @llvm.dbg.value(metadata ptr %4, metadata !5055, metadata !DIExpression()), !dbg !5057
  call void @llvm.dbg.value(metadata i64 %13, metadata !5056, metadata !DIExpression()), !dbg !5057
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #41, !dbg !5059
  br label %19, !dbg !5060

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5061
  br i1 %15, label %19, label %16, !dbg !5064

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5065
  call void @llvm.dbg.value(metadata ptr %1, metadata !5052, metadata !DIExpression()), !dbg !5067
  call void @llvm.dbg.value(metadata ptr %4, metadata !5055, metadata !DIExpression()), !dbg !5067
  call void @llvm.dbg.value(metadata i64 %17, metadata !5056, metadata !DIExpression()), !dbg !5067
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #41, !dbg !5069
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !5070
  store i8 0, ptr %18, align 1, !dbg !5071, !tbaa !1074
  br label %19, !dbg !5072

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5073
  ret i32 %20, !dbg !5074
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
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree nounwind willreturn memory(argmem: read) }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nounwind allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized,aligned") allocsize(1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #32 = { inlinehint nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { nounwind allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #41 = { nounwind }
attributes #42 = { nounwind willreturn memory(read) }
attributes #43 = { noreturn nounwind }
attributes #44 = { nounwind willreturn memory(none) }
attributes #45 = { noreturn }
attributes #46 = { nounwind allocsize(1) }
attributes #47 = { cold }
attributes #48 = { nounwind allocsize(0) }
attributes #49 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!89, !545, !549, !890, !564, !858, !895, !619, !900, !902, !905, !633, !647, !698, !907, !910, !852, !917, !919, !952, !954, !956, !958, !960, !874, !962, !964, !968, !970}
!llvm.ident = !{!972, !972, !972, !972, !972, !972, !972, !972, !972, !972, !972, !972, !972, !972, !972, !972, !972, !972, !972, !972, !972, !972, !972, !972, !972, !972, !972, !972, !972}
!llvm.module.flags = !{!973, !974, !975, !976, !977, !978, !979}

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
!82 = distinct !DIGlobalVariable(name: "long_options", scope: !83, file: !2, line: 566, type: !529, isLocal: true, isDefinition: true)
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
!289 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !291, line: 49, size: 1728, elements: !292)
!291 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
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
!314 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
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
!452 = !{!453, !454, !455, !456, !491, !492, !493, !494, !495, !496, !497, !498, !499, !504, !505, !506, !507, !508, !509, !511, !512, !513, !518, !521, !522, !525, !527, !528}
!453 = !DILocalVariable(name: "argc", arg: 1, scope: !83, file: !2, line: 550, type: !86)
!454 = !DILocalVariable(name: "argv", arg: 2, scope: !83, file: !2, line: 550, type: !87)
!455 = !DILocalVariable(name: "have_read_stdin", scope: !83, file: !2, line: 553, type: !274)
!456 = !DILocalVariable(name: "ostat_buf", scope: !83, file: !2, line: 555, type: !457)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !458, line: 26, size: 1152, elements: !459)
!458 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "3ba283bc334370fe631cbc82f5229ed7")
!459 = !{!460, !462, !464, !466, !468, !470, !472, !473, !474, !475, !477, !479, !487, !488, !489}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !457, file: !458, line: 31, baseType: !461, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !314, line: 145, baseType: !148)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !457, file: !458, line: 36, baseType: !463, size: 64, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !314, line: 148, baseType: !148)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !457, file: !458, line: 44, baseType: !465, size: 64, offset: 128)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !314, line: 151, baseType: !148)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !457, file: !458, line: 45, baseType: !467, size: 32, offset: 192)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !314, line: 150, baseType: !98)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !457, file: !458, line: 47, baseType: !469, size: 32, offset: 224)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !314, line: 146, baseType: !98)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !457, file: !458, line: 48, baseType: !471, size: 32, offset: 256)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !314, line: 147, baseType: !98)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !457, file: !458, line: 50, baseType: !86, size: 32, offset: 288)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !457, file: !458, line: 52, baseType: !461, size: 64, offset: 320)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !457, file: !458, line: 57, baseType: !313, size: 64, offset: 384)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !457, file: !458, line: 61, baseType: !476, size: 64, offset: 448)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !314, line: 175, baseType: !315)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !457, file: !458, line: 63, baseType: !478, size: 64, offset: 512)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !314, line: 180, baseType: !315)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !457, file: !458, line: 74, baseType: !480, size: 128, offset: 576)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !481, line: 11, size: 128, elements: !482)
!481 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!482 = !{!483, !485}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !480, file: !481, line: 16, baseType: !484, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !314, line: 160, baseType: !315)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !480, file: !481, line: 21, baseType: !486, size: 64, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !314, line: 197, baseType: !315)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !457, file: !458, line: 75, baseType: !480, size: 128, offset: 704)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !457, file: !458, line: 76, baseType: !480, size: 128, offset: 832)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !457, file: !458, line: 89, baseType: !490, size: 192, offset: 960)
!490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !486, size: 192, elements: !239)
!491 = !DILocalVariable(name: "number", scope: !83, file: !2, line: 558, type: !274)
!492 = !DILocalVariable(name: "number_nonblank", scope: !83, file: !2, line: 559, type: !274)
!493 = !DILocalVariable(name: "squeeze_blank", scope: !83, file: !2, line: 560, type: !274)
!494 = !DILocalVariable(name: "show_ends", scope: !83, file: !2, line: 561, type: !274)
!495 = !DILocalVariable(name: "show_nonprinting", scope: !83, file: !2, line: 562, type: !274)
!496 = !DILocalVariable(name: "show_tabs", scope: !83, file: !2, line: 563, type: !274)
!497 = !DILocalVariable(name: "file_open_mode", scope: !83, file: !2, line: 564, type: !86)
!498 = !DILocalVariable(name: "c", scope: !83, file: !2, line: 594, type: !86)
!499 = !DILocalVariable(name: "outsize", scope: !83, file: !2, line: 660, type: !500)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !501, line: 130, baseType: !502)
!501 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !503, line: 18, baseType: !315)
!503 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!504 = !DILocalVariable(name: "out_flags", scope: !83, file: !2, line: 663, type: !86)
!505 = !DILocalVariable(name: "out_isreg", scope: !83, file: !2, line: 666, type: !274)
!506 = !DILocalVariable(name: "argind", scope: !83, file: !2, line: 677, type: !86)
!507 = !DILocalVariable(name: "ok", scope: !83, file: !2, line: 678, type: !274)
!508 = !DILocalVariable(name: "page_size", scope: !83, file: !2, line: 679, type: !500)
!509 = !DILocalVariable(name: "reading_stdin", scope: !510, file: !2, line: 686, type: !274)
!510 = distinct !DILexicalBlock(scope: !83, file: !2, line: 682, column: 5)
!511 = !DILocalVariable(name: "istat_buf", scope: !510, file: !2, line: 705, type: !457)
!512 = !DILocalVariable(name: "insize", scope: !510, file: !2, line: 714, type: !500)
!513 = !DILocalVariable(name: "in_pos", scope: !514, file: !2, line: 727, type: !516)
!514 = distinct !DILexicalBlock(scope: !515, file: !2, line: 726, column: 9)
!515 = distinct !DILexicalBlock(scope: !510, file: !2, line: 722, column: 11)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !517, line: 63, baseType: !313)
!517 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!518 = !DILocalVariable(name: "whence", scope: !519, file: !2, line: 732, type: !86)
!519 = distinct !DILexicalBlock(scope: !520, file: !2, line: 729, column: 13)
!520 = distinct !DILexicalBlock(scope: !514, file: !2, line: 728, column: 15)
!521 = !DILocalVariable(name: "inbuf", scope: !510, file: !2, line: 745, type: !88)
!522 = !DILocalVariable(name: "copy_cat_status", scope: !523, file: !2, line: 754, type: !86)
!523 = distinct !DILexicalBlock(scope: !524, file: !2, line: 753, column: 9)
!524 = distinct !DILexicalBlock(scope: !510, file: !2, line: 751, column: 11)
!525 = !DILocalVariable(name: "bufsize", scope: !526, file: !2, line: 794, type: !500)
!526 = distinct !DILexicalBlock(scope: !524, file: !2, line: 769, column: 9)
!527 = !DILocalVariable(name: "outbuf", scope: !526, file: !2, line: 799, type: !88)
!528 = !DILabel(scope: !510, name: "contin", file: !2, line: 810)
!529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !530, size: 2560, elements: !176)
!530 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !531)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !532, line: 50, size: 256, elements: !533)
!532 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!533 = !{!534, !535, !536, !538}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !531, file: !532, line: 52, baseType: !149, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !531, file: !532, line: 55, baseType: !86, size: 32, offset: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !531, file: !532, line: 56, baseType: !537, size: 64, offset: 128)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !531, file: !532, line: 57, baseType: !86, size: 32, offset: 192)
!539 = !DIGlobalVariableExpression(var: !449, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!540 = !DIGlobalVariableExpression(var: !541, expr: !DIExpression())
!541 = distinct !DIGlobalVariable(scope: null, file: !542, line: 3, type: !392, isLocal: true, isDefinition: true)
!542 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!543 = !DIGlobalVariableExpression(var: !544, expr: !DIExpression())
!544 = distinct !DIGlobalVariable(name: "Version", scope: !545, file: !542, line: 3, type: !149, isLocal: false, isDefinition: true)
!545 = distinct !DICompileUnit(language: DW_LANG_C11, file: !542, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/version.o -MD -MP -MF src/.deps/version.Tpo -c src/version.c -o src/.version.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !546, splitDebugInlining: false, nameTableKind: None)
!546 = !{!540, !543}
!547 = !DIGlobalVariableExpression(var: !548, expr: !DIExpression())
!548 = distinct !DIGlobalVariable(name: "file_name", scope: !549, file: !550, line: 45, type: !149, isLocal: true, isDefinition: true)
!549 = distinct !DICompileUnit(language: DW_LANG_C11, file: !550, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-closeout.o -MD -MP -MF lib/.deps/libcoreutils_a-closeout.Tpo -c lib/closeout.c -o lib/.libcoreutils_a-closeout.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !551, splitDebugInlining: false, nameTableKind: None)
!550 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!551 = !{!552, !554, !556, !558, !547, !560}
!552 = !DIGlobalVariableExpression(var: !553, expr: !DIExpression())
!553 = distinct !DIGlobalVariable(scope: null, file: !550, line: 121, type: !160, isLocal: true, isDefinition: true)
!554 = !DIGlobalVariableExpression(var: !555, expr: !DIExpression())
!555 = distinct !DIGlobalVariable(scope: null, file: !550, line: 121, type: !433, isLocal: true, isDefinition: true)
!556 = !DIGlobalVariableExpression(var: !557, expr: !DIExpression())
!557 = distinct !DIGlobalVariable(scope: null, file: !550, line: 123, type: !160, isLocal: true, isDefinition: true)
!558 = !DIGlobalVariableExpression(var: !559, expr: !DIExpression())
!559 = distinct !DIGlobalVariable(scope: null, file: !550, line: 126, type: !238, isLocal: true, isDefinition: true)
!560 = !DIGlobalVariableExpression(var: !561, expr: !DIExpression())
!561 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !549, file: !550, line: 55, type: !274, isLocal: true, isDefinition: true)
!562 = !DIGlobalVariableExpression(var: !563, expr: !DIExpression())
!563 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !564, file: !565, line: 66, type: !610, isLocal: false, isDefinition: true)
!564 = distinct !DICompileUnit(language: DW_LANG_C11, file: !565, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !566, globals: !567, splitDebugInlining: false, nameTableKind: None)
!565 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!566 = !{!144, !151}
!567 = !{!568, !570, !589, !591, !593, !595, !562, !597, !599, !601, !603, !608}
!568 = !DIGlobalVariableExpression(var: !569, expr: !DIExpression())
!569 = distinct !DIGlobalVariable(scope: null, file: !565, line: 272, type: !187, isLocal: true, isDefinition: true)
!570 = !DIGlobalVariableExpression(var: !571, expr: !DIExpression())
!571 = distinct !DIGlobalVariable(name: "old_file_name", scope: !572, file: !565, line: 304, type: !149, isLocal: true, isDefinition: true)
!572 = distinct !DISubprogram(name: "verror_at_line", scope: !565, file: !565, line: 298, type: !573, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !564, retainedNodes: !582)
!573 = !DISubroutineType(types: !574)
!574 = !{null, !86, !86, !149, !98, !149, !575}
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !577)
!577 = !{!578, !579, !580, !581}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !576, file: !565, baseType: !98, size: 32)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !576, file: !565, baseType: !98, size: 32, offset: 32)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !576, file: !565, baseType: !144, size: 64, offset: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !576, file: !565, baseType: !144, size: 64, offset: 128)
!582 = !{!583, !584, !585, !586, !587, !588}
!583 = !DILocalVariable(name: "status", arg: 1, scope: !572, file: !565, line: 298, type: !86)
!584 = !DILocalVariable(name: "errnum", arg: 2, scope: !572, file: !565, line: 298, type: !86)
!585 = !DILocalVariable(name: "file_name", arg: 3, scope: !572, file: !565, line: 298, type: !149)
!586 = !DILocalVariable(name: "line_number", arg: 4, scope: !572, file: !565, line: 298, type: !98)
!587 = !DILocalVariable(name: "message", arg: 5, scope: !572, file: !565, line: 298, type: !149)
!588 = !DILocalVariable(name: "args", arg: 6, scope: !572, file: !565, line: 298, type: !575)
!589 = !DIGlobalVariableExpression(var: !590, expr: !DIExpression())
!590 = distinct !DIGlobalVariable(name: "old_line_number", scope: !572, file: !565, line: 305, type: !98, isLocal: true, isDefinition: true)
!591 = !DIGlobalVariableExpression(var: !592, expr: !DIExpression())
!592 = distinct !DIGlobalVariable(scope: null, file: !565, line: 338, type: !19, isLocal: true, isDefinition: true)
!593 = !DIGlobalVariableExpression(var: !594, expr: !DIExpression())
!594 = distinct !DIGlobalVariable(scope: null, file: !565, line: 346, type: !192, isLocal: true, isDefinition: true)
!595 = !DIGlobalVariableExpression(var: !596, expr: !DIExpression())
!596 = distinct !DIGlobalVariable(scope: null, file: !565, line: 346, type: !233, isLocal: true, isDefinition: true)
!597 = !DIGlobalVariableExpression(var: !598, expr: !DIExpression())
!598 = distinct !DIGlobalVariable(name: "error_message_count", scope: !564, file: !565, line: 69, type: !98, isLocal: false, isDefinition: true)
!599 = !DIGlobalVariableExpression(var: !600, expr: !DIExpression())
!600 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !564, file: !565, line: 295, type: !86, isLocal: false, isDefinition: true)
!601 = !DIGlobalVariableExpression(var: !602, expr: !DIExpression())
!602 = distinct !DIGlobalVariable(scope: null, file: !565, line: 208, type: !160, isLocal: true, isDefinition: true)
!603 = !DIGlobalVariableExpression(var: !604, expr: !DIExpression())
!604 = distinct !DIGlobalVariable(scope: null, file: !565, line: 208, type: !605, isLocal: true, isDefinition: true)
!605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !606)
!606 = !{!607}
!607 = !DISubrange(count: 21)
!608 = !DIGlobalVariableExpression(var: !609, expr: !DIExpression())
!609 = distinct !DIGlobalVariable(scope: null, file: !565, line: 214, type: !187, isLocal: true, isDefinition: true)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DISubroutineType(types: !612)
!612 = !{null}
!613 = !DIGlobalVariableExpression(var: !614, expr: !DIExpression())
!614 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !615, file: !616, line: 506, type: !86, isLocal: true, isDefinition: true)
!615 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD_CLOEXEC", scope: !616, file: !616, line: 485, type: !617, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !619, retainedNodes: !621)
!616 = !DIFile(filename: "lib/fcntl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "bc4606a0e1e86be6126be7481cbd2f8d")
!617 = !DISubroutineType(types: !618)
!618 = !{!86, !86, !86}
!619 = distinct !DICompileUnit(language: DW_LANG_C11, file: !616, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fcntl.o -MD -MP -MF lib/.deps/libcoreutils_a-fcntl.Tpo -c lib/fcntl.c -o lib/.libcoreutils_a-fcntl.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !620, splitDebugInlining: false, nameTableKind: None)
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
!632 = distinct !DIGlobalVariable(name: "program_name", scope: !633, file: !634, line: 31, type: !149, isLocal: false, isDefinition: true)
!633 = distinct !DICompileUnit(language: DW_LANG_C11, file: !634, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !635, globals: !636, splitDebugInlining: false, nameTableKind: None)
!634 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!635 = !{!144, !88}
!636 = !{!631, !637, !639}
!637 = !DIGlobalVariableExpression(var: !638, expr: !DIExpression())
!638 = distinct !DIGlobalVariable(scope: null, file: !634, line: 46, type: !192, isLocal: true, isDefinition: true)
!639 = !DIGlobalVariableExpression(var: !640, expr: !DIExpression())
!640 = distinct !DIGlobalVariable(scope: null, file: !634, line: 49, type: !19, isLocal: true, isDefinition: true)
!641 = !DIGlobalVariableExpression(var: !642, expr: !DIExpression())
!642 = distinct !DIGlobalVariable(name: "utf07FF", scope: !643, file: !644, line: 46, type: !671, isLocal: true, isDefinition: true)
!643 = distinct !DISubprogram(name: "proper_name_lite", scope: !644, file: !644, line: 38, type: !645, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !647, retainedNodes: !649)
!644 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!645 = !DISubroutineType(types: !646)
!646 = !{!149, !149, !149}
!647 = distinct !DICompileUnit(language: DW_LANG_C11, file: !644, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !648, splitDebugInlining: false, nameTableKind: None)
!648 = !{!641}
!649 = !{!650, !651, !652, !653, !658}
!650 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !643, file: !644, line: 38, type: !149)
!651 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !643, file: !644, line: 38, type: !149)
!652 = !DILocalVariable(name: "translation", scope: !643, file: !644, line: 40, type: !149)
!653 = !DILocalVariable(name: "w", scope: !643, file: !644, line: 47, type: !654)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !655, line: 37, baseType: !656)
!655 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !314, line: 57, baseType: !657)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !314, line: 42, baseType: !98)
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
!671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 16, elements: !234)
!672 = !DIGlobalVariableExpression(var: !673, expr: !DIExpression())
!673 = distinct !DIGlobalVariable(scope: null, file: !674, line: 78, type: !192, isLocal: true, isDefinition: true)
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
!685 = distinct !DIGlobalVariable(scope: null, file: !674, line: 82, type: !226, isLocal: true, isDefinition: true)
!686 = !DIGlobalVariableExpression(var: !687, expr: !DIExpression())
!687 = distinct !DIGlobalVariable(scope: null, file: !674, line: 83, type: !233, isLocal: true, isDefinition: true)
!688 = !DIGlobalVariableExpression(var: !689, expr: !DIExpression())
!689 = distinct !DIGlobalVariable(scope: null, file: !674, line: 84, type: !192, isLocal: true, isDefinition: true)
!690 = !DIGlobalVariableExpression(var: !691, expr: !DIExpression())
!691 = distinct !DIGlobalVariable(scope: null, file: !674, line: 85, type: !160, isLocal: true, isDefinition: true)
!692 = !DIGlobalVariableExpression(var: !693, expr: !DIExpression())
!693 = distinct !DIGlobalVariable(scope: null, file: !674, line: 86, type: !160, isLocal: true, isDefinition: true)
!694 = !DIGlobalVariableExpression(var: !695, expr: !DIExpression())
!695 = distinct !DIGlobalVariable(scope: null, file: !674, line: 87, type: !192, isLocal: true, isDefinition: true)
!696 = !DIGlobalVariableExpression(var: !697, expr: !DIExpression())
!697 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !698, file: !674, line: 76, type: !772, isLocal: false, isDefinition: true)
!698 = distinct !DICompileUnit(language: DW_LANG_C11, file: !674, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !699, retainedTypes: !707, globals: !708, splitDebugInlining: false, nameTableKind: None)
!699 = !{!700, !702, !120}
!700 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !701, line: 42, baseType: !98, size: 32, elements: !99)
!701 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!702 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !701, line: 254, baseType: !98, size: 32, elements: !703)
!703 = !{!704, !705, !706}
!704 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!705 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!706 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!707 = !{!144, !86, !145, !146}
!708 = !{!672, !675, !677, !682, !684, !686, !688, !690, !692, !694, !696, !709, !713, !723, !725, !730, !732, !734, !736, !738, !761, !768, !770}
!709 = !DIGlobalVariableExpression(var: !710, expr: !DIExpression())
!710 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !698, file: !674, line: 92, type: !711, isLocal: false, isDefinition: true)
!711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !712, size: 320, elements: !176)
!712 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !700)
!713 = !DIGlobalVariableExpression(var: !714, expr: !DIExpression())
!714 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !698, file: !674, line: 1040, type: !715, isLocal: false, isDefinition: true)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !674, line: 56, size: 448, elements: !716)
!716 = !{!717, !718, !719, !721, !722}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !715, file: !674, line: 59, baseType: !700, size: 32)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !715, file: !674, line: 62, baseType: !86, size: 32, offset: 32)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !715, file: !674, line: 66, baseType: !720, size: 256, offset: 64)
!720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 256, elements: !193)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !715, file: !674, line: 69, baseType: !149, size: 64, offset: 320)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !715, file: !674, line: 72, baseType: !149, size: 64, offset: 384)
!723 = !DIGlobalVariableExpression(var: !724, expr: !DIExpression())
!724 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !698, file: !674, line: 107, type: !715, isLocal: true, isDefinition: true)
!725 = !DIGlobalVariableExpression(var: !726, expr: !DIExpression())
!726 = distinct !DIGlobalVariable(name: "slot0", scope: !698, file: !674, line: 831, type: !727, isLocal: true, isDefinition: true)
!727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !728)
!728 = !{!729}
!729 = !DISubrange(count: 256)
!730 = !DIGlobalVariableExpression(var: !731, expr: !DIExpression())
!731 = distinct !DIGlobalVariable(scope: null, file: !674, line: 321, type: !233, isLocal: true, isDefinition: true)
!732 = !DIGlobalVariableExpression(var: !733, expr: !DIExpression())
!733 = distinct !DIGlobalVariable(scope: null, file: !674, line: 357, type: !233, isLocal: true, isDefinition: true)
!734 = !DIGlobalVariableExpression(var: !735, expr: !DIExpression())
!735 = distinct !DIGlobalVariable(scope: null, file: !674, line: 358, type: !233, isLocal: true, isDefinition: true)
!736 = !DIGlobalVariableExpression(var: !737, expr: !DIExpression())
!737 = distinct !DIGlobalVariable(scope: null, file: !674, line: 199, type: !160, isLocal: true, isDefinition: true)
!738 = !DIGlobalVariableExpression(var: !739, expr: !DIExpression())
!739 = distinct !DIGlobalVariable(name: "quote", scope: !740, file: !674, line: 228, type: !759, isLocal: true, isDefinition: true)
!740 = distinct !DISubprogram(name: "gettext_quote", scope: !674, file: !674, line: 197, type: !741, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !743)
!741 = !DISubroutineType(types: !742)
!742 = !{!149, !149, !700}
!743 = !{!744, !745, !746, !747, !748}
!744 = !DILocalVariable(name: "msgid", arg: 1, scope: !740, file: !674, line: 197, type: !149)
!745 = !DILocalVariable(name: "s", arg: 2, scope: !740, file: !674, line: 197, type: !700)
!746 = !DILocalVariable(name: "translation", scope: !740, file: !674, line: 199, type: !149)
!747 = !DILocalVariable(name: "w", scope: !740, file: !674, line: 229, type: !654)
!748 = !DILocalVariable(name: "mbs", scope: !740, file: !674, line: 230, type: !749)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !660, line: 6, baseType: !750)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !662, line: 21, baseType: !751)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !662, line: 13, size: 64, elements: !752)
!752 = !{!753, !754}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !751, file: !662, line: 15, baseType: !86, size: 32)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !751, file: !662, line: 20, baseType: !755, size: 32, offset: 32)
!755 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !751, file: !662, line: 16, size: 32, elements: !756)
!756 = !{!757, !758}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !755, file: !662, line: 18, baseType: !98, size: 32)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !755, file: !662, line: 19, baseType: !19, size: 32)
!759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 64, elements: !760)
!760 = !{!235, !21}
!761 = !DIGlobalVariableExpression(var: !762, expr: !DIExpression())
!762 = distinct !DIGlobalVariable(name: "slotvec", scope: !698, file: !674, line: 834, type: !763, isLocal: true, isDefinition: true)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !674, line: 823, size: 128, elements: !765)
!765 = !{!766, !767}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !764, file: !674, line: 825, baseType: !146, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !764, file: !674, line: 826, baseType: !88, size: 64, offset: 64)
!768 = !DIGlobalVariableExpression(var: !769, expr: !DIExpression())
!769 = distinct !DIGlobalVariable(name: "nslots", scope: !698, file: !674, line: 832, type: !86, isLocal: true, isDefinition: true)
!770 = !DIGlobalVariableExpression(var: !771, expr: !DIExpression())
!771 = distinct !DIGlobalVariable(name: "slotvec0", scope: !698, file: !674, line: 833, type: !764, isLocal: true, isDefinition: true)
!772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !773, size: 704, elements: !210)
!773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!774 = !DIGlobalVariableExpression(var: !775, expr: !DIExpression())
!775 = distinct !DIGlobalVariable(scope: null, file: !776, line: 67, type: !433, isLocal: true, isDefinition: true)
!776 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!777 = !DIGlobalVariableExpression(var: !778, expr: !DIExpression())
!778 = distinct !DIGlobalVariable(scope: null, file: !776, line: 69, type: !160, isLocal: true, isDefinition: true)
!779 = !DIGlobalVariableExpression(var: !780, expr: !DIExpression())
!780 = distinct !DIGlobalVariable(scope: null, file: !776, line: 83, type: !160, isLocal: true, isDefinition: true)
!781 = !DIGlobalVariableExpression(var: !782, expr: !DIExpression())
!782 = distinct !DIGlobalVariable(scope: null, file: !776, line: 83, type: !19, isLocal: true, isDefinition: true)
!783 = !DIGlobalVariableExpression(var: !784, expr: !DIExpression())
!784 = distinct !DIGlobalVariable(scope: null, file: !776, line: 85, type: !233, isLocal: true, isDefinition: true)
!785 = !DIGlobalVariableExpression(var: !786, expr: !DIExpression())
!786 = distinct !DIGlobalVariable(scope: null, file: !776, line: 88, type: !787, isLocal: true, isDefinition: true)
!787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !788)
!788 = !{!789}
!789 = !DISubrange(count: 171)
!790 = !DIGlobalVariableExpression(var: !791, expr: !DIExpression())
!791 = distinct !DIGlobalVariable(scope: null, file: !776, line: 88, type: !792, isLocal: true, isDefinition: true)
!792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !793)
!793 = !{!794}
!794 = !DISubrange(count: 34)
!795 = !DIGlobalVariableExpression(var: !796, expr: !DIExpression())
!796 = distinct !DIGlobalVariable(scope: null, file: !776, line: 105, type: !155, isLocal: true, isDefinition: true)
!797 = !DIGlobalVariableExpression(var: !798, expr: !DIExpression())
!798 = distinct !DIGlobalVariable(scope: null, file: !776, line: 109, type: !250, isLocal: true, isDefinition: true)
!799 = !DIGlobalVariableExpression(var: !800, expr: !DIExpression())
!800 = distinct !DIGlobalVariable(scope: null, file: !776, line: 113, type: !801, isLocal: true, isDefinition: true)
!801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !802)
!802 = !{!803}
!803 = !DISubrange(count: 28)
!804 = !DIGlobalVariableExpression(var: !805, expr: !DIExpression())
!805 = distinct !DIGlobalVariable(scope: null, file: !776, line: 120, type: !806, isLocal: true, isDefinition: true)
!806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !807)
!807 = !{!808}
!808 = !DISubrange(count: 32)
!809 = !DIGlobalVariableExpression(var: !810, expr: !DIExpression())
!810 = distinct !DIGlobalVariable(scope: null, file: !776, line: 127, type: !811, isLocal: true, isDefinition: true)
!811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !812)
!812 = !{!813}
!813 = !DISubrange(count: 36)
!814 = !DIGlobalVariableExpression(var: !815, expr: !DIExpression())
!815 = distinct !DIGlobalVariable(scope: null, file: !776, line: 134, type: !387, isLocal: true, isDefinition: true)
!816 = !DIGlobalVariableExpression(var: !817, expr: !DIExpression())
!817 = distinct !DIGlobalVariable(scope: null, file: !776, line: 142, type: !818, isLocal: true, isDefinition: true)
!818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !819)
!819 = !{!820}
!820 = !DISubrange(count: 44)
!821 = !DIGlobalVariableExpression(var: !822, expr: !DIExpression())
!822 = distinct !DIGlobalVariable(scope: null, file: !776, line: 150, type: !823, isLocal: true, isDefinition: true)
!823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !824)
!824 = !{!825}
!825 = !DISubrange(count: 48)
!826 = !DIGlobalVariableExpression(var: !827, expr: !DIExpression())
!827 = distinct !DIGlobalVariable(scope: null, file: !776, line: 159, type: !44, isLocal: true, isDefinition: true)
!828 = !DIGlobalVariableExpression(var: !829, expr: !DIExpression())
!829 = distinct !DIGlobalVariable(scope: null, file: !776, line: 170, type: !830, isLocal: true, isDefinition: true)
!830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !831)
!831 = !{!832}
!832 = !DISubrange(count: 60)
!833 = !DIGlobalVariableExpression(var: !834, expr: !DIExpression())
!834 = distinct !DIGlobalVariable(scope: null, file: !776, line: 248, type: !226, isLocal: true, isDefinition: true)
!835 = !DIGlobalVariableExpression(var: !836, expr: !DIExpression())
!836 = distinct !DIGlobalVariable(scope: null, file: !776, line: 248, type: !412, isLocal: true, isDefinition: true)
!837 = !DIGlobalVariableExpression(var: !838, expr: !DIExpression())
!838 = distinct !DIGlobalVariable(scope: null, file: !776, line: 254, type: !226, isLocal: true, isDefinition: true)
!839 = !DIGlobalVariableExpression(var: !840, expr: !DIExpression())
!840 = distinct !DIGlobalVariable(scope: null, file: !776, line: 254, type: !165, isLocal: true, isDefinition: true)
!841 = !DIGlobalVariableExpression(var: !842, expr: !DIExpression())
!842 = distinct !DIGlobalVariable(scope: null, file: !776, line: 254, type: !387, isLocal: true, isDefinition: true)
!843 = !DIGlobalVariableExpression(var: !844, expr: !DIExpression())
!844 = distinct !DIGlobalVariable(scope: null, file: !776, line: 259, type: !3, isLocal: true, isDefinition: true)
!845 = !DIGlobalVariableExpression(var: !846, expr: !DIExpression())
!846 = distinct !DIGlobalVariable(scope: null, file: !776, line: 259, type: !847, isLocal: true, isDefinition: true)
!847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !848)
!848 = !{!849}
!849 = !DISubrange(count: 29)
!850 = !DIGlobalVariableExpression(var: !851, expr: !DIExpression())
!851 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !852, file: !853, line: 26, type: !855, isLocal: false, isDefinition: true)
!852 = distinct !DICompileUnit(language: DW_LANG_C11, file: !853, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !854, splitDebugInlining: false, nameTableKind: None)
!853 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!854 = !{!850}
!855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 376, elements: !25)
!856 = !DIGlobalVariableExpression(var: !857, expr: !DIExpression())
!857 = distinct !DIGlobalVariable(name: "exit_failure", scope: !858, file: !859, line: 24, type: !861, isLocal: false, isDefinition: true)
!858 = distinct !DICompileUnit(language: DW_LANG_C11, file: !859, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !860, splitDebugInlining: false, nameTableKind: None)
!859 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!860 = !{!856}
!861 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !86)
!862 = !DIGlobalVariableExpression(var: !863, expr: !DIExpression())
!863 = distinct !DIGlobalVariable(scope: null, file: !864, line: 34, type: !238, isLocal: true, isDefinition: true)
!864 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!865 = !DIGlobalVariableExpression(var: !866, expr: !DIExpression())
!866 = distinct !DIGlobalVariable(scope: null, file: !864, line: 34, type: !160, isLocal: true, isDefinition: true)
!867 = !DIGlobalVariableExpression(var: !868, expr: !DIExpression())
!868 = distinct !DIGlobalVariable(scope: null, file: !864, line: 34, type: !170, isLocal: true, isDefinition: true)
!869 = !DIGlobalVariableExpression(var: !870, expr: !DIExpression())
!870 = distinct !DIGlobalVariable(scope: null, file: !871, line: 108, type: !197, isLocal: true, isDefinition: true)
!871 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!872 = !DIGlobalVariableExpression(var: !873, expr: !DIExpression())
!873 = distinct !DIGlobalVariable(name: "internal_state", scope: !874, file: !871, line: 97, type: !877, isLocal: true, isDefinition: true)
!874 = distinct !DICompileUnit(language: DW_LANG_C11, file: !871, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !875, globals: !876, splitDebugInlining: false, nameTableKind: None)
!875 = !{!144, !146, !151}
!876 = !{!869, !872}
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !660, line: 6, baseType: !878)
!878 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !662, line: 21, baseType: !879)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !662, line: 13, size: 64, elements: !880)
!880 = !{!881, !882}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !879, file: !662, line: 15, baseType: !86, size: 32)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !879, file: !662, line: 20, baseType: !883, size: 32, offset: 32)
!883 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !879, file: !662, line: 16, size: 32, elements: !884)
!884 = !{!885, !886}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !883, file: !662, line: 18, baseType: !98, size: 32)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !883, file: !662, line: 19, baseType: !19, size: 32)
!887 = !DIGlobalVariableExpression(var: !888, expr: !DIExpression())
!888 = distinct !DIGlobalVariable(scope: null, file: !889, line: 35, type: !350, isLocal: true, isDefinition: true)
!889 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!890 = distinct !DICompileUnit(language: DW_LANG_C11, file: !891, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-copy-file-range.o -MD -MP -MF lib/.deps/libcoreutils_a-copy-file-range.Tpo -c lib/copy-file-range.c -o lib/.libcoreutils_a-copy-file-range.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !892, splitDebugInlining: false, nameTableKind: None)
!891 = !DIFile(filename: "lib/copy-file-range.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6733a97916f50c6b003a01ea6f4c9f0a")
!892 = !{!893}
!893 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !894, line: 36, baseType: !98, size: 32, elements: !141)
!894 = !DIFile(filename: "lib/sys-limits.h", directory: "/src", checksumkind: CSK_MD5, checksum: "6cbf2bea168df2a7bb951ccec5cf6fff")
!895 = distinct !DICompileUnit(language: DW_LANG_C11, file: !896, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fadvise.o -MD -MP -MF lib/.deps/libcoreutils_a-fadvise.Tpo -c lib/fadvise.c -o lib/.libcoreutils_a-fadvise.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !897, splitDebugInlining: false, nameTableKind: None)
!896 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!897 = !{!898}
!898 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !899, line: 44, baseType: !98, size: 32, elements: !113)
!899 = !DIFile(filename: "lib/fadvise.h", directory: "/src", checksumkind: CSK_MD5, checksum: "8bbfadd819a4efc4455fc2741023266a")
!900 = distinct !DICompileUnit(language: DW_LANG_C11, file: !901, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fpurge.o -MD -MP -MF lib/.deps/libcoreutils_a-fpurge.Tpo -c lib/fpurge.c -o lib/.libcoreutils_a-fpurge.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!901 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!902 = distinct !DICompileUnit(language: DW_LANG_C11, file: !903, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-full-write.o -MD -MP -MF lib/.deps/libcoreutils_a-full-write.Tpo -c lib/full-write.c -o lib/.libcoreutils_a-full-write.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !904, splitDebugInlining: false, nameTableKind: None)
!903 = !DIFile(filename: "lib/full-write.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3e4d1fbb34cc594bb17b421b58eed3ca")
!904 = !{!149}
!905 = distinct !DICompileUnit(language: DW_LANG_C11, file: !906, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!906 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!907 = distinct !DICompileUnit(language: DW_LANG_C11, file: !908, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-safe-write.o -MD -MP -MF lib/.deps/libcoreutils_a-safe-write.Tpo -c lib/safe-write.c -o lib/.libcoreutils_a-safe-write.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !892, retainedTypes: !909, splitDebugInlining: false, nameTableKind: None)
!908 = !DIFile(filename: "lib/safe-write.c", directory: "/src", checksumkind: CSK_MD5, checksum: "868d9fdfbe37109ce7387a63f56e5cc3")
!909 = !{!146}
!910 = distinct !DICompileUnit(language: DW_LANG_C11, file: !776, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !911, retainedTypes: !915, globals: !916, splitDebugInlining: false, nameTableKind: None)
!911 = !{!912}
!912 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !776, line: 40, baseType: !98, size: 32, elements: !913)
!913 = !{!914}
!914 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!915 = !{!144}
!916 = !{!774, !777, !779, !781, !783, !785, !790, !795, !797, !799, !804, !809, !814, !816, !821, !826, !828, !833, !835, !837, !839, !841, !843, !845}
!917 = distinct !DICompileUnit(language: DW_LANG_C11, file: !918, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalignalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xalignalloc.Tpo -c lib/xalignalloc.c -o lib/.libcoreutils_a-xalignalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !909, splitDebugInlining: false, nameTableKind: None)
!918 = !DIFile(filename: "lib/xalignalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3b950fafb945919ba44141bc7f11141c")
!919 = distinct !DICompileUnit(language: DW_LANG_C11, file: !920, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !921, retainedTypes: !951, splitDebugInlining: false, nameTableKind: None)
!920 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!921 = !{!922, !934}
!922 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !923, file: !920, line: 188, baseType: !98, size: 32, elements: !932)
!923 = distinct !DISubprogram(name: "x2nrealloc", scope: !920, file: !920, line: 176, type: !924, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !919, retainedNodes: !927)
!924 = !DISubroutineType(types: !925)
!925 = !{!144, !144, !926, !146}
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!927 = !{!928, !929, !930, !931}
!928 = !DILocalVariable(name: "p", arg: 1, scope: !923, file: !920, line: 176, type: !144)
!929 = !DILocalVariable(name: "pn", arg: 2, scope: !923, file: !920, line: 176, type: !926)
!930 = !DILocalVariable(name: "s", arg: 3, scope: !923, file: !920, line: 176, type: !146)
!931 = !DILocalVariable(name: "n", scope: !923, file: !920, line: 178, type: !146)
!932 = !{!933}
!933 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!934 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !935, file: !920, line: 228, baseType: !98, size: 32, elements: !932)
!935 = distinct !DISubprogram(name: "xpalloc", scope: !920, file: !920, line: 223, type: !936, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !919, retainedNodes: !941)
!936 = !DISubroutineType(types: !937)
!937 = !{!144, !144, !938, !939, !502, !939}
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !940, line: 130, baseType: !502)
!940 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!941 = !{!942, !943, !944, !945, !946, !947, !948, !949, !950}
!942 = !DILocalVariable(name: "pa", arg: 1, scope: !935, file: !920, line: 223, type: !144)
!943 = !DILocalVariable(name: "pn", arg: 2, scope: !935, file: !920, line: 223, type: !938)
!944 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !935, file: !920, line: 223, type: !939)
!945 = !DILocalVariable(name: "n_max", arg: 4, scope: !935, file: !920, line: 223, type: !502)
!946 = !DILocalVariable(name: "s", arg: 5, scope: !935, file: !920, line: 223, type: !939)
!947 = !DILocalVariable(name: "n0", scope: !935, file: !920, line: 230, type: !939)
!948 = !DILocalVariable(name: "n", scope: !935, file: !920, line: 237, type: !939)
!949 = !DILocalVariable(name: "nbytes", scope: !935, file: !920, line: 248, type: !939)
!950 = !DILocalVariable(name: "adjusted_nbytes", scope: !935, file: !920, line: 252, type: !939)
!951 = !{!88, !144}
!952 = distinct !DICompileUnit(language: DW_LANG_C11, file: !864, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !953, splitDebugInlining: false, nameTableKind: None)
!953 = !{!862, !865, !867}
!954 = distinct !DICompileUnit(language: DW_LANG_C11, file: !955, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!955 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!956 = distinct !DICompileUnit(language: DW_LANG_C11, file: !957, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!957 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!958 = distinct !DICompileUnit(language: DW_LANG_C11, file: !959, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !915, splitDebugInlining: false, nameTableKind: None)
!959 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!960 = distinct !DICompileUnit(language: DW_LANG_C11, file: !961, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !915, splitDebugInlining: false, nameTableKind: None)
!961 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!962 = distinct !DICompileUnit(language: DW_LANG_C11, file: !963, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !915, splitDebugInlining: false, nameTableKind: None)
!963 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!964 = distinct !DICompileUnit(language: DW_LANG_C11, file: !889, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !965, splitDebugInlining: false, nameTableKind: None)
!965 = !{!966, !887}
!966 = !DIGlobalVariableExpression(var: !967, expr: !DIExpression())
!967 = distinct !DIGlobalVariable(scope: null, file: !889, line: 35, type: !233, isLocal: true, isDefinition: true)
!968 = distinct !DICompileUnit(language: DW_LANG_C11, file: !969, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!969 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!970 = distinct !DICompileUnit(language: DW_LANG_C11, file: !971, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !915, splitDebugInlining: false, nameTableKind: None)
!971 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!972 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!973 = !{i32 7, !"Dwarf Version", i32 5}
!974 = !{i32 2, !"Debug Info Version", i32 3}
!975 = !{i32 1, !"wchar_size", i32 4}
!976 = !{i32 8, !"PIC Level", i32 2}
!977 = !{i32 7, !"PIE Level", i32 2}
!978 = !{i32 7, !"uwtable", i32 2}
!979 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!980 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 83, type: !981, scopeLine: 84, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !983)
!981 = !DISubroutineType(types: !982)
!982 = !{null, !86}
!983 = !{!984}
!984 = !DILocalVariable(name: "status", arg: 1, scope: !980, file: !2, line: 83, type: !86)
!985 = !DILocation(line: 0, scope: !980)
!986 = !DILocation(line: 85, column: 14, scope: !987)
!987 = distinct !DILexicalBlock(scope: !980, file: !2, line: 85, column: 7)
!988 = !DILocation(line: 85, column: 7, scope: !980)
!989 = !DILocation(line: 86, column: 5, scope: !990)
!990 = distinct !DILexicalBlock(scope: !987, file: !2, line: 86, column: 5)
!991 = !{!992, !992, i64 0}
!992 = !{!"any pointer", !993, i64 0}
!993 = !{!"omnipotent char", !994, i64 0}
!994 = !{!"Simple C/C++ TBAA"}
!995 = !DILocation(line: 89, column: 7, scope: !996)
!996 = distinct !DILexicalBlock(scope: !987, file: !2, line: 88, column: 5)
!997 = !DILocation(line: 93, column: 7, scope: !996)
!998 = !DILocation(line: 729, column: 3, scope: !999, inlinedAt: !1000)
!999 = distinct !DISubprogram(name: "emit_stdin_note", scope: !92, file: !92, line: 727, type: !611, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89)
!1000 = distinct !DILocation(line: 97, column: 7, scope: !996)
!1001 = !DILocation(line: 99, column: 7, scope: !996)
!1002 = !DILocation(line: 102, column: 7, scope: !996)
!1003 = !DILocation(line: 105, column: 7, scope: !996)
!1004 = !DILocation(line: 108, column: 7, scope: !996)
!1005 = !DILocation(line: 111, column: 7, scope: !996)
!1006 = !DILocation(line: 114, column: 7, scope: !996)
!1007 = !DILocation(line: 117, column: 7, scope: !996)
!1008 = !DILocation(line: 120, column: 7, scope: !996)
!1009 = !DILocation(line: 123, column: 7, scope: !996)
!1010 = !DILocation(line: 126, column: 7, scope: !996)
!1011 = !DILocation(line: 129, column: 7, scope: !996)
!1012 = !DILocation(line: 130, column: 7, scope: !996)
!1013 = !DILocation(line: 131, column: 7, scope: !996)
!1014 = !DILocalVariable(name: "program", arg: 1, scope: !1015, file: !92, line: 836, type: !149)
!1015 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !92, file: !92, line: 836, type: !1016, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1018)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{null, !149}
!1018 = !{!1014, !1019, !1026, !1027, !1029, !1030}
!1019 = !DILocalVariable(name: "infomap", scope: !1015, file: !92, line: 838, type: !1020)
!1020 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1021, size: 896, elements: !161)
!1021 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1022)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1015, file: !92, line: 838, size: 128, elements: !1023)
!1023 = !{!1024, !1025}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1022, file: !92, line: 838, baseType: !149, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1022, file: !92, line: 838, baseType: !149, size: 64, offset: 64)
!1026 = !DILocalVariable(name: "node", scope: !1015, file: !92, line: 848, type: !149)
!1027 = !DILocalVariable(name: "map_prog", scope: !1015, file: !92, line: 849, type: !1028)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1029 = !DILocalVariable(name: "lc_messages", scope: !1015, file: !92, line: 861, type: !149)
!1030 = !DILocalVariable(name: "url_program", scope: !1015, file: !92, line: 874, type: !149)
!1031 = !DILocation(line: 0, scope: !1015, inlinedAt: !1032)
!1032 = distinct !DILocation(line: 138, column: 7, scope: !996)
!1033 = !{}
!1034 = !DILocation(line: 857, column: 3, scope: !1015, inlinedAt: !1032)
!1035 = !DILocation(line: 861, column: 29, scope: !1015, inlinedAt: !1032)
!1036 = !DILocation(line: 862, column: 7, scope: !1037, inlinedAt: !1032)
!1037 = distinct !DILexicalBlock(scope: !1015, file: !92, line: 862, column: 7)
!1038 = !DILocation(line: 862, column: 19, scope: !1037, inlinedAt: !1032)
!1039 = !DILocation(line: 862, column: 22, scope: !1037, inlinedAt: !1032)
!1040 = !DILocation(line: 862, column: 7, scope: !1015, inlinedAt: !1032)
!1041 = !DILocation(line: 868, column: 7, scope: !1042, inlinedAt: !1032)
!1042 = distinct !DILexicalBlock(scope: !1037, file: !92, line: 863, column: 5)
!1043 = !DILocation(line: 870, column: 5, scope: !1042, inlinedAt: !1032)
!1044 = !DILocation(line: 875, column: 3, scope: !1015, inlinedAt: !1032)
!1045 = !DILocation(line: 877, column: 3, scope: !1015, inlinedAt: !1032)
!1046 = !DILocation(line: 140, column: 3, scope: !980)
!1047 = !DISubprogram(name: "dcgettext", scope: !1048, file: !1048, line: 51, type: !1049, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1048 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!88, !149, !149, !86}
!1051 = !DISubprogram(name: "__fprintf_chk", scope: !1052, file: !1052, line: 93, type: !1053, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1052 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!86, !1055, !86, !1056, null}
!1055 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !287)
!1056 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !149)
!1057 = !DISubprogram(name: "__printf_chk", scope: !1052, file: !1052, line: 95, type: !1058, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!86, !86, !1056, null}
!1060 = !DISubprogram(name: "fputs_unlocked", scope: !517, file: !517, line: 691, type: !1061, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!86, !1056, !1055}
!1063 = !DILocation(line: 0, scope: !264)
!1064 = !DILocation(line: 581, column: 7, scope: !272)
!1065 = !{!1066, !1066, i64 0}
!1066 = !{!"int", !993, i64 0}
!1067 = !DILocation(line: 581, column: 19, scope: !272)
!1068 = !DILocation(line: 581, column: 7, scope: !264)
!1069 = !DILocation(line: 585, column: 26, scope: !271)
!1070 = !DILocation(line: 0, scope: !271)
!1071 = !DILocation(line: 586, column: 23, scope: !271)
!1072 = !DILocation(line: 586, column: 28, scope: !271)
!1073 = !DILocation(line: 586, column: 32, scope: !271)
!1074 = !{!993, !993, i64 0}
!1075 = !DILocation(line: 586, column: 38, scope: !271)
!1076 = !DILocalVariable(name: "__s1", arg: 1, scope: !1077, file: !1078, line: 1359, type: !149)
!1077 = distinct !DISubprogram(name: "streq", scope: !1078, file: !1078, line: 1359, type: !1079, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1081)
!1078 = !DIFile(filename: "./lib/string.h", directory: "/src")
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!274, !149, !149}
!1081 = !{!1076, !1082}
!1082 = !DILocalVariable(name: "__s2", arg: 2, scope: !1077, file: !1078, line: 1359, type: !149)
!1083 = !DILocation(line: 0, scope: !1077, inlinedAt: !1084)
!1084 = distinct !DILocation(line: 586, column: 41, scope: !271)
!1085 = !DILocation(line: 1361, column: 11, scope: !1077, inlinedAt: !1084)
!1086 = !DILocation(line: 1361, column: 10, scope: !1077, inlinedAt: !1084)
!1087 = !DILocation(line: 586, column: 19, scope: !271)
!1088 = !DILocation(line: 587, column: 5, scope: !271)
!1089 = !DILocation(line: 588, column: 7, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !264, file: !92, line: 588, column: 7)
!1091 = !DILocation(line: 588, column: 7, scope: !264)
!1092 = !DILocation(line: 590, column: 7, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1090, file: !92, line: 589, column: 5)
!1094 = !DILocation(line: 591, column: 7, scope: !1093)
!1095 = !DILocation(line: 595, column: 37, scope: !264)
!1096 = !DILocation(line: 595, column: 35, scope: !264)
!1097 = !DILocation(line: 596, column: 29, scope: !264)
!1098 = !DILocation(line: 597, column: 8, scope: !280)
!1099 = !DILocation(line: 597, column: 7, scope: !264)
!1100 = !DILocation(line: 604, column: 24, scope: !279)
!1101 = !DILocation(line: 604, column: 12, scope: !280)
!1102 = !DILocation(line: 0, scope: !278)
!1103 = !DILocation(line: 610, column: 16, scope: !278)
!1104 = !DILocation(line: 610, column: 7, scope: !278)
!1105 = !DILocation(line: 611, column: 21, scope: !278)
!1106 = !{!1107, !1107, i64 0}
!1107 = !{!"short", !993, i64 0}
!1108 = !DILocation(line: 611, column: 19, scope: !278)
!1109 = !DILocation(line: 611, column: 16, scope: !278)
!1110 = !DILocation(line: 610, column: 30, scope: !278)
!1111 = distinct !{!1111, !1104, !1105, !1112}
!1112 = !{!"llvm.loop.mustprogress"}
!1113 = !DILocation(line: 612, column: 18, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !278, file: !92, line: 612, column: 11)
!1115 = !DILocation(line: 612, column: 11, scope: !278)
!1116 = !DILocation(line: 620, column: 23, scope: !264)
!1117 = !DILocation(line: 625, column: 39, scope: !264)
!1118 = !DILocation(line: 626, column: 3, scope: !264)
!1119 = !DILocation(line: 626, column: 10, scope: !264)
!1120 = !DILocation(line: 626, column: 21, scope: !264)
!1121 = !DILocation(line: 628, column: 44, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1123, file: !92, line: 628, column: 11)
!1123 = distinct !DILexicalBlock(scope: !264, file: !92, line: 627, column: 5)
!1124 = !DILocation(line: 628, column: 32, scope: !1122)
!1125 = !DILocation(line: 628, column: 49, scope: !1122)
!1126 = !DILocation(line: 628, column: 11, scope: !1123)
!1127 = !DILocation(line: 630, column: 11, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1123, file: !92, line: 630, column: 11)
!1129 = !DILocation(line: 630, column: 11, scope: !1123)
!1130 = !DILocation(line: 632, column: 26, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1132, file: !92, line: 632, column: 15)
!1132 = distinct !DILexicalBlock(scope: !1128, file: !92, line: 631, column: 9)
!1133 = !DILocation(line: 632, column: 34, scope: !1131)
!1134 = !DILocation(line: 632, column: 37, scope: !1131)
!1135 = !DILocation(line: 632, column: 15, scope: !1132)
!1136 = !DILocation(line: 636, column: 16, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1132, file: !92, line: 636, column: 15)
!1138 = !DILocation(line: 636, column: 29, scope: !1137)
!1139 = !DILocation(line: 640, column: 16, scope: !1123)
!1140 = distinct !{!1140, !1118, !1141, !1112}
!1141 = !DILocation(line: 641, column: 5, scope: !264)
!1142 = !DILocation(line: 644, column: 3, scope: !264)
!1143 = !DILocation(line: 0, scope: !1077, inlinedAt: !1144)
!1144 = distinct !DILocation(line: 648, column: 31, scope: !264)
!1145 = !DILocation(line: 0, scope: !1077, inlinedAt: !1146)
!1146 = distinct !DILocation(line: 649, column: 31, scope: !264)
!1147 = !DILocation(line: 0, scope: !1077, inlinedAt: !1148)
!1148 = distinct !DILocation(line: 650, column: 31, scope: !264)
!1149 = !DILocation(line: 0, scope: !1077, inlinedAt: !1150)
!1150 = distinct !DILocation(line: 651, column: 31, scope: !264)
!1151 = !DILocation(line: 0, scope: !1077, inlinedAt: !1152)
!1152 = distinct !DILocation(line: 652, column: 31, scope: !264)
!1153 = !DILocation(line: 0, scope: !1077, inlinedAt: !1154)
!1154 = distinct !DILocation(line: 653, column: 31, scope: !264)
!1155 = !DILocation(line: 0, scope: !1077, inlinedAt: !1156)
!1156 = distinct !DILocation(line: 654, column: 31, scope: !264)
!1157 = !DILocation(line: 0, scope: !1077, inlinedAt: !1158)
!1158 = distinct !DILocation(line: 655, column: 31, scope: !264)
!1159 = !DILocation(line: 0, scope: !1077, inlinedAt: !1160)
!1160 = distinct !DILocation(line: 656, column: 31, scope: !264)
!1161 = !DILocation(line: 0, scope: !1077, inlinedAt: !1162)
!1162 = distinct !DILocation(line: 657, column: 31, scope: !264)
!1163 = !DILocation(line: 663, column: 7, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !264, file: !92, line: 663, column: 7)
!1165 = !DILocation(line: 664, column: 7, scope: !1164)
!1166 = !DILocation(line: 664, column: 10, scope: !1164)
!1167 = !DILocation(line: 663, column: 7, scope: !264)
!1168 = !DILocation(line: 669, column: 7, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1164, file: !92, line: 665, column: 5)
!1170 = !DILocation(line: 671, column: 5, scope: !1169)
!1171 = !DILocation(line: 676, column: 7, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1164, file: !92, line: 673, column: 5)
!1173 = !DILocation(line: 679, column: 3, scope: !264)
!1174 = !DILocation(line: 683, column: 3, scope: !264)
!1175 = !DILocation(line: 686, column: 3, scope: !264)
!1176 = !DILocation(line: 688, column: 3, scope: !264)
!1177 = !DILocation(line: 691, column: 3, scope: !264)
!1178 = !DILocation(line: 695, column: 3, scope: !264)
!1179 = !DILocation(line: 696, column: 1, scope: !264)
!1180 = !DISubprogram(name: "setlocale", scope: !1181, file: !1181, line: 122, type: !1182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1181 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1182 = !DISubroutineType(types: !1183)
!1183 = !{!88, !86, !149}
!1184 = !DISubprogram(name: "strncmp", scope: !1185, file: !1185, line: 159, type: !1186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1185 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!86, !149, !149, !146}
!1188 = !DISubprogram(name: "exit", scope: !1189, file: !1189, line: 624, type: !981, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1189 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1190 = !DISubprogram(name: "getenv", scope: !1189, file: !1189, line: 641, type: !1191, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!88, !149}
!1193 = !DISubprogram(name: "strcmp", scope: !1185, file: !1185, line: 156, type: !1194, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{!86, !149, !149}
!1196 = !DISubprogram(name: "strspn", scope: !1185, file: !1185, line: 297, type: !1197, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{!148, !149, !149}
!1199 = !DISubprogram(name: "strchr", scope: !1185, file: !1185, line: 246, type: !1200, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{!88, !149, !86}
!1202 = !DISubprogram(name: "__ctype_b_loc", scope: !121, file: !121, line: 79, type: !1203, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!1205}
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !145)
!1208 = !DISubprogram(name: "strcspn", scope: !1185, file: !1185, line: 293, type: !1197, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1209 = !DISubprogram(name: "fwrite_unlocked", scope: !517, file: !517, line: 704, type: !1210, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!146, !1212, !146, !146, !1055}
!1212 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1213)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1215 = distinct !DIAssignID()
!1216 = distinct !DIAssignID()
!1217 = !DILocation(line: 0, scope: !83)
!1218 = distinct !DIAssignID()
!1219 = !DILocation(line: 0, scope: !510)
!1220 = !DILocation(line: 555, column: 3, scope: !83)
!1221 = !DILocation(line: 581, column: 21, scope: !83)
!1222 = !DILocation(line: 581, column: 3, scope: !83)
!1223 = !DILocation(line: 582, column: 3, scope: !83)
!1224 = !DILocation(line: 583, column: 3, scope: !83)
!1225 = !DILocation(line: 584, column: 3, scope: !83)
!1226 = !DILocation(line: 590, column: 3, scope: !83)
!1227 = !DILocation(line: 595, column: 3, scope: !83)
!1228 = !DILocation(line: 562, column: 8, scope: !83)
!1229 = !DILocation(line: 561, column: 8, scope: !83)
!1230 = !DILocation(line: 560, column: 8, scope: !83)
!1231 = !DILocation(line: 559, column: 8, scope: !83)
!1232 = !DILocation(line: 558, column: 8, scope: !83)
!1233 = !DILocation(line: 595, column: 15, scope: !83)
!1234 = distinct !{!1234, !1227, !1235, !1112}
!1235 = !DILocation(line: 652, column: 5, scope: !83)
!1236 = !DILocation(line: 603, column: 11, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1238, file: !2, line: 599, column: 9)
!1238 = distinct !DILexicalBlock(scope: !83, file: !2, line: 597, column: 5)
!1239 = !DILocation(line: 608, column: 11, scope: !1237)
!1240 = !DILocation(line: 612, column: 11, scope: !1237)
!1241 = !DILocation(line: 616, column: 11, scope: !1237)
!1242 = !DILocation(line: 621, column: 11, scope: !1237)
!1243 = !DILocation(line: 629, column: 11, scope: !1237)
!1244 = !DILocation(line: 635, column: 11, scope: !1237)
!1245 = !DILocation(line: 639, column: 11, scope: !1237)
!1246 = !DILocation(line: 643, column: 11, scope: !1237)
!1247 = !DILocation(line: 645, column: 9, scope: !1237)
!1248 = !DILocation(line: 647, column: 9, scope: !1237)
!1249 = !DILocation(line: 650, column: 11, scope: !1237)
!1250 = !DILocation(line: 656, column: 7, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !83, file: !2, line: 656, column: 7)
!1252 = !DILocation(line: 656, column: 41, scope: !1251)
!1253 = !DILocation(line: 656, column: 7, scope: !83)
!1254 = !DILocation(line: 657, column: 5, scope: !1251)
!1255 = !DILocalVariable(name: "st", arg: 1, scope: !1256, file: !136, line: 81, type: !1259)
!1256 = distinct !DISubprogram(name: "io_blksize", scope: !136, file: !136, line: 81, type: !1257, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1261)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{!500, !1259}
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !457)
!1261 = !{!1255, !1262, !1263, !1266}
!1262 = !DILocalVariable(name: "blocksize", scope: !1256, file: !136, line: 84, type: !500)
!1263 = !DILocalVariable(name: "leading_zeros", scope: !1264, file: !136, line: 98, type: !86)
!1264 = distinct !DILexicalBlock(scope: !1265, file: !136, line: 97, column: 5)
!1265 = distinct !DILexicalBlock(scope: !1256, file: !136, line: 96, column: 7)
!1266 = !DILocalVariable(name: "power", scope: !1267, file: !136, line: 101, type: !1269)
!1267 = distinct !DILexicalBlock(scope: !1268, file: !136, line: 100, column: 9)
!1268 = distinct !DILexicalBlock(scope: !1264, file: !136, line: 99, column: 11)
!1269 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!1270 = !DILocation(line: 0, scope: !1256, inlinedAt: !1271)
!1271 = distinct !DILocation(line: 660, column: 19, scope: !83)
!1272 = !DILocation(line: 84, column: 21, scope: !1256, inlinedAt: !1271)
!1273 = !{!1274, !1275, i64 56}
!1274 = !{!"stat", !1275, i64 0, !1275, i64 8, !1275, i64 16, !1066, i64 24, !1066, i64 28, !1066, i64 32, !1066, i64 36, !1275, i64 40, !1275, i64 48, !1275, i64 56, !1275, i64 64, !1276, i64 72, !1276, i64 88, !1276, i64 104, !993, i64 120}
!1275 = !{!"long", !993, i64 0}
!1276 = !{!"timespec", !1275, i64 0, !1275, i64 8}
!1277 = !DILocation(line: 84, column: 58, scope: !1256, inlinedAt: !1271)
!1278 = !DILocation(line: 88, column: 33, scope: !1256, inlinedAt: !1271)
!1279 = !DILocation(line: 88, column: 13, scope: !1256, inlinedAt: !1271)
!1280 = !DILocation(line: 96, column: 7, scope: !1265, inlinedAt: !1271)
!1281 = !{!1274, !1066, i64 24}
!1282 = !{i64 0, i64 64}
!1283 = !DILocation(line: 96, column: 29, scope: !1265, inlinedAt: !1271)
!1284 = !DILocalVariable(name: "n", arg: 1, scope: !1285, file: !1286, line: 436, type: !1269)
!1285 = distinct !DISubprogram(name: "stdc_leading_zeros_ull", scope: !1286, file: !1286, line: 436, type: !1287, scopeLine: 437, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1289)
!1286 = !DIFile(filename: "./lib/stdbit.h", directory: "/src", checksumkind: CSK_MD5, checksum: "22a94c18744c4eadd69210db6ede4b9c")
!1287 = !DISubroutineType(types: !1288)
!1288 = !{!98, !1269}
!1289 = !{!1284}
!1290 = !DILocation(line: 0, scope: !1285, inlinedAt: !1291)
!1291 = distinct !DILocation(line: 98, column: 27, scope: !1264, inlinedAt: !1271)
!1292 = !DILocalVariable(name: "n", arg: 1, scope: !1293, file: !1286, line: 149, type: !1269)
!1293 = distinct !DISubprogram(name: "_gl_stdbit_clzll", scope: !1286, file: !1286, line: 149, type: !1294, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1296)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{!86, !1269}
!1296 = !{!1292}
!1297 = !DILocation(line: 0, scope: !1293, inlinedAt: !1298)
!1298 = distinct !DILocation(line: 438, column: 10, scope: !1285, inlinedAt: !1291)
!1299 = !DILocation(line: 151, column: 10, scope: !1293, inlinedAt: !1298)
!1300 = !{i64 0, i64 65}
!1301 = !DILocation(line: 0, scope: !1264, inlinedAt: !1271)
!1302 = !DILocation(line: 0, scope: !1267, inlinedAt: !1271)
!1303 = !DILocation(line: 102, column: 21, scope: !1304, inlinedAt: !1271)
!1304 = distinct !DILexicalBlock(scope: !1267, file: !136, line: 102, column: 15)
!1305 = !DILocation(line: 102, column: 15, scope: !1267, inlinedAt: !1271)
!1306 = !DILocation(line: 105, column: 5, scope: !1264, inlinedAt: !1271)
!1307 = !DILocation(line: 110, column: 10, scope: !1256, inlinedAt: !1271)
!1308 = !DILocation(line: 666, column: 20, scope: !83)
!1309 = !DILocation(line: 668, column: 10, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !83, file: !2, line: 668, column: 7)
!1311 = !DILocation(line: 668, column: 17, scope: !1310)
!1312 = !DILocation(line: 676, column: 10, scope: !83)
!1313 = !DILocation(line: 677, column: 16, scope: !83)
!1314 = !DILocation(line: 679, column: 21, scope: !83)
!1315 = !DILocation(line: 681, column: 3, scope: !83)
!1316 = !DILocation(line: 663, column: 7, scope: !83)
!1317 = !DILocation(line: 683, column: 18, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !510, file: !2, line: 683, column: 11)
!1319 = !DILocation(line: 683, column: 11, scope: !510)
!1320 = !DILocation(line: 686, column: 35, scope: !510)
!1321 = !DILocation(line: 684, column: 18, scope: !1318)
!1322 = !DILocation(line: 684, column: 16, scope: !1318)
!1323 = !DILocation(line: 684, column: 9, scope: !1318)
!1324 = !DILocation(line: 0, scope: !1077, inlinedAt: !1325)
!1325 = distinct !DILocation(line: 686, column: 28, scope: !510)
!1326 = !DILocation(line: 1361, column: 11, scope: !1077, inlinedAt: !1325)
!1327 = !DILocation(line: 1361, column: 10, scope: !1077, inlinedAt: !1325)
!1328 = !DILocation(line: 687, column: 11, scope: !510)
!1329 = !DILocation(line: 690, column: 22, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1331, file: !2, line: 688, column: 9)
!1331 = distinct !DILexicalBlock(scope: !510, file: !2, line: 687, column: 11)
!1332 = !DILocation(line: 696, column: 24, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1331, file: !2, line: 695, column: 9)
!1334 = !DILocation(line: 696, column: 22, scope: !1333)
!1335 = !DILocation(line: 697, column: 26, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1333, file: !2, line: 697, column: 15)
!1337 = !DILocation(line: 697, column: 15, scope: !1333)
!1338 = !DILocation(line: 699, column: 15, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1336, file: !2, line: 698, column: 13)
!1340 = !DILocation(line: 701, column: 15, scope: !1339)
!1341 = !DILocation(line: 706, column: 18, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !510, file: !2, line: 706, column: 11)
!1343 = !DILocation(line: 705, column: 7, scope: !510)
!1344 = !DILocation(line: 706, column: 11, scope: !1342)
!1345 = !DILocation(line: 706, column: 42, scope: !1342)
!1346 = !DILocation(line: 706, column: 11, scope: !510)
!1347 = !DILocation(line: 708, column: 11, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1342, file: !2, line: 707, column: 9)
!1349 = !DILocation(line: 710, column: 11, scope: !1348)
!1350 = !DILocation(line: 0, scope: !1256, inlinedAt: !1351)
!1351 = distinct !DILocation(line: 714, column: 22, scope: !510)
!1352 = !DILocation(line: 84, column: 21, scope: !1256, inlinedAt: !1351)
!1353 = !DILocation(line: 84, column: 58, scope: !1256, inlinedAt: !1351)
!1354 = !DILocation(line: 88, column: 33, scope: !1256, inlinedAt: !1351)
!1355 = !DILocation(line: 88, column: 13, scope: !1256, inlinedAt: !1351)
!1356 = !DILocation(line: 96, column: 7, scope: !1265, inlinedAt: !1351)
!1357 = !DILocation(line: 96, column: 29, scope: !1265, inlinedAt: !1351)
!1358 = !DILocation(line: 0, scope: !1285, inlinedAt: !1359)
!1359 = distinct !DILocation(line: 98, column: 27, scope: !1264, inlinedAt: !1351)
!1360 = !DILocation(line: 0, scope: !1293, inlinedAt: !1361)
!1361 = distinct !DILocation(line: 438, column: 10, scope: !1285, inlinedAt: !1359)
!1362 = !DILocation(line: 151, column: 10, scope: !1293, inlinedAt: !1361)
!1363 = !DILocation(line: 0, scope: !1264, inlinedAt: !1351)
!1364 = !DILocation(line: 0, scope: !1267, inlinedAt: !1351)
!1365 = !DILocation(line: 102, column: 21, scope: !1304, inlinedAt: !1351)
!1366 = !DILocation(line: 102, column: 15, scope: !1267, inlinedAt: !1351)
!1367 = !DILocation(line: 110, column: 10, scope: !1256, inlinedAt: !1351)
!1368 = !DILocation(line: 716, column: 17, scope: !510)
!1369 = !DILocation(line: 716, column: 7, scope: !510)
!1370 = !DILocation(line: 722, column: 43, scope: !515)
!1371 = !DILocation(line: 725, column: 14, scope: !515)
!1372 = !{!1274, !1275, i64 0}
!1373 = !{!1274, !1275, i64 8}
!1374 = !DILocation(line: 722, column: 11, scope: !510)
!1375 = !DILocation(line: 727, column: 33, scope: !514)
!1376 = !DILocation(line: 727, column: 26, scope: !514)
!1377 = !DILocation(line: 0, scope: !514)
!1378 = !DILocation(line: 728, column: 17, scope: !520)
!1379 = !DILocation(line: 728, column: 15, scope: !514)
!1380 = !DILocation(line: 730, column: 29, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !519, file: !2, line: 730, column: 19)
!1382 = !DILocation(line: 730, column: 19, scope: !519)
!1383 = !DILocation(line: 731, column: 29, scope: !1381)
!1384 = !DILocation(line: 731, column: 17, scope: !1381)
!1385 = !DILocation(line: 732, column: 44, scope: !519)
!1386 = !DILocation(line: 732, column: 29, scope: !519)
!1387 = !DILocation(line: 0, scope: !519)
!1388 = !DILocation(line: 734, column: 28, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !519, file: !2, line: 734, column: 19)
!1390 = !DILocation(line: 734, column: 26, scope: !1389)
!1391 = !DILocation(line: 734, column: 19, scope: !519)
!1392 = !DILocation(line: 736, column: 19, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1389, file: !2, line: 735, column: 17)
!1394 = !DILocation(line: 751, column: 21, scope: !524)
!1395 = !DILocation(line: 755, column: 23, scope: !523)
!1396 = !DILocalVariable(name: "copy_max", scope: !1397, file: !2, line: 523, type: !1403)
!1397 = distinct !DISubprogram(name: "copy_cat", scope: !2, file: !2, line: 518, type: !1398, scopeLine: 519, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1400)
!1398 = !DISubroutineType(types: !1399)
!1399 = !{!86}
!1400 = !{!1396, !1401}
!1401 = !DILocalVariable(name: "some_copied", scope: !1402, file: !2, line: 531, type: !274)
!1402 = distinct !DILexicalBlock(scope: !1397, file: !2, line: 531, column: 3)
!1403 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !517, line: 77, baseType: !1404)
!1404 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !314, line: 194, baseType: !315)
!1405 = !DILocation(line: 0, scope: !1397, inlinedAt: !1406)
!1406 = distinct !DILocation(line: 755, column: 56, scope: !523)
!1407 = !DILocation(line: 0, scope: !1402, inlinedAt: !1406)
!1408 = !DILocation(line: 532, column: 30, scope: !1409, inlinedAt: !1406)
!1409 = distinct !DILexicalBlock(scope: !1402, file: !2, line: 531, column: 3)
!1410 = !DILocation(line: 532, column: 13, scope: !1409, inlinedAt: !1406)
!1411 = !DILocation(line: 532, column: 5, scope: !1409, inlinedAt: !1406)
!1412 = distinct !{!1412, !1413, !1414, !1415}
!1413 = !DILocation(line: 531, column: 3, scope: !1402, inlinedAt: !1406)
!1414 = !DILocation(line: 545, column: 7, scope: !1402, inlinedAt: !1406)
!1415 = !{!"llvm.loop.peeled.count", i32 1}
!1416 = !DILocation(line: 539, column: 13, scope: !1417, inlinedAt: !1406)
!1417 = distinct !DILexicalBlock(scope: !1418, file: !2, line: 539, column: 13)
!1418 = distinct !DILexicalBlock(scope: !1409, file: !2, line: 534, column: 7)
!1419 = !DILocation(line: 539, column: 29, scope: !1417, inlinedAt: !1406)
!1420 = !DILocation(line: 543, column: 9, scope: !1418, inlinedAt: !1406)
!1421 = !DILocation(line: 544, column: 9, scope: !1418, inlinedAt: !1406)
!1422 = !DILocation(line: 755, column: 13, scope: !523)
!1423 = !DILocation(line: 0, scope: !523)
!1424 = !DILocation(line: 759, column: 18, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !2, line: 757, column: 13)
!1426 = distinct !DILexicalBlock(scope: !523, file: !2, line: 756, column: 15)
!1427 = !DILocation(line: 760, column: 13, scope: !1425)
!1428 = !DILocation(line: 763, column: 24, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1426, file: !2, line: 762, column: 13)
!1430 = !DILocation(line: 764, column: 23, scope: !1429)
!1431 = !DILocalVariable(name: "buf", arg: 1, scope: !1432, file: !2, line: 170, type: !88)
!1432 = distinct !DISubprogram(name: "simple_cat", scope: !2, file: !2, line: 170, type: !1433, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1435)
!1433 = !DISubroutineType(types: !1434)
!1434 = !{!274, !88, !500}
!1435 = !{!1431, !1436, !1437}
!1436 = !DILocalVariable(name: "bufsize", arg: 2, scope: !1432, file: !2, line: 170, type: !500)
!1437 = !DILocalVariable(name: "n_read", scope: !1438, file: !2, line: 178, type: !1403)
!1438 = distinct !DILexicalBlock(scope: !1432, file: !2, line: 175, column: 5)
!1439 = !DILocation(line: 0, scope: !1432, inlinedAt: !1440)
!1440 = distinct !DILocation(line: 765, column: 21, scope: !1429)
!1441 = !DILocation(line: 174, column: 3, scope: !1432, inlinedAt: !1440)
!1442 = !DILocation(line: 178, column: 30, scope: !1438, inlinedAt: !1440)
!1443 = !DILocation(line: 178, column: 24, scope: !1438, inlinedAt: !1440)
!1444 = !DILocation(line: 0, scope: !1438, inlinedAt: !1440)
!1445 = !DILocation(line: 179, column: 18, scope: !1446, inlinedAt: !1440)
!1446 = distinct !DILexicalBlock(scope: !1438, file: !2, line: 179, column: 11)
!1447 = !DILocation(line: 179, column: 11, scope: !1438, inlinedAt: !1440)
!1448 = !DILocation(line: 181, column: 11, scope: !1449, inlinedAt: !1440)
!1449 = distinct !DILexicalBlock(scope: !1446, file: !2, line: 180, column: 9)
!1450 = !DILocation(line: 182, column: 11, scope: !1449, inlinedAt: !1440)
!1451 = !DILocation(line: 187, column: 18, scope: !1452, inlinedAt: !1440)
!1452 = distinct !DILexicalBlock(scope: !1438, file: !2, line: 187, column: 11)
!1453 = !DILocation(line: 187, column: 11, scope: !1438, inlinedAt: !1440)
!1454 = !DILocation(line: 192, column: 11, scope: !1455, inlinedAt: !1440)
!1455 = distinct !DILexicalBlock(scope: !1438, file: !2, line: 192, column: 11)
!1456 = !DILocation(line: 192, column: 51, scope: !1455, inlinedAt: !1440)
!1457 = !DILocation(line: 192, column: 11, scope: !1438, inlinedAt: !1440)
!1458 = !DILocation(line: 948, column: 21, scope: !1459, inlinedAt: !1462)
!1459 = distinct !DISubprogram(name: "write_error", scope: !92, file: !92, line: 946, type: !611, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1460)
!1460 = !{!1461}
!1461 = !DILocalVariable(name: "saved_errno", scope: !1459, file: !92, line: 948, type: !86)
!1462 = distinct !DILocation(line: 193, column: 9, scope: !1455, inlinedAt: !1440)
!1463 = !DILocation(line: 0, scope: !1459, inlinedAt: !1462)
!1464 = !DILocation(line: 949, column: 3, scope: !1459, inlinedAt: !1462)
!1465 = !DILocation(line: 950, column: 11, scope: !1459, inlinedAt: !1462)
!1466 = !DILocation(line: 950, column: 3, scope: !1459, inlinedAt: !1462)
!1467 = !DILocation(line: 951, column: 3, scope: !1459, inlinedAt: !1462)
!1468 = !DILocation(line: 952, column: 3, scope: !1459, inlinedAt: !1462)
!1469 = !DILocation(line: 765, column: 18, scope: !1429)
!1470 = !DILocation(line: 771, column: 50, scope: !526)
!1471 = !DILocation(line: 771, column: 19, scope: !526)
!1472 = !DILocation(line: 795, column: 15, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !526, file: !2, line: 795, column: 15)
!1474 = !DILocation(line: 0, scope: !526)
!1475 = !DILocation(line: 796, column: 15, scope: !1473)
!1476 = !DILocation(line: 796, column: 18, scope: !1473)
!1477 = !DILocation(line: 797, column: 15, scope: !1473)
!1478 = !DILocation(line: 797, column: 18, scope: !1473)
!1479 = !DILocation(line: 795, column: 15, scope: !526)
!1480 = !DILocation(line: 798, column: 13, scope: !1473)
!1481 = !DILocation(line: 799, column: 26, scope: !526)
!1482 = !DILocalVariable(name: "n_to_read", scope: !1483, file: !2, line: 291, type: !86)
!1483 = distinct !DILexicalBlock(scope: !1484, file: !2, line: 288, column: 13)
!1484 = distinct !DILexicalBlock(scope: !1485, file: !2, line: 287, column: 15)
!1485 = distinct !DILexicalBlock(scope: !1486, file: !2, line: 262, column: 9)
!1486 = distinct !DILexicalBlock(scope: !1487, file: !2, line: 260, column: 5)
!1487 = distinct !DISubprogram(name: "cat", scope: !2, file: !2, line: 226, type: !1488, scopeLine: 229, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1490)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{!274, !88, !500, !88, !500, !274, !274, !274, !274, !274, !274}
!1490 = !{!1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1510, !1511, !1482, !1512}
!1491 = !DILocalVariable(name: "inbuf", arg: 1, scope: !1487, file: !2, line: 226, type: !88)
!1492 = !DILocalVariable(name: "insize", arg: 2, scope: !1487, file: !2, line: 226, type: !500)
!1493 = !DILocalVariable(name: "outbuf", arg: 3, scope: !1487, file: !2, line: 226, type: !88)
!1494 = !DILocalVariable(name: "outsize", arg: 4, scope: !1487, file: !2, line: 226, type: !500)
!1495 = !DILocalVariable(name: "show_nonprinting", arg: 5, scope: !1487, file: !2, line: 227, type: !274)
!1496 = !DILocalVariable(name: "show_tabs", arg: 6, scope: !1487, file: !2, line: 227, type: !274)
!1497 = !DILocalVariable(name: "number", arg: 7, scope: !1487, file: !2, line: 227, type: !274)
!1498 = !DILocalVariable(name: "number_nonblank", arg: 8, scope: !1487, file: !2, line: 227, type: !274)
!1499 = !DILocalVariable(name: "show_ends", arg: 9, scope: !1487, file: !2, line: 228, type: !274)
!1500 = !DILocalVariable(name: "squeeze_blank", arg: 10, scope: !1487, file: !2, line: 228, type: !274)
!1501 = !DILocalVariable(name: "ch", scope: !1487, file: !2, line: 231, type: !151)
!1502 = !DILocalVariable(name: "newlines", scope: !1487, file: !2, line: 238, type: !86)
!1503 = !DILocalVariable(name: "use_fionread", scope: !1487, file: !2, line: 243, type: !274)
!1504 = !DILocalVariable(name: "eob", scope: !1487, file: !2, line: 251, type: !88)
!1505 = !DILocalVariable(name: "bpin", scope: !1487, file: !2, line: 254, type: !88)
!1506 = !DILocalVariable(name: "bpout", scope: !1487, file: !2, line: 257, type: !88)
!1507 = !DILocalVariable(name: "wp", scope: !1508, file: !2, line: 267, type: !88)
!1508 = distinct !DILexicalBlock(scope: !1509, file: !2, line: 266, column: 13)
!1509 = distinct !DILexicalBlock(scope: !1485, file: !2, line: 265, column: 15)
!1510 = !DILocalVariable(name: "remaining_bytes", scope: !1508, file: !2, line: 268, type: !500)
!1511 = !DILocalVariable(name: "input_pending", scope: !1483, file: !2, line: 289, type: !274)
!1512 = !DILocalVariable(name: "n_read", scope: !1483, file: !2, line: 327, type: !1403)
!1513 = !DILocation(line: 0, scope: !1483, inlinedAt: !1514)
!1514 = distinct !DILocation(line: 801, column: 17, scope: !526)
!1515 = !DILocation(line: 0, scope: !1487, inlinedAt: !1514)
!1516 = !DILocation(line: 238, column: 18, scope: !1487, inlinedAt: !1514)
!1517 = !DILocation(line: 254, column: 20, scope: !1487, inlinedAt: !1514)
!1518 = !DILocation(line: 259, column: 3, scope: !1487, inlinedAt: !1514)
!1519 = !DILocation(line: 238, column: 7, scope: !1487, inlinedAt: !1514)
!1520 = !DILocation(line: 251, column: 9, scope: !1487, inlinedAt: !1514)
!1521 = !DILocation(line: 265, column: 32, scope: !1509, inlinedAt: !1514)
!1522 = !DILocation(line: 265, column: 15, scope: !1485, inlinedAt: !1514)
!1523 = !DILocation(line: 269, column: 15, scope: !1508, inlinedAt: !1514)
!1524 = !DILocation(line: 0, scope: !1508, inlinedAt: !1514)
!1525 = !DILocation(line: 271, column: 23, scope: !1526, inlinedAt: !1514)
!1526 = distinct !DILexicalBlock(scope: !1527, file: !2, line: 271, column: 23)
!1527 = distinct !DILexicalBlock(scope: !1508, file: !2, line: 270, column: 17)
!1528 = !DILocation(line: 271, column: 63, scope: !1526, inlinedAt: !1514)
!1529 = !DILocation(line: 271, column: 23, scope: !1527, inlinedAt: !1514)
!1530 = !DILocation(line: 948, column: 21, scope: !1459, inlinedAt: !1531)
!1531 = distinct !DILocation(line: 272, column: 21, scope: !1526, inlinedAt: !1514)
!1532 = !DILocation(line: 0, scope: !1459, inlinedAt: !1531)
!1533 = !DILocation(line: 949, column: 3, scope: !1459, inlinedAt: !1531)
!1534 = !DILocation(line: 950, column: 11, scope: !1459, inlinedAt: !1531)
!1535 = !DILocation(line: 950, column: 3, scope: !1459, inlinedAt: !1531)
!1536 = !DILocation(line: 951, column: 3, scope: !1459, inlinedAt: !1531)
!1537 = !DILocation(line: 952, column: 3, scope: !1459, inlinedAt: !1531)
!1538 = !DILocation(line: 273, column: 22, scope: !1527, inlinedAt: !1514)
!1539 = !DILocation(line: 274, column: 43, scope: !1527, inlinedAt: !1514)
!1540 = !DILocation(line: 276, column: 30, scope: !1508, inlinedAt: !1514)
!1541 = !DILocation(line: 275, column: 17, scope: !1527, inlinedAt: !1514)
!1542 = distinct !{!1542, !1523, !1543, !1112}
!1543 = !DILocation(line: 276, column: 48, scope: !1508, inlinedAt: !1514)
!1544 = !DILocalVariable(name: "__dest", arg: 1, scope: !1545, file: !1546, line: 34, type: !144)
!1545 = distinct !DISubprogram(name: "memmove", scope: !1546, file: !1546, line: 34, type: !1547, scopeLine: 35, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1549)
!1546 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1547 = !DISubroutineType(types: !1548)
!1548 = !{!144, !144, !1213, !146}
!1549 = !{!1544, !1550, !1551}
!1550 = !DILocalVariable(name: "__src", arg: 2, scope: !1545, file: !1546, line: 34, type: !1213)
!1551 = !DILocalVariable(name: "__len", arg: 3, scope: !1545, file: !1546, line: 34, type: !146)
!1552 = !DILocation(line: 0, scope: !1545, inlinedAt: !1553)
!1553 = distinct !DILocation(line: 281, column: 15, scope: !1508, inlinedAt: !1514)
!1554 = !DILocation(line: 36, column: 10, scope: !1545, inlinedAt: !1553)
!1555 = !DILocation(line: 282, column: 30, scope: !1508, inlinedAt: !1514)
!1556 = !DILocation(line: 283, column: 13, scope: !1508, inlinedAt: !1514)
!1557 = !DILocation(line: 287, column: 20, scope: !1484, inlinedAt: !1514)
!1558 = !DILocation(line: 287, column: 15, scope: !1485, inlinedAt: !1514)
!1559 = !DILocation(line: 291, column: 15, scope: !1483, inlinedAt: !1514)
!1560 = !DILocation(line: 291, column: 19, scope: !1483, inlinedAt: !1514)
!1561 = distinct !DIAssignID()
!1562 = !DILocation(line: 297, column: 19, scope: !1563, inlinedAt: !1514)
!1563 = distinct !DILexicalBlock(scope: !1483, file: !2, line: 297, column: 19)
!1564 = !DILocation(line: 298, column: 19, scope: !1563, inlinedAt: !1514)
!1565 = !DILocation(line: 298, column: 29, scope: !1563, inlinedAt: !1514)
!1566 = !DILocation(line: 298, column: 22, scope: !1563, inlinedAt: !1514)
!1567 = !DILocation(line: 298, column: 63, scope: !1563, inlinedAt: !1514)
!1568 = !DILocation(line: 297, column: 19, scope: !1483, inlinedAt: !1514)
!1569 = !DILocation(line: 306, column: 23, scope: !1570, inlinedAt: !1514)
!1570 = distinct !DILexicalBlock(scope: !1571, file: !2, line: 306, column: 23)
!1571 = distinct !DILexicalBlock(scope: !1563, file: !2, line: 299, column: 17)
!1572 = !DILocation(line: 306, column: 43, scope: !1570, inlinedAt: !1514)
!1573 = !DILocation(line: 312, column: 23, scope: !1574, inlinedAt: !1514)
!1574 = distinct !DILexicalBlock(scope: !1570, file: !2, line: 311, column: 21)
!1575 = !DILocation(line: 315, column: 23, scope: !1574, inlinedAt: !1514)
!1576 = !DILocation(line: 318, column: 19, scope: !1577, inlinedAt: !1514)
!1577 = distinct !DILexicalBlock(scope: !1483, file: !2, line: 318, column: 19)
!1578 = !DILocation(line: 318, column: 29, scope: !1577, inlinedAt: !1514)
!1579 = !DILocation(line: 322, column: 19, scope: !1483, inlinedAt: !1514)
!1580 = !DILocalVariable(name: "outbuf", arg: 1, scope: !1581, file: !2, line: 202, type: !88)
!1581 = distinct !DISubprogram(name: "write_pending", scope: !2, file: !2, line: 202, type: !1582, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1584)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{null, !88, !87}
!1584 = !{!1580, !1585, !1586}
!1585 = !DILocalVariable(name: "bpout", arg: 2, scope: !1581, file: !2, line: 202, type: !87)
!1586 = !DILocalVariable(name: "n_write", scope: !1581, file: !2, line: 204, type: !500)
!1587 = !DILocation(line: 0, scope: !1581, inlinedAt: !1588)
!1588 = distinct !DILocation(line: 323, column: 17, scope: !1589, inlinedAt: !1514)
!1589 = distinct !DILexicalBlock(scope: !1483, file: !2, line: 322, column: 19)
!1590 = !DILocation(line: 204, column: 26, scope: !1581, inlinedAt: !1588)
!1591 = !DILocation(line: 205, column: 9, scope: !1592, inlinedAt: !1588)
!1592 = distinct !DILexicalBlock(scope: !1581, file: !2, line: 205, column: 7)
!1593 = !DILocation(line: 205, column: 7, scope: !1581, inlinedAt: !1588)
!1594 = !DILocation(line: 207, column: 11, scope: !1595, inlinedAt: !1588)
!1595 = distinct !DILexicalBlock(scope: !1596, file: !2, line: 207, column: 11)
!1596 = distinct !DILexicalBlock(scope: !1592, file: !2, line: 206, column: 5)
!1597 = !DILocation(line: 207, column: 55, scope: !1595, inlinedAt: !1588)
!1598 = !DILocation(line: 207, column: 11, scope: !1596, inlinedAt: !1588)
!1599 = !DILocation(line: 948, column: 21, scope: !1459, inlinedAt: !1600)
!1600 = distinct !DILocation(line: 208, column: 9, scope: !1595, inlinedAt: !1588)
!1601 = !DILocation(line: 0, scope: !1459, inlinedAt: !1600)
!1602 = !DILocation(line: 949, column: 3, scope: !1459, inlinedAt: !1600)
!1603 = !DILocation(line: 950, column: 11, scope: !1459, inlinedAt: !1600)
!1604 = !DILocation(line: 950, column: 3, scope: !1459, inlinedAt: !1600)
!1605 = !DILocation(line: 951, column: 3, scope: !1459, inlinedAt: !1600)
!1606 = !DILocation(line: 952, column: 3, scope: !1459, inlinedAt: !1600)
!1607 = !DILocation(line: 327, column: 38, scope: !1483, inlinedAt: !1514)
!1608 = !DILocation(line: 327, column: 32, scope: !1483, inlinedAt: !1514)
!1609 = !DILocation(line: 328, column: 26, scope: !1610, inlinedAt: !1514)
!1610 = distinct !DILexicalBlock(scope: !1483, file: !2, line: 328, column: 19)
!1611 = !DILocation(line: 328, column: 19, scope: !1483, inlinedAt: !1514)
!1612 = !DILocation(line: 330, column: 19, scope: !1613, inlinedAt: !1514)
!1613 = distinct !DILexicalBlock(scope: !1610, file: !2, line: 329, column: 17)
!1614 = !DILocation(line: 0, scope: !1581, inlinedAt: !1615)
!1615 = distinct !DILocation(line: 331, column: 19, scope: !1613, inlinedAt: !1514)
!1616 = !DILocation(line: 204, column: 26, scope: !1581, inlinedAt: !1615)
!1617 = !DILocation(line: 205, column: 9, scope: !1592, inlinedAt: !1615)
!1618 = !DILocation(line: 205, column: 7, scope: !1581, inlinedAt: !1615)
!1619 = !DILocation(line: 207, column: 11, scope: !1595, inlinedAt: !1615)
!1620 = !DILocation(line: 207, column: 55, scope: !1595, inlinedAt: !1615)
!1621 = !DILocation(line: 207, column: 11, scope: !1596, inlinedAt: !1615)
!1622 = !DILocation(line: 948, column: 21, scope: !1459, inlinedAt: !1623)
!1623 = distinct !DILocation(line: 208, column: 9, scope: !1595, inlinedAt: !1615)
!1624 = !DILocation(line: 0, scope: !1459, inlinedAt: !1623)
!1625 = !DILocation(line: 949, column: 3, scope: !1459, inlinedAt: !1623)
!1626 = !DILocation(line: 950, column: 11, scope: !1459, inlinedAt: !1623)
!1627 = !DILocation(line: 950, column: 3, scope: !1459, inlinedAt: !1623)
!1628 = !DILocation(line: 951, column: 3, scope: !1459, inlinedAt: !1623)
!1629 = !DILocation(line: 952, column: 3, scope: !1459, inlinedAt: !1623)
!1630 = !DILocation(line: 335, column: 26, scope: !1631, inlinedAt: !1514)
!1631 = distinct !DILexicalBlock(scope: !1483, file: !2, line: 335, column: 19)
!1632 = !DILocation(line: 335, column: 19, scope: !1483, inlinedAt: !1514)
!1633 = !DILocation(line: 0, scope: !1581, inlinedAt: !1634)
!1634 = distinct !DILocation(line: 337, column: 19, scope: !1635, inlinedAt: !1514)
!1635 = distinct !DILexicalBlock(scope: !1631, file: !2, line: 336, column: 17)
!1636 = !DILocation(line: 204, column: 26, scope: !1581, inlinedAt: !1634)
!1637 = !DILocation(line: 205, column: 9, scope: !1592, inlinedAt: !1634)
!1638 = !DILocation(line: 205, column: 7, scope: !1581, inlinedAt: !1634)
!1639 = !DILocation(line: 207, column: 11, scope: !1595, inlinedAt: !1634)
!1640 = !DILocation(line: 207, column: 55, scope: !1595, inlinedAt: !1634)
!1641 = !DILocation(line: 207, column: 11, scope: !1596, inlinedAt: !1634)
!1642 = !DILocation(line: 948, column: 21, scope: !1459, inlinedAt: !1643)
!1643 = distinct !DILocation(line: 208, column: 9, scope: !1595, inlinedAt: !1634)
!1644 = !DILocation(line: 0, scope: !1459, inlinedAt: !1643)
!1645 = !DILocation(line: 949, column: 3, scope: !1459, inlinedAt: !1643)
!1646 = !DILocation(line: 950, column: 11, scope: !1459, inlinedAt: !1643)
!1647 = !DILocation(line: 950, column: 3, scope: !1459, inlinedAt: !1643)
!1648 = !DILocation(line: 951, column: 3, scope: !1459, inlinedAt: !1643)
!1649 = !DILocation(line: 952, column: 3, scope: !1459, inlinedAt: !1643)
!1650 = !DILocation(line: 346, column: 26, scope: !1483, inlinedAt: !1514)
!1651 = !DILocation(line: 347, column: 20, scope: !1483, inlinedAt: !1514)
!1652 = !DILocation(line: 348, column: 13, scope: !1484, inlinedAt: !1514)
!1653 = !DILocation(line: 356, column: 19, scope: !1654, inlinedAt: !1514)
!1654 = distinct !DILexicalBlock(scope: !1655, file: !2, line: 356, column: 19)
!1655 = distinct !DILexicalBlock(scope: !1484, file: !2, line: 350, column: 13)
!1656 = !DILocation(line: 356, column: 30, scope: !1654, inlinedAt: !1514)
!1657 = !DILocation(line: 356, column: 19, scope: !1655, inlinedAt: !1514)
!1658 = !DILocation(line: 358, column: 32, scope: !1659, inlinedAt: !1514)
!1659 = distinct !DILexicalBlock(scope: !1660, file: !2, line: 358, column: 23)
!1660 = distinct !DILexicalBlock(scope: !1654, file: !2, line: 357, column: 17)
!1661 = !DILocation(line: 358, column: 23, scope: !1660, inlinedAt: !1514)
!1662 = !DILocation(line: 377, column: 30, scope: !1663, inlinedAt: !1514)
!1663 = distinct !DILexicalBlock(scope: !1660, file: !2, line: 377, column: 23)
!1664 = !DILocalVariable(name: "endp", scope: !1665, file: !2, line: 148, type: !88)
!1665 = distinct !DISubprogram(name: "next_line_num", scope: !2, file: !2, line: 146, type: !611, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1666)
!1666 = !{!1664}
!1667 = !DILocation(line: 0, scope: !1665, inlinedAt: !1668)
!1668 = distinct !DILocation(line: 379, column: 23, scope: !1669, inlinedAt: !1514)
!1669 = distinct !DILexicalBlock(scope: !1663, file: !2, line: 378, column: 21)
!1670 = !DILocation(line: 149, column: 3, scope: !1665, inlinedAt: !1668)
!1671 = !DILocation(line: 151, column: 18, scope: !1672, inlinedAt: !1668)
!1672 = distinct !DILexicalBlock(scope: !1673, file: !2, line: 151, column: 11)
!1673 = distinct !DILexicalBlock(scope: !1665, file: !2, line: 150, column: 5)
!1674 = !DILocation(line: 151, column: 21, scope: !1672, inlinedAt: !1668)
!1675 = !DILocation(line: 151, column: 11, scope: !1673, inlinedAt: !1668)
!1676 = !DILocation(line: 153, column: 12, scope: !1673, inlinedAt: !1668)
!1677 = !DILocation(line: 153, column: 15, scope: !1673, inlinedAt: !1668)
!1678 = !DILocation(line: 155, column: 15, scope: !1665, inlinedAt: !1668)
!1679 = !DILocation(line: 154, column: 5, scope: !1673, inlinedAt: !1668)
!1680 = distinct !{!1680, !1670, !1681, !1112}
!1681 = !DILocation(line: 155, column: 32, scope: !1665, inlinedAt: !1668)
!1682 = !DILocation(line: 157, column: 22, scope: !1683, inlinedAt: !1668)
!1683 = distinct !DILexicalBlock(scope: !1665, file: !2, line: 157, column: 7)
!1684 = !DILocation(line: 157, column: 7, scope: !1665, inlinedAt: !1668)
!1685 = !DILocation(line: 158, column: 6, scope: !1683, inlinedAt: !1668)
!1686 = !DILocation(line: 158, column: 23, scope: !1683, inlinedAt: !1668)
!1687 = !DILocation(line: 158, column: 5, scope: !1683, inlinedAt: !1668)
!1688 = !DILocation(line: 160, column: 15, scope: !1683, inlinedAt: !1668)
!1689 = !DILocation(line: 161, column: 7, scope: !1690, inlinedAt: !1668)
!1690 = distinct !DILexicalBlock(scope: !1665, file: !2, line: 161, column: 7)
!1691 = !DILocation(line: 161, column: 24, scope: !1690, inlinedAt: !1668)
!1692 = !DILocation(line: 161, column: 22, scope: !1690, inlinedAt: !1668)
!1693 = !DILocation(line: 161, column: 7, scope: !1665, inlinedAt: !1668)
!1694 = !DILocation(line: 162, column: 19, scope: !1690, inlinedAt: !1668)
!1695 = !DILocation(line: 162, column: 5, scope: !1690, inlinedAt: !1668)
!1696 = !DILocation(line: 380, column: 46, scope: !1669, inlinedAt: !1514)
!1697 = !DILocalVariable(name: "__dest", arg: 1, scope: !1698, file: !1546, line: 84, type: !1701)
!1698 = distinct !DISubprogram(name: "stpcpy", scope: !1546, file: !1546, line: 84, type: !1699, scopeLine: 85, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1702)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!88, !1701, !1056}
!1701 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !88)
!1702 = !{!1697, !1703}
!1703 = !DILocalVariable(name: "__src", arg: 2, scope: !1698, file: !1546, line: 84, type: !1056)
!1704 = !DILocation(line: 0, scope: !1698, inlinedAt: !1705)
!1705 = distinct !DILocation(line: 380, column: 31, scope: !1669, inlinedAt: !1514)
!1706 = !DILocation(line: 86, column: 10, scope: !1698, inlinedAt: !1705)
!1707 = !DILocation(line: 381, column: 21, scope: !1669, inlinedAt: !1514)
!1708 = !DILocation(line: 0, scope: !1654, inlinedAt: !1514)
!1709 = !DILocation(line: 385, column: 19, scope: !1655, inlinedAt: !1514)
!1710 = !DILocation(line: 387, column: 23, scope: !1711, inlinedAt: !1514)
!1711 = distinct !DILexicalBlock(scope: !1712, file: !2, line: 387, column: 23)
!1712 = distinct !DILexicalBlock(scope: !1713, file: !2, line: 386, column: 17)
!1713 = distinct !DILexicalBlock(scope: !1655, file: !2, line: 385, column: 19)
!1714 = !DILocation(line: 387, column: 23, scope: !1712, inlinedAt: !1514)
!1715 = !DILocation(line: 389, column: 29, scope: !1716, inlinedAt: !1514)
!1716 = distinct !DILexicalBlock(scope: !1711, file: !2, line: 388, column: 21)
!1717 = !DILocation(line: 389, column: 32, scope: !1716, inlinedAt: !1514)
!1718 = !DILocation(line: 390, column: 29, scope: !1716, inlinedAt: !1514)
!1719 = !DILocation(line: 390, column: 32, scope: !1716, inlinedAt: !1514)
!1720 = !DILocation(line: 391, column: 34, scope: !1716, inlinedAt: !1514)
!1721 = !DILocation(line: 392, column: 21, scope: !1716, inlinedAt: !1514)
!1722 = !DILocation(line: 393, column: 25, scope: !1712, inlinedAt: !1514)
!1723 = !DILocation(line: 393, column: 28, scope: !1712, inlinedAt: !1514)
!1724 = !DILocation(line: 394, column: 17, scope: !1712, inlinedAt: !1514)
!1725 = !DILocation(line: 398, column: 21, scope: !1655, inlinedAt: !1514)
!1726 = !DILocation(line: 398, column: 24, scope: !1655, inlinedAt: !1514)
!1727 = !DILocation(line: 0, scope: !1485, inlinedAt: !1514)
!1728 = !DILocation(line: 402, column: 17, scope: !1486, inlinedAt: !1514)
!1729 = !DILocation(line: 401, column: 9, scope: !1485, inlinedAt: !1514)
!1730 = distinct !{!1730, !1731, !1732, !1112}
!1731 = !DILocation(line: 261, column: 7, scope: !1486, inlinedAt: !1514)
!1732 = !DILocation(line: 402, column: 24, scope: !1486, inlinedAt: !1514)
!1733 = !DILocation(line: 406, column: 11, scope: !1734, inlinedAt: !1514)
!1734 = distinct !DILexicalBlock(scope: !1486, file: !2, line: 406, column: 11)
!1735 = !DILocation(line: 406, column: 11, scope: !1486, inlinedAt: !1514)
!1736 = !DILocation(line: 408, column: 17, scope: !1737, inlinedAt: !1514)
!1737 = distinct !DILexicalBlock(scope: !1734, file: !2, line: 407, column: 9)
!1738 = !DILocation(line: 408, column: 20, scope: !1737, inlinedAt: !1514)
!1739 = !DILocation(line: 409, column: 22, scope: !1737, inlinedAt: !1514)
!1740 = !DILocation(line: 410, column: 9, scope: !1737, inlinedAt: !1514)
!1741 = !DILocation(line: 0, scope: !1486, inlinedAt: !1514)
!1742 = !DILocation(line: 414, column: 20, scope: !1743, inlinedAt: !1514)
!1743 = distinct !DILexicalBlock(scope: !1486, file: !2, line: 414, column: 11)
!1744 = !DILocation(line: 414, column: 25, scope: !1743, inlinedAt: !1514)
!1745 = !DILocation(line: 0, scope: !1665, inlinedAt: !1746)
!1746 = distinct !DILocation(line: 416, column: 11, scope: !1747, inlinedAt: !1514)
!1747 = distinct !DILexicalBlock(scope: !1743, file: !2, line: 415, column: 9)
!1748 = !DILocation(line: 149, column: 3, scope: !1665, inlinedAt: !1746)
!1749 = !DILocation(line: 151, column: 18, scope: !1672, inlinedAt: !1746)
!1750 = !DILocation(line: 151, column: 21, scope: !1672, inlinedAt: !1746)
!1751 = !DILocation(line: 151, column: 11, scope: !1673, inlinedAt: !1746)
!1752 = !DILocation(line: 153, column: 12, scope: !1673, inlinedAt: !1746)
!1753 = !DILocation(line: 153, column: 15, scope: !1673, inlinedAt: !1746)
!1754 = !DILocation(line: 155, column: 15, scope: !1665, inlinedAt: !1746)
!1755 = !DILocation(line: 154, column: 5, scope: !1673, inlinedAt: !1746)
!1756 = distinct !{!1756, !1748, !1757, !1112}
!1757 = !DILocation(line: 155, column: 32, scope: !1665, inlinedAt: !1746)
!1758 = !DILocation(line: 157, column: 22, scope: !1683, inlinedAt: !1746)
!1759 = !DILocation(line: 157, column: 7, scope: !1665, inlinedAt: !1746)
!1760 = !DILocation(line: 158, column: 6, scope: !1683, inlinedAt: !1746)
!1761 = !DILocation(line: 158, column: 23, scope: !1683, inlinedAt: !1746)
!1762 = !DILocation(line: 158, column: 5, scope: !1683, inlinedAt: !1746)
!1763 = !DILocation(line: 160, column: 15, scope: !1683, inlinedAt: !1746)
!1764 = !DILocation(line: 161, column: 7, scope: !1690, inlinedAt: !1746)
!1765 = !DILocation(line: 161, column: 24, scope: !1690, inlinedAt: !1746)
!1766 = !DILocation(line: 161, column: 22, scope: !1690, inlinedAt: !1746)
!1767 = !DILocation(line: 161, column: 7, scope: !1665, inlinedAt: !1746)
!1768 = !DILocation(line: 162, column: 19, scope: !1690, inlinedAt: !1746)
!1769 = !DILocation(line: 162, column: 5, scope: !1690, inlinedAt: !1746)
!1770 = !DILocation(line: 417, column: 34, scope: !1747, inlinedAt: !1514)
!1771 = !DILocation(line: 0, scope: !1698, inlinedAt: !1772)
!1772 = distinct !DILocation(line: 417, column: 19, scope: !1747, inlinedAt: !1514)
!1773 = !DILocation(line: 86, column: 10, scope: !1698, inlinedAt: !1772)
!1774 = !DILocation(line: 418, column: 9, scope: !1747, inlinedAt: !1514)
!1775 = !DILocation(line: 426, column: 11, scope: !1486, inlinedAt: !1514)
!1776 = !DILocation(line: 430, column: 22, scope: !1777, inlinedAt: !1514)
!1777 = distinct !DILexicalBlock(scope: !1778, file: !2, line: 430, column: 19)
!1778 = distinct !DILexicalBlock(scope: !1779, file: !2, line: 429, column: 13)
!1779 = distinct !DILexicalBlock(scope: !1780, file: !2, line: 427, column: 9)
!1780 = distinct !DILexicalBlock(scope: !1486, file: !2, line: 426, column: 11)
!1781 = !DILocation(line: 430, column: 19, scope: !1778, inlinedAt: !1514)
!1782 = !DILocation(line: 432, column: 26, scope: !1783, inlinedAt: !1514)
!1783 = distinct !DILexicalBlock(scope: !1784, file: !2, line: 432, column: 23)
!1784 = distinct !DILexicalBlock(scope: !1777, file: !2, line: 431, column: 17)
!1785 = !DILocation(line: 432, column: 23, scope: !1784, inlinedAt: !1514)
!1786 = !DILocation(line: 433, column: 27, scope: !1783, inlinedAt: !1514)
!1787 = !DILocation(line: 433, column: 30, scope: !1783, inlinedAt: !1514)
!1788 = !DILocation(line: 433, column: 21, scope: !1783, inlinedAt: !1514)
!1789 = !DILocation(line: 434, column: 31, scope: !1790, inlinedAt: !1514)
!1790 = distinct !DILexicalBlock(scope: !1783, file: !2, line: 434, column: 28)
!1791 = !DILocation(line: 0, scope: !1790, inlinedAt: !1514)
!1792 = !DILocation(line: 434, column: 28, scope: !1783, inlinedAt: !1514)
!1793 = !DILocation(line: 436, column: 32, scope: !1794, inlinedAt: !1514)
!1794 = distinct !DILexicalBlock(scope: !1790, file: !2, line: 435, column: 21)
!1795 = !DILocation(line: 437, column: 32, scope: !1794, inlinedAt: !1514)
!1796 = !DILocation(line: 438, column: 21, scope: !1794, inlinedAt: !1514)
!1797 = !DILocation(line: 441, column: 32, scope: !1798, inlinedAt: !1514)
!1798 = distinct !DILexicalBlock(scope: !1790, file: !2, line: 440, column: 21)
!1799 = !DILocation(line: 442, column: 32, scope: !1798, inlinedAt: !1514)
!1800 = !DILocation(line: 443, column: 30, scope: !1801, inlinedAt: !1514)
!1801 = distinct !DILexicalBlock(scope: !1798, file: !2, line: 443, column: 27)
!1802 = !DILocation(line: 443, column: 27, scope: !1798, inlinedAt: !1514)
!1803 = !DILocation(line: 445, column: 34, scope: !1804, inlinedAt: !1514)
!1804 = distinct !DILexicalBlock(scope: !1805, file: !2, line: 445, column: 31)
!1805 = distinct !DILexicalBlock(scope: !1801, file: !2, line: 444, column: 25)
!1806 = !DILocation(line: 445, column: 31, scope: !1805, inlinedAt: !1514)
!1807 = !DILocation(line: 446, column: 43, scope: !1804, inlinedAt: !1514)
!1808 = !DILocation(line: 446, column: 35, scope: !1804, inlinedAt: !1514)
!1809 = !DILocation(line: 446, column: 38, scope: !1804, inlinedAt: !1514)
!1810 = !DILocation(line: 446, column: 29, scope: !1804, inlinedAt: !1514)
!1811 = !DILocation(line: 449, column: 37, scope: !1812, inlinedAt: !1514)
!1812 = distinct !DILexicalBlock(scope: !1804, file: !2, line: 448, column: 29)
!1813 = !DILocation(line: 449, column: 40, scope: !1812, inlinedAt: !1514)
!1814 = !DILocation(line: 450, column: 37, scope: !1812, inlinedAt: !1514)
!1815 = !DILocation(line: 450, column: 40, scope: !1812, inlinedAt: !1514)
!1816 = !DILocation(line: 455, column: 33, scope: !1817, inlinedAt: !1514)
!1817 = distinct !DILexicalBlock(scope: !1801, file: !2, line: 454, column: 25)
!1818 = !DILocation(line: 455, column: 36, scope: !1817, inlinedAt: !1514)
!1819 = !DILocation(line: 456, column: 47, scope: !1817, inlinedAt: !1514)
!1820 = !DILocation(line: 456, column: 33, scope: !1817, inlinedAt: !1514)
!1821 = !DILocation(line: 456, column: 36, scope: !1817, inlinedAt: !1514)
!1822 = !DILocation(line: 460, column: 27, scope: !1823, inlinedAt: !1514)
!1823 = distinct !DILexicalBlock(scope: !1777, file: !2, line: 460, column: 24)
!1824 = !DILocation(line: 460, column: 35, scope: !1823, inlinedAt: !1514)
!1825 = !DILocation(line: 461, column: 23, scope: !1823, inlinedAt: !1514)
!1826 = !DILocation(line: 461, column: 26, scope: !1823, inlinedAt: !1514)
!1827 = !DILocation(line: 461, column: 17, scope: !1823, inlinedAt: !1514)
!1828 = !DILocation(line: 462, column: 27, scope: !1829, inlinedAt: !1514)
!1829 = distinct !DILexicalBlock(scope: !1823, file: !2, line: 462, column: 24)
!1830 = !DILocation(line: 462, column: 24, scope: !1823, inlinedAt: !1514)
!1831 = distinct !{!1831, !1518, !1832}
!1832 = !DILocation(line: 510, column: 5, scope: !1487, inlinedAt: !1514)
!1833 = !DILocation(line: 469, column: 25, scope: !1834, inlinedAt: !1514)
!1834 = distinct !DILexicalBlock(scope: !1829, file: !2, line: 468, column: 17)
!1835 = !DILocation(line: 469, column: 28, scope: !1834, inlinedAt: !1514)
!1836 = !DILocation(line: 470, column: 33, scope: !1834, inlinedAt: !1514)
!1837 = !DILocation(line: 470, column: 25, scope: !1834, inlinedAt: !1514)
!1838 = !DILocation(line: 470, column: 28, scope: !1834, inlinedAt: !1514)
!1839 = !DILocation(line: 0, scope: !1777, inlinedAt: !1514)
!1840 = !DILocation(line: 473, column: 25, scope: !1778, inlinedAt: !1514)
!1841 = !DILocation(line: 473, column: 20, scope: !1778, inlinedAt: !1514)
!1842 = !DILocation(line: 428, column: 11, scope: !1779, inlinedAt: !1514)
!1843 = distinct !{!1843, !1842, !1844}
!1844 = !DILocation(line: 474, column: 13, scope: !1779, inlinedAt: !1514)
!1845 = !DILocation(line: 481, column: 22, scope: !1846, inlinedAt: !1514)
!1846 = distinct !DILexicalBlock(scope: !1847, file: !2, line: 481, column: 19)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !2, line: 480, column: 13)
!1848 = distinct !DILexicalBlock(scope: !1780, file: !2, line: 477, column: 9)
!1849 = !DILocation(line: 481, column: 30, scope: !1846, inlinedAt: !1514)
!1850 = !DILocation(line: 483, column: 25, scope: !1851, inlinedAt: !1514)
!1851 = distinct !DILexicalBlock(scope: !1846, file: !2, line: 482, column: 17)
!1852 = !DILocation(line: 483, column: 28, scope: !1851, inlinedAt: !1514)
!1853 = !DILocation(line: 484, column: 25, scope: !1851, inlinedAt: !1514)
!1854 = !DILocation(line: 484, column: 28, scope: !1851, inlinedAt: !1514)
!1855 = !DILocation(line: 485, column: 17, scope: !1851, inlinedAt: !1514)
!1856 = !DILocation(line: 486, column: 24, scope: !1846, inlinedAt: !1514)
!1857 = !DILocation(line: 488, column: 37, scope: !1858, inlinedAt: !1514)
!1858 = distinct !DILexicalBlock(scope: !1859, file: !2, line: 488, column: 23)
!1859 = distinct !DILexicalBlock(scope: !1860, file: !2, line: 487, column: 17)
!1860 = distinct !DILexicalBlock(scope: !1846, file: !2, line: 486, column: 24)
!1861 = !DILocation(line: 488, column: 43, scope: !1858, inlinedAt: !1514)
!1862 = !DILocation(line: 488, column: 51, scope: !1858, inlinedAt: !1514)
!1863 = !DILocation(line: 490, column: 32, scope: !1864, inlinedAt: !1514)
!1864 = distinct !DILexicalBlock(scope: !1865, file: !2, line: 490, column: 27)
!1865 = distinct !DILexicalBlock(scope: !1858, file: !2, line: 489, column: 21)
!1866 = !DILocation(line: 490, column: 27, scope: !1865, inlinedAt: !1514)
!1867 = !DILocation(line: 491, column: 36, scope: !1864, inlinedAt: !1514)
!1868 = !DILocation(line: 491, column: 25, scope: !1864, inlinedAt: !1514)
!1869 = !DILocation(line: 494, column: 33, scope: !1870, inlinedAt: !1514)
!1870 = distinct !DILexicalBlock(scope: !1864, file: !2, line: 493, column: 25)
!1871 = !DILocation(line: 494, column: 36, scope: !1870, inlinedAt: !1514)
!1872 = !DILocation(line: 495, column: 33, scope: !1870, inlinedAt: !1514)
!1873 = !DILocation(line: 495, column: 36, scope: !1870, inlinedAt: !1514)
!1874 = !DILocation(line: 499, column: 27, scope: !1858, inlinedAt: !1514)
!1875 = !DILocation(line: 499, column: 30, scope: !1858, inlinedAt: !1514)
!1876 = !DILocation(line: 507, column: 25, scope: !1847, inlinedAt: !1514)
!1877 = !DILocation(line: 507, column: 20, scope: !1847, inlinedAt: !1514)
!1878 = !DILocation(line: 479, column: 11, scope: !1848, inlinedAt: !1514)
!1879 = distinct !{!1879, !1878, !1880}
!1880 = !DILocation(line: 508, column: 13, scope: !1848, inlinedAt: !1514)
!1881 = !DILocation(line: 801, column: 14, scope: !526)
!1882 = !DILocalVariable(name: "ptr", arg: 1, scope: !1883, file: !1884, line: 75, type: !144)
!1883 = distinct !DISubprogram(name: "alignfree", scope: !1884, file: !1884, line: 75, type: !1885, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1887)
!1884 = !DIFile(filename: "./lib/alignalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0a7d01653c1483fdd96283992acf95d0")
!1885 = !DISubroutineType(types: !1886)
!1886 = !{null, !144}
!1887 = !{!1882}
!1888 = !DILocation(line: 0, scope: !1883, inlinedAt: !1889)
!1889 = distinct !DILocation(line: 805, column: 11, scope: !526)
!1890 = !DILocation(line: 77, column: 3, scope: !1883, inlinedAt: !1889)
!1891 = !DILocation(line: 0, scope: !524)
!1892 = !DILocation(line: 0, scope: !1883, inlinedAt: !1893)
!1893 = distinct !DILocation(line: 808, column: 7, scope: !510)
!1894 = !DILocation(line: 77, column: 3, scope: !1883, inlinedAt: !1893)
!1895 = !DILocation(line: 808, column: 7, scope: !510)
!1896 = !DILocation(line: 810, column: 5, scope: !510)
!1897 = !DILocation(line: 811, column: 26, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !510, file: !2, line: 811, column: 11)
!1899 = !DILocation(line: 811, column: 36, scope: !1898)
!1900 = !DILocation(line: 811, column: 29, scope: !1898)
!1901 = !DILocation(line: 811, column: 48, scope: !1898)
!1902 = !DILocation(line: 811, column: 11, scope: !510)
!1903 = !DILocation(line: 813, column: 11, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1898, file: !2, line: 812, column: 9)
!1905 = !DILocation(line: 815, column: 9, scope: !1904)
!1906 = !DILocation(line: 816, column: 5, scope: !83)
!1907 = !DILocation(line: 817, column: 10, scope: !83)
!1908 = !DILocation(line: 817, column: 19, scope: !83)
!1909 = !DILocation(line: 816, column: 5, scope: !510)
!1910 = distinct !{!1910, !1315, !1911, !1112}
!1911 = !DILocation(line: 817, column: 25, scope: !83)
!1912 = !DILocation(line: 819, column: 7, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !83, file: !2, line: 819, column: 7)
!1914 = !DILocation(line: 819, column: 7, scope: !83)
!1915 = !DILocation(line: 821, column: 11, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1917, file: !2, line: 821, column: 11)
!1917 = distinct !DILexicalBlock(scope: !1913, file: !2, line: 820, column: 5)
!1918 = !DILocation(line: 821, column: 47, scope: !1916)
!1919 = !DILocation(line: 821, column: 11, scope: !1917)
!1920 = !DILocation(line: 948, column: 21, scope: !1459, inlinedAt: !1921)
!1921 = distinct !DILocation(line: 822, column: 9, scope: !1916)
!1922 = !DILocation(line: 0, scope: !1459, inlinedAt: !1921)
!1923 = !DILocation(line: 949, column: 3, scope: !1459, inlinedAt: !1921)
!1924 = !DILocation(line: 950, column: 11, scope: !1459, inlinedAt: !1921)
!1925 = !DILocation(line: 950, column: 3, scope: !1459, inlinedAt: !1921)
!1926 = !DILocation(line: 951, column: 3, scope: !1459, inlinedAt: !1921)
!1927 = !DILocation(line: 952, column: 3, scope: !1459, inlinedAt: !1921)
!1928 = !DILocation(line: 825, column: 7, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !83, file: !2, line: 825, column: 7)
!1930 = !DILocation(line: 825, column: 23, scope: !1929)
!1931 = !DILocation(line: 825, column: 26, scope: !1929)
!1932 = !DILocation(line: 825, column: 47, scope: !1929)
!1933 = !DILocation(line: 825, column: 7, scope: !83)
!1934 = !DILocation(line: 826, column: 5, scope: !1929)
!1935 = !DILocation(line: 828, column: 10, scope: !83)
!1936 = !DILocation(line: 829, column: 1, scope: !83)
!1937 = !DISubprogram(name: "bindtextdomain", scope: !1048, file: !1048, line: 86, type: !1938, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1938 = !DISubroutineType(types: !1939)
!1939 = !{!88, !149, !149}
!1940 = !DISubprogram(name: "textdomain", scope: !1048, file: !1048, line: 82, type: !1191, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1941 = !DISubprogram(name: "atexit", scope: !1189, file: !1189, line: 602, type: !1942, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{!86, !610}
!1944 = !DISubprogram(name: "getopt_long", scope: !532, file: !532, line: 66, type: !1945, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{!86, !86, !1947, !149, !1949, !537}
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!1950 = !DISubprogram(name: "fstat", scope: !1951, file: !1951, line: 210, type: !1952, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1951 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!1952 = !DISubroutineType(types: !1953)
!1953 = !{!86, !86, !1954}
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!1955 = !DISubprogram(name: "__errno_location", scope: !1956, file: !1956, line: 37, type: !1957, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1956 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1957 = !DISubroutineType(types: !1958)
!1958 = !{!537}
!1959 = !DISubprogram(name: "getpagesize", scope: !1960, file: !1960, line: 1011, type: !1398, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1960 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1961 = !DISubprogram(name: "open", scope: !1962, file: !1962, line: 181, type: !1963, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1962 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1963 = !DISubroutineType(types: !1964)
!1964 = !{!86, !149, !86, null}
!1965 = !DISubprogram(name: "lseek", scope: !1960, file: !1960, line: 339, type: !1966, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{!313, !86, !313, !86}
!1968 = !DISubprogram(name: "fflush_unlocked", scope: !517, file: !517, line: 239, type: !1969, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{!86, !287}
!1971 = !DISubprogram(name: "clearerr_unlocked", scope: !517, file: !517, line: 794, type: !1972, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{null, !287}
!1974 = !DISubprogram(name: "ioctl", scope: !1975, file: !1975, line: 42, type: !1976, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1975 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/ioctl.h", directory: "", checksumkind: CSK_MD5, checksum: "17041ae374bfd0bee8350d01883d298c")
!1976 = !DISubroutineType(types: !1977)
!1977 = !{!86, !86, !148, null}
!1978 = !DISubprogram(name: "free", scope: !1189, file: !1189, line: 555, type: !1885, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1979 = !DISubprogram(name: "close", scope: !1960, file: !1960, line: 358, type: !1980, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{!86, !86}
!1982 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !550, file: !550, line: 50, type: !1016, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !1983)
!1983 = !{!1984}
!1984 = !DILocalVariable(name: "file", arg: 1, scope: !1982, file: !550, line: 50, type: !149)
!1985 = !DILocation(line: 0, scope: !1982)
!1986 = !DILocation(line: 52, column: 13, scope: !1982)
!1987 = !DILocation(line: 53, column: 1, scope: !1982)
!1988 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !550, file: !550, line: 87, type: !1989, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !1991)
!1989 = !DISubroutineType(types: !1990)
!1990 = !{null, !274}
!1991 = !{!1992}
!1992 = !DILocalVariable(name: "ignore", arg: 1, scope: !1988, file: !550, line: 87, type: !274)
!1993 = !DILocation(line: 0, scope: !1988)
!1994 = !DILocation(line: 89, column: 16, scope: !1988)
!1995 = !{!1996, !1996, i64 0}
!1996 = !{!"_Bool", !993, i64 0}
!1997 = !DILocation(line: 90, column: 1, scope: !1988)
!1998 = distinct !DISubprogram(name: "close_stdout", scope: !550, file: !550, line: 116, type: !611, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !1999)
!1999 = !{!2000}
!2000 = !DILocalVariable(name: "write_error", scope: !2001, file: !550, line: 121, type: !149)
!2001 = distinct !DILexicalBlock(scope: !2002, file: !550, line: 120, column: 5)
!2002 = distinct !DILexicalBlock(scope: !1998, file: !550, line: 118, column: 7)
!2003 = !DILocation(line: 118, column: 21, scope: !2002)
!2004 = !DILocation(line: 118, column: 7, scope: !2002)
!2005 = !DILocation(line: 118, column: 29, scope: !2002)
!2006 = !DILocation(line: 119, column: 7, scope: !2002)
!2007 = !DILocation(line: 119, column: 12, scope: !2002)
!2008 = !{i8 0, i8 2}
!2009 = !DILocation(line: 119, column: 25, scope: !2002)
!2010 = !DILocation(line: 119, column: 28, scope: !2002)
!2011 = !DILocation(line: 119, column: 34, scope: !2002)
!2012 = !DILocation(line: 118, column: 7, scope: !1998)
!2013 = !DILocation(line: 121, column: 33, scope: !2001)
!2014 = !DILocation(line: 0, scope: !2001)
!2015 = !DILocation(line: 122, column: 11, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !2001, file: !550, line: 122, column: 11)
!2017 = !DILocation(line: 0, scope: !2016)
!2018 = !DILocation(line: 122, column: 11, scope: !2001)
!2019 = !DILocation(line: 123, column: 9, scope: !2016)
!2020 = !DILocation(line: 126, column: 9, scope: !2016)
!2021 = !DILocation(line: 128, column: 14, scope: !2001)
!2022 = !DILocation(line: 128, column: 7, scope: !2001)
!2023 = !DILocation(line: 133, column: 42, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !1998, file: !550, line: 133, column: 7)
!2025 = !DILocation(line: 133, column: 28, scope: !2024)
!2026 = !DILocation(line: 133, column: 50, scope: !2024)
!2027 = !DILocation(line: 133, column: 7, scope: !1998)
!2028 = !DILocation(line: 134, column: 12, scope: !2024)
!2029 = !DILocation(line: 134, column: 5, scope: !2024)
!2030 = !DILocation(line: 135, column: 1, scope: !1998)
!2031 = !DISubprogram(name: "_exit", scope: !1960, file: !1960, line: 624, type: !981, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2032 = distinct !DISubprogram(name: "rpl_copy_file_range", scope: !891, file: !891, line: 41, type: !2033, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !890, retainedNodes: !2038)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{!2035, !86, !2036, !86, !2036, !146, !98}
!2035 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !1960, line: 220, baseType: !1404)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1960, line: 243, baseType: !313)
!2038 = !{!2039, !2040, !2041, !2042, !2043, !2044, !2045}
!2039 = !DILocalVariable(name: "infd", arg: 1, scope: !2032, file: !891, line: 41, type: !86)
!2040 = !DILocalVariable(name: "pinoff", arg: 2, scope: !2032, file: !891, line: 41, type: !2036)
!2041 = !DILocalVariable(name: "outfd", arg: 3, scope: !2032, file: !891, line: 42, type: !86)
!2042 = !DILocalVariable(name: "poutoff", arg: 4, scope: !2032, file: !891, line: 42, type: !2036)
!2043 = !DILocalVariable(name: "length", arg: 5, scope: !2032, file: !891, line: 43, type: !146)
!2044 = !DILocalVariable(name: "flags", arg: 6, scope: !2032, file: !891, line: 43, type: !98)
!2045 = !DILocalVariable(name: "ok", scope: !2032, file: !891, line: 48, type: !274)
!2046 = !DILocation(line: 0, scope: !2032)
!2047 = !DILocation(line: 86, column: 11, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2049, file: !891, line: 78, column: 5)
!2049 = distinct !DILexicalBlock(scope: !2032, file: !891, line: 77, column: 7)
!2050 = !DILocation(line: 90, column: 14, scope: !2048)
!2051 = !DILocation(line: 99, column: 1, scope: !2032)
!2052 = !DISubprogram(name: "copy_file_range", scope: !1960, file: !1960, line: 1142, type: !2053, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{!2035, !86, !2055, !86, !2055, !146, !98}
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!2056 = distinct !DISubprogram(name: "verror", scope: !565, file: !565, line: 251, type: !2057, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !564, retainedNodes: !2059)
!2057 = !DISubroutineType(types: !2058)
!2058 = !{null, !86, !86, !149, !575}
!2059 = !{!2060, !2061, !2062, !2063}
!2060 = !DILocalVariable(name: "status", arg: 1, scope: !2056, file: !565, line: 251, type: !86)
!2061 = !DILocalVariable(name: "errnum", arg: 2, scope: !2056, file: !565, line: 251, type: !86)
!2062 = !DILocalVariable(name: "message", arg: 3, scope: !2056, file: !565, line: 251, type: !149)
!2063 = !DILocalVariable(name: "args", arg: 4, scope: !2056, file: !565, line: 251, type: !575)
!2064 = !DILocation(line: 0, scope: !2056)
!2065 = !DILocation(line: 261, column: 3, scope: !2056)
!2066 = !DILocation(line: 265, column: 7, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2056, file: !565, line: 265, column: 7)
!2068 = !DILocation(line: 265, column: 7, scope: !2056)
!2069 = !DILocation(line: 266, column: 5, scope: !2067)
!2070 = !DILocation(line: 272, column: 7, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2067, file: !565, line: 268, column: 5)
!2072 = !DILocation(line: 276, column: 3, scope: !2056)
!2073 = !DILocation(line: 282, column: 1, scope: !2056)
!2074 = distinct !DISubprogram(name: "flush_stdout", scope: !565, file: !565, line: 163, type: !611, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !564, retainedNodes: !2075)
!2075 = !{!2076}
!2076 = !DILocalVariable(name: "stdout_fd", scope: !2074, file: !565, line: 166, type: !86)
!2077 = !DILocation(line: 0, scope: !2074)
!2078 = !DILocalVariable(name: "fd", arg: 1, scope: !2079, file: !565, line: 145, type: !86)
!2079 = distinct !DISubprogram(name: "is_open", scope: !565, file: !565, line: 145, type: !1980, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !564, retainedNodes: !2080)
!2080 = !{!2078}
!2081 = !DILocation(line: 0, scope: !2079, inlinedAt: !2082)
!2082 = distinct !DILocation(line: 182, column: 25, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2074, file: !565, line: 182, column: 7)
!2084 = !DILocation(line: 157, column: 15, scope: !2079, inlinedAt: !2082)
!2085 = !DILocation(line: 157, column: 12, scope: !2079, inlinedAt: !2082)
!2086 = !DILocation(line: 182, column: 7, scope: !2074)
!2087 = !DILocation(line: 184, column: 5, scope: !2083)
!2088 = !DILocation(line: 185, column: 1, scope: !2074)
!2089 = distinct !DISubprogram(name: "error_tail", scope: !565, file: !565, line: 219, type: !2057, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !564, retainedNodes: !2090)
!2090 = !{!2091, !2092, !2093, !2094}
!2091 = !DILocalVariable(name: "status", arg: 1, scope: !2089, file: !565, line: 219, type: !86)
!2092 = !DILocalVariable(name: "errnum", arg: 2, scope: !2089, file: !565, line: 219, type: !86)
!2093 = !DILocalVariable(name: "message", arg: 3, scope: !2089, file: !565, line: 219, type: !149)
!2094 = !DILocalVariable(name: "args", arg: 4, scope: !2089, file: !565, line: 219, type: !575)
!2095 = distinct !DIAssignID()
!2096 = !DILocation(line: 0, scope: !2089)
!2097 = !DILocation(line: 229, column: 13, scope: !2089)
!2098 = !DILocalVariable(name: "__stream", arg: 1, scope: !2099, file: !1052, line: 132, type: !2102)
!2099 = distinct !DISubprogram(name: "vfprintf", scope: !1052, file: !1052, line: 132, type: !2100, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !564, retainedNodes: !2137)
!2100 = !DISubroutineType(types: !2101)
!2101 = !{!86, !2102, !1056, !575}
!2102 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2103)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !289, line: 7, baseType: !2105)
!2105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !291, line: 49, size: 1728, elements: !2106)
!2106 = !{!2107, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2116, !2117, !2118, !2119, !2120, !2122, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2105, file: !291, line: 51, baseType: !86, size: 32)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2105, file: !291, line: 54, baseType: !88, size: 64, offset: 64)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2105, file: !291, line: 55, baseType: !88, size: 64, offset: 128)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2105, file: !291, line: 56, baseType: !88, size: 64, offset: 192)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2105, file: !291, line: 57, baseType: !88, size: 64, offset: 256)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2105, file: !291, line: 58, baseType: !88, size: 64, offset: 320)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2105, file: !291, line: 59, baseType: !88, size: 64, offset: 384)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2105, file: !291, line: 60, baseType: !88, size: 64, offset: 448)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2105, file: !291, line: 61, baseType: !88, size: 64, offset: 512)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2105, file: !291, line: 64, baseType: !88, size: 64, offset: 576)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2105, file: !291, line: 65, baseType: !88, size: 64, offset: 640)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2105, file: !291, line: 66, baseType: !88, size: 64, offset: 704)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2105, file: !291, line: 68, baseType: !306, size: 64, offset: 768)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2105, file: !291, line: 70, baseType: !2121, size: 64, offset: 832)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2105, file: !291, line: 72, baseType: !86, size: 32, offset: 896)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2105, file: !291, line: 73, baseType: !86, size: 32, offset: 928)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2105, file: !291, line: 74, baseType: !313, size: 64, offset: 960)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2105, file: !291, line: 77, baseType: !145, size: 16, offset: 1024)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2105, file: !291, line: 78, baseType: !318, size: 8, offset: 1040)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2105, file: !291, line: 79, baseType: !197, size: 8, offset: 1048)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2105, file: !291, line: 81, baseType: !321, size: 64, offset: 1088)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2105, file: !291, line: 89, baseType: !324, size: 64, offset: 1152)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2105, file: !291, line: 91, baseType: !326, size: 64, offset: 1216)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2105, file: !291, line: 92, baseType: !329, size: 64, offset: 1280)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2105, file: !291, line: 93, baseType: !2121, size: 64, offset: 1344)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2105, file: !291, line: 94, baseType: !144, size: 64, offset: 1408)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2105, file: !291, line: 95, baseType: !146, size: 64, offset: 1472)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2105, file: !291, line: 96, baseType: !86, size: 32, offset: 1536)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2105, file: !291, line: 98, baseType: !226, size: 160, offset: 1568)
!2137 = !{!2098, !2138, !2139}
!2138 = !DILocalVariable(name: "__fmt", arg: 2, scope: !2099, file: !1052, line: 133, type: !1056)
!2139 = !DILocalVariable(name: "__ap", arg: 3, scope: !2099, file: !1052, line: 133, type: !575)
!2140 = !DILocation(line: 0, scope: !2099, inlinedAt: !2141)
!2141 = distinct !DILocation(line: 229, column: 3, scope: !2089)
!2142 = !DILocation(line: 135, column: 10, scope: !2099, inlinedAt: !2141)
!2143 = !DILocation(line: 232, column: 3, scope: !2089)
!2144 = !DILocation(line: 233, column: 7, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2089, file: !565, line: 233, column: 7)
!2146 = !DILocation(line: 233, column: 7, scope: !2089)
!2147 = !DILocalVariable(name: "errbuf", scope: !2148, file: !565, line: 193, type: !2152)
!2148 = distinct !DISubprogram(name: "print_errno_message", scope: !565, file: !565, line: 188, type: !981, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !564, retainedNodes: !2149)
!2149 = !{!2150, !2151, !2147}
!2150 = !DILocalVariable(name: "errnum", arg: 1, scope: !2148, file: !565, line: 188, type: !86)
!2151 = !DILocalVariable(name: "s", scope: !2148, file: !565, line: 190, type: !149)
!2152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !2153)
!2153 = !{!2154}
!2154 = !DISubrange(count: 1024)
!2155 = !DILocation(line: 0, scope: !2148, inlinedAt: !2156)
!2156 = distinct !DILocation(line: 234, column: 5, scope: !2145)
!2157 = !DILocation(line: 193, column: 3, scope: !2148, inlinedAt: !2156)
!2158 = !DILocation(line: 195, column: 7, scope: !2148, inlinedAt: !2156)
!2159 = !DILocation(line: 207, column: 9, scope: !2160, inlinedAt: !2156)
!2160 = distinct !DILexicalBlock(scope: !2148, file: !565, line: 207, column: 7)
!2161 = !DILocation(line: 207, column: 7, scope: !2148, inlinedAt: !2156)
!2162 = !DILocation(line: 208, column: 9, scope: !2160, inlinedAt: !2156)
!2163 = !DILocation(line: 208, column: 5, scope: !2160, inlinedAt: !2156)
!2164 = !DILocation(line: 214, column: 3, scope: !2148, inlinedAt: !2156)
!2165 = !DILocation(line: 216, column: 1, scope: !2148, inlinedAt: !2156)
!2166 = !DILocation(line: 234, column: 5, scope: !2145)
!2167 = !DILocation(line: 238, column: 3, scope: !2089)
!2168 = !DILocalVariable(name: "__c", arg: 1, scope: !2169, file: !2170, line: 101, type: !86)
!2169 = distinct !DISubprogram(name: "putc_unlocked", scope: !2170, file: !2170, line: 101, type: !2171, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !564, retainedNodes: !2173)
!2170 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!2171 = !DISubroutineType(types: !2172)
!2172 = !{!86, !86, !2103}
!2173 = !{!2168, !2174}
!2174 = !DILocalVariable(name: "__stream", arg: 2, scope: !2169, file: !2170, line: 101, type: !2103)
!2175 = !DILocation(line: 0, scope: !2169, inlinedAt: !2176)
!2176 = distinct !DILocation(line: 238, column: 3, scope: !2089)
!2177 = !DILocation(line: 103, column: 10, scope: !2169, inlinedAt: !2176)
!2178 = !{!2179, !992, i64 40}
!2179 = !{!"_IO_FILE", !1066, i64 0, !992, i64 8, !992, i64 16, !992, i64 24, !992, i64 32, !992, i64 40, !992, i64 48, !992, i64 56, !992, i64 64, !992, i64 72, !992, i64 80, !992, i64 88, !992, i64 96, !992, i64 104, !1066, i64 112, !1066, i64 116, !1275, i64 120, !1107, i64 128, !993, i64 130, !993, i64 131, !992, i64 136, !1275, i64 144, !992, i64 152, !992, i64 160, !992, i64 168, !992, i64 176, !1275, i64 184, !1066, i64 192, !993, i64 196}
!2180 = !{!2179, !992, i64 48}
!2181 = !{!"branch_weights", i32 2000, i32 1}
!2182 = !DILocation(line: 240, column: 3, scope: !2089)
!2183 = !DILocation(line: 241, column: 7, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2089, file: !565, line: 241, column: 7)
!2185 = !DILocation(line: 241, column: 7, scope: !2089)
!2186 = !DILocation(line: 242, column: 5, scope: !2184)
!2187 = !DILocation(line: 243, column: 1, scope: !2089)
!2188 = !DISubprogram(name: "__vfprintf_chk", scope: !1052, file: !1052, line: 96, type: !2189, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2189 = !DISubroutineType(types: !2190)
!2190 = !{!86, !2102, !86, !1056, !575}
!2191 = !DISubprogram(name: "strerror_r", scope: !1185, file: !1185, line: 444, type: !2192, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2192 = !DISubroutineType(types: !2193)
!2193 = !{!88, !86, !88, !146}
!2194 = !DISubprogram(name: "__overflow", scope: !517, file: !517, line: 886, type: !2195, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2195 = !DISubroutineType(types: !2196)
!2196 = !{!86, !2103, !86}
!2197 = !DISubprogram(name: "fcntl", scope: !1962, file: !1962, line: 149, type: !2198, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{!86, !86, !86, null}
!2200 = distinct !DISubprogram(name: "error", scope: !565, file: !565, line: 285, type: !2201, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !564, retainedNodes: !2203)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{null, !86, !86, !149, null}
!2203 = !{!2204, !2205, !2206, !2207}
!2204 = !DILocalVariable(name: "status", arg: 1, scope: !2200, file: !565, line: 285, type: !86)
!2205 = !DILocalVariable(name: "errnum", arg: 2, scope: !2200, file: !565, line: 285, type: !86)
!2206 = !DILocalVariable(name: "message", arg: 3, scope: !2200, file: !565, line: 285, type: !149)
!2207 = !DILocalVariable(name: "ap", scope: !2200, file: !565, line: 287, type: !2208)
!2208 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !517, line: 52, baseType: !2209)
!2209 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2210, line: 12, baseType: !2211)
!2210 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!2211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !565, baseType: !2212)
!2212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !576, size: 192, elements: !198)
!2213 = distinct !DIAssignID()
!2214 = !DILocation(line: 0, scope: !2200)
!2215 = !DILocation(line: 287, column: 3, scope: !2200)
!2216 = !DILocation(line: 288, column: 3, scope: !2200)
!2217 = !DILocation(line: 289, column: 3, scope: !2200)
!2218 = !DILocation(line: 290, column: 3, scope: !2200)
!2219 = !DILocation(line: 291, column: 1, scope: !2200)
!2220 = !DILocation(line: 0, scope: !572)
!2221 = !DILocation(line: 302, column: 7, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !572, file: !565, line: 302, column: 7)
!2223 = !DILocation(line: 302, column: 7, scope: !572)
!2224 = !DILocation(line: 307, column: 11, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2226, file: !565, line: 307, column: 11)
!2226 = distinct !DILexicalBlock(scope: !2222, file: !565, line: 303, column: 5)
!2227 = !DILocation(line: 307, column: 27, scope: !2225)
!2228 = !DILocation(line: 308, column: 11, scope: !2225)
!2229 = !DILocation(line: 308, column: 28, scope: !2225)
!2230 = !DILocation(line: 308, column: 25, scope: !2225)
!2231 = !DILocation(line: 309, column: 15, scope: !2225)
!2232 = !DILocation(line: 309, column: 33, scope: !2225)
!2233 = !DILocation(line: 310, column: 19, scope: !2225)
!2234 = !DILocation(line: 311, column: 22, scope: !2225)
!2235 = !DILocation(line: 311, column: 56, scope: !2225)
!2236 = !DILocation(line: 307, column: 11, scope: !2226)
!2237 = !DILocation(line: 316, column: 21, scope: !2226)
!2238 = !DILocation(line: 317, column: 23, scope: !2226)
!2239 = !DILocation(line: 318, column: 5, scope: !2226)
!2240 = !DILocation(line: 327, column: 3, scope: !572)
!2241 = !DILocation(line: 331, column: 7, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !572, file: !565, line: 331, column: 7)
!2243 = !DILocation(line: 331, column: 7, scope: !572)
!2244 = !DILocation(line: 332, column: 5, scope: !2242)
!2245 = !DILocation(line: 338, column: 7, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2242, file: !565, line: 334, column: 5)
!2247 = !DILocation(line: 346, column: 3, scope: !572)
!2248 = !DILocation(line: 350, column: 3, scope: !572)
!2249 = !DILocation(line: 356, column: 1, scope: !572)
!2250 = distinct !DISubprogram(name: "error_at_line", scope: !565, file: !565, line: 359, type: !2251, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !564, retainedNodes: !2253)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{null, !86, !86, !149, !98, !149, null}
!2253 = !{!2254, !2255, !2256, !2257, !2258, !2259}
!2254 = !DILocalVariable(name: "status", arg: 1, scope: !2250, file: !565, line: 359, type: !86)
!2255 = !DILocalVariable(name: "errnum", arg: 2, scope: !2250, file: !565, line: 359, type: !86)
!2256 = !DILocalVariable(name: "file_name", arg: 3, scope: !2250, file: !565, line: 359, type: !149)
!2257 = !DILocalVariable(name: "line_number", arg: 4, scope: !2250, file: !565, line: 360, type: !98)
!2258 = !DILocalVariable(name: "message", arg: 5, scope: !2250, file: !565, line: 360, type: !149)
!2259 = !DILocalVariable(name: "ap", scope: !2250, file: !565, line: 362, type: !2208)
!2260 = distinct !DIAssignID()
!2261 = !DILocation(line: 0, scope: !2250)
!2262 = !DILocation(line: 362, column: 3, scope: !2250)
!2263 = !DILocation(line: 363, column: 3, scope: !2250)
!2264 = !DILocation(line: 364, column: 3, scope: !2250)
!2265 = !DILocation(line: 366, column: 3, scope: !2250)
!2266 = !DILocation(line: 367, column: 1, scope: !2250)
!2267 = distinct !DISubprogram(name: "fdadvise", scope: !896, file: !896, line: 25, type: !2268, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !895, retainedNodes: !2271)
!2268 = !DISubroutineType(types: !2269)
!2269 = !{null, !86, !516, !516, !2270}
!2270 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !899, line: 51, baseType: !898)
!2271 = !{!2272, !2273, !2274, !2275}
!2272 = !DILocalVariable(name: "fd", arg: 1, scope: !2267, file: !896, line: 25, type: !86)
!2273 = !DILocalVariable(name: "offset", arg: 2, scope: !2267, file: !896, line: 25, type: !516)
!2274 = !DILocalVariable(name: "len", arg: 3, scope: !2267, file: !896, line: 25, type: !516)
!2275 = !DILocalVariable(name: "advice", arg: 4, scope: !2267, file: !896, line: 25, type: !2270)
!2276 = !DILocation(line: 0, scope: !2267)
!2277 = !DILocation(line: 28, column: 3, scope: !2267)
!2278 = !DILocation(line: 30, column: 1, scope: !2267)
!2279 = !DISubprogram(name: "posix_fadvise", scope: !1962, file: !1962, line: 273, type: !2280, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2280 = !DISubroutineType(types: !2281)
!2281 = !{!86, !86, !516, !516, !86}
!2282 = distinct !DISubprogram(name: "fadvise", scope: !896, file: !896, line: 33, type: !2283, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !895, retainedNodes: !2319)
!2283 = !DISubroutineType(types: !2284)
!2284 = !{null, !2285, !2270}
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !289, line: 7, baseType: !2287)
!2287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !291, line: 49, size: 1728, elements: !2288)
!2288 = !{!2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318}
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2287, file: !291, line: 51, baseType: !86, size: 32)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2287, file: !291, line: 54, baseType: !88, size: 64, offset: 64)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2287, file: !291, line: 55, baseType: !88, size: 64, offset: 128)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2287, file: !291, line: 56, baseType: !88, size: 64, offset: 192)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2287, file: !291, line: 57, baseType: !88, size: 64, offset: 256)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2287, file: !291, line: 58, baseType: !88, size: 64, offset: 320)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2287, file: !291, line: 59, baseType: !88, size: 64, offset: 384)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2287, file: !291, line: 60, baseType: !88, size: 64, offset: 448)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2287, file: !291, line: 61, baseType: !88, size: 64, offset: 512)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2287, file: !291, line: 64, baseType: !88, size: 64, offset: 576)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2287, file: !291, line: 65, baseType: !88, size: 64, offset: 640)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2287, file: !291, line: 66, baseType: !88, size: 64, offset: 704)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2287, file: !291, line: 68, baseType: !306, size: 64, offset: 768)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2287, file: !291, line: 70, baseType: !2303, size: 64, offset: 832)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2287, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2287, file: !291, line: 72, baseType: !86, size: 32, offset: 896)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2287, file: !291, line: 73, baseType: !86, size: 32, offset: 928)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2287, file: !291, line: 74, baseType: !313, size: 64, offset: 960)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2287, file: !291, line: 77, baseType: !145, size: 16, offset: 1024)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2287, file: !291, line: 78, baseType: !318, size: 8, offset: 1040)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2287, file: !291, line: 79, baseType: !197, size: 8, offset: 1048)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2287, file: !291, line: 81, baseType: !321, size: 64, offset: 1088)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2287, file: !291, line: 89, baseType: !324, size: 64, offset: 1152)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2287, file: !291, line: 91, baseType: !326, size: 64, offset: 1216)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2287, file: !291, line: 92, baseType: !329, size: 64, offset: 1280)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2287, file: !291, line: 93, baseType: !2303, size: 64, offset: 1344)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2287, file: !291, line: 94, baseType: !144, size: 64, offset: 1408)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2287, file: !291, line: 95, baseType: !146, size: 64, offset: 1472)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2287, file: !291, line: 96, baseType: !86, size: 32, offset: 1536)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2287, file: !291, line: 98, baseType: !226, size: 160, offset: 1568)
!2319 = !{!2320, !2321}
!2320 = !DILocalVariable(name: "fp", arg: 1, scope: !2282, file: !896, line: 33, type: !2285)
!2321 = !DILocalVariable(name: "advice", arg: 2, scope: !2282, file: !896, line: 33, type: !2270)
!2322 = !DILocation(line: 0, scope: !2282)
!2323 = !DILocation(line: 35, column: 7, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2282, file: !896, line: 35, column: 7)
!2325 = !DILocation(line: 35, column: 7, scope: !2282)
!2326 = !DILocation(line: 36, column: 15, scope: !2324)
!2327 = !DILocation(line: 0, scope: !2267, inlinedAt: !2328)
!2328 = distinct !DILocation(line: 36, column: 5, scope: !2324)
!2329 = !DILocation(line: 28, column: 3, scope: !2267, inlinedAt: !2328)
!2330 = !DILocation(line: 36, column: 5, scope: !2324)
!2331 = !DILocation(line: 37, column: 1, scope: !2282)
!2332 = !DISubprogram(name: "fileno", scope: !517, file: !517, line: 809, type: !2333, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2333 = !DISubroutineType(types: !2334)
!2334 = !{!86, !2285}
!2335 = distinct !DISubprogram(name: "rpl_fcntl", scope: !616, file: !616, line: 202, type: !2198, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !619, retainedNodes: !2336)
!2336 = !{!2337, !2338, !2339, !2350, !2351, !2354, !2356, !2360}
!2337 = !DILocalVariable(name: "fd", arg: 1, scope: !2335, file: !616, line: 202, type: !86)
!2338 = !DILocalVariable(name: "action", arg: 2, scope: !2335, file: !616, line: 202, type: !86)
!2339 = !DILocalVariable(name: "arg", scope: !2335, file: !616, line: 208, type: !2340)
!2340 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2341, line: 12, baseType: !2342)
!2341 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "7bd78a282b99fcfe41a9e3c566d14f7d")
!2342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !616, baseType: !2343)
!2343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2344, size: 192, elements: !198)
!2344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !2345)
!2345 = !{!2346, !2347, !2348, !2349}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2344, file: !616, line: 208, baseType: !98, size: 32)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2344, file: !616, line: 208, baseType: !98, size: 32, offset: 32)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2344, file: !616, line: 208, baseType: !144, size: 64, offset: 64)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2344, file: !616, line: 208, baseType: !144, size: 64, offset: 128)
!2350 = !DILocalVariable(name: "result", scope: !2335, file: !616, line: 211, type: !86)
!2351 = !DILocalVariable(name: "target", scope: !2352, file: !616, line: 216, type: !86)
!2352 = distinct !DILexicalBlock(scope: !2353, file: !616, line: 215, column: 7)
!2353 = distinct !DILexicalBlock(scope: !2335, file: !616, line: 213, column: 5)
!2354 = !DILocalVariable(name: "target", scope: !2355, file: !616, line: 223, type: !86)
!2355 = distinct !DILexicalBlock(scope: !2353, file: !616, line: 222, column: 7)
!2356 = !DILocalVariable(name: "x", scope: !2357, file: !616, line: 418, type: !86)
!2357 = distinct !DILexicalBlock(scope: !2358, file: !616, line: 417, column: 13)
!2358 = distinct !DILexicalBlock(scope: !2359, file: !616, line: 261, column: 11)
!2359 = distinct !DILexicalBlock(scope: !2353, file: !616, line: 258, column: 7)
!2360 = !DILocalVariable(name: "p", scope: !2361, file: !616, line: 426, type: !144)
!2361 = distinct !DILexicalBlock(scope: !2358, file: !616, line: 425, column: 13)
!2362 = distinct !DIAssignID()
!2363 = !DILocation(line: 0, scope: !2335)
!2364 = !DILocation(line: 208, column: 3, scope: !2335)
!2365 = !DILocation(line: 209, column: 3, scope: !2335)
!2366 = !DILocation(line: 212, column: 3, scope: !2335)
!2367 = !DILocation(line: 216, column: 22, scope: !2352)
!2368 = distinct !DIAssignID()
!2369 = distinct !DIAssignID()
!2370 = !DILocation(line: 0, scope: !2352)
!2371 = !DILocalVariable(name: "fd", arg: 1, scope: !2372, file: !616, line: 444, type: !86)
!2372 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD", scope: !616, file: !616, line: 444, type: !617, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !619, retainedNodes: !2373)
!2373 = !{!2371, !2374, !2375}
!2374 = !DILocalVariable(name: "target", arg: 2, scope: !2372, file: !616, line: 444, type: !86)
!2375 = !DILocalVariable(name: "result", scope: !2372, file: !616, line: 446, type: !86)
!2376 = !DILocation(line: 0, scope: !2372, inlinedAt: !2377)
!2377 = distinct !DILocation(line: 217, column: 18, scope: !2352)
!2378 = !DILocation(line: 479, column: 12, scope: !2372, inlinedAt: !2377)
!2379 = !DILocation(line: 223, column: 22, scope: !2355)
!2380 = distinct !DIAssignID()
!2381 = distinct !DIAssignID()
!2382 = !DILocation(line: 0, scope: !2355)
!2383 = !DILocation(line: 0, scope: !615, inlinedAt: !2384)
!2384 = distinct !DILocation(line: 224, column: 18, scope: !2355)
!2385 = !DILocation(line: 507, column: 12, scope: !2386, inlinedAt: !2384)
!2386 = distinct !DILexicalBlock(scope: !615, file: !616, line: 507, column: 7)
!2387 = !DILocation(line: 507, column: 9, scope: !2386, inlinedAt: !2384)
!2388 = !DILocation(line: 507, column: 7, scope: !615, inlinedAt: !2384)
!2389 = !DILocation(line: 509, column: 16, scope: !2390, inlinedAt: !2384)
!2390 = distinct !DILexicalBlock(scope: !2386, file: !616, line: 508, column: 5)
!2391 = !DILocation(line: 510, column: 13, scope: !2392, inlinedAt: !2384)
!2392 = distinct !DILexicalBlock(scope: !2390, file: !616, line: 510, column: 11)
!2393 = !DILocation(line: 510, column: 23, scope: !2392, inlinedAt: !2384)
!2394 = !DILocation(line: 510, column: 26, scope: !2392, inlinedAt: !2384)
!2395 = !DILocation(line: 510, column: 32, scope: !2392, inlinedAt: !2384)
!2396 = !DILocation(line: 510, column: 11, scope: !2390, inlinedAt: !2384)
!2397 = !DILocation(line: 512, column: 30, scope: !2398, inlinedAt: !2384)
!2398 = distinct !DILexicalBlock(scope: !2392, file: !616, line: 511, column: 9)
!2399 = !DILocation(line: 528, column: 19, scope: !627, inlinedAt: !2384)
!2400 = !DILocation(line: 0, scope: !2372, inlinedAt: !2401)
!2401 = distinct !DILocation(line: 520, column: 20, scope: !2402, inlinedAt: !2384)
!2402 = distinct !DILexicalBlock(scope: !2392, file: !616, line: 519, column: 9)
!2403 = !DILocation(line: 479, column: 12, scope: !2372, inlinedAt: !2401)
!2404 = !DILocation(line: 521, column: 22, scope: !2405, inlinedAt: !2384)
!2405 = distinct !DILexicalBlock(scope: !2402, file: !616, line: 521, column: 15)
!2406 = !DILocation(line: 521, column: 15, scope: !2402, inlinedAt: !2384)
!2407 = !DILocation(line: 522, column: 32, scope: !2405, inlinedAt: !2384)
!2408 = !DILocation(line: 522, column: 13, scope: !2405, inlinedAt: !2384)
!2409 = !DILocation(line: 0, scope: !2372, inlinedAt: !2410)
!2410 = distinct !DILocation(line: 527, column: 14, scope: !2386, inlinedAt: !2384)
!2411 = !DILocation(line: 479, column: 12, scope: !2372, inlinedAt: !2410)
!2412 = !DILocation(line: 0, scope: !2386, inlinedAt: !2384)
!2413 = !DILocation(line: 528, column: 9, scope: !627, inlinedAt: !2384)
!2414 = !DILocation(line: 530, column: 19, scope: !626, inlinedAt: !2384)
!2415 = !DILocation(line: 0, scope: !626, inlinedAt: !2384)
!2416 = !DILocation(line: 531, column: 17, scope: !630, inlinedAt: !2384)
!2417 = !DILocation(line: 531, column: 21, scope: !630, inlinedAt: !2384)
!2418 = !DILocation(line: 531, column: 54, scope: !630, inlinedAt: !2384)
!2419 = !DILocation(line: 531, column: 24, scope: !630, inlinedAt: !2384)
!2420 = !DILocation(line: 531, column: 68, scope: !630, inlinedAt: !2384)
!2421 = !DILocation(line: 531, column: 11, scope: !626, inlinedAt: !2384)
!2422 = !DILocation(line: 533, column: 29, scope: !629, inlinedAt: !2384)
!2423 = !DILocation(line: 0, scope: !629, inlinedAt: !2384)
!2424 = !DILocation(line: 534, column: 11, scope: !629, inlinedAt: !2384)
!2425 = !DILocation(line: 535, column: 17, scope: !629, inlinedAt: !2384)
!2426 = !DILocation(line: 537, column: 9, scope: !629, inlinedAt: !2384)
!2427 = !DILocation(line: 329, column: 22, scope: !2358)
!2428 = !DILocation(line: 330, column: 13, scope: !2358)
!2429 = !DILocation(line: 418, column: 23, scope: !2357)
!2430 = distinct !DIAssignID()
!2431 = distinct !DIAssignID()
!2432 = !DILocation(line: 0, scope: !2357)
!2433 = !DILocation(line: 419, column: 24, scope: !2357)
!2434 = !DILocation(line: 421, column: 13, scope: !2358)
!2435 = !DILocation(line: 426, column: 25, scope: !2361)
!2436 = distinct !DIAssignID()
!2437 = distinct !DIAssignID()
!2438 = !DILocation(line: 0, scope: !2361)
!2439 = !DILocation(line: 427, column: 24, scope: !2361)
!2440 = !DILocation(line: 429, column: 13, scope: !2358)
!2441 = !DILocation(line: 0, scope: !2353)
!2442 = !DILocation(line: 438, column: 3, scope: !2335)
!2443 = !DILocation(line: 441, column: 1, scope: !2335)
!2444 = !DILocation(line: 440, column: 3, scope: !2335)
!2445 = distinct !DISubprogram(name: "fpurge", scope: !901, file: !901, line: 32, type: !2446, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !900, retainedNodes: !2482)
!2446 = !DISubroutineType(types: !2447)
!2447 = !{!86, !2448}
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !289, line: 7, baseType: !2450)
!2450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !291, line: 49, size: 1728, elements: !2451)
!2451 = !{!2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2463, !2464, !2465, !2467, !2468, !2469, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2480, !2481}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2450, file: !291, line: 51, baseType: !86, size: 32)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2450, file: !291, line: 54, baseType: !88, size: 64, offset: 64)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2450, file: !291, line: 55, baseType: !88, size: 64, offset: 128)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2450, file: !291, line: 56, baseType: !88, size: 64, offset: 192)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2450, file: !291, line: 57, baseType: !88, size: 64, offset: 256)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2450, file: !291, line: 58, baseType: !88, size: 64, offset: 320)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2450, file: !291, line: 59, baseType: !88, size: 64, offset: 384)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2450, file: !291, line: 60, baseType: !88, size: 64, offset: 448)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2450, file: !291, line: 61, baseType: !88, size: 64, offset: 512)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2450, file: !291, line: 64, baseType: !88, size: 64, offset: 576)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2450, file: !291, line: 65, baseType: !88, size: 64, offset: 640)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2450, file: !291, line: 66, baseType: !88, size: 64, offset: 704)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2450, file: !291, line: 68, baseType: !306, size: 64, offset: 768)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2450, file: !291, line: 70, baseType: !2466, size: 64, offset: 832)
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2450, file: !291, line: 72, baseType: !86, size: 32, offset: 896)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2450, file: !291, line: 73, baseType: !86, size: 32, offset: 928)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2450, file: !291, line: 74, baseType: !313, size: 64, offset: 960)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2450, file: !291, line: 77, baseType: !145, size: 16, offset: 1024)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2450, file: !291, line: 78, baseType: !318, size: 8, offset: 1040)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2450, file: !291, line: 79, baseType: !197, size: 8, offset: 1048)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2450, file: !291, line: 81, baseType: !321, size: 64, offset: 1088)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2450, file: !291, line: 89, baseType: !324, size: 64, offset: 1152)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2450, file: !291, line: 91, baseType: !326, size: 64, offset: 1216)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2450, file: !291, line: 92, baseType: !329, size: 64, offset: 1280)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2450, file: !291, line: 93, baseType: !2466, size: 64, offset: 1344)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2450, file: !291, line: 94, baseType: !144, size: 64, offset: 1408)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2450, file: !291, line: 95, baseType: !146, size: 64, offset: 1472)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2450, file: !291, line: 96, baseType: !86, size: 32, offset: 1536)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2450, file: !291, line: 98, baseType: !226, size: 160, offset: 1568)
!2482 = !{!2483}
!2483 = !DILocalVariable(name: "fp", arg: 1, scope: !2445, file: !901, line: 32, type: !2448)
!2484 = !DILocation(line: 0, scope: !2445)
!2485 = !DILocation(line: 36, column: 3, scope: !2445)
!2486 = !DILocation(line: 38, column: 3, scope: !2445)
!2487 = !DISubprogram(name: "__fpurge", scope: !2488, file: !2488, line: 72, type: !2489, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2488 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!2489 = !DISubroutineType(types: !2490)
!2490 = !{null, !2448}
!2491 = distinct !DISubprogram(name: "full_write", scope: !903, file: !903, line: 58, type: !2492, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !902, retainedNodes: !2494)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{!939, !86, !1213, !939}
!2494 = !{!2495, !2496, !2497, !2498, !2499, !2500}
!2495 = !DILocalVariable(name: "fd", arg: 1, scope: !2491, file: !903, line: 58, type: !86)
!2496 = !DILocalVariable(name: "buf", arg: 2, scope: !2491, file: !903, line: 58, type: !1213)
!2497 = !DILocalVariable(name: "count", arg: 3, scope: !2491, file: !903, line: 58, type: !939)
!2498 = !DILocalVariable(name: "total", scope: !2491, file: !903, line: 60, type: !939)
!2499 = !DILocalVariable(name: "ptr", scope: !2491, file: !903, line: 61, type: !149)
!2500 = !DILocalVariable(name: "n_rw", scope: !2501, file: !903, line: 65, type: !502)
!2501 = distinct !DILexicalBlock(scope: !2491, file: !903, line: 64, column: 5)
!2502 = !DILocation(line: 0, scope: !2491)
!2503 = !DILocation(line: 63, column: 16, scope: !2491)
!2504 = !DILocation(line: 63, column: 3, scope: !2491)
!2505 = !DILocation(line: 65, column: 24, scope: !2501)
!2506 = !DILocation(line: 0, scope: !2501)
!2507 = !DILocation(line: 66, column: 16, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2501, file: !903, line: 66, column: 11)
!2509 = !DILocation(line: 66, column: 11, scope: !2501)
!2510 = !DILocation(line: 68, column: 16, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2501, file: !903, line: 68, column: 11)
!2512 = !DILocation(line: 68, column: 11, scope: !2501)
!2513 = !DILocation(line: 70, column: 11, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2511, file: !903, line: 69, column: 9)
!2515 = !DILocation(line: 70, column: 17, scope: !2514)
!2516 = !DILocation(line: 71, column: 11, scope: !2514)
!2517 = !DILocation(line: 73, column: 13, scope: !2501)
!2518 = !DILocation(line: 74, column: 11, scope: !2501)
!2519 = !DILocation(line: 75, column: 13, scope: !2501)
!2520 = !DILocation(line: 78, column: 3, scope: !2491)
!2521 = distinct !DISubprogram(name: "getprogname", scope: !906, file: !906, line: 54, type: !2522, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !905)
!2522 = !DISubroutineType(types: !904)
!2523 = !DILocation(line: 58, column: 10, scope: !2521)
!2524 = !DILocation(line: 58, column: 3, scope: !2521)
!2525 = distinct !DISubprogram(name: "set_program_name", scope: !634, file: !634, line: 37, type: !1016, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !633, retainedNodes: !2526)
!2526 = !{!2527, !2528, !2529}
!2527 = !DILocalVariable(name: "argv0", arg: 1, scope: !2525, file: !634, line: 37, type: !149)
!2528 = !DILocalVariable(name: "slash", scope: !2525, file: !634, line: 44, type: !149)
!2529 = !DILocalVariable(name: "base", scope: !2525, file: !634, line: 45, type: !149)
!2530 = !DILocation(line: 0, scope: !2525)
!2531 = !DILocation(line: 44, column: 23, scope: !2525)
!2532 = !DILocation(line: 45, column: 22, scope: !2525)
!2533 = !DILocation(line: 46, column: 17, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2525, file: !634, line: 46, column: 7)
!2535 = !DILocation(line: 46, column: 9, scope: !2534)
!2536 = !DILocation(line: 46, column: 25, scope: !2534)
!2537 = !DILocation(line: 46, column: 40, scope: !2534)
!2538 = !DILocalVariable(name: "__s1", arg: 1, scope: !2539, file: !1078, line: 974, type: !1213)
!2539 = distinct !DISubprogram(name: "memeq", scope: !1078, file: !1078, line: 974, type: !2540, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !633, retainedNodes: !2542)
!2540 = !DISubroutineType(types: !2541)
!2541 = !{!274, !1213, !1213, !146}
!2542 = !{!2538, !2543, !2544}
!2543 = !DILocalVariable(name: "__s2", arg: 2, scope: !2539, file: !1078, line: 974, type: !1213)
!2544 = !DILocalVariable(name: "__n", arg: 3, scope: !2539, file: !1078, line: 974, type: !146)
!2545 = !DILocation(line: 0, scope: !2539, inlinedAt: !2546)
!2546 = distinct !DILocation(line: 46, column: 28, scope: !2534)
!2547 = !DILocation(line: 976, column: 11, scope: !2539, inlinedAt: !2546)
!2548 = !DILocation(line: 976, column: 10, scope: !2539, inlinedAt: !2546)
!2549 = !DILocation(line: 46, column: 7, scope: !2525)
!2550 = !DILocation(line: 49, column: 11, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2552, file: !634, line: 49, column: 11)
!2552 = distinct !DILexicalBlock(scope: !2534, file: !634, line: 47, column: 5)
!2553 = !DILocation(line: 49, column: 36, scope: !2551)
!2554 = !DILocation(line: 49, column: 11, scope: !2552)
!2555 = !DILocation(line: 65, column: 16, scope: !2525)
!2556 = !DILocation(line: 71, column: 27, scope: !2525)
!2557 = !DILocation(line: 74, column: 33, scope: !2525)
!2558 = !DILocation(line: 76, column: 1, scope: !2525)
!2559 = !DISubprogram(name: "strrchr", scope: !1185, file: !1185, line: 273, type: !1200, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2560 = distinct !DIAssignID()
!2561 = !DILocation(line: 0, scope: !643)
!2562 = distinct !DIAssignID()
!2563 = !DILocation(line: 40, column: 29, scope: !643)
!2564 = !DILocation(line: 41, column: 19, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !643, file: !644, line: 41, column: 7)
!2566 = !DILocation(line: 41, column: 7, scope: !643)
!2567 = !DILocation(line: 47, column: 3, scope: !643)
!2568 = !DILocation(line: 48, column: 3, scope: !643)
!2569 = !DILocalVariable(name: "ps", arg: 1, scope: !2570, file: !2571, line: 1135, type: !2574)
!2570 = distinct !DISubprogram(name: "mbszero", scope: !2571, file: !2571, line: 1135, type: !2572, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !647, retainedNodes: !2575)
!2571 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2572 = !DISubroutineType(types: !2573)
!2573 = !{null, !2574}
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!2575 = !{!2569}
!2576 = !DILocation(line: 0, scope: !2570, inlinedAt: !2577)
!2577 = distinct !DILocation(line: 48, column: 18, scope: !643)
!2578 = !DILocalVariable(name: "__dest", arg: 1, scope: !2579, file: !1546, line: 57, type: !144)
!2579 = distinct !DISubprogram(name: "memset", scope: !1546, file: !1546, line: 57, type: !2580, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !647, retainedNodes: !2582)
!2580 = !DISubroutineType(types: !2581)
!2581 = !{!144, !144, !86, !146}
!2582 = !{!2578, !2583, !2584}
!2583 = !DILocalVariable(name: "__ch", arg: 2, scope: !2579, file: !1546, line: 57, type: !86)
!2584 = !DILocalVariable(name: "__len", arg: 3, scope: !2579, file: !1546, line: 57, type: !146)
!2585 = !DILocation(line: 0, scope: !2579, inlinedAt: !2586)
!2586 = distinct !DILocation(line: 1137, column: 3, scope: !2570, inlinedAt: !2577)
!2587 = !DILocation(line: 59, column: 10, scope: !2579, inlinedAt: !2586)
!2588 = !DILocation(line: 49, column: 7, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !643, file: !644, line: 49, column: 7)
!2590 = !DILocation(line: 49, column: 39, scope: !2589)
!2591 = !DILocation(line: 49, column: 44, scope: !2589)
!2592 = !DILocation(line: 54, column: 1, scope: !643)
!2593 = !DISubprogram(name: "mbrtoc32", scope: !655, file: !655, line: 57, type: !2594, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{!146, !2596, !1056, !146, !2598}
!2596 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2597)
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!2598 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2574)
!2599 = distinct !DISubprogram(name: "clone_quoting_options", scope: !674, file: !674, line: 113, type: !2600, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !2603)
!2600 = !DISubroutineType(types: !2601)
!2601 = !{!2602, !2602}
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!2603 = !{!2604, !2605, !2606}
!2604 = !DILocalVariable(name: "o", arg: 1, scope: !2599, file: !674, line: 113, type: !2602)
!2605 = !DILocalVariable(name: "saved_errno", scope: !2599, file: !674, line: 115, type: !86)
!2606 = !DILocalVariable(name: "p", scope: !2599, file: !674, line: 116, type: !2602)
!2607 = !DILocation(line: 0, scope: !2599)
!2608 = !DILocation(line: 115, column: 21, scope: !2599)
!2609 = !DILocation(line: 116, column: 40, scope: !2599)
!2610 = !DILocation(line: 116, column: 31, scope: !2599)
!2611 = !DILocation(line: 118, column: 9, scope: !2599)
!2612 = !DILocation(line: 119, column: 3, scope: !2599)
!2613 = distinct !DISubprogram(name: "get_quoting_style", scope: !674, file: !674, line: 124, type: !2614, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !2618)
!2614 = !DISubroutineType(types: !2615)
!2615 = !{!700, !2616}
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !715)
!2618 = !{!2619}
!2619 = !DILocalVariable(name: "o", arg: 1, scope: !2613, file: !674, line: 124, type: !2616)
!2620 = !DILocation(line: 0, scope: !2613)
!2621 = !DILocation(line: 126, column: 11, scope: !2613)
!2622 = !DILocation(line: 126, column: 46, scope: !2613)
!2623 = !{!2624, !1066, i64 0}
!2624 = !{!"quoting_options", !1066, i64 0, !1066, i64 4, !993, i64 8, !992, i64 40, !992, i64 48}
!2625 = !DILocation(line: 126, column: 3, scope: !2613)
!2626 = distinct !DISubprogram(name: "set_quoting_style", scope: !674, file: !674, line: 132, type: !2627, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !2629)
!2627 = !DISubroutineType(types: !2628)
!2628 = !{null, !2602, !700}
!2629 = !{!2630, !2631}
!2630 = !DILocalVariable(name: "o", arg: 1, scope: !2626, file: !674, line: 132, type: !2602)
!2631 = !DILocalVariable(name: "s", arg: 2, scope: !2626, file: !674, line: 132, type: !700)
!2632 = !DILocation(line: 0, scope: !2626)
!2633 = !DILocation(line: 134, column: 4, scope: !2626)
!2634 = !DILocation(line: 134, column: 45, scope: !2626)
!2635 = !DILocation(line: 135, column: 1, scope: !2626)
!2636 = distinct !DISubprogram(name: "set_char_quoting", scope: !674, file: !674, line: 143, type: !2637, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !2639)
!2637 = !DISubroutineType(types: !2638)
!2638 = !{!86, !2602, !4, !86}
!2639 = !{!2640, !2641, !2642, !2643, !2644, !2646, !2647}
!2640 = !DILocalVariable(name: "o", arg: 1, scope: !2636, file: !674, line: 143, type: !2602)
!2641 = !DILocalVariable(name: "c", arg: 2, scope: !2636, file: !674, line: 143, type: !4)
!2642 = !DILocalVariable(name: "i", arg: 3, scope: !2636, file: !674, line: 143, type: !86)
!2643 = !DILocalVariable(name: "uc", scope: !2636, file: !674, line: 145, type: !151)
!2644 = !DILocalVariable(name: "p", scope: !2636, file: !674, line: 146, type: !2645)
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!2646 = !DILocalVariable(name: "shift", scope: !2636, file: !674, line: 148, type: !86)
!2647 = !DILocalVariable(name: "r", scope: !2636, file: !674, line: 149, type: !98)
!2648 = !DILocation(line: 0, scope: !2636)
!2649 = !DILocation(line: 147, column: 6, scope: !2636)
!2650 = !DILocation(line: 147, column: 41, scope: !2636)
!2651 = !DILocation(line: 147, column: 62, scope: !2636)
!2652 = !DILocation(line: 147, column: 57, scope: !2636)
!2653 = !DILocation(line: 148, column: 15, scope: !2636)
!2654 = !DILocation(line: 149, column: 21, scope: !2636)
!2655 = !DILocation(line: 149, column: 24, scope: !2636)
!2656 = !DILocation(line: 149, column: 34, scope: !2636)
!2657 = !DILocation(line: 150, column: 19, scope: !2636)
!2658 = !DILocation(line: 150, column: 24, scope: !2636)
!2659 = !DILocation(line: 150, column: 6, scope: !2636)
!2660 = !DILocation(line: 151, column: 3, scope: !2636)
!2661 = distinct !DISubprogram(name: "set_quoting_flags", scope: !674, file: !674, line: 159, type: !2662, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !2664)
!2662 = !DISubroutineType(types: !2663)
!2663 = !{!86, !2602, !86}
!2664 = !{!2665, !2666, !2667}
!2665 = !DILocalVariable(name: "o", arg: 1, scope: !2661, file: !674, line: 159, type: !2602)
!2666 = !DILocalVariable(name: "i", arg: 2, scope: !2661, file: !674, line: 159, type: !86)
!2667 = !DILocalVariable(name: "r", scope: !2661, file: !674, line: 163, type: !86)
!2668 = !DILocation(line: 0, scope: !2661)
!2669 = !DILocation(line: 161, column: 8, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2661, file: !674, line: 161, column: 7)
!2671 = !DILocation(line: 161, column: 7, scope: !2661)
!2672 = !DILocation(line: 163, column: 14, scope: !2661)
!2673 = !{!2624, !1066, i64 4}
!2674 = !DILocation(line: 164, column: 12, scope: !2661)
!2675 = !DILocation(line: 165, column: 3, scope: !2661)
!2676 = distinct !DISubprogram(name: "set_custom_quoting", scope: !674, file: !674, line: 169, type: !2677, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !2679)
!2677 = !DISubroutineType(types: !2678)
!2678 = !{null, !2602, !149, !149}
!2679 = !{!2680, !2681, !2682}
!2680 = !DILocalVariable(name: "o", arg: 1, scope: !2676, file: !674, line: 169, type: !2602)
!2681 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2676, file: !674, line: 170, type: !149)
!2682 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2676, file: !674, line: 170, type: !149)
!2683 = !DILocation(line: 0, scope: !2676)
!2684 = !DILocation(line: 172, column: 8, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2676, file: !674, line: 172, column: 7)
!2686 = !DILocation(line: 172, column: 7, scope: !2676)
!2687 = !DILocation(line: 174, column: 12, scope: !2676)
!2688 = !DILocation(line: 175, column: 8, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !2676, file: !674, line: 175, column: 7)
!2690 = !DILocation(line: 175, column: 19, scope: !2689)
!2691 = !DILocation(line: 176, column: 5, scope: !2689)
!2692 = !DILocation(line: 177, column: 6, scope: !2676)
!2693 = !DILocation(line: 177, column: 17, scope: !2676)
!2694 = !{!2624, !992, i64 40}
!2695 = !DILocation(line: 178, column: 6, scope: !2676)
!2696 = !DILocation(line: 178, column: 18, scope: !2676)
!2697 = !{!2624, !992, i64 48}
!2698 = !DILocation(line: 179, column: 1, scope: !2676)
!2699 = !DISubprogram(name: "abort", scope: !1189, file: !1189, line: 598, type: !611, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2700 = distinct !DISubprogram(name: "quotearg_buffer", scope: !674, file: !674, line: 774, type: !2701, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !2703)
!2701 = !DISubroutineType(types: !2702)
!2702 = !{!146, !88, !146, !149, !146, !2616}
!2703 = !{!2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711}
!2704 = !DILocalVariable(name: "buffer", arg: 1, scope: !2700, file: !674, line: 774, type: !88)
!2705 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2700, file: !674, line: 774, type: !146)
!2706 = !DILocalVariable(name: "arg", arg: 3, scope: !2700, file: !674, line: 775, type: !149)
!2707 = !DILocalVariable(name: "argsize", arg: 4, scope: !2700, file: !674, line: 775, type: !146)
!2708 = !DILocalVariable(name: "o", arg: 5, scope: !2700, file: !674, line: 776, type: !2616)
!2709 = !DILocalVariable(name: "p", scope: !2700, file: !674, line: 778, type: !2616)
!2710 = !DILocalVariable(name: "saved_errno", scope: !2700, file: !674, line: 779, type: !86)
!2711 = !DILocalVariable(name: "r", scope: !2700, file: !674, line: 780, type: !146)
!2712 = !DILocation(line: 0, scope: !2700)
!2713 = !DILocation(line: 778, column: 37, scope: !2700)
!2714 = !DILocation(line: 779, column: 21, scope: !2700)
!2715 = !DILocation(line: 781, column: 43, scope: !2700)
!2716 = !DILocation(line: 781, column: 53, scope: !2700)
!2717 = !DILocation(line: 781, column: 63, scope: !2700)
!2718 = !DILocation(line: 782, column: 43, scope: !2700)
!2719 = !DILocation(line: 782, column: 58, scope: !2700)
!2720 = !DILocation(line: 780, column: 14, scope: !2700)
!2721 = !DILocation(line: 783, column: 9, scope: !2700)
!2722 = !DILocation(line: 784, column: 3, scope: !2700)
!2723 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !674, file: !674, line: 251, type: !2724, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !2728)
!2724 = !DISubroutineType(types: !2725)
!2725 = !{!146, !88, !146, !149, !146, !700, !86, !2726, !149, !149}
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!2728 = !{!2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2754, !2756, !2759, !2760, !2761, !2762, !2765, !2766, !2768, !2769, !2772, !2776, !2777, !2785, !2788, !2789, !2790}
!2729 = !DILocalVariable(name: "buffer", arg: 1, scope: !2723, file: !674, line: 251, type: !88)
!2730 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2723, file: !674, line: 251, type: !146)
!2731 = !DILocalVariable(name: "arg", arg: 3, scope: !2723, file: !674, line: 252, type: !149)
!2732 = !DILocalVariable(name: "argsize", arg: 4, scope: !2723, file: !674, line: 252, type: !146)
!2733 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2723, file: !674, line: 253, type: !700)
!2734 = !DILocalVariable(name: "flags", arg: 6, scope: !2723, file: !674, line: 253, type: !86)
!2735 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2723, file: !674, line: 254, type: !2726)
!2736 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2723, file: !674, line: 255, type: !149)
!2737 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2723, file: !674, line: 256, type: !149)
!2738 = !DILocalVariable(name: "unibyte_locale", scope: !2723, file: !674, line: 258, type: !274)
!2739 = !DILocalVariable(name: "len", scope: !2723, file: !674, line: 260, type: !146)
!2740 = !DILocalVariable(name: "orig_buffersize", scope: !2723, file: !674, line: 261, type: !146)
!2741 = !DILocalVariable(name: "quote_string", scope: !2723, file: !674, line: 262, type: !149)
!2742 = !DILocalVariable(name: "quote_string_len", scope: !2723, file: !674, line: 263, type: !146)
!2743 = !DILocalVariable(name: "backslash_escapes", scope: !2723, file: !674, line: 264, type: !274)
!2744 = !DILocalVariable(name: "elide_outer_quotes", scope: !2723, file: !674, line: 265, type: !274)
!2745 = !DILocalVariable(name: "encountered_single_quote", scope: !2723, file: !674, line: 266, type: !274)
!2746 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2723, file: !674, line: 267, type: !274)
!2747 = !DILabel(scope: !2723, name: "process_input", file: !674, line: 308)
!2748 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2723, file: !674, line: 309, type: !274)
!2749 = !DILocalVariable(name: "lq", scope: !2750, file: !674, line: 361, type: !149)
!2750 = distinct !DILexicalBlock(scope: !2751, file: !674, line: 361, column: 11)
!2751 = distinct !DILexicalBlock(scope: !2752, file: !674, line: 360, column: 13)
!2752 = distinct !DILexicalBlock(scope: !2753, file: !674, line: 333, column: 7)
!2753 = distinct !DILexicalBlock(scope: !2723, file: !674, line: 312, column: 5)
!2754 = !DILocalVariable(name: "i", scope: !2755, file: !674, line: 395, type: !146)
!2755 = distinct !DILexicalBlock(scope: !2723, file: !674, line: 395, column: 3)
!2756 = !DILocalVariable(name: "is_right_quote", scope: !2757, file: !674, line: 397, type: !274)
!2757 = distinct !DILexicalBlock(scope: !2758, file: !674, line: 396, column: 5)
!2758 = distinct !DILexicalBlock(scope: !2755, file: !674, line: 395, column: 3)
!2759 = !DILocalVariable(name: "escaping", scope: !2757, file: !674, line: 398, type: !274)
!2760 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2757, file: !674, line: 399, type: !274)
!2761 = !DILocalVariable(name: "c", scope: !2757, file: !674, line: 417, type: !151)
!2762 = !DILabel(scope: !2763, name: "c_and_shell_escape", file: !674, line: 502)
!2763 = distinct !DILexicalBlock(scope: !2764, file: !674, line: 478, column: 9)
!2764 = distinct !DILexicalBlock(scope: !2757, file: !674, line: 419, column: 9)
!2765 = !DILabel(scope: !2763, name: "c_escape", file: !674, line: 507)
!2766 = !DILocalVariable(name: "m", scope: !2767, file: !674, line: 598, type: !146)
!2767 = distinct !DILexicalBlock(scope: !2764, file: !674, line: 596, column: 11)
!2768 = !DILocalVariable(name: "printable", scope: !2767, file: !674, line: 600, type: !274)
!2769 = !DILocalVariable(name: "mbs", scope: !2770, file: !674, line: 609, type: !749)
!2770 = distinct !DILexicalBlock(scope: !2771, file: !674, line: 608, column: 15)
!2771 = distinct !DILexicalBlock(scope: !2767, file: !674, line: 602, column: 17)
!2772 = !DILocalVariable(name: "w", scope: !2773, file: !674, line: 618, type: !654)
!2773 = distinct !DILexicalBlock(scope: !2774, file: !674, line: 617, column: 19)
!2774 = distinct !DILexicalBlock(scope: !2775, file: !674, line: 616, column: 17)
!2775 = distinct !DILexicalBlock(scope: !2770, file: !674, line: 616, column: 17)
!2776 = !DILocalVariable(name: "bytes", scope: !2773, file: !674, line: 619, type: !146)
!2777 = !DILocalVariable(name: "j", scope: !2778, file: !674, line: 648, type: !146)
!2778 = distinct !DILexicalBlock(scope: !2779, file: !674, line: 648, column: 29)
!2779 = distinct !DILexicalBlock(scope: !2780, file: !674, line: 647, column: 27)
!2780 = distinct !DILexicalBlock(scope: !2781, file: !674, line: 645, column: 29)
!2781 = distinct !DILexicalBlock(scope: !2782, file: !674, line: 636, column: 23)
!2782 = distinct !DILexicalBlock(scope: !2783, file: !674, line: 628, column: 30)
!2783 = distinct !DILexicalBlock(scope: !2784, file: !674, line: 623, column: 30)
!2784 = distinct !DILexicalBlock(scope: !2773, file: !674, line: 621, column: 25)
!2785 = !DILocalVariable(name: "ilim", scope: !2786, file: !674, line: 674, type: !146)
!2786 = distinct !DILexicalBlock(scope: !2787, file: !674, line: 671, column: 15)
!2787 = distinct !DILexicalBlock(scope: !2767, file: !674, line: 670, column: 17)
!2788 = !DILabel(scope: !2757, name: "store_escape", file: !674, line: 709)
!2789 = !DILabel(scope: !2757, name: "store_c", file: !674, line: 712)
!2790 = !DILabel(scope: !2723, name: "force_outer_quoting_style", file: !674, line: 753)
!2791 = distinct !DIAssignID()
!2792 = distinct !DIAssignID()
!2793 = distinct !DIAssignID()
!2794 = distinct !DIAssignID()
!2795 = distinct !DIAssignID()
!2796 = !DILocation(line: 0, scope: !2770)
!2797 = distinct !DIAssignID()
!2798 = !DILocation(line: 0, scope: !2773)
!2799 = !DILocation(line: 0, scope: !2723)
!2800 = !DILocation(line: 258, column: 25, scope: !2723)
!2801 = !DILocation(line: 258, column: 36, scope: !2723)
!2802 = !DILocation(line: 265, column: 8, scope: !2723)
!2803 = !DILocation(line: 267, column: 3, scope: !2723)
!2804 = !DILocation(line: 261, column: 10, scope: !2723)
!2805 = !DILocation(line: 262, column: 15, scope: !2723)
!2806 = !DILocation(line: 263, column: 10, scope: !2723)
!2807 = !DILocation(line: 264, column: 8, scope: !2723)
!2808 = !DILocation(line: 266, column: 8, scope: !2723)
!2809 = !DILocation(line: 267, column: 8, scope: !2723)
!2810 = !DILocation(line: 308, column: 2, scope: !2723)
!2811 = !DILocation(line: 311, column: 3, scope: !2723)
!2812 = !DILocation(line: 318, column: 11, scope: !2753)
!2813 = !DILocation(line: 318, column: 12, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2753, file: !674, line: 318, column: 11)
!2815 = !DILocation(line: 319, column: 9, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2817, file: !674, line: 319, column: 9)
!2817 = distinct !DILexicalBlock(scope: !2814, file: !674, line: 319, column: 9)
!2818 = !DILocation(line: 319, column: 9, scope: !2817)
!2819 = !DILocation(line: 0, scope: !740, inlinedAt: !2820)
!2820 = distinct !DILocation(line: 357, column: 26, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2822, file: !674, line: 335, column: 11)
!2822 = distinct !DILexicalBlock(scope: !2752, file: !674, line: 334, column: 13)
!2823 = !DILocation(line: 199, column: 29, scope: !740, inlinedAt: !2820)
!2824 = !DILocation(line: 201, column: 19, scope: !2825, inlinedAt: !2820)
!2825 = distinct !DILexicalBlock(scope: !740, file: !674, line: 201, column: 7)
!2826 = !DILocation(line: 201, column: 7, scope: !740, inlinedAt: !2820)
!2827 = !DILocation(line: 229, column: 3, scope: !740, inlinedAt: !2820)
!2828 = !DILocation(line: 230, column: 3, scope: !740, inlinedAt: !2820)
!2829 = !DILocalVariable(name: "ps", arg: 1, scope: !2830, file: !2571, line: 1135, type: !2833)
!2830 = distinct !DISubprogram(name: "mbszero", scope: !2571, file: !2571, line: 1135, type: !2831, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !2834)
!2831 = !DISubroutineType(types: !2832)
!2832 = !{null, !2833}
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!2834 = !{!2829}
!2835 = !DILocation(line: 0, scope: !2830, inlinedAt: !2836)
!2836 = distinct !DILocation(line: 230, column: 18, scope: !740, inlinedAt: !2820)
!2837 = !DILocalVariable(name: "__dest", arg: 1, scope: !2838, file: !1546, line: 57, type: !144)
!2838 = distinct !DISubprogram(name: "memset", scope: !1546, file: !1546, line: 57, type: !2580, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !2839)
!2839 = !{!2837, !2840, !2841}
!2840 = !DILocalVariable(name: "__ch", arg: 2, scope: !2838, file: !1546, line: 57, type: !86)
!2841 = !DILocalVariable(name: "__len", arg: 3, scope: !2838, file: !1546, line: 57, type: !146)
!2842 = !DILocation(line: 0, scope: !2838, inlinedAt: !2843)
!2843 = distinct !DILocation(line: 1137, column: 3, scope: !2830, inlinedAt: !2836)
!2844 = !DILocation(line: 59, column: 10, scope: !2838, inlinedAt: !2843)
!2845 = !DILocation(line: 231, column: 7, scope: !2846, inlinedAt: !2820)
!2846 = distinct !DILexicalBlock(scope: !740, file: !674, line: 231, column: 7)
!2847 = !DILocation(line: 231, column: 40, scope: !2846, inlinedAt: !2820)
!2848 = !DILocation(line: 231, column: 45, scope: !2846, inlinedAt: !2820)
!2849 = !DILocation(line: 235, column: 1, scope: !740, inlinedAt: !2820)
!2850 = !DILocation(line: 0, scope: !740, inlinedAt: !2851)
!2851 = distinct !DILocation(line: 358, column: 27, scope: !2821)
!2852 = !DILocation(line: 199, column: 29, scope: !740, inlinedAt: !2851)
!2853 = !DILocation(line: 201, column: 19, scope: !2825, inlinedAt: !2851)
!2854 = !DILocation(line: 201, column: 7, scope: !740, inlinedAt: !2851)
!2855 = !DILocation(line: 229, column: 3, scope: !740, inlinedAt: !2851)
!2856 = !DILocation(line: 230, column: 3, scope: !740, inlinedAt: !2851)
!2857 = !DILocation(line: 0, scope: !2830, inlinedAt: !2858)
!2858 = distinct !DILocation(line: 230, column: 18, scope: !740, inlinedAt: !2851)
!2859 = !DILocation(line: 0, scope: !2838, inlinedAt: !2860)
!2860 = distinct !DILocation(line: 1137, column: 3, scope: !2830, inlinedAt: !2858)
!2861 = !DILocation(line: 59, column: 10, scope: !2838, inlinedAt: !2860)
!2862 = !DILocation(line: 231, column: 7, scope: !2846, inlinedAt: !2851)
!2863 = !DILocation(line: 231, column: 40, scope: !2846, inlinedAt: !2851)
!2864 = !DILocation(line: 231, column: 45, scope: !2846, inlinedAt: !2851)
!2865 = !DILocation(line: 235, column: 1, scope: !740, inlinedAt: !2851)
!2866 = !DILocation(line: 360, column: 14, scope: !2751)
!2867 = !DILocation(line: 360, column: 13, scope: !2752)
!2868 = !DILocation(line: 0, scope: !2750)
!2869 = !DILocation(line: 361, column: 45, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2750, file: !674, line: 361, column: 11)
!2871 = !DILocation(line: 361, column: 11, scope: !2750)
!2872 = !DILocation(line: 362, column: 13, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2874, file: !674, line: 362, column: 13)
!2874 = distinct !DILexicalBlock(scope: !2870, file: !674, line: 362, column: 13)
!2875 = !DILocation(line: 362, column: 13, scope: !2874)
!2876 = !DILocation(line: 361, column: 52, scope: !2870)
!2877 = distinct !{!2877, !2871, !2878, !1112}
!2878 = !DILocation(line: 362, column: 13, scope: !2750)
!2879 = !DILocation(line: 260, column: 10, scope: !2723)
!2880 = !DILocation(line: 365, column: 28, scope: !2752)
!2881 = !DILocation(line: 367, column: 7, scope: !2753)
!2882 = !DILocation(line: 370, column: 7, scope: !2753)
!2883 = !DILocation(line: 373, column: 7, scope: !2753)
!2884 = !DILocation(line: 376, column: 12, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2753, file: !674, line: 376, column: 11)
!2886 = !DILocation(line: 376, column: 11, scope: !2753)
!2887 = !DILocation(line: 381, column: 12, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2753, file: !674, line: 381, column: 11)
!2889 = !DILocation(line: 381, column: 11, scope: !2753)
!2890 = !DILocation(line: 382, column: 9, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2892, file: !674, line: 382, column: 9)
!2892 = distinct !DILexicalBlock(scope: !2888, file: !674, line: 382, column: 9)
!2893 = !DILocation(line: 382, column: 9, scope: !2892)
!2894 = !DILocation(line: 389, column: 7, scope: !2753)
!2895 = !DILocation(line: 392, column: 7, scope: !2753)
!2896 = !DILocation(line: 0, scope: !2755)
!2897 = !DILocation(line: 395, column: 8, scope: !2755)
!2898 = !DILocation(line: 309, column: 8, scope: !2723)
!2899 = !DILocation(line: 395, scope: !2755)
!2900 = !DILocation(line: 395, column: 34, scope: !2758)
!2901 = !DILocation(line: 395, column: 26, scope: !2758)
!2902 = !DILocation(line: 395, column: 48, scope: !2758)
!2903 = !DILocation(line: 395, column: 55, scope: !2758)
!2904 = !DILocation(line: 395, column: 3, scope: !2755)
!2905 = !DILocation(line: 395, column: 67, scope: !2758)
!2906 = !DILocation(line: 0, scope: !2757)
!2907 = !DILocation(line: 402, column: 11, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2757, file: !674, line: 401, column: 11)
!2909 = !DILocation(line: 404, column: 17, scope: !2908)
!2910 = !DILocation(line: 405, column: 39, scope: !2908)
!2911 = !DILocation(line: 409, column: 32, scope: !2908)
!2912 = !DILocation(line: 405, column: 19, scope: !2908)
!2913 = !DILocation(line: 405, column: 15, scope: !2908)
!2914 = !DILocation(line: 410, column: 11, scope: !2908)
!2915 = !DILocation(line: 410, column: 25, scope: !2908)
!2916 = !DILocalVariable(name: "__s1", arg: 1, scope: !2917, file: !1078, line: 974, type: !1213)
!2917 = distinct !DISubprogram(name: "memeq", scope: !1078, file: !1078, line: 974, type: !2540, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !2918)
!2918 = !{!2916, !2919, !2920}
!2919 = !DILocalVariable(name: "__s2", arg: 2, scope: !2917, file: !1078, line: 974, type: !1213)
!2920 = !DILocalVariable(name: "__n", arg: 3, scope: !2917, file: !1078, line: 974, type: !146)
!2921 = !DILocation(line: 0, scope: !2917, inlinedAt: !2922)
!2922 = distinct !DILocation(line: 410, column: 14, scope: !2908)
!2923 = !DILocation(line: 976, column: 11, scope: !2917, inlinedAt: !2922)
!2924 = !DILocation(line: 976, column: 10, scope: !2917, inlinedAt: !2922)
!2925 = !DILocation(line: 401, column: 11, scope: !2757)
!2926 = !DILocation(line: 417, column: 25, scope: !2757)
!2927 = !DILocation(line: 418, column: 7, scope: !2757)
!2928 = !DILocation(line: 421, column: 15, scope: !2764)
!2929 = !DILocation(line: 423, column: 15, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2931, file: !674, line: 423, column: 15)
!2931 = distinct !DILexicalBlock(scope: !2932, file: !674, line: 422, column: 13)
!2932 = distinct !DILexicalBlock(scope: !2764, file: !674, line: 421, column: 15)
!2933 = !DILocation(line: 423, column: 15, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2930, file: !674, line: 423, column: 15)
!2935 = !DILocation(line: 423, column: 15, scope: !2936)
!2936 = distinct !DILexicalBlock(scope: !2937, file: !674, line: 423, column: 15)
!2937 = distinct !DILexicalBlock(scope: !2938, file: !674, line: 423, column: 15)
!2938 = distinct !DILexicalBlock(scope: !2934, file: !674, line: 423, column: 15)
!2939 = !DILocation(line: 423, column: 15, scope: !2937)
!2940 = !DILocation(line: 423, column: 15, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2942, file: !674, line: 423, column: 15)
!2942 = distinct !DILexicalBlock(scope: !2938, file: !674, line: 423, column: 15)
!2943 = !DILocation(line: 423, column: 15, scope: !2942)
!2944 = !DILocation(line: 423, column: 15, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2946, file: !674, line: 423, column: 15)
!2946 = distinct !DILexicalBlock(scope: !2938, file: !674, line: 423, column: 15)
!2947 = !DILocation(line: 423, column: 15, scope: !2946)
!2948 = !DILocation(line: 423, column: 15, scope: !2938)
!2949 = !DILocation(line: 423, column: 15, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2951, file: !674, line: 423, column: 15)
!2951 = distinct !DILexicalBlock(scope: !2930, file: !674, line: 423, column: 15)
!2952 = !DILocation(line: 423, column: 15, scope: !2951)
!2953 = !DILocation(line: 431, column: 19, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2931, file: !674, line: 430, column: 19)
!2955 = !DILocation(line: 431, column: 24, scope: !2954)
!2956 = !DILocation(line: 431, column: 28, scope: !2954)
!2957 = !DILocation(line: 431, column: 38, scope: !2954)
!2958 = !DILocation(line: 431, column: 48, scope: !2954)
!2959 = !DILocation(line: 431, column: 59, scope: !2954)
!2960 = !DILocation(line: 433, column: 19, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2962, file: !674, line: 433, column: 19)
!2962 = distinct !DILexicalBlock(scope: !2963, file: !674, line: 433, column: 19)
!2963 = distinct !DILexicalBlock(scope: !2954, file: !674, line: 432, column: 17)
!2964 = !DILocation(line: 433, column: 19, scope: !2962)
!2965 = !DILocation(line: 434, column: 19, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2967, file: !674, line: 434, column: 19)
!2967 = distinct !DILexicalBlock(scope: !2963, file: !674, line: 434, column: 19)
!2968 = !DILocation(line: 434, column: 19, scope: !2967)
!2969 = !DILocation(line: 435, column: 17, scope: !2963)
!2970 = !DILocation(line: 442, column: 20, scope: !2932)
!2971 = !DILocation(line: 447, column: 11, scope: !2764)
!2972 = !DILocation(line: 450, column: 19, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2764, file: !674, line: 448, column: 13)
!2974 = !DILocation(line: 456, column: 19, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2973, file: !674, line: 455, column: 19)
!2976 = !DILocation(line: 456, column: 24, scope: !2975)
!2977 = !DILocation(line: 456, column: 28, scope: !2975)
!2978 = !DILocation(line: 456, column: 38, scope: !2975)
!2979 = !DILocation(line: 456, column: 41, scope: !2975)
!2980 = !DILocation(line: 456, column: 52, scope: !2975)
!2981 = !DILocation(line: 455, column: 19, scope: !2973)
!2982 = !DILocation(line: 457, column: 25, scope: !2975)
!2983 = !DILocation(line: 457, column: 17, scope: !2975)
!2984 = !DILocation(line: 464, column: 25, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2975, file: !674, line: 458, column: 19)
!2986 = !DILocation(line: 468, column: 21, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2988, file: !674, line: 468, column: 21)
!2988 = distinct !DILexicalBlock(scope: !2985, file: !674, line: 468, column: 21)
!2989 = !DILocation(line: 468, column: 21, scope: !2988)
!2990 = !DILocation(line: 469, column: 21, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !2992, file: !674, line: 469, column: 21)
!2992 = distinct !DILexicalBlock(scope: !2985, file: !674, line: 469, column: 21)
!2993 = !DILocation(line: 469, column: 21, scope: !2992)
!2994 = !DILocation(line: 470, column: 21, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2996, file: !674, line: 470, column: 21)
!2996 = distinct !DILexicalBlock(scope: !2985, file: !674, line: 470, column: 21)
!2997 = !DILocation(line: 470, column: 21, scope: !2996)
!2998 = !DILocation(line: 471, column: 21, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !3000, file: !674, line: 471, column: 21)
!3000 = distinct !DILexicalBlock(scope: !2985, file: !674, line: 471, column: 21)
!3001 = !DILocation(line: 471, column: 21, scope: !3000)
!3002 = !DILocation(line: 472, column: 21, scope: !2985)
!3003 = !DILocation(line: 482, column: 33, scope: !2763)
!3004 = !DILocation(line: 483, column: 33, scope: !2763)
!3005 = !DILocation(line: 485, column: 33, scope: !2763)
!3006 = !DILocation(line: 486, column: 33, scope: !2763)
!3007 = !DILocation(line: 487, column: 33, scope: !2763)
!3008 = !DILocation(line: 490, column: 17, scope: !2763)
!3009 = !DILocation(line: 492, column: 21, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !3011, file: !674, line: 491, column: 15)
!3011 = distinct !DILexicalBlock(scope: !2763, file: !674, line: 490, column: 17)
!3012 = !DILocation(line: 499, column: 35, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !2763, file: !674, line: 499, column: 17)
!3014 = !DILocation(line: 499, column: 57, scope: !3013)
!3015 = !DILocation(line: 0, scope: !2763)
!3016 = !DILocation(line: 502, column: 11, scope: !2763)
!3017 = !DILocation(line: 504, column: 17, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !2763, file: !674, line: 503, column: 17)
!3019 = !DILocation(line: 507, column: 11, scope: !2763)
!3020 = !DILocation(line: 508, column: 17, scope: !2763)
!3021 = !DILocation(line: 517, column: 15, scope: !2764)
!3022 = !DILocation(line: 517, column: 40, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !2764, file: !674, line: 517, column: 15)
!3024 = !DILocation(line: 517, column: 47, scope: !3023)
!3025 = !DILocation(line: 517, column: 18, scope: !3023)
!3026 = !DILocation(line: 521, column: 17, scope: !3027)
!3027 = distinct !DILexicalBlock(scope: !2764, file: !674, line: 521, column: 15)
!3028 = !DILocation(line: 521, column: 15, scope: !2764)
!3029 = !DILocation(line: 525, column: 11, scope: !2764)
!3030 = !DILocation(line: 537, column: 15, scope: !3031)
!3031 = distinct !DILexicalBlock(scope: !2764, file: !674, line: 536, column: 15)
!3032 = !DILocation(line: 544, column: 15, scope: !2764)
!3033 = !DILocation(line: 546, column: 19, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !3035, file: !674, line: 545, column: 13)
!3035 = distinct !DILexicalBlock(scope: !2764, file: !674, line: 544, column: 15)
!3036 = !DILocation(line: 549, column: 19, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !3034, file: !674, line: 549, column: 19)
!3038 = !DILocation(line: 549, column: 30, scope: !3037)
!3039 = !DILocation(line: 558, column: 15, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !3041, file: !674, line: 558, column: 15)
!3041 = distinct !DILexicalBlock(scope: !3034, file: !674, line: 558, column: 15)
!3042 = !DILocation(line: 558, column: 15, scope: !3041)
!3043 = !DILocation(line: 559, column: 15, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3045, file: !674, line: 559, column: 15)
!3045 = distinct !DILexicalBlock(scope: !3034, file: !674, line: 559, column: 15)
!3046 = !DILocation(line: 559, column: 15, scope: !3045)
!3047 = !DILocation(line: 560, column: 15, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !3049, file: !674, line: 560, column: 15)
!3049 = distinct !DILexicalBlock(scope: !3034, file: !674, line: 560, column: 15)
!3050 = !DILocation(line: 560, column: 15, scope: !3049)
!3051 = !DILocation(line: 562, column: 13, scope: !3034)
!3052 = !DILocation(line: 602, column: 17, scope: !2767)
!3053 = !DILocation(line: 0, scope: !2767)
!3054 = !DILocation(line: 605, column: 29, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !2771, file: !674, line: 603, column: 15)
!3056 = !DILocation(line: 605, column: 27, scope: !3055)
!3057 = !DILocation(line: 606, column: 15, scope: !3055)
!3058 = !DILocation(line: 609, column: 17, scope: !2770)
!3059 = !DILocation(line: 0, scope: !2830, inlinedAt: !3060)
!3060 = distinct !DILocation(line: 609, column: 32, scope: !2770)
!3061 = !DILocation(line: 0, scope: !2838, inlinedAt: !3062)
!3062 = distinct !DILocation(line: 1137, column: 3, scope: !2830, inlinedAt: !3060)
!3063 = !DILocation(line: 59, column: 10, scope: !2838, inlinedAt: !3062)
!3064 = !DILocation(line: 613, column: 29, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !2770, file: !674, line: 613, column: 21)
!3066 = !DILocation(line: 613, column: 21, scope: !2770)
!3067 = !DILocation(line: 614, column: 29, scope: !3065)
!3068 = !DILocation(line: 614, column: 19, scope: !3065)
!3069 = !DILocation(line: 618, column: 21, scope: !2773)
!3070 = !DILocation(line: 620, column: 54, scope: !2773)
!3071 = !DILocation(line: 619, column: 36, scope: !2773)
!3072 = !DILocation(line: 621, column: 25, scope: !2773)
!3073 = !DILocation(line: 631, column: 38, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !2782, file: !674, line: 629, column: 23)
!3075 = !DILocation(line: 631, column: 48, scope: !3074)
!3076 = !DILocation(line: 626, column: 25, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !2783, file: !674, line: 624, column: 23)
!3078 = !DILocation(line: 631, column: 51, scope: !3074)
!3079 = !DILocation(line: 631, column: 25, scope: !3074)
!3080 = !DILocation(line: 632, column: 28, scope: !3074)
!3081 = !DILocation(line: 631, column: 34, scope: !3074)
!3082 = distinct !{!3082, !3079, !3080, !1112}
!3083 = !DILocation(line: 0, scope: !2778)
!3084 = !DILocation(line: 646, column: 29, scope: !2780)
!3085 = !DILocation(line: 649, column: 39, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !2778, file: !674, line: 648, column: 29)
!3087 = !DILocation(line: 649, column: 31, scope: !3086)
!3088 = !DILocation(line: 648, column: 60, scope: !3086)
!3089 = !DILocation(line: 648, column: 50, scope: !3086)
!3090 = !DILocation(line: 648, column: 29, scope: !2778)
!3091 = distinct !{!3091, !3090, !3092, !1112}
!3092 = !DILocation(line: 654, column: 33, scope: !2778)
!3093 = !DILocation(line: 657, column: 43, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !2781, file: !674, line: 657, column: 29)
!3095 = !DILocalVariable(name: "wc", arg: 1, scope: !3096, file: !3097, line: 865, type: !3100)
!3096 = distinct !DISubprogram(name: "c32isprint", scope: !3097, file: !3097, line: 865, type: !3098, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !3102)
!3097 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!3098 = !DISubroutineType(types: !3099)
!3099 = !{!86, !3100}
!3100 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3101, line: 20, baseType: !98)
!3101 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3102 = !{!3095}
!3103 = !DILocation(line: 0, scope: !3096, inlinedAt: !3104)
!3104 = distinct !DILocation(line: 657, column: 31, scope: !3094)
!3105 = !DILocation(line: 871, column: 10, scope: !3096, inlinedAt: !3104)
!3106 = !DILocation(line: 657, column: 31, scope: !3094)
!3107 = !DILocation(line: 664, column: 23, scope: !2773)
!3108 = !DILocation(line: 665, column: 19, scope: !2774)
!3109 = !DILocation(line: 666, column: 15, scope: !2771)
!3110 = !DILocation(line: 0, scope: !2771)
!3111 = !DILocation(line: 670, column: 19, scope: !2787)
!3112 = !DILocation(line: 670, column: 23, scope: !2787)
!3113 = !DILocation(line: 674, column: 33, scope: !2786)
!3114 = !DILocation(line: 0, scope: !2786)
!3115 = !DILocation(line: 676, column: 17, scope: !2786)
!3116 = !DILocation(line: 398, column: 12, scope: !2757)
!3117 = !DILocation(line: 678, column: 43, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3119, file: !674, line: 678, column: 25)
!3119 = distinct !DILexicalBlock(scope: !3120, file: !674, line: 677, column: 19)
!3120 = distinct !DILexicalBlock(scope: !3121, file: !674, line: 676, column: 17)
!3121 = distinct !DILexicalBlock(scope: !2786, file: !674, line: 676, column: 17)
!3122 = !DILocation(line: 680, column: 25, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3124, file: !674, line: 680, column: 25)
!3124 = distinct !DILexicalBlock(scope: !3118, file: !674, line: 679, column: 23)
!3125 = !DILocation(line: 680, column: 25, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !3123, file: !674, line: 680, column: 25)
!3127 = !DILocation(line: 680, column: 25, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3129, file: !674, line: 680, column: 25)
!3129 = distinct !DILexicalBlock(scope: !3130, file: !674, line: 680, column: 25)
!3130 = distinct !DILexicalBlock(scope: !3126, file: !674, line: 680, column: 25)
!3131 = !DILocation(line: 680, column: 25, scope: !3129)
!3132 = !DILocation(line: 680, column: 25, scope: !3133)
!3133 = distinct !DILexicalBlock(scope: !3134, file: !674, line: 680, column: 25)
!3134 = distinct !DILexicalBlock(scope: !3130, file: !674, line: 680, column: 25)
!3135 = !DILocation(line: 680, column: 25, scope: !3134)
!3136 = !DILocation(line: 680, column: 25, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !3138, file: !674, line: 680, column: 25)
!3138 = distinct !DILexicalBlock(scope: !3130, file: !674, line: 680, column: 25)
!3139 = !DILocation(line: 680, column: 25, scope: !3138)
!3140 = !DILocation(line: 680, column: 25, scope: !3130)
!3141 = !DILocation(line: 680, column: 25, scope: !3142)
!3142 = distinct !DILexicalBlock(scope: !3143, file: !674, line: 680, column: 25)
!3143 = distinct !DILexicalBlock(scope: !3123, file: !674, line: 680, column: 25)
!3144 = !DILocation(line: 680, column: 25, scope: !3143)
!3145 = !DILocation(line: 681, column: 25, scope: !3146)
!3146 = distinct !DILexicalBlock(scope: !3147, file: !674, line: 681, column: 25)
!3147 = distinct !DILexicalBlock(scope: !3124, file: !674, line: 681, column: 25)
!3148 = !DILocation(line: 681, column: 25, scope: !3147)
!3149 = !DILocation(line: 682, column: 25, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !3151, file: !674, line: 682, column: 25)
!3151 = distinct !DILexicalBlock(scope: !3124, file: !674, line: 682, column: 25)
!3152 = !DILocation(line: 682, column: 25, scope: !3151)
!3153 = !DILocation(line: 683, column: 38, scope: !3124)
!3154 = !DILocation(line: 683, column: 33, scope: !3124)
!3155 = !DILocation(line: 684, column: 23, scope: !3124)
!3156 = !DILocation(line: 685, column: 30, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !3118, file: !674, line: 685, column: 30)
!3158 = !DILocation(line: 685, column: 30, scope: !3118)
!3159 = !DILocation(line: 687, column: 25, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !3161, file: !674, line: 687, column: 25)
!3161 = distinct !DILexicalBlock(scope: !3162, file: !674, line: 687, column: 25)
!3162 = distinct !DILexicalBlock(scope: !3157, file: !674, line: 686, column: 23)
!3163 = !DILocation(line: 687, column: 25, scope: !3161)
!3164 = !DILocation(line: 689, column: 23, scope: !3162)
!3165 = !DILocation(line: 690, column: 35, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !3119, file: !674, line: 690, column: 25)
!3167 = !DILocation(line: 690, column: 30, scope: !3166)
!3168 = !DILocation(line: 690, column: 25, scope: !3119)
!3169 = !DILocation(line: 692, column: 21, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3171, file: !674, line: 692, column: 21)
!3171 = distinct !DILexicalBlock(scope: !3119, file: !674, line: 692, column: 21)
!3172 = !DILocation(line: 692, column: 21, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3174, file: !674, line: 692, column: 21)
!3174 = distinct !DILexicalBlock(scope: !3175, file: !674, line: 692, column: 21)
!3175 = distinct !DILexicalBlock(scope: !3170, file: !674, line: 692, column: 21)
!3176 = !DILocation(line: 692, column: 21, scope: !3174)
!3177 = !DILocation(line: 692, column: 21, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !3179, file: !674, line: 692, column: 21)
!3179 = distinct !DILexicalBlock(scope: !3175, file: !674, line: 692, column: 21)
!3180 = !DILocation(line: 692, column: 21, scope: !3179)
!3181 = !DILocation(line: 692, column: 21, scope: !3175)
!3182 = !DILocation(line: 0, scope: !3119)
!3183 = !DILocation(line: 693, column: 21, scope: !3184)
!3184 = distinct !DILexicalBlock(scope: !3185, file: !674, line: 693, column: 21)
!3185 = distinct !DILexicalBlock(scope: !3119, file: !674, line: 693, column: 21)
!3186 = !DILocation(line: 693, column: 21, scope: !3185)
!3187 = !DILocation(line: 694, column: 25, scope: !3119)
!3188 = !DILocation(line: 676, column: 17, scope: !3120)
!3189 = distinct !{!3189, !3190, !3191}
!3190 = !DILocation(line: 676, column: 17, scope: !3121)
!3191 = !DILocation(line: 695, column: 19, scope: !3121)
!3192 = !DILocation(line: 409, column: 30, scope: !2908)
!3193 = !DILocation(line: 702, column: 34, scope: !3194)
!3194 = distinct !DILexicalBlock(scope: !2757, file: !674, line: 702, column: 11)
!3195 = !DILocation(line: 704, column: 14, scope: !3194)
!3196 = !DILocation(line: 705, column: 14, scope: !3194)
!3197 = !DILocation(line: 705, column: 35, scope: !3194)
!3198 = !DILocation(line: 705, column: 17, scope: !3194)
!3199 = !DILocation(line: 705, column: 47, scope: !3194)
!3200 = !DILocation(line: 705, column: 65, scope: !3194)
!3201 = !DILocation(line: 706, column: 11, scope: !3194)
!3202 = !DILocation(line: 702, column: 11, scope: !2757)
!3203 = !DILocation(line: 395, column: 15, scope: !2755)
!3204 = !DILocation(line: 709, column: 5, scope: !2757)
!3205 = !DILocation(line: 710, column: 7, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !2757, file: !674, line: 710, column: 7)
!3207 = !DILocation(line: 710, column: 7, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3206, file: !674, line: 710, column: 7)
!3209 = !DILocation(line: 710, column: 7, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !3211, file: !674, line: 710, column: 7)
!3211 = distinct !DILexicalBlock(scope: !3212, file: !674, line: 710, column: 7)
!3212 = distinct !DILexicalBlock(scope: !3208, file: !674, line: 710, column: 7)
!3213 = !DILocation(line: 710, column: 7, scope: !3211)
!3214 = !DILocation(line: 710, column: 7, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !3216, file: !674, line: 710, column: 7)
!3216 = distinct !DILexicalBlock(scope: !3212, file: !674, line: 710, column: 7)
!3217 = !DILocation(line: 710, column: 7, scope: !3216)
!3218 = !DILocation(line: 710, column: 7, scope: !3219)
!3219 = distinct !DILexicalBlock(scope: !3220, file: !674, line: 710, column: 7)
!3220 = distinct !DILexicalBlock(scope: !3212, file: !674, line: 710, column: 7)
!3221 = !DILocation(line: 710, column: 7, scope: !3220)
!3222 = !DILocation(line: 710, column: 7, scope: !3212)
!3223 = !DILocation(line: 710, column: 7, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3225, file: !674, line: 710, column: 7)
!3225 = distinct !DILexicalBlock(scope: !3206, file: !674, line: 710, column: 7)
!3226 = !DILocation(line: 710, column: 7, scope: !3225)
!3227 = !DILocation(line: 712, column: 5, scope: !2757)
!3228 = !DILocation(line: 713, column: 7, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !3230, file: !674, line: 713, column: 7)
!3230 = distinct !DILexicalBlock(scope: !2757, file: !674, line: 713, column: 7)
!3231 = !DILocation(line: 417, column: 21, scope: !2757)
!3232 = !DILocation(line: 713, column: 7, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !3234, file: !674, line: 713, column: 7)
!3234 = distinct !DILexicalBlock(scope: !3235, file: !674, line: 713, column: 7)
!3235 = distinct !DILexicalBlock(scope: !3229, file: !674, line: 713, column: 7)
!3236 = !DILocation(line: 713, column: 7, scope: !3234)
!3237 = !DILocation(line: 713, column: 7, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !3239, file: !674, line: 713, column: 7)
!3239 = distinct !DILexicalBlock(scope: !3235, file: !674, line: 713, column: 7)
!3240 = !DILocation(line: 713, column: 7, scope: !3239)
!3241 = !DILocation(line: 713, column: 7, scope: !3235)
!3242 = !DILocation(line: 714, column: 7, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !3244, file: !674, line: 714, column: 7)
!3244 = distinct !DILexicalBlock(scope: !2757, file: !674, line: 714, column: 7)
!3245 = !DILocation(line: 714, column: 7, scope: !3244)
!3246 = !DILocation(line: 716, column: 13, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !2757, file: !674, line: 716, column: 11)
!3248 = !DILocation(line: 716, column: 11, scope: !2757)
!3249 = !DILocation(line: 718, column: 5, scope: !2758)
!3250 = !DILocation(line: 395, column: 82, scope: !2758)
!3251 = !DILocation(line: 395, column: 3, scope: !2758)
!3252 = distinct !{!3252, !2904, !3253, !1112}
!3253 = !DILocation(line: 718, column: 5, scope: !2755)
!3254 = !DILocation(line: 720, column: 11, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !2723, file: !674, line: 720, column: 7)
!3256 = !DILocation(line: 720, column: 16, scope: !3255)
!3257 = !DILocation(line: 728, column: 51, scope: !3258)
!3258 = distinct !DILexicalBlock(scope: !2723, file: !674, line: 728, column: 7)
!3259 = !DILocation(line: 731, column: 11, scope: !3260)
!3260 = distinct !DILexicalBlock(scope: !3261, file: !674, line: 731, column: 11)
!3261 = distinct !DILexicalBlock(scope: !3258, file: !674, line: 730, column: 5)
!3262 = !DILocation(line: 731, column: 11, scope: !3261)
!3263 = !DILocation(line: 732, column: 16, scope: !3260)
!3264 = !DILocation(line: 732, column: 9, scope: !3260)
!3265 = !DILocation(line: 736, column: 18, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3260, file: !674, line: 736, column: 16)
!3267 = !DILocation(line: 736, column: 29, scope: !3266)
!3268 = !DILocation(line: 745, column: 7, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !2723, file: !674, line: 745, column: 7)
!3270 = !DILocation(line: 745, column: 20, scope: !3269)
!3271 = !DILocation(line: 746, column: 12, scope: !3272)
!3272 = distinct !DILexicalBlock(scope: !3273, file: !674, line: 746, column: 5)
!3273 = distinct !DILexicalBlock(scope: !3269, file: !674, line: 746, column: 5)
!3274 = !DILocation(line: 746, column: 5, scope: !3273)
!3275 = !DILocation(line: 747, column: 7, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !3277, file: !674, line: 747, column: 7)
!3277 = distinct !DILexicalBlock(scope: !3272, file: !674, line: 747, column: 7)
!3278 = !DILocation(line: 747, column: 7, scope: !3277)
!3279 = !DILocation(line: 746, column: 39, scope: !3272)
!3280 = distinct !{!3280, !3274, !3281, !1112}
!3281 = !DILocation(line: 747, column: 7, scope: !3273)
!3282 = !DILocation(line: 749, column: 11, scope: !3283)
!3283 = distinct !DILexicalBlock(scope: !2723, file: !674, line: 749, column: 7)
!3284 = !DILocation(line: 749, column: 7, scope: !2723)
!3285 = !DILocation(line: 750, column: 5, scope: !3283)
!3286 = !DILocation(line: 750, column: 17, scope: !3283)
!3287 = !DILocation(line: 753, column: 2, scope: !2723)
!3288 = !DILocation(line: 756, column: 51, scope: !3289)
!3289 = distinct !DILexicalBlock(scope: !2723, file: !674, line: 756, column: 7)
!3290 = !DILocation(line: 756, column: 21, scope: !3289)
!3291 = !DILocation(line: 760, column: 42, scope: !2723)
!3292 = !DILocation(line: 758, column: 10, scope: !2723)
!3293 = !DILocation(line: 758, column: 3, scope: !2723)
!3294 = !DILocation(line: 762, column: 1, scope: !2723)
!3295 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1189, file: !1189, line: 98, type: !3296, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3296 = !DISubroutineType(types: !909)
!3297 = !DISubprogram(name: "strlen", scope: !1185, file: !1185, line: 407, type: !3298, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3298 = !DISubroutineType(types: !3299)
!3299 = !{!148, !149}
!3300 = !DISubprogram(name: "iswprint", scope: !3301, file: !3301, line: 120, type: !3098, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3301 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3302 = distinct !DISubprogram(name: "quotearg_alloc", scope: !674, file: !674, line: 788, type: !3303, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !3305)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{!88, !149, !146, !2616}
!3305 = !{!3306, !3307, !3308}
!3306 = !DILocalVariable(name: "arg", arg: 1, scope: !3302, file: !674, line: 788, type: !149)
!3307 = !DILocalVariable(name: "argsize", arg: 2, scope: !3302, file: !674, line: 788, type: !146)
!3308 = !DILocalVariable(name: "o", arg: 3, scope: !3302, file: !674, line: 789, type: !2616)
!3309 = !DILocation(line: 0, scope: !3302)
!3310 = !DILocalVariable(name: "arg", arg: 1, scope: !3311, file: !674, line: 801, type: !149)
!3311 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !674, file: !674, line: 801, type: !3312, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !3314)
!3312 = !DISubroutineType(types: !3313)
!3313 = !{!88, !149, !146, !926, !2616}
!3314 = !{!3310, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322}
!3315 = !DILocalVariable(name: "argsize", arg: 2, scope: !3311, file: !674, line: 801, type: !146)
!3316 = !DILocalVariable(name: "size", arg: 3, scope: !3311, file: !674, line: 801, type: !926)
!3317 = !DILocalVariable(name: "o", arg: 4, scope: !3311, file: !674, line: 802, type: !2616)
!3318 = !DILocalVariable(name: "p", scope: !3311, file: !674, line: 804, type: !2616)
!3319 = !DILocalVariable(name: "saved_errno", scope: !3311, file: !674, line: 805, type: !86)
!3320 = !DILocalVariable(name: "flags", scope: !3311, file: !674, line: 807, type: !86)
!3321 = !DILocalVariable(name: "bufsize", scope: !3311, file: !674, line: 808, type: !146)
!3322 = !DILocalVariable(name: "buf", scope: !3311, file: !674, line: 812, type: !88)
!3323 = !DILocation(line: 0, scope: !3311, inlinedAt: !3324)
!3324 = distinct !DILocation(line: 791, column: 10, scope: !3302)
!3325 = !DILocation(line: 804, column: 37, scope: !3311, inlinedAt: !3324)
!3326 = !DILocation(line: 805, column: 21, scope: !3311, inlinedAt: !3324)
!3327 = !DILocation(line: 807, column: 18, scope: !3311, inlinedAt: !3324)
!3328 = !DILocation(line: 807, column: 24, scope: !3311, inlinedAt: !3324)
!3329 = !DILocation(line: 808, column: 72, scope: !3311, inlinedAt: !3324)
!3330 = !DILocation(line: 809, column: 56, scope: !3311, inlinedAt: !3324)
!3331 = !DILocation(line: 810, column: 49, scope: !3311, inlinedAt: !3324)
!3332 = !DILocation(line: 811, column: 49, scope: !3311, inlinedAt: !3324)
!3333 = !DILocation(line: 808, column: 20, scope: !3311, inlinedAt: !3324)
!3334 = !DILocation(line: 811, column: 62, scope: !3311, inlinedAt: !3324)
!3335 = !DILocation(line: 812, column: 15, scope: !3311, inlinedAt: !3324)
!3336 = !DILocation(line: 813, column: 60, scope: !3311, inlinedAt: !3324)
!3337 = !DILocation(line: 815, column: 32, scope: !3311, inlinedAt: !3324)
!3338 = !DILocation(line: 815, column: 47, scope: !3311, inlinedAt: !3324)
!3339 = !DILocation(line: 813, column: 3, scope: !3311, inlinedAt: !3324)
!3340 = !DILocation(line: 816, column: 9, scope: !3311, inlinedAt: !3324)
!3341 = !DILocation(line: 791, column: 3, scope: !3302)
!3342 = !DILocation(line: 0, scope: !3311)
!3343 = !DILocation(line: 804, column: 37, scope: !3311)
!3344 = !DILocation(line: 805, column: 21, scope: !3311)
!3345 = !DILocation(line: 807, column: 18, scope: !3311)
!3346 = !DILocation(line: 807, column: 27, scope: !3311)
!3347 = !DILocation(line: 807, column: 24, scope: !3311)
!3348 = !DILocation(line: 808, column: 72, scope: !3311)
!3349 = !DILocation(line: 809, column: 56, scope: !3311)
!3350 = !DILocation(line: 810, column: 49, scope: !3311)
!3351 = !DILocation(line: 811, column: 49, scope: !3311)
!3352 = !DILocation(line: 808, column: 20, scope: !3311)
!3353 = !DILocation(line: 811, column: 62, scope: !3311)
!3354 = !DILocation(line: 812, column: 15, scope: !3311)
!3355 = !DILocation(line: 813, column: 60, scope: !3311)
!3356 = !DILocation(line: 815, column: 32, scope: !3311)
!3357 = !DILocation(line: 815, column: 47, scope: !3311)
!3358 = !DILocation(line: 813, column: 3, scope: !3311)
!3359 = !DILocation(line: 816, column: 9, scope: !3311)
!3360 = !DILocation(line: 817, column: 7, scope: !3311)
!3361 = !DILocation(line: 818, column: 11, scope: !3362)
!3362 = distinct !DILexicalBlock(scope: !3311, file: !674, line: 817, column: 7)
!3363 = !{!1275, !1275, i64 0}
!3364 = !DILocation(line: 818, column: 5, scope: !3362)
!3365 = !DILocation(line: 819, column: 3, scope: !3311)
!3366 = distinct !DISubprogram(name: "quotearg_free", scope: !674, file: !674, line: 837, type: !611, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !3367)
!3367 = !{!3368, !3369}
!3368 = !DILocalVariable(name: "sv", scope: !3366, file: !674, line: 839, type: !763)
!3369 = !DILocalVariable(name: "i", scope: !3370, file: !674, line: 840, type: !86)
!3370 = distinct !DILexicalBlock(scope: !3366, file: !674, line: 840, column: 3)
!3371 = !DILocation(line: 839, column: 24, scope: !3366)
!3372 = !DILocation(line: 0, scope: !3366)
!3373 = !DILocation(line: 0, scope: !3370)
!3374 = !DILocation(line: 840, column: 21, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3370, file: !674, line: 840, column: 3)
!3376 = !DILocation(line: 840, column: 3, scope: !3370)
!3377 = !DILocation(line: 842, column: 13, scope: !3378)
!3378 = distinct !DILexicalBlock(scope: !3366, file: !674, line: 842, column: 7)
!3379 = !{!3380, !992, i64 8}
!3380 = !{!"slotvec", !1275, i64 0, !992, i64 8}
!3381 = !DILocation(line: 842, column: 17, scope: !3378)
!3382 = !DILocation(line: 842, column: 7, scope: !3366)
!3383 = !DILocation(line: 841, column: 17, scope: !3375)
!3384 = !DILocation(line: 841, column: 5, scope: !3375)
!3385 = !DILocation(line: 840, column: 32, scope: !3375)
!3386 = distinct !{!3386, !3376, !3387, !1112}
!3387 = !DILocation(line: 841, column: 20, scope: !3370)
!3388 = !DILocation(line: 844, column: 7, scope: !3389)
!3389 = distinct !DILexicalBlock(scope: !3378, file: !674, line: 843, column: 5)
!3390 = !DILocation(line: 845, column: 21, scope: !3389)
!3391 = !{!3380, !1275, i64 0}
!3392 = !DILocation(line: 846, column: 20, scope: !3389)
!3393 = !DILocation(line: 847, column: 5, scope: !3389)
!3394 = !DILocation(line: 848, column: 10, scope: !3395)
!3395 = distinct !DILexicalBlock(scope: !3366, file: !674, line: 848, column: 7)
!3396 = !DILocation(line: 848, column: 7, scope: !3366)
!3397 = !DILocation(line: 850, column: 7, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3395, file: !674, line: 849, column: 5)
!3399 = !DILocation(line: 851, column: 15, scope: !3398)
!3400 = !DILocation(line: 852, column: 5, scope: !3398)
!3401 = !DILocation(line: 853, column: 10, scope: !3366)
!3402 = !DILocation(line: 854, column: 1, scope: !3366)
!3403 = distinct !DISubprogram(name: "quotearg_n", scope: !674, file: !674, line: 919, type: !1182, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !3404)
!3404 = !{!3405, !3406}
!3405 = !DILocalVariable(name: "n", arg: 1, scope: !3403, file: !674, line: 919, type: !86)
!3406 = !DILocalVariable(name: "arg", arg: 2, scope: !3403, file: !674, line: 919, type: !149)
!3407 = !DILocation(line: 0, scope: !3403)
!3408 = !DILocation(line: 921, column: 10, scope: !3403)
!3409 = !DILocation(line: 921, column: 3, scope: !3403)
!3410 = distinct !DISubprogram(name: "quotearg_n_options", scope: !674, file: !674, line: 866, type: !3411, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !3413)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{!88, !86, !149, !146, !2616}
!3413 = !{!3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3424, !3425, !3427, !3428, !3429}
!3414 = !DILocalVariable(name: "n", arg: 1, scope: !3410, file: !674, line: 866, type: !86)
!3415 = !DILocalVariable(name: "arg", arg: 2, scope: !3410, file: !674, line: 866, type: !149)
!3416 = !DILocalVariable(name: "argsize", arg: 3, scope: !3410, file: !674, line: 866, type: !146)
!3417 = !DILocalVariable(name: "options", arg: 4, scope: !3410, file: !674, line: 867, type: !2616)
!3418 = !DILocalVariable(name: "saved_errno", scope: !3410, file: !674, line: 869, type: !86)
!3419 = !DILocalVariable(name: "sv", scope: !3410, file: !674, line: 871, type: !763)
!3420 = !DILocalVariable(name: "nslots_max", scope: !3410, file: !674, line: 873, type: !86)
!3421 = !DILocalVariable(name: "preallocated", scope: !3422, file: !674, line: 879, type: !274)
!3422 = distinct !DILexicalBlock(scope: !3423, file: !674, line: 878, column: 5)
!3423 = distinct !DILexicalBlock(scope: !3410, file: !674, line: 877, column: 7)
!3424 = !DILocalVariable(name: "new_nslots", scope: !3422, file: !674, line: 880, type: !939)
!3425 = !DILocalVariable(name: "size", scope: !3426, file: !674, line: 891, type: !146)
!3426 = distinct !DILexicalBlock(scope: !3410, file: !674, line: 890, column: 3)
!3427 = !DILocalVariable(name: "val", scope: !3426, file: !674, line: 892, type: !88)
!3428 = !DILocalVariable(name: "flags", scope: !3426, file: !674, line: 894, type: !86)
!3429 = !DILocalVariable(name: "qsize", scope: !3426, file: !674, line: 895, type: !146)
!3430 = distinct !DIAssignID()
!3431 = !DILocation(line: 0, scope: !3422)
!3432 = !DILocation(line: 0, scope: !3410)
!3433 = !DILocation(line: 869, column: 21, scope: !3410)
!3434 = !DILocation(line: 871, column: 24, scope: !3410)
!3435 = !DILocation(line: 874, column: 17, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !3410, file: !674, line: 874, column: 7)
!3437 = !DILocation(line: 875, column: 5, scope: !3436)
!3438 = !DILocation(line: 877, column: 7, scope: !3423)
!3439 = !DILocation(line: 877, column: 14, scope: !3423)
!3440 = !DILocation(line: 877, column: 7, scope: !3410)
!3441 = !DILocation(line: 879, column: 31, scope: !3422)
!3442 = !DILocation(line: 880, column: 7, scope: !3422)
!3443 = !DILocation(line: 880, column: 26, scope: !3422)
!3444 = !DILocation(line: 880, column: 13, scope: !3422)
!3445 = distinct !DIAssignID()
!3446 = !DILocation(line: 882, column: 31, scope: !3422)
!3447 = !DILocation(line: 883, column: 33, scope: !3422)
!3448 = !DILocation(line: 883, column: 42, scope: !3422)
!3449 = !DILocation(line: 883, column: 31, scope: !3422)
!3450 = !DILocation(line: 882, column: 22, scope: !3422)
!3451 = !DILocation(line: 882, column: 15, scope: !3422)
!3452 = !DILocation(line: 884, column: 11, scope: !3422)
!3453 = !DILocation(line: 885, column: 15, scope: !3454)
!3454 = distinct !DILexicalBlock(scope: !3422, file: !674, line: 884, column: 11)
!3455 = !{i64 0, i64 8, !3363, i64 8, i64 8, !991}
!3456 = !DILocation(line: 885, column: 9, scope: !3454)
!3457 = !DILocation(line: 886, column: 20, scope: !3422)
!3458 = !DILocation(line: 886, column: 18, scope: !3422)
!3459 = !DILocation(line: 886, column: 32, scope: !3422)
!3460 = !DILocation(line: 886, column: 43, scope: !3422)
!3461 = !DILocation(line: 886, column: 53, scope: !3422)
!3462 = !DILocation(line: 0, scope: !2838, inlinedAt: !3463)
!3463 = distinct !DILocation(line: 886, column: 7, scope: !3422)
!3464 = !DILocation(line: 59, column: 10, scope: !2838, inlinedAt: !3463)
!3465 = !DILocation(line: 887, column: 16, scope: !3422)
!3466 = !DILocation(line: 887, column: 14, scope: !3422)
!3467 = !DILocation(line: 888, column: 5, scope: !3423)
!3468 = !DILocation(line: 888, column: 5, scope: !3422)
!3469 = !DILocation(line: 891, column: 19, scope: !3426)
!3470 = !DILocation(line: 891, column: 25, scope: !3426)
!3471 = !DILocation(line: 0, scope: !3426)
!3472 = !DILocation(line: 892, column: 23, scope: !3426)
!3473 = !DILocation(line: 894, column: 26, scope: !3426)
!3474 = !DILocation(line: 894, column: 32, scope: !3426)
!3475 = !DILocation(line: 896, column: 55, scope: !3426)
!3476 = !DILocation(line: 897, column: 55, scope: !3426)
!3477 = !DILocation(line: 898, column: 55, scope: !3426)
!3478 = !DILocation(line: 899, column: 55, scope: !3426)
!3479 = !DILocation(line: 895, column: 20, scope: !3426)
!3480 = !DILocation(line: 901, column: 14, scope: !3481)
!3481 = distinct !DILexicalBlock(scope: !3426, file: !674, line: 901, column: 9)
!3482 = !DILocation(line: 901, column: 9, scope: !3426)
!3483 = !DILocation(line: 903, column: 35, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !3481, file: !674, line: 902, column: 7)
!3485 = !DILocation(line: 903, column: 20, scope: !3484)
!3486 = !DILocation(line: 904, column: 17, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !3484, file: !674, line: 904, column: 13)
!3488 = !DILocation(line: 904, column: 13, scope: !3484)
!3489 = !DILocation(line: 905, column: 11, scope: !3487)
!3490 = !DILocation(line: 906, column: 27, scope: !3484)
!3491 = !DILocation(line: 906, column: 19, scope: !3484)
!3492 = !DILocation(line: 907, column: 69, scope: !3484)
!3493 = !DILocation(line: 909, column: 44, scope: !3484)
!3494 = !DILocation(line: 910, column: 44, scope: !3484)
!3495 = !DILocation(line: 907, column: 9, scope: !3484)
!3496 = !DILocation(line: 911, column: 7, scope: !3484)
!3497 = !DILocation(line: 913, column: 11, scope: !3426)
!3498 = !DILocation(line: 914, column: 5, scope: !3426)
!3499 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !674, file: !674, line: 925, type: !3500, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !3502)
!3500 = !DISubroutineType(types: !3501)
!3501 = !{!88, !86, !149, !146}
!3502 = !{!3503, !3504, !3505}
!3503 = !DILocalVariable(name: "n", arg: 1, scope: !3499, file: !674, line: 925, type: !86)
!3504 = !DILocalVariable(name: "arg", arg: 2, scope: !3499, file: !674, line: 925, type: !149)
!3505 = !DILocalVariable(name: "argsize", arg: 3, scope: !3499, file: !674, line: 925, type: !146)
!3506 = !DILocation(line: 0, scope: !3499)
!3507 = !DILocation(line: 927, column: 10, scope: !3499)
!3508 = !DILocation(line: 927, column: 3, scope: !3499)
!3509 = distinct !DISubprogram(name: "quotearg", scope: !674, file: !674, line: 931, type: !1191, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !3510)
!3510 = !{!3511}
!3511 = !DILocalVariable(name: "arg", arg: 1, scope: !3509, file: !674, line: 931, type: !149)
!3512 = !DILocation(line: 0, scope: !3509)
!3513 = !DILocation(line: 0, scope: !3403, inlinedAt: !3514)
!3514 = distinct !DILocation(line: 933, column: 10, scope: !3509)
!3515 = !DILocation(line: 921, column: 10, scope: !3403, inlinedAt: !3514)
!3516 = !DILocation(line: 933, column: 3, scope: !3509)
!3517 = distinct !DISubprogram(name: "quotearg_mem", scope: !674, file: !674, line: 937, type: !3518, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !3520)
!3518 = !DISubroutineType(types: !3519)
!3519 = !{!88, !149, !146}
!3520 = !{!3521, !3522}
!3521 = !DILocalVariable(name: "arg", arg: 1, scope: !3517, file: !674, line: 937, type: !149)
!3522 = !DILocalVariable(name: "argsize", arg: 2, scope: !3517, file: !674, line: 937, type: !146)
!3523 = !DILocation(line: 0, scope: !3517)
!3524 = !DILocation(line: 0, scope: !3499, inlinedAt: !3525)
!3525 = distinct !DILocation(line: 939, column: 10, scope: !3517)
!3526 = !DILocation(line: 927, column: 10, scope: !3499, inlinedAt: !3525)
!3527 = !DILocation(line: 939, column: 3, scope: !3517)
!3528 = distinct !DISubprogram(name: "quotearg_n_style", scope: !674, file: !674, line: 943, type: !3529, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !3531)
!3529 = !DISubroutineType(types: !3530)
!3530 = !{!88, !86, !700, !149}
!3531 = !{!3532, !3533, !3534, !3535}
!3532 = !DILocalVariable(name: "n", arg: 1, scope: !3528, file: !674, line: 943, type: !86)
!3533 = !DILocalVariable(name: "s", arg: 2, scope: !3528, file: !674, line: 943, type: !700)
!3534 = !DILocalVariable(name: "arg", arg: 3, scope: !3528, file: !674, line: 943, type: !149)
!3535 = !DILocalVariable(name: "o", scope: !3528, file: !674, line: 945, type: !2617)
!3536 = distinct !DIAssignID()
!3537 = !DILocation(line: 0, scope: !3528)
!3538 = !DILocation(line: 945, column: 3, scope: !3528)
!3539 = !{!3540}
!3540 = distinct !{!3540, !3541, !"quoting_options_from_style: argument 0"}
!3541 = distinct !{!3541, !"quoting_options_from_style"}
!3542 = !DILocation(line: 945, column: 36, scope: !3528)
!3543 = !DILocalVariable(name: "style", arg: 1, scope: !3544, file: !674, line: 183, type: !700)
!3544 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !674, file: !674, line: 183, type: !3545, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !3547)
!3545 = !DISubroutineType(types: !3546)
!3546 = !{!715, !700}
!3547 = !{!3543, !3548}
!3548 = !DILocalVariable(name: "o", scope: !3544, file: !674, line: 185, type: !715)
!3549 = !DILocation(line: 0, scope: !3544, inlinedAt: !3550)
!3550 = distinct !DILocation(line: 945, column: 36, scope: !3528)
!3551 = !DILocation(line: 185, column: 26, scope: !3544, inlinedAt: !3550)
!3552 = distinct !DIAssignID()
!3553 = !DILocation(line: 186, column: 13, scope: !3554, inlinedAt: !3550)
!3554 = distinct !DILexicalBlock(scope: !3544, file: !674, line: 186, column: 7)
!3555 = !DILocation(line: 186, column: 7, scope: !3544, inlinedAt: !3550)
!3556 = !DILocation(line: 187, column: 5, scope: !3554, inlinedAt: !3550)
!3557 = !DILocation(line: 188, column: 11, scope: !3544, inlinedAt: !3550)
!3558 = distinct !DIAssignID()
!3559 = !DILocation(line: 946, column: 10, scope: !3528)
!3560 = !DILocation(line: 947, column: 1, scope: !3528)
!3561 = !DILocation(line: 946, column: 3, scope: !3528)
!3562 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !674, file: !674, line: 950, type: !3563, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !3565)
!3563 = !DISubroutineType(types: !3564)
!3564 = !{!88, !86, !700, !149, !146}
!3565 = !{!3566, !3567, !3568, !3569, !3570}
!3566 = !DILocalVariable(name: "n", arg: 1, scope: !3562, file: !674, line: 950, type: !86)
!3567 = !DILocalVariable(name: "s", arg: 2, scope: !3562, file: !674, line: 950, type: !700)
!3568 = !DILocalVariable(name: "arg", arg: 3, scope: !3562, file: !674, line: 951, type: !149)
!3569 = !DILocalVariable(name: "argsize", arg: 4, scope: !3562, file: !674, line: 951, type: !146)
!3570 = !DILocalVariable(name: "o", scope: !3562, file: !674, line: 953, type: !2617)
!3571 = distinct !DIAssignID()
!3572 = !DILocation(line: 0, scope: !3562)
!3573 = !DILocation(line: 953, column: 3, scope: !3562)
!3574 = !{!3575}
!3575 = distinct !{!3575, !3576, !"quoting_options_from_style: argument 0"}
!3576 = distinct !{!3576, !"quoting_options_from_style"}
!3577 = !DILocation(line: 953, column: 36, scope: !3562)
!3578 = !DILocation(line: 0, scope: !3544, inlinedAt: !3579)
!3579 = distinct !DILocation(line: 953, column: 36, scope: !3562)
!3580 = !DILocation(line: 185, column: 26, scope: !3544, inlinedAt: !3579)
!3581 = distinct !DIAssignID()
!3582 = !DILocation(line: 186, column: 13, scope: !3554, inlinedAt: !3579)
!3583 = !DILocation(line: 186, column: 7, scope: !3544, inlinedAt: !3579)
!3584 = !DILocation(line: 187, column: 5, scope: !3554, inlinedAt: !3579)
!3585 = !DILocation(line: 188, column: 11, scope: !3544, inlinedAt: !3579)
!3586 = distinct !DIAssignID()
!3587 = !DILocation(line: 954, column: 10, scope: !3562)
!3588 = !DILocation(line: 955, column: 1, scope: !3562)
!3589 = !DILocation(line: 954, column: 3, scope: !3562)
!3590 = distinct !DISubprogram(name: "quotearg_style", scope: !674, file: !674, line: 958, type: !3591, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !3593)
!3591 = !DISubroutineType(types: !3592)
!3592 = !{!88, !700, !149}
!3593 = !{!3594, !3595}
!3594 = !DILocalVariable(name: "s", arg: 1, scope: !3590, file: !674, line: 958, type: !700)
!3595 = !DILocalVariable(name: "arg", arg: 2, scope: !3590, file: !674, line: 958, type: !149)
!3596 = distinct !DIAssignID()
!3597 = !DILocation(line: 0, scope: !3590)
!3598 = !DILocation(line: 0, scope: !3528, inlinedAt: !3599)
!3599 = distinct !DILocation(line: 960, column: 10, scope: !3590)
!3600 = !DILocation(line: 945, column: 3, scope: !3528, inlinedAt: !3599)
!3601 = !{!3602}
!3602 = distinct !{!3602, !3603, !"quoting_options_from_style: argument 0"}
!3603 = distinct !{!3603, !"quoting_options_from_style"}
!3604 = !DILocation(line: 945, column: 36, scope: !3528, inlinedAt: !3599)
!3605 = !DILocation(line: 0, scope: !3544, inlinedAt: !3606)
!3606 = distinct !DILocation(line: 945, column: 36, scope: !3528, inlinedAt: !3599)
!3607 = !DILocation(line: 185, column: 26, scope: !3544, inlinedAt: !3606)
!3608 = distinct !DIAssignID()
!3609 = !DILocation(line: 186, column: 13, scope: !3554, inlinedAt: !3606)
!3610 = !DILocation(line: 186, column: 7, scope: !3544, inlinedAt: !3606)
!3611 = !DILocation(line: 187, column: 5, scope: !3554, inlinedAt: !3606)
!3612 = !DILocation(line: 188, column: 11, scope: !3544, inlinedAt: !3606)
!3613 = distinct !DIAssignID()
!3614 = !DILocation(line: 946, column: 10, scope: !3528, inlinedAt: !3599)
!3615 = !DILocation(line: 947, column: 1, scope: !3528, inlinedAt: !3599)
!3616 = !DILocation(line: 960, column: 3, scope: !3590)
!3617 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !674, file: !674, line: 964, type: !3618, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !3620)
!3618 = !DISubroutineType(types: !3619)
!3619 = !{!88, !700, !149, !146}
!3620 = !{!3621, !3622, !3623}
!3621 = !DILocalVariable(name: "s", arg: 1, scope: !3617, file: !674, line: 964, type: !700)
!3622 = !DILocalVariable(name: "arg", arg: 2, scope: !3617, file: !674, line: 964, type: !149)
!3623 = !DILocalVariable(name: "argsize", arg: 3, scope: !3617, file: !674, line: 964, type: !146)
!3624 = distinct !DIAssignID()
!3625 = !DILocation(line: 0, scope: !3617)
!3626 = !DILocation(line: 0, scope: !3562, inlinedAt: !3627)
!3627 = distinct !DILocation(line: 966, column: 10, scope: !3617)
!3628 = !DILocation(line: 953, column: 3, scope: !3562, inlinedAt: !3627)
!3629 = !{!3630}
!3630 = distinct !{!3630, !3631, !"quoting_options_from_style: argument 0"}
!3631 = distinct !{!3631, !"quoting_options_from_style"}
!3632 = !DILocation(line: 953, column: 36, scope: !3562, inlinedAt: !3627)
!3633 = !DILocation(line: 0, scope: !3544, inlinedAt: !3634)
!3634 = distinct !DILocation(line: 953, column: 36, scope: !3562, inlinedAt: !3627)
!3635 = !DILocation(line: 185, column: 26, scope: !3544, inlinedAt: !3634)
!3636 = distinct !DIAssignID()
!3637 = !DILocation(line: 186, column: 13, scope: !3554, inlinedAt: !3634)
!3638 = !DILocation(line: 186, column: 7, scope: !3544, inlinedAt: !3634)
!3639 = !DILocation(line: 187, column: 5, scope: !3554, inlinedAt: !3634)
!3640 = !DILocation(line: 188, column: 11, scope: !3544, inlinedAt: !3634)
!3641 = distinct !DIAssignID()
!3642 = !DILocation(line: 954, column: 10, scope: !3562, inlinedAt: !3627)
!3643 = !DILocation(line: 955, column: 1, scope: !3562, inlinedAt: !3627)
!3644 = !DILocation(line: 966, column: 3, scope: !3617)
!3645 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !674, file: !674, line: 970, type: !3646, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !3648)
!3646 = !DISubroutineType(types: !3647)
!3647 = !{!88, !149, !146, !4}
!3648 = !{!3649, !3650, !3651, !3652}
!3649 = !DILocalVariable(name: "arg", arg: 1, scope: !3645, file: !674, line: 970, type: !149)
!3650 = !DILocalVariable(name: "argsize", arg: 2, scope: !3645, file: !674, line: 970, type: !146)
!3651 = !DILocalVariable(name: "ch", arg: 3, scope: !3645, file: !674, line: 970, type: !4)
!3652 = !DILocalVariable(name: "options", scope: !3645, file: !674, line: 972, type: !715)
!3653 = distinct !DIAssignID()
!3654 = !DILocation(line: 0, scope: !3645)
!3655 = !DILocation(line: 972, column: 3, scope: !3645)
!3656 = !DILocation(line: 973, column: 13, scope: !3645)
!3657 = !{i64 0, i64 4, !1065, i64 4, i64 4, !1065, i64 8, i64 32, !1074, i64 40, i64 8, !991, i64 48, i64 8, !991}
!3658 = distinct !DIAssignID()
!3659 = !DILocation(line: 0, scope: !2636, inlinedAt: !3660)
!3660 = distinct !DILocation(line: 974, column: 3, scope: !3645)
!3661 = !DILocation(line: 147, column: 41, scope: !2636, inlinedAt: !3660)
!3662 = !DILocation(line: 147, column: 62, scope: !2636, inlinedAt: !3660)
!3663 = !DILocation(line: 147, column: 57, scope: !2636, inlinedAt: !3660)
!3664 = !DILocation(line: 148, column: 15, scope: !2636, inlinedAt: !3660)
!3665 = !DILocation(line: 149, column: 21, scope: !2636, inlinedAt: !3660)
!3666 = !DILocation(line: 149, column: 24, scope: !2636, inlinedAt: !3660)
!3667 = !DILocation(line: 150, column: 19, scope: !2636, inlinedAt: !3660)
!3668 = !DILocation(line: 150, column: 24, scope: !2636, inlinedAt: !3660)
!3669 = !DILocation(line: 150, column: 6, scope: !2636, inlinedAt: !3660)
!3670 = !DILocation(line: 975, column: 10, scope: !3645)
!3671 = !DILocation(line: 976, column: 1, scope: !3645)
!3672 = !DILocation(line: 975, column: 3, scope: !3645)
!3673 = distinct !DISubprogram(name: "quotearg_char", scope: !674, file: !674, line: 979, type: !3674, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !3676)
!3674 = !DISubroutineType(types: !3675)
!3675 = !{!88, !149, !4}
!3676 = !{!3677, !3678}
!3677 = !DILocalVariable(name: "arg", arg: 1, scope: !3673, file: !674, line: 979, type: !149)
!3678 = !DILocalVariable(name: "ch", arg: 2, scope: !3673, file: !674, line: 979, type: !4)
!3679 = distinct !DIAssignID()
!3680 = !DILocation(line: 0, scope: !3673)
!3681 = !DILocation(line: 0, scope: !3645, inlinedAt: !3682)
!3682 = distinct !DILocation(line: 981, column: 10, scope: !3673)
!3683 = !DILocation(line: 972, column: 3, scope: !3645, inlinedAt: !3682)
!3684 = !DILocation(line: 973, column: 13, scope: !3645, inlinedAt: !3682)
!3685 = distinct !DIAssignID()
!3686 = !DILocation(line: 0, scope: !2636, inlinedAt: !3687)
!3687 = distinct !DILocation(line: 974, column: 3, scope: !3645, inlinedAt: !3682)
!3688 = !DILocation(line: 147, column: 41, scope: !2636, inlinedAt: !3687)
!3689 = !DILocation(line: 147, column: 62, scope: !2636, inlinedAt: !3687)
!3690 = !DILocation(line: 147, column: 57, scope: !2636, inlinedAt: !3687)
!3691 = !DILocation(line: 148, column: 15, scope: !2636, inlinedAt: !3687)
!3692 = !DILocation(line: 149, column: 21, scope: !2636, inlinedAt: !3687)
!3693 = !DILocation(line: 149, column: 24, scope: !2636, inlinedAt: !3687)
!3694 = !DILocation(line: 150, column: 19, scope: !2636, inlinedAt: !3687)
!3695 = !DILocation(line: 150, column: 24, scope: !2636, inlinedAt: !3687)
!3696 = !DILocation(line: 150, column: 6, scope: !2636, inlinedAt: !3687)
!3697 = !DILocation(line: 975, column: 10, scope: !3645, inlinedAt: !3682)
!3698 = !DILocation(line: 976, column: 1, scope: !3645, inlinedAt: !3682)
!3699 = !DILocation(line: 981, column: 3, scope: !3673)
!3700 = distinct !DISubprogram(name: "quotearg_colon", scope: !674, file: !674, line: 985, type: !1191, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !3701)
!3701 = !{!3702}
!3702 = !DILocalVariable(name: "arg", arg: 1, scope: !3700, file: !674, line: 985, type: !149)
!3703 = distinct !DIAssignID()
!3704 = !DILocation(line: 0, scope: !3700)
!3705 = !DILocation(line: 0, scope: !3673, inlinedAt: !3706)
!3706 = distinct !DILocation(line: 987, column: 10, scope: !3700)
!3707 = !DILocation(line: 0, scope: !3645, inlinedAt: !3708)
!3708 = distinct !DILocation(line: 981, column: 10, scope: !3673, inlinedAt: !3706)
!3709 = !DILocation(line: 972, column: 3, scope: !3645, inlinedAt: !3708)
!3710 = !DILocation(line: 973, column: 13, scope: !3645, inlinedAt: !3708)
!3711 = distinct !DIAssignID()
!3712 = !DILocation(line: 0, scope: !2636, inlinedAt: !3713)
!3713 = distinct !DILocation(line: 974, column: 3, scope: !3645, inlinedAt: !3708)
!3714 = !DILocation(line: 147, column: 57, scope: !2636, inlinedAt: !3713)
!3715 = !DILocation(line: 149, column: 21, scope: !2636, inlinedAt: !3713)
!3716 = !DILocation(line: 150, column: 6, scope: !2636, inlinedAt: !3713)
!3717 = !DILocation(line: 975, column: 10, scope: !3645, inlinedAt: !3708)
!3718 = !DILocation(line: 976, column: 1, scope: !3645, inlinedAt: !3708)
!3719 = !DILocation(line: 987, column: 3, scope: !3700)
!3720 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !674, file: !674, line: 991, type: !3518, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !3721)
!3721 = !{!3722, !3723}
!3722 = !DILocalVariable(name: "arg", arg: 1, scope: !3720, file: !674, line: 991, type: !149)
!3723 = !DILocalVariable(name: "argsize", arg: 2, scope: !3720, file: !674, line: 991, type: !146)
!3724 = distinct !DIAssignID()
!3725 = !DILocation(line: 0, scope: !3720)
!3726 = !DILocation(line: 0, scope: !3645, inlinedAt: !3727)
!3727 = distinct !DILocation(line: 993, column: 10, scope: !3720)
!3728 = !DILocation(line: 972, column: 3, scope: !3645, inlinedAt: !3727)
!3729 = !DILocation(line: 973, column: 13, scope: !3645, inlinedAt: !3727)
!3730 = distinct !DIAssignID()
!3731 = !DILocation(line: 0, scope: !2636, inlinedAt: !3732)
!3732 = distinct !DILocation(line: 974, column: 3, scope: !3645, inlinedAt: !3727)
!3733 = !DILocation(line: 147, column: 57, scope: !2636, inlinedAt: !3732)
!3734 = !DILocation(line: 149, column: 21, scope: !2636, inlinedAt: !3732)
!3735 = !DILocation(line: 150, column: 6, scope: !2636, inlinedAt: !3732)
!3736 = !DILocation(line: 975, column: 10, scope: !3645, inlinedAt: !3727)
!3737 = !DILocation(line: 976, column: 1, scope: !3645, inlinedAt: !3727)
!3738 = !DILocation(line: 993, column: 3, scope: !3720)
!3739 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !674, file: !674, line: 997, type: !3529, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !3740)
!3740 = !{!3741, !3742, !3743, !3744}
!3741 = !DILocalVariable(name: "n", arg: 1, scope: !3739, file: !674, line: 997, type: !86)
!3742 = !DILocalVariable(name: "s", arg: 2, scope: !3739, file: !674, line: 997, type: !700)
!3743 = !DILocalVariable(name: "arg", arg: 3, scope: !3739, file: !674, line: 997, type: !149)
!3744 = !DILocalVariable(name: "options", scope: !3739, file: !674, line: 999, type: !715)
!3745 = distinct !DIAssignID()
!3746 = !DILocation(line: 0, scope: !3739)
!3747 = !DILocation(line: 185, column: 26, scope: !3544, inlinedAt: !3748)
!3748 = distinct !DILocation(line: 1000, column: 13, scope: !3739)
!3749 = !DILocation(line: 999, column: 3, scope: !3739)
!3750 = !DILocation(line: 0, scope: !3544, inlinedAt: !3748)
!3751 = !DILocation(line: 186, column: 13, scope: !3554, inlinedAt: !3748)
!3752 = !DILocation(line: 186, column: 7, scope: !3544, inlinedAt: !3748)
!3753 = !DILocation(line: 187, column: 5, scope: !3554, inlinedAt: !3748)
!3754 = !{!3755}
!3755 = distinct !{!3755, !3756, !"quoting_options_from_style: argument 0"}
!3756 = distinct !{!3756, !"quoting_options_from_style"}
!3757 = !DILocation(line: 1000, column: 13, scope: !3739)
!3758 = distinct !DIAssignID()
!3759 = distinct !DIAssignID()
!3760 = !DILocation(line: 0, scope: !2636, inlinedAt: !3761)
!3761 = distinct !DILocation(line: 1001, column: 3, scope: !3739)
!3762 = !DILocation(line: 147, column: 57, scope: !2636, inlinedAt: !3761)
!3763 = !DILocation(line: 149, column: 21, scope: !2636, inlinedAt: !3761)
!3764 = !DILocation(line: 150, column: 6, scope: !2636, inlinedAt: !3761)
!3765 = distinct !DIAssignID()
!3766 = !DILocation(line: 1002, column: 10, scope: !3739)
!3767 = !DILocation(line: 1003, column: 1, scope: !3739)
!3768 = !DILocation(line: 1002, column: 3, scope: !3739)
!3769 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !674, file: !674, line: 1006, type: !3770, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !3772)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{!88, !86, !149, !149, !149}
!3772 = !{!3773, !3774, !3775, !3776}
!3773 = !DILocalVariable(name: "n", arg: 1, scope: !3769, file: !674, line: 1006, type: !86)
!3774 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3769, file: !674, line: 1006, type: !149)
!3775 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3769, file: !674, line: 1007, type: !149)
!3776 = !DILocalVariable(name: "arg", arg: 4, scope: !3769, file: !674, line: 1007, type: !149)
!3777 = distinct !DIAssignID()
!3778 = !DILocation(line: 0, scope: !3769)
!3779 = !DILocalVariable(name: "o", scope: !3780, file: !674, line: 1018, type: !715)
!3780 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !674, file: !674, line: 1014, type: !3781, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !3783)
!3781 = !DISubroutineType(types: !3782)
!3782 = !{!88, !86, !149, !149, !149, !146}
!3783 = !{!3784, !3785, !3786, !3787, !3788, !3779}
!3784 = !DILocalVariable(name: "n", arg: 1, scope: !3780, file: !674, line: 1014, type: !86)
!3785 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3780, file: !674, line: 1014, type: !149)
!3786 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3780, file: !674, line: 1015, type: !149)
!3787 = !DILocalVariable(name: "arg", arg: 4, scope: !3780, file: !674, line: 1016, type: !149)
!3788 = !DILocalVariable(name: "argsize", arg: 5, scope: !3780, file: !674, line: 1016, type: !146)
!3789 = !DILocation(line: 0, scope: !3780, inlinedAt: !3790)
!3790 = distinct !DILocation(line: 1009, column: 10, scope: !3769)
!3791 = !DILocation(line: 1018, column: 3, scope: !3780, inlinedAt: !3790)
!3792 = !DILocation(line: 1018, column: 30, scope: !3780, inlinedAt: !3790)
!3793 = distinct !DIAssignID()
!3794 = distinct !DIAssignID()
!3795 = !DILocation(line: 0, scope: !2676, inlinedAt: !3796)
!3796 = distinct !DILocation(line: 1019, column: 3, scope: !3780, inlinedAt: !3790)
!3797 = !DILocation(line: 174, column: 12, scope: !2676, inlinedAt: !3796)
!3798 = distinct !DIAssignID()
!3799 = !DILocation(line: 175, column: 8, scope: !2689, inlinedAt: !3796)
!3800 = !DILocation(line: 175, column: 19, scope: !2689, inlinedAt: !3796)
!3801 = !DILocation(line: 176, column: 5, scope: !2689, inlinedAt: !3796)
!3802 = !DILocation(line: 177, column: 6, scope: !2676, inlinedAt: !3796)
!3803 = !DILocation(line: 177, column: 17, scope: !2676, inlinedAt: !3796)
!3804 = distinct !DIAssignID()
!3805 = !DILocation(line: 178, column: 6, scope: !2676, inlinedAt: !3796)
!3806 = !DILocation(line: 178, column: 18, scope: !2676, inlinedAt: !3796)
!3807 = distinct !DIAssignID()
!3808 = !DILocation(line: 1020, column: 10, scope: !3780, inlinedAt: !3790)
!3809 = !DILocation(line: 1021, column: 1, scope: !3780, inlinedAt: !3790)
!3810 = !DILocation(line: 1009, column: 3, scope: !3769)
!3811 = distinct !DIAssignID()
!3812 = !DILocation(line: 0, scope: !3780)
!3813 = !DILocation(line: 1018, column: 3, scope: !3780)
!3814 = !DILocation(line: 1018, column: 30, scope: !3780)
!3815 = distinct !DIAssignID()
!3816 = distinct !DIAssignID()
!3817 = !DILocation(line: 0, scope: !2676, inlinedAt: !3818)
!3818 = distinct !DILocation(line: 1019, column: 3, scope: !3780)
!3819 = !DILocation(line: 174, column: 12, scope: !2676, inlinedAt: !3818)
!3820 = distinct !DIAssignID()
!3821 = !DILocation(line: 175, column: 8, scope: !2689, inlinedAt: !3818)
!3822 = !DILocation(line: 175, column: 19, scope: !2689, inlinedAt: !3818)
!3823 = !DILocation(line: 176, column: 5, scope: !2689, inlinedAt: !3818)
!3824 = !DILocation(line: 177, column: 6, scope: !2676, inlinedAt: !3818)
!3825 = !DILocation(line: 177, column: 17, scope: !2676, inlinedAt: !3818)
!3826 = distinct !DIAssignID()
!3827 = !DILocation(line: 178, column: 6, scope: !2676, inlinedAt: !3818)
!3828 = !DILocation(line: 178, column: 18, scope: !2676, inlinedAt: !3818)
!3829 = distinct !DIAssignID()
!3830 = !DILocation(line: 1020, column: 10, scope: !3780)
!3831 = !DILocation(line: 1021, column: 1, scope: !3780)
!3832 = !DILocation(line: 1020, column: 3, scope: !3780)
!3833 = distinct !DISubprogram(name: "quotearg_custom", scope: !674, file: !674, line: 1024, type: !3834, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !3836)
!3834 = !DISubroutineType(types: !3835)
!3835 = !{!88, !149, !149, !149}
!3836 = !{!3837, !3838, !3839}
!3837 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3833, file: !674, line: 1024, type: !149)
!3838 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3833, file: !674, line: 1024, type: !149)
!3839 = !DILocalVariable(name: "arg", arg: 3, scope: !3833, file: !674, line: 1025, type: !149)
!3840 = distinct !DIAssignID()
!3841 = !DILocation(line: 0, scope: !3833)
!3842 = !DILocation(line: 0, scope: !3769, inlinedAt: !3843)
!3843 = distinct !DILocation(line: 1027, column: 10, scope: !3833)
!3844 = !DILocation(line: 0, scope: !3780, inlinedAt: !3845)
!3845 = distinct !DILocation(line: 1009, column: 10, scope: !3769, inlinedAt: !3843)
!3846 = !DILocation(line: 1018, column: 3, scope: !3780, inlinedAt: !3845)
!3847 = !DILocation(line: 1018, column: 30, scope: !3780, inlinedAt: !3845)
!3848 = distinct !DIAssignID()
!3849 = distinct !DIAssignID()
!3850 = !DILocation(line: 0, scope: !2676, inlinedAt: !3851)
!3851 = distinct !DILocation(line: 1019, column: 3, scope: !3780, inlinedAt: !3845)
!3852 = !DILocation(line: 174, column: 12, scope: !2676, inlinedAt: !3851)
!3853 = distinct !DIAssignID()
!3854 = !DILocation(line: 175, column: 8, scope: !2689, inlinedAt: !3851)
!3855 = !DILocation(line: 175, column: 19, scope: !2689, inlinedAt: !3851)
!3856 = !DILocation(line: 176, column: 5, scope: !2689, inlinedAt: !3851)
!3857 = !DILocation(line: 177, column: 6, scope: !2676, inlinedAt: !3851)
!3858 = !DILocation(line: 177, column: 17, scope: !2676, inlinedAt: !3851)
!3859 = distinct !DIAssignID()
!3860 = !DILocation(line: 178, column: 6, scope: !2676, inlinedAt: !3851)
!3861 = !DILocation(line: 178, column: 18, scope: !2676, inlinedAt: !3851)
!3862 = distinct !DIAssignID()
!3863 = !DILocation(line: 1020, column: 10, scope: !3780, inlinedAt: !3845)
!3864 = !DILocation(line: 1021, column: 1, scope: !3780, inlinedAt: !3845)
!3865 = !DILocation(line: 1027, column: 3, scope: !3833)
!3866 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !674, file: !674, line: 1031, type: !3867, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !3869)
!3867 = !DISubroutineType(types: !3868)
!3868 = !{!88, !149, !149, !149, !146}
!3869 = !{!3870, !3871, !3872, !3873}
!3870 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3866, file: !674, line: 1031, type: !149)
!3871 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3866, file: !674, line: 1031, type: !149)
!3872 = !DILocalVariable(name: "arg", arg: 3, scope: !3866, file: !674, line: 1032, type: !149)
!3873 = !DILocalVariable(name: "argsize", arg: 4, scope: !3866, file: !674, line: 1032, type: !146)
!3874 = distinct !DIAssignID()
!3875 = !DILocation(line: 0, scope: !3866)
!3876 = !DILocation(line: 0, scope: !3780, inlinedAt: !3877)
!3877 = distinct !DILocation(line: 1034, column: 10, scope: !3866)
!3878 = !DILocation(line: 1018, column: 3, scope: !3780, inlinedAt: !3877)
!3879 = !DILocation(line: 1018, column: 30, scope: !3780, inlinedAt: !3877)
!3880 = distinct !DIAssignID()
!3881 = distinct !DIAssignID()
!3882 = !DILocation(line: 0, scope: !2676, inlinedAt: !3883)
!3883 = distinct !DILocation(line: 1019, column: 3, scope: !3780, inlinedAt: !3877)
!3884 = !DILocation(line: 174, column: 12, scope: !2676, inlinedAt: !3883)
!3885 = distinct !DIAssignID()
!3886 = !DILocation(line: 175, column: 8, scope: !2689, inlinedAt: !3883)
!3887 = !DILocation(line: 175, column: 19, scope: !2689, inlinedAt: !3883)
!3888 = !DILocation(line: 176, column: 5, scope: !2689, inlinedAt: !3883)
!3889 = !DILocation(line: 177, column: 6, scope: !2676, inlinedAt: !3883)
!3890 = !DILocation(line: 177, column: 17, scope: !2676, inlinedAt: !3883)
!3891 = distinct !DIAssignID()
!3892 = !DILocation(line: 178, column: 6, scope: !2676, inlinedAt: !3883)
!3893 = !DILocation(line: 178, column: 18, scope: !2676, inlinedAt: !3883)
!3894 = distinct !DIAssignID()
!3895 = !DILocation(line: 1020, column: 10, scope: !3780, inlinedAt: !3877)
!3896 = !DILocation(line: 1021, column: 1, scope: !3780, inlinedAt: !3877)
!3897 = !DILocation(line: 1034, column: 3, scope: !3866)
!3898 = distinct !DISubprogram(name: "quote_n_mem", scope: !674, file: !674, line: 1049, type: !3899, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !3901)
!3899 = !DISubroutineType(types: !3900)
!3900 = !{!149, !86, !149, !146}
!3901 = !{!3902, !3903, !3904}
!3902 = !DILocalVariable(name: "n", arg: 1, scope: !3898, file: !674, line: 1049, type: !86)
!3903 = !DILocalVariable(name: "arg", arg: 2, scope: !3898, file: !674, line: 1049, type: !149)
!3904 = !DILocalVariable(name: "argsize", arg: 3, scope: !3898, file: !674, line: 1049, type: !146)
!3905 = !DILocation(line: 0, scope: !3898)
!3906 = !DILocation(line: 1051, column: 10, scope: !3898)
!3907 = !DILocation(line: 1051, column: 3, scope: !3898)
!3908 = distinct !DISubprogram(name: "quote_mem", scope: !674, file: !674, line: 1055, type: !3909, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !3911)
!3909 = !DISubroutineType(types: !3910)
!3910 = !{!149, !149, !146}
!3911 = !{!3912, !3913}
!3912 = !DILocalVariable(name: "arg", arg: 1, scope: !3908, file: !674, line: 1055, type: !149)
!3913 = !DILocalVariable(name: "argsize", arg: 2, scope: !3908, file: !674, line: 1055, type: !146)
!3914 = !DILocation(line: 0, scope: !3908)
!3915 = !DILocation(line: 0, scope: !3898, inlinedAt: !3916)
!3916 = distinct !DILocation(line: 1057, column: 10, scope: !3908)
!3917 = !DILocation(line: 1051, column: 10, scope: !3898, inlinedAt: !3916)
!3918 = !DILocation(line: 1057, column: 3, scope: !3908)
!3919 = distinct !DISubprogram(name: "quote_n", scope: !674, file: !674, line: 1061, type: !3920, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !3922)
!3920 = !DISubroutineType(types: !3921)
!3921 = !{!149, !86, !149}
!3922 = !{!3923, !3924}
!3923 = !DILocalVariable(name: "n", arg: 1, scope: !3919, file: !674, line: 1061, type: !86)
!3924 = !DILocalVariable(name: "arg", arg: 2, scope: !3919, file: !674, line: 1061, type: !149)
!3925 = !DILocation(line: 0, scope: !3919)
!3926 = !DILocation(line: 0, scope: !3898, inlinedAt: !3927)
!3927 = distinct !DILocation(line: 1063, column: 10, scope: !3919)
!3928 = !DILocation(line: 1051, column: 10, scope: !3898, inlinedAt: !3927)
!3929 = !DILocation(line: 1063, column: 3, scope: !3919)
!3930 = distinct !DISubprogram(name: "quote", scope: !674, file: !674, line: 1067, type: !3931, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !3933)
!3931 = !DISubroutineType(types: !3932)
!3932 = !{!149, !149}
!3933 = !{!3934}
!3934 = !DILocalVariable(name: "arg", arg: 1, scope: !3930, file: !674, line: 1067, type: !149)
!3935 = !DILocation(line: 0, scope: !3930)
!3936 = !DILocation(line: 0, scope: !3919, inlinedAt: !3937)
!3937 = distinct !DILocation(line: 1069, column: 10, scope: !3930)
!3938 = !DILocation(line: 0, scope: !3898, inlinedAt: !3939)
!3939 = distinct !DILocation(line: 1063, column: 10, scope: !3919, inlinedAt: !3937)
!3940 = !DILocation(line: 1051, column: 10, scope: !3898, inlinedAt: !3939)
!3941 = !DILocation(line: 1069, column: 3, scope: !3930)
!3942 = distinct !DISubprogram(name: "safe_write", scope: !3943, file: !3943, line: 56, type: !3944, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !907, retainedNodes: !3947)
!3943 = !DIFile(filename: "lib/safe-read.c", directory: "/src", checksumkind: CSK_MD5, checksum: "434e548fbeff241cc07e1dbcc7b4611f")
!3944 = !DISubroutineType(types: !3945)
!3945 = !{!502, !86, !3946, !939}
!3946 = !DIDerivedType(tag: DW_TAG_typedef, name: "bufptr", file: !3943, line: 45, baseType: !1213)
!3947 = !{!3948, !3949, !3950, !3951}
!3948 = !DILocalVariable(name: "fd", arg: 1, scope: !3942, file: !3943, line: 56, type: !86)
!3949 = !DILocalVariable(name: "buf", arg: 2, scope: !3942, file: !3943, line: 56, type: !3946)
!3950 = !DILocalVariable(name: "count", arg: 3, scope: !3942, file: !3943, line: 56, type: !939)
!3951 = !DILocalVariable(name: "result", scope: !3952, file: !3943, line: 60, type: !3955)
!3952 = distinct !DILexicalBlock(scope: !3953, file: !3943, line: 59, column: 5)
!3953 = distinct !DILexicalBlock(scope: !3954, file: !3943, line: 58, column: 3)
!3954 = distinct !DILexicalBlock(scope: !3942, file: !3943, line: 58, column: 3)
!3955 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !3956, line: 108, baseType: !1404)
!3956 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!3957 = !DILocation(line: 0, scope: !3942)
!3958 = !DILocation(line: 58, column: 3, scope: !3942)
!3959 = !DILocation(line: 62, column: 11, scope: !3952)
!3960 = !DILocation(line: 60, column: 24, scope: !3952)
!3961 = !DILocation(line: 0, scope: !3952)
!3962 = !DILocation(line: 62, column: 13, scope: !3963)
!3963 = distinct !DILexicalBlock(scope: !3952, file: !3943, line: 62, column: 11)
!3964 = !DILocation(line: 64, column: 16, scope: !3965)
!3965 = distinct !DILexicalBlock(scope: !3963, file: !3943, line: 64, column: 16)
!3966 = !DILocation(line: 64, column: 16, scope: !3963)
!3967 = distinct !{!3967, !3968, !3969}
!3968 = !DILocation(line: 58, column: 3, scope: !3954)
!3969 = !DILocation(line: 70, column: 5, scope: !3954)
!3970 = !DILocation(line: 66, column: 22, scope: !3971)
!3971 = distinct !DILexicalBlock(scope: !3965, file: !3943, line: 66, column: 16)
!3972 = !DILocation(line: 0, scope: !3953)
!3973 = !DILocation(line: 71, column: 1, scope: !3942)
!3974 = !DISubprogram(name: "write", scope: !1960, file: !1960, line: 378, type: !3975, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3975 = !DISubroutineType(types: !3976)
!3976 = !{!3955, !86, !1213, !146}
!3977 = distinct !DISubprogram(name: "version_etc_arn", scope: !776, file: !776, line: 61, type: !3978, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !910, retainedNodes: !4015)
!3978 = !DISubroutineType(types: !3979)
!3979 = !{null, !3980, !149, !149, !149, !4014, !146}
!3980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3981, size: 64)
!3981 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !289, line: 7, baseType: !3982)
!3982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !291, line: 49, size: 1728, elements: !3983)
!3983 = !{!3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012, !4013}
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3982, file: !291, line: 51, baseType: !86, size: 32)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3982, file: !291, line: 54, baseType: !88, size: 64, offset: 64)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3982, file: !291, line: 55, baseType: !88, size: 64, offset: 128)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3982, file: !291, line: 56, baseType: !88, size: 64, offset: 192)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3982, file: !291, line: 57, baseType: !88, size: 64, offset: 256)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3982, file: !291, line: 58, baseType: !88, size: 64, offset: 320)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3982, file: !291, line: 59, baseType: !88, size: 64, offset: 384)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3982, file: !291, line: 60, baseType: !88, size: 64, offset: 448)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3982, file: !291, line: 61, baseType: !88, size: 64, offset: 512)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3982, file: !291, line: 64, baseType: !88, size: 64, offset: 576)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3982, file: !291, line: 65, baseType: !88, size: 64, offset: 640)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3982, file: !291, line: 66, baseType: !88, size: 64, offset: 704)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3982, file: !291, line: 68, baseType: !306, size: 64, offset: 768)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3982, file: !291, line: 70, baseType: !3998, size: 64, offset: 832)
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3982, size: 64)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3982, file: !291, line: 72, baseType: !86, size: 32, offset: 896)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3982, file: !291, line: 73, baseType: !86, size: 32, offset: 928)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3982, file: !291, line: 74, baseType: !313, size: 64, offset: 960)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3982, file: !291, line: 77, baseType: !145, size: 16, offset: 1024)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3982, file: !291, line: 78, baseType: !318, size: 8, offset: 1040)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3982, file: !291, line: 79, baseType: !197, size: 8, offset: 1048)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3982, file: !291, line: 81, baseType: !321, size: 64, offset: 1088)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3982, file: !291, line: 89, baseType: !324, size: 64, offset: 1152)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3982, file: !291, line: 91, baseType: !326, size: 64, offset: 1216)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3982, file: !291, line: 92, baseType: !329, size: 64, offset: 1280)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3982, file: !291, line: 93, baseType: !3998, size: 64, offset: 1344)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3982, file: !291, line: 94, baseType: !144, size: 64, offset: 1408)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3982, file: !291, line: 95, baseType: !146, size: 64, offset: 1472)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3982, file: !291, line: 96, baseType: !86, size: 32, offset: 1536)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3982, file: !291, line: 98, baseType: !226, size: 160, offset: 1568)
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!4015 = !{!4016, !4017, !4018, !4019, !4020, !4021}
!4016 = !DILocalVariable(name: "stream", arg: 1, scope: !3977, file: !776, line: 61, type: !3980)
!4017 = !DILocalVariable(name: "command_name", arg: 2, scope: !3977, file: !776, line: 62, type: !149)
!4018 = !DILocalVariable(name: "package", arg: 3, scope: !3977, file: !776, line: 62, type: !149)
!4019 = !DILocalVariable(name: "version", arg: 4, scope: !3977, file: !776, line: 63, type: !149)
!4020 = !DILocalVariable(name: "authors", arg: 5, scope: !3977, file: !776, line: 64, type: !4014)
!4021 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3977, file: !776, line: 64, type: !146)
!4022 = !DILocation(line: 0, scope: !3977)
!4023 = !DILocation(line: 66, column: 7, scope: !4024)
!4024 = distinct !DILexicalBlock(scope: !3977, file: !776, line: 66, column: 7)
!4025 = !DILocation(line: 66, column: 7, scope: !3977)
!4026 = !DILocation(line: 67, column: 5, scope: !4024)
!4027 = !DILocation(line: 69, column: 5, scope: !4024)
!4028 = !DILocation(line: 83, column: 3, scope: !3977)
!4029 = !DILocation(line: 85, column: 3, scope: !3977)
!4030 = !DILocation(line: 88, column: 3, scope: !3977)
!4031 = !DILocation(line: 95, column: 3, scope: !3977)
!4032 = !DILocation(line: 97, column: 3, scope: !3977)
!4033 = !DILocation(line: 105, column: 7, scope: !4034)
!4034 = distinct !DILexicalBlock(scope: !3977, file: !776, line: 98, column: 5)
!4035 = !DILocation(line: 106, column: 7, scope: !4034)
!4036 = !DILocation(line: 109, column: 7, scope: !4034)
!4037 = !DILocation(line: 110, column: 7, scope: !4034)
!4038 = !DILocation(line: 113, column: 7, scope: !4034)
!4039 = !DILocation(line: 115, column: 7, scope: !4034)
!4040 = !DILocation(line: 120, column: 7, scope: !4034)
!4041 = !DILocation(line: 122, column: 7, scope: !4034)
!4042 = !DILocation(line: 127, column: 7, scope: !4034)
!4043 = !DILocation(line: 129, column: 7, scope: !4034)
!4044 = !DILocation(line: 134, column: 7, scope: !4034)
!4045 = !DILocation(line: 137, column: 7, scope: !4034)
!4046 = !DILocation(line: 142, column: 7, scope: !4034)
!4047 = !DILocation(line: 145, column: 7, scope: !4034)
!4048 = !DILocation(line: 150, column: 7, scope: !4034)
!4049 = !DILocation(line: 154, column: 7, scope: !4034)
!4050 = !DILocation(line: 159, column: 7, scope: !4034)
!4051 = !DILocation(line: 163, column: 7, scope: !4034)
!4052 = !DILocation(line: 170, column: 7, scope: !4034)
!4053 = !DILocation(line: 174, column: 7, scope: !4034)
!4054 = !DILocation(line: 176, column: 1, scope: !3977)
!4055 = distinct !DISubprogram(name: "version_etc_ar", scope: !776, file: !776, line: 183, type: !4056, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !910, retainedNodes: !4058)
!4056 = !DISubroutineType(types: !4057)
!4057 = !{null, !3980, !149, !149, !149, !4014}
!4058 = !{!4059, !4060, !4061, !4062, !4063, !4064}
!4059 = !DILocalVariable(name: "stream", arg: 1, scope: !4055, file: !776, line: 183, type: !3980)
!4060 = !DILocalVariable(name: "command_name", arg: 2, scope: !4055, file: !776, line: 184, type: !149)
!4061 = !DILocalVariable(name: "package", arg: 3, scope: !4055, file: !776, line: 184, type: !149)
!4062 = !DILocalVariable(name: "version", arg: 4, scope: !4055, file: !776, line: 185, type: !149)
!4063 = !DILocalVariable(name: "authors", arg: 5, scope: !4055, file: !776, line: 185, type: !4014)
!4064 = !DILocalVariable(name: "n_authors", scope: !4055, file: !776, line: 187, type: !146)
!4065 = !DILocation(line: 0, scope: !4055)
!4066 = !DILocation(line: 189, column: 8, scope: !4067)
!4067 = distinct !DILexicalBlock(scope: !4055, file: !776, line: 189, column: 3)
!4068 = !DILocation(line: 189, scope: !4067)
!4069 = !DILocation(line: 189, column: 23, scope: !4070)
!4070 = distinct !DILexicalBlock(scope: !4067, file: !776, line: 189, column: 3)
!4071 = !DILocation(line: 189, column: 3, scope: !4067)
!4072 = !DILocation(line: 189, column: 52, scope: !4070)
!4073 = distinct !{!4073, !4071, !4074, !1112}
!4074 = !DILocation(line: 190, column: 5, scope: !4067)
!4075 = !DILocation(line: 191, column: 3, scope: !4055)
!4076 = !DILocation(line: 192, column: 1, scope: !4055)
!4077 = distinct !DISubprogram(name: "version_etc_va", scope: !776, file: !776, line: 199, type: !4078, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !910, retainedNodes: !4087)
!4078 = !DISubroutineType(types: !4079)
!4079 = !{null, !3980, !149, !149, !149, !4080}
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !4082)
!4082 = !{!4083, !4084, !4085, !4086}
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4081, file: !776, line: 192, baseType: !98, size: 32)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4081, file: !776, line: 192, baseType: !98, size: 32, offset: 32)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4081, file: !776, line: 192, baseType: !144, size: 64, offset: 64)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4081, file: !776, line: 192, baseType: !144, size: 64, offset: 128)
!4087 = !{!4088, !4089, !4090, !4091, !4092, !4093, !4094}
!4088 = !DILocalVariable(name: "stream", arg: 1, scope: !4077, file: !776, line: 199, type: !3980)
!4089 = !DILocalVariable(name: "command_name", arg: 2, scope: !4077, file: !776, line: 200, type: !149)
!4090 = !DILocalVariable(name: "package", arg: 3, scope: !4077, file: !776, line: 200, type: !149)
!4091 = !DILocalVariable(name: "version", arg: 4, scope: !4077, file: !776, line: 201, type: !149)
!4092 = !DILocalVariable(name: "authors", arg: 5, scope: !4077, file: !776, line: 201, type: !4080)
!4093 = !DILocalVariable(name: "n_authors", scope: !4077, file: !776, line: 203, type: !146)
!4094 = !DILocalVariable(name: "authtab", scope: !4077, file: !776, line: 204, type: !4095)
!4095 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 640, elements: !176)
!4096 = distinct !DIAssignID()
!4097 = !DILocation(line: 0, scope: !4077)
!4098 = !DILocation(line: 204, column: 3, scope: !4077)
!4099 = !DILocation(line: 208, column: 35, scope: !4100)
!4100 = distinct !DILexicalBlock(scope: !4101, file: !776, line: 206, column: 3)
!4101 = distinct !DILexicalBlock(scope: !4077, file: !776, line: 206, column: 3)
!4102 = !DILocation(line: 208, column: 33, scope: !4100)
!4103 = !DILocation(line: 208, column: 67, scope: !4100)
!4104 = !DILocation(line: 206, column: 3, scope: !4101)
!4105 = !DILocation(line: 208, column: 14, scope: !4100)
!4106 = !DILocation(line: 0, scope: !4101)
!4107 = !DILocation(line: 211, column: 3, scope: !4077)
!4108 = !DILocation(line: 213, column: 1, scope: !4077)
!4109 = distinct !DISubprogram(name: "version_etc", scope: !776, file: !776, line: 230, type: !4110, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !910, retainedNodes: !4112)
!4110 = !DISubroutineType(types: !4111)
!4111 = !{null, !3980, !149, !149, !149, null}
!4112 = !{!4113, !4114, !4115, !4116, !4117}
!4113 = !DILocalVariable(name: "stream", arg: 1, scope: !4109, file: !776, line: 230, type: !3980)
!4114 = !DILocalVariable(name: "command_name", arg: 2, scope: !4109, file: !776, line: 231, type: !149)
!4115 = !DILocalVariable(name: "package", arg: 3, scope: !4109, file: !776, line: 231, type: !149)
!4116 = !DILocalVariable(name: "version", arg: 4, scope: !4109, file: !776, line: 232, type: !149)
!4117 = !DILocalVariable(name: "authors", scope: !4109, file: !776, line: 234, type: !4118)
!4118 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !517, line: 52, baseType: !4119)
!4119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2210, line: 12, baseType: !4120)
!4120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !776, baseType: !4121)
!4121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4081, size: 192, elements: !198)
!4122 = distinct !DIAssignID()
!4123 = !DILocation(line: 0, scope: !4109)
!4124 = !DILocation(line: 234, column: 3, scope: !4109)
!4125 = !DILocation(line: 235, column: 3, scope: !4109)
!4126 = !DILocation(line: 236, column: 3, scope: !4109)
!4127 = !DILocation(line: 237, column: 3, scope: !4109)
!4128 = !DILocation(line: 238, column: 1, scope: !4109)
!4129 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !776, file: !776, line: 241, type: !611, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !910)
!4130 = !DILocation(line: 243, column: 3, scope: !4129)
!4131 = !DILocation(line: 248, column: 3, scope: !4129)
!4132 = !DILocation(line: 254, column: 3, scope: !4129)
!4133 = !DILocation(line: 259, column: 3, scope: !4129)
!4134 = !DILocation(line: 261, column: 1, scope: !4129)
!4135 = distinct !DISubprogram(name: "xalignalloc", scope: !918, file: !918, line: 27, type: !4136, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !917, retainedNodes: !4138)
!4136 = !DISubroutineType(types: !4137)
!4137 = !{!144, !939, !939}
!4138 = !{!4139, !4140, !4141}
!4139 = !DILocalVariable(name: "alignment", arg: 1, scope: !4135, file: !918, line: 27, type: !939)
!4140 = !DILocalVariable(name: "size", arg: 2, scope: !4135, file: !918, line: 27, type: !939)
!4141 = !DILocalVariable(name: "p", scope: !4135, file: !918, line: 29, type: !144)
!4142 = !DILocation(line: 0, scope: !4135)
!4143 = !DILocalVariable(name: "alignment", arg: 1, scope: !4144, file: !4145, line: 90, type: !939)
!4144 = distinct !DISubprogram(name: "alignalloc", scope: !4145, file: !4145, line: 90, type: !4136, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !917, retainedNodes: !4146)
!4145 = !DIFile(filename: "lib/alignalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0a7d01653c1483fdd96283992acf95d0")
!4146 = !{!4143, !4147}
!4147 = !DILocalVariable(name: "size", arg: 2, scope: !4144, file: !4145, line: 90, type: !939)
!4148 = !DILocation(line: 0, scope: !4144, inlinedAt: !4149)
!4149 = distinct !DILocation(line: 29, column: 13, scope: !4135)
!4150 = !DILocation(line: 98, column: 10, scope: !4144, inlinedAt: !4149)
!4151 = !DILocation(line: 30, column: 8, scope: !4152)
!4152 = distinct !DILexicalBlock(scope: !4135, file: !918, line: 30, column: 7)
!4153 = !DILocation(line: 30, column: 7, scope: !4135)
!4154 = !DILocation(line: 31, column: 5, scope: !4152)
!4155 = !DILocation(line: 32, column: 3, scope: !4135)
!4156 = !DISubprogram(name: "aligned_alloc", scope: !1189, file: !1189, line: 592, type: !4157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4157 = !DISubroutineType(types: !4158)
!4158 = !{!144, !146, !146}
!4159 = distinct !DISubprogram(name: "xnrealloc", scope: !4160, file: !4160, line: 147, type: !4161, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !919, retainedNodes: !4163)
!4160 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4161 = !DISubroutineType(types: !4162)
!4162 = !{!144, !144, !146, !146}
!4163 = !{!4164, !4165, !4166}
!4164 = !DILocalVariable(name: "p", arg: 1, scope: !4159, file: !4160, line: 147, type: !144)
!4165 = !DILocalVariable(name: "n", arg: 2, scope: !4159, file: !4160, line: 147, type: !146)
!4166 = !DILocalVariable(name: "s", arg: 3, scope: !4159, file: !4160, line: 147, type: !146)
!4167 = !DILocation(line: 0, scope: !4159)
!4168 = !DILocalVariable(name: "p", arg: 1, scope: !4169, file: !920, line: 83, type: !144)
!4169 = distinct !DISubprogram(name: "xreallocarray", scope: !920, file: !920, line: 83, type: !4161, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !919, retainedNodes: !4170)
!4170 = !{!4168, !4171, !4172}
!4171 = !DILocalVariable(name: "n", arg: 2, scope: !4169, file: !920, line: 83, type: !146)
!4172 = !DILocalVariable(name: "s", arg: 3, scope: !4169, file: !920, line: 83, type: !146)
!4173 = !DILocation(line: 0, scope: !4169, inlinedAt: !4174)
!4174 = distinct !DILocation(line: 149, column: 10, scope: !4159)
!4175 = !DILocation(line: 85, column: 25, scope: !4169, inlinedAt: !4174)
!4176 = !DILocalVariable(name: "p", arg: 1, scope: !4177, file: !920, line: 37, type: !144)
!4177 = distinct !DISubprogram(name: "check_nonnull", scope: !920, file: !920, line: 37, type: !4178, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !919, retainedNodes: !4180)
!4178 = !DISubroutineType(types: !4179)
!4179 = !{!144, !144}
!4180 = !{!4176}
!4181 = !DILocation(line: 0, scope: !4177, inlinedAt: !4182)
!4182 = distinct !DILocation(line: 85, column: 10, scope: !4169, inlinedAt: !4174)
!4183 = !DILocation(line: 39, column: 8, scope: !4184, inlinedAt: !4182)
!4184 = distinct !DILexicalBlock(scope: !4177, file: !920, line: 39, column: 7)
!4185 = !DILocation(line: 39, column: 7, scope: !4177, inlinedAt: !4182)
!4186 = !DILocation(line: 40, column: 5, scope: !4184, inlinedAt: !4182)
!4187 = !DILocation(line: 149, column: 3, scope: !4159)
!4188 = !DILocation(line: 0, scope: !4169)
!4189 = !DILocation(line: 85, column: 25, scope: !4169)
!4190 = !DILocation(line: 0, scope: !4177, inlinedAt: !4191)
!4191 = distinct !DILocation(line: 85, column: 10, scope: !4169)
!4192 = !DILocation(line: 39, column: 8, scope: !4184, inlinedAt: !4191)
!4193 = !DILocation(line: 39, column: 7, scope: !4177, inlinedAt: !4191)
!4194 = !DILocation(line: 40, column: 5, scope: !4184, inlinedAt: !4191)
!4195 = !DILocation(line: 85, column: 3, scope: !4169)
!4196 = distinct !DISubprogram(name: "xmalloc", scope: !920, file: !920, line: 47, type: !4197, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !919, retainedNodes: !4199)
!4197 = !DISubroutineType(types: !4198)
!4198 = !{!144, !146}
!4199 = !{!4200}
!4200 = !DILocalVariable(name: "s", arg: 1, scope: !4196, file: !920, line: 47, type: !146)
!4201 = !DILocation(line: 0, scope: !4196)
!4202 = !DILocation(line: 49, column: 25, scope: !4196)
!4203 = !DILocation(line: 0, scope: !4177, inlinedAt: !4204)
!4204 = distinct !DILocation(line: 49, column: 10, scope: !4196)
!4205 = !DILocation(line: 39, column: 8, scope: !4184, inlinedAt: !4204)
!4206 = !DILocation(line: 39, column: 7, scope: !4177, inlinedAt: !4204)
!4207 = !DILocation(line: 40, column: 5, scope: !4184, inlinedAt: !4204)
!4208 = !DILocation(line: 49, column: 3, scope: !4196)
!4209 = !DISubprogram(name: "malloc", scope: !1189, file: !1189, line: 540, type: !4197, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4210 = distinct !DISubprogram(name: "ximalloc", scope: !920, file: !920, line: 53, type: !4211, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !919, retainedNodes: !4213)
!4211 = !DISubroutineType(types: !4212)
!4212 = !{!144, !939}
!4213 = !{!4214}
!4214 = !DILocalVariable(name: "s", arg: 1, scope: !4210, file: !920, line: 53, type: !939)
!4215 = !DILocation(line: 0, scope: !4210)
!4216 = !DILocalVariable(name: "s", arg: 1, scope: !4217, file: !4218, line: 55, type: !939)
!4217 = distinct !DISubprogram(name: "imalloc", scope: !4218, file: !4218, line: 55, type: !4211, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !919, retainedNodes: !4219)
!4218 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4219 = !{!4216}
!4220 = !DILocation(line: 0, scope: !4217, inlinedAt: !4221)
!4221 = distinct !DILocation(line: 55, column: 25, scope: !4210)
!4222 = !DILocation(line: 57, column: 26, scope: !4217, inlinedAt: !4221)
!4223 = !DILocation(line: 0, scope: !4177, inlinedAt: !4224)
!4224 = distinct !DILocation(line: 55, column: 10, scope: !4210)
!4225 = !DILocation(line: 39, column: 8, scope: !4184, inlinedAt: !4224)
!4226 = !DILocation(line: 39, column: 7, scope: !4177, inlinedAt: !4224)
!4227 = !DILocation(line: 40, column: 5, scope: !4184, inlinedAt: !4224)
!4228 = !DILocation(line: 55, column: 3, scope: !4210)
!4229 = distinct !DISubprogram(name: "xcharalloc", scope: !920, file: !920, line: 59, type: !4230, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !919, retainedNodes: !4232)
!4230 = !DISubroutineType(types: !4231)
!4231 = !{!88, !146}
!4232 = !{!4233}
!4233 = !DILocalVariable(name: "n", arg: 1, scope: !4229, file: !920, line: 59, type: !146)
!4234 = !DILocation(line: 0, scope: !4229)
!4235 = !DILocation(line: 0, scope: !4196, inlinedAt: !4236)
!4236 = distinct !DILocation(line: 61, column: 10, scope: !4229)
!4237 = !DILocation(line: 49, column: 25, scope: !4196, inlinedAt: !4236)
!4238 = !DILocation(line: 0, scope: !4177, inlinedAt: !4239)
!4239 = distinct !DILocation(line: 49, column: 10, scope: !4196, inlinedAt: !4236)
!4240 = !DILocation(line: 39, column: 8, scope: !4184, inlinedAt: !4239)
!4241 = !DILocation(line: 39, column: 7, scope: !4177, inlinedAt: !4239)
!4242 = !DILocation(line: 40, column: 5, scope: !4184, inlinedAt: !4239)
!4243 = !DILocation(line: 61, column: 3, scope: !4229)
!4244 = distinct !DISubprogram(name: "xrealloc", scope: !920, file: !920, line: 68, type: !4245, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !919, retainedNodes: !4247)
!4245 = !DISubroutineType(types: !4246)
!4246 = !{!144, !144, !146}
!4247 = !{!4248, !4249}
!4248 = !DILocalVariable(name: "p", arg: 1, scope: !4244, file: !920, line: 68, type: !144)
!4249 = !DILocalVariable(name: "s", arg: 2, scope: !4244, file: !920, line: 68, type: !146)
!4250 = !DILocation(line: 0, scope: !4244)
!4251 = !DILocalVariable(name: "ptr", arg: 1, scope: !4252, file: !4253, line: 2057, type: !144)
!4252 = distinct !DISubprogram(name: "rpl_realloc", scope: !4253, file: !4253, line: 2057, type: !4245, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !919, retainedNodes: !4254)
!4253 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4254 = !{!4251, !4255}
!4255 = !DILocalVariable(name: "size", arg: 2, scope: !4252, file: !4253, line: 2057, type: !146)
!4256 = !DILocation(line: 0, scope: !4252, inlinedAt: !4257)
!4257 = distinct !DILocation(line: 70, column: 25, scope: !4244)
!4258 = !DILocation(line: 2059, column: 24, scope: !4252, inlinedAt: !4257)
!4259 = !DILocation(line: 2059, column: 10, scope: !4252, inlinedAt: !4257)
!4260 = !DILocation(line: 0, scope: !4177, inlinedAt: !4261)
!4261 = distinct !DILocation(line: 70, column: 10, scope: !4244)
!4262 = !DILocation(line: 39, column: 8, scope: !4184, inlinedAt: !4261)
!4263 = !DILocation(line: 39, column: 7, scope: !4177, inlinedAt: !4261)
!4264 = !DILocation(line: 40, column: 5, scope: !4184, inlinedAt: !4261)
!4265 = !DILocation(line: 70, column: 3, scope: !4244)
!4266 = !DISubprogram(name: "realloc", scope: !1189, file: !1189, line: 551, type: !4245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4267 = distinct !DISubprogram(name: "xirealloc", scope: !920, file: !920, line: 74, type: !4268, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !919, retainedNodes: !4270)
!4268 = !DISubroutineType(types: !4269)
!4269 = !{!144, !144, !939}
!4270 = !{!4271, !4272}
!4271 = !DILocalVariable(name: "p", arg: 1, scope: !4267, file: !920, line: 74, type: !144)
!4272 = !DILocalVariable(name: "s", arg: 2, scope: !4267, file: !920, line: 74, type: !939)
!4273 = !DILocation(line: 0, scope: !4267)
!4274 = !DILocalVariable(name: "p", arg: 1, scope: !4275, file: !4218, line: 66, type: !144)
!4275 = distinct !DISubprogram(name: "irealloc", scope: !4218, file: !4218, line: 66, type: !4268, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !919, retainedNodes: !4276)
!4276 = !{!4274, !4277}
!4277 = !DILocalVariable(name: "s", arg: 2, scope: !4275, file: !4218, line: 66, type: !939)
!4278 = !DILocation(line: 0, scope: !4275, inlinedAt: !4279)
!4279 = distinct !DILocation(line: 76, column: 25, scope: !4267)
!4280 = !DILocation(line: 0, scope: !4252, inlinedAt: !4281)
!4281 = distinct !DILocation(line: 68, column: 26, scope: !4275, inlinedAt: !4279)
!4282 = !DILocation(line: 2059, column: 24, scope: !4252, inlinedAt: !4281)
!4283 = !DILocation(line: 2059, column: 10, scope: !4252, inlinedAt: !4281)
!4284 = !DILocation(line: 0, scope: !4177, inlinedAt: !4285)
!4285 = distinct !DILocation(line: 76, column: 10, scope: !4267)
!4286 = !DILocation(line: 39, column: 8, scope: !4184, inlinedAt: !4285)
!4287 = !DILocation(line: 39, column: 7, scope: !4177, inlinedAt: !4285)
!4288 = !DILocation(line: 40, column: 5, scope: !4184, inlinedAt: !4285)
!4289 = !DILocation(line: 76, column: 3, scope: !4267)
!4290 = distinct !DISubprogram(name: "xireallocarray", scope: !920, file: !920, line: 89, type: !4291, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !919, retainedNodes: !4293)
!4291 = !DISubroutineType(types: !4292)
!4292 = !{!144, !144, !939, !939}
!4293 = !{!4294, !4295, !4296}
!4294 = !DILocalVariable(name: "p", arg: 1, scope: !4290, file: !920, line: 89, type: !144)
!4295 = !DILocalVariable(name: "n", arg: 2, scope: !4290, file: !920, line: 89, type: !939)
!4296 = !DILocalVariable(name: "s", arg: 3, scope: !4290, file: !920, line: 89, type: !939)
!4297 = !DILocation(line: 0, scope: !4290)
!4298 = !DILocalVariable(name: "p", arg: 1, scope: !4299, file: !4218, line: 98, type: !144)
!4299 = distinct !DISubprogram(name: "ireallocarray", scope: !4218, file: !4218, line: 98, type: !4291, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !919, retainedNodes: !4300)
!4300 = !{!4298, !4301, !4302}
!4301 = !DILocalVariable(name: "n", arg: 2, scope: !4299, file: !4218, line: 98, type: !939)
!4302 = !DILocalVariable(name: "s", arg: 3, scope: !4299, file: !4218, line: 98, type: !939)
!4303 = !DILocation(line: 0, scope: !4299, inlinedAt: !4304)
!4304 = distinct !DILocation(line: 91, column: 25, scope: !4290)
!4305 = !DILocation(line: 101, column: 13, scope: !4299, inlinedAt: !4304)
!4306 = !DILocation(line: 0, scope: !4177, inlinedAt: !4307)
!4307 = distinct !DILocation(line: 91, column: 10, scope: !4290)
!4308 = !DILocation(line: 39, column: 8, scope: !4184, inlinedAt: !4307)
!4309 = !DILocation(line: 39, column: 7, scope: !4177, inlinedAt: !4307)
!4310 = !DILocation(line: 40, column: 5, scope: !4184, inlinedAt: !4307)
!4311 = !DILocation(line: 91, column: 3, scope: !4290)
!4312 = distinct !DISubprogram(name: "xnmalloc", scope: !920, file: !920, line: 98, type: !4157, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !919, retainedNodes: !4313)
!4313 = !{!4314, !4315}
!4314 = !DILocalVariable(name: "n", arg: 1, scope: !4312, file: !920, line: 98, type: !146)
!4315 = !DILocalVariable(name: "s", arg: 2, scope: !4312, file: !920, line: 98, type: !146)
!4316 = !DILocation(line: 0, scope: !4312)
!4317 = !DILocation(line: 0, scope: !4169, inlinedAt: !4318)
!4318 = distinct !DILocation(line: 100, column: 10, scope: !4312)
!4319 = !DILocation(line: 85, column: 25, scope: !4169, inlinedAt: !4318)
!4320 = !DILocation(line: 0, scope: !4177, inlinedAt: !4321)
!4321 = distinct !DILocation(line: 85, column: 10, scope: !4169, inlinedAt: !4318)
!4322 = !DILocation(line: 39, column: 8, scope: !4184, inlinedAt: !4321)
!4323 = !DILocation(line: 39, column: 7, scope: !4177, inlinedAt: !4321)
!4324 = !DILocation(line: 40, column: 5, scope: !4184, inlinedAt: !4321)
!4325 = !DILocation(line: 100, column: 3, scope: !4312)
!4326 = distinct !DISubprogram(name: "xinmalloc", scope: !920, file: !920, line: 104, type: !4136, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !919, retainedNodes: !4327)
!4327 = !{!4328, !4329}
!4328 = !DILocalVariable(name: "n", arg: 1, scope: !4326, file: !920, line: 104, type: !939)
!4329 = !DILocalVariable(name: "s", arg: 2, scope: !4326, file: !920, line: 104, type: !939)
!4330 = !DILocation(line: 0, scope: !4326)
!4331 = !DILocation(line: 0, scope: !4290, inlinedAt: !4332)
!4332 = distinct !DILocation(line: 106, column: 10, scope: !4326)
!4333 = !DILocation(line: 0, scope: !4299, inlinedAt: !4334)
!4334 = distinct !DILocation(line: 91, column: 25, scope: !4290, inlinedAt: !4332)
!4335 = !DILocation(line: 101, column: 13, scope: !4299, inlinedAt: !4334)
!4336 = !DILocation(line: 0, scope: !4177, inlinedAt: !4337)
!4337 = distinct !DILocation(line: 91, column: 10, scope: !4290, inlinedAt: !4332)
!4338 = !DILocation(line: 39, column: 8, scope: !4184, inlinedAt: !4337)
!4339 = !DILocation(line: 39, column: 7, scope: !4177, inlinedAt: !4337)
!4340 = !DILocation(line: 40, column: 5, scope: !4184, inlinedAt: !4337)
!4341 = !DILocation(line: 106, column: 3, scope: !4326)
!4342 = distinct !DISubprogram(name: "x2realloc", scope: !920, file: !920, line: 116, type: !4343, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !919, retainedNodes: !4345)
!4343 = !DISubroutineType(types: !4344)
!4344 = !{!144, !144, !926}
!4345 = !{!4346, !4347}
!4346 = !DILocalVariable(name: "p", arg: 1, scope: !4342, file: !920, line: 116, type: !144)
!4347 = !DILocalVariable(name: "ps", arg: 2, scope: !4342, file: !920, line: 116, type: !926)
!4348 = !DILocation(line: 0, scope: !4342)
!4349 = !DILocation(line: 0, scope: !923, inlinedAt: !4350)
!4350 = distinct !DILocation(line: 118, column: 10, scope: !4342)
!4351 = !DILocation(line: 178, column: 14, scope: !923, inlinedAt: !4350)
!4352 = !DILocation(line: 180, column: 9, scope: !4353, inlinedAt: !4350)
!4353 = distinct !DILexicalBlock(scope: !923, file: !920, line: 180, column: 7)
!4354 = !DILocation(line: 180, column: 7, scope: !923, inlinedAt: !4350)
!4355 = !DILocation(line: 182, column: 13, scope: !4356, inlinedAt: !4350)
!4356 = distinct !DILexicalBlock(scope: !4357, file: !920, line: 182, column: 11)
!4357 = distinct !DILexicalBlock(scope: !4353, file: !920, line: 181, column: 5)
!4358 = !DILocation(line: 182, column: 11, scope: !4357, inlinedAt: !4350)
!4359 = !DILocation(line: 197, column: 11, scope: !4360, inlinedAt: !4350)
!4360 = distinct !DILexicalBlock(scope: !4361, file: !920, line: 197, column: 11)
!4361 = distinct !DILexicalBlock(scope: !4353, file: !920, line: 195, column: 5)
!4362 = !DILocation(line: 197, column: 11, scope: !4361, inlinedAt: !4350)
!4363 = !DILocation(line: 198, column: 9, scope: !4360, inlinedAt: !4350)
!4364 = !DILocation(line: 0, scope: !4169, inlinedAt: !4365)
!4365 = distinct !DILocation(line: 201, column: 7, scope: !923, inlinedAt: !4350)
!4366 = !DILocation(line: 85, column: 25, scope: !4169, inlinedAt: !4365)
!4367 = !DILocation(line: 0, scope: !4177, inlinedAt: !4368)
!4368 = distinct !DILocation(line: 85, column: 10, scope: !4169, inlinedAt: !4365)
!4369 = !DILocation(line: 39, column: 8, scope: !4184, inlinedAt: !4368)
!4370 = !DILocation(line: 39, column: 7, scope: !4177, inlinedAt: !4368)
!4371 = !DILocation(line: 40, column: 5, scope: !4184, inlinedAt: !4368)
!4372 = !DILocation(line: 202, column: 7, scope: !923, inlinedAt: !4350)
!4373 = !DILocation(line: 118, column: 3, scope: !4342)
!4374 = !DILocation(line: 0, scope: !923)
!4375 = !DILocation(line: 178, column: 14, scope: !923)
!4376 = !DILocation(line: 180, column: 9, scope: !4353)
!4377 = !DILocation(line: 180, column: 7, scope: !923)
!4378 = !DILocation(line: 182, column: 13, scope: !4356)
!4379 = !DILocation(line: 182, column: 11, scope: !4357)
!4380 = !DILocation(line: 190, column: 30, scope: !4381)
!4381 = distinct !DILexicalBlock(scope: !4356, file: !920, line: 183, column: 9)
!4382 = !DILocation(line: 191, column: 16, scope: !4381)
!4383 = !DILocation(line: 191, column: 13, scope: !4381)
!4384 = !DILocation(line: 192, column: 9, scope: !4381)
!4385 = !DILocation(line: 197, column: 11, scope: !4360)
!4386 = !DILocation(line: 197, column: 11, scope: !4361)
!4387 = !DILocation(line: 198, column: 9, scope: !4360)
!4388 = !DILocation(line: 0, scope: !4169, inlinedAt: !4389)
!4389 = distinct !DILocation(line: 201, column: 7, scope: !923)
!4390 = !DILocation(line: 85, column: 25, scope: !4169, inlinedAt: !4389)
!4391 = !DILocation(line: 0, scope: !4177, inlinedAt: !4392)
!4392 = distinct !DILocation(line: 85, column: 10, scope: !4169, inlinedAt: !4389)
!4393 = !DILocation(line: 39, column: 8, scope: !4184, inlinedAt: !4392)
!4394 = !DILocation(line: 39, column: 7, scope: !4177, inlinedAt: !4392)
!4395 = !DILocation(line: 40, column: 5, scope: !4184, inlinedAt: !4392)
!4396 = !DILocation(line: 202, column: 7, scope: !923)
!4397 = !DILocation(line: 203, column: 3, scope: !923)
!4398 = !DILocation(line: 0, scope: !935)
!4399 = !DILocation(line: 230, column: 14, scope: !935)
!4400 = !DILocation(line: 238, column: 7, scope: !4401)
!4401 = distinct !DILexicalBlock(scope: !935, file: !920, line: 238, column: 7)
!4402 = !DILocation(line: 238, column: 7, scope: !935)
!4403 = !DILocation(line: 240, column: 9, scope: !4404)
!4404 = distinct !DILexicalBlock(scope: !935, file: !920, line: 240, column: 7)
!4405 = !DILocation(line: 240, column: 18, scope: !4404)
!4406 = !DILocation(line: 253, column: 8, scope: !935)
!4407 = !DILocation(line: 256, column: 7, scope: !4408)
!4408 = distinct !DILexicalBlock(scope: !935, file: !920, line: 256, column: 7)
!4409 = !DILocation(line: 256, column: 7, scope: !935)
!4410 = !DILocation(line: 258, column: 27, scope: !4411)
!4411 = distinct !DILexicalBlock(scope: !4408, file: !920, line: 257, column: 5)
!4412 = !DILocation(line: 259, column: 50, scope: !4411)
!4413 = !DILocation(line: 259, column: 32, scope: !4411)
!4414 = !DILocation(line: 260, column: 5, scope: !4411)
!4415 = !DILocation(line: 262, column: 9, scope: !4416)
!4416 = distinct !DILexicalBlock(scope: !935, file: !920, line: 262, column: 7)
!4417 = !DILocation(line: 262, column: 7, scope: !935)
!4418 = !DILocation(line: 263, column: 9, scope: !4416)
!4419 = !DILocation(line: 263, column: 5, scope: !4416)
!4420 = !DILocation(line: 264, column: 9, scope: !4421)
!4421 = distinct !DILexicalBlock(scope: !935, file: !920, line: 264, column: 7)
!4422 = !DILocation(line: 264, column: 14, scope: !4421)
!4423 = !DILocation(line: 265, column: 7, scope: !4421)
!4424 = !DILocation(line: 265, column: 11, scope: !4421)
!4425 = !DILocation(line: 266, column: 11, scope: !4421)
!4426 = !DILocation(line: 267, column: 14, scope: !4421)
!4427 = !DILocation(line: 264, column: 7, scope: !935)
!4428 = !DILocation(line: 268, column: 5, scope: !4421)
!4429 = !DILocation(line: 0, scope: !4244, inlinedAt: !4430)
!4430 = distinct !DILocation(line: 269, column: 8, scope: !935)
!4431 = !DILocation(line: 0, scope: !4252, inlinedAt: !4432)
!4432 = distinct !DILocation(line: 70, column: 25, scope: !4244, inlinedAt: !4430)
!4433 = !DILocation(line: 2059, column: 24, scope: !4252, inlinedAt: !4432)
!4434 = !DILocation(line: 2059, column: 10, scope: !4252, inlinedAt: !4432)
!4435 = !DILocation(line: 0, scope: !4177, inlinedAt: !4436)
!4436 = distinct !DILocation(line: 70, column: 10, scope: !4244, inlinedAt: !4430)
!4437 = !DILocation(line: 39, column: 8, scope: !4184, inlinedAt: !4436)
!4438 = !DILocation(line: 39, column: 7, scope: !4177, inlinedAt: !4436)
!4439 = !DILocation(line: 40, column: 5, scope: !4184, inlinedAt: !4436)
!4440 = !DILocation(line: 270, column: 7, scope: !935)
!4441 = !DILocation(line: 271, column: 3, scope: !935)
!4442 = distinct !DISubprogram(name: "xzalloc", scope: !920, file: !920, line: 279, type: !4197, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !919, retainedNodes: !4443)
!4443 = !{!4444}
!4444 = !DILocalVariable(name: "s", arg: 1, scope: !4442, file: !920, line: 279, type: !146)
!4445 = !DILocation(line: 0, scope: !4442)
!4446 = !DILocalVariable(name: "n", arg: 1, scope: !4447, file: !920, line: 294, type: !146)
!4447 = distinct !DISubprogram(name: "xcalloc", scope: !920, file: !920, line: 294, type: !4157, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !919, retainedNodes: !4448)
!4448 = !{!4446, !4449}
!4449 = !DILocalVariable(name: "s", arg: 2, scope: !4447, file: !920, line: 294, type: !146)
!4450 = !DILocation(line: 0, scope: !4447, inlinedAt: !4451)
!4451 = distinct !DILocation(line: 281, column: 10, scope: !4442)
!4452 = !DILocation(line: 296, column: 25, scope: !4447, inlinedAt: !4451)
!4453 = !DILocation(line: 0, scope: !4177, inlinedAt: !4454)
!4454 = distinct !DILocation(line: 296, column: 10, scope: !4447, inlinedAt: !4451)
!4455 = !DILocation(line: 39, column: 8, scope: !4184, inlinedAt: !4454)
!4456 = !DILocation(line: 39, column: 7, scope: !4177, inlinedAt: !4454)
!4457 = !DILocation(line: 40, column: 5, scope: !4184, inlinedAt: !4454)
!4458 = !DILocation(line: 281, column: 3, scope: !4442)
!4459 = !DISubprogram(name: "calloc", scope: !1189, file: !1189, line: 543, type: !4157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4460 = !DILocation(line: 0, scope: !4447)
!4461 = !DILocation(line: 296, column: 25, scope: !4447)
!4462 = !DILocation(line: 0, scope: !4177, inlinedAt: !4463)
!4463 = distinct !DILocation(line: 296, column: 10, scope: !4447)
!4464 = !DILocation(line: 39, column: 8, scope: !4184, inlinedAt: !4463)
!4465 = !DILocation(line: 39, column: 7, scope: !4177, inlinedAt: !4463)
!4466 = !DILocation(line: 40, column: 5, scope: !4184, inlinedAt: !4463)
!4467 = !DILocation(line: 296, column: 3, scope: !4447)
!4468 = distinct !DISubprogram(name: "xizalloc", scope: !920, file: !920, line: 285, type: !4211, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !919, retainedNodes: !4469)
!4469 = !{!4470}
!4470 = !DILocalVariable(name: "s", arg: 1, scope: !4468, file: !920, line: 285, type: !939)
!4471 = !DILocation(line: 0, scope: !4468)
!4472 = !DILocalVariable(name: "n", arg: 1, scope: !4473, file: !920, line: 300, type: !939)
!4473 = distinct !DISubprogram(name: "xicalloc", scope: !920, file: !920, line: 300, type: !4136, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !919, retainedNodes: !4474)
!4474 = !{!4472, !4475}
!4475 = !DILocalVariable(name: "s", arg: 2, scope: !4473, file: !920, line: 300, type: !939)
!4476 = !DILocation(line: 0, scope: !4473, inlinedAt: !4477)
!4477 = distinct !DILocation(line: 287, column: 10, scope: !4468)
!4478 = !DILocalVariable(name: "n", arg: 1, scope: !4479, file: !4218, line: 77, type: !939)
!4479 = distinct !DISubprogram(name: "icalloc", scope: !4218, file: !4218, line: 77, type: !4136, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !919, retainedNodes: !4480)
!4480 = !{!4478, !4481}
!4481 = !DILocalVariable(name: "s", arg: 2, scope: !4479, file: !4218, line: 77, type: !939)
!4482 = !DILocation(line: 0, scope: !4479, inlinedAt: !4483)
!4483 = distinct !DILocation(line: 302, column: 25, scope: !4473, inlinedAt: !4477)
!4484 = !DILocation(line: 91, column: 10, scope: !4479, inlinedAt: !4483)
!4485 = !DILocation(line: 0, scope: !4177, inlinedAt: !4486)
!4486 = distinct !DILocation(line: 302, column: 10, scope: !4473, inlinedAt: !4477)
!4487 = !DILocation(line: 39, column: 8, scope: !4184, inlinedAt: !4486)
!4488 = !DILocation(line: 39, column: 7, scope: !4177, inlinedAt: !4486)
!4489 = !DILocation(line: 40, column: 5, scope: !4184, inlinedAt: !4486)
!4490 = !DILocation(line: 287, column: 3, scope: !4468)
!4491 = !DILocation(line: 0, scope: !4473)
!4492 = !DILocation(line: 0, scope: !4479, inlinedAt: !4493)
!4493 = distinct !DILocation(line: 302, column: 25, scope: !4473)
!4494 = !DILocation(line: 91, column: 10, scope: !4479, inlinedAt: !4493)
!4495 = !DILocation(line: 0, scope: !4177, inlinedAt: !4496)
!4496 = distinct !DILocation(line: 302, column: 10, scope: !4473)
!4497 = !DILocation(line: 39, column: 8, scope: !4184, inlinedAt: !4496)
!4498 = !DILocation(line: 39, column: 7, scope: !4177, inlinedAt: !4496)
!4499 = !DILocation(line: 40, column: 5, scope: !4184, inlinedAt: !4496)
!4500 = !DILocation(line: 302, column: 3, scope: !4473)
!4501 = distinct !DISubprogram(name: "xmemdup", scope: !920, file: !920, line: 310, type: !4502, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !919, retainedNodes: !4504)
!4502 = !DISubroutineType(types: !4503)
!4503 = !{!144, !1213, !146}
!4504 = !{!4505, !4506}
!4505 = !DILocalVariable(name: "p", arg: 1, scope: !4501, file: !920, line: 310, type: !1213)
!4506 = !DILocalVariable(name: "s", arg: 2, scope: !4501, file: !920, line: 310, type: !146)
!4507 = !DILocation(line: 0, scope: !4501)
!4508 = !DILocation(line: 0, scope: !4196, inlinedAt: !4509)
!4509 = distinct !DILocation(line: 312, column: 18, scope: !4501)
!4510 = !DILocation(line: 49, column: 25, scope: !4196, inlinedAt: !4509)
!4511 = !DILocation(line: 0, scope: !4177, inlinedAt: !4512)
!4512 = distinct !DILocation(line: 49, column: 10, scope: !4196, inlinedAt: !4509)
!4513 = !DILocation(line: 39, column: 8, scope: !4184, inlinedAt: !4512)
!4514 = !DILocation(line: 39, column: 7, scope: !4177, inlinedAt: !4512)
!4515 = !DILocation(line: 40, column: 5, scope: !4184, inlinedAt: !4512)
!4516 = !DILocalVariable(name: "__dest", arg: 1, scope: !4517, file: !1546, line: 26, type: !4520)
!4517 = distinct !DISubprogram(name: "memcpy", scope: !1546, file: !1546, line: 26, type: !4518, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !919, retainedNodes: !4521)
!4518 = !DISubroutineType(types: !4519)
!4519 = !{!144, !4520, !1212, !146}
!4520 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !144)
!4521 = !{!4516, !4522, !4523}
!4522 = !DILocalVariable(name: "__src", arg: 2, scope: !4517, file: !1546, line: 26, type: !1212)
!4523 = !DILocalVariable(name: "__len", arg: 3, scope: !4517, file: !1546, line: 26, type: !146)
!4524 = !DILocation(line: 0, scope: !4517, inlinedAt: !4525)
!4525 = distinct !DILocation(line: 312, column: 10, scope: !4501)
!4526 = !DILocation(line: 29, column: 10, scope: !4517, inlinedAt: !4525)
!4527 = !DILocation(line: 312, column: 3, scope: !4501)
!4528 = distinct !DISubprogram(name: "ximemdup", scope: !920, file: !920, line: 316, type: !4529, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !919, retainedNodes: !4531)
!4529 = !DISubroutineType(types: !4530)
!4530 = !{!144, !1213, !939}
!4531 = !{!4532, !4533}
!4532 = !DILocalVariable(name: "p", arg: 1, scope: !4528, file: !920, line: 316, type: !1213)
!4533 = !DILocalVariable(name: "s", arg: 2, scope: !4528, file: !920, line: 316, type: !939)
!4534 = !DILocation(line: 0, scope: !4528)
!4535 = !DILocation(line: 0, scope: !4210, inlinedAt: !4536)
!4536 = distinct !DILocation(line: 318, column: 18, scope: !4528)
!4537 = !DILocation(line: 0, scope: !4217, inlinedAt: !4538)
!4538 = distinct !DILocation(line: 55, column: 25, scope: !4210, inlinedAt: !4536)
!4539 = !DILocation(line: 57, column: 26, scope: !4217, inlinedAt: !4538)
!4540 = !DILocation(line: 0, scope: !4177, inlinedAt: !4541)
!4541 = distinct !DILocation(line: 55, column: 10, scope: !4210, inlinedAt: !4536)
!4542 = !DILocation(line: 39, column: 8, scope: !4184, inlinedAt: !4541)
!4543 = !DILocation(line: 39, column: 7, scope: !4177, inlinedAt: !4541)
!4544 = !DILocation(line: 40, column: 5, scope: !4184, inlinedAt: !4541)
!4545 = !DILocation(line: 0, scope: !4517, inlinedAt: !4546)
!4546 = distinct !DILocation(line: 318, column: 10, scope: !4528)
!4547 = !DILocation(line: 29, column: 10, scope: !4517, inlinedAt: !4546)
!4548 = !DILocation(line: 318, column: 3, scope: !4528)
!4549 = distinct !DISubprogram(name: "ximemdup0", scope: !920, file: !920, line: 325, type: !4550, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !919, retainedNodes: !4552)
!4550 = !DISubroutineType(types: !4551)
!4551 = !{!88, !1213, !939}
!4552 = !{!4553, !4554, !4555}
!4553 = !DILocalVariable(name: "p", arg: 1, scope: !4549, file: !920, line: 325, type: !1213)
!4554 = !DILocalVariable(name: "s", arg: 2, scope: !4549, file: !920, line: 325, type: !939)
!4555 = !DILocalVariable(name: "result", scope: !4549, file: !920, line: 327, type: !88)
!4556 = !DILocation(line: 0, scope: !4549)
!4557 = !DILocation(line: 327, column: 30, scope: !4549)
!4558 = !DILocation(line: 0, scope: !4210, inlinedAt: !4559)
!4559 = distinct !DILocation(line: 327, column: 18, scope: !4549)
!4560 = !DILocation(line: 0, scope: !4217, inlinedAt: !4561)
!4561 = distinct !DILocation(line: 55, column: 25, scope: !4210, inlinedAt: !4559)
!4562 = !DILocation(line: 57, column: 26, scope: !4217, inlinedAt: !4561)
!4563 = !DILocation(line: 0, scope: !4177, inlinedAt: !4564)
!4564 = distinct !DILocation(line: 55, column: 10, scope: !4210, inlinedAt: !4559)
!4565 = !DILocation(line: 39, column: 8, scope: !4184, inlinedAt: !4564)
!4566 = !DILocation(line: 39, column: 7, scope: !4177, inlinedAt: !4564)
!4567 = !DILocation(line: 40, column: 5, scope: !4184, inlinedAt: !4564)
!4568 = !DILocation(line: 328, column: 3, scope: !4549)
!4569 = !DILocation(line: 328, column: 13, scope: !4549)
!4570 = !DILocation(line: 0, scope: !4517, inlinedAt: !4571)
!4571 = distinct !DILocation(line: 329, column: 10, scope: !4549)
!4572 = !DILocation(line: 29, column: 10, scope: !4517, inlinedAt: !4571)
!4573 = !DILocation(line: 329, column: 3, scope: !4549)
!4574 = distinct !DISubprogram(name: "xstrdup", scope: !920, file: !920, line: 335, type: !1191, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !919, retainedNodes: !4575)
!4575 = !{!4576}
!4576 = !DILocalVariable(name: "string", arg: 1, scope: !4574, file: !920, line: 335, type: !149)
!4577 = !DILocation(line: 0, scope: !4574)
!4578 = !DILocation(line: 337, column: 27, scope: !4574)
!4579 = !DILocation(line: 337, column: 43, scope: !4574)
!4580 = !DILocation(line: 0, scope: !4501, inlinedAt: !4581)
!4581 = distinct !DILocation(line: 337, column: 10, scope: !4574)
!4582 = !DILocation(line: 0, scope: !4196, inlinedAt: !4583)
!4583 = distinct !DILocation(line: 312, column: 18, scope: !4501, inlinedAt: !4581)
!4584 = !DILocation(line: 49, column: 25, scope: !4196, inlinedAt: !4583)
!4585 = !DILocation(line: 0, scope: !4177, inlinedAt: !4586)
!4586 = distinct !DILocation(line: 49, column: 10, scope: !4196, inlinedAt: !4583)
!4587 = !DILocation(line: 39, column: 8, scope: !4184, inlinedAt: !4586)
!4588 = !DILocation(line: 39, column: 7, scope: !4177, inlinedAt: !4586)
!4589 = !DILocation(line: 40, column: 5, scope: !4184, inlinedAt: !4586)
!4590 = !DILocation(line: 0, scope: !4517, inlinedAt: !4591)
!4591 = distinct !DILocation(line: 312, column: 10, scope: !4501, inlinedAt: !4581)
!4592 = !DILocation(line: 29, column: 10, scope: !4517, inlinedAt: !4591)
!4593 = !DILocation(line: 337, column: 3, scope: !4574)
!4594 = distinct !DISubprogram(name: "xalloc_die", scope: !864, file: !864, line: 32, type: !611, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !952, retainedNodes: !4595)
!4595 = !{!4596}
!4596 = !DILocalVariable(name: "__errstatus", scope: !4597, file: !864, line: 34, type: !4598)
!4597 = distinct !DILexicalBlock(scope: !4594, file: !864, line: 34, column: 3)
!4598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!4599 = !DILocation(line: 34, column: 3, scope: !4597)
!4600 = !DILocation(line: 0, scope: !4597)
!4601 = !DILocation(line: 40, column: 3, scope: !4594)
!4602 = distinct !DISubprogram(name: "close_stream", scope: !955, file: !955, line: 55, type: !4603, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !954, retainedNodes: !4639)
!4603 = !DISubroutineType(types: !4604)
!4604 = !{!86, !4605}
!4605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4606, size: 64)
!4606 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !289, line: 7, baseType: !4607)
!4607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !291, line: 49, size: 1728, elements: !4608)
!4608 = !{!4609, !4610, !4611, !4612, !4613, !4614, !4615, !4616, !4617, !4618, !4619, !4620, !4621, !4622, !4624, !4625, !4626, !4627, !4628, !4629, !4630, !4631, !4632, !4633, !4634, !4635, !4636, !4637, !4638}
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4607, file: !291, line: 51, baseType: !86, size: 32)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4607, file: !291, line: 54, baseType: !88, size: 64, offset: 64)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4607, file: !291, line: 55, baseType: !88, size: 64, offset: 128)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4607, file: !291, line: 56, baseType: !88, size: 64, offset: 192)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4607, file: !291, line: 57, baseType: !88, size: 64, offset: 256)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4607, file: !291, line: 58, baseType: !88, size: 64, offset: 320)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4607, file: !291, line: 59, baseType: !88, size: 64, offset: 384)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4607, file: !291, line: 60, baseType: !88, size: 64, offset: 448)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4607, file: !291, line: 61, baseType: !88, size: 64, offset: 512)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4607, file: !291, line: 64, baseType: !88, size: 64, offset: 576)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4607, file: !291, line: 65, baseType: !88, size: 64, offset: 640)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4607, file: !291, line: 66, baseType: !88, size: 64, offset: 704)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4607, file: !291, line: 68, baseType: !306, size: 64, offset: 768)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4607, file: !291, line: 70, baseType: !4623, size: 64, offset: 832)
!4623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4607, size: 64)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4607, file: !291, line: 72, baseType: !86, size: 32, offset: 896)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4607, file: !291, line: 73, baseType: !86, size: 32, offset: 928)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4607, file: !291, line: 74, baseType: !313, size: 64, offset: 960)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4607, file: !291, line: 77, baseType: !145, size: 16, offset: 1024)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4607, file: !291, line: 78, baseType: !318, size: 8, offset: 1040)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4607, file: !291, line: 79, baseType: !197, size: 8, offset: 1048)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4607, file: !291, line: 81, baseType: !321, size: 64, offset: 1088)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4607, file: !291, line: 89, baseType: !324, size: 64, offset: 1152)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4607, file: !291, line: 91, baseType: !326, size: 64, offset: 1216)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4607, file: !291, line: 92, baseType: !329, size: 64, offset: 1280)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4607, file: !291, line: 93, baseType: !4623, size: 64, offset: 1344)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4607, file: !291, line: 94, baseType: !144, size: 64, offset: 1408)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4607, file: !291, line: 95, baseType: !146, size: 64, offset: 1472)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4607, file: !291, line: 96, baseType: !86, size: 32, offset: 1536)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4607, file: !291, line: 98, baseType: !226, size: 160, offset: 1568)
!4639 = !{!4640, !4641, !4643, !4644}
!4640 = !DILocalVariable(name: "stream", arg: 1, scope: !4602, file: !955, line: 55, type: !4605)
!4641 = !DILocalVariable(name: "some_pending", scope: !4602, file: !955, line: 57, type: !4642)
!4642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !274)
!4643 = !DILocalVariable(name: "prev_fail", scope: !4602, file: !955, line: 58, type: !4642)
!4644 = !DILocalVariable(name: "fclose_fail", scope: !4602, file: !955, line: 59, type: !4642)
!4645 = !DILocation(line: 0, scope: !4602)
!4646 = !DILocation(line: 57, column: 30, scope: !4602)
!4647 = !DILocalVariable(name: "__stream", arg: 1, scope: !4648, file: !2170, line: 135, type: !4605)
!4648 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2170, file: !2170, line: 135, type: !4603, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !954, retainedNodes: !4649)
!4649 = !{!4647}
!4650 = !DILocation(line: 0, scope: !4648, inlinedAt: !4651)
!4651 = distinct !DILocation(line: 58, column: 27, scope: !4602)
!4652 = !DILocation(line: 137, column: 10, scope: !4648, inlinedAt: !4651)
!4653 = !{!2179, !1066, i64 0}
!4654 = !DILocation(line: 58, column: 43, scope: !4602)
!4655 = !DILocation(line: 59, column: 29, scope: !4602)
!4656 = !DILocation(line: 59, column: 45, scope: !4602)
!4657 = !DILocation(line: 69, column: 17, scope: !4658)
!4658 = distinct !DILexicalBlock(scope: !4602, file: !955, line: 69, column: 7)
!4659 = !DILocation(line: 57, column: 50, scope: !4602)
!4660 = !DILocation(line: 69, column: 33, scope: !4658)
!4661 = !DILocation(line: 69, column: 53, scope: !4658)
!4662 = !DILocation(line: 69, column: 59, scope: !4658)
!4663 = !DILocation(line: 69, column: 7, scope: !4602)
!4664 = !DILocation(line: 71, column: 11, scope: !4665)
!4665 = distinct !DILexicalBlock(scope: !4658, file: !955, line: 70, column: 5)
!4666 = !DILocation(line: 72, column: 9, scope: !4667)
!4667 = distinct !DILexicalBlock(scope: !4665, file: !955, line: 71, column: 11)
!4668 = !DILocation(line: 72, column: 15, scope: !4667)
!4669 = !DILocation(line: 77, column: 1, scope: !4602)
!4670 = !DISubprogram(name: "__fpending", scope: !2488, file: !2488, line: 75, type: !4671, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4671 = !DISubroutineType(types: !4672)
!4672 = !{!146, !4605}
!4673 = distinct !DISubprogram(name: "rpl_fclose", scope: !957, file: !957, line: 58, type: !4674, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !956, retainedNodes: !4710)
!4674 = !DISubroutineType(types: !4675)
!4675 = !{!86, !4676}
!4676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4677, size: 64)
!4677 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !289, line: 7, baseType: !4678)
!4678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !291, line: 49, size: 1728, elements: !4679)
!4679 = !{!4680, !4681, !4682, !4683, !4684, !4685, !4686, !4687, !4688, !4689, !4690, !4691, !4692, !4693, !4695, !4696, !4697, !4698, !4699, !4700, !4701, !4702, !4703, !4704, !4705, !4706, !4707, !4708, !4709}
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4678, file: !291, line: 51, baseType: !86, size: 32)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4678, file: !291, line: 54, baseType: !88, size: 64, offset: 64)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4678, file: !291, line: 55, baseType: !88, size: 64, offset: 128)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4678, file: !291, line: 56, baseType: !88, size: 64, offset: 192)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4678, file: !291, line: 57, baseType: !88, size: 64, offset: 256)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4678, file: !291, line: 58, baseType: !88, size: 64, offset: 320)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4678, file: !291, line: 59, baseType: !88, size: 64, offset: 384)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4678, file: !291, line: 60, baseType: !88, size: 64, offset: 448)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4678, file: !291, line: 61, baseType: !88, size: 64, offset: 512)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4678, file: !291, line: 64, baseType: !88, size: 64, offset: 576)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4678, file: !291, line: 65, baseType: !88, size: 64, offset: 640)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4678, file: !291, line: 66, baseType: !88, size: 64, offset: 704)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4678, file: !291, line: 68, baseType: !306, size: 64, offset: 768)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4678, file: !291, line: 70, baseType: !4694, size: 64, offset: 832)
!4694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4678, size: 64)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4678, file: !291, line: 72, baseType: !86, size: 32, offset: 896)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4678, file: !291, line: 73, baseType: !86, size: 32, offset: 928)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4678, file: !291, line: 74, baseType: !313, size: 64, offset: 960)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4678, file: !291, line: 77, baseType: !145, size: 16, offset: 1024)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4678, file: !291, line: 78, baseType: !318, size: 8, offset: 1040)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4678, file: !291, line: 79, baseType: !197, size: 8, offset: 1048)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4678, file: !291, line: 81, baseType: !321, size: 64, offset: 1088)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4678, file: !291, line: 89, baseType: !324, size: 64, offset: 1152)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4678, file: !291, line: 91, baseType: !326, size: 64, offset: 1216)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4678, file: !291, line: 92, baseType: !329, size: 64, offset: 1280)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4678, file: !291, line: 93, baseType: !4694, size: 64, offset: 1344)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4678, file: !291, line: 94, baseType: !144, size: 64, offset: 1408)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4678, file: !291, line: 95, baseType: !146, size: 64, offset: 1472)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4678, file: !291, line: 96, baseType: !86, size: 32, offset: 1536)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4678, file: !291, line: 98, baseType: !226, size: 160, offset: 1568)
!4710 = !{!4711, !4712, !4713, !4714}
!4711 = !DILocalVariable(name: "fp", arg: 1, scope: !4673, file: !957, line: 58, type: !4676)
!4712 = !DILocalVariable(name: "saved_errno", scope: !4673, file: !957, line: 60, type: !86)
!4713 = !DILocalVariable(name: "fd", scope: !4673, file: !957, line: 63, type: !86)
!4714 = !DILocalVariable(name: "result", scope: !4673, file: !957, line: 74, type: !86)
!4715 = !DILocation(line: 0, scope: !4673)
!4716 = !DILocation(line: 63, column: 12, scope: !4673)
!4717 = !DILocation(line: 64, column: 10, scope: !4718)
!4718 = distinct !DILexicalBlock(scope: !4673, file: !957, line: 64, column: 7)
!4719 = !DILocation(line: 64, column: 7, scope: !4673)
!4720 = !DILocation(line: 65, column: 12, scope: !4718)
!4721 = !DILocation(line: 65, column: 5, scope: !4718)
!4722 = !DILocation(line: 70, column: 9, scope: !4723)
!4723 = distinct !DILexicalBlock(scope: !4673, file: !957, line: 70, column: 7)
!4724 = !DILocation(line: 70, column: 23, scope: !4723)
!4725 = !DILocation(line: 70, column: 33, scope: !4723)
!4726 = !DILocation(line: 70, column: 26, scope: !4723)
!4727 = !DILocation(line: 70, column: 59, scope: !4723)
!4728 = !DILocation(line: 71, column: 7, scope: !4723)
!4729 = !DILocation(line: 71, column: 10, scope: !4723)
!4730 = !DILocation(line: 70, column: 7, scope: !4673)
!4731 = !DILocation(line: 100, column: 12, scope: !4673)
!4732 = !DILocation(line: 105, column: 7, scope: !4673)
!4733 = !DILocation(line: 72, column: 19, scope: !4723)
!4734 = !DILocation(line: 105, column: 19, scope: !4735)
!4735 = distinct !DILexicalBlock(scope: !4673, file: !957, line: 105, column: 7)
!4736 = !DILocation(line: 107, column: 13, scope: !4737)
!4737 = distinct !DILexicalBlock(scope: !4735, file: !957, line: 106, column: 5)
!4738 = !DILocation(line: 109, column: 5, scope: !4737)
!4739 = !DILocation(line: 112, column: 1, scope: !4673)
!4740 = !DISubprogram(name: "fclose", scope: !517, file: !517, line: 178, type: !4674, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4741 = !DISubprogram(name: "__freading", scope: !2488, file: !2488, line: 51, type: !4674, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4742 = distinct !DISubprogram(name: "rpl_fflush", scope: !959, file: !959, line: 130, type: !4743, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !958, retainedNodes: !4779)
!4743 = !DISubroutineType(types: !4744)
!4744 = !{!86, !4745}
!4745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4746, size: 64)
!4746 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !289, line: 7, baseType: !4747)
!4747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !291, line: 49, size: 1728, elements: !4748)
!4748 = !{!4749, !4750, !4751, !4752, !4753, !4754, !4755, !4756, !4757, !4758, !4759, !4760, !4761, !4762, !4764, !4765, !4766, !4767, !4768, !4769, !4770, !4771, !4772, !4773, !4774, !4775, !4776, !4777, !4778}
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4747, file: !291, line: 51, baseType: !86, size: 32)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4747, file: !291, line: 54, baseType: !88, size: 64, offset: 64)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4747, file: !291, line: 55, baseType: !88, size: 64, offset: 128)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4747, file: !291, line: 56, baseType: !88, size: 64, offset: 192)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4747, file: !291, line: 57, baseType: !88, size: 64, offset: 256)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4747, file: !291, line: 58, baseType: !88, size: 64, offset: 320)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4747, file: !291, line: 59, baseType: !88, size: 64, offset: 384)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4747, file: !291, line: 60, baseType: !88, size: 64, offset: 448)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4747, file: !291, line: 61, baseType: !88, size: 64, offset: 512)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4747, file: !291, line: 64, baseType: !88, size: 64, offset: 576)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4747, file: !291, line: 65, baseType: !88, size: 64, offset: 640)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4747, file: !291, line: 66, baseType: !88, size: 64, offset: 704)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4747, file: !291, line: 68, baseType: !306, size: 64, offset: 768)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4747, file: !291, line: 70, baseType: !4763, size: 64, offset: 832)
!4763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4747, size: 64)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4747, file: !291, line: 72, baseType: !86, size: 32, offset: 896)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4747, file: !291, line: 73, baseType: !86, size: 32, offset: 928)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4747, file: !291, line: 74, baseType: !313, size: 64, offset: 960)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4747, file: !291, line: 77, baseType: !145, size: 16, offset: 1024)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4747, file: !291, line: 78, baseType: !318, size: 8, offset: 1040)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4747, file: !291, line: 79, baseType: !197, size: 8, offset: 1048)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4747, file: !291, line: 81, baseType: !321, size: 64, offset: 1088)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4747, file: !291, line: 89, baseType: !324, size: 64, offset: 1152)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4747, file: !291, line: 91, baseType: !326, size: 64, offset: 1216)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4747, file: !291, line: 92, baseType: !329, size: 64, offset: 1280)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4747, file: !291, line: 93, baseType: !4763, size: 64, offset: 1344)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4747, file: !291, line: 94, baseType: !144, size: 64, offset: 1408)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4747, file: !291, line: 95, baseType: !146, size: 64, offset: 1472)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4747, file: !291, line: 96, baseType: !86, size: 32, offset: 1536)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4747, file: !291, line: 98, baseType: !226, size: 160, offset: 1568)
!4779 = !{!4780}
!4780 = !DILocalVariable(name: "stream", arg: 1, scope: !4742, file: !959, line: 130, type: !4745)
!4781 = !DILocation(line: 0, scope: !4742)
!4782 = !DILocation(line: 151, column: 14, scope: !4783)
!4783 = distinct !DILexicalBlock(scope: !4742, file: !959, line: 151, column: 7)
!4784 = !DILocation(line: 151, column: 22, scope: !4783)
!4785 = !DILocation(line: 151, column: 27, scope: !4783)
!4786 = !DILocation(line: 151, column: 7, scope: !4742)
!4787 = !DILocation(line: 152, column: 12, scope: !4783)
!4788 = !DILocation(line: 152, column: 5, scope: !4783)
!4789 = !DILocalVariable(name: "fp", arg: 1, scope: !4790, file: !959, line: 42, type: !4745)
!4790 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !959, file: !959, line: 42, type: !4791, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !958, retainedNodes: !4793)
!4791 = !DISubroutineType(types: !4792)
!4792 = !{null, !4745}
!4793 = !{!4789}
!4794 = !DILocation(line: 0, scope: !4790, inlinedAt: !4795)
!4795 = distinct !DILocation(line: 157, column: 3, scope: !4742)
!4796 = !DILocation(line: 44, column: 12, scope: !4797, inlinedAt: !4795)
!4797 = distinct !DILexicalBlock(scope: !4790, file: !959, line: 44, column: 7)
!4798 = !DILocation(line: 44, column: 19, scope: !4797, inlinedAt: !4795)
!4799 = !DILocation(line: 44, column: 7, scope: !4790, inlinedAt: !4795)
!4800 = !DILocation(line: 46, column: 5, scope: !4797, inlinedAt: !4795)
!4801 = !DILocation(line: 159, column: 10, scope: !4742)
!4802 = !DILocation(line: 159, column: 3, scope: !4742)
!4803 = !DILocation(line: 236, column: 1, scope: !4742)
!4804 = !DISubprogram(name: "fflush", scope: !517, file: !517, line: 230, type: !4743, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4805 = distinct !DISubprogram(name: "rpl_fseeko", scope: !961, file: !961, line: 28, type: !4806, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !960, retainedNodes: !4842)
!4806 = !DISubroutineType(types: !4807)
!4807 = !{!86, !4808, !516, !86}
!4808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4809, size: 64)
!4809 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !289, line: 7, baseType: !4810)
!4810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !291, line: 49, size: 1728, elements: !4811)
!4811 = !{!4812, !4813, !4814, !4815, !4816, !4817, !4818, !4819, !4820, !4821, !4822, !4823, !4824, !4825, !4827, !4828, !4829, !4830, !4831, !4832, !4833, !4834, !4835, !4836, !4837, !4838, !4839, !4840, !4841}
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4810, file: !291, line: 51, baseType: !86, size: 32)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4810, file: !291, line: 54, baseType: !88, size: 64, offset: 64)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4810, file: !291, line: 55, baseType: !88, size: 64, offset: 128)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4810, file: !291, line: 56, baseType: !88, size: 64, offset: 192)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4810, file: !291, line: 57, baseType: !88, size: 64, offset: 256)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4810, file: !291, line: 58, baseType: !88, size: 64, offset: 320)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4810, file: !291, line: 59, baseType: !88, size: 64, offset: 384)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4810, file: !291, line: 60, baseType: !88, size: 64, offset: 448)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4810, file: !291, line: 61, baseType: !88, size: 64, offset: 512)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4810, file: !291, line: 64, baseType: !88, size: 64, offset: 576)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4810, file: !291, line: 65, baseType: !88, size: 64, offset: 640)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4810, file: !291, line: 66, baseType: !88, size: 64, offset: 704)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4810, file: !291, line: 68, baseType: !306, size: 64, offset: 768)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4810, file: !291, line: 70, baseType: !4826, size: 64, offset: 832)
!4826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4810, size: 64)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4810, file: !291, line: 72, baseType: !86, size: 32, offset: 896)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4810, file: !291, line: 73, baseType: !86, size: 32, offset: 928)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4810, file: !291, line: 74, baseType: !313, size: 64, offset: 960)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4810, file: !291, line: 77, baseType: !145, size: 16, offset: 1024)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4810, file: !291, line: 78, baseType: !318, size: 8, offset: 1040)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4810, file: !291, line: 79, baseType: !197, size: 8, offset: 1048)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4810, file: !291, line: 81, baseType: !321, size: 64, offset: 1088)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4810, file: !291, line: 89, baseType: !324, size: 64, offset: 1152)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4810, file: !291, line: 91, baseType: !326, size: 64, offset: 1216)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4810, file: !291, line: 92, baseType: !329, size: 64, offset: 1280)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4810, file: !291, line: 93, baseType: !4826, size: 64, offset: 1344)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4810, file: !291, line: 94, baseType: !144, size: 64, offset: 1408)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4810, file: !291, line: 95, baseType: !146, size: 64, offset: 1472)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4810, file: !291, line: 96, baseType: !86, size: 32, offset: 1536)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4810, file: !291, line: 98, baseType: !226, size: 160, offset: 1568)
!4842 = !{!4843, !4844, !4845, !4846}
!4843 = !DILocalVariable(name: "fp", arg: 1, scope: !4805, file: !961, line: 28, type: !4808)
!4844 = !DILocalVariable(name: "offset", arg: 2, scope: !4805, file: !961, line: 28, type: !516)
!4845 = !DILocalVariable(name: "whence", arg: 3, scope: !4805, file: !961, line: 28, type: !86)
!4846 = !DILocalVariable(name: "pos", scope: !4847, file: !961, line: 123, type: !516)
!4847 = distinct !DILexicalBlock(scope: !4848, file: !961, line: 119, column: 5)
!4848 = distinct !DILexicalBlock(scope: !4805, file: !961, line: 55, column: 7)
!4849 = !DILocation(line: 0, scope: !4805)
!4850 = !DILocation(line: 55, column: 12, scope: !4848)
!4851 = !{!2179, !992, i64 16}
!4852 = !DILocation(line: 55, column: 33, scope: !4848)
!4853 = !{!2179, !992, i64 8}
!4854 = !DILocation(line: 55, column: 25, scope: !4848)
!4855 = !DILocation(line: 56, column: 7, scope: !4848)
!4856 = !DILocation(line: 56, column: 15, scope: !4848)
!4857 = !DILocation(line: 56, column: 37, scope: !4848)
!4858 = !{!2179, !992, i64 32}
!4859 = !DILocation(line: 56, column: 29, scope: !4848)
!4860 = !DILocation(line: 57, column: 7, scope: !4848)
!4861 = !DILocation(line: 57, column: 15, scope: !4848)
!4862 = !{!2179, !992, i64 72}
!4863 = !DILocation(line: 57, column: 29, scope: !4848)
!4864 = !DILocation(line: 55, column: 7, scope: !4805)
!4865 = !DILocation(line: 123, column: 26, scope: !4847)
!4866 = !DILocation(line: 123, column: 19, scope: !4847)
!4867 = !DILocation(line: 0, scope: !4847)
!4868 = !DILocation(line: 124, column: 15, scope: !4869)
!4869 = distinct !DILexicalBlock(scope: !4847, file: !961, line: 124, column: 11)
!4870 = !DILocation(line: 124, column: 11, scope: !4847)
!4871 = !DILocation(line: 135, column: 19, scope: !4847)
!4872 = !DILocation(line: 136, column: 12, scope: !4847)
!4873 = !DILocation(line: 136, column: 20, scope: !4847)
!4874 = !{!2179, !1275, i64 144}
!4875 = !DILocation(line: 167, column: 7, scope: !4847)
!4876 = !DILocation(line: 169, column: 10, scope: !4805)
!4877 = !DILocation(line: 169, column: 3, scope: !4805)
!4878 = !DILocation(line: 170, column: 1, scope: !4805)
!4879 = !DISubprogram(name: "fseeko", scope: !517, file: !517, line: 736, type: !4880, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4880 = !DISubroutineType(types: !4881)
!4881 = !{!86, !4808, !313, !86}
!4882 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !871, file: !871, line: 100, type: !4883, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !874, retainedNodes: !4886)
!4883 = !DISubroutineType(types: !4884)
!4884 = !{!146, !2597, !149, !146, !4885}
!4885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!4886 = !{!4887, !4888, !4889, !4890, !4891}
!4887 = !DILocalVariable(name: "pwc", arg: 1, scope: !4882, file: !871, line: 100, type: !2597)
!4888 = !DILocalVariable(name: "s", arg: 2, scope: !4882, file: !871, line: 100, type: !149)
!4889 = !DILocalVariable(name: "n", arg: 3, scope: !4882, file: !871, line: 100, type: !146)
!4890 = !DILocalVariable(name: "ps", arg: 4, scope: !4882, file: !871, line: 100, type: !4885)
!4891 = !DILocalVariable(name: "ret", scope: !4882, file: !871, line: 130, type: !146)
!4892 = !DILocation(line: 0, scope: !4882)
!4893 = !DILocation(line: 105, column: 9, scope: !4894)
!4894 = distinct !DILexicalBlock(scope: !4882, file: !871, line: 105, column: 7)
!4895 = !DILocation(line: 105, column: 7, scope: !4882)
!4896 = !DILocation(line: 117, column: 10, scope: !4897)
!4897 = distinct !DILexicalBlock(scope: !4882, file: !871, line: 117, column: 7)
!4898 = !DILocation(line: 117, column: 7, scope: !4882)
!4899 = !DILocation(line: 130, column: 16, scope: !4882)
!4900 = !DILocation(line: 135, column: 11, scope: !4901)
!4901 = distinct !DILexicalBlock(scope: !4882, file: !871, line: 135, column: 7)
!4902 = !DILocation(line: 135, column: 25, scope: !4901)
!4903 = !DILocation(line: 135, column: 30, scope: !4901)
!4904 = !DILocation(line: 135, column: 7, scope: !4882)
!4905 = !DILocalVariable(name: "ps", arg: 1, scope: !4906, file: !2571, line: 1135, type: !4885)
!4906 = distinct !DISubprogram(name: "mbszero", scope: !2571, file: !2571, line: 1135, type: !4907, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !874, retainedNodes: !4909)
!4907 = !DISubroutineType(types: !4908)
!4908 = !{null, !4885}
!4909 = !{!4905}
!4910 = !DILocation(line: 0, scope: !4906, inlinedAt: !4911)
!4911 = distinct !DILocation(line: 137, column: 5, scope: !4901)
!4912 = !DILocalVariable(name: "__dest", arg: 1, scope: !4913, file: !1546, line: 57, type: !144)
!4913 = distinct !DISubprogram(name: "memset", scope: !1546, file: !1546, line: 57, type: !2580, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !874, retainedNodes: !4914)
!4914 = !{!4912, !4915, !4916}
!4915 = !DILocalVariable(name: "__ch", arg: 2, scope: !4913, file: !1546, line: 57, type: !86)
!4916 = !DILocalVariable(name: "__len", arg: 3, scope: !4913, file: !1546, line: 57, type: !146)
!4917 = !DILocation(line: 0, scope: !4913, inlinedAt: !4918)
!4918 = distinct !DILocation(line: 1137, column: 3, scope: !4906, inlinedAt: !4911)
!4919 = !DILocation(line: 59, column: 10, scope: !4913, inlinedAt: !4918)
!4920 = !DILocation(line: 137, column: 5, scope: !4901)
!4921 = !DILocation(line: 138, column: 11, scope: !4922)
!4922 = distinct !DILexicalBlock(scope: !4882, file: !871, line: 138, column: 7)
!4923 = !DILocation(line: 138, column: 7, scope: !4882)
!4924 = !DILocation(line: 139, column: 5, scope: !4922)
!4925 = !DILocation(line: 143, column: 26, scope: !4926)
!4926 = distinct !DILexicalBlock(scope: !4882, file: !871, line: 143, column: 7)
!4927 = !DILocation(line: 143, column: 41, scope: !4926)
!4928 = !DILocation(line: 143, column: 7, scope: !4882)
!4929 = !DILocation(line: 145, column: 15, scope: !4930)
!4930 = distinct !DILexicalBlock(scope: !4931, file: !871, line: 145, column: 11)
!4931 = distinct !DILexicalBlock(scope: !4926, file: !871, line: 144, column: 5)
!4932 = !DILocation(line: 145, column: 11, scope: !4931)
!4933 = !DILocation(line: 146, column: 32, scope: !4930)
!4934 = !DILocation(line: 146, column: 16, scope: !4930)
!4935 = !DILocation(line: 146, column: 14, scope: !4930)
!4936 = !DILocation(line: 146, column: 9, scope: !4930)
!4937 = !DILocation(line: 286, column: 1, scope: !4882)
!4938 = !DISubprogram(name: "mbsinit", scope: !4939, file: !4939, line: 293, type: !4940, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4939 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4940 = !DISubroutineType(types: !4941)
!4941 = !{!86, !4942}
!4942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4943, size: 64)
!4943 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !877)
!4944 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !963, file: !963, line: 27, type: !4161, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !962, retainedNodes: !4945)
!4945 = !{!4946, !4947, !4948, !4949}
!4946 = !DILocalVariable(name: "ptr", arg: 1, scope: !4944, file: !963, line: 27, type: !144)
!4947 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4944, file: !963, line: 27, type: !146)
!4948 = !DILocalVariable(name: "size", arg: 3, scope: !4944, file: !963, line: 27, type: !146)
!4949 = !DILocalVariable(name: "nbytes", scope: !4944, file: !963, line: 29, type: !146)
!4950 = !DILocation(line: 0, scope: !4944)
!4951 = !DILocation(line: 30, column: 7, scope: !4952)
!4952 = distinct !DILexicalBlock(scope: !4944, file: !963, line: 30, column: 7)
!4953 = !DILocation(line: 30, column: 7, scope: !4944)
!4954 = !DILocation(line: 32, column: 7, scope: !4955)
!4955 = distinct !DILexicalBlock(scope: !4952, file: !963, line: 31, column: 5)
!4956 = !DILocation(line: 32, column: 13, scope: !4955)
!4957 = !DILocation(line: 33, column: 7, scope: !4955)
!4958 = !DILocalVariable(name: "ptr", arg: 1, scope: !4959, file: !4253, line: 2057, type: !144)
!4959 = distinct !DISubprogram(name: "rpl_realloc", scope: !4253, file: !4253, line: 2057, type: !4245, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !962, retainedNodes: !4960)
!4960 = !{!4958, !4961}
!4961 = !DILocalVariable(name: "size", arg: 2, scope: !4959, file: !4253, line: 2057, type: !146)
!4962 = !DILocation(line: 0, scope: !4959, inlinedAt: !4963)
!4963 = distinct !DILocation(line: 37, column: 10, scope: !4944)
!4964 = !DILocation(line: 2059, column: 24, scope: !4959, inlinedAt: !4963)
!4965 = !DILocation(line: 2059, column: 10, scope: !4959, inlinedAt: !4963)
!4966 = !DILocation(line: 37, column: 3, scope: !4944)
!4967 = !DILocation(line: 38, column: 1, scope: !4944)
!4968 = distinct !DISubprogram(name: "hard_locale", scope: !889, file: !889, line: 28, type: !4969, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !964, retainedNodes: !4971)
!4969 = !DISubroutineType(types: !4970)
!4970 = !{!274, !86}
!4971 = !{!4972, !4973}
!4972 = !DILocalVariable(name: "category", arg: 1, scope: !4968, file: !889, line: 28, type: !86)
!4973 = !DILocalVariable(name: "locale", scope: !4968, file: !889, line: 30, type: !4974)
!4974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4975)
!4975 = !{!4976}
!4976 = !DISubrange(count: 257)
!4977 = distinct !DIAssignID()
!4978 = !DILocation(line: 0, scope: !4968)
!4979 = !DILocation(line: 30, column: 3, scope: !4968)
!4980 = !DILocation(line: 32, column: 7, scope: !4981)
!4981 = distinct !DILexicalBlock(scope: !4968, file: !889, line: 32, column: 7)
!4982 = !DILocation(line: 32, column: 7, scope: !4968)
!4983 = !DILocalVariable(name: "__s1", arg: 1, scope: !4984, file: !1078, line: 1359, type: !149)
!4984 = distinct !DISubprogram(name: "streq", scope: !1078, file: !1078, line: 1359, type: !1079, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !964, retainedNodes: !4985)
!4985 = !{!4983, !4986}
!4986 = !DILocalVariable(name: "__s2", arg: 2, scope: !4984, file: !1078, line: 1359, type: !149)
!4987 = !DILocation(line: 0, scope: !4984, inlinedAt: !4988)
!4988 = distinct !DILocation(line: 35, column: 9, scope: !4989)
!4989 = distinct !DILexicalBlock(scope: !4968, file: !889, line: 35, column: 7)
!4990 = !DILocation(line: 1361, column: 11, scope: !4984, inlinedAt: !4988)
!4991 = !DILocation(line: 35, column: 29, scope: !4989)
!4992 = !DILocation(line: 0, scope: !4984, inlinedAt: !4993)
!4993 = distinct !DILocation(line: 35, column: 32, scope: !4989)
!4994 = !DILocation(line: 1361, column: 11, scope: !4984, inlinedAt: !4993)
!4995 = !DILocation(line: 1361, column: 10, scope: !4984, inlinedAt: !4993)
!4996 = !DILocation(line: 35, column: 7, scope: !4968)
!4997 = !DILocation(line: 46, column: 3, scope: !4968)
!4998 = !DILocation(line: 47, column: 1, scope: !4968)
!4999 = distinct !DISubprogram(name: "setlocale_null_r", scope: !969, file: !969, line: 154, type: !5000, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !968, retainedNodes: !5002)
!5000 = !DISubroutineType(types: !5001)
!5001 = !{!86, !86, !88, !146}
!5002 = !{!5003, !5004, !5005}
!5003 = !DILocalVariable(name: "category", arg: 1, scope: !4999, file: !969, line: 154, type: !86)
!5004 = !DILocalVariable(name: "buf", arg: 2, scope: !4999, file: !969, line: 154, type: !88)
!5005 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4999, file: !969, line: 154, type: !146)
!5006 = !DILocation(line: 0, scope: !4999)
!5007 = !DILocation(line: 159, column: 10, scope: !4999)
!5008 = !DILocation(line: 159, column: 3, scope: !4999)
!5009 = distinct !DISubprogram(name: "setlocale_null", scope: !969, file: !969, line: 186, type: !5010, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !968, retainedNodes: !5012)
!5010 = !DISubroutineType(types: !5011)
!5011 = !{!149, !86}
!5012 = !{!5013}
!5013 = !DILocalVariable(name: "category", arg: 1, scope: !5009, file: !969, line: 186, type: !86)
!5014 = !DILocation(line: 0, scope: !5009)
!5015 = !DILocation(line: 189, column: 10, scope: !5009)
!5016 = !DILocation(line: 189, column: 3, scope: !5009)
!5017 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !971, file: !971, line: 35, type: !5010, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !970, retainedNodes: !5018)
!5018 = !{!5019, !5020}
!5019 = !DILocalVariable(name: "category", arg: 1, scope: !5017, file: !971, line: 35, type: !86)
!5020 = !DILocalVariable(name: "result", scope: !5017, file: !971, line: 37, type: !149)
!5021 = !DILocation(line: 0, scope: !5017)
!5022 = !DILocation(line: 37, column: 24, scope: !5017)
!5023 = !DILocation(line: 62, column: 3, scope: !5017)
!5024 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !971, file: !971, line: 66, type: !5000, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !970, retainedNodes: !5025)
!5025 = !{!5026, !5027, !5028, !5029, !5030}
!5026 = !DILocalVariable(name: "category", arg: 1, scope: !5024, file: !971, line: 66, type: !86)
!5027 = !DILocalVariable(name: "buf", arg: 2, scope: !5024, file: !971, line: 66, type: !88)
!5028 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5024, file: !971, line: 66, type: !146)
!5029 = !DILocalVariable(name: "result", scope: !5024, file: !971, line: 111, type: !149)
!5030 = !DILocalVariable(name: "length", scope: !5031, file: !971, line: 125, type: !146)
!5031 = distinct !DILexicalBlock(scope: !5032, file: !971, line: 124, column: 5)
!5032 = distinct !DILexicalBlock(scope: !5024, file: !971, line: 113, column: 7)
!5033 = !DILocation(line: 0, scope: !5024)
!5034 = !DILocation(line: 0, scope: !5017, inlinedAt: !5035)
!5035 = distinct !DILocation(line: 111, column: 24, scope: !5024)
!5036 = !DILocation(line: 37, column: 24, scope: !5017, inlinedAt: !5035)
!5037 = !DILocation(line: 113, column: 14, scope: !5032)
!5038 = !DILocation(line: 113, column: 7, scope: !5024)
!5039 = !DILocation(line: 116, column: 19, scope: !5040)
!5040 = distinct !DILexicalBlock(scope: !5041, file: !971, line: 116, column: 11)
!5041 = distinct !DILexicalBlock(scope: !5032, file: !971, line: 114, column: 5)
!5042 = !DILocation(line: 116, column: 11, scope: !5041)
!5043 = !DILocation(line: 120, column: 16, scope: !5040)
!5044 = !DILocation(line: 120, column: 9, scope: !5040)
!5045 = !DILocation(line: 125, column: 23, scope: !5031)
!5046 = !DILocation(line: 0, scope: !5031)
!5047 = !DILocation(line: 126, column: 18, scope: !5048)
!5048 = distinct !DILexicalBlock(scope: !5031, file: !971, line: 126, column: 11)
!5049 = !DILocation(line: 126, column: 11, scope: !5031)
!5050 = !DILocation(line: 128, column: 39, scope: !5051)
!5051 = distinct !DILexicalBlock(scope: !5048, file: !971, line: 127, column: 9)
!5052 = !DILocalVariable(name: "__dest", arg: 1, scope: !5053, file: !1546, line: 26, type: !4520)
!5053 = distinct !DISubprogram(name: "memcpy", scope: !1546, file: !1546, line: 26, type: !4518, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !970, retainedNodes: !5054)
!5054 = !{!5052, !5055, !5056}
!5055 = !DILocalVariable(name: "__src", arg: 2, scope: !5053, file: !1546, line: 26, type: !1212)
!5056 = !DILocalVariable(name: "__len", arg: 3, scope: !5053, file: !1546, line: 26, type: !146)
!5057 = !DILocation(line: 0, scope: !5053, inlinedAt: !5058)
!5058 = distinct !DILocation(line: 128, column: 11, scope: !5051)
!5059 = !DILocation(line: 29, column: 10, scope: !5053, inlinedAt: !5058)
!5060 = !DILocation(line: 129, column: 11, scope: !5051)
!5061 = !DILocation(line: 133, column: 23, scope: !5062)
!5062 = distinct !DILexicalBlock(scope: !5063, file: !971, line: 133, column: 15)
!5063 = distinct !DILexicalBlock(scope: !5048, file: !971, line: 132, column: 9)
!5064 = !DILocation(line: 133, column: 15, scope: !5063)
!5065 = !DILocation(line: 138, column: 44, scope: !5066)
!5066 = distinct !DILexicalBlock(scope: !5062, file: !971, line: 134, column: 13)
!5067 = !DILocation(line: 0, scope: !5053, inlinedAt: !5068)
!5068 = distinct !DILocation(line: 138, column: 15, scope: !5066)
!5069 = !DILocation(line: 29, column: 10, scope: !5053, inlinedAt: !5068)
!5070 = !DILocation(line: 139, column: 15, scope: !5066)
!5071 = !DILocation(line: 139, column: 32, scope: !5066)
!5072 = !DILocation(line: 140, column: 13, scope: !5066)
!5073 = !DILocation(line: 0, scope: !5032)
!5074 = !DILocation(line: 145, column: 1, scope: !5024)
