; ModuleID = 'src/uname.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.infomap = type { ptr, ptr }
%struct.option = type { ptr, i32, ptr, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], ptr, ptr }
%struct.slotvec = type { i64, ptr }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.__va_list = type { ptr, ptr, ptr, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [23 x i8] c"Usage: %s [OPTION]...\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [65 x i8] c"Print certain system information.  With no OPTION, same as -s.\0A\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [6 x i8] c"uname\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [5 x i8] c"arch\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [137 x i8] c"  -a, --all                print all information, in the following order,\0A                             except omit -p and -i if unknown\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [50 x i8] c"  -s, --kernel-name        print the kernel name\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [60 x i8] c"  -n, --nodename           print the network node hostname\0A\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [53 x i8] c"  -r, --kernel-release     print the kernel release\0A\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [53 x i8] c"  -v, --kernel-version     print the kernel version\0A\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [60 x i8] c"  -m, --machine            print the machine hardware name\0A\00", align 1, !dbg !49
@.str.11 = private unnamed_addr constant [68 x i8] c"  -p, --processor          print the processor type (non-portable)\0A\00", align 1, !dbg !51
@.str.12 = private unnamed_addr constant [71 x i8] c"  -i, --hardware-platform  print the hardware platform (non-portable)\0A\00", align 1, !dbg !56
@.str.13 = private unnamed_addr constant [55 x i8] c"  -o, --operating-system   print the operating system\0A\00", align 1, !dbg !61
@.str.14 = private unnamed_addr constant [30 x i8] c"Print machine architecture.\0A\0A\00", align 1, !dbg !66
@.str.15 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !71
@.str.16 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !73
@main.unknown = internal constant [8 x i8] c"unknown\00", align 1, !dbg !78
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !124
@.str.18 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !129
@.str.19 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !134
@.str.20 = private unnamed_addr constant [23 x i8] c"cannot get system name\00", align 1, !dbg !139
@.str.26 = private unnamed_addr constant [10 x i8] c"GNU/Linux\00", align 1, !dbg !157
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !159
@.str.27 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !242
@.str.28 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !244
@.str.29 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !246
@.str.30 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !251
@.str.31 = private unnamed_addr constant [2 x i8] c"[\00", align 1, !dbg !253
@.str.32 = private unnamed_addr constant [5 x i8] c"test\00", align 1, !dbg !258
@.str.33 = private unnamed_addr constant [4 x i8] c"dir\00", align 1, !dbg !260
@.str.34 = private unnamed_addr constant [3 x i8] c"ls\00", align 1, !dbg !262
@.str.35 = private unnamed_addr constant [5 x i8] c"vdir\00", align 1, !dbg !267
@.str.36 = private unnamed_addr constant [6 x i8] c"b2sum\00", align 1, !dbg !269
@.str.37 = private unnamed_addr constant [6 x i8] c"cksum\00", align 1, !dbg !271
@.str.38 = private unnamed_addr constant [7 x i8] c"md5sum\00", align 1, !dbg !273
@.str.39 = private unnamed_addr constant [8 x i8] c"sha1sum\00", align 1, !dbg !278
@.str.40 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1, !dbg !283
@.str.41 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1, !dbg !285
@.str.42 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1, !dbg !287
@.str.43 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1, !dbg !289
@.str.44 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !291
@.str.45 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !293
@.str.46 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !295
@.str.47 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !300
@.str.48 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !305
@.str.49 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !307
@.str.50 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !312
@.str.51 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !314
@.str.52 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !316
@.str.53 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !318
@.str.54 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1, !dbg !320
@.str.55 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1, !dbg !325
@.str.56 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1, !dbg !330
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { ptr @.str.31, ptr @.str.54 }, %struct.infomap { ptr @.str.18, ptr @.str.55 }, %struct.infomap { ptr @.str.40, ptr @.str.56 }, %struct.infomap { ptr @.str.41, ptr @.str.56 }, %struct.infomap { ptr @.str.42, ptr @.str.56 }, %struct.infomap { ptr @.str.43, ptr @.str.56 }, %struct.infomap zeroinitializer], align 8
@.str.57 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !332
@.str.58 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !334
@.str.59 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !336
@.str.60 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !341
@.str.61 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !346
@arch_long_options = internal constant [3 x %struct.option] [%struct.option { ptr @.str.67, i32 0, ptr null, i32 -2 }, %struct.option { ptr @.str.68, i32 0, ptr null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !365
@.str.62 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !351
@.str.63 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !353
@.str.64 = private unnamed_addr constant [10 x i8] c"Karel Zak\00", align 1, !dbg !355
@.str.65 = private unnamed_addr constant [10 x i8] c"asnrvmpio\00", align 1, !dbg !357
@uname_long_options = internal constant [14 x %struct.option] [%struct.option { ptr @.str.69, i32 0, ptr null, i32 97 }, %struct.option { ptr @.str.70, i32 0, ptr null, i32 115 }, %struct.option { ptr @.str.71, i32 0, ptr null, i32 115 }, %struct.option { ptr @.str.72, i32 0, ptr null, i32 110 }, %struct.option { ptr @.str.73, i32 0, ptr null, i32 114 }, %struct.option { ptr @.str.74, i32 0, ptr null, i32 114 }, %struct.option { ptr @.str.75, i32 0, ptr null, i32 118 }, %struct.option { ptr @.str.76, i32 0, ptr null, i32 109 }, %struct.option { ptr @.str.77, i32 0, ptr null, i32 112 }, %struct.option { ptr @.str.78, i32 0, ptr null, i32 105 }, %struct.option { ptr @.str.79, i32 0, ptr null, i32 111 }, %struct.option { ptr @.str.67, i32 0, ptr null, i32 -2 }, %struct.option { ptr @.str.68, i32 0, ptr null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !405
@optind = external local_unnamed_addr global i32, align 4
@.str.66 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1, !dbg !359
@.str.67 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !361
@.str.68 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !363
@.str.69 = private unnamed_addr constant [4 x i8] c"all\00", align 1, !dbg !377
@.str.70 = private unnamed_addr constant [12 x i8] c"kernel-name\00", align 1, !dbg !379
@.str.71 = private unnamed_addr constant [8 x i8] c"sysname\00", align 1, !dbg !381
@.str.72 = private unnamed_addr constant [9 x i8] c"nodename\00", align 1, !dbg !383
@.str.73 = private unnamed_addr constant [15 x i8] c"kernel-release\00", align 1, !dbg !388
@.str.74 = private unnamed_addr constant [8 x i8] c"release\00", align 1, !dbg !390
@.str.75 = private unnamed_addr constant [15 x i8] c"kernel-version\00", align 1, !dbg !392
@.str.76 = private unnamed_addr constant [8 x i8] c"machine\00", align 1, !dbg !394
@.str.77 = private unnamed_addr constant [10 x i8] c"processor\00", align 1, !dbg !396
@.str.78 = private unnamed_addr constant [18 x i8] c"hardware-platform\00", align 1, !dbg !398
@.str.79 = private unnamed_addr constant [17 x i8] c"operating-system\00", align 1, !dbg !403
@print_element.printed = internal unnamed_addr global i1 false, align 1, !dbg !438
@uname_mode = dso_local local_unnamed_addr global i32 0, align 4, !dbg !439
@.str.21 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !445
@Version = dso_local local_unnamed_addr global ptr @.str.21, align 8, !dbg !448
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !452
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !465
@.str.24 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !457
@.str.1.25 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !459
@.str.2.26 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !461
@.str.3.27 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !463
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !467
@stderr = external local_unnamed_addr global ptr, align 8
@.str.80 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !473
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !510
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !475
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !500
@.str.1.86 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !502
@.str.2.88 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !504
@.str.3.87 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !506
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !508
@.str.4.81 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !512
@.str.5.82 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !514
@.str.6.83 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !519
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !524
@.str.97 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !530
@.str.1.98 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !532
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !534
@.str.101 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !565
@.str.1.102 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !568
@.str.2.103 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !570
@.str.3.104 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !575
@.str.4.105 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !577
@.str.5.106 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !579
@.str.6.107 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !581
@.str.7.108 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !583
@.str.8.109 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !585
@.str.9.110 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !587
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.101, ptr @.str.1.102, ptr @.str.2.103, ptr @.str.3.104, ptr @.str.4.105, ptr @.str.5.106, ptr @.str.6.107, ptr @.str.7.108, ptr @.str.8.109, ptr @.str.9.110, ptr null], align 8, !dbg !589
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !614
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !628
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !666
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !673
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !630
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !675
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !618
@.str.10.113 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !635
@.str.11.111 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !637
@.str.12.114 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !639
@.str.13.112 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !641
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !643
@.str.119 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !681
@.str.1.120 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !684
@.str.2.121 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !686
@.str.3.122 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !688
@.str.4.123 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !690
@.str.5.124 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !692
@.str.6.125 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !697
@.str.7.126 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !702
@.str.8.127 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !704
@.str.9.128 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !706
@.str.10.129 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !711
@.str.11.130 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !716
@.str.12.131 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !721
@.str.13.132 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !723
@.str.14.133 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !728
@.str.15.134 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !733
@.str.16.135 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !738
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.140 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !740
@.str.18.141 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !742
@.str.19.142 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !744
@.str.20.143 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !746
@.str.21.144 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !748
@.str.22 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !750
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !752
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !757
@exit_failure = dso_local global i32 1, align 4, !dbg !765
@.str.157 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !771
@.str.1.155 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !774
@.str.2.156 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !776
@.str.168 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !778
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !781
@.str.173 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !796
@.str.1.174 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !799

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !871 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !875, metadata !DIExpression()), !dbg !876
  %2 = icmp eq i32 %0, 0, !dbg !877
  br i1 %2, label %8, label %3, !dbg !879

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !880, !tbaa !882
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #36, !dbg !880
  %6 = load ptr, ptr @program_name, align 8, !dbg !880, !tbaa !882
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #36, !dbg !880
  br label %111, !dbg !880

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #36, !dbg !886
  %10 = load ptr, ptr @program_name, align 8, !dbg !886, !tbaa !882
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #36, !dbg !886
  %12 = load i32, ptr @uname_mode, align 4, !dbg !888, !tbaa !890
  %13 = icmp eq i32 %12, 0, !dbg !891
  br i1 %13, label %14, label %54, !dbg !892

14:                                               ; preds = %8
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #36, !dbg !893
  %16 = load ptr, ptr @stdout, align 8, !dbg !893, !tbaa !882
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !893
  %18 = load i32, ptr @uname_mode, align 4, !dbg !895, !tbaa !890
  %19 = icmp eq i32 %18, 0, !dbg !895
  %20 = select i1 %19, ptr @.str.3, ptr @.str.4, !dbg !895
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #36, !dbg !895
  tail call fastcc void @oputs_(ptr noundef nonnull %20, ptr noundef %21), !dbg !895
  %22 = load i32, ptr @uname_mode, align 4, !dbg !896, !tbaa !890
  %23 = icmp eq i32 %22, 0, !dbg !896
  %24 = select i1 %23, ptr @.str.3, ptr @.str.4, !dbg !896
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #36, !dbg !896
  tail call fastcc void @oputs_(ptr noundef nonnull %24, ptr noundef %25), !dbg !896
  %26 = load i32, ptr @uname_mode, align 4, !dbg !897, !tbaa !890
  %27 = icmp eq i32 %26, 0, !dbg !897
  %28 = select i1 %27, ptr @.str.3, ptr @.str.4, !dbg !897
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #36, !dbg !897
  tail call fastcc void @oputs_(ptr noundef nonnull %28, ptr noundef %29), !dbg !897
  %30 = load i32, ptr @uname_mode, align 4, !dbg !898, !tbaa !890
  %31 = icmp eq i32 %30, 0, !dbg !898
  %32 = select i1 %31, ptr @.str.3, ptr @.str.4, !dbg !898
  %33 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #36, !dbg !898
  tail call fastcc void @oputs_(ptr noundef nonnull %32, ptr noundef %33), !dbg !898
  %34 = load i32, ptr @uname_mode, align 4, !dbg !899, !tbaa !890
  %35 = icmp eq i32 %34, 0, !dbg !899
  %36 = select i1 %35, ptr @.str.3, ptr @.str.4, !dbg !899
  %37 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #36, !dbg !899
  tail call fastcc void @oputs_(ptr noundef nonnull %36, ptr noundef %37), !dbg !899
  %38 = load i32, ptr @uname_mode, align 4, !dbg !900, !tbaa !890
  %39 = icmp eq i32 %38, 0, !dbg !900
  %40 = select i1 %39, ptr @.str.3, ptr @.str.4, !dbg !900
  %41 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #36, !dbg !900
  tail call fastcc void @oputs_(ptr noundef nonnull %40, ptr noundef %41), !dbg !900
  %42 = load i32, ptr @uname_mode, align 4, !dbg !901, !tbaa !890
  %43 = icmp eq i32 %42, 0, !dbg !901
  %44 = select i1 %43, ptr @.str.3, ptr @.str.4, !dbg !901
  %45 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #36, !dbg !901
  tail call fastcc void @oputs_(ptr noundef nonnull %44, ptr noundef %45), !dbg !901
  %46 = load i32, ptr @uname_mode, align 4, !dbg !902, !tbaa !890
  %47 = icmp eq i32 %46, 0, !dbg !902
  %48 = select i1 %47, ptr @.str.3, ptr @.str.4, !dbg !902
  %49 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #36, !dbg !902
  tail call fastcc void @oputs_(ptr noundef nonnull %48, ptr noundef %49), !dbg !902
  %50 = load i32, ptr @uname_mode, align 4, !dbg !903, !tbaa !890
  %51 = icmp eq i32 %50, 0, !dbg !903
  %52 = select i1 %51, ptr @.str.3, ptr @.str.4, !dbg !903
  %53 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #36, !dbg !903
  tail call fastcc void @oputs_(ptr noundef nonnull %52, ptr noundef %53), !dbg !903
  br label %58, !dbg !904

54:                                               ; preds = %8
  %55 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #36, !dbg !905
  %56 = load ptr, ptr @stdout, align 8, !dbg !905, !tbaa !882
  %57 = tail call i32 @fputs_unlocked(ptr noundef %55, ptr noundef %56), !dbg !905
  br label %58

58:                                               ; preds = %54, %14
  %59 = load i32, ptr @uname_mode, align 4, !dbg !907, !tbaa !890
  %60 = icmp eq i32 %59, 0, !dbg !907
  %61 = select i1 %60, ptr @.str.3, ptr @.str.4, !dbg !907
  %62 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #36, !dbg !907
  tail call fastcc void @oputs_(ptr noundef nonnull %61, ptr noundef %62), !dbg !907
  %63 = load i32, ptr @uname_mode, align 4, !dbg !908, !tbaa !890
  %64 = icmp eq i32 %63, 0, !dbg !908
  %65 = select i1 %64, ptr @.str.3, ptr @.str.4, !dbg !908
  %66 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #36, !dbg !908
  tail call fastcc void @oputs_(ptr noundef nonnull %65, ptr noundef %66), !dbg !908
  %67 = load i32, ptr @uname_mode, align 4, !dbg !909, !tbaa !890
  %68 = icmp eq i32 %67, 0, !dbg !909
  %69 = select i1 %68, ptr @.str.3, ptr @.str.4, !dbg !909
  call void @llvm.dbg.value(metadata ptr %69, metadata !910, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.declare(metadata ptr @__const.emit_ancillary_info.infomap, metadata !913, metadata !DIExpression()), !dbg !927
  call void @llvm.dbg.value(metadata ptr %69, metadata !920, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.value(metadata ptr @__const.emit_ancillary_info.infomap, metadata !921, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.value(metadata ptr @__const.emit_ancillary_info.infomap, metadata !921, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.value(metadata ptr %69, metadata !928, metadata !DIExpression()), !dbg !935
  call void @llvm.dbg.value(metadata ptr @.str.31, metadata !934, metadata !DIExpression()), !dbg !935
  %70 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %69, ptr noundef nonnull dereferenceable(2) @.str.31, i64 2), !dbg !937
  %71 = icmp eq i32 %70, 0, !dbg !938
  br i1 %71, label %88, label %72, !dbg !939

72:                                               ; preds = %58
  call void @llvm.dbg.value(metadata ptr getelementptr inbounds ([7 x %struct.infomap], ptr @__const.emit_ancillary_info.infomap, i64 0, i64 1), metadata !921, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.value(metadata ptr getelementptr inbounds ([7 x %struct.infomap], ptr @__const.emit_ancillary_info.infomap, i64 0, i64 1), metadata !921, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.value(metadata ptr %69, metadata !928, metadata !DIExpression()), !dbg !935
  call void @llvm.dbg.value(metadata ptr @.str.18, metadata !934, metadata !DIExpression()), !dbg !935
  %73 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %69, ptr noundef nonnull dereferenceable(10) @.str.18) #37, !dbg !937
  %74 = icmp eq i32 %73, 0, !dbg !938
  br i1 %74, label %88, label %75, !dbg !939

75:                                               ; preds = %72
  call void @llvm.dbg.value(metadata ptr getelementptr inbounds ([7 x %struct.infomap], ptr @__const.emit_ancillary_info.infomap, i64 0, i64 2), metadata !921, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.value(metadata ptr getelementptr inbounds ([7 x %struct.infomap], ptr @__const.emit_ancillary_info.infomap, i64 0, i64 2), metadata !921, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.value(metadata ptr %69, metadata !928, metadata !DIExpression()), !dbg !935
  call void @llvm.dbg.value(metadata ptr @.str.40, metadata !934, metadata !DIExpression()), !dbg !935
  %76 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %69, ptr noundef nonnull dereferenceable(10) @.str.40) #37, !dbg !937
  %77 = icmp eq i32 %76, 0, !dbg !938
  br i1 %77, label %88, label %78, !dbg !939

78:                                               ; preds = %75
  call void @llvm.dbg.value(metadata ptr getelementptr inbounds ([7 x %struct.infomap], ptr @__const.emit_ancillary_info.infomap, i64 0, i64 3), metadata !921, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.value(metadata ptr getelementptr inbounds ([7 x %struct.infomap], ptr @__const.emit_ancillary_info.infomap, i64 0, i64 3), metadata !921, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.value(metadata ptr %69, metadata !928, metadata !DIExpression()), !dbg !935
  call void @llvm.dbg.value(metadata ptr @.str.41, metadata !934, metadata !DIExpression()), !dbg !935
  %79 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %69, ptr noundef nonnull dereferenceable(10) @.str.41) #37, !dbg !937
  %80 = icmp eq i32 %79, 0, !dbg !938
  br i1 %80, label %88, label %81, !dbg !939

81:                                               ; preds = %78
  call void @llvm.dbg.value(metadata ptr getelementptr inbounds ([7 x %struct.infomap], ptr @__const.emit_ancillary_info.infomap, i64 0, i64 4), metadata !921, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.value(metadata ptr getelementptr inbounds ([7 x %struct.infomap], ptr @__const.emit_ancillary_info.infomap, i64 0, i64 4), metadata !921, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.value(metadata ptr %69, metadata !928, metadata !DIExpression()), !dbg !935
  call void @llvm.dbg.value(metadata ptr @.str.42, metadata !934, metadata !DIExpression()), !dbg !935
  %82 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %69, ptr noundef nonnull dereferenceable(10) @.str.42) #37, !dbg !937
  %83 = icmp eq i32 %82, 0, !dbg !938
  br i1 %83, label %88, label %84, !dbg !939

84:                                               ; preds = %81
  call void @llvm.dbg.value(metadata ptr getelementptr inbounds ([7 x %struct.infomap], ptr @__const.emit_ancillary_info.infomap, i64 0, i64 5), metadata !921, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.value(metadata ptr getelementptr inbounds ([7 x %struct.infomap], ptr @__const.emit_ancillary_info.infomap, i64 0, i64 5), metadata !921, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.value(metadata ptr %69, metadata !928, metadata !DIExpression()), !dbg !935
  call void @llvm.dbg.value(metadata ptr @.str.43, metadata !934, metadata !DIExpression()), !dbg !935
  %85 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %69, ptr noundef nonnull dereferenceable(10) @.str.43) #37, !dbg !937
  %86 = icmp eq i32 %85, 0, !dbg !938
  %87 = select i1 %86, ptr getelementptr inbounds ([7 x %struct.infomap], ptr @__const.emit_ancillary_info.infomap, i64 0, i64 5), ptr getelementptr inbounds ([7 x %struct.infomap], ptr @__const.emit_ancillary_info.infomap, i64 0, i64 6, i32 0), !dbg !939
  br label %88, !dbg !939

88:                                               ; preds = %84, %81, %78, %75, %72, %58
  %89 = phi ptr [ @__const.emit_ancillary_info.infomap, %58 ], [ getelementptr inbounds ([7 x %struct.infomap], ptr @__const.emit_ancillary_info.infomap, i64 0, i64 1), %72 ], [ getelementptr inbounds ([7 x %struct.infomap], ptr @__const.emit_ancillary_info.infomap, i64 0, i64 2), %75 ], [ getelementptr inbounds ([7 x %struct.infomap], ptr @__const.emit_ancillary_info.infomap, i64 0, i64 3), %78 ], [ getelementptr inbounds ([7 x %struct.infomap], ptr @__const.emit_ancillary_info.infomap, i64 0, i64 4), %81 ], [ %87, %84 ], !dbg !925
  %90 = getelementptr inbounds %struct.infomap, ptr %89, i64 0, i32 1, !dbg !940
  %91 = load ptr, ptr %90, align 8, !dbg !940, !tbaa !942
  call void @llvm.dbg.value(metadata ptr poison, metadata !920, metadata !DIExpression()), !dbg !925
  tail call void @emit_bug_reporting_address() #36, !dbg !944
  %92 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #36, !dbg !945
  call void @llvm.dbg.value(metadata ptr %92, metadata !923, metadata !DIExpression()), !dbg !925
  %93 = icmp eq ptr %92, null, !dbg !946
  br i1 %93, label %101, label %94, !dbg !948

94:                                               ; preds = %88
  %95 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %92, ptr noundef nonnull dereferenceable(4) @.str.57, i64 noundef 3) #37, !dbg !949
  %96 = icmp eq i32 %95, 0, !dbg !949
  br i1 %96, label %101, label %97, !dbg !950

97:                                               ; preds = %94
  %98 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.58, i32 noundef 5) #36, !dbg !951
  %99 = load ptr, ptr @stdout, align 8, !dbg !951, !tbaa !882
  %100 = tail call i32 @fputs_unlocked(ptr noundef %98, ptr noundef %99), !dbg !951
  br label %101, !dbg !953

101:                                              ; preds = %88, %94, %97
  %102 = icmp eq ptr %91, null, !dbg !954
  %103 = select i1 %102, ptr %69, ptr %91, !dbg !955
  call void @llvm.dbg.value(metadata ptr %103, metadata !920, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.value(metadata ptr %69, metadata !928, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.value(metadata ptr @.str.31, metadata !934, metadata !DIExpression()), !dbg !956
  %104 = select i1 %71, ptr @.str.32, ptr %69, !dbg !958
  call void @llvm.dbg.value(metadata ptr %104, metadata !924, metadata !DIExpression()), !dbg !925
  %105 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 5) #36, !dbg !959
  %106 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %105, ptr noundef nonnull @.str.47, ptr noundef nonnull %104) #36, !dbg !959
  %107 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.60, i32 noundef 5) #36, !dbg !960
  %108 = icmp eq ptr %103, %69, !dbg !960
  %109 = select i1 %108, ptr @.str.61, ptr @.str.17, !dbg !960
  %110 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %107, ptr noundef %103, ptr noundef nonnull %109) #36, !dbg !960
  br label %111

111:                                              ; preds = %101, %3
  tail call void @exit(i32 noundef %0) #38, !dbg !961
  unreachable, !dbg !961
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !962 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !967 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !973 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !976 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0, ptr noundef %1) unnamed_addr #5 !dbg !161 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !165, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata ptr %1, metadata !166, metadata !DIExpression()), !dbg !979
  %3 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !980, !tbaa !981
  %4 = icmp eq i32 %3, -1, !dbg !983
  br i1 %4, label %5, label %17, !dbg !984

5:                                                ; preds = %2
  %6 = tail call ptr @getenv(ptr noundef nonnull @.str.27) #36, !dbg !985
  call void @llvm.dbg.value(metadata ptr %6, metadata !167, metadata !DIExpression()), !dbg !986
  %7 = icmp eq ptr %6, null, !dbg !987
  br i1 %7, label %15, label %8, !dbg !988

8:                                                ; preds = %5
  %9 = load i8, ptr %6, align 1, !dbg !989, !tbaa !890
  %10 = icmp eq i8 %9, 0, !dbg !989
  br i1 %10, label %15, label %11, !dbg !990

11:                                               ; preds = %8
  call void @llvm.dbg.value(metadata ptr %6, metadata !928, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata ptr @.str.28, metadata !934, metadata !DIExpression()), !dbg !991
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(5) @.str.28) #37, !dbg !993
  %13 = icmp eq i32 %12, 0, !dbg !994
  %14 = zext i1 %13 to i32, !dbg !990
  br label %15, !dbg !990

15:                                               ; preds = %11, %8, %5
  %16 = phi i32 [ 1, %8 ], [ 1, %5 ], [ %14, %11 ]
  store i32 %16, ptr @oputs_.help_no_sgr, align 4, !dbg !995, !tbaa !981
  br label %17, !dbg !996

17:                                               ; preds = %15, %2
  %18 = phi i32 [ %16, %15 ], [ %3, %2 ], !dbg !997
  %19 = icmp eq i32 %18, 0, !dbg !997
  br i1 %19, label %23, label %20, !dbg !999

20:                                               ; preds = %17
  %21 = load ptr, ptr @stdout, align 8, !dbg !1000, !tbaa !882
  %22 = tail call i32 @fputs_unlocked(ptr noundef %1, ptr noundef %21), !dbg !1000
  br label %155, !dbg !1002

23:                                               ; preds = %17
  call void @llvm.dbg.value(metadata i8 1, metadata !170, metadata !DIExpression()), !dbg !979
  %24 = tail call i64 @strspn(ptr noundef %1, ptr noundef nonnull @.str.29) #37, !dbg !1003
  %25 = getelementptr inbounds i8, ptr %1, i64 %24, !dbg !1004
  call void @llvm.dbg.value(metadata ptr %25, metadata !172, metadata !DIExpression()), !dbg !979
  %26 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 45) #37, !dbg !1005
  call void @llvm.dbg.value(metadata ptr %26, metadata !173, metadata !DIExpression()), !dbg !979
  %27 = icmp eq ptr %26, null, !dbg !1006
  br i1 %27, label %55, label %28, !dbg !1007

28:                                               ; preds = %23
  %29 = icmp eq ptr %26, %25, !dbg !1008
  br i1 %29, label %55, label %30, !dbg !1009

30:                                               ; preds = %28
  call void @llvm.dbg.value(metadata ptr %25, metadata !174, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.value(metadata i64 0, metadata !178, metadata !DIExpression()), !dbg !1010
  %31 = icmp ult ptr %25, %26, !dbg !1011
  br i1 %31, label %32, label %52, !dbg !1012

32:                                               ; preds = %30
  %33 = tail call ptr @__ctype_b_loc() #39, !dbg !979
  %34 = load ptr, ptr %33, align 8, !tbaa !882
  br label %35, !dbg !1012

35:                                               ; preds = %32, %35
  %36 = phi ptr [ %25, %32 ], [ %38, %35 ]
  %37 = phi i64 [ 0, %32 ], [ %46, %35 ]
  call void @llvm.dbg.value(metadata ptr %36, metadata !174, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.value(metadata i64 %37, metadata !178, metadata !DIExpression()), !dbg !1010
  %38 = getelementptr inbounds i8, ptr %36, i64 1, !dbg !1013
  call void @llvm.dbg.value(metadata ptr %38, metadata !174, metadata !DIExpression()), !dbg !1010
  %39 = load i8, ptr %36, align 1, !dbg !1013, !tbaa !890
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds i16, ptr %34, i64 %40, !dbg !1013
  %42 = load i16, ptr %41, align 2, !dbg !1013, !tbaa !1014
  %43 = lshr i16 %42, 13, !dbg !1016
  %44 = and i16 %43, 1, !dbg !1016
  %45 = zext i16 %44 to i64
  %46 = add nuw nsw i64 %37, %45, !dbg !1017
  call void @llvm.dbg.value(metadata i64 %46, metadata !178, metadata !DIExpression()), !dbg !1010
  %47 = icmp ult ptr %38, %26, !dbg !1011
  %48 = icmp ult i64 %46, 2, !dbg !1018
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1018
  br i1 %49, label %35, label %50, !dbg !1012, !llvm.loop !1019

50:                                               ; preds = %35
  %51 = icmp ne i64 %46, 2, !dbg !1021
  br label %52, !dbg !1021

52:                                               ; preds = %50, %30
  %53 = phi i1 [ true, %30 ], [ %51, %50 ]
  %54 = select i1 %53, ptr %26, ptr %25, !dbg !1023
  call void @llvm.dbg.value(metadata i8 poison, metadata !170, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata ptr %54, metadata !173, metadata !DIExpression()), !dbg !979
  br label %55, !dbg !1024

55:                                               ; preds = %23, %28, %52
  %56 = phi ptr [ %54, %52 ], [ %25, %28 ], [ %25, %23 ], !dbg !979
  %57 = phi i1 [ %53, %52 ], [ true, %28 ], [ false, %23 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !170, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata ptr %56, metadata !173, metadata !DIExpression()), !dbg !979
  %58 = tail call i64 @strcspn(ptr noundef %56, ptr noundef nonnull @.str.30) #37, !dbg !1025
  call void @llvm.dbg.value(metadata i64 %58, metadata !179, metadata !DIExpression()), !dbg !979
  %59 = getelementptr inbounds i8, ptr %56, i64 %58, !dbg !1026
  call void @llvm.dbg.value(metadata ptr %59, metadata !180, metadata !DIExpression()), !dbg !979
  br label %60, !dbg !1027

60:                                               ; preds = %91, %55
  %61 = phi ptr [ %59, %55 ], [ %92, %91 ], !dbg !979
  %62 = phi i1 [ %57, %55 ], [ %70, %91 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !170, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata ptr %61, metadata !180, metadata !DIExpression()), !dbg !979
  %63 = load i8, ptr %61, align 1, !dbg !1028, !tbaa !890
  switch i8 %63, label %69 [
    i8 0, label %93
    i8 10, label %93
    i8 45, label %64
  ], !dbg !1029

64:                                               ; preds = %60
  %65 = getelementptr inbounds i8, ptr %61, i64 1, !dbg !1030
  %66 = load i8, ptr %65, align 1, !dbg !1033, !tbaa !890
  %67 = icmp ne i8 %66, 45, !dbg !1034
  %68 = select i1 %67, i1 %62, i1 false, !dbg !1035
  br label %69, !dbg !1035

69:                                               ; preds = %64, %60
  %70 = phi i1 [ %62, %60 ], [ %68, %64 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !170, metadata !DIExpression()), !dbg !979
  %71 = tail call ptr @__ctype_b_loc() #39, !dbg !1036
  %72 = load ptr, ptr %71, align 8, !dbg !1036, !tbaa !882
  %73 = zext i8 %63 to i64
  %74 = getelementptr inbounds i16, ptr %72, i64 %73, !dbg !1036
  %75 = load i16, ptr %74, align 2, !dbg !1036, !tbaa !1014
  %76 = and i16 %75, 8192, !dbg !1036
  %77 = icmp eq i16 %76, 0, !dbg !1036
  br i1 %77, label %91, label %78, !dbg !1038

78:                                               ; preds = %69
  %79 = icmp eq i8 %63, 9, !dbg !1039
  br i1 %79, label %93, label %80, !dbg !1042

80:                                               ; preds = %78
  %81 = getelementptr inbounds i8, ptr %61, i64 1, !dbg !1043
  %82 = load i8, ptr %81, align 1, !dbg !1043, !tbaa !890
  %83 = zext i8 %82 to i64
  %84 = getelementptr inbounds i16, ptr %72, i64 %83, !dbg !1043
  %85 = load i16, ptr %84, align 2, !dbg !1043, !tbaa !1014
  %86 = and i16 %85, 8192, !dbg !1043
  %87 = icmp eq i16 %86, 0, !dbg !1043
  %88 = icmp eq i8 %82, 45
  %89 = select i1 %70, i1 true, i1 %88
  %90 = select i1 %87, i1 %89, i1 false, !dbg !1044
  br i1 %90, label %91, label %93, !dbg !1044

91:                                               ; preds = %80, %69
  %92 = getelementptr inbounds i8, ptr %61, i64 1, !dbg !1045
  call void @llvm.dbg.value(metadata ptr %92, metadata !180, metadata !DIExpression()), !dbg !979
  br label %60, !dbg !1027, !llvm.loop !1046

93:                                               ; preds = %60, %60, %78, %80
  %94 = ptrtoint ptr %25 to i64, !dbg !1048
  %95 = load ptr, ptr @stdout, align 8, !dbg !1048, !tbaa !882
  %96 = tail call i64 @fwrite_unlocked(ptr noundef %1, i64 noundef 1, i64 noundef %24, ptr noundef %95), !dbg !1048
  call void @llvm.dbg.value(metadata ptr %0, metadata !928, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata ptr @.str.31, metadata !934, metadata !DIExpression()), !dbg !1049
  %97 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.31) #37, !dbg !1051
  %98 = icmp eq i32 %97, 0, !dbg !1052
  br i1 %98, label %127, label %99, !dbg !1053

99:                                               ; preds = %93
  call void @llvm.dbg.value(metadata ptr %0, metadata !928, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata ptr @.str.33, metadata !934, metadata !DIExpression()), !dbg !1054
  %100 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.33) #37, !dbg !1056
  %101 = icmp eq i32 %100, 0, !dbg !1057
  br i1 %101, label %127, label %102, !dbg !1058

102:                                              ; preds = %99
  call void @llvm.dbg.value(metadata ptr %0, metadata !928, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata ptr @.str.35, metadata !934, metadata !DIExpression()), !dbg !1059
  %103 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.35) #37, !dbg !1061
  %104 = icmp eq i32 %103, 0, !dbg !1062
  br i1 %104, label %127, label %105, !dbg !1063

105:                                              ; preds = %102
  call void @llvm.dbg.value(metadata ptr %0, metadata !928, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.value(metadata ptr @.str.36, metadata !934, metadata !DIExpression()), !dbg !1064
  %106 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.36) #37, !dbg !1066
  %107 = icmp eq i32 %106, 0, !dbg !1067
  br i1 %107, label %127, label %108, !dbg !1068

108:                                              ; preds = %105
  call void @llvm.dbg.value(metadata ptr %0, metadata !928, metadata !DIExpression()), !dbg !1069
  call void @llvm.dbg.value(metadata ptr @.str.38, metadata !934, metadata !DIExpression()), !dbg !1069
  %109 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.38) #37, !dbg !1071
  %110 = icmp eq i32 %109, 0, !dbg !1072
  br i1 %110, label %127, label %111, !dbg !1073

111:                                              ; preds = %108
  call void @llvm.dbg.value(metadata ptr %0, metadata !928, metadata !DIExpression()), !dbg !1074
  call void @llvm.dbg.value(metadata ptr @.str.39, metadata !934, metadata !DIExpression()), !dbg !1074
  %112 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.39) #37, !dbg !1076
  %113 = icmp eq i32 %112, 0, !dbg !1077
  br i1 %113, label %127, label %114, !dbg !1078

114:                                              ; preds = %111
  call void @llvm.dbg.value(metadata ptr %0, metadata !928, metadata !DIExpression()), !dbg !1079
  call void @llvm.dbg.value(metadata ptr @.str.40, metadata !934, metadata !DIExpression()), !dbg !1079
  %115 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(10) @.str.40) #37, !dbg !1081
  %116 = icmp eq i32 %115, 0, !dbg !1082
  br i1 %116, label %127, label %117, !dbg !1083

117:                                              ; preds = %114
  call void @llvm.dbg.value(metadata ptr %0, metadata !928, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata ptr @.str.41, metadata !934, metadata !DIExpression()), !dbg !1084
  %118 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(10) @.str.41) #37, !dbg !1086
  %119 = icmp eq i32 %118, 0, !dbg !1087
  br i1 %119, label %127, label %120, !dbg !1088

120:                                              ; preds = %117
  call void @llvm.dbg.value(metadata ptr %0, metadata !928, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata ptr @.str.42, metadata !934, metadata !DIExpression()), !dbg !1089
  %121 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(10) @.str.42) #37, !dbg !1091
  %122 = icmp eq i32 %121, 0, !dbg !1092
  br i1 %122, label %127, label %123, !dbg !1093

123:                                              ; preds = %120
  call void @llvm.dbg.value(metadata ptr %0, metadata !928, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata ptr @.str.43, metadata !934, metadata !DIExpression()), !dbg !1094
  %124 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(10) @.str.43) #37, !dbg !1096
  %125 = icmp eq i32 %124, 0, !dbg !1097
  %126 = select i1 %125, ptr @.str.37, ptr %0, !dbg !1098
  br label %127, !dbg !1093

127:                                              ; preds = %99, %105, %111, %117, %120, %123, %114, %108, %102, %93
  %128 = phi ptr [ @.str.32, %93 ], [ @.str.34, %99 ], [ @.str.34, %102 ], [ @.str.37, %105 ], [ @.str.37, %108 ], [ @.str.37, %111 ], [ @.str.37, %114 ], [ @.str.37, %117 ], [ %126, %123 ], [ @.str.37, %120 ], !dbg !1053
  call void @llvm.dbg.value(metadata ptr %128, metadata !237, metadata !DIExpression()), !dbg !979
  %129 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %56, ptr noundef nonnull dereferenceable(7) @.str.44, i64 noundef 6) #37, !dbg !1099
  %130 = icmp eq i32 %129, 0, !dbg !1099
  br i1 %130, label %134, label %131, !dbg !1101

131:                                              ; preds = %127
  %132 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %56, ptr noundef nonnull dereferenceable(10) @.str.45, i64 noundef 9) #37, !dbg !1102
  %133 = icmp eq i32 %132, 0, !dbg !1102
  br i1 %133, label %134, label %137, !dbg !1103

134:                                              ; preds = %131, %127
  %135 = trunc i64 %58 to i32, !dbg !1104
  %136 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, ptr noundef %128, ptr noundef %128, i32 noundef %135, ptr noundef %56) #36, !dbg !1104
  br label %140, !dbg !1106

137:                                              ; preds = %131
  %138 = trunc i64 %58 to i32, !dbg !1107
  %139 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, ptr noundef %128, i32 noundef %138, ptr noundef %56) #36, !dbg !1107
  br label %140

140:                                              ; preds = %137, %134
  %141 = load ptr, ptr @stdout, align 8, !dbg !1109, !tbaa !882
  %142 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.50, ptr noundef %141), !dbg !1109
  %143 = load ptr, ptr @stdout, align 8, !dbg !1110, !tbaa !882
  %144 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.51, ptr noundef %143), !dbg !1110
  %145 = ptrtoint ptr %61 to i64, !dbg !1111
  %146 = sub i64 %145, %94, !dbg !1111
  %147 = load ptr, ptr @stdout, align 8, !dbg !1111, !tbaa !882
  %148 = tail call i64 @fwrite_unlocked(ptr noundef %25, i64 noundef 1, i64 noundef %146, ptr noundef %147), !dbg !1111
  %149 = load ptr, ptr @stdout, align 8, !dbg !1112, !tbaa !882
  %150 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.52, ptr noundef %149), !dbg !1112
  %151 = load ptr, ptr @stdout, align 8, !dbg !1113, !tbaa !882
  %152 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.53, ptr noundef %151), !dbg !1113
  %153 = load ptr, ptr @stdout, align 8, !dbg !1114, !tbaa !882
  %154 = tail call i32 @fputs_unlocked(ptr noundef nonnull %61, ptr noundef %153), !dbg !1114
  br label %155, !dbg !1115

155:                                              ; preds = %140, %20
  ret void, !dbg !1115
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1116 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !1120 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1124 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: noreturn nounwind
declare !dbg !1127 void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1129 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1132 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1135 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1138 ptr @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1144 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare !dbg !1145 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #11 !dbg !80 {
  %3 = alloca %struct.utsname, align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !416, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata ptr %1, metadata !417, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i32 0, metadata !418, metadata !DIExpression()), !dbg !1151
  %4 = load ptr, ptr %1, align 8, !dbg !1152, !tbaa !882
  tail call void @set_program_name(ptr noundef %4) #36, !dbg !1153
  %5 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.17) #36, !dbg !1154
  %6 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #36, !dbg !1155
  %7 = tail call ptr @textdomain(ptr noundef nonnull @.str.18) #36, !dbg !1156
  %8 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #36, !dbg !1157
  call void @llvm.dbg.value(metadata i32 %0, metadata !1158, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata ptr %1, metadata !1161, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata i32 0, metadata !1163, metadata !DIExpression()), !dbg !1164
  %9 = load i32, ptr @uname_mode, align 4, !dbg !1166, !tbaa !890
  %10 = icmp eq i32 %9, 1, !dbg !1168
  br i1 %10, label %11, label %21, !dbg !1169

11:                                               ; preds = %2
  %12 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.17, ptr noundef nonnull @arch_long_options, ptr noundef null) #36, !dbg !1170
  call void @llvm.dbg.value(metadata i32 %12, metadata !1162, metadata !DIExpression()), !dbg !1164
  switch i32 %12, label %20 [
    i32 -1, label %51
    i32 -2, label %13
    i32 -3, label %14
  ], !dbg !1172

13:                                               ; preds = %11
  tail call void @usage(i32 noundef 0) #40, !dbg !1173
  unreachable, !dbg !1173

14:                                               ; preds = %11
  %15 = load ptr, ptr @stdout, align 8, !dbg !1176, !tbaa !882
  %16 = load i32, ptr @uname_mode, align 4, !dbg !1176, !tbaa !890
  %17 = icmp eq i32 %16, 0, !dbg !1176
  %18 = select i1 %17, ptr @.str.3, ptr @.str.4, !dbg !1176
  %19 = load ptr, ptr @Version, align 8, !dbg !1176, !tbaa !882
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %15, ptr noundef nonnull %18, ptr noundef nonnull @.str.62, ptr noundef %19, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64, ptr noundef null) #36, !dbg !1176
  tail call void @exit(i32 noundef 0) #38, !dbg !1176
  unreachable, !dbg !1176

20:                                               ; preds = %11
  tail call void @usage(i32 noundef 1) #40, !dbg !1177
  unreachable, !dbg !1177

21:                                               ; preds = %2, %40
  %22 = phi i32 [ %41, %40 ], [ 0, %2 ], !dbg !1164
  call void @llvm.dbg.value(metadata i32 %22, metadata !1163, metadata !DIExpression()), !dbg !1164
  %23 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.65, ptr noundef nonnull @uname_long_options, ptr noundef null) #36, !dbg !1178
  call void @llvm.dbg.value(metadata i32 %23, metadata !1162, metadata !DIExpression()), !dbg !1164
  switch i32 %23, label %50 [
    i32 -1, label %51
    i32 97, label %40
    i32 115, label %24
    i32 110, label %26
    i32 114, label %28
    i32 118, label %30
    i32 109, label %32
    i32 112, label %34
    i32 105, label %36
    i32 111, label %38
    i32 -2, label %42
    i32 -3, label %43
  ], !dbg !1180

24:                                               ; preds = %21
  %25 = or i32 %22, 1, !dbg !1181
  call void @llvm.dbg.value(metadata i32 %25, metadata !1163, metadata !DIExpression()), !dbg !1164
  br label %40, !dbg !1184

26:                                               ; preds = %21
  %27 = or i32 %22, 2, !dbg !1185
  call void @llvm.dbg.value(metadata i32 %27, metadata !1163, metadata !DIExpression()), !dbg !1164
  br label %40, !dbg !1186

28:                                               ; preds = %21
  %29 = or i32 %22, 4, !dbg !1187
  call void @llvm.dbg.value(metadata i32 %29, metadata !1163, metadata !DIExpression()), !dbg !1164
  br label %40, !dbg !1188

30:                                               ; preds = %21
  %31 = or i32 %22, 8, !dbg !1189
  call void @llvm.dbg.value(metadata i32 %31, metadata !1163, metadata !DIExpression()), !dbg !1164
  br label %40, !dbg !1190

32:                                               ; preds = %21
  %33 = or i32 %22, 16, !dbg !1191
  call void @llvm.dbg.value(metadata i32 %33, metadata !1163, metadata !DIExpression()), !dbg !1164
  br label %40, !dbg !1192

34:                                               ; preds = %21
  %35 = or i32 %22, 32, !dbg !1193
  call void @llvm.dbg.value(metadata i32 %35, metadata !1163, metadata !DIExpression()), !dbg !1164
  br label %40, !dbg !1194

36:                                               ; preds = %21
  %37 = or i32 %22, 64, !dbg !1195
  call void @llvm.dbg.value(metadata i32 %37, metadata !1163, metadata !DIExpression()), !dbg !1164
  br label %40, !dbg !1196

38:                                               ; preds = %21
  %39 = or i32 %22, 128, !dbg !1197
  call void @llvm.dbg.value(metadata i32 %39, metadata !1163, metadata !DIExpression()), !dbg !1164
  br label %40, !dbg !1198

40:                                               ; preds = %38, %36, %34, %32, %30, %28, %26, %24, %21
  %41 = phi i32 [ %39, %38 ], [ %37, %36 ], [ %35, %34 ], [ %33, %32 ], [ %31, %30 ], [ %29, %28 ], [ %27, %26 ], [ %25, %24 ], [ -1, %21 ]
  br label %21, !dbg !1164, !llvm.loop !1199

42:                                               ; preds = %21
  tail call void @usage(i32 noundef 0) #40, !dbg !1201
  unreachable, !dbg !1201

43:                                               ; preds = %21
  %44 = load ptr, ptr @stdout, align 8, !dbg !1202, !tbaa !882
  %45 = load i32, ptr @uname_mode, align 4, !dbg !1202, !tbaa !890
  %46 = icmp eq i32 %45, 0, !dbg !1202
  %47 = select i1 %46, ptr @.str.3, ptr @.str.4, !dbg !1202
  %48 = load ptr, ptr @Version, align 8, !dbg !1202, !tbaa !882
  %49 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.63) #36, !dbg !1202
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %44, ptr noundef nonnull %47, ptr noundef nonnull @.str.62, ptr noundef %48, ptr noundef %49, ptr noundef null) #36, !dbg !1202
  tail call void @exit(i32 noundef 0) #38, !dbg !1202
  unreachable, !dbg !1202

50:                                               ; preds = %21
  tail call void @usage(i32 noundef 1) #40, !dbg !1203
  unreachable, !dbg !1203

51:                                               ; preds = %21, %11
  %52 = phi i32 [ 16, %11 ], [ %22, %21 ], !dbg !1164
  call void @llvm.dbg.value(metadata i32 %52, metadata !1163, metadata !DIExpression()), !dbg !1164
  %53 = load i32, ptr @optind, align 4, !dbg !1204, !tbaa !981
  %54 = icmp eq i32 %53, %0, !dbg !1206
  br i1 %54, label %62, label %55, !dbg !1207

55:                                               ; preds = %51
  %56 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.66, i32 noundef 5) #36, !dbg !1208
  %57 = load i32, ptr @optind, align 4, !dbg !1208, !tbaa !981
  %58 = sext i32 %57 to i64, !dbg !1208
  %59 = getelementptr inbounds ptr, ptr %1, i64 %58, !dbg !1208
  %60 = load ptr, ptr %59, align 8, !dbg !1208, !tbaa !882
  %61 = tail call ptr @quote(ptr noundef %60) #36, !dbg !1208
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %56, ptr noundef %61) #36, !dbg !1208
  tail call void @usage(i32 noundef 1) #40, !dbg !1210
  unreachable, !dbg !1210

62:                                               ; preds = %51
  call void @llvm.dbg.value(metadata i32 %52, metadata !418, metadata !DIExpression()), !dbg !1151
  %63 = icmp eq i32 %52, 0, !dbg !1211
  %64 = select i1 %63, i32 1, i32 %52, !dbg !1213
  call void @llvm.dbg.value(metadata i32 %64, metadata !418, metadata !DIExpression()), !dbg !1151
  %65 = and i32 %64, 31, !dbg !1214
  %66 = icmp eq i32 %65, 0, !dbg !1214
  br i1 %66, label %174, label %67, !dbg !1215

67:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 390, ptr nonnull %3) #36, !dbg !1216
  call void @llvm.dbg.declare(metadata ptr %3, metadata !419, metadata !DIExpression()), !dbg !1217
  %68 = call i32 @uname(ptr noundef nonnull %3) #36, !dbg !1218
  %69 = icmp eq i32 %68, -1, !dbg !1220
  br i1 %69, label %70, label %74, !dbg !1221

70:                                               ; preds = %67
  %71 = tail call ptr @__errno_location() #39, !dbg !1222
  %72 = load i32, ptr %71, align 4, !dbg !1222, !tbaa !981
  %73 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef 5) #36, !dbg !1222
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %72, ptr noundef %73) #36, !dbg !1222
  unreachable, !dbg !1222

74:                                               ; preds = %67
  %75 = and i32 %64, 1, !dbg !1223
  %76 = icmp eq i32 %75, 0, !dbg !1223
  br i1 %76, label %93, label %77, !dbg !1225

77:                                               ; preds = %74
  call void @llvm.dbg.value(metadata ptr %3, metadata !1226, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.value(metadata ptr %3, metadata !414, metadata !DIExpression()), !dbg !1232
  %78 = load i1, ptr @print_element.printed, align 1, !dbg !1234
  br i1 %78, label %79, label %90, !dbg !1236

79:                                               ; preds = %77
  call void @llvm.dbg.value(metadata i32 32, metadata !1237, metadata !DIExpression()), !dbg !1243
  %80 = load ptr, ptr @stdout, align 8, !dbg !1245, !tbaa !882
  %81 = getelementptr inbounds %struct._IO_FILE, ptr %80, i64 0, i32 5, !dbg !1245
  %82 = load ptr, ptr %81, align 8, !dbg !1245, !tbaa !1246
  %83 = getelementptr inbounds %struct._IO_FILE, ptr %80, i64 0, i32 6, !dbg !1245
  %84 = load ptr, ptr %83, align 8, !dbg !1245, !tbaa !1249
  %85 = icmp ult ptr %82, %84, !dbg !1245
  br i1 %85, label %88, label %86, !dbg !1245, !prof !1250

86:                                               ; preds = %79
  %87 = tail call i32 @__overflow(ptr noundef nonnull %80, i32 noundef 32) #36, !dbg !1245
  br label %90, !dbg !1245

88:                                               ; preds = %79
  %89 = getelementptr inbounds i8, ptr %82, i64 1, !dbg !1245
  store ptr %89, ptr %81, align 8, !dbg !1245, !tbaa !1246
  store i8 32, ptr %82, align 1, !dbg !1245, !tbaa !890
  br label %90, !dbg !1245

90:                                               ; preds = %77, %86, %88
  store i1 true, ptr @print_element.printed, align 1, !dbg !1251
  %91 = load ptr, ptr @stdout, align 8, !dbg !1252, !tbaa !882
  %92 = call i32 @fputs_unlocked(ptr noundef nonnull %3, ptr noundef %91), !dbg !1252
  br label %93, !dbg !1253

93:                                               ; preds = %90, %74
  %94 = and i32 %64, 2, !dbg !1254
  %95 = icmp eq i32 %94, 0, !dbg !1254
  br i1 %95, label %113, label %96, !dbg !1256

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.utsname, ptr %3, i64 0, i32 1, !dbg !1257
  call void @llvm.dbg.value(metadata ptr %97, metadata !1226, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata ptr %97, metadata !414, metadata !DIExpression()), !dbg !1260
  %98 = load i1, ptr @print_element.printed, align 1, !dbg !1262
  br i1 %98, label %99, label %110, !dbg !1263

99:                                               ; preds = %96
  call void @llvm.dbg.value(metadata i32 32, metadata !1237, metadata !DIExpression()), !dbg !1264
  %100 = load ptr, ptr @stdout, align 8, !dbg !1266, !tbaa !882
  %101 = getelementptr inbounds %struct._IO_FILE, ptr %100, i64 0, i32 5, !dbg !1266
  %102 = load ptr, ptr %101, align 8, !dbg !1266, !tbaa !1246
  %103 = getelementptr inbounds %struct._IO_FILE, ptr %100, i64 0, i32 6, !dbg !1266
  %104 = load ptr, ptr %103, align 8, !dbg !1266, !tbaa !1249
  %105 = icmp ult ptr %102, %104, !dbg !1266
  br i1 %105, label %108, label %106, !dbg !1266, !prof !1250

106:                                              ; preds = %99
  %107 = tail call i32 @__overflow(ptr noundef nonnull %100, i32 noundef 32) #36, !dbg !1266
  br label %110, !dbg !1266

108:                                              ; preds = %99
  %109 = getelementptr inbounds i8, ptr %102, i64 1, !dbg !1266
  store ptr %109, ptr %101, align 8, !dbg !1266, !tbaa !1246
  store i8 32, ptr %102, align 1, !dbg !1266, !tbaa !890
  br label %110, !dbg !1266

110:                                              ; preds = %96, %106, %108
  store i1 true, ptr @print_element.printed, align 1, !dbg !1267
  %111 = load ptr, ptr @stdout, align 8, !dbg !1268, !tbaa !882
  %112 = call i32 @fputs_unlocked(ptr noundef nonnull %97, ptr noundef %111), !dbg !1268
  br label %113, !dbg !1269

113:                                              ; preds = %110, %93
  %114 = and i32 %64, 4, !dbg !1270
  %115 = icmp eq i32 %114, 0, !dbg !1270
  br i1 %115, label %133, label %116, !dbg !1272

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct.utsname, ptr %3, i64 0, i32 2, !dbg !1273
  call void @llvm.dbg.value(metadata ptr %117, metadata !1226, metadata !DIExpression()), !dbg !1274
  call void @llvm.dbg.value(metadata ptr %117, metadata !414, metadata !DIExpression()), !dbg !1276
  %118 = load i1, ptr @print_element.printed, align 1, !dbg !1278
  br i1 %118, label %119, label %130, !dbg !1279

119:                                              ; preds = %116
  call void @llvm.dbg.value(metadata i32 32, metadata !1237, metadata !DIExpression()), !dbg !1280
  %120 = load ptr, ptr @stdout, align 8, !dbg !1282, !tbaa !882
  %121 = getelementptr inbounds %struct._IO_FILE, ptr %120, i64 0, i32 5, !dbg !1282
  %122 = load ptr, ptr %121, align 8, !dbg !1282, !tbaa !1246
  %123 = getelementptr inbounds %struct._IO_FILE, ptr %120, i64 0, i32 6, !dbg !1282
  %124 = load ptr, ptr %123, align 8, !dbg !1282, !tbaa !1249
  %125 = icmp ult ptr %122, %124, !dbg !1282
  br i1 %125, label %128, label %126, !dbg !1282, !prof !1250

126:                                              ; preds = %119
  %127 = tail call i32 @__overflow(ptr noundef nonnull %120, i32 noundef 32) #36, !dbg !1282
  br label %130, !dbg !1282

128:                                              ; preds = %119
  %129 = getelementptr inbounds i8, ptr %122, i64 1, !dbg !1282
  store ptr %129, ptr %121, align 8, !dbg !1282, !tbaa !1246
  store i8 32, ptr %122, align 1, !dbg !1282, !tbaa !890
  br label %130, !dbg !1282

130:                                              ; preds = %116, %126, %128
  store i1 true, ptr @print_element.printed, align 1, !dbg !1283
  %131 = load ptr, ptr @stdout, align 8, !dbg !1284, !tbaa !882
  %132 = call i32 @fputs_unlocked(ptr noundef nonnull %117, ptr noundef %131), !dbg !1284
  br label %133, !dbg !1285

133:                                              ; preds = %130, %113
  %134 = and i32 %64, 8, !dbg !1286
  %135 = icmp eq i32 %134, 0, !dbg !1286
  br i1 %135, label %153, label %136, !dbg !1288

136:                                              ; preds = %133
  %137 = getelementptr inbounds %struct.utsname, ptr %3, i64 0, i32 3, !dbg !1289
  call void @llvm.dbg.value(metadata ptr %137, metadata !1226, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.value(metadata ptr %137, metadata !414, metadata !DIExpression()), !dbg !1292
  %138 = load i1, ptr @print_element.printed, align 1, !dbg !1294
  br i1 %138, label %139, label %150, !dbg !1295

139:                                              ; preds = %136
  call void @llvm.dbg.value(metadata i32 32, metadata !1237, metadata !DIExpression()), !dbg !1296
  %140 = load ptr, ptr @stdout, align 8, !dbg !1298, !tbaa !882
  %141 = getelementptr inbounds %struct._IO_FILE, ptr %140, i64 0, i32 5, !dbg !1298
  %142 = load ptr, ptr %141, align 8, !dbg !1298, !tbaa !1246
  %143 = getelementptr inbounds %struct._IO_FILE, ptr %140, i64 0, i32 6, !dbg !1298
  %144 = load ptr, ptr %143, align 8, !dbg !1298, !tbaa !1249
  %145 = icmp ult ptr %142, %144, !dbg !1298
  br i1 %145, label %148, label %146, !dbg !1298, !prof !1250

146:                                              ; preds = %139
  %147 = tail call i32 @__overflow(ptr noundef nonnull %140, i32 noundef 32) #36, !dbg !1298
  br label %150, !dbg !1298

148:                                              ; preds = %139
  %149 = getelementptr inbounds i8, ptr %142, i64 1, !dbg !1298
  store ptr %149, ptr %141, align 8, !dbg !1298, !tbaa !1246
  store i8 32, ptr %142, align 1, !dbg !1298, !tbaa !890
  br label %150, !dbg !1298

150:                                              ; preds = %136, %146, %148
  store i1 true, ptr @print_element.printed, align 1, !dbg !1299
  %151 = load ptr, ptr @stdout, align 8, !dbg !1300, !tbaa !882
  %152 = call i32 @fputs_unlocked(ptr noundef nonnull %137, ptr noundef %151), !dbg !1300
  br label %153, !dbg !1301

153:                                              ; preds = %150, %133
  %154 = and i32 %64, 16, !dbg !1302
  %155 = icmp eq i32 %154, 0, !dbg !1302
  br i1 %155, label %173, label %156, !dbg !1304

156:                                              ; preds = %153
  %157 = getelementptr inbounds %struct.utsname, ptr %3, i64 0, i32 4, !dbg !1305
  call void @llvm.dbg.value(metadata ptr %157, metadata !1226, metadata !DIExpression()), !dbg !1306
  call void @llvm.dbg.value(metadata ptr %157, metadata !414, metadata !DIExpression()), !dbg !1308
  %158 = load i1, ptr @print_element.printed, align 1, !dbg !1310
  br i1 %158, label %159, label %170, !dbg !1311

159:                                              ; preds = %156
  call void @llvm.dbg.value(metadata i32 32, metadata !1237, metadata !DIExpression()), !dbg !1312
  %160 = load ptr, ptr @stdout, align 8, !dbg !1314, !tbaa !882
  %161 = getelementptr inbounds %struct._IO_FILE, ptr %160, i64 0, i32 5, !dbg !1314
  %162 = load ptr, ptr %161, align 8, !dbg !1314, !tbaa !1246
  %163 = getelementptr inbounds %struct._IO_FILE, ptr %160, i64 0, i32 6, !dbg !1314
  %164 = load ptr, ptr %163, align 8, !dbg !1314, !tbaa !1249
  %165 = icmp ult ptr %162, %164, !dbg !1314
  br i1 %165, label %168, label %166, !dbg !1314, !prof !1250

166:                                              ; preds = %159
  %167 = tail call i32 @__overflow(ptr noundef nonnull %160, i32 noundef 32) #36, !dbg !1314
  br label %170, !dbg !1314

168:                                              ; preds = %159
  %169 = getelementptr inbounds i8, ptr %162, i64 1, !dbg !1314
  store ptr %169, ptr %161, align 8, !dbg !1314, !tbaa !1246
  store i8 32, ptr %162, align 1, !dbg !1314, !tbaa !890
  br label %170, !dbg !1314

170:                                              ; preds = %156, %166, %168
  store i1 true, ptr @print_element.printed, align 1, !dbg !1315
  %171 = load ptr, ptr @stdout, align 8, !dbg !1316, !tbaa !882
  %172 = call i32 @fputs_unlocked(ptr noundef nonnull %157, ptr noundef %171), !dbg !1316
  br label %173, !dbg !1317

173:                                              ; preds = %170, %153
  call void @llvm.lifetime.end.p0(i64 390, ptr nonnull %3) #36, !dbg !1318
  br label %174, !dbg !1319

174:                                              ; preds = %173, %62
  %175 = and i32 %64, 32, !dbg !1320
  %176 = icmp eq i32 %175, 0, !dbg !1320
  %177 = icmp eq i32 %64, -1
  %178 = or i1 %177, %176, !dbg !1321
  call void @llvm.dbg.value(metadata ptr @main.unknown, metadata !431, metadata !DIExpression()), !dbg !1322
  br i1 %178, label %195, label %179, !dbg !1321

179:                                              ; preds = %174
  call void @llvm.dbg.value(metadata ptr @main.unknown, metadata !414, metadata !DIExpression()), !dbg !1323
  %180 = load i1, ptr @print_element.printed, align 1, !dbg !1326
  br i1 %180, label %181, label %192, !dbg !1327

181:                                              ; preds = %179
  call void @llvm.dbg.value(metadata i32 32, metadata !1237, metadata !DIExpression()), !dbg !1328
  %182 = load ptr, ptr @stdout, align 8, !dbg !1330, !tbaa !882
  %183 = getelementptr inbounds %struct._IO_FILE, ptr %182, i64 0, i32 5, !dbg !1330
  %184 = load ptr, ptr %183, align 8, !dbg !1330, !tbaa !1246
  %185 = getelementptr inbounds %struct._IO_FILE, ptr %182, i64 0, i32 6, !dbg !1330
  %186 = load ptr, ptr %185, align 8, !dbg !1330, !tbaa !1249
  %187 = icmp ult ptr %184, %186, !dbg !1330
  br i1 %187, label %190, label %188, !dbg !1330, !prof !1250

188:                                              ; preds = %181
  %189 = tail call i32 @__overflow(ptr noundef nonnull %182, i32 noundef 32) #36, !dbg !1330
  br label %192, !dbg !1330

190:                                              ; preds = %181
  %191 = getelementptr inbounds i8, ptr %184, i64 1, !dbg !1330
  store ptr %191, ptr %183, align 8, !dbg !1330, !tbaa !1246
  store i8 32, ptr %184, align 1, !dbg !1330, !tbaa !890
  br label %192, !dbg !1330

192:                                              ; preds = %179, %188, %190
  store i1 true, ptr @print_element.printed, align 1, !dbg !1331
  %193 = load ptr, ptr @stdout, align 8, !dbg !1332, !tbaa !882
  %194 = tail call i32 @fputs_unlocked(ptr noundef nonnull @main.unknown, ptr noundef %193), !dbg !1332
  br label %195, !dbg !1333

195:                                              ; preds = %192, %174
  %196 = and i32 %64, 64, !dbg !1334
  %197 = icmp eq i32 %196, 0, !dbg !1334
  %198 = or i1 %177, %197, !dbg !1335
  call void @llvm.dbg.value(metadata ptr @main.unknown, metadata !434, metadata !DIExpression()), !dbg !1336
  br i1 %198, label %215, label %199, !dbg !1335

199:                                              ; preds = %195
  call void @llvm.dbg.value(metadata ptr @main.unknown, metadata !414, metadata !DIExpression()), !dbg !1337
  %200 = load i1, ptr @print_element.printed, align 1, !dbg !1340
  br i1 %200, label %201, label %212, !dbg !1341

201:                                              ; preds = %199
  call void @llvm.dbg.value(metadata i32 32, metadata !1237, metadata !DIExpression()), !dbg !1342
  %202 = load ptr, ptr @stdout, align 8, !dbg !1344, !tbaa !882
  %203 = getelementptr inbounds %struct._IO_FILE, ptr %202, i64 0, i32 5, !dbg !1344
  %204 = load ptr, ptr %203, align 8, !dbg !1344, !tbaa !1246
  %205 = getelementptr inbounds %struct._IO_FILE, ptr %202, i64 0, i32 6, !dbg !1344
  %206 = load ptr, ptr %205, align 8, !dbg !1344, !tbaa !1249
  %207 = icmp ult ptr %204, %206, !dbg !1344
  br i1 %207, label %210, label %208, !dbg !1344, !prof !1250

208:                                              ; preds = %201
  %209 = tail call i32 @__overflow(ptr noundef nonnull %202, i32 noundef 32) #36, !dbg !1344
  br label %212, !dbg !1344

210:                                              ; preds = %201
  %211 = getelementptr inbounds i8, ptr %204, i64 1, !dbg !1344
  store ptr %211, ptr %203, align 8, !dbg !1344, !tbaa !1246
  store i8 32, ptr %204, align 1, !dbg !1344, !tbaa !890
  br label %212, !dbg !1344

212:                                              ; preds = %199, %208, %210
  store i1 true, ptr @print_element.printed, align 1, !dbg !1345
  %213 = load ptr, ptr @stdout, align 8, !dbg !1346, !tbaa !882
  %214 = tail call i32 @fputs_unlocked(ptr noundef nonnull @main.unknown, ptr noundef %213), !dbg !1346
  br label %215, !dbg !1347

215:                                              ; preds = %212, %195
  %216 = and i32 %64, 128, !dbg !1348
  %217 = icmp eq i32 %216, 0, !dbg !1348
  br i1 %217, label %234, label %218, !dbg !1350

218:                                              ; preds = %215
  call void @llvm.dbg.value(metadata ptr @.str.26, metadata !414, metadata !DIExpression()), !dbg !1351
  %219 = load i1, ptr @print_element.printed, align 1, !dbg !1353
  br i1 %219, label %220, label %231, !dbg !1354

220:                                              ; preds = %218
  call void @llvm.dbg.value(metadata i32 32, metadata !1237, metadata !DIExpression()), !dbg !1355
  %221 = load ptr, ptr @stdout, align 8, !dbg !1357, !tbaa !882
  %222 = getelementptr inbounds %struct._IO_FILE, ptr %221, i64 0, i32 5, !dbg !1357
  %223 = load ptr, ptr %222, align 8, !dbg !1357, !tbaa !1246
  %224 = getelementptr inbounds %struct._IO_FILE, ptr %221, i64 0, i32 6, !dbg !1357
  %225 = load ptr, ptr %224, align 8, !dbg !1357, !tbaa !1249
  %226 = icmp ult ptr %223, %225, !dbg !1357
  br i1 %226, label %229, label %227, !dbg !1357, !prof !1250

227:                                              ; preds = %220
  %228 = tail call i32 @__overflow(ptr noundef nonnull %221, i32 noundef 32) #36, !dbg !1357
  br label %231, !dbg !1357

229:                                              ; preds = %220
  %230 = getelementptr inbounds i8, ptr %223, i64 1, !dbg !1357
  store ptr %230, ptr %222, align 8, !dbg !1357, !tbaa !1246
  store i8 32, ptr %223, align 1, !dbg !1357, !tbaa !890
  br label %231, !dbg !1357

231:                                              ; preds = %218, %227, %229
  store i1 true, ptr @print_element.printed, align 1, !dbg !1358
  %232 = load ptr, ptr @stdout, align 8, !dbg !1359, !tbaa !882
  %233 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.26, ptr noundef %232), !dbg !1359
  br label %234, !dbg !1360

234:                                              ; preds = %231, %215
  call void @llvm.dbg.value(metadata i32 10, metadata !1237, metadata !DIExpression()), !dbg !1361
  %235 = load ptr, ptr @stdout, align 8, !dbg !1363, !tbaa !882
  %236 = getelementptr inbounds %struct._IO_FILE, ptr %235, i64 0, i32 5, !dbg !1363
  %237 = load ptr, ptr %236, align 8, !dbg !1363, !tbaa !1246
  %238 = getelementptr inbounds %struct._IO_FILE, ptr %235, i64 0, i32 6, !dbg !1363
  %239 = load ptr, ptr %238, align 8, !dbg !1363, !tbaa !1249
  %240 = icmp ult ptr %237, %239, !dbg !1363
  br i1 %240, label %243, label %241, !dbg !1363, !prof !1250

241:                                              ; preds = %234
  %242 = tail call i32 @__overflow(ptr noundef nonnull %235, i32 noundef 10) #36, !dbg !1363
  br label %245, !dbg !1363

243:                                              ; preds = %234
  %244 = getelementptr inbounds i8, ptr %237, i64 1, !dbg !1363
  store ptr %244, ptr %236, align 8, !dbg !1363, !tbaa !1246
  store i8 10, ptr %237, align 1, !dbg !1363, !tbaa !890
  br label %245, !dbg !1363

245:                                              ; preds = %241, %243
  ret i32 0, !dbg !1364
}

; Function Attrs: nounwind
declare !dbg !1365 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1368 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1369 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1372 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #12

; Function Attrs: nofree nounwind
declare !dbg !1378 noundef i32 @uname(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1382 ptr @__errno_location() local_unnamed_addr #10

declare !dbg !1386 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #13 !dbg !1389 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1391, metadata !DIExpression()), !dbg !1392
  store ptr %0, ptr @file_name, align 8, !dbg !1393, !tbaa !882
  ret void, !dbg !1394
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #13 !dbg !1395 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1399, metadata !DIExpression()), !dbg !1400
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1401, !tbaa !1402
  ret void, !dbg !1404
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #11 !dbg !1405 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1410, !tbaa !882
  %2 = tail call i32 @close_stream(ptr noundef %1) #36, !dbg !1411
  %3 = icmp eq i32 %2, 0, !dbg !1412
  br i1 %3, label %22, label %4, !dbg !1413

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1414, !tbaa !1402, !range !1415, !noundef !966
  %6 = icmp eq i8 %5, 0, !dbg !1414
  br i1 %6, label %11, label %7, !dbg !1416

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #39, !dbg !1417
  %9 = load i32, ptr %8, align 4, !dbg !1417, !tbaa !981
  %10 = icmp eq i32 %9, 32, !dbg !1418
  br i1 %10, label %22, label %11, !dbg !1419

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1.25, i32 noundef 5) #36, !dbg !1420
  call void @llvm.dbg.value(metadata ptr %12, metadata !1407, metadata !DIExpression()), !dbg !1421
  %13 = load ptr, ptr @file_name, align 8, !dbg !1422, !tbaa !882
  %14 = icmp eq ptr %13, null, !dbg !1422
  %15 = tail call ptr @__errno_location() #39, !dbg !1424
  %16 = load i32, ptr %15, align 4, !dbg !1424, !tbaa !981
  br i1 %14, label %19, label %17, !dbg !1425

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #36, !dbg !1426
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.26, ptr noundef %18, ptr noundef %12) #36, !dbg !1426
  br label %20, !dbg !1426

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.27, ptr noundef %12) #36, !dbg !1427
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1428, !tbaa !981
  tail call void @_exit(i32 noundef %21) #38, !dbg !1429
  unreachable, !dbg !1429

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1430, !tbaa !882
  %24 = tail call i32 @close_stream(ptr noundef %23) #36, !dbg !1432
  %25 = icmp eq i32 %24, 0, !dbg !1433
  br i1 %25, label %28, label %26, !dbg !1434

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1435, !tbaa !981
  tail call void @_exit(i32 noundef %27) #38, !dbg !1436
  unreachable, !dbg !1436

28:                                               ; preds = %22
  ret void, !dbg !1437
}

; Function Attrs: noreturn
declare !dbg !1438 void @_exit(i32 noundef) local_unnamed_addr #14

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #15 !dbg !1440 {
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1444, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata i32 %1, metadata !1445, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata ptr %2, metadata !1446, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1447, metadata !DIExpression()), !dbg !1449
  tail call fastcc void @flush_stdout(), !dbg !1450
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1451, !tbaa !882
  %7 = icmp eq ptr %6, null, !dbg !1451
  br i1 %7, label %9, label %8, !dbg !1453

8:                                                ; preds = %4
  tail call void %6() #36, !dbg !1454
  br label %13, !dbg !1454

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1455, !tbaa !882
  %11 = tail call ptr @getprogname() #37, !dbg !1455
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.80, ptr noundef %11) #36, !dbg !1455
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #36, !dbg !1457
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1457, !tbaa.struct !1458
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1457
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #36, !dbg !1457
  ret void, !dbg !1459
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #11 !dbg !1460 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1462, metadata !DIExpression()), !dbg !1463
  call void @llvm.dbg.value(metadata i32 1, metadata !1464, metadata !DIExpression()), !dbg !1467
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #36, !dbg !1470
  %2 = icmp slt i32 %1, 0, !dbg !1471
  br i1 %2, label %6, label %3, !dbg !1472

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1473, !tbaa !882
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #36, !dbg !1473
  br label %6, !dbg !1473

6:                                                ; preds = %3, %0
  ret void, !dbg !1474
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #16

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #11 !dbg !1475 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1477, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i32 %1, metadata !1478, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata ptr %2, metadata !1479, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1480, metadata !DIExpression()), !dbg !1482
  %7 = load ptr, ptr @stderr, align 8, !dbg !1483, !tbaa !882
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #36, !dbg !1484, !noalias !1528
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1532
  call void @llvm.dbg.value(metadata ptr %7, metadata !1524, metadata !DIExpression()), !dbg !1533
  call void @llvm.dbg.value(metadata ptr %2, metadata !1525, metadata !DIExpression()), !dbg !1533
  call void @llvm.dbg.declare(metadata ptr poison, metadata !1526, metadata !DIExpression()), !dbg !1534
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #36, !dbg !1484
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #36, !dbg !1484, !noalias !1528
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1535, !tbaa !981
  %10 = add i32 %9, 1, !dbg !1535
  store i32 %10, ptr @error_message_count, align 4, !dbg !1535, !tbaa !981
  %11 = icmp eq i32 %1, 0, !dbg !1536
  br i1 %11, label %21, label %12, !dbg !1538

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1539, metadata !DIExpression()), !dbg !1547
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #36, !dbg !1549
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1543, metadata !DIExpression()), !dbg !1550
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #36, !dbg !1551
  call void @llvm.dbg.value(metadata ptr %13, metadata !1542, metadata !DIExpression()), !dbg !1547
  %14 = icmp eq ptr %13, null, !dbg !1552
  br i1 %14, label %15, label %17, !dbg !1554

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.81, ptr noundef nonnull @.str.5.82, i32 noundef 5) #36, !dbg !1555
  call void @llvm.dbg.value(metadata ptr %16, metadata !1542, metadata !DIExpression()), !dbg !1547
  br label %17, !dbg !1556

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1547
  call void @llvm.dbg.value(metadata ptr %18, metadata !1542, metadata !DIExpression()), !dbg !1547
  %19 = load ptr, ptr @stderr, align 8, !dbg !1557, !tbaa !882
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.83, ptr noundef %18) #36, !dbg !1557
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #36, !dbg !1558
  br label %21, !dbg !1559

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !1560, !tbaa !882
  call void @llvm.dbg.value(metadata i32 10, metadata !1561, metadata !DIExpression()), !dbg !1567
  call void @llvm.dbg.value(metadata ptr %22, metadata !1566, metadata !DIExpression()), !dbg !1567
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !1569
  %24 = load ptr, ptr %23, align 8, !dbg !1569, !tbaa !1246
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !1569
  %26 = load ptr, ptr %25, align 8, !dbg !1569, !tbaa !1249
  %27 = icmp ult ptr %24, %26, !dbg !1569
  br i1 %27, label %30, label %28, !dbg !1569, !prof !1250

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #36, !dbg !1569
  br label %32, !dbg !1569

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1569
  store ptr %31, ptr %23, align 8, !dbg !1569, !tbaa !1246
  store i8 10, ptr %24, align 1, !dbg !1569, !tbaa !890
  br label %32, !dbg !1569

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !1570, !tbaa !882
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #36, !dbg !1570
  %35 = icmp eq i32 %0, 0, !dbg !1571
  br i1 %35, label %37, label %36, !dbg !1573

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #38, !dbg !1574
  unreachable, !dbg !1574

37:                                               ; preds = %32
  ret void, !dbg !1575
}

declare !dbg !1576 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1579 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1582 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1585 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #11 !dbg !1589 {
  %4 = alloca %struct.__va_list, align 8
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1593, metadata !DIExpression()), !dbg !1597
  call void @llvm.dbg.value(metadata i32 %1, metadata !1594, metadata !DIExpression()), !dbg !1597
  call void @llvm.dbg.value(metadata ptr %2, metadata !1595, metadata !DIExpression()), !dbg !1597
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #36, !dbg !1598
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1596, metadata !DIExpression()), !dbg !1599
  call void @llvm.va_start(ptr nonnull %4), !dbg !1600
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #36, !dbg !1601
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1601, !tbaa.struct !1458
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #41, !dbg !1601
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #36, !dbg !1601
  call void @llvm.va_end(ptr nonnull %4), !dbg !1602
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #36, !dbg !1603
  ret void, !dbg !1603
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #15 !dbg !477 {
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !494, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata i32 %1, metadata !495, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata ptr %2, metadata !496, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata i32 %3, metadata !497, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata ptr %4, metadata !498, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.declare(metadata ptr %5, metadata !499, metadata !DIExpression()), !dbg !1605
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !1606, !tbaa !981
  %9 = icmp eq i32 %8, 0, !dbg !1606
  br i1 %9, label %24, label %10, !dbg !1608

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1609, !tbaa !981
  %12 = icmp eq i32 %11, %3, !dbg !1612
  br i1 %12, label %13, label %23, !dbg !1613

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1614, !tbaa !882
  %15 = icmp eq ptr %14, %2, !dbg !1615
  br i1 %15, label %37, label %16, !dbg !1616

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !1617
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !1618
  br i1 %19, label %20, label %23, !dbg !1618

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !1619
  %22 = icmp eq i32 %21, 0, !dbg !1620
  br i1 %22, label %37, label %23, !dbg !1621

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1622, !tbaa !882
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1623, !tbaa !981
  br label %24, !dbg !1624

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1625
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !1626, !tbaa !882
  %26 = icmp eq ptr %25, null, !dbg !1626
  br i1 %26, label %28, label %27, !dbg !1628

27:                                               ; preds = %24
  tail call void %25() #36, !dbg !1629
  br label %32, !dbg !1629

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !1630, !tbaa !882
  %30 = tail call ptr @getprogname() #37, !dbg !1630
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.86, ptr noundef %30) #36, !dbg !1630
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !1632, !tbaa !882
  %34 = icmp eq ptr %2, null, !dbg !1632
  %35 = select i1 %34, ptr @.str.3.87, ptr @.str.2.88, !dbg !1632
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #36, !dbg !1632
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #36, !dbg !1633
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1633, !tbaa.struct !1458
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !1633
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #36, !dbg !1633
  br label %37, !dbg !1634

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !1634
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #11 !dbg !1635 {
  %6 = alloca %struct.__va_list, align 8
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1639, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i32 %1, metadata !1640, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata ptr %2, metadata !1641, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i32 %3, metadata !1642, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata ptr %4, metadata !1643, metadata !DIExpression()), !dbg !1645
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #36, !dbg !1646
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1644, metadata !DIExpression()), !dbg !1647
  call void @llvm.va_start(ptr nonnull %6), !dbg !1648
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #36, !dbg !1649
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1649, !tbaa.struct !1458
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #41, !dbg !1649
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #36, !dbg !1649
  call void @llvm.va_end(ptr nonnull %6), !dbg !1650
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #36, !dbg !1651
  ret void, !dbg !1651
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #18 !dbg !1652 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1655, !tbaa !882
  ret ptr %1, !dbg !1656
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #19 !dbg !1657 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1659, metadata !DIExpression()), !dbg !1662
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #37, !dbg !1663
  call void @llvm.dbg.value(metadata ptr %2, metadata !1660, metadata !DIExpression()), !dbg !1662
  %3 = icmp eq ptr %2, null, !dbg !1664
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1664
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1664
  call void @llvm.dbg.value(metadata ptr %5, metadata !1661, metadata !DIExpression()), !dbg !1662
  %6 = ptrtoint ptr %5 to i64, !dbg !1665
  %7 = ptrtoint ptr %0 to i64, !dbg !1665
  %8 = sub i64 %6, %7, !dbg !1665
  %9 = icmp sgt i64 %8, 6, !dbg !1667
  br i1 %9, label %10, label %19, !dbg !1668

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1669
  call void @llvm.dbg.value(metadata ptr %11, metadata !1670, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata ptr @.str.97, metadata !1675, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i64 7, metadata !1676, metadata !DIExpression()), !dbg !1677
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.97, i64 7), !dbg !1679
  %13 = icmp eq i32 %12, 0, !dbg !1680
  br i1 %13, label %14, label %19, !dbg !1681

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !1659, metadata !DIExpression()), !dbg !1662
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.98, i64 noundef 3) #37, !dbg !1682
  %16 = icmp eq i32 %15, 0, !dbg !1685
  %17 = select i1 %16, i64 3, i64 0, !dbg !1686
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !1686
  br label %19, !dbg !1686

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1662
  call void @llvm.dbg.value(metadata ptr %21, metadata !1661, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata ptr %20, metadata !1659, metadata !DIExpression()), !dbg !1662
  store ptr %20, ptr @program_name, align 8, !dbg !1687, !tbaa !882
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1688, !tbaa !882
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1689, !tbaa !882
  ret void, !dbg !1690
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1691 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #11 !dbg !536 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !543, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata ptr %1, metadata !544, metadata !DIExpression()), !dbg !1692
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #36, !dbg !1693
  call void @llvm.dbg.value(metadata ptr %5, metadata !545, metadata !DIExpression()), !dbg !1692
  %6 = icmp eq ptr %5, %0, !dbg !1694
  br i1 %6, label %7, label %14, !dbg !1696

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #36, !dbg !1697
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #36, !dbg !1698
  call void @llvm.dbg.declare(metadata ptr %4, metadata !551, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata ptr %4, metadata !1700, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata ptr %4, metadata !1709, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i32 0, metadata !1715, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 8, metadata !1716, metadata !DIExpression()), !dbg !1717
  store i64 0, ptr %4, align 8, !dbg !1719
  call void @llvm.dbg.value(metadata ptr %3, metadata !546, metadata !DIExpression(DW_OP_deref)), !dbg !1692
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #36, !dbg !1720
  %9 = icmp eq i64 %8, 2, !dbg !1722
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !546, metadata !DIExpression()), !dbg !1692
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1723
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1692
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #36, !dbg !1724
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #36, !dbg !1724
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1692
  ret ptr %15, !dbg !1724
}

; Function Attrs: nounwind
declare !dbg !1725 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #11 !dbg !1731 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1736, metadata !DIExpression()), !dbg !1739
  %2 = tail call ptr @__errno_location() #39, !dbg !1740
  %3 = load i32, ptr %2, align 4, !dbg !1740, !tbaa !981
  call void @llvm.dbg.value(metadata i32 %3, metadata !1737, metadata !DIExpression()), !dbg !1739
  %4 = icmp eq ptr %0, null, !dbg !1741
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1741
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #42, !dbg !1742
  call void @llvm.dbg.value(metadata ptr %6, metadata !1738, metadata !DIExpression()), !dbg !1739
  store i32 %3, ptr %2, align 4, !dbg !1743, !tbaa !981
  ret ptr %6, !dbg !1744
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #20 !dbg !1745 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1751, metadata !DIExpression()), !dbg !1752
  %2 = icmp eq ptr %0, null, !dbg !1753
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1753
  %4 = load i32, ptr %3, align 8, !dbg !1754, !tbaa !1755
  ret i32 %4, !dbg !1757
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1758 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1762, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata i32 %1, metadata !1763, metadata !DIExpression()), !dbg !1764
  %3 = icmp eq ptr %0, null, !dbg !1765
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1765
  store i32 %1, ptr %4, align 8, !dbg !1766, !tbaa !1755
  ret void, !dbg !1767
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #22 !dbg !1768 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1772, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8 %1, metadata !1773, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i32 %2, metadata !1774, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8 %1, metadata !1775, metadata !DIExpression()), !dbg !1780
  %4 = icmp eq ptr %0, null, !dbg !1781
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1781
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1782
  %7 = lshr i8 %1, 5, !dbg !1783
  %8 = zext i8 %7 to i64, !dbg !1783
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1784
  call void @llvm.dbg.value(metadata ptr %9, metadata !1776, metadata !DIExpression()), !dbg !1780
  %10 = and i8 %1, 31, !dbg !1785
  %11 = zext i8 %10 to i32, !dbg !1785
  call void @llvm.dbg.value(metadata i32 %11, metadata !1778, metadata !DIExpression()), !dbg !1780
  %12 = load i32, ptr %9, align 4, !dbg !1786, !tbaa !981
  %13 = lshr i32 %12, %11, !dbg !1787
  %14 = and i32 %13, 1, !dbg !1788
  call void @llvm.dbg.value(metadata i32 %14, metadata !1779, metadata !DIExpression()), !dbg !1780
  %15 = xor i32 %13, %2, !dbg !1789
  %16 = and i32 %15, 1, !dbg !1789
  %17 = shl nuw i32 %16, %11, !dbg !1790
  %18 = xor i32 %17, %12, !dbg !1791
  store i32 %18, ptr %9, align 4, !dbg !1791, !tbaa !981
  ret i32 %14, !dbg !1792
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #22 !dbg !1793 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1797, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.value(metadata i32 %1, metadata !1798, metadata !DIExpression()), !dbg !1800
  %3 = icmp eq ptr %0, null, !dbg !1801
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1803
  call void @llvm.dbg.value(metadata ptr %4, metadata !1797, metadata !DIExpression()), !dbg !1800
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1804
  %6 = load i32, ptr %5, align 4, !dbg !1804, !tbaa !1805
  call void @llvm.dbg.value(metadata i32 %6, metadata !1799, metadata !DIExpression()), !dbg !1800
  store i32 %1, ptr %5, align 4, !dbg !1806, !tbaa !1805
  ret i32 %6, !dbg !1807
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #11 !dbg !1808 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1812, metadata !DIExpression()), !dbg !1815
  call void @llvm.dbg.value(metadata ptr %1, metadata !1813, metadata !DIExpression()), !dbg !1815
  call void @llvm.dbg.value(metadata ptr %2, metadata !1814, metadata !DIExpression()), !dbg !1815
  %4 = icmp eq ptr %0, null, !dbg !1816
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1818
  call void @llvm.dbg.value(metadata ptr %5, metadata !1812, metadata !DIExpression()), !dbg !1815
  store i32 10, ptr %5, align 8, !dbg !1819, !tbaa !1755
  %6 = icmp ne ptr %1, null, !dbg !1820
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1822
  br i1 %8, label %10, label %9, !dbg !1822

9:                                                ; preds = %3
  tail call void @abort() #38, !dbg !1823
  unreachable, !dbg !1823

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1824
  store ptr %1, ptr %11, align 8, !dbg !1825, !tbaa !1826
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1827
  store ptr %2, ptr %12, align 8, !dbg !1828, !tbaa !1829
  ret void, !dbg !1830
}

; Function Attrs: noreturn nounwind
declare !dbg !1831 void @abort() local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #11 !dbg !1832 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1836, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i64 %1, metadata !1837, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata ptr %2, metadata !1838, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i64 %3, metadata !1839, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata ptr %4, metadata !1840, metadata !DIExpression()), !dbg !1844
  %6 = icmp eq ptr %4, null, !dbg !1845
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1845
  call void @llvm.dbg.value(metadata ptr %7, metadata !1841, metadata !DIExpression()), !dbg !1844
  %8 = tail call ptr @__errno_location() #39, !dbg !1846
  %9 = load i32, ptr %8, align 4, !dbg !1846, !tbaa !981
  call void @llvm.dbg.value(metadata i32 %9, metadata !1842, metadata !DIExpression()), !dbg !1844
  %10 = load i32, ptr %7, align 8, !dbg !1847, !tbaa !1755
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1848
  %12 = load i32, ptr %11, align 4, !dbg !1848, !tbaa !1805
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1849
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1850
  %15 = load ptr, ptr %14, align 8, !dbg !1850, !tbaa !1826
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1851
  %17 = load ptr, ptr %16, align 8, !dbg !1851, !tbaa !1829
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1852
  call void @llvm.dbg.value(metadata i64 %18, metadata !1843, metadata !DIExpression()), !dbg !1844
  store i32 %9, ptr %8, align 4, !dbg !1853, !tbaa !981
  ret i64 %18, !dbg !1854
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #11 !dbg !1855 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !1861, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 %1, metadata !1862, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata ptr %2, metadata !1863, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 %3, metadata !1864, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i32 %4, metadata !1865, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i32 %5, metadata !1866, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata ptr %6, metadata !1867, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata ptr %7, metadata !1868, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata ptr %8, metadata !1869, metadata !DIExpression()), !dbg !1923
  %16 = tail call i64 @__ctype_get_mb_cur_max() #36, !dbg !1924
  %17 = icmp eq i64 %16, 1, !dbg !1925
  call void @llvm.dbg.value(metadata i1 %17, metadata !1870, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1923
  call void @llvm.dbg.value(metadata i64 0, metadata !1871, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 0, metadata !1872, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata ptr null, metadata !1873, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 0, metadata !1874, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i8 0, metadata !1875, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i32 %5, metadata !1876, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1923
  call void @llvm.dbg.value(metadata i8 0, metadata !1877, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i8 1, metadata !1878, metadata !DIExpression()), !dbg !1923
  %18 = and i32 %5, 2, !dbg !1926
  %19 = icmp ne i32 %18, 0, !dbg !1926
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !1926

27:                                               ; preds = %591, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %591 ]
  %29 = phi ptr [ %7, %9 ], [ %104, %591 ]
  %30 = phi ptr [ %8, %9 ], [ %105, %591 ]
  %31 = phi i64 [ %3, %9 ], [ %123, %591 ]
  %32 = phi i64 [ 0, %9 ], [ %125, %591 ], !dbg !1927
  %33 = phi ptr [ null, %9 ], [ %107, %591 ], !dbg !1928
  %34 = phi i64 [ 0, %9 ], [ %108, %591 ], !dbg !1929
  %35 = phi i1 [ false, %9 ], [ %109, %591 ]
  %36 = phi i1 [ %19, %9 ], [ false, %591 ]
  %37 = phi i1 [ false, %9 ], [ %126, %591 ]
  %38 = phi i1 [ true, %9 ], [ false, %591 ]
  %39 = phi i64 [ %1, %9 ], [ %125, %591 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1862, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i8 poison, metadata !1878, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i8 poison, metadata !1877, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i8 poison, metadata !1876, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i8 poison, metadata !1875, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 %34, metadata !1874, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata ptr %33, metadata !1873, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 %32, metadata !1872, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 0, metadata !1871, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 %31, metadata !1864, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata ptr %30, metadata !1869, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata ptr %29, metadata !1868, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i32 %28, metadata !1865, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.label(metadata !1916), !dbg !1930
  call void @llvm.dbg.value(metadata i8 0, metadata !1879, metadata !DIExpression()), !dbg !1923
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
  ], !dbg !1931

40:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1876, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i32 5, metadata !1865, metadata !DIExpression()), !dbg !1923
  br label %102, !dbg !1932

41:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1876, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i32 5, metadata !1865, metadata !DIExpression()), !dbg !1923
  br i1 %36, label %102, label %42, !dbg !1932

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !1933
  br i1 %43, label %102, label %44, !dbg !1937

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !1933, !tbaa !890
  br label %102, !dbg !1933

45:                                               ; preds = %27, %27
  call void @llvm.dbg.value(metadata ptr @.str.11.111, metadata !649, metadata !DIExpression()), !dbg !1938
  call void @llvm.dbg.value(metadata i32 %28, metadata !650, metadata !DIExpression()), !dbg !1938
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.112, ptr noundef nonnull @.str.11.111, i32 noundef 5) #36, !dbg !1942
  call void @llvm.dbg.value(metadata ptr %46, metadata !651, metadata !DIExpression()), !dbg !1938
  %47 = icmp eq ptr %46, @.str.11.111, !dbg !1943
  br i1 %47, label %48, label %57, !dbg !1945

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #36, !dbg !1946
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #36, !dbg !1947
  call void @llvm.dbg.declare(metadata ptr %13, metadata !653, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata ptr %13, metadata !1949, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata ptr %13, metadata !1957, metadata !DIExpression()), !dbg !1962
  call void @llvm.dbg.value(metadata i32 0, metadata !1960, metadata !DIExpression()), !dbg !1962
  call void @llvm.dbg.value(metadata i64 8, metadata !1961, metadata !DIExpression()), !dbg !1962
  store i64 0, ptr %13, align 8, !dbg !1964
  call void @llvm.dbg.value(metadata ptr %12, metadata !652, metadata !DIExpression(DW_OP_deref)), !dbg !1938
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #36, !dbg !1965
  %50 = icmp eq i64 %49, 3, !dbg !1967
  %51 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %51, metadata !652, metadata !DIExpression()), !dbg !1938
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !1968
  %54 = icmp eq i32 %28, 9, !dbg !1968
  %55 = select i1 %54, ptr @.str.10.113, ptr @.str.12.114, !dbg !1968
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !1968
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #36, !dbg !1969
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #36, !dbg !1969
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !1938
  call void @llvm.dbg.value(metadata ptr %58, metadata !1868, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata ptr @.str.12.114, metadata !649, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i32 %28, metadata !650, metadata !DIExpression()), !dbg !1970
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.112, ptr noundef nonnull @.str.12.114, i32 noundef 5) #36, !dbg !1972
  call void @llvm.dbg.value(metadata ptr %59, metadata !651, metadata !DIExpression()), !dbg !1970
  %60 = icmp eq ptr %59, @.str.12.114, !dbg !1973
  br i1 %60, label %61, label %70, !dbg !1974

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #36, !dbg !1975
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #36, !dbg !1976
  call void @llvm.dbg.declare(metadata ptr %11, metadata !653, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata ptr %11, metadata !1949, metadata !DIExpression()), !dbg !1978
  call void @llvm.dbg.value(metadata ptr %11, metadata !1957, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata i32 0, metadata !1960, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata i64 8, metadata !1961, metadata !DIExpression()), !dbg !1980
  store i64 0, ptr %11, align 8, !dbg !1982
  call void @llvm.dbg.value(metadata ptr %10, metadata !652, metadata !DIExpression(DW_OP_deref)), !dbg !1970
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #36, !dbg !1983
  %63 = icmp eq i64 %62, 3, !dbg !1984
  %64 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %64, metadata !652, metadata !DIExpression()), !dbg !1970
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !1985
  %67 = icmp eq i32 %28, 9, !dbg !1985
  %68 = select i1 %67, ptr @.str.10.113, ptr @.str.12.114, !dbg !1985
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !1985
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #36, !dbg !1986
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #36, !dbg !1986
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  call void @llvm.dbg.value(metadata ptr %72, metadata !1869, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata ptr %71, metadata !1868, metadata !DIExpression()), !dbg !1923
  br i1 %36, label %88, label %73, !dbg !1987

73:                                               ; preds = %70
  call void @llvm.dbg.value(metadata ptr %71, metadata !1880, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata i64 0, metadata !1871, metadata !DIExpression()), !dbg !1923
  %74 = load i8, ptr %71, align 1, !dbg !1989, !tbaa !890
  %75 = icmp eq i8 %74, 0, !dbg !1991
  br i1 %75, label %88, label %76, !dbg !1991

76:                                               ; preds = %73, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %73 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %73 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %73 ]
  call void @llvm.dbg.value(metadata ptr %78, metadata !1880, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata i64 %79, metadata !1871, metadata !DIExpression()), !dbg !1923
  %80 = icmp ult i64 %79, %39, !dbg !1992
  br i1 %80, label %81, label %83, !dbg !1995

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !1992
  store i8 %77, ptr %82, align 1, !dbg !1992, !tbaa !890
  br label %83, !dbg !1992

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !1995
  call void @llvm.dbg.value(metadata i64 %84, metadata !1871, metadata !DIExpression()), !dbg !1923
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !1996
  call void @llvm.dbg.value(metadata ptr %85, metadata !1880, metadata !DIExpression()), !dbg !1988
  %86 = load i8, ptr %85, align 1, !dbg !1989, !tbaa !890
  %87 = icmp eq i8 %86, 0, !dbg !1991
  br i1 %87, label %88, label %76, !dbg !1991, !llvm.loop !1997

88:                                               ; preds = %83, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %84, %83 ], !dbg !1999
  call void @llvm.dbg.value(metadata i64 %89, metadata !1871, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i8 1, metadata !1875, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata ptr %72, metadata !1873, metadata !DIExpression()), !dbg !1923
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #37, !dbg !2000
  call void @llvm.dbg.value(metadata i64 %90, metadata !1874, metadata !DIExpression()), !dbg !1923
  br label %102, !dbg !2001

91:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1875, metadata !DIExpression()), !dbg !1923
  br label %93, !dbg !2002

92:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1876, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i8 poison, metadata !1875, metadata !DIExpression()), !dbg !1923
  br i1 %36, label %102, label %96, !dbg !2003

93:                                               ; preds = %91, %27
  %94 = phi i1 [ true, %91 ], [ %35, %27 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1876, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i8 poison, metadata !1875, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i32 2, metadata !1865, metadata !DIExpression()), !dbg !1923
  br label %102, !dbg !2004

95:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1876, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i8 poison, metadata !1875, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i32 2, metadata !1865, metadata !DIExpression()), !dbg !1923
  br i1 %36, label %102, label %96, !dbg !2004

96:                                               ; preds = %92, %95
  %97 = phi i1 [ %35, %95 ], [ true, %92 ]
  %98 = icmp eq i64 %39, 0, !dbg !2005
  br i1 %98, label %102, label %99, !dbg !2009

99:                                               ; preds = %96
  store i8 39, ptr %0, align 1, !dbg !2005, !tbaa !890
  br label %102, !dbg !2005

100:                                              ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1876, metadata !DIExpression()), !dbg !1923
  br label %102, !dbg !2010

101:                                              ; preds = %27
  call void @abort() #38, !dbg !2011
  unreachable, !dbg !2011

102:                                              ; preds = %92, %93, %40, %95, %99, %96, %27, %41, %44, %42, %100, %88
  %103 = phi i32 [ 0, %100 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %96 ], [ 2, %99 ], [ 2, %95 ], [ 5, %40 ], [ 2, %93 ], [ 2, %92 ]
  %104 = phi ptr [ %29, %100 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %96 ], [ %29, %99 ], [ %29, %95 ], [ %29, %40 ], [ %29, %93 ], [ %29, %92 ]
  %105 = phi ptr [ %30, %100 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %96 ], [ %30, %99 ], [ %30, %95 ], [ %30, %40 ], [ %30, %93 ], [ %30, %92 ]
  %106 = phi i64 [ 0, %100 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %96 ], [ 1, %99 ], [ 0, %95 ], [ 0, %40 ], [ 0, %93 ], [ 0, %92 ], !dbg !1999
  %107 = phi ptr [ %33, %100 ], [ %72, %88 ], [ @.str.10.113, %42 ], [ @.str.10.113, %44 ], [ @.str.10.113, %41 ], [ %33, %27 ], [ @.str.12.114, %96 ], [ @.str.12.114, %99 ], [ @.str.12.114, %95 ], [ @.str.10.113, %40 ], [ @.str.12.114, %93 ], [ @.str.12.114, %92 ], !dbg !1923
  %108 = phi i64 [ %34, %100 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %96 ], [ 1, %99 ], [ 1, %95 ], [ 1, %40 ], [ 1, %93 ], [ 1, %92 ], !dbg !1923
  %109 = phi i1 [ %35, %100 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %97, %96 ], [ %97, %99 ], [ %35, %95 ], [ true, %40 ], [ %94, %93 ], [ %35, %92 ]
  %110 = phi i1 [ false, %100 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %96 ], [ false, %99 ], [ true, %95 ], [ true, %40 ], [ true, %93 ], [ true, %92 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1876, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i8 poison, metadata !1875, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 %108, metadata !1874, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata ptr %107, metadata !1873, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 %106, metadata !1871, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata ptr %105, metadata !1869, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata ptr %104, metadata !1868, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i32 %103, metadata !1865, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 0, metadata !1885, metadata !DIExpression()), !dbg !2012
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
  br label %122, !dbg !2013

122:                                              ; preds = %569, %102
  %123 = phi i64 [ %31, %102 ], [ %570, %569 ]
  %124 = phi i64 [ %106, %102 ], [ %571, %569 ], !dbg !1999
  %125 = phi i64 [ %32, %102 ], [ %572, %569 ], !dbg !1927
  %126 = phi i1 [ %37, %102 ], [ %573, %569 ]
  %127 = phi i1 [ %38, %102 ], [ %574, %569 ]
  %128 = phi i1 [ false, %102 ], [ %575, %569 ]
  %129 = phi i64 [ 0, %102 ], [ %578, %569 ], !dbg !2014
  %130 = phi i64 [ %39, %102 ], [ %577, %569 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !1862, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 %129, metadata !1885, metadata !DIExpression()), !dbg !2012
  call void @llvm.dbg.value(metadata i8 poison, metadata !1879, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i8 poison, metadata !1878, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i8 poison, metadata !1877, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 %125, metadata !1872, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 %124, metadata !1871, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 %123, metadata !1864, metadata !DIExpression()), !dbg !1923
  %131 = icmp eq i64 %123, -1, !dbg !2015
  br i1 %131, label %132, label %136, !dbg !2016

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2017
  %134 = load i8, ptr %133, align 1, !dbg !2017, !tbaa !890
  %135 = icmp eq i8 %134, 0, !dbg !2018
  br i1 %135, label %579, label %138, !dbg !2019

136:                                              ; preds = %122
  %137 = icmp eq i64 %129, %123, !dbg !2020
  br i1 %137, label %579, label %138, !dbg !2019

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !1887, metadata !DIExpression()), !dbg !2021
  call void @llvm.dbg.value(metadata i8 0, metadata !1890, metadata !DIExpression()), !dbg !2021
  call void @llvm.dbg.value(metadata i8 0, metadata !1891, metadata !DIExpression()), !dbg !2021
  br i1 %114, label %139, label %152, !dbg !2022

139:                                              ; preds = %138
  %140 = add i64 %129, %108, !dbg !2024
  %141 = select i1 %131, i1 %115, i1 false, !dbg !2025
  br i1 %141, label %142, label %144, !dbg !2025

142:                                              ; preds = %139
  %143 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !2026
  call void @llvm.dbg.value(metadata i64 %143, metadata !1864, metadata !DIExpression()), !dbg !1923
  br label %144, !dbg !2027

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %123, %139 ], !dbg !2027
  call void @llvm.dbg.value(metadata i64 %145, metadata !1864, metadata !DIExpression()), !dbg !1923
  %146 = icmp ugt i64 %140, %145, !dbg !2028
  br i1 %146, label %152, label %147, !dbg !2029

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2030
  call void @llvm.dbg.value(metadata ptr %148, metadata !2031, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata ptr %107, metadata !2034, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i64 %108, metadata !2035, metadata !DIExpression()), !dbg !2036
  %149 = call i32 @bcmp(ptr %148, ptr %107, i64 %108), !dbg !2038
  %150 = icmp eq i32 %149, 0, !dbg !2039
  %151 = and i1 %150, %110, !dbg !2040
  br i1 %151, label %630, label %152, !dbg !2040

152:                                              ; preds = %147, %144, %138
  %153 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %123, %138 ]
  %154 = phi i1 [ %150, %147 ], [ false, %144 ], [ false, %138 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1887, metadata !DIExpression()), !dbg !2021
  call void @llvm.dbg.value(metadata i64 %153, metadata !1864, metadata !DIExpression()), !dbg !1923
  %155 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2041
  %156 = load i8, ptr %155, align 1, !dbg !2041, !tbaa !890
  call void @llvm.dbg.value(metadata i8 %156, metadata !1892, metadata !DIExpression()), !dbg !2021
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
  ], !dbg !2042

157:                                              ; preds = %152
  br i1 %109, label %158, label %204, !dbg !2043

158:                                              ; preds = %157
  br i1 %110, label %619, label %159, !dbg !2044

159:                                              ; preds = %158
  call void @llvm.dbg.value(metadata i8 1, metadata !1890, metadata !DIExpression()), !dbg !2021
  %160 = select i1 %111, i1 true, i1 %128, !dbg !2048
  br i1 %160, label %177, label %161, !dbg !2048

161:                                              ; preds = %159
  %162 = icmp ult i64 %124, %130, !dbg !2050
  br i1 %162, label %163, label %165, !dbg !2054

163:                                              ; preds = %161
  %164 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2050
  store i8 39, ptr %164, align 1, !dbg !2050, !tbaa !890
  br label %165, !dbg !2050

165:                                              ; preds = %163, %161
  %166 = add i64 %124, 1, !dbg !2054
  call void @llvm.dbg.value(metadata i64 %166, metadata !1871, metadata !DIExpression()), !dbg !1923
  %167 = icmp ult i64 %166, %130, !dbg !2055
  br i1 %167, label %168, label %170, !dbg !2058

168:                                              ; preds = %165
  %169 = getelementptr inbounds i8, ptr %0, i64 %166, !dbg !2055
  store i8 36, ptr %169, align 1, !dbg !2055, !tbaa !890
  br label %170, !dbg !2055

170:                                              ; preds = %168, %165
  %171 = add i64 %124, 2, !dbg !2058
  call void @llvm.dbg.value(metadata i64 %171, metadata !1871, metadata !DIExpression()), !dbg !1923
  %172 = icmp ult i64 %171, %130, !dbg !2059
  br i1 %172, label %173, label %175, !dbg !2062

173:                                              ; preds = %170
  %174 = getelementptr inbounds i8, ptr %0, i64 %171, !dbg !2059
  store i8 39, ptr %174, align 1, !dbg !2059, !tbaa !890
  br label %175, !dbg !2059

175:                                              ; preds = %173, %170
  %176 = add i64 %124, 3, !dbg !2062
  call void @llvm.dbg.value(metadata i64 %176, metadata !1871, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i8 1, metadata !1879, metadata !DIExpression()), !dbg !1923
  br label %177, !dbg !2063

177:                                              ; preds = %159, %175
  %178 = phi i64 [ %176, %175 ], [ %124, %159 ], !dbg !1923
  %179 = phi i1 [ true, %175 ], [ %128, %159 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1879, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 %178, metadata !1871, metadata !DIExpression()), !dbg !1923
  %180 = icmp ult i64 %178, %130, !dbg !2064
  br i1 %180, label %181, label %183, !dbg !2067

181:                                              ; preds = %177
  %182 = getelementptr inbounds i8, ptr %0, i64 %178, !dbg !2064
  store i8 92, ptr %182, align 1, !dbg !2064, !tbaa !890
  br label %183, !dbg !2064

183:                                              ; preds = %181, %177
  %184 = add i64 %178, 1, !dbg !2067
  call void @llvm.dbg.value(metadata i64 %184, metadata !1871, metadata !DIExpression()), !dbg !1923
  br i1 %111, label %185, label %482, !dbg !2068

185:                                              ; preds = %183
  %186 = add i64 %129, 1, !dbg !2070
  %187 = icmp ult i64 %186, %153, !dbg !2071
  br i1 %187, label %188, label %439, !dbg !2072

188:                                              ; preds = %185
  %189 = getelementptr inbounds i8, ptr %2, i64 %186, !dbg !2073
  %190 = load i8, ptr %189, align 1, !dbg !2073, !tbaa !890
  %191 = add i8 %190, -48, !dbg !2074
  %192 = icmp ult i8 %191, 10, !dbg !2074
  br i1 %192, label %193, label %439, !dbg !2074

193:                                              ; preds = %188
  %194 = icmp ult i64 %184, %130, !dbg !2075
  br i1 %194, label %195, label %197, !dbg !2079

195:                                              ; preds = %193
  %196 = getelementptr inbounds i8, ptr %0, i64 %184, !dbg !2075
  store i8 48, ptr %196, align 1, !dbg !2075, !tbaa !890
  br label %197, !dbg !2075

197:                                              ; preds = %195, %193
  %198 = add i64 %178, 2, !dbg !2079
  call void @llvm.dbg.value(metadata i64 %198, metadata !1871, metadata !DIExpression()), !dbg !1923
  %199 = icmp ult i64 %198, %130, !dbg !2080
  br i1 %199, label %200, label %202, !dbg !2083

200:                                              ; preds = %197
  %201 = getelementptr inbounds i8, ptr %0, i64 %198, !dbg !2080
  store i8 48, ptr %201, align 1, !dbg !2080, !tbaa !890
  br label %202, !dbg !2080

202:                                              ; preds = %200, %197
  %203 = add i64 %178, 3, !dbg !2083
  call void @llvm.dbg.value(metadata i64 %203, metadata !1871, metadata !DIExpression()), !dbg !1923
  br label %439, !dbg !2084

204:                                              ; preds = %157
  br i1 %24, label %450, label %569, !dbg !2085

205:                                              ; preds = %152
  switch i32 %103, label %439 [
    i32 2, label %206
    i32 5, label %207
  ], !dbg !2086

206:                                              ; preds = %205
  br i1 %110, label %621, label %439, !dbg !2087

207:                                              ; preds = %205
  br i1 %22, label %439, label %208, !dbg !2089

208:                                              ; preds = %207
  %209 = add i64 %129, 2, !dbg !2091
  %210 = icmp ult i64 %209, %153, !dbg !2092
  br i1 %210, label %211, label %439, !dbg !2093

211:                                              ; preds = %208
  %212 = add i64 %129, 1, !dbg !2094
  %213 = getelementptr inbounds i8, ptr %2, i64 %212, !dbg !2095
  %214 = load i8, ptr %213, align 1, !dbg !2095, !tbaa !890
  %215 = icmp eq i8 %214, 63, !dbg !2096
  br i1 %215, label %216, label %439, !dbg !2097

216:                                              ; preds = %211
  %217 = getelementptr inbounds i8, ptr %2, i64 %209, !dbg !2098
  %218 = load i8, ptr %217, align 1, !dbg !2098, !tbaa !890
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
  ], !dbg !2099

219:                                              ; preds = %216, %216, %216, %216, %216, %216, %216, %216, %216
  br i1 %110, label %621, label %220, !dbg !2100

220:                                              ; preds = %219
  call void @llvm.dbg.value(metadata i8 %218, metadata !1892, metadata !DIExpression()), !dbg !2021
  call void @llvm.dbg.value(metadata i64 %209, metadata !1885, metadata !DIExpression()), !dbg !2012
  %221 = icmp ult i64 %124, %130, !dbg !2102
  br i1 %221, label %222, label %224, !dbg !2105

222:                                              ; preds = %220
  %223 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2102
  store i8 63, ptr %223, align 1, !dbg !2102, !tbaa !890
  br label %224, !dbg !2102

224:                                              ; preds = %222, %220
  %225 = add i64 %124, 1, !dbg !2105
  call void @llvm.dbg.value(metadata i64 %225, metadata !1871, metadata !DIExpression()), !dbg !1923
  %226 = icmp ult i64 %225, %130, !dbg !2106
  br i1 %226, label %227, label %229, !dbg !2109

227:                                              ; preds = %224
  %228 = getelementptr inbounds i8, ptr %0, i64 %225, !dbg !2106
  store i8 34, ptr %228, align 1, !dbg !2106, !tbaa !890
  br label %229, !dbg !2106

229:                                              ; preds = %227, %224
  %230 = add i64 %124, 2, !dbg !2109
  call void @llvm.dbg.value(metadata i64 %230, metadata !1871, metadata !DIExpression()), !dbg !1923
  %231 = icmp ult i64 %230, %130, !dbg !2110
  br i1 %231, label %232, label %234, !dbg !2113

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, ptr %0, i64 %230, !dbg !2110
  store i8 34, ptr %233, align 1, !dbg !2110, !tbaa !890
  br label %234, !dbg !2110

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 3, !dbg !2113
  call void @llvm.dbg.value(metadata i64 %235, metadata !1871, metadata !DIExpression()), !dbg !1923
  %236 = icmp ult i64 %235, %130, !dbg !2114
  br i1 %236, label %237, label %239, !dbg !2117

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, ptr %0, i64 %235, !dbg !2114
  store i8 63, ptr %238, align 1, !dbg !2114, !tbaa !890
  br label %239, !dbg !2114

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 4, !dbg !2117
  call void @llvm.dbg.value(metadata i64 %240, metadata !1871, metadata !DIExpression()), !dbg !1923
  br label %439, !dbg !2118

241:                                              ; preds = %152
  br label %251, !dbg !2119

242:                                              ; preds = %152
  br label %251, !dbg !2120

243:                                              ; preds = %152
  br label %249, !dbg !2121

244:                                              ; preds = %152
  br label %249, !dbg !2122

245:                                              ; preds = %152
  br label %251, !dbg !2123

246:                                              ; preds = %152
  br i1 %116, label %247, label %248, !dbg !2124

247:                                              ; preds = %246
  br i1 %110, label %621, label %529, !dbg !2125

248:                                              ; preds = %246
  br i1 %118, label %529, label %251, !dbg !2128

249:                                              ; preds = %152, %244, %243
  %250 = phi i8 [ 116, %244 ], [ 114, %243 ], [ 110, %152 ], !dbg !2130
  call void @llvm.dbg.label(metadata !1917), !dbg !2131
  br i1 %119, label %621, label %251, !dbg !2132

251:                                              ; preds = %248, %249, %152, %245, %242, %241
  %252 = phi i8 [ %250, %249 ], [ 118, %245 ], [ 102, %242 ], [ 98, %241 ], [ 97, %152 ], [ 92, %248 ], !dbg !2130
  call void @llvm.dbg.label(metadata !1919), !dbg !2134
  br i1 %109, label %493, label %450, !dbg !2135

253:                                              ; preds = %152, %152
  switch i64 %153, label %439 [
    i64 -1, label %254
    i64 1, label %257
  ], !dbg !2136

254:                                              ; preds = %253
  %255 = load i8, ptr %20, align 1, !dbg !2137, !tbaa !890
  %256 = icmp eq i8 %255, 0, !dbg !2139
  br i1 %256, label %257, label %439, !dbg !2140

257:                                              ; preds = %253, %254, %152, %152
  %258 = icmp eq i64 %129, 0, !dbg !2141
  br i1 %258, label %259, label %439, !dbg !2143

259:                                              ; preds = %257, %152
  call void @llvm.dbg.value(metadata i8 1, metadata !1891, metadata !DIExpression()), !dbg !2021
  br label %260, !dbg !2144

260:                                              ; preds = %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %259
  %261 = phi i1 [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ true, %259 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1891, metadata !DIExpression()), !dbg !2021
  br i1 %116, label %262, label %439, !dbg !2145

262:                                              ; preds = %260
  br i1 %110, label %621, label %439, !dbg !2147

263:                                              ; preds = %152
  call void @llvm.dbg.value(metadata i8 1, metadata !1877, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i8 1, metadata !1891, metadata !DIExpression()), !dbg !2021
  br i1 %116, label %264, label %439, !dbg !2148

264:                                              ; preds = %263
  br i1 %110, label %621, label %265, !dbg !2149

265:                                              ; preds = %264
  %266 = icmp eq i64 %130, 0, !dbg !2152
  %267 = icmp ne i64 %125, 0
  %268 = select i1 %266, i1 true, i1 %267, !dbg !2154
  %269 = select i1 %268, i64 %125, i64 %130, !dbg !2154
  %270 = select i1 %268, i64 %130, i64 0, !dbg !2154
  call void @llvm.dbg.value(metadata i64 %270, metadata !1862, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 %269, metadata !1872, metadata !DIExpression()), !dbg !1923
  %271 = icmp ult i64 %124, %270, !dbg !2155
  br i1 %271, label %272, label %274, !dbg !2158

272:                                              ; preds = %265
  %273 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2155
  store i8 39, ptr %273, align 1, !dbg !2155, !tbaa !890
  br label %274, !dbg !2155

274:                                              ; preds = %272, %265
  %275 = add i64 %124, 1, !dbg !2158
  call void @llvm.dbg.value(metadata i64 %275, metadata !1871, metadata !DIExpression()), !dbg !1923
  %276 = icmp ult i64 %275, %270, !dbg !2159
  br i1 %276, label %277, label %279, !dbg !2162

277:                                              ; preds = %274
  %278 = getelementptr inbounds i8, ptr %0, i64 %275, !dbg !2159
  store i8 92, ptr %278, align 1, !dbg !2159, !tbaa !890
  br label %279, !dbg !2159

279:                                              ; preds = %277, %274
  %280 = add i64 %124, 2, !dbg !2162
  call void @llvm.dbg.value(metadata i64 %280, metadata !1871, metadata !DIExpression()), !dbg !1923
  %281 = icmp ult i64 %280, %270, !dbg !2163
  br i1 %281, label %282, label %284, !dbg !2166

282:                                              ; preds = %279
  %283 = getelementptr inbounds i8, ptr %0, i64 %280, !dbg !2163
  store i8 39, ptr %283, align 1, !dbg !2163, !tbaa !890
  br label %284, !dbg !2163

284:                                              ; preds = %282, %279
  %285 = add i64 %124, 3, !dbg !2166
  call void @llvm.dbg.value(metadata i64 %285, metadata !1871, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i8 0, metadata !1879, metadata !DIExpression()), !dbg !1923
  br label %439, !dbg !2167

286:                                              ; preds = %152
  br i1 %17, label %287, label %295, !dbg !2168

287:                                              ; preds = %286
  call void @llvm.dbg.value(metadata i64 1, metadata !1893, metadata !DIExpression()), !dbg !2169
  %288 = tail call ptr @__ctype_b_loc() #39, !dbg !2170
  %289 = load ptr, ptr %288, align 8, !dbg !2170, !tbaa !882
  %290 = zext i8 %156 to i64
  %291 = getelementptr inbounds i16, ptr %289, i64 %290, !dbg !2170
  %292 = load i16, ptr %291, align 2, !dbg !2170, !tbaa !1014
  %293 = and i16 %292, 16384, !dbg !2170
  %294 = icmp ne i16 %293, 0, !dbg !2172
  call void @llvm.dbg.value(metadata i1 %294, metadata !1896, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2169
  br label %337, !dbg !2173

295:                                              ; preds = %286
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #36, !dbg !2174
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1897, metadata !DIExpression()), !dbg !2175
  call void @llvm.dbg.value(metadata ptr %14, metadata !1949, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata ptr %14, metadata !1957, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata i32 0, metadata !1960, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata i64 8, metadata !1961, metadata !DIExpression()), !dbg !2178
  store i64 0, ptr %14, align 8, !dbg !2180
  call void @llvm.dbg.value(metadata i64 0, metadata !1893, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata i8 1, metadata !1896, metadata !DIExpression()), !dbg !2169
  %296 = icmp eq i64 %153, -1, !dbg !2181
  br i1 %296, label %297, label %299, !dbg !2183

297:                                              ; preds = %295
  %298 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !2184
  call void @llvm.dbg.value(metadata i64 %298, metadata !1864, metadata !DIExpression()), !dbg !1923
  br label %299, !dbg !2185

299:                                              ; preds = %295, %297
  %300 = phi i64 [ %298, %297 ], [ %153, %295 ], !dbg !2021
  call void @llvm.dbg.value(metadata i64 %300, metadata !1864, metadata !DIExpression()), !dbg !1923
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #36, !dbg !2186
  %301 = sub i64 %300, %129, !dbg !2187
  call void @llvm.dbg.value(metadata ptr %15, metadata !1900, metadata !DIExpression(DW_OP_deref)), !dbg !2188
  %302 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %155, i64 noundef %301, ptr noundef nonnull %14) #36, !dbg !2189
  call void @llvm.dbg.value(metadata i64 %302, metadata !1904, metadata !DIExpression()), !dbg !2188
  switch i64 %302, label %316 [
    i64 0, label %332
    i64 -1, label %305
    i64 -2, label %303
  ], !dbg !2190

303:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i64 0, metadata !1893, metadata !DIExpression()), !dbg !2169
  %304 = icmp ugt i64 %300, %129, !dbg !2191
  br i1 %304, label %306, label %332, !dbg !2193

305:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i8 0, metadata !1896, metadata !DIExpression()), !dbg !2169
  br label %332, !dbg !2194

306:                                              ; preds = %303, %312
  %307 = phi i64 [ %314, %312 ], [ %129, %303 ]
  %308 = phi i64 [ %313, %312 ], [ 0, %303 ]
  call void @llvm.dbg.value(metadata i64 %308, metadata !1893, metadata !DIExpression()), !dbg !2169
  %309 = getelementptr inbounds i8, ptr %2, i64 %307, !dbg !2196
  %310 = load i8, ptr %309, align 1, !dbg !2196, !tbaa !890
  %311 = icmp eq i8 %310, 0, !dbg !2193
  br i1 %311, label %332, label %312, !dbg !2197

312:                                              ; preds = %306
  %313 = add i64 %308, 1, !dbg !2198
  call void @llvm.dbg.value(metadata i64 %313, metadata !1893, metadata !DIExpression()), !dbg !2169
  %314 = add i64 %313, %129, !dbg !2199
  %315 = icmp eq i64 %313, %301, !dbg !2191
  br i1 %315, label %332, label %306, !dbg !2193, !llvm.loop !2200

316:                                              ; preds = %299
  %317 = icmp ugt i64 %302, 1
  %318 = and i1 %116, %317, !dbg !2201
  %319 = and i1 %318, %110, !dbg !2201
  call void @llvm.dbg.value(metadata i64 1, metadata !1905, metadata !DIExpression()), !dbg !2202
  br i1 %319, label %320, label %328, !dbg !2201

320:                                              ; preds = %316, %325
  %321 = phi i64 [ %326, %325 ], [ 1, %316 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !1905, metadata !DIExpression()), !dbg !2202
  %322 = add i64 %321, %129, !dbg !2203
  %323 = getelementptr inbounds i8, ptr %2, i64 %322, !dbg !2205
  %324 = load i8, ptr %323, align 1, !dbg !2205, !tbaa !890
  switch i8 %324, label %325 [
    i8 91, label %335
    i8 92, label %335
    i8 94, label %335
    i8 96, label %335
    i8 124, label %335
  ], !dbg !2206

325:                                              ; preds = %320
  %326 = add nuw i64 %321, 1, !dbg !2207
  call void @llvm.dbg.value(metadata i64 %326, metadata !1905, metadata !DIExpression()), !dbg !2202
  %327 = icmp eq i64 %326, %302, !dbg !2208
  br i1 %327, label %328, label %320, !dbg !2209, !llvm.loop !2210

328:                                              ; preds = %325, %316
  %329 = load i32, ptr %15, align 4, !dbg !2212, !tbaa !981
  call void @llvm.dbg.value(metadata i32 %329, metadata !1900, metadata !DIExpression()), !dbg !2188
  call void @llvm.dbg.value(metadata i32 %329, metadata !2214, metadata !DIExpression()), !dbg !2222
  %330 = call i32 @iswprint(i32 noundef %329) #36, !dbg !2224
  %331 = icmp ne i32 %330, 0, !dbg !2225
  call void @llvm.dbg.value(metadata i8 poison, metadata !1896, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata i64 %302, metadata !1893, metadata !DIExpression()), !dbg !2169
  br label %332, !dbg !2226

332:                                              ; preds = %306, %312, %303, %305, %328, %299
  %333 = phi i64 [ %302, %299 ], [ %302, %328 ], [ 0, %305 ], [ 0, %303 ], [ %308, %306 ], [ %301, %312 ]
  %334 = phi i1 [ true, %299 ], [ %331, %328 ], [ false, %305 ], [ false, %303 ], [ false, %312 ], [ false, %306 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1896, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata i64 %333, metadata !1893, metadata !DIExpression()), !dbg !2169
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !2227
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !2228
  br label %337

335:                                              ; preds = %320, %320, %320, %320, %320
  call void @llvm.dbg.value(metadata i8 poison, metadata !1896, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata i64 0, metadata !1893, metadata !DIExpression()), !dbg !2169
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !2227
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !2228
  call void @llvm.dbg.label(metadata !1922), !dbg !2229
  %336 = select i1 %109, i32 4, i32 2, !dbg !2230
  br label %626, !dbg !2230

337:                                              ; preds = %332, %287
  %338 = phi i64 [ %153, %287 ], [ %300, %332 ], !dbg !2021
  %339 = phi i64 [ 1, %287 ], [ %333, %332 ], !dbg !2232
  %340 = phi i1 [ %294, %287 ], [ %334, %332 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1896, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata i64 %339, metadata !1893, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata i64 %338, metadata !1864, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i1 %340, metadata !1891, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2021
  %341 = icmp ult i64 %339, 2, !dbg !2233
  %342 = select i1 %120, i1 true, i1 %340
  %343 = select i1 %341, i1 %342, i1 false, !dbg !2234
  br i1 %343, label %439, label %344, !dbg !2234

344:                                              ; preds = %337
  %345 = add i64 %339, %129, !dbg !2235
  call void @llvm.dbg.value(metadata i64 %345, metadata !1913, metadata !DIExpression()), !dbg !2236
  br label %346, !dbg !2237

346:                                              ; preds = %433, %344
  %347 = phi i64 [ %124, %344 ], [ %434, %433 ], !dbg !1923
  %348 = phi i1 [ %128, %344 ], [ %429, %433 ]
  %349 = phi i64 [ %129, %344 ], [ %410, %433 ], !dbg !2012
  %350 = phi i1 [ %154, %344 ], [ %407, %433 ]
  %351 = phi i8 [ 0, %344 ], [ %408, %433 ], !dbg !2238
  %352 = phi i8 [ %156, %344 ], [ %436, %433 ], !dbg !2021
  call void @llvm.dbg.value(metadata i8 %352, metadata !1892, metadata !DIExpression()), !dbg !2021
  call void @llvm.dbg.value(metadata i8 %351, metadata !1890, metadata !DIExpression()), !dbg !2021
  call void @llvm.dbg.value(metadata i8 poison, metadata !1887, metadata !DIExpression()), !dbg !2021
  call void @llvm.dbg.value(metadata i64 %349, metadata !1885, metadata !DIExpression()), !dbg !2012
  call void @llvm.dbg.value(metadata i8 poison, metadata !1879, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 %347, metadata !1871, metadata !DIExpression()), !dbg !1923
  br i1 %342, label %397, label %353, !dbg !2239

353:                                              ; preds = %346
  br i1 %110, label %621, label %354, !dbg !2244

354:                                              ; preds = %353
  call void @llvm.dbg.value(metadata i8 1, metadata !1890, metadata !DIExpression()), !dbg !2021
  %355 = select i1 %111, i1 true, i1 %348, !dbg !2247
  br i1 %355, label %372, label %356, !dbg !2247

356:                                              ; preds = %354
  %357 = icmp ult i64 %347, %130, !dbg !2249
  br i1 %357, label %358, label %360, !dbg !2253

358:                                              ; preds = %356
  %359 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !2249
  store i8 39, ptr %359, align 1, !dbg !2249, !tbaa !890
  br label %360, !dbg !2249

360:                                              ; preds = %358, %356
  %361 = add i64 %347, 1, !dbg !2253
  call void @llvm.dbg.value(metadata i64 %361, metadata !1871, metadata !DIExpression()), !dbg !1923
  %362 = icmp ult i64 %361, %130, !dbg !2254
  br i1 %362, label %363, label %365, !dbg !2257

363:                                              ; preds = %360
  %364 = getelementptr inbounds i8, ptr %0, i64 %361, !dbg !2254
  store i8 36, ptr %364, align 1, !dbg !2254, !tbaa !890
  br label %365, !dbg !2254

365:                                              ; preds = %363, %360
  %366 = add i64 %347, 2, !dbg !2257
  call void @llvm.dbg.value(metadata i64 %366, metadata !1871, metadata !DIExpression()), !dbg !1923
  %367 = icmp ult i64 %366, %130, !dbg !2258
  br i1 %367, label %368, label %370, !dbg !2261

368:                                              ; preds = %365
  %369 = getelementptr inbounds i8, ptr %0, i64 %366, !dbg !2258
  store i8 39, ptr %369, align 1, !dbg !2258, !tbaa !890
  br label %370, !dbg !2258

370:                                              ; preds = %368, %365
  %371 = add i64 %347, 3, !dbg !2261
  call void @llvm.dbg.value(metadata i64 %371, metadata !1871, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i8 1, metadata !1879, metadata !DIExpression()), !dbg !1923
  br label %372, !dbg !2262

372:                                              ; preds = %354, %370
  %373 = phi i64 [ %371, %370 ], [ %347, %354 ], !dbg !1923
  %374 = phi i1 [ true, %370 ], [ %348, %354 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1879, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 %373, metadata !1871, metadata !DIExpression()), !dbg !1923
  %375 = icmp ult i64 %373, %130, !dbg !2263
  br i1 %375, label %376, label %378, !dbg !2266

376:                                              ; preds = %372
  %377 = getelementptr inbounds i8, ptr %0, i64 %373, !dbg !2263
  store i8 92, ptr %377, align 1, !dbg !2263, !tbaa !890
  br label %378, !dbg !2263

378:                                              ; preds = %376, %372
  %379 = add i64 %373, 1, !dbg !2266
  call void @llvm.dbg.value(metadata i64 %379, metadata !1871, metadata !DIExpression()), !dbg !1923
  %380 = icmp ult i64 %379, %130, !dbg !2267
  br i1 %380, label %381, label %385, !dbg !2270

381:                                              ; preds = %378
  %382 = lshr i8 %352, 6
  %383 = or i8 %382, 48, !dbg !2267
  %384 = getelementptr inbounds i8, ptr %0, i64 %379, !dbg !2267
  store i8 %383, ptr %384, align 1, !dbg !2267, !tbaa !890
  br label %385, !dbg !2267

385:                                              ; preds = %381, %378
  %386 = add i64 %373, 2, !dbg !2270
  call void @llvm.dbg.value(metadata i64 %386, metadata !1871, metadata !DIExpression()), !dbg !1923
  %387 = icmp ult i64 %386, %130, !dbg !2271
  br i1 %387, label %388, label %393, !dbg !2274

388:                                              ; preds = %385
  %389 = lshr i8 %352, 3
  %390 = and i8 %389, 7, !dbg !2271
  %391 = or i8 %390, 48, !dbg !2271
  %392 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !2271
  store i8 %391, ptr %392, align 1, !dbg !2271, !tbaa !890
  br label %393, !dbg !2271

393:                                              ; preds = %388, %385
  %394 = add i64 %373, 3, !dbg !2274
  call void @llvm.dbg.value(metadata i64 %394, metadata !1871, metadata !DIExpression()), !dbg !1923
  %395 = and i8 %352, 7, !dbg !2275
  %396 = or i8 %395, 48, !dbg !2276
  call void @llvm.dbg.value(metadata i8 %396, metadata !1892, metadata !DIExpression()), !dbg !2021
  br label %404, !dbg !2277

397:                                              ; preds = %346
  br i1 %350, label %398, label %404, !dbg !2278

398:                                              ; preds = %397
  %399 = icmp ult i64 %347, %130, !dbg !2279
  br i1 %399, label %400, label %402, !dbg !2284

400:                                              ; preds = %398
  %401 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !2279
  store i8 92, ptr %401, align 1, !dbg !2279, !tbaa !890
  br label %402, !dbg !2279

402:                                              ; preds = %400, %398
  %403 = add i64 %347, 1, !dbg !2284
  call void @llvm.dbg.value(metadata i64 %403, metadata !1871, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i8 0, metadata !1887, metadata !DIExpression()), !dbg !2021
  br label %404, !dbg !2285

404:                                              ; preds = %397, %402, %393
  %405 = phi i64 [ %403, %402 ], [ %347, %397 ], [ %394, %393 ], !dbg !1923
  %406 = phi i1 [ %348, %402 ], [ %348, %397 ], [ %374, %393 ]
  %407 = phi i1 [ false, %402 ], [ false, %397 ], [ %350, %393 ]
  %408 = phi i8 [ %351, %402 ], [ %351, %397 ], [ 1, %393 ], !dbg !2021
  %409 = phi i8 [ %352, %402 ], [ %352, %397 ], [ %396, %393 ], !dbg !2021
  call void @llvm.dbg.value(metadata i8 %409, metadata !1892, metadata !DIExpression()), !dbg !2021
  call void @llvm.dbg.value(metadata i8 %408, metadata !1890, metadata !DIExpression()), !dbg !2021
  call void @llvm.dbg.value(metadata i8 poison, metadata !1887, metadata !DIExpression()), !dbg !2021
  call void @llvm.dbg.value(metadata i8 poison, metadata !1879, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 %405, metadata !1871, metadata !DIExpression()), !dbg !1923
  %410 = add i64 %349, 1, !dbg !2286
  %411 = icmp ugt i64 %345, %410, !dbg !2288
  %412 = and i8 %408, 1
  br i1 %411, label %413, label %437, !dbg !2289

413:                                              ; preds = %404
  %414 = icmp eq i8 %412, 0, !dbg !2290
  %415 = select i1 %406, i1 %414, i1 false, !dbg !2290
  br i1 %415, label %416, label %427, !dbg !2290

416:                                              ; preds = %413
  %417 = icmp ult i64 %405, %130, !dbg !2293
  br i1 %417, label %418, label %420, !dbg !2297

418:                                              ; preds = %416
  %419 = getelementptr inbounds i8, ptr %0, i64 %405, !dbg !2293
  store i8 39, ptr %419, align 1, !dbg !2293, !tbaa !890
  br label %420, !dbg !2293

420:                                              ; preds = %418, %416
  %421 = add i64 %405, 1, !dbg !2297
  call void @llvm.dbg.value(metadata i64 %421, metadata !1871, metadata !DIExpression()), !dbg !1923
  %422 = icmp ult i64 %421, %130, !dbg !2298
  br i1 %422, label %423, label %425, !dbg !2301

423:                                              ; preds = %420
  %424 = getelementptr inbounds i8, ptr %0, i64 %421, !dbg !2298
  store i8 39, ptr %424, align 1, !dbg !2298, !tbaa !890
  br label %425, !dbg !2298

425:                                              ; preds = %423, %420
  %426 = add i64 %405, 2, !dbg !2301
  call void @llvm.dbg.value(metadata i64 %426, metadata !1871, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i8 0, metadata !1879, metadata !DIExpression()), !dbg !1923
  br label %427, !dbg !2302

427:                                              ; preds = %413, %425
  %428 = phi i64 [ %426, %425 ], [ %405, %413 ], !dbg !2303
  %429 = phi i1 [ false, %425 ], [ %406, %413 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1879, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 %428, metadata !1871, metadata !DIExpression()), !dbg !1923
  %430 = icmp ult i64 %428, %130, !dbg !2304
  br i1 %430, label %431, label %433, !dbg !2307

431:                                              ; preds = %427
  %432 = getelementptr inbounds i8, ptr %0, i64 %428, !dbg !2304
  store i8 %409, ptr %432, align 1, !dbg !2304, !tbaa !890
  br label %433, !dbg !2304

433:                                              ; preds = %431, %427
  %434 = add i64 %428, 1, !dbg !2307
  call void @llvm.dbg.value(metadata i64 %434, metadata !1871, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 %410, metadata !1885, metadata !DIExpression()), !dbg !2012
  %435 = getelementptr inbounds i8, ptr %2, i64 %410, !dbg !2308
  %436 = load i8, ptr %435, align 1, !dbg !2308, !tbaa !890
  call void @llvm.dbg.value(metadata i8 %436, metadata !1892, metadata !DIExpression()), !dbg !2021
  br label %346, !dbg !2309, !llvm.loop !2310

437:                                              ; preds = %404
  call void @llvm.dbg.value(metadata i8 %409, metadata !1892, metadata !DIExpression()), !dbg !2021
  call void @llvm.dbg.value(metadata i1 %340, metadata !1891, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2021
  call void @llvm.dbg.value(metadata i8 %408, metadata !1890, metadata !DIExpression()), !dbg !2021
  call void @llvm.dbg.value(metadata i8 poison, metadata !1887, metadata !DIExpression()), !dbg !2021
  call void @llvm.dbg.value(metadata i64 %349, metadata !1885, metadata !DIExpression()), !dbg !2012
  call void @llvm.dbg.value(metadata i8 poison, metadata !1879, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 %405, metadata !1871, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 %338, metadata !1864, metadata !DIExpression()), !dbg !1923
  %438 = icmp ne i8 %412, 0
  br label %529

439:                                              ; preds = %337, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %253, %185, %188, %202, %263, %284, %260, %262, %257, %254, %205, %206, %239, %216, %211, %208, %207
  %440 = phi i64 [ %153, %284 ], [ %153, %263 ], [ %153, %262 ], [ %153, %260 ], [ %153, %257 ], [ -1, %254 ], [ %153, %205 ], [ %153, %216 ], [ %153, %239 ], [ %153, %211 ], [ %153, %208 ], [ %153, %207 ], [ %153, %206 ], [ %153, %202 ], [ %153, %188 ], [ %153, %185 ], [ %153, %253 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %338, %337 ], !dbg !2313
  %441 = phi i64 [ %285, %284 ], [ %124, %263 ], [ %124, %262 ], [ %124, %260 ], [ %124, %257 ], [ %124, %254 ], [ %124, %205 ], [ %124, %216 ], [ %240, %239 ], [ %124, %211 ], [ %124, %208 ], [ %124, %207 ], [ %124, %206 ], [ %203, %202 ], [ %184, %188 ], [ %184, %185 ], [ %124, %253 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %337 ], !dbg !1923
  %442 = phi i64 [ %269, %284 ], [ %125, %263 ], [ %125, %262 ], [ %125, %260 ], [ %125, %257 ], [ %125, %254 ], [ %125, %205 ], [ %125, %216 ], [ %125, %239 ], [ %125, %211 ], [ %125, %208 ], [ %125, %207 ], [ %125, %206 ], [ %125, %202 ], [ %125, %188 ], [ %125, %185 ], [ %125, %253 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %337 ], !dbg !1927
  %443 = phi i1 [ true, %284 ], [ true, %263 ], [ %126, %262 ], [ %126, %260 ], [ %126, %257 ], [ %126, %254 ], [ %126, %205 ], [ %126, %216 ], [ %126, %239 ], [ %126, %211 ], [ %126, %208 ], [ %126, %207 ], [ %126, %206 ], [ %126, %202 ], [ %126, %188 ], [ %126, %185 ], [ %126, %253 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %337 ]
  %444 = phi i1 [ false, %284 ], [ %128, %263 ], [ %128, %262 ], [ %128, %260 ], [ %128, %257 ], [ %128, %254 ], [ %128, %205 ], [ %128, %216 ], [ %128, %239 ], [ %128, %211 ], [ %128, %208 ], [ %128, %207 ], [ %128, %206 ], [ %179, %202 ], [ %179, %188 ], [ %179, %185 ], [ %128, %253 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %337 ]
  %445 = phi i64 [ %129, %284 ], [ %129, %263 ], [ %129, %262 ], [ %129, %260 ], [ %129, %257 ], [ %129, %254 ], [ %129, %205 ], [ %129, %216 ], [ %209, %239 ], [ %129, %211 ], [ %129, %208 ], [ %129, %207 ], [ %129, %206 ], [ %129, %202 ], [ %129, %188 ], [ %129, %185 ], [ %129, %253 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %337 ], !dbg !2012
  %446 = phi i1 [ false, %284 ], [ false, %263 ], [ false, %262 ], [ false, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ true, %202 ], [ true, %188 ], [ true, %185 ], [ false, %253 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %337 ]
  %447 = phi i1 [ true, %284 ], [ true, %263 ], [ %261, %262 ], [ %261, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ false, %202 ], [ false, %188 ], [ false, %185 ], [ false, %253 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ %340, %337 ]
  %448 = phi i8 [ 39, %284 ], [ 39, %263 ], [ %156, %262 ], [ %156, %260 ], [ %156, %257 ], [ %156, %254 ], [ 63, %205 ], [ 63, %216 ], [ %218, %239 ], [ 63, %211 ], [ 63, %208 ], [ 63, %207 ], [ 63, %206 ], [ 48, %202 ], [ 48, %188 ], [ 48, %185 ], [ %156, %253 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %337 ], !dbg !2021
  %449 = phi i64 [ %270, %284 ], [ %130, %263 ], [ %130, %262 ], [ %130, %260 ], [ %130, %257 ], [ %130, %254 ], [ %130, %205 ], [ %130, %216 ], [ %130, %239 ], [ %130, %211 ], [ %130, %208 ], [ %130, %207 ], [ %130, %206 ], [ %130, %202 ], [ %130, %188 ], [ %130, %185 ], [ %130, %253 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %337 ]
  call void @llvm.dbg.value(metadata i64 %449, metadata !1862, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i8 %448, metadata !1892, metadata !DIExpression()), !dbg !2021
  call void @llvm.dbg.value(metadata i8 poison, metadata !1891, metadata !DIExpression()), !dbg !2021
  call void @llvm.dbg.value(metadata i8 poison, metadata !1890, metadata !DIExpression()), !dbg !2021
  call void @llvm.dbg.value(metadata i8 poison, metadata !1887, metadata !DIExpression()), !dbg !2021
  call void @llvm.dbg.value(metadata i64 %445, metadata !1885, metadata !DIExpression()), !dbg !2012
  call void @llvm.dbg.value(metadata i8 poison, metadata !1879, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i8 poison, metadata !1877, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 %442, metadata !1872, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 %441, metadata !1871, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 %440, metadata !1864, metadata !DIExpression()), !dbg !1923
  br i1 %112, label %461, label %450, !dbg !2314

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
  br i1 %121, label %462, label %482, !dbg !2316

461:                                              ; preds = %439
  br i1 %26, label %482, label %462, !dbg !2317

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
  %473 = lshr i8 %464, 5, !dbg !2318
  %474 = zext i8 %473 to i64, !dbg !2318
  %475 = getelementptr inbounds i32, ptr %6, i64 %474, !dbg !2319
  %476 = load i32, ptr %475, align 4, !dbg !2319, !tbaa !981
  %477 = and i8 %464, 31, !dbg !2320
  %478 = zext i8 %477 to i32, !dbg !2320
  %479 = shl nuw i32 1, %478, !dbg !2321
  %480 = and i32 %476, %479, !dbg !2321
  %481 = icmp eq i32 %480, 0, !dbg !2321
  br i1 %481, label %482, label %493, !dbg !2322

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
  br i1 %154, label %493, label %529, !dbg !2323

493:                                              ; preds = %251, %482, %462
  %494 = phi i64 [ %472, %462 ], [ %492, %482 ], [ %153, %251 ], !dbg !2313
  %495 = phi i64 [ %471, %462 ], [ %491, %482 ], [ %124, %251 ], !dbg !1923
  %496 = phi i64 [ %470, %462 ], [ %490, %482 ], [ %125, %251 ], !dbg !1927
  %497 = phi i1 [ %469, %462 ], [ %489, %482 ], [ %126, %251 ]
  %498 = phi i1 [ %468, %462 ], [ %488, %482 ], [ %128, %251 ]
  %499 = phi i64 [ %467, %462 ], [ %487, %482 ], [ %129, %251 ], !dbg !2324
  %500 = phi i1 [ %465, %462 ], [ %485, %482 ], [ false, %251 ]
  %501 = phi i8 [ %464, %462 ], [ %484, %482 ], [ %252, %251 ], !dbg !2021
  %502 = phi i64 [ %463, %462 ], [ %483, %482 ], [ %130, %251 ]
  call void @llvm.dbg.value(metadata i64 %502, metadata !1862, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i8 %501, metadata !1892, metadata !DIExpression()), !dbg !2021
  call void @llvm.dbg.value(metadata i8 poison, metadata !1891, metadata !DIExpression()), !dbg !2021
  call void @llvm.dbg.value(metadata i64 %499, metadata !1885, metadata !DIExpression()), !dbg !2012
  call void @llvm.dbg.value(metadata i8 poison, metadata !1879, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i8 poison, metadata !1877, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 %496, metadata !1872, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 %495, metadata !1871, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 %494, metadata !1864, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.label(metadata !1920), !dbg !2325
  br i1 %110, label %621, label %503, !dbg !2326

503:                                              ; preds = %493
  call void @llvm.dbg.value(metadata i8 1, metadata !1890, metadata !DIExpression()), !dbg !2021
  %504 = select i1 %111, i1 true, i1 %498, !dbg !2328
  br i1 %504, label %521, label %505, !dbg !2328

505:                                              ; preds = %503
  %506 = icmp ult i64 %495, %502, !dbg !2330
  br i1 %506, label %507, label %509, !dbg !2334

507:                                              ; preds = %505
  %508 = getelementptr inbounds i8, ptr %0, i64 %495, !dbg !2330
  store i8 39, ptr %508, align 1, !dbg !2330, !tbaa !890
  br label %509, !dbg !2330

509:                                              ; preds = %507, %505
  %510 = add i64 %495, 1, !dbg !2334
  call void @llvm.dbg.value(metadata i64 %510, metadata !1871, metadata !DIExpression()), !dbg !1923
  %511 = icmp ult i64 %510, %502, !dbg !2335
  br i1 %511, label %512, label %514, !dbg !2338

512:                                              ; preds = %509
  %513 = getelementptr inbounds i8, ptr %0, i64 %510, !dbg !2335
  store i8 36, ptr %513, align 1, !dbg !2335, !tbaa !890
  br label %514, !dbg !2335

514:                                              ; preds = %512, %509
  %515 = add i64 %495, 2, !dbg !2338
  call void @llvm.dbg.value(metadata i64 %515, metadata !1871, metadata !DIExpression()), !dbg !1923
  %516 = icmp ult i64 %515, %502, !dbg !2339
  br i1 %516, label %517, label %519, !dbg !2342

517:                                              ; preds = %514
  %518 = getelementptr inbounds i8, ptr %0, i64 %515, !dbg !2339
  store i8 39, ptr %518, align 1, !dbg !2339, !tbaa !890
  br label %519, !dbg !2339

519:                                              ; preds = %517, %514
  %520 = add i64 %495, 3, !dbg !2342
  call void @llvm.dbg.value(metadata i64 %520, metadata !1871, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i8 1, metadata !1879, metadata !DIExpression()), !dbg !1923
  br label %521, !dbg !2343

521:                                              ; preds = %503, %519
  %522 = phi i64 [ %520, %519 ], [ %495, %503 ], !dbg !2021
  %523 = phi i1 [ true, %519 ], [ %498, %503 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1879, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 %522, metadata !1871, metadata !DIExpression()), !dbg !1923
  %524 = icmp ult i64 %522, %502, !dbg !2344
  br i1 %524, label %525, label %527, !dbg !2347

525:                                              ; preds = %521
  %526 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !2344
  store i8 92, ptr %526, align 1, !dbg !2344, !tbaa !890
  br label %527, !dbg !2344

527:                                              ; preds = %521, %525
  %528 = add i64 %522, 1, !dbg !2347
  call void @llvm.dbg.value(metadata i64 %502, metadata !1862, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i8 %501, metadata !1892, metadata !DIExpression()), !dbg !2021
  call void @llvm.dbg.value(metadata i8 poison, metadata !1891, metadata !DIExpression()), !dbg !2021
  call void @llvm.dbg.value(metadata i8 poison, metadata !1890, metadata !DIExpression()), !dbg !2021
  call void @llvm.dbg.value(metadata i64 %499, metadata !1885, metadata !DIExpression()), !dbg !2012
  call void @llvm.dbg.value(metadata i8 poison, metadata !1879, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i8 poison, metadata !1877, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 %496, metadata !1872, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 %528, metadata !1871, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 %494, metadata !1864, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.label(metadata !1921), !dbg !2348
  br label %553, !dbg !2349

529:                                              ; preds = %437, %248, %247, %482
  %530 = phi i64 [ %338, %437 ], [ %492, %482 ], [ %153, %247 ], [ %153, %248 ], !dbg !2313
  %531 = phi i64 [ %405, %437 ], [ %491, %482 ], [ %124, %247 ], [ %124, %248 ], !dbg !1923
  %532 = phi i64 [ %125, %437 ], [ %490, %482 ], [ %125, %247 ], [ %125, %248 ], !dbg !1927
  %533 = phi i1 [ %126, %437 ], [ %489, %482 ], [ %126, %247 ], [ %126, %248 ]
  %534 = phi i1 [ %406, %437 ], [ %488, %482 ], [ %128, %247 ], [ %128, %248 ]
  %535 = phi i64 [ %349, %437 ], [ %487, %482 ], [ %129, %247 ], [ %129, %248 ], !dbg !2324
  %536 = phi i1 [ %438, %437 ], [ %486, %482 ], [ false, %247 ], [ false, %248 ]
  %537 = phi i1 [ %340, %437 ], [ %485, %482 ], [ false, %247 ], [ false, %248 ]
  %538 = phi i8 [ %409, %437 ], [ %484, %482 ], [ 92, %247 ], [ 92, %248 ], !dbg !2352
  %539 = phi i64 [ %130, %437 ], [ %483, %482 ], [ %130, %247 ], [ %130, %248 ]
  call void @llvm.dbg.value(metadata i64 %539, metadata !1862, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i8 %538, metadata !1892, metadata !DIExpression()), !dbg !2021
  call void @llvm.dbg.value(metadata i8 poison, metadata !1891, metadata !DIExpression()), !dbg !2021
  call void @llvm.dbg.value(metadata i8 poison, metadata !1890, metadata !DIExpression()), !dbg !2021
  call void @llvm.dbg.value(metadata i64 %535, metadata !1885, metadata !DIExpression()), !dbg !2012
  call void @llvm.dbg.value(metadata i8 poison, metadata !1879, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i8 poison, metadata !1877, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 %532, metadata !1872, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 %531, metadata !1871, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 %530, metadata !1864, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.label(metadata !1921), !dbg !2348
  %540 = xor i1 %534, true, !dbg !2349
  %541 = select i1 %540, i1 true, i1 %536, !dbg !2349
  br i1 %541, label %553, label %542, !dbg !2349

542:                                              ; preds = %529
  %543 = icmp ult i64 %531, %539, !dbg !2353
  br i1 %543, label %544, label %546, !dbg !2357

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, ptr %0, i64 %531, !dbg !2353
  store i8 39, ptr %545, align 1, !dbg !2353, !tbaa !890
  br label %546, !dbg !2353

546:                                              ; preds = %544, %542
  %547 = add i64 %531, 1, !dbg !2357
  call void @llvm.dbg.value(metadata i64 %547, metadata !1871, metadata !DIExpression()), !dbg !1923
  %548 = icmp ult i64 %547, %539, !dbg !2358
  br i1 %548, label %549, label %551, !dbg !2361

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, ptr %0, i64 %547, !dbg !2358
  store i8 39, ptr %550, align 1, !dbg !2358, !tbaa !890
  br label %551, !dbg !2358

551:                                              ; preds = %549, %546
  %552 = add i64 %531, 2, !dbg !2361
  call void @llvm.dbg.value(metadata i64 %552, metadata !1871, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i8 0, metadata !1879, metadata !DIExpression()), !dbg !1923
  br label %553, !dbg !2362

553:                                              ; preds = %527, %529, %551
  %554 = phi i64 [ %539, %551 ], [ %539, %529 ], [ %502, %527 ]
  %555 = phi i8 [ %538, %551 ], [ %538, %529 ], [ %501, %527 ]
  %556 = phi i1 [ %537, %551 ], [ %537, %529 ], [ %500, %527 ]
  %557 = phi i64 [ %535, %551 ], [ %535, %529 ], [ %499, %527 ]
  %558 = phi i1 [ %533, %551 ], [ %533, %529 ], [ %497, %527 ]
  %559 = phi i64 [ %532, %551 ], [ %532, %529 ], [ %496, %527 ]
  %560 = phi i64 [ %530, %551 ], [ %530, %529 ], [ %494, %527 ]
  %561 = phi i64 [ %552, %551 ], [ %531, %529 ], [ %528, %527 ], !dbg !2021
  %562 = phi i1 [ false, %551 ], [ %534, %529 ], [ %523, %527 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1879, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 %561, metadata !1871, metadata !DIExpression()), !dbg !1923
  %563 = icmp ult i64 %561, %554, !dbg !2363
  br i1 %563, label %564, label %566, !dbg !2366

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, ptr %0, i64 %561, !dbg !2363
  store i8 %555, ptr %565, align 1, !dbg !2363, !tbaa !890
  br label %566, !dbg !2363

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2366
  call void @llvm.dbg.value(metadata i64 %567, metadata !1871, metadata !DIExpression()), !dbg !1923
  %568 = select i1 %556, i1 %127, i1 false, !dbg !2367
  call void @llvm.dbg.value(metadata i8 poison, metadata !1878, metadata !DIExpression()), !dbg !1923
  br label %569, !dbg !2368

569:                                              ; preds = %204, %566
  %570 = phi i64 [ %560, %566 ], [ %153, %204 ], !dbg !2313
  %571 = phi i64 [ %567, %566 ], [ %124, %204 ], !dbg !1923
  %572 = phi i64 [ %559, %566 ], [ %125, %204 ], !dbg !1927
  %573 = phi i1 [ %558, %566 ], [ %126, %204 ]
  %574 = phi i1 [ %568, %566 ], [ %127, %204 ]
  %575 = phi i1 [ %562, %566 ], [ %128, %204 ]
  %576 = phi i64 [ %557, %566 ], [ %129, %204 ], !dbg !2324
  %577 = phi i64 [ %554, %566 ], [ %130, %204 ]
  call void @llvm.dbg.value(metadata i64 %577, metadata !1862, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 %576, metadata !1885, metadata !DIExpression()), !dbg !2012
  call void @llvm.dbg.value(metadata i8 poison, metadata !1879, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i8 poison, metadata !1878, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i8 poison, metadata !1877, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 %572, metadata !1872, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 %571, metadata !1871, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 %570, metadata !1864, metadata !DIExpression()), !dbg !1923
  %578 = add i64 %576, 1, !dbg !2369
  call void @llvm.dbg.value(metadata i64 %578, metadata !1885, metadata !DIExpression()), !dbg !2012
  br label %122, !dbg !2370, !llvm.loop !2371

579:                                              ; preds = %136, %132
  call void @llvm.dbg.value(metadata i64 %130, metadata !1862, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i8 poison, metadata !1878, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i8 poison, metadata !1877, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 %125, metadata !1872, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 %124, metadata !1871, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 %123, metadata !1864, metadata !DIExpression()), !dbg !1923
  %580 = icmp ne i64 %124, 0, !dbg !2373
  %581 = xor i1 %110, true, !dbg !2375
  %582 = or i1 %580, %581, !dbg !2375
  %583 = or i1 %582, %111, !dbg !2375
  br i1 %583, label %584, label %621, !dbg !2375

584:                                              ; preds = %579
  %585 = or i1 %111, %110, !dbg !2376
  %586 = xor i1 %126, true, !dbg !2376
  %587 = select i1 %585, i1 true, i1 %586, !dbg !2376
  br i1 %587, label %595, label %588, !dbg !2376

588:                                              ; preds = %584
  br i1 %127, label %589, label %591, !dbg !2378

589:                                              ; preds = %588
  %590 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %125, ptr noundef %2, i64 noundef %123, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %104, ptr noundef %105), !dbg !2380
  br label %636, !dbg !2382

591:                                              ; preds = %588
  %592 = icmp eq i64 %130, 0, !dbg !2383
  %593 = icmp ne i64 %125, 0
  %594 = select i1 %592, i1 %593, i1 false, !dbg !2385
  br i1 %594, label %27, label %595, !dbg !2385

595:                                              ; preds = %584, %591
  %596 = phi i1 [ %110, %584 ], [ false, %591 ]
  %597 = icmp eq ptr %107, null, !dbg !2386
  %598 = or i1 %597, %596, !dbg !2388
  br i1 %598, label %614, label %599, !dbg !2388

599:                                              ; preds = %595
  call void @llvm.dbg.value(metadata ptr %107, metadata !1873, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 %124, metadata !1871, metadata !DIExpression()), !dbg !1923
  %600 = load i8, ptr %107, align 1, !dbg !2389, !tbaa !890
  %601 = icmp eq i8 %600, 0, !dbg !2392
  br i1 %601, label %614, label %602, !dbg !2392

602:                                              ; preds = %599, %609
  %603 = phi i8 [ %612, %609 ], [ %600, %599 ]
  %604 = phi ptr [ %611, %609 ], [ %107, %599 ]
  %605 = phi i64 [ %610, %609 ], [ %124, %599 ]
  call void @llvm.dbg.value(metadata ptr %604, metadata !1873, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 %605, metadata !1871, metadata !DIExpression()), !dbg !1923
  %606 = icmp ult i64 %605, %130, !dbg !2393
  br i1 %606, label %607, label %609, !dbg !2396

607:                                              ; preds = %602
  %608 = getelementptr inbounds i8, ptr %0, i64 %605, !dbg !2393
  store i8 %603, ptr %608, align 1, !dbg !2393, !tbaa !890
  br label %609, !dbg !2393

609:                                              ; preds = %607, %602
  %610 = add i64 %605, 1, !dbg !2396
  call void @llvm.dbg.value(metadata i64 %610, metadata !1871, metadata !DIExpression()), !dbg !1923
  %611 = getelementptr inbounds i8, ptr %604, i64 1, !dbg !2397
  call void @llvm.dbg.value(metadata ptr %611, metadata !1873, metadata !DIExpression()), !dbg !1923
  %612 = load i8, ptr %611, align 1, !dbg !2389, !tbaa !890
  %613 = icmp eq i8 %612, 0, !dbg !2392
  br i1 %613, label %614, label %602, !dbg !2392, !llvm.loop !2398

614:                                              ; preds = %609, %599, %595
  %615 = phi i64 [ %124, %595 ], [ %124, %599 ], [ %610, %609 ], !dbg !1999
  call void @llvm.dbg.value(metadata i64 %615, metadata !1871, metadata !DIExpression()), !dbg !1923
  %616 = icmp ult i64 %615, %130, !dbg !2400
  br i1 %616, label %617, label %636, !dbg !2402

617:                                              ; preds = %614
  %618 = getelementptr inbounds i8, ptr %0, i64 %615, !dbg !2403
  store i8 0, ptr %618, align 1, !dbg !2404, !tbaa !890
  br label %636, !dbg !2403

619:                                              ; preds = %158
  call void @llvm.dbg.label(metadata !1922), !dbg !2229
  %620 = icmp eq i32 %103, 2, !dbg !2405
  br i1 %620, label %626, label %630, !dbg !2230

621:                                              ; preds = %579, %493, %264, %262, %249, %247, %219, %206, %353
  %622 = phi i64 [ %130, %353 ], [ %502, %493 ], [ %130, %264 ], [ %130, %262 ], [ %130, %249 ], [ %130, %247 ], [ %130, %219 ], [ %130, %206 ], [ %130, %579 ]
  %623 = phi i64 [ %338, %353 ], [ %494, %493 ], [ %153, %264 ], [ %153, %262 ], [ %153, %249 ], [ %153, %247 ], [ %153, %219 ], [ %153, %206 ], [ %123, %579 ]
  call void @llvm.dbg.label(metadata !1922), !dbg !2229
  %624 = icmp eq i32 %103, 2, !dbg !2405
  %625 = select i1 %109, i32 4, i32 2, !dbg !2230
  br i1 %624, label %626, label %630, !dbg !2230

626:                                              ; preds = %335, %621, %619
  %627 = phi i32 [ 4, %619 ], [ %336, %335 ], [ %625, %621 ]
  %628 = phi i64 [ %130, %619 ], [ %130, %335 ], [ %622, %621 ]
  %629 = phi i64 [ %153, %619 ], [ %300, %335 ], [ %623, %621 ]
  br label %630, !dbg !2230

630:                                              ; preds = %147, %621, %619, %626
  %631 = phi i64 [ %628, %626 ], [ %130, %619 ], [ %622, %621 ], [ %130, %147 ]
  %632 = phi i64 [ %629, %626 ], [ %153, %619 ], [ %623, %621 ], [ %145, %147 ]
  %633 = phi i32 [ %627, %626 ], [ %103, %619 ], [ %103, %621 ], [ %103, %147 ]
  call void @llvm.dbg.value(metadata i32 %633, metadata !1865, metadata !DIExpression()), !dbg !1923
  %634 = and i32 %5, -3, !dbg !2406
  %635 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %631, ptr noundef %2, i64 noundef %632, i32 noundef %633, i32 noundef %634, ptr noundef null, ptr noundef %104, ptr noundef %105), !dbg !2407
  br label %636, !dbg !2408

636:                                              ; preds = %614, %617, %630, %589
  %637 = phi i64 [ %635, %630 ], [ %590, %589 ], [ %615, %617 ], [ %615, %614 ]
  ret i64 %637, !dbg !2409
}

; Function Attrs: nounwind
declare !dbg !2410 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2413 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !2416 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #11 !dbg !2418 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2422, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i64 %1, metadata !2423, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata ptr %2, metadata !2424, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata ptr %0, metadata !2426, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i64 %1, metadata !2431, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata ptr null, metadata !2432, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata ptr %2, metadata !2433, metadata !DIExpression()), !dbg !2439
  %4 = icmp eq ptr %2, null, !dbg !2441
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2441
  call void @llvm.dbg.value(metadata ptr %5, metadata !2434, metadata !DIExpression()), !dbg !2439
  %6 = tail call ptr @__errno_location() #39, !dbg !2442
  %7 = load i32, ptr %6, align 4, !dbg !2442, !tbaa !981
  call void @llvm.dbg.value(metadata i32 %7, metadata !2435, metadata !DIExpression()), !dbg !2439
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2443
  %9 = load i32, ptr %8, align 4, !dbg !2443, !tbaa !1805
  %10 = or i32 %9, 1, !dbg !2444
  call void @llvm.dbg.value(metadata i32 %10, metadata !2436, metadata !DIExpression()), !dbg !2439
  %11 = load i32, ptr %5, align 8, !dbg !2445, !tbaa !1755
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2446
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2447
  %14 = load ptr, ptr %13, align 8, !dbg !2447, !tbaa !1826
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2448
  %16 = load ptr, ptr %15, align 8, !dbg !2448, !tbaa !1829
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2449
  %18 = add i64 %17, 1, !dbg !2450
  call void @llvm.dbg.value(metadata i64 %18, metadata !2437, metadata !DIExpression()), !dbg !2439
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #43, !dbg !2451
  call void @llvm.dbg.value(metadata ptr %19, metadata !2438, metadata !DIExpression()), !dbg !2439
  %20 = load i32, ptr %5, align 8, !dbg !2452, !tbaa !1755
  %21 = load ptr, ptr %13, align 8, !dbg !2453, !tbaa !1826
  %22 = load ptr, ptr %15, align 8, !dbg !2454, !tbaa !1829
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2455
  store i32 %7, ptr %6, align 4, !dbg !2456, !tbaa !981
  ret ptr %19, !dbg !2457
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #11 !dbg !2427 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2426, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata i64 %1, metadata !2431, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata ptr %2, metadata !2432, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata ptr %3, metadata !2433, metadata !DIExpression()), !dbg !2458
  %5 = icmp eq ptr %3, null, !dbg !2459
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2459
  call void @llvm.dbg.value(metadata ptr %6, metadata !2434, metadata !DIExpression()), !dbg !2458
  %7 = tail call ptr @__errno_location() #39, !dbg !2460
  %8 = load i32, ptr %7, align 4, !dbg !2460, !tbaa !981
  call void @llvm.dbg.value(metadata i32 %8, metadata !2435, metadata !DIExpression()), !dbg !2458
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2461
  %10 = load i32, ptr %9, align 4, !dbg !2461, !tbaa !1805
  %11 = icmp eq ptr %2, null, !dbg !2462
  %12 = zext i1 %11 to i32, !dbg !2462
  %13 = or i32 %10, %12, !dbg !2463
  call void @llvm.dbg.value(metadata i32 %13, metadata !2436, metadata !DIExpression()), !dbg !2458
  %14 = load i32, ptr %6, align 8, !dbg !2464, !tbaa !1755
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2465
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2466
  %17 = load ptr, ptr %16, align 8, !dbg !2466, !tbaa !1826
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2467
  %19 = load ptr, ptr %18, align 8, !dbg !2467, !tbaa !1829
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2468
  %21 = add i64 %20, 1, !dbg !2469
  call void @llvm.dbg.value(metadata i64 %21, metadata !2437, metadata !DIExpression()), !dbg !2458
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #43, !dbg !2470
  call void @llvm.dbg.value(metadata ptr %22, metadata !2438, metadata !DIExpression()), !dbg !2458
  %23 = load i32, ptr %6, align 8, !dbg !2471, !tbaa !1755
  %24 = load ptr, ptr %16, align 8, !dbg !2472, !tbaa !1826
  %25 = load ptr, ptr %18, align 8, !dbg !2473, !tbaa !1829
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2474
  store i32 %8, ptr %7, align 4, !dbg !2475, !tbaa !981
  br i1 %11, label %28, label %27, !dbg !2476

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2477, !tbaa !2479
  br label %28, !dbg !2480

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2481
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #11 !dbg !2482 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2487, !tbaa !882
  call void @llvm.dbg.value(metadata ptr %1, metadata !2484, metadata !DIExpression()), !dbg !2488
  call void @llvm.dbg.value(metadata i32 1, metadata !2485, metadata !DIExpression()), !dbg !2489
  %2 = load i32, ptr @nslots, align 4, !tbaa !981
  call void @llvm.dbg.value(metadata i32 1, metadata !2485, metadata !DIExpression()), !dbg !2489
  %3 = icmp sgt i32 %2, 1, !dbg !2490
  br i1 %3, label %4, label %6, !dbg !2492

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2490
  br label %10, !dbg !2492

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2493
  %8 = load ptr, ptr %7, align 8, !dbg !2493, !tbaa !2495
  %9 = icmp eq ptr %8, @slot0, !dbg !2497
  br i1 %9, label %17, label %16, !dbg !2498

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2485, metadata !DIExpression()), !dbg !2489
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2499
  %13 = load ptr, ptr %12, align 8, !dbg !2499, !tbaa !2495
  tail call void @free(ptr noundef %13) #36, !dbg !2500
  %14 = add nuw nsw i64 %11, 1, !dbg !2501
  call void @llvm.dbg.value(metadata i64 %14, metadata !2485, metadata !DIExpression()), !dbg !2489
  %15 = icmp eq i64 %14, %5, !dbg !2490
  br i1 %15, label %6, label %10, !dbg !2492, !llvm.loop !2502

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #36, !dbg !2504
  store i64 256, ptr @slotvec0, align 8, !dbg !2506, !tbaa !2507
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2508, !tbaa !2495
  br label %17, !dbg !2509

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2510
  br i1 %18, label %20, label %19, !dbg !2512

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #36, !dbg !2513
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2515, !tbaa !882
  br label %20, !dbg !2516

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2517, !tbaa !981
  ret void, !dbg !2518
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2519 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #11 !dbg !2522 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2524, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata ptr %1, metadata !2525, metadata !DIExpression()), !dbg !2526
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2527
  ret ptr %3, !dbg !2528
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #11 !dbg !2529 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2533, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata ptr %1, metadata !2534, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i64 %2, metadata !2535, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata ptr %3, metadata !2536, metadata !DIExpression()), !dbg !2549
  %6 = tail call ptr @__errno_location() #39, !dbg !2550
  %7 = load i32, ptr %6, align 4, !dbg !2550, !tbaa !981
  call void @llvm.dbg.value(metadata i32 %7, metadata !2537, metadata !DIExpression()), !dbg !2549
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2551, !tbaa !882
  call void @llvm.dbg.value(metadata ptr %8, metadata !2538, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2539, metadata !DIExpression()), !dbg !2549
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2552
  br i1 %9, label %10, label %11, !dbg !2552

10:                                               ; preds = %4
  tail call void @abort() #38, !dbg !2554
  unreachable, !dbg !2554

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2555, !tbaa !981
  %13 = icmp sgt i32 %12, %0, !dbg !2556
  br i1 %13, label %32, label %14, !dbg !2557

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2558
  call void @llvm.dbg.value(metadata i1 %15, metadata !2540, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2559
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #36, !dbg !2560
  %16 = sext i32 %12 to i64, !dbg !2561
  call void @llvm.dbg.value(metadata i64 %16, metadata !2543, metadata !DIExpression()), !dbg !2559
  store i64 %16, ptr %5, align 8, !dbg !2562, !tbaa !2479
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2563
  %18 = add nuw nsw i32 %0, 1, !dbg !2564
  %19 = sub i32 %18, %12, !dbg !2565
  %20 = sext i32 %19 to i64, !dbg !2566
  call void @llvm.dbg.value(metadata ptr %5, metadata !2543, metadata !DIExpression(DW_OP_deref)), !dbg !2559
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #36, !dbg !2567
  call void @llvm.dbg.value(metadata ptr %21, metadata !2538, metadata !DIExpression()), !dbg !2549
  store ptr %21, ptr @slotvec, align 8, !dbg !2568, !tbaa !882
  br i1 %15, label %22, label %23, !dbg !2569

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2570, !tbaa.struct !2572
  br label %23, !dbg !2573

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2574, !tbaa !981
  %25 = sext i32 %24 to i64, !dbg !2575
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2575
  %27 = load i64, ptr %5, align 8, !dbg !2576, !tbaa !2479
  call void @llvm.dbg.value(metadata i64 %27, metadata !2543, metadata !DIExpression()), !dbg !2559
  %28 = sub nsw i64 %27, %25, !dbg !2577
  %29 = shl i64 %28, 4, !dbg !2578
  call void @llvm.dbg.value(metadata ptr %26, metadata !1957, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i32 0, metadata !1960, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i64 %29, metadata !1961, metadata !DIExpression()), !dbg !2579
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #36, !dbg !2581
  %30 = load i64, ptr %5, align 8, !dbg !2582, !tbaa !2479
  call void @llvm.dbg.value(metadata i64 %30, metadata !2543, metadata !DIExpression()), !dbg !2559
  %31 = trunc i64 %30 to i32, !dbg !2582
  store i32 %31, ptr @nslots, align 4, !dbg !2583, !tbaa !981
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #36, !dbg !2584
  br label %32, !dbg !2585

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2549
  call void @llvm.dbg.value(metadata ptr %33, metadata !2538, metadata !DIExpression()), !dbg !2549
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2586
  %36 = load i64, ptr %35, align 8, !dbg !2587, !tbaa !2507
  call void @llvm.dbg.value(metadata i64 %36, metadata !2544, metadata !DIExpression()), !dbg !2588
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2589
  %38 = load ptr, ptr %37, align 8, !dbg !2589, !tbaa !2495
  call void @llvm.dbg.value(metadata ptr %38, metadata !2546, metadata !DIExpression()), !dbg !2588
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2590
  %40 = load i32, ptr %39, align 4, !dbg !2590, !tbaa !1805
  %41 = or i32 %40, 1, !dbg !2591
  call void @llvm.dbg.value(metadata i32 %41, metadata !2547, metadata !DIExpression()), !dbg !2588
  %42 = load i32, ptr %3, align 8, !dbg !2592, !tbaa !1755
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2593
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2594
  %45 = load ptr, ptr %44, align 8, !dbg !2594, !tbaa !1826
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2595
  %47 = load ptr, ptr %46, align 8, !dbg !2595, !tbaa !1829
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2596
  call void @llvm.dbg.value(metadata i64 %48, metadata !2548, metadata !DIExpression()), !dbg !2588
  %49 = icmp ugt i64 %36, %48, !dbg !2597
  br i1 %49, label %60, label %50, !dbg !2599

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2600
  call void @llvm.dbg.value(metadata i64 %51, metadata !2544, metadata !DIExpression()), !dbg !2588
  store i64 %51, ptr %35, align 8, !dbg !2602, !tbaa !2507
  %52 = icmp eq ptr %38, @slot0, !dbg !2603
  br i1 %52, label %54, label %53, !dbg !2605

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #36, !dbg !2606
  br label %54, !dbg !2606

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #43, !dbg !2607
  call void @llvm.dbg.value(metadata ptr %55, metadata !2546, metadata !DIExpression()), !dbg !2588
  store ptr %55, ptr %37, align 8, !dbg !2608, !tbaa !2495
  %56 = load i32, ptr %3, align 8, !dbg !2609, !tbaa !1755
  %57 = load ptr, ptr %44, align 8, !dbg !2610, !tbaa !1826
  %58 = load ptr, ptr %46, align 8, !dbg !2611, !tbaa !1829
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2612
  br label %60, !dbg !2613

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2588
  call void @llvm.dbg.value(metadata ptr %61, metadata !2546, metadata !DIExpression()), !dbg !2588
  store i32 %7, ptr %6, align 4, !dbg !2614, !tbaa !981
  ret ptr %61, !dbg !2615
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #11 !dbg !2616 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2620, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata ptr %1, metadata !2621, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata i64 %2, metadata !2622, metadata !DIExpression()), !dbg !2623
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2624
  ret ptr %4, !dbg !2625
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #11 !dbg !2626 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2628, metadata !DIExpression()), !dbg !2629
  call void @llvm.dbg.value(metadata i32 0, metadata !2524, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata ptr %0, metadata !2525, metadata !DIExpression()), !dbg !2630
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2632
  ret ptr %2, !dbg !2633
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #11 !dbg !2634 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2638, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i64 %1, metadata !2639, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i32 0, metadata !2620, metadata !DIExpression()), !dbg !2641
  call void @llvm.dbg.value(metadata ptr %0, metadata !2621, metadata !DIExpression()), !dbg !2641
  call void @llvm.dbg.value(metadata i64 %1, metadata !2622, metadata !DIExpression()), !dbg !2641
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2643
  ret ptr %3, !dbg !2644
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #11 !dbg !2645 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2649, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.value(metadata i32 %1, metadata !2650, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.value(metadata ptr %2, metadata !2651, metadata !DIExpression()), !dbg !2653
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2654
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2652, metadata !DIExpression()), !dbg !2655
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2656), !dbg !2659
  call void @llvm.dbg.value(metadata i32 %1, metadata !2660, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2665, metadata !DIExpression()), !dbg !2668
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2668, !alias.scope !2656
  %5 = icmp eq i32 %1, 10, !dbg !2669
  br i1 %5, label %6, label %7, !dbg !2671

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2672, !noalias !2656
  unreachable, !dbg !2672

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2673, !tbaa !1755, !alias.scope !2656
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2674
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2675
  ret ptr %8, !dbg !2676
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #11 !dbg !2677 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2681, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata i32 %1, metadata !2682, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata ptr %2, metadata !2683, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata i64 %3, metadata !2684, metadata !DIExpression()), !dbg !2686
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2687
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2685, metadata !DIExpression()), !dbg !2688
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2689), !dbg !2692
  call void @llvm.dbg.value(metadata i32 %1, metadata !2660, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2665, metadata !DIExpression()), !dbg !2695
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2695, !alias.scope !2689
  %6 = icmp eq i32 %1, 10, !dbg !2696
  br i1 %6, label %7, label %8, !dbg !2697

7:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2698, !noalias !2689
  unreachable, !dbg !2698

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2699, !tbaa !1755, !alias.scope !2689
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2700
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2701
  ret ptr %9, !dbg !2702
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #11 !dbg !2703 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2707, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata ptr %1, metadata !2708, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata i32 0, metadata !2649, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata i32 %0, metadata !2650, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata ptr %1, metadata !2651, metadata !DIExpression()), !dbg !2710
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2712
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2652, metadata !DIExpression()), !dbg !2713
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2714), !dbg !2717
  call void @llvm.dbg.value(metadata i32 %0, metadata !2660, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2665, metadata !DIExpression()), !dbg !2720
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2720, !alias.scope !2714
  %4 = icmp eq i32 %0, 10, !dbg !2721
  br i1 %4, label %5, label %6, !dbg !2722

5:                                                ; preds = %2
  tail call void @abort() #38, !dbg !2723, !noalias !2714
  unreachable, !dbg !2723

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2724, !tbaa !1755, !alias.scope !2714
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2725
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2726
  ret ptr %7, !dbg !2727
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #11 !dbg !2728 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2732, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata ptr %1, metadata !2733, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata i64 %2, metadata !2734, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata i32 0, metadata !2681, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata i32 %0, metadata !2682, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata ptr %1, metadata !2683, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata i64 %2, metadata !2684, metadata !DIExpression()), !dbg !2736
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2738
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2685, metadata !DIExpression()), !dbg !2739
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2740), !dbg !2743
  call void @llvm.dbg.value(metadata i32 %0, metadata !2660, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2665, metadata !DIExpression()), !dbg !2746
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2746, !alias.scope !2740
  %5 = icmp eq i32 %0, 10, !dbg !2747
  br i1 %5, label %6, label %7, !dbg !2748

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2749, !noalias !2740
  unreachable, !dbg !2749

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2750, !tbaa !1755, !alias.scope !2740
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2751
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2752
  ret ptr %8, !dbg !2753
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #11 !dbg !2754 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2758, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata i64 %1, metadata !2759, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata i8 %2, metadata !2760, metadata !DIExpression()), !dbg !2762
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2763
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2761, metadata !DIExpression()), !dbg !2764
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2765, !tbaa.struct !2766
  call void @llvm.dbg.value(metadata ptr %4, metadata !1772, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i8 %2, metadata !1773, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i32 1, metadata !1774, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i8 %2, metadata !1775, metadata !DIExpression()), !dbg !2767
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2769
  %6 = lshr i8 %2, 5, !dbg !2770
  %7 = zext i8 %6 to i64, !dbg !2770
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2771
  call void @llvm.dbg.value(metadata ptr %8, metadata !1776, metadata !DIExpression()), !dbg !2767
  %9 = and i8 %2, 31, !dbg !2772
  %10 = zext i8 %9 to i32, !dbg !2772
  call void @llvm.dbg.value(metadata i32 %10, metadata !1778, metadata !DIExpression()), !dbg !2767
  %11 = load i32, ptr %8, align 4, !dbg !2773, !tbaa !981
  %12 = lshr i32 %11, %10, !dbg !2774
  call void @llvm.dbg.value(metadata i32 %12, metadata !1779, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2767
  %13 = and i32 %12, 1, !dbg !2775
  %14 = xor i32 %13, 1, !dbg !2775
  %15 = shl nuw i32 %14, %10, !dbg !2776
  %16 = xor i32 %15, %11, !dbg !2777
  store i32 %16, ptr %8, align 4, !dbg !2777, !tbaa !981
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2778
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2779
  ret ptr %17, !dbg !2780
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #11 !dbg !2781 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2785, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i8 %1, metadata !2786, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata ptr %0, metadata !2758, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i64 -1, metadata !2759, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8 %1, metadata !2760, metadata !DIExpression()), !dbg !2788
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2790
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2761, metadata !DIExpression()), !dbg !2791
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2792, !tbaa.struct !2766
  call void @llvm.dbg.value(metadata ptr %3, metadata !1772, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i8 %1, metadata !1773, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i32 1, metadata !1774, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i8 %1, metadata !1775, metadata !DIExpression()), !dbg !2793
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2795
  %5 = lshr i8 %1, 5, !dbg !2796
  %6 = zext i8 %5 to i64, !dbg !2796
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2797
  call void @llvm.dbg.value(metadata ptr %7, metadata !1776, metadata !DIExpression()), !dbg !2793
  %8 = and i8 %1, 31, !dbg !2798
  %9 = zext i8 %8 to i32, !dbg !2798
  call void @llvm.dbg.value(metadata i32 %9, metadata !1778, metadata !DIExpression()), !dbg !2793
  %10 = load i32, ptr %7, align 4, !dbg !2799, !tbaa !981
  %11 = lshr i32 %10, %9, !dbg !2800
  call void @llvm.dbg.value(metadata i32 %11, metadata !1779, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2793
  %12 = and i32 %11, 1, !dbg !2801
  %13 = xor i32 %12, 1, !dbg !2801
  %14 = shl nuw i32 %13, %9, !dbg !2802
  %15 = xor i32 %14, %10, !dbg !2803
  store i32 %15, ptr %7, align 4, !dbg !2803, !tbaa !981
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2804
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2805
  ret ptr %16, !dbg !2806
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #11 !dbg !2807 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2809, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata ptr %0, metadata !2785, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata i8 58, metadata !2786, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata ptr %0, metadata !2758, metadata !DIExpression()), !dbg !2813
  call void @llvm.dbg.value(metadata i64 -1, metadata !2759, metadata !DIExpression()), !dbg !2813
  call void @llvm.dbg.value(metadata i8 58, metadata !2760, metadata !DIExpression()), !dbg !2813
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #36, !dbg !2815
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2761, metadata !DIExpression()), !dbg !2816
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2817, !tbaa.struct !2766
  call void @llvm.dbg.value(metadata ptr %2, metadata !1772, metadata !DIExpression()), !dbg !2818
  call void @llvm.dbg.value(metadata i8 58, metadata !1773, metadata !DIExpression()), !dbg !2818
  call void @llvm.dbg.value(metadata i32 1, metadata !1774, metadata !DIExpression()), !dbg !2818
  call void @llvm.dbg.value(metadata i8 58, metadata !1775, metadata !DIExpression()), !dbg !2818
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2820
  call void @llvm.dbg.value(metadata ptr %3, metadata !1776, metadata !DIExpression()), !dbg !2818
  call void @llvm.dbg.value(metadata i32 26, metadata !1778, metadata !DIExpression()), !dbg !2818
  %4 = load i32, ptr %3, align 4, !dbg !2821, !tbaa !981
  call void @llvm.dbg.value(metadata i32 %4, metadata !1779, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2818
  %5 = or i32 %4, 67108864, !dbg !2822
  store i32 %5, ptr %3, align 4, !dbg !2822, !tbaa !981
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2823
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #36, !dbg !2824
  ret ptr %6, !dbg !2825
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #11 !dbg !2826 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2828, metadata !DIExpression()), !dbg !2830
  call void @llvm.dbg.value(metadata i64 %1, metadata !2829, metadata !DIExpression()), !dbg !2830
  call void @llvm.dbg.value(metadata ptr %0, metadata !2758, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata i64 %1, metadata !2759, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata i8 58, metadata !2760, metadata !DIExpression()), !dbg !2831
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2833
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2761, metadata !DIExpression()), !dbg !2834
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2835, !tbaa.struct !2766
  call void @llvm.dbg.value(metadata ptr %3, metadata !1772, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i8 58, metadata !1773, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i32 1, metadata !1774, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i8 58, metadata !1775, metadata !DIExpression()), !dbg !2836
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2838
  call void @llvm.dbg.value(metadata ptr %4, metadata !1776, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i32 26, metadata !1778, metadata !DIExpression()), !dbg !2836
  %5 = load i32, ptr %4, align 4, !dbg !2839, !tbaa !981
  call void @llvm.dbg.value(metadata i32 %5, metadata !1779, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2836
  %6 = or i32 %5, 67108864, !dbg !2840
  store i32 %6, ptr %4, align 4, !dbg !2840, !tbaa !981
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2841
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2842
  ret ptr %7, !dbg !2843
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #11 !dbg !2844 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2665, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2850
  call void @llvm.dbg.value(metadata i32 %0, metadata !2846, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata i32 %1, metadata !2847, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata ptr %2, metadata !2848, metadata !DIExpression()), !dbg !2852
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2853
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2849, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata i32 %1, metadata !2660, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i32 0, metadata !2665, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2855
  %5 = icmp eq i32 %1, 10, !dbg !2856
  br i1 %5, label %6, label %7, !dbg !2857

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2858, !noalias !2859
  unreachable, !dbg !2858

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2665, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2855
  store i32 %1, ptr %4, align 8, !dbg !2862, !tbaa.struct !2766
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2862
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2862
  call void @llvm.dbg.value(metadata ptr %4, metadata !1772, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata i8 58, metadata !1773, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata i32 1, metadata !1774, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata i8 58, metadata !1775, metadata !DIExpression()), !dbg !2863
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2865
  call void @llvm.dbg.value(metadata ptr %9, metadata !1776, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata i32 26, metadata !1778, metadata !DIExpression()), !dbg !2863
  %10 = load i32, ptr %9, align 4, !dbg !2866, !tbaa !981
  call void @llvm.dbg.value(metadata i32 %10, metadata !1779, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2863
  %11 = or i32 %10, 67108864, !dbg !2867
  store i32 %11, ptr %9, align 4, !dbg !2867, !tbaa !981
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2868
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2869
  ret ptr %12, !dbg !2870
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #11 !dbg !2871 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2875, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata ptr %1, metadata !2876, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata ptr %2, metadata !2877, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata ptr %3, metadata !2878, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata i32 %0, metadata !2880, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata ptr %1, metadata !2885, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata ptr %2, metadata !2886, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata ptr %3, metadata !2887, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata i64 -1, metadata !2888, metadata !DIExpression()), !dbg !2890
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2892
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2889, metadata !DIExpression()), !dbg !2893
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2894, !tbaa.struct !2766
  call void @llvm.dbg.value(metadata ptr %5, metadata !1812, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata ptr %1, metadata !1813, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata ptr %2, metadata !1814, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata ptr %5, metadata !1812, metadata !DIExpression()), !dbg !2895
  store i32 10, ptr %5, align 8, !dbg !2897, !tbaa !1755
  %6 = icmp ne ptr %1, null, !dbg !2898
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2899
  br i1 %8, label %10, label %9, !dbg !2899

9:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2900
  unreachable, !dbg !2900

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2901
  store ptr %1, ptr %11, align 8, !dbg !2902, !tbaa !1826
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2903
  store ptr %2, ptr %12, align 8, !dbg !2904, !tbaa !1829
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2905
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2906
  ret ptr %13, !dbg !2907
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #11 !dbg !2881 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2880, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.value(metadata ptr %1, metadata !2885, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.value(metadata ptr %2, metadata !2886, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.value(metadata ptr %3, metadata !2887, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.value(metadata i64 %4, metadata !2888, metadata !DIExpression()), !dbg !2908
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #36, !dbg !2909
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2889, metadata !DIExpression()), !dbg !2910
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2911, !tbaa.struct !2766
  call void @llvm.dbg.value(metadata ptr %6, metadata !1812, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata ptr %1, metadata !1813, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata ptr %2, metadata !1814, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata ptr %6, metadata !1812, metadata !DIExpression()), !dbg !2912
  store i32 10, ptr %6, align 8, !dbg !2914, !tbaa !1755
  %7 = icmp ne ptr %1, null, !dbg !2915
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2916
  br i1 %9, label %11, label %10, !dbg !2916

10:                                               ; preds = %5
  tail call void @abort() #38, !dbg !2917
  unreachable, !dbg !2917

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2918
  store ptr %1, ptr %12, align 8, !dbg !2919, !tbaa !1826
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2920
  store ptr %2, ptr %13, align 8, !dbg !2921, !tbaa !1829
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2922
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #36, !dbg !2923
  ret ptr %14, !dbg !2924
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #11 !dbg !2925 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2929, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata ptr %1, metadata !2930, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata ptr %2, metadata !2931, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i32 0, metadata !2875, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata ptr %0, metadata !2876, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata ptr %1, metadata !2877, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata ptr %2, metadata !2878, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata i32 0, metadata !2880, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata ptr %0, metadata !2885, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata ptr %1, metadata !2886, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata ptr %2, metadata !2887, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i64 -1, metadata !2888, metadata !DIExpression()), !dbg !2935
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2937
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2889, metadata !DIExpression()), !dbg !2938
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2939, !tbaa.struct !2766
  call void @llvm.dbg.value(metadata ptr %4, metadata !1812, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.value(metadata ptr %0, metadata !1813, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.value(metadata ptr %1, metadata !1814, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.value(metadata ptr %4, metadata !1812, metadata !DIExpression()), !dbg !2940
  store i32 10, ptr %4, align 8, !dbg !2942, !tbaa !1755
  %5 = icmp ne ptr %0, null, !dbg !2943
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2944
  br i1 %7, label %9, label %8, !dbg !2944

8:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2945
  unreachable, !dbg !2945

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2946
  store ptr %0, ptr %10, align 8, !dbg !2947, !tbaa !1826
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2948
  store ptr %1, ptr %11, align 8, !dbg !2949, !tbaa !1829
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2950
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2951
  ret ptr %12, !dbg !2952
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #11 !dbg !2953 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2957, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata ptr %1, metadata !2958, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata ptr %2, metadata !2959, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata i64 %3, metadata !2960, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata i32 0, metadata !2880, metadata !DIExpression()), !dbg !2962
  call void @llvm.dbg.value(metadata ptr %0, metadata !2885, metadata !DIExpression()), !dbg !2962
  call void @llvm.dbg.value(metadata ptr %1, metadata !2886, metadata !DIExpression()), !dbg !2962
  call void @llvm.dbg.value(metadata ptr %2, metadata !2887, metadata !DIExpression()), !dbg !2962
  call void @llvm.dbg.value(metadata i64 %3, metadata !2888, metadata !DIExpression()), !dbg !2962
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2964
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2889, metadata !DIExpression()), !dbg !2965
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2966, !tbaa.struct !2766
  call void @llvm.dbg.value(metadata ptr %5, metadata !1812, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata ptr %0, metadata !1813, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata ptr %1, metadata !1814, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata ptr %5, metadata !1812, metadata !DIExpression()), !dbg !2967
  store i32 10, ptr %5, align 8, !dbg !2969, !tbaa !1755
  %6 = icmp ne ptr %0, null, !dbg !2970
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2971
  br i1 %8, label %10, label %9, !dbg !2971

9:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2972
  unreachable, !dbg !2972

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2973
  store ptr %0, ptr %11, align 8, !dbg !2974, !tbaa !1826
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2975
  store ptr %1, ptr %12, align 8, !dbg !2976, !tbaa !1829
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2977
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2978
  ret ptr %13, !dbg !2979
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #11 !dbg !2980 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2984, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata ptr %1, metadata !2985, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i64 %2, metadata !2986, metadata !DIExpression()), !dbg !2987
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2988
  ret ptr %4, !dbg !2989
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #11 !dbg !2990 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2994, metadata !DIExpression()), !dbg !2996
  call void @llvm.dbg.value(metadata i64 %1, metadata !2995, metadata !DIExpression()), !dbg !2996
  call void @llvm.dbg.value(metadata i32 0, metadata !2984, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata ptr %0, metadata !2985, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata i64 %1, metadata !2986, metadata !DIExpression()), !dbg !2997
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2999
  ret ptr %3, !dbg !3000
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #11 !dbg !3001 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3005, metadata !DIExpression()), !dbg !3007
  call void @llvm.dbg.value(metadata ptr %1, metadata !3006, metadata !DIExpression()), !dbg !3007
  call void @llvm.dbg.value(metadata i32 %0, metadata !2984, metadata !DIExpression()), !dbg !3008
  call void @llvm.dbg.value(metadata ptr %1, metadata !2985, metadata !DIExpression()), !dbg !3008
  call void @llvm.dbg.value(metadata i64 -1, metadata !2986, metadata !DIExpression()), !dbg !3008
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3010
  ret ptr %3, !dbg !3011
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #11 !dbg !3012 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3016, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata i32 0, metadata !3005, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.value(metadata ptr %0, metadata !3006, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.value(metadata i32 0, metadata !2984, metadata !DIExpression()), !dbg !3020
  call void @llvm.dbg.value(metadata ptr %0, metadata !2985, metadata !DIExpression()), !dbg !3020
  call void @llvm.dbg.value(metadata i64 -1, metadata !2986, metadata !DIExpression()), !dbg !3020
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3022
  ret ptr %2, !dbg !3023
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #11 !dbg !3024 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3063, metadata !DIExpression()), !dbg !3069
  call void @llvm.dbg.value(metadata ptr %1, metadata !3064, metadata !DIExpression()), !dbg !3069
  call void @llvm.dbg.value(metadata ptr %2, metadata !3065, metadata !DIExpression()), !dbg !3069
  call void @llvm.dbg.value(metadata ptr %3, metadata !3066, metadata !DIExpression()), !dbg !3069
  call void @llvm.dbg.value(metadata ptr %4, metadata !3067, metadata !DIExpression()), !dbg !3069
  call void @llvm.dbg.value(metadata i64 %5, metadata !3068, metadata !DIExpression()), !dbg !3069
  %7 = icmp eq ptr %1, null, !dbg !3070
  br i1 %7, label %10, label %8, !dbg !3072

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.119, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #36, !dbg !3073
  br label %12, !dbg !3073

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.120, ptr noundef %2, ptr noundef %3) #36, !dbg !3074
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.3.122, i32 noundef 5) #36, !dbg !3075
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #36, !dbg !3075
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.123, ptr noundef %0), !dbg !3076
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.5.124, i32 noundef 5) #36, !dbg !3077
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.125) #36, !dbg !3077
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.123, ptr noundef %0), !dbg !3078
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
  ], !dbg !3079

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.7.126, i32 noundef 5) #36, !dbg !3080
  %21 = load ptr, ptr %4, align 8, !dbg !3080, !tbaa !882
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #36, !dbg !3080
  br label %147, !dbg !3082

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.8.127, i32 noundef 5) #36, !dbg !3083
  %25 = load ptr, ptr %4, align 8, !dbg !3083, !tbaa !882
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3083
  %27 = load ptr, ptr %26, align 8, !dbg !3083, !tbaa !882
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #36, !dbg !3083
  br label %147, !dbg !3084

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.9.128, i32 noundef 5) #36, !dbg !3085
  %31 = load ptr, ptr %4, align 8, !dbg !3085, !tbaa !882
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3085
  %33 = load ptr, ptr %32, align 8, !dbg !3085, !tbaa !882
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3085
  %35 = load ptr, ptr %34, align 8, !dbg !3085, !tbaa !882
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #36, !dbg !3085
  br label %147, !dbg !3086

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.10.129, i32 noundef 5) #36, !dbg !3087
  %39 = load ptr, ptr %4, align 8, !dbg !3087, !tbaa !882
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3087
  %41 = load ptr, ptr %40, align 8, !dbg !3087, !tbaa !882
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3087
  %43 = load ptr, ptr %42, align 8, !dbg !3087, !tbaa !882
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3087
  %45 = load ptr, ptr %44, align 8, !dbg !3087, !tbaa !882
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #36, !dbg !3087
  br label %147, !dbg !3088

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.11.130, i32 noundef 5) #36, !dbg !3089
  %49 = load ptr, ptr %4, align 8, !dbg !3089, !tbaa !882
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3089
  %51 = load ptr, ptr %50, align 8, !dbg !3089, !tbaa !882
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3089
  %53 = load ptr, ptr %52, align 8, !dbg !3089, !tbaa !882
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3089
  %55 = load ptr, ptr %54, align 8, !dbg !3089, !tbaa !882
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3089
  %57 = load ptr, ptr %56, align 8, !dbg !3089, !tbaa !882
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #36, !dbg !3089
  br label %147, !dbg !3090

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.12.131, i32 noundef 5) #36, !dbg !3091
  %61 = load ptr, ptr %4, align 8, !dbg !3091, !tbaa !882
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3091
  %63 = load ptr, ptr %62, align 8, !dbg !3091, !tbaa !882
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3091
  %65 = load ptr, ptr %64, align 8, !dbg !3091, !tbaa !882
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3091
  %67 = load ptr, ptr %66, align 8, !dbg !3091, !tbaa !882
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3091
  %69 = load ptr, ptr %68, align 8, !dbg !3091, !tbaa !882
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3091
  %71 = load ptr, ptr %70, align 8, !dbg !3091, !tbaa !882
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #36, !dbg !3091
  br label %147, !dbg !3092

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.13.132, i32 noundef 5) #36, !dbg !3093
  %75 = load ptr, ptr %4, align 8, !dbg !3093, !tbaa !882
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3093
  %77 = load ptr, ptr %76, align 8, !dbg !3093, !tbaa !882
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3093
  %79 = load ptr, ptr %78, align 8, !dbg !3093, !tbaa !882
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3093
  %81 = load ptr, ptr %80, align 8, !dbg !3093, !tbaa !882
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3093
  %83 = load ptr, ptr %82, align 8, !dbg !3093, !tbaa !882
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3093
  %85 = load ptr, ptr %84, align 8, !dbg !3093, !tbaa !882
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3093
  %87 = load ptr, ptr %86, align 8, !dbg !3093, !tbaa !882
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #36, !dbg !3093
  br label %147, !dbg !3094

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.14.133, i32 noundef 5) #36, !dbg !3095
  %91 = load ptr, ptr %4, align 8, !dbg !3095, !tbaa !882
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3095
  %93 = load ptr, ptr %92, align 8, !dbg !3095, !tbaa !882
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3095
  %95 = load ptr, ptr %94, align 8, !dbg !3095, !tbaa !882
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3095
  %97 = load ptr, ptr %96, align 8, !dbg !3095, !tbaa !882
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3095
  %99 = load ptr, ptr %98, align 8, !dbg !3095, !tbaa !882
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3095
  %101 = load ptr, ptr %100, align 8, !dbg !3095, !tbaa !882
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3095
  %103 = load ptr, ptr %102, align 8, !dbg !3095, !tbaa !882
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3095
  %105 = load ptr, ptr %104, align 8, !dbg !3095, !tbaa !882
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #36, !dbg !3095
  br label %147, !dbg !3096

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.15.134, i32 noundef 5) #36, !dbg !3097
  %109 = load ptr, ptr %4, align 8, !dbg !3097, !tbaa !882
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3097
  %111 = load ptr, ptr %110, align 8, !dbg !3097, !tbaa !882
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3097
  %113 = load ptr, ptr %112, align 8, !dbg !3097, !tbaa !882
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3097
  %115 = load ptr, ptr %114, align 8, !dbg !3097, !tbaa !882
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3097
  %117 = load ptr, ptr %116, align 8, !dbg !3097, !tbaa !882
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3097
  %119 = load ptr, ptr %118, align 8, !dbg !3097, !tbaa !882
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3097
  %121 = load ptr, ptr %120, align 8, !dbg !3097, !tbaa !882
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3097
  %123 = load ptr, ptr %122, align 8, !dbg !3097, !tbaa !882
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3097
  %125 = load ptr, ptr %124, align 8, !dbg !3097, !tbaa !882
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #36, !dbg !3097
  br label %147, !dbg !3098

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.16.135, i32 noundef 5) #36, !dbg !3099
  %129 = load ptr, ptr %4, align 8, !dbg !3099, !tbaa !882
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3099
  %131 = load ptr, ptr %130, align 8, !dbg !3099, !tbaa !882
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3099
  %133 = load ptr, ptr %132, align 8, !dbg !3099, !tbaa !882
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3099
  %135 = load ptr, ptr %134, align 8, !dbg !3099, !tbaa !882
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3099
  %137 = load ptr, ptr %136, align 8, !dbg !3099, !tbaa !882
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3099
  %139 = load ptr, ptr %138, align 8, !dbg !3099, !tbaa !882
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3099
  %141 = load ptr, ptr %140, align 8, !dbg !3099, !tbaa !882
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3099
  %143 = load ptr, ptr %142, align 8, !dbg !3099, !tbaa !882
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3099
  %145 = load ptr, ptr %144, align 8, !dbg !3099, !tbaa !882
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #36, !dbg !3099
  br label %147, !dbg !3100

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3101
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #11 !dbg !3102 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3106, metadata !DIExpression()), !dbg !3112
  call void @llvm.dbg.value(metadata ptr %1, metadata !3107, metadata !DIExpression()), !dbg !3112
  call void @llvm.dbg.value(metadata ptr %2, metadata !3108, metadata !DIExpression()), !dbg !3112
  call void @llvm.dbg.value(metadata ptr %3, metadata !3109, metadata !DIExpression()), !dbg !3112
  call void @llvm.dbg.value(metadata ptr %4, metadata !3110, metadata !DIExpression()), !dbg !3112
  call void @llvm.dbg.value(metadata i64 0, metadata !3111, metadata !DIExpression()), !dbg !3112
  br label %6, !dbg !3113

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3115
  call void @llvm.dbg.value(metadata i64 %7, metadata !3111, metadata !DIExpression()), !dbg !3112
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3116
  %9 = load ptr, ptr %8, align 8, !dbg !3116, !tbaa !882
  %10 = icmp eq ptr %9, null, !dbg !3118
  %11 = add i64 %7, 1, !dbg !3119
  call void @llvm.dbg.value(metadata i64 %11, metadata !3111, metadata !DIExpression()), !dbg !3112
  br i1 %10, label %12, label %6, !dbg !3118, !llvm.loop !3120

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !3122
  ret void, !dbg !3123
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #11 !dbg !3124 {
  %6 = alloca [10 x ptr], align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3139, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata ptr %1, metadata !3140, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata ptr %2, metadata !3141, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata ptr %3, metadata !3142, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3143, metadata !DIExpression()), !dbg !3148
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #36, !dbg !3149
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3145, metadata !DIExpression()), !dbg !3150
  call void @llvm.dbg.value(metadata i64 0, metadata !3144, metadata !DIExpression()), !dbg !3147
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !3144, metadata !DIExpression()), !dbg !3147
  %10 = icmp sgt i32 %9, -1, !dbg !3151
  br i1 %10, label %18, label %11, !dbg !3151

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !3151
  store i32 %12, ptr %7, align 8, !dbg !3151
  %13 = icmp ult i32 %9, -7, !dbg !3151
  br i1 %13, label %14, label %18, !dbg !3151

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !3151
  %16 = sext i32 %9 to i64, !dbg !3151
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !3151
  br label %22, !dbg !3151

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !3151
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !3151
  store ptr %21, ptr %4, align 8, !dbg !3151
  br label %22, !dbg !3151

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !3151
  %25 = load ptr, ptr %24, align 8, !dbg !3151
  store ptr %25, ptr %6, align 8, !dbg !3154, !tbaa !882
  %26 = icmp eq ptr %25, null, !dbg !3155
  br i1 %26, label %197, label %27, !dbg !3156

27:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 1, metadata !3144, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata i64 1, metadata !3144, metadata !DIExpression()), !dbg !3147
  %28 = icmp sgt i32 %23, -1, !dbg !3151
  br i1 %28, label %36, label %29, !dbg !3151

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !3151
  store i32 %30, ptr %7, align 8, !dbg !3151
  %31 = icmp ult i32 %23, -7, !dbg !3151
  br i1 %31, label %32, label %36, !dbg !3151

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !3151
  %34 = sext i32 %23 to i64, !dbg !3151
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !3151
  br label %40, !dbg !3151

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !3151
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !3151
  store ptr %39, ptr %4, align 8, !dbg !3151
  br label %40, !dbg !3151

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !3151
  %43 = load ptr, ptr %42, align 8, !dbg !3151
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3157
  store ptr %43, ptr %44, align 8, !dbg !3154, !tbaa !882
  %45 = icmp eq ptr %43, null, !dbg !3155
  br i1 %45, label %197, label %46, !dbg !3156

46:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3144, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata i64 2, metadata !3144, metadata !DIExpression()), !dbg !3147
  %47 = icmp sgt i32 %41, -1, !dbg !3151
  br i1 %47, label %55, label %48, !dbg !3151

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !3151
  store i32 %49, ptr %7, align 8, !dbg !3151
  %50 = icmp ult i32 %41, -7, !dbg !3151
  br i1 %50, label %51, label %55, !dbg !3151

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !3151
  %53 = sext i32 %41 to i64, !dbg !3151
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !3151
  br label %59, !dbg !3151

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !3151
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !3151
  store ptr %58, ptr %4, align 8, !dbg !3151
  br label %59, !dbg !3151

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !3151
  %62 = load ptr, ptr %61, align 8, !dbg !3151
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3157
  store ptr %62, ptr %63, align 8, !dbg !3154, !tbaa !882
  %64 = icmp eq ptr %62, null, !dbg !3155
  br i1 %64, label %197, label %65, !dbg !3156

65:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i64 3, metadata !3144, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata i64 3, metadata !3144, metadata !DIExpression()), !dbg !3147
  %66 = icmp sgt i32 %60, -1, !dbg !3151
  br i1 %66, label %74, label %67, !dbg !3151

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !3151
  store i32 %68, ptr %7, align 8, !dbg !3151
  %69 = icmp ult i32 %60, -7, !dbg !3151
  br i1 %69, label %70, label %74, !dbg !3151

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !3151
  %72 = sext i32 %60 to i64, !dbg !3151
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !3151
  br label %78, !dbg !3151

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !3151
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !3151
  store ptr %77, ptr %4, align 8, !dbg !3151
  br label %78, !dbg !3151

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !3151
  %81 = load ptr, ptr %80, align 8, !dbg !3151
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3157
  store ptr %81, ptr %82, align 8, !dbg !3154, !tbaa !882
  %83 = icmp eq ptr %81, null, !dbg !3155
  br i1 %83, label %197, label %84, !dbg !3156

84:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i64 4, metadata !3144, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata i64 4, metadata !3144, metadata !DIExpression()), !dbg !3147
  %85 = icmp sgt i32 %79, -1, !dbg !3151
  br i1 %85, label %93, label %86, !dbg !3151

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !3151
  store i32 %87, ptr %7, align 8, !dbg !3151
  %88 = icmp ult i32 %79, -7, !dbg !3151
  br i1 %88, label %89, label %93, !dbg !3151

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !3151
  %91 = sext i32 %79 to i64, !dbg !3151
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !3151
  br label %97, !dbg !3151

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !3151
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !3151
  store ptr %96, ptr %4, align 8, !dbg !3151
  br label %97, !dbg !3151

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !3151
  %100 = load ptr, ptr %99, align 8, !dbg !3151
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3157
  store ptr %100, ptr %101, align 8, !dbg !3154, !tbaa !882
  %102 = icmp eq ptr %100, null, !dbg !3155
  br i1 %102, label %197, label %103, !dbg !3156

103:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i64 5, metadata !3144, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata i64 5, metadata !3144, metadata !DIExpression()), !dbg !3147
  %104 = icmp sgt i32 %98, -1, !dbg !3151
  br i1 %104, label %112, label %105, !dbg !3151

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !3151
  store i32 %106, ptr %7, align 8, !dbg !3151
  %107 = icmp ult i32 %98, -7, !dbg !3151
  br i1 %107, label %108, label %112, !dbg !3151

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !3151
  %110 = sext i32 %98 to i64, !dbg !3151
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !3151
  br label %116, !dbg !3151

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !3151
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !3151
  store ptr %115, ptr %4, align 8, !dbg !3151
  br label %116, !dbg !3151

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !3151
  %119 = load ptr, ptr %118, align 8, !dbg !3151
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3157
  store ptr %119, ptr %120, align 8, !dbg !3154, !tbaa !882
  %121 = icmp eq ptr %119, null, !dbg !3155
  br i1 %121, label %197, label %122, !dbg !3156

122:                                              ; preds = %116
  call void @llvm.dbg.value(metadata i64 6, metadata !3144, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata i64 6, metadata !3144, metadata !DIExpression()), !dbg !3147
  %123 = icmp sgt i32 %117, -1, !dbg !3151
  br i1 %123, label %131, label %124, !dbg !3151

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !3151
  store i32 %125, ptr %7, align 8, !dbg !3151
  %126 = icmp ult i32 %117, -7, !dbg !3151
  br i1 %126, label %127, label %131, !dbg !3151

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !3151
  %129 = sext i32 %117 to i64, !dbg !3151
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !3151
  br label %135, !dbg !3151

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !3151
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !3151
  store ptr %134, ptr %4, align 8, !dbg !3151
  br label %135, !dbg !3151

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !3151
  %138 = load ptr, ptr %137, align 8, !dbg !3151
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3157
  store ptr %138, ptr %139, align 8, !dbg !3154, !tbaa !882
  %140 = icmp eq ptr %138, null, !dbg !3155
  br i1 %140, label %197, label %141, !dbg !3156

141:                                              ; preds = %135
  call void @llvm.dbg.value(metadata i64 7, metadata !3144, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata i64 7, metadata !3144, metadata !DIExpression()), !dbg !3147
  %142 = icmp sgt i32 %136, -1, !dbg !3151
  br i1 %142, label %150, label %143, !dbg !3151

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !3151
  store i32 %144, ptr %7, align 8, !dbg !3151
  %145 = icmp ult i32 %136, -7, !dbg !3151
  br i1 %145, label %146, label %150, !dbg !3151

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !3151
  %148 = sext i32 %136 to i64, !dbg !3151
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !3151
  br label %154, !dbg !3151

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !3151
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !3151
  store ptr %153, ptr %4, align 8, !dbg !3151
  br label %154, !dbg !3151

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !3151
  %157 = load ptr, ptr %156, align 8, !dbg !3151
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3157
  store ptr %157, ptr %158, align 8, !dbg !3154, !tbaa !882
  %159 = icmp eq ptr %157, null, !dbg !3155
  br i1 %159, label %197, label %160, !dbg !3156

160:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i64 8, metadata !3144, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata i64 8, metadata !3144, metadata !DIExpression()), !dbg !3147
  %161 = icmp sgt i32 %155, -1, !dbg !3151
  br i1 %161, label %169, label %162, !dbg !3151

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !3151
  store i32 %163, ptr %7, align 8, !dbg !3151
  %164 = icmp ult i32 %155, -7, !dbg !3151
  br i1 %164, label %165, label %169, !dbg !3151

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !3151
  %167 = sext i32 %155 to i64, !dbg !3151
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !3151
  br label %173, !dbg !3151

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !3151
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !3151
  store ptr %172, ptr %4, align 8, !dbg !3151
  br label %173, !dbg !3151

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !3151
  %176 = load ptr, ptr %175, align 8, !dbg !3151
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3157
  store ptr %176, ptr %177, align 8, !dbg !3154, !tbaa !882
  %178 = icmp eq ptr %176, null, !dbg !3155
  br i1 %178, label %197, label %179, !dbg !3156

179:                                              ; preds = %173
  call void @llvm.dbg.value(metadata i64 9, metadata !3144, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata i64 9, metadata !3144, metadata !DIExpression()), !dbg !3147
  %180 = icmp sgt i32 %174, -1, !dbg !3151
  br i1 %180, label %188, label %181, !dbg !3151

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !3151
  store i32 %182, ptr %7, align 8, !dbg !3151
  %183 = icmp ult i32 %174, -7, !dbg !3151
  br i1 %183, label %184, label %188, !dbg !3151

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !3151
  %186 = sext i32 %174 to i64, !dbg !3151
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !3151
  br label %191, !dbg !3151

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !3151
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !3151
  store ptr %190, ptr %4, align 8, !dbg !3151
  br label %191, !dbg !3151

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !3151
  %193 = load ptr, ptr %192, align 8, !dbg !3151
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3157
  store ptr %193, ptr %194, align 8, !dbg !3154, !tbaa !882
  %195 = icmp eq ptr %193, null, !dbg !3155
  %196 = select i1 %195, i64 9, i64 10, !dbg !3156
  br label %197, !dbg !3156

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !3158
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !3159
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #36, !dbg !3160
  ret void, !dbg !3160
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #11 !dbg !3161 {
  %5 = alloca %struct.__va_list, align 8
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3165, metadata !DIExpression()), !dbg !3170
  call void @llvm.dbg.value(metadata ptr %1, metadata !3166, metadata !DIExpression()), !dbg !3170
  call void @llvm.dbg.value(metadata ptr %2, metadata !3167, metadata !DIExpression()), !dbg !3170
  call void @llvm.dbg.value(metadata ptr %3, metadata !3168, metadata !DIExpression()), !dbg !3170
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #36, !dbg !3171
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3169, metadata !DIExpression()), !dbg !3172
  call void @llvm.va_start(ptr nonnull %5), !dbg !3173
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #36, !dbg !3174
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !3174, !tbaa.struct !1458
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !3174
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #36, !dbg !3174
  call void @llvm.va_end(ptr nonnull %5), !dbg !3175
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #36, !dbg !3176
  ret void, !dbg !3176
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #11 !dbg !3177 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3178, !tbaa !882
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.123, ptr noundef %1), !dbg !3178
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.17.140, i32 noundef 5) #36, !dbg !3179
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.141) #36, !dbg !3179
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.19.142, i32 noundef 5) #36, !dbg !3180
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.143, ptr noundef nonnull @.str.21.144) #36, !dbg !3180
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.22, i32 noundef 5) #36, !dbg !3181
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23) #36, !dbg !3181
  ret void, !dbg !3182
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !3183 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3188, metadata !DIExpression()), !dbg !3191
  call void @llvm.dbg.value(metadata i64 %1, metadata !3189, metadata !DIExpression()), !dbg !3191
  call void @llvm.dbg.value(metadata i64 %2, metadata !3190, metadata !DIExpression()), !dbg !3191
  call void @llvm.dbg.value(metadata ptr %0, metadata !3192, metadata !DIExpression()), !dbg !3197
  call void @llvm.dbg.value(metadata i64 %1, metadata !3195, metadata !DIExpression()), !dbg !3197
  call void @llvm.dbg.value(metadata i64 %2, metadata !3196, metadata !DIExpression()), !dbg !3197
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !3199
  call void @llvm.dbg.value(metadata ptr %4, metadata !3200, metadata !DIExpression()), !dbg !3205
  %5 = icmp eq ptr %4, null, !dbg !3207
  br i1 %5, label %6, label %7, !dbg !3209

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !3210
  unreachable, !dbg !3210

7:                                                ; preds = %3
  ret ptr %4, !dbg !3211
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3193 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3192, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %1, metadata !3195, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %2, metadata !3196, metadata !DIExpression()), !dbg !3212
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !3213
  call void @llvm.dbg.value(metadata ptr %4, metadata !3200, metadata !DIExpression()), !dbg !3214
  %5 = icmp eq ptr %4, null, !dbg !3216
  br i1 %5, label %6, label %7, !dbg !3217

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !3218
  unreachable, !dbg !3218

7:                                                ; preds = %3
  ret ptr %4, !dbg !3219
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3220 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3224, metadata !DIExpression()), !dbg !3225
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !3226
  call void @llvm.dbg.value(metadata ptr %2, metadata !3200, metadata !DIExpression()), !dbg !3227
  %3 = icmp eq ptr %2, null, !dbg !3229
  br i1 %3, label %4, label %5, !dbg !3230

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3231
  unreachable, !dbg !3231

5:                                                ; preds = %1
  ret ptr %2, !dbg !3232
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3233 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3234 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3238, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.value(metadata i64 %0, metadata !3240, metadata !DIExpression()), !dbg !3244
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !3246
  call void @llvm.dbg.value(metadata ptr %2, metadata !3200, metadata !DIExpression()), !dbg !3247
  %3 = icmp eq ptr %2, null, !dbg !3249
  br i1 %3, label %4, label %5, !dbg !3250

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3251
  unreachable, !dbg !3251

5:                                                ; preds = %1
  ret ptr %2, !dbg !3252
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3253 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3257, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i64 %0, metadata !3224, metadata !DIExpression()), !dbg !3259
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !3261
  call void @llvm.dbg.value(metadata ptr %2, metadata !3200, metadata !DIExpression()), !dbg !3262
  %3 = icmp eq ptr %2, null, !dbg !3264
  br i1 %3, label %4, label %5, !dbg !3265

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3266
  unreachable, !dbg !3266

5:                                                ; preds = %1
  ret ptr %2, !dbg !3267
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3268 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3272, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata i64 %1, metadata !3273, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata ptr %0, metadata !3275, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i64 %1, metadata !3279, metadata !DIExpression()), !dbg !3280
  %3 = icmp eq i64 %1, 0, !dbg !3282
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3282
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #42, !dbg !3283
  call void @llvm.dbg.value(metadata ptr %5, metadata !3200, metadata !DIExpression()), !dbg !3284
  %6 = icmp eq ptr %5, null, !dbg !3286
  br i1 %6, label %7, label %8, !dbg !3287

7:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3288
  unreachable, !dbg !3288

8:                                                ; preds = %2
  ret ptr %5, !dbg !3289
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3290 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3291 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3295, metadata !DIExpression()), !dbg !3297
  call void @llvm.dbg.value(metadata i64 %1, metadata !3296, metadata !DIExpression()), !dbg !3297
  call void @llvm.dbg.value(metadata ptr %0, metadata !3298, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i64 %1, metadata !3301, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata ptr %0, metadata !3275, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i64 %1, metadata !3279, metadata !DIExpression()), !dbg !3304
  %3 = icmp eq i64 %1, 0, !dbg !3306
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3306
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #42, !dbg !3307
  call void @llvm.dbg.value(metadata ptr %5, metadata !3200, metadata !DIExpression()), !dbg !3308
  %6 = icmp eq ptr %5, null, !dbg !3310
  br i1 %6, label %7, label %8, !dbg !3311

7:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3312
  unreachable, !dbg !3312

8:                                                ; preds = %2
  ret ptr %5, !dbg !3313
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3314 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3318, metadata !DIExpression()), !dbg !3321
  call void @llvm.dbg.value(metadata i64 %1, metadata !3319, metadata !DIExpression()), !dbg !3321
  call void @llvm.dbg.value(metadata i64 %2, metadata !3320, metadata !DIExpression()), !dbg !3321
  call void @llvm.dbg.value(metadata ptr %0, metadata !3322, metadata !DIExpression()), !dbg !3327
  call void @llvm.dbg.value(metadata i64 %1, metadata !3325, metadata !DIExpression()), !dbg !3327
  call void @llvm.dbg.value(metadata i64 %2, metadata !3326, metadata !DIExpression()), !dbg !3327
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !3329
  call void @llvm.dbg.value(metadata ptr %4, metadata !3200, metadata !DIExpression()), !dbg !3330
  %5 = icmp eq ptr %4, null, !dbg !3332
  br i1 %5, label %6, label %7, !dbg !3333

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !3334
  unreachable, !dbg !3334

7:                                                ; preds = %3
  ret ptr %4, !dbg !3335
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3336 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3340, metadata !DIExpression()), !dbg !3342
  call void @llvm.dbg.value(metadata i64 %1, metadata !3341, metadata !DIExpression()), !dbg !3342
  call void @llvm.dbg.value(metadata ptr null, metadata !3192, metadata !DIExpression()), !dbg !3343
  call void @llvm.dbg.value(metadata i64 %0, metadata !3195, metadata !DIExpression()), !dbg !3343
  call void @llvm.dbg.value(metadata i64 %1, metadata !3196, metadata !DIExpression()), !dbg !3343
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #36, !dbg !3345
  call void @llvm.dbg.value(metadata ptr %3, metadata !3200, metadata !DIExpression()), !dbg !3346
  %4 = icmp eq ptr %3, null, !dbg !3348
  br i1 %4, label %5, label %6, !dbg !3349

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3350
  unreachable, !dbg !3350

6:                                                ; preds = %2
  ret ptr %3, !dbg !3351
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3352 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3356, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata i64 %1, metadata !3357, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata ptr null, metadata !3318, metadata !DIExpression()), !dbg !3359
  call void @llvm.dbg.value(metadata i64 %0, metadata !3319, metadata !DIExpression()), !dbg !3359
  call void @llvm.dbg.value(metadata i64 %1, metadata !3320, metadata !DIExpression()), !dbg !3359
  call void @llvm.dbg.value(metadata ptr null, metadata !3322, metadata !DIExpression()), !dbg !3361
  call void @llvm.dbg.value(metadata i64 %0, metadata !3325, metadata !DIExpression()), !dbg !3361
  call void @llvm.dbg.value(metadata i64 %1, metadata !3326, metadata !DIExpression()), !dbg !3361
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #36, !dbg !3363
  call void @llvm.dbg.value(metadata ptr %3, metadata !3200, metadata !DIExpression()), !dbg !3364
  %4 = icmp eq ptr %3, null, !dbg !3366
  br i1 %4, label %5, label %6, !dbg !3367

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3368
  unreachable, !dbg !3368

6:                                                ; preds = %2
  ret ptr %3, !dbg !3369
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #11 !dbg !3370 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3374, metadata !DIExpression()), !dbg !3376
  call void @llvm.dbg.value(metadata ptr %1, metadata !3375, metadata !DIExpression()), !dbg !3376
  call void @llvm.dbg.value(metadata ptr %0, metadata !819, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata ptr %1, metadata !820, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i64 1, metadata !821, metadata !DIExpression()), !dbg !3377
  %3 = load i64, ptr %1, align 8, !dbg !3379, !tbaa !2479
  call void @llvm.dbg.value(metadata i64 %3, metadata !822, metadata !DIExpression()), !dbg !3377
  %4 = icmp eq ptr %0, null, !dbg !3380
  br i1 %4, label %5, label %8, !dbg !3382

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3383
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3386
  br label %15, !dbg !3386

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3387
  %10 = add nuw i64 %9, 1, !dbg !3387
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3387
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3387
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3387
  call void @llvm.dbg.value(metadata i64 %13, metadata !822, metadata !DIExpression()), !dbg !3377
  br i1 %12, label %14, label %15, !dbg !3390

14:                                               ; preds = %8
  tail call void @xalloc_die() #38, !dbg !3391
  unreachable, !dbg !3391

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3377
  call void @llvm.dbg.value(metadata i64 %16, metadata !822, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata ptr %0, metadata !3192, metadata !DIExpression()), !dbg !3392
  call void @llvm.dbg.value(metadata i64 %16, metadata !3195, metadata !DIExpression()), !dbg !3392
  call void @llvm.dbg.value(metadata i64 1, metadata !3196, metadata !DIExpression()), !dbg !3392
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #36, !dbg !3394
  call void @llvm.dbg.value(metadata ptr %17, metadata !3200, metadata !DIExpression()), !dbg !3395
  %18 = icmp eq ptr %17, null, !dbg !3397
  br i1 %18, label %19, label %20, !dbg !3398

19:                                               ; preds = %15
  tail call void @xalloc_die() #38, !dbg !3399
  unreachable, !dbg !3399

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !819, metadata !DIExpression()), !dbg !3377
  store i64 %16, ptr %1, align 8, !dbg !3400, !tbaa !2479
  ret ptr %17, !dbg !3401
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #11 !dbg !814 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !819, metadata !DIExpression()), !dbg !3402
  call void @llvm.dbg.value(metadata ptr %1, metadata !820, metadata !DIExpression()), !dbg !3402
  call void @llvm.dbg.value(metadata i64 %2, metadata !821, metadata !DIExpression()), !dbg !3402
  %4 = load i64, ptr %1, align 8, !dbg !3403, !tbaa !2479
  call void @llvm.dbg.value(metadata i64 %4, metadata !822, metadata !DIExpression()), !dbg !3402
  %5 = icmp eq ptr %0, null, !dbg !3404
  br i1 %5, label %6, label %13, !dbg !3405

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3406
  br i1 %7, label %8, label %20, !dbg !3407

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3408
  call void @llvm.dbg.value(metadata i64 %9, metadata !822, metadata !DIExpression()), !dbg !3402
  %10 = icmp ugt i64 %2, 128, !dbg !3410
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3411
  call void @llvm.dbg.value(metadata i64 %12, metadata !822, metadata !DIExpression()), !dbg !3402
  br label %20, !dbg !3412

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3413
  %15 = add nuw i64 %14, 1, !dbg !3413
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3413
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3413
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3413
  call void @llvm.dbg.value(metadata i64 %18, metadata !822, metadata !DIExpression()), !dbg !3402
  br i1 %17, label %19, label %20, !dbg !3414

19:                                               ; preds = %13
  tail call void @xalloc_die() #38, !dbg !3415
  unreachable, !dbg !3415

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3402
  call void @llvm.dbg.value(metadata i64 %21, metadata !822, metadata !DIExpression()), !dbg !3402
  call void @llvm.dbg.value(metadata ptr %0, metadata !3192, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata i64 %21, metadata !3195, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata i64 %2, metadata !3196, metadata !DIExpression()), !dbg !3416
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #36, !dbg !3418
  call void @llvm.dbg.value(metadata ptr %22, metadata !3200, metadata !DIExpression()), !dbg !3419
  %23 = icmp eq ptr %22, null, !dbg !3421
  br i1 %23, label %24, label %25, !dbg !3422

24:                                               ; preds = %20
  tail call void @xalloc_die() #38, !dbg !3423
  unreachable, !dbg !3423

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !819, metadata !DIExpression()), !dbg !3402
  store i64 %21, ptr %1, align 8, !dbg !3424, !tbaa !2479
  ret ptr %22, !dbg !3425
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #11 !dbg !826 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !834, metadata !DIExpression()), !dbg !3426
  call void @llvm.dbg.value(metadata ptr %1, metadata !835, metadata !DIExpression()), !dbg !3426
  call void @llvm.dbg.value(metadata i64 %2, metadata !836, metadata !DIExpression()), !dbg !3426
  call void @llvm.dbg.value(metadata i64 %3, metadata !837, metadata !DIExpression()), !dbg !3426
  call void @llvm.dbg.value(metadata i64 %4, metadata !838, metadata !DIExpression()), !dbg !3426
  %6 = load i64, ptr %1, align 8, !dbg !3427, !tbaa !2479
  call void @llvm.dbg.value(metadata i64 %6, metadata !839, metadata !DIExpression()), !dbg !3426
  %7 = ashr i64 %6, 1, !dbg !3428
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3428
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3428
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3428
  call void @llvm.dbg.value(metadata i64 %10, metadata !840, metadata !DIExpression()), !dbg !3426
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3430
  call void @llvm.dbg.value(metadata i64 %11, metadata !840, metadata !DIExpression()), !dbg !3426
  %12 = icmp sgt i64 %3, -1, !dbg !3431
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3433
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3433
  call void @llvm.dbg.value(metadata i64 %15, metadata !840, metadata !DIExpression()), !dbg !3426
  %16 = icmp slt i64 %4, 0, !dbg !3434
  br i1 %16, label %17, label %30, !dbg !3434

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3434
  br i1 %18, label %19, label %24, !dbg !3434

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3434
  %21 = udiv i64 9223372036854775807, %20, !dbg !3434
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3434
  br i1 %23, label %46, label %43, !dbg !3434

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3434
  br i1 %25, label %43, label %26, !dbg !3434

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3434
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3434
  %29 = icmp ult i64 %28, %15, !dbg !3434
  br i1 %29, label %46, label %43, !dbg !3434

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3434
  br i1 %31, label %43, label %32, !dbg !3434

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3434
  br i1 %33, label %34, label %40, !dbg !3434

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3434
  br i1 %35, label %43, label %36, !dbg !3434

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3434
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3434
  %39 = icmp ult i64 %38, %4, !dbg !3434
  br i1 %39, label %46, label %43, !dbg !3434

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !3434
  br i1 %42, label %46, label %43, !dbg !3434

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !841, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3426
  %44 = mul i64 %15, %4, !dbg !3434
  call void @llvm.dbg.value(metadata i64 %44, metadata !841, metadata !DIExpression()), !dbg !3426
  %45 = icmp slt i64 %44, 128, !dbg !3434
  br i1 %45, label %46, label %52, !dbg !3434

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !842, metadata !DIExpression()), !dbg !3426
  %48 = sdiv i64 %47, %4, !dbg !3435
  call void @llvm.dbg.value(metadata i64 %48, metadata !840, metadata !DIExpression()), !dbg !3426
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !3438
  call void @llvm.dbg.value(metadata i64 %51, metadata !841, metadata !DIExpression()), !dbg !3426
  br label %52, !dbg !3439

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3426
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !3426
  call void @llvm.dbg.value(metadata i64 %54, metadata !841, metadata !DIExpression()), !dbg !3426
  call void @llvm.dbg.value(metadata i64 %53, metadata !840, metadata !DIExpression()), !dbg !3426
  %55 = icmp eq ptr %0, null, !dbg !3440
  br i1 %55, label %56, label %57, !dbg !3442

56:                                               ; preds = %52
  store i64 0, ptr %1, align 8, !dbg !3443, !tbaa !2479
  br label %57, !dbg !3444

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !3445
  %59 = icmp slt i64 %58, %2, !dbg !3447
  br i1 %59, label %60, label %97, !dbg !3448

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3449
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !3449
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !3449
  call void @llvm.dbg.value(metadata i64 %63, metadata !840, metadata !DIExpression()), !dbg !3426
  %64 = icmp sgt i64 %63, %3
  %65 = select i1 %12, i1 %64, i1 false
  %66 = or i1 %62, %65, !dbg !3450
  br i1 %66, label %96, label %67, !dbg !3450

67:                                               ; preds = %60
  br i1 %16, label %68, label %81, !dbg !3451

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !3451
  br i1 %69, label %70, label %75, !dbg !3451

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !3451
  %72 = udiv i64 9223372036854775807, %71, !dbg !3451
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !3451
  br i1 %74, label %96, label %94, !dbg !3451

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !3451
  br i1 %76, label %94, label %77, !dbg !3451

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !3451
  %79 = udiv i64 -9223372036854775808, %78, !dbg !3451
  %80 = icmp ult i64 %79, %63, !dbg !3451
  br i1 %80, label %96, label %94, !dbg !3451

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !3451
  br i1 %82, label %94, label %83, !dbg !3451

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !3451
  br i1 %84, label %85, label %91, !dbg !3451

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !3451
  br i1 %86, label %94, label %87, !dbg !3451

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !3451
  %89 = udiv i64 -9223372036854775808, %88, !dbg !3451
  %90 = icmp ult i64 %89, %4, !dbg !3451
  br i1 %90, label %96, label %94, !dbg !3451

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4
  %93 = icmp ult i64 %92, %63, !dbg !3451
  br i1 %93, label %96, label %94, !dbg !3451

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !841, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3426
  %95 = mul i64 %63, %4, !dbg !3451
  call void @llvm.dbg.value(metadata i64 %95, metadata !841, metadata !DIExpression()), !dbg !3426
  br label %97, !dbg !3452

96:                                               ; preds = %70, %77, %87, %91, %60
  tail call void @xalloc_die() #38, !dbg !3453
  unreachable, !dbg !3453

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !3426
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !3426
  call void @llvm.dbg.value(metadata i64 %99, metadata !841, metadata !DIExpression()), !dbg !3426
  call void @llvm.dbg.value(metadata i64 %98, metadata !840, metadata !DIExpression()), !dbg !3426
  call void @llvm.dbg.value(metadata ptr %0, metadata !3272, metadata !DIExpression()), !dbg !3454
  call void @llvm.dbg.value(metadata i64 %99, metadata !3273, metadata !DIExpression()), !dbg !3454
  call void @llvm.dbg.value(metadata ptr %0, metadata !3275, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i64 %99, metadata !3279, metadata !DIExpression()), !dbg !3456
  %100 = icmp eq i64 %99, 0, !dbg !3458
  %101 = select i1 %100, i64 1, i64 %99, !dbg !3458
  %102 = tail call ptr @realloc(ptr noundef %0, i64 noundef %101) #42, !dbg !3459
  call void @llvm.dbg.value(metadata ptr %102, metadata !3200, metadata !DIExpression()), !dbg !3460
  %103 = icmp eq ptr %102, null, !dbg !3462
  br i1 %103, label %104, label %105, !dbg !3463

104:                                              ; preds = %97
  tail call void @xalloc_die() #38, !dbg !3464
  unreachable, !dbg !3464

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata ptr %102, metadata !834, metadata !DIExpression()), !dbg !3426
  store i64 %98, ptr %1, align 8, !dbg !3465, !tbaa !2479
  ret ptr %102, !dbg !3466
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3467 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3469, metadata !DIExpression()), !dbg !3470
  call void @llvm.dbg.value(metadata i64 %0, metadata !3471, metadata !DIExpression()), !dbg !3475
  call void @llvm.dbg.value(metadata i64 1, metadata !3474, metadata !DIExpression()), !dbg !3475
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !3477
  call void @llvm.dbg.value(metadata ptr %2, metadata !3200, metadata !DIExpression()), !dbg !3478
  %3 = icmp eq ptr %2, null, !dbg !3480
  br i1 %3, label %4, label %5, !dbg !3481

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3482
  unreachable, !dbg !3482

5:                                                ; preds = %1
  ret ptr %2, !dbg !3483
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3484 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3472 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3471, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i64 %1, metadata !3474, metadata !DIExpression()), !dbg !3485
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !3486
  call void @llvm.dbg.value(metadata ptr %3, metadata !3200, metadata !DIExpression()), !dbg !3487
  %4 = icmp eq ptr %3, null, !dbg !3489
  br i1 %4, label %5, label %6, !dbg !3490

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3491
  unreachable, !dbg !3491

6:                                                ; preds = %2
  ret ptr %3, !dbg !3492
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3493 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3495, metadata !DIExpression()), !dbg !3496
  call void @llvm.dbg.value(metadata i64 %0, metadata !3497, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata i64 1, metadata !3500, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata i64 %0, metadata !3503, metadata !DIExpression()), !dbg !3507
  call void @llvm.dbg.value(metadata i64 1, metadata !3506, metadata !DIExpression()), !dbg !3507
  call void @llvm.dbg.value(metadata i64 %0, metadata !3503, metadata !DIExpression()), !dbg !3507
  call void @llvm.dbg.value(metadata i64 1, metadata !3506, metadata !DIExpression()), !dbg !3507
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !3509
  call void @llvm.dbg.value(metadata ptr %2, metadata !3200, metadata !DIExpression()), !dbg !3510
  %3 = icmp eq ptr %2, null, !dbg !3512
  br i1 %3, label %4, label %5, !dbg !3513

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3514
  unreachable, !dbg !3514

5:                                                ; preds = %1
  ret ptr %2, !dbg !3515
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3498 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3497, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.value(metadata i64 %1, metadata !3500, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.value(metadata i64 %0, metadata !3503, metadata !DIExpression()), !dbg !3517
  call void @llvm.dbg.value(metadata i64 %1, metadata !3506, metadata !DIExpression()), !dbg !3517
  call void @llvm.dbg.value(metadata i64 %0, metadata !3503, metadata !DIExpression()), !dbg !3517
  call void @llvm.dbg.value(metadata i64 %1, metadata !3506, metadata !DIExpression()), !dbg !3517
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !3519
  call void @llvm.dbg.value(metadata ptr %3, metadata !3200, metadata !DIExpression()), !dbg !3520
  %4 = icmp eq ptr %3, null, !dbg !3522
  br i1 %4, label %5, label %6, !dbg !3523

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3524
  unreachable, !dbg !3524

6:                                                ; preds = %2
  ret ptr %3, !dbg !3525
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3526 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3530, metadata !DIExpression()), !dbg !3532
  call void @llvm.dbg.value(metadata i64 %1, metadata !3531, metadata !DIExpression()), !dbg !3532
  call void @llvm.dbg.value(metadata i64 %1, metadata !3224, metadata !DIExpression()), !dbg !3533
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3535
  call void @llvm.dbg.value(metadata ptr %3, metadata !3200, metadata !DIExpression()), !dbg !3536
  %4 = icmp eq ptr %3, null, !dbg !3538
  br i1 %4, label %5, label %6, !dbg !3539

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3540
  unreachable, !dbg !3540

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3541, metadata !DIExpression()), !dbg !3549
  call void @llvm.dbg.value(metadata ptr %0, metadata !3547, metadata !DIExpression()), !dbg !3549
  call void @llvm.dbg.value(metadata i64 %1, metadata !3548, metadata !DIExpression()), !dbg !3549
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3551
  ret ptr %3, !dbg !3552
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3553 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3557, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.value(metadata i64 %1, metadata !3558, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.value(metadata i64 %1, metadata !3238, metadata !DIExpression()), !dbg !3560
  call void @llvm.dbg.value(metadata i64 %1, metadata !3240, metadata !DIExpression()), !dbg !3562
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3564
  call void @llvm.dbg.value(metadata ptr %3, metadata !3200, metadata !DIExpression()), !dbg !3565
  %4 = icmp eq ptr %3, null, !dbg !3567
  br i1 %4, label %5, label %6, !dbg !3568

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3569
  unreachable, !dbg !3569

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3541, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata ptr %0, metadata !3547, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata i64 %1, metadata !3548, metadata !DIExpression()), !dbg !3570
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3572
  ret ptr %3, !dbg !3573
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #11 !dbg !3574 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3578, metadata !DIExpression()), !dbg !3581
  call void @llvm.dbg.value(metadata i64 %1, metadata !3579, metadata !DIExpression()), !dbg !3581
  %3 = add nsw i64 %1, 1, !dbg !3582
  call void @llvm.dbg.value(metadata i64 %3, metadata !3238, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata i64 %3, metadata !3240, metadata !DIExpression()), !dbg !3585
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3587
  call void @llvm.dbg.value(metadata ptr %4, metadata !3200, metadata !DIExpression()), !dbg !3588
  %5 = icmp eq ptr %4, null, !dbg !3590
  br i1 %5, label %6, label %7, !dbg !3591

6:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3592
  unreachable, !dbg !3592

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !3580, metadata !DIExpression()), !dbg !3581
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3593
  store i8 0, ptr %8, align 1, !dbg !3594, !tbaa !890
  call void @llvm.dbg.value(metadata ptr %4, metadata !3541, metadata !DIExpression()), !dbg !3595
  call void @llvm.dbg.value(metadata ptr %0, metadata !3547, metadata !DIExpression()), !dbg !3595
  call void @llvm.dbg.value(metadata i64 %1, metadata !3548, metadata !DIExpression()), !dbg !3595
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3597
  ret ptr %4, !dbg !3598
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #11 !dbg !3599 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3601, metadata !DIExpression()), !dbg !3602
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #37, !dbg !3603
  %3 = add i64 %2, 1, !dbg !3604
  call void @llvm.dbg.value(metadata ptr %0, metadata !3530, metadata !DIExpression()), !dbg !3605
  call void @llvm.dbg.value(metadata i64 %3, metadata !3531, metadata !DIExpression()), !dbg !3605
  call void @llvm.dbg.value(metadata i64 %3, metadata !3224, metadata !DIExpression()), !dbg !3607
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3609
  call void @llvm.dbg.value(metadata ptr %4, metadata !3200, metadata !DIExpression()), !dbg !3610
  %5 = icmp eq ptr %4, null, !dbg !3612
  br i1 %5, label %6, label %7, !dbg !3613

6:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3614
  unreachable, !dbg !3614

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3541, metadata !DIExpression()), !dbg !3615
  call void @llvm.dbg.value(metadata ptr %0, metadata !3547, metadata !DIExpression()), !dbg !3615
  call void @llvm.dbg.value(metadata i64 %3, metadata !3548, metadata !DIExpression()), !dbg !3615
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #36, !dbg !3617
  ret ptr %4, !dbg !3618
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3619 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3624, !tbaa !981
  call void @llvm.dbg.value(metadata i32 %1, metadata !3621, metadata !DIExpression()), !dbg !3625
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.155, ptr noundef nonnull @.str.2.156, i32 noundef 5) #36, !dbg !3624
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.157, ptr noundef %2) #36, !dbg !3624
  %3 = icmp eq i32 %1, 0, !dbg !3624
  tail call void @llvm.assume(i1 %3), !dbg !3624
  tail call void @abort() #38, !dbg !3626
  unreachable, !dbg !3626
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #11 !dbg !3627 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3665, metadata !DIExpression()), !dbg !3670
  %2 = tail call i64 @__fpending(ptr noundef %0) #36, !dbg !3671
  call void @llvm.dbg.value(metadata i1 poison, metadata !3666, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3670
  call void @llvm.dbg.value(metadata ptr %0, metadata !3672, metadata !DIExpression()), !dbg !3675
  %3 = load i32, ptr %0, align 8, !dbg !3677, !tbaa !3678
  %4 = and i32 %3, 32, !dbg !3679
  %5 = icmp eq i32 %4, 0, !dbg !3679
  call void @llvm.dbg.value(metadata i1 %5, metadata !3668, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3670
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #36, !dbg !3680
  %7 = icmp eq i32 %6, 0, !dbg !3681
  call void @llvm.dbg.value(metadata i1 %7, metadata !3669, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3670
  br i1 %5, label %8, label %18, !dbg !3682

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3684
  call void @llvm.dbg.value(metadata i1 %9, metadata !3666, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3670
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3685
  %11 = xor i1 %7, true, !dbg !3685
  %12 = sext i1 %11 to i32, !dbg !3685
  br i1 %10, label %21, label %13, !dbg !3685

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #39, !dbg !3686
  %15 = load i32, ptr %14, align 4, !dbg !3686, !tbaa !981
  %16 = icmp ne i32 %15, 9, !dbg !3687
  %17 = sext i1 %16 to i32, !dbg !3688
  br label %21, !dbg !3688

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3689

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #39, !dbg !3691
  store i32 0, ptr %20, align 4, !dbg !3693, !tbaa !981
  br label %21, !dbg !3691

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3670
  ret i32 %22, !dbg !3694
}

; Function Attrs: nounwind
declare !dbg !3695 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #11 !dbg !3699 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3737, metadata !DIExpression()), !dbg !3741
  call void @llvm.dbg.value(metadata i32 0, metadata !3738, metadata !DIExpression()), !dbg !3741
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3742
  call void @llvm.dbg.value(metadata i32 %2, metadata !3739, metadata !DIExpression()), !dbg !3741
  %3 = icmp slt i32 %2, 0, !dbg !3743
  br i1 %3, label %4, label %6, !dbg !3745

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3746
  br label %24, !dbg !3747

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #36, !dbg !3748
  %8 = icmp eq i32 %7, 0, !dbg !3748
  br i1 %8, label %13, label %9, !dbg !3750

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3751
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #36, !dbg !3752
  %12 = icmp eq i64 %11, -1, !dbg !3753
  br i1 %12, label %16, label %13, !dbg !3754

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #36, !dbg !3755
  %15 = icmp eq i32 %14, 0, !dbg !3755
  br i1 %15, label %16, label %18, !dbg !3756

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !3738, metadata !DIExpression()), !dbg !3741
  call void @llvm.dbg.value(metadata i32 0, metadata !3740, metadata !DIExpression()), !dbg !3741
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3757
  call void @llvm.dbg.value(metadata i32 %17, metadata !3740, metadata !DIExpression()), !dbg !3741
  br label %24, !dbg !3758

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #39, !dbg !3759
  %20 = load i32, ptr %19, align 4, !dbg !3759, !tbaa !981
  call void @llvm.dbg.value(metadata i32 %20, metadata !3738, metadata !DIExpression()), !dbg !3741
  call void @llvm.dbg.value(metadata i32 0, metadata !3740, metadata !DIExpression()), !dbg !3741
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3757
  call void @llvm.dbg.value(metadata i32 %21, metadata !3740, metadata !DIExpression()), !dbg !3741
  %22 = icmp eq i32 %20, 0, !dbg !3760
  br i1 %22, label %24, label %23, !dbg !3758

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3762, !tbaa !981
  call void @llvm.dbg.value(metadata i32 -1, metadata !3740, metadata !DIExpression()), !dbg !3741
  br label %24, !dbg !3764

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3741
  ret i32 %25, !dbg !3765
}

; Function Attrs: nofree nounwind
declare !dbg !3766 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3767 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !3768 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3769 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #11 !dbg !3772 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3810, metadata !DIExpression()), !dbg !3811
  %2 = icmp eq ptr %0, null, !dbg !3812
  br i1 %2, label %6, label %3, !dbg !3814

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #36, !dbg !3815
  %5 = icmp eq i32 %4, 0, !dbg !3815
  br i1 %5, label %6, label %8, !dbg !3816

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3817
  br label %16, !dbg !3818

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3819, metadata !DIExpression()), !dbg !3824
  %9 = load i32, ptr %0, align 8, !dbg !3826, !tbaa !3678
  %10 = and i32 %9, 256, !dbg !3828
  %11 = icmp eq i32 %10, 0, !dbg !3828
  br i1 %11, label %14, label %12, !dbg !3829

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #36, !dbg !3830
  br label %14, !dbg !3830

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3831
  br label %16, !dbg !3832

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3811
  ret i32 %17, !dbg !3833
}

; Function Attrs: nofree nounwind
declare !dbg !3834 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #11 !dbg !3835 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3874, metadata !DIExpression()), !dbg !3880
  call void @llvm.dbg.value(metadata i64 %1, metadata !3875, metadata !DIExpression()), !dbg !3880
  call void @llvm.dbg.value(metadata i32 %2, metadata !3876, metadata !DIExpression()), !dbg !3880
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3881
  %5 = load ptr, ptr %4, align 8, !dbg !3881, !tbaa !3882
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3883
  %7 = load ptr, ptr %6, align 8, !dbg !3883, !tbaa !3884
  %8 = icmp eq ptr %5, %7, !dbg !3885
  br i1 %8, label %9, label %27, !dbg !3886

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3887
  %11 = load ptr, ptr %10, align 8, !dbg !3887, !tbaa !1246
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3888
  %13 = load ptr, ptr %12, align 8, !dbg !3888, !tbaa !3889
  %14 = icmp eq ptr %11, %13, !dbg !3890
  br i1 %14, label %15, label %27, !dbg !3891

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3892
  %17 = load ptr, ptr %16, align 8, !dbg !3892, !tbaa !3893
  %18 = icmp eq ptr %17, null, !dbg !3894
  br i1 %18, label %19, label %27, !dbg !3895

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3896
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #36, !dbg !3897
  call void @llvm.dbg.value(metadata i64 %21, metadata !3877, metadata !DIExpression()), !dbg !3898
  %22 = icmp eq i64 %21, -1, !dbg !3899
  br i1 %22, label %29, label %23, !dbg !3901

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3902, !tbaa !3678
  %25 = and i32 %24, -17, !dbg !3902
  store i32 %25, ptr %0, align 8, !dbg !3902, !tbaa !3678
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3903
  store i64 %21, ptr %26, align 8, !dbg !3904, !tbaa !3905
  br label %29, !dbg !3906

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3907
  br label %29, !dbg !3908

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3880
  ret i32 %30, !dbg !3909
}

; Function Attrs: nofree nounwind
declare !dbg !3910 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #11 !dbg !3913 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3918, metadata !DIExpression()), !dbg !3923
  call void @llvm.dbg.value(metadata ptr %1, metadata !3919, metadata !DIExpression()), !dbg !3923
  call void @llvm.dbg.value(metadata i64 %2, metadata !3920, metadata !DIExpression()), !dbg !3923
  call void @llvm.dbg.value(metadata ptr %3, metadata !3921, metadata !DIExpression()), !dbg !3923
  %5 = icmp eq ptr %1, null, !dbg !3924
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3926
  %7 = select i1 %5, ptr @.str.168, ptr %1, !dbg !3926
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3926
  call void @llvm.dbg.value(metadata i64 %8, metadata !3920, metadata !DIExpression()), !dbg !3923
  call void @llvm.dbg.value(metadata ptr %7, metadata !3919, metadata !DIExpression()), !dbg !3923
  call void @llvm.dbg.value(metadata ptr %6, metadata !3918, metadata !DIExpression()), !dbg !3923
  %9 = icmp eq ptr %3, null, !dbg !3927
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !3929
  call void @llvm.dbg.value(metadata ptr %10, metadata !3921, metadata !DIExpression()), !dbg !3923
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #36, !dbg !3930
  call void @llvm.dbg.value(metadata i64 %11, metadata !3922, metadata !DIExpression()), !dbg !3923
  %12 = icmp ult i64 %11, -3, !dbg !3931
  br i1 %12, label %13, label %17, !dbg !3933

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #37, !dbg !3934
  %15 = icmp eq i32 %14, 0, !dbg !3934
  br i1 %15, label %16, label %29, !dbg !3935

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !3936, metadata !DIExpression()), !dbg !3941
  call void @llvm.dbg.value(metadata ptr %10, metadata !3943, metadata !DIExpression()), !dbg !3948
  call void @llvm.dbg.value(metadata i32 0, metadata !3946, metadata !DIExpression()), !dbg !3948
  call void @llvm.dbg.value(metadata i64 8, metadata !3947, metadata !DIExpression()), !dbg !3948
  store i64 0, ptr %10, align 1, !dbg !3950
  br label %29, !dbg !3951

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !3952
  br i1 %18, label %19, label %20, !dbg !3954

19:                                               ; preds = %17
  tail call void @abort() #38, !dbg !3955
  unreachable, !dbg !3955

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !3956

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #36, !dbg !3958
  br i1 %23, label %29, label %24, !dbg !3959

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !3960
  br i1 %25, label %29, label %26, !dbg !3963

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !3964, !tbaa !890
  %28 = zext i8 %27 to i32, !dbg !3965
  store i32 %28, ptr %6, align 4, !dbg !3966, !tbaa !981
  br label %29, !dbg !3967

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3923
  ret i64 %30, !dbg !3968
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !3969 i32 @mbsinit(ptr noundef) local_unnamed_addr #34

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #35 !dbg !3975 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3977, metadata !DIExpression()), !dbg !3981
  call void @llvm.dbg.value(metadata i64 %1, metadata !3978, metadata !DIExpression()), !dbg !3981
  call void @llvm.dbg.value(metadata i64 %2, metadata !3979, metadata !DIExpression()), !dbg !3981
  %4 = icmp eq i64 %2, 0, !dbg !3982
  br i1 %4, label %8, label %5, !dbg !3982

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !3982
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3982
  br i1 %7, label %13, label %8, !dbg !3982

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3980, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3981
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3980, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3981
  %9 = mul i64 %2, %1, !dbg !3982
  call void @llvm.dbg.value(metadata i64 %9, metadata !3980, metadata !DIExpression()), !dbg !3981
  call void @llvm.dbg.value(metadata ptr %0, metadata !3984, metadata !DIExpression()), !dbg !3988
  call void @llvm.dbg.value(metadata i64 %9, metadata !3987, metadata !DIExpression()), !dbg !3988
  %10 = icmp eq i64 %9, 0, !dbg !3990
  %11 = select i1 %10, i64 1, i64 %9, !dbg !3990
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #42, !dbg !3991
  br label %15, !dbg !3992

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3980, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3981
  %14 = tail call ptr @__errno_location() #39, !dbg !3993
  store i32 12, ptr %14, align 4, !dbg !3995, !tbaa !981
  br label %15, !dbg !3996

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !3981
  ret ptr %16, !dbg !3997
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #11 !dbg !3998 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4002, metadata !DIExpression()), !dbg !4007
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #36, !dbg !4008
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4003, metadata !DIExpression()), !dbg !4009
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #36, !dbg !4010
  %4 = icmp eq i32 %3, 0, !dbg !4010
  br i1 %4, label %5, label %12, !dbg !4012

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4013, metadata !DIExpression()), !dbg !4017
  call void @llvm.dbg.value(metadata ptr @.str.173, metadata !4016, metadata !DIExpression()), !dbg !4017
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.173, i64 2), !dbg !4020
  %7 = icmp eq i32 %6, 0, !dbg !4021
  br i1 %7, label %11, label %8, !dbg !4022

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4013, metadata !DIExpression()), !dbg !4023
  call void @llvm.dbg.value(metadata ptr @.str.1.174, metadata !4016, metadata !DIExpression()), !dbg !4023
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.174, i64 6), !dbg !4025
  %10 = icmp eq i32 %9, 0, !dbg !4026
  br i1 %10, label %11, label %12, !dbg !4027

11:                                               ; preds = %8, %5
  br label %12, !dbg !4028

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4007
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #36, !dbg !4029
  ret i1 %13, !dbg !4029
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #11 !dbg !4030 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4034, metadata !DIExpression()), !dbg !4037
  call void @llvm.dbg.value(metadata ptr %1, metadata !4035, metadata !DIExpression()), !dbg !4037
  call void @llvm.dbg.value(metadata i64 %2, metadata !4036, metadata !DIExpression()), !dbg !4037
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #36, !dbg !4038
  ret i32 %4, !dbg !4039
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #11 !dbg !4040 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4044, metadata !DIExpression()), !dbg !4045
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #36, !dbg !4046
  ret ptr %2, !dbg !4047
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #11 !dbg !4048 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4050, metadata !DIExpression()), !dbg !4052
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #36, !dbg !4053
  call void @llvm.dbg.value(metadata ptr %2, metadata !4051, metadata !DIExpression()), !dbg !4052
  ret ptr %2, !dbg !4054
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #11 !dbg !4055 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4057, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata ptr %1, metadata !4058, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i64 %2, metadata !4059, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i32 %0, metadata !4050, metadata !DIExpression()), !dbg !4065
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #36, !dbg !4067
  call void @llvm.dbg.value(metadata ptr %4, metadata !4051, metadata !DIExpression()), !dbg !4065
  call void @llvm.dbg.value(metadata ptr %4, metadata !4060, metadata !DIExpression()), !dbg !4064
  %5 = icmp eq ptr %4, null, !dbg !4068
  br i1 %5, label %6, label %9, !dbg !4069

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4070
  br i1 %7, label %19, label %8, !dbg !4073

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4074, !tbaa !890
  br label %19, !dbg !4075

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #37, !dbg !4076
  call void @llvm.dbg.value(metadata i64 %10, metadata !4061, metadata !DIExpression()), !dbg !4077
  %11 = icmp ult i64 %10, %2, !dbg !4078
  br i1 %11, label %12, label %14, !dbg !4080

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4081
  call void @llvm.dbg.value(metadata ptr %1, metadata !4083, metadata !DIExpression()), !dbg !4088
  call void @llvm.dbg.value(metadata ptr %4, metadata !4086, metadata !DIExpression()), !dbg !4088
  call void @llvm.dbg.value(metadata i64 %13, metadata !4087, metadata !DIExpression()), !dbg !4088
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #36, !dbg !4090
  br label %19, !dbg !4091

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4092
  br i1 %15, label %19, label %16, !dbg !4095

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4096
  call void @llvm.dbg.value(metadata ptr %1, metadata !4083, metadata !DIExpression()), !dbg !4098
  call void @llvm.dbg.value(metadata ptr %4, metadata !4086, metadata !DIExpression()), !dbg !4098
  call void @llvm.dbg.value(metadata i64 %17, metadata !4087, metadata !DIExpression()), !dbg !4098
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #36, !dbg !4100
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4101
  store i8 0, ptr %18, align 1, !dbg !4102, !tbaa !890
  br label %19, !dbg !4103

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4104
  ret i32 %20, !dbg !4105
}

attributes #0 = { noreturn nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #4 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #5 = { inlinehint nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #6 = { nofree nounwind willreturn memory(argmem: read) }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #8 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #9 = { nofree nounwind memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #11 = { nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #14 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #15 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { nocallback nofree nosync nounwind willreturn }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #23 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
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
attributes #42 = { nounwind allocsize(1) }
attributes #43 = { nounwind allocsize(0) }
attributes #44 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!86, !441, !450, !454, !469, !767, !801, !526, !540, !591, !803, !759, !810, !844, !846, !848, !850, !852, !783, !854, !857, !859, !861}
!llvm.ident = !{!863, !863, !863, !863, !863, !863, !863, !863, !863, !863, !863, !863, !863, !863, !863, !863, !863, !863, !863, !863, !863, !863, !863}
!llvm.module.flags = !{!864, !865, !866, !867, !868, !869, !870}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 111, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/uname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f5faf8ba4adefe8131536a9e79ed0bb1")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 114, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 23)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 118, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 520, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 65)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 122, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 6)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 122, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 5)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 122, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1096, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 137)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 126, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 50)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 129, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 60)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 132, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 424, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 53)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 135, type: !44, isLocal: true, isDefinition: true)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !2, line: 138, type: !39, isLocal: true, isDefinition: true)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(scope: null, file: !2, line: 141, type: !53, isLocal: true, isDefinition: true)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 544, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 68)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(scope: null, file: !2, line: 144, type: !58, isLocal: true, isDefinition: true)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 71)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(scope: null, file: !2, line: 147, type: !63, isLocal: true, isDefinition: true)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 440, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 55)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(scope: null, file: !2, line: 153, type: !68, isLocal: true, isDefinition: true)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 30)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(scope: null, file: !2, line: 159, type: !34, isLocal: true, isDefinition: true)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(scope: null, file: !2, line: 160, type: !75, isLocal: true, isDefinition: true)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 62)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(name: "unknown", scope: !80, file: !2, line: 291, type: !437, isLocal: true, isDefinition: true)
!80 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 289, type: !81, scopeLine: 290, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !86, retainedNodes: !415)
!81 = !DISubroutineType(types: !82)
!82 = !{!83, !83, !84}
!83 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!86 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !87, retainedTypes: !114, globals: !123, splitDebugInlining: false, nameTableKind: None)
!87 = !{!88, !94, !109}
!88 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uname_modes", file: !89, line: 1, baseType: !90, size: 32, elements: !91)
!89 = !DIFile(filename: "src/uname.h", directory: "/src", checksumkind: CSK_MD5, checksum: "44f2d6a16060460070884486e185db64")
!90 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!91 = !{!92, !93}
!92 = !DIEnumerator(name: "UNAME_UNAME", value: 0)
!93 = !DIEnumerator(name: "UNAME_ARCH", value: 1)
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !95, line: 46, baseType: !90, size: 32, elements: !96)
!95 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!96 = !{!97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108}
!97 = !DIEnumerator(name: "_ISupper", value: 256)
!98 = !DIEnumerator(name: "_ISlower", value: 512)
!99 = !DIEnumerator(name: "_ISalpha", value: 1024)
!100 = !DIEnumerator(name: "_ISdigit", value: 2048)
!101 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!102 = !DIEnumerator(name: "_ISspace", value: 8192)
!103 = !DIEnumerator(name: "_ISprint", value: 16384)
!104 = !DIEnumerator(name: "_ISgraph", value: 32768)
!105 = !DIEnumerator(name: "_ISblank", value: 1)
!106 = !DIEnumerator(name: "_IScntrl", value: 2)
!107 = !DIEnumerator(name: "_ISpunct", value: 4)
!108 = !DIEnumerator(name: "_ISalnum", value: 8)
!109 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !110, line: 337, baseType: !83, size: 32, elements: !111)
!110 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!111 = !{!112, !113}
!112 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -2)
!113 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -3)
!114 = !{!83, !115, !116, !119, !121, !85, !122}
!115 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !117, line: 46, baseType: !118)
!117 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!118 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!121 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!123 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !49, !51, !56, !61, !66, !71, !73, !78, !124, !129, !134, !139, !141, !146, !151, !153, !155, !157, !159, !242, !244, !246, !251, !253, !258, !260, !262, !267, !269, !271, !273, !278, !283, !285, !287, !289, !291, !293, !295, !300, !305, !307, !312, !314, !316, !318, !320, !325, !330, !332, !334, !336, !341, !346, !351, !353, !355, !357, !359, !361, !363, !365, !377, !379, !381, !383, !388, !390, !392, !394, !396, !398, !403, !405, !408}
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(scope: null, file: !2, line: 298, type: !126, isLocal: true, isDefinition: true)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !127)
!127 = !{!128}
!128 = !DISubrange(count: 1)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(scope: null, file: !2, line: 299, type: !131, isLocal: true, isDefinition: true)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !132)
!132 = !{!133}
!133 = !DISubrange(count: 10)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(scope: null, file: !2, line: 299, type: !136, isLocal: true, isDefinition: true)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 24)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(scope: null, file: !2, line: 316, type: !9, isLocal: true, isDefinition: true)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(scope: null, file: !2, line: 319, type: !143, isLocal: true, isDefinition: true)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 14)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(scope: null, file: !2, line: 321, type: !148, isLocal: true, isDefinition: true)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: 15)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(scope: null, file: !2, line: 323, type: !143, isLocal: true, isDefinition: true)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(scope: null, file: !2, line: 325, type: !143, isLocal: true, isDefinition: true)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(scope: null, file: !2, line: 327, type: !143, isLocal: true, isDefinition: true)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(scope: null, file: !2, line: 390, type: !131, isLocal: true, isDefinition: true)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !161, file: !110, line: 575, type: !83, isLocal: true, isDefinition: true)
!161 = distinct !DISubprogram(name: "oputs_", scope: !110, file: !110, line: 573, type: !162, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !86, retainedNodes: !164)
!162 = !DISubroutineType(types: !163)
!163 = !{null, !119, !119}
!164 = !{!165, !166, !167, !170, !172, !173, !174, !178, !179, !180, !181, !183, !236, !237, !238, !240, !241}
!165 = !DILocalVariable(name: "program", arg: 1, scope: !161, file: !110, line: 573, type: !119)
!166 = !DILocalVariable(name: "option", arg: 2, scope: !161, file: !110, line: 573, type: !119)
!167 = !DILocalVariable(name: "term", scope: !168, file: !110, line: 585, type: !119)
!168 = distinct !DILexicalBlock(scope: !169, file: !110, line: 582, column: 5)
!169 = distinct !DILexicalBlock(scope: !161, file: !110, line: 581, column: 7)
!170 = !DILocalVariable(name: "double_space", scope: !161, file: !110, line: 594, type: !171)
!171 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!172 = !DILocalVariable(name: "first_word", scope: !161, file: !110, line: 595, type: !119)
!173 = !DILocalVariable(name: "option_text", scope: !161, file: !110, line: 596, type: !119)
!174 = !DILocalVariable(name: "s", scope: !175, file: !110, line: 608, type: !119)
!175 = distinct !DILexicalBlock(scope: !176, file: !110, line: 605, column: 5)
!176 = distinct !DILexicalBlock(scope: !177, file: !110, line: 604, column: 12)
!177 = distinct !DILexicalBlock(scope: !161, file: !110, line: 597, column: 7)
!178 = !DILocalVariable(name: "spaces", scope: !175, file: !110, line: 609, type: !116)
!179 = !DILocalVariable(name: "anchor_len", scope: !161, file: !110, line: 620, type: !116)
!180 = !DILocalVariable(name: "desc_text", scope: !161, file: !110, line: 625, type: !119)
!181 = !DILocalVariable(name: "__ptr", scope: !182, file: !110, line: 644, type: !119)
!182 = distinct !DILexicalBlock(scope: !161, file: !110, line: 644, column: 3)
!183 = !DILocalVariable(name: "__stream", scope: !182, file: !110, line: 644, type: !184)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !186, line: 7, baseType: !187)
!186 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !188, line: 49, size: 1728, elements: !189)
!188 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!189 = !{!190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !205, !207, !208, !209, !213, !214, !216, !217, !220, !222, !225, !228, !229, !230, !231, !232}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !187, file: !188, line: 51, baseType: !83, size: 32)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !187, file: !188, line: 54, baseType: !85, size: 64, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !187, file: !188, line: 55, baseType: !85, size: 64, offset: 128)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !187, file: !188, line: 56, baseType: !85, size: 64, offset: 192)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !187, file: !188, line: 57, baseType: !85, size: 64, offset: 256)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !187, file: !188, line: 58, baseType: !85, size: 64, offset: 320)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !187, file: !188, line: 59, baseType: !85, size: 64, offset: 384)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !187, file: !188, line: 60, baseType: !85, size: 64, offset: 448)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !187, file: !188, line: 61, baseType: !85, size: 64, offset: 512)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !187, file: !188, line: 64, baseType: !85, size: 64, offset: 576)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !187, file: !188, line: 65, baseType: !85, size: 64, offset: 640)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !187, file: !188, line: 66, baseType: !85, size: 64, offset: 704)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !187, file: !188, line: 68, baseType: !203, size: 64, offset: 768)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !188, line: 36, flags: DIFlagFwdDecl)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !187, file: !188, line: 70, baseType: !206, size: 64, offset: 832)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !187, file: !188, line: 72, baseType: !83, size: 32, offset: 896)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !187, file: !188, line: 73, baseType: !83, size: 32, offset: 928)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !187, file: !188, line: 74, baseType: !210, size: 64, offset: 960)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !211, line: 152, baseType: !212)
!211 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!212 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !187, file: !188, line: 77, baseType: !115, size: 16, offset: 1024)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !187, file: !188, line: 78, baseType: !215, size: 8, offset: 1040)
!215 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !187, file: !188, line: 79, baseType: !126, size: 8, offset: 1048)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !187, file: !188, line: 81, baseType: !218, size: 64, offset: 1088)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !188, line: 43, baseType: null)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !187, file: !188, line: 89, baseType: !221, size: 64, offset: 1152)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !211, line: 153, baseType: !212)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !187, file: !188, line: 91, baseType: !223, size: 64, offset: 1216)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !188, line: 37, flags: DIFlagFwdDecl)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !187, file: !188, line: 92, baseType: !226, size: 64, offset: 1280)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !188, line: 38, flags: DIFlagFwdDecl)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !187, file: !188, line: 93, baseType: !206, size: 64, offset: 1344)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !187, file: !188, line: 94, baseType: !122, size: 64, offset: 1408)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !187, file: !188, line: 95, baseType: !116, size: 64, offset: 1472)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !187, file: !188, line: 96, baseType: !83, size: 32, offset: 1536)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !187, file: !188, line: 98, baseType: !233, size: 160, offset: 1568)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !234)
!234 = !{!235}
!235 = !DISubrange(count: 20)
!236 = !DILocalVariable(name: "__cnt", scope: !182, file: !110, line: 644, type: !116)
!237 = !DILocalVariable(name: "url_program", scope: !161, file: !110, line: 648, type: !119)
!238 = !DILocalVariable(name: "__ptr", scope: !239, file: !110, line: 686, type: !119)
!239 = distinct !DILexicalBlock(scope: !161, file: !110, line: 686, column: 3)
!240 = !DILocalVariable(name: "__stream", scope: !239, file: !110, line: 686, type: !184)
!241 = !DILocalVariable(name: "__cnt", scope: !239, file: !110, line: 686, type: !116)
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(scope: null, file: !110, line: 585, type: !24, isLocal: true, isDefinition: true)
!244 = !DIGlobalVariableExpression(var: !245, expr: !DIExpression())
!245 = distinct !DIGlobalVariable(scope: null, file: !110, line: 586, type: !24, isLocal: true, isDefinition: true)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(scope: null, file: !110, line: 595, type: !248, isLocal: true, isDefinition: true)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !249)
!249 = !{!250}
!250 = !DISubrange(count: 4)
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(scope: null, file: !110, line: 620, type: !19, isLocal: true, isDefinition: true)
!253 = !DIGlobalVariableExpression(var: !254, expr: !DIExpression())
!254 = distinct !DIGlobalVariable(scope: null, file: !110, line: 648, type: !255, isLocal: true, isDefinition: true)
!255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !256)
!256 = !{!257}
!257 = !DISubrange(count: 2)
!258 = !DIGlobalVariableExpression(var: !259, expr: !DIExpression())
!259 = distinct !DIGlobalVariable(scope: null, file: !110, line: 648, type: !24, isLocal: true, isDefinition: true)
!260 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression())
!261 = distinct !DIGlobalVariable(scope: null, file: !110, line: 649, type: !248, isLocal: true, isDefinition: true)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(scope: null, file: !110, line: 649, type: !264, isLocal: true, isDefinition: true)
!264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !265)
!265 = !{!266}
!266 = !DISubrange(count: 3)
!267 = !DIGlobalVariableExpression(var: !268, expr: !DIExpression())
!268 = distinct !DIGlobalVariable(scope: null, file: !110, line: 650, type: !24, isLocal: true, isDefinition: true)
!269 = !DIGlobalVariableExpression(var: !270, expr: !DIExpression())
!270 = distinct !DIGlobalVariable(scope: null, file: !110, line: 651, type: !19, isLocal: true, isDefinition: true)
!271 = !DIGlobalVariableExpression(var: !272, expr: !DIExpression())
!272 = distinct !DIGlobalVariable(scope: null, file: !110, line: 651, type: !19, isLocal: true, isDefinition: true)
!273 = !DIGlobalVariableExpression(var: !274, expr: !DIExpression())
!274 = distinct !DIGlobalVariable(scope: null, file: !110, line: 652, type: !275, isLocal: true, isDefinition: true)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !276)
!276 = !{!277}
!277 = !DISubrange(count: 7)
!278 = !DIGlobalVariableExpression(var: !279, expr: !DIExpression())
!279 = distinct !DIGlobalVariable(scope: null, file: !110, line: 653, type: !280, isLocal: true, isDefinition: true)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !281)
!281 = !{!282}
!282 = !DISubrange(count: 8)
!283 = !DIGlobalVariableExpression(var: !284, expr: !DIExpression())
!284 = distinct !DIGlobalVariable(scope: null, file: !110, line: 654, type: !131, isLocal: true, isDefinition: true)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(scope: null, file: !110, line: 655, type: !131, isLocal: true, isDefinition: true)
!287 = !DIGlobalVariableExpression(var: !288, expr: !DIExpression())
!288 = distinct !DIGlobalVariable(scope: null, file: !110, line: 656, type: !131, isLocal: true, isDefinition: true)
!289 = !DIGlobalVariableExpression(var: !290, expr: !DIExpression())
!290 = distinct !DIGlobalVariable(scope: null, file: !110, line: 657, type: !131, isLocal: true, isDefinition: true)
!291 = !DIGlobalVariableExpression(var: !292, expr: !DIExpression())
!292 = distinct !DIGlobalVariable(scope: null, file: !110, line: 663, type: !275, isLocal: true, isDefinition: true)
!293 = !DIGlobalVariableExpression(var: !294, expr: !DIExpression())
!294 = distinct !DIGlobalVariable(scope: null, file: !110, line: 664, type: !131, isLocal: true, isDefinition: true)
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(scope: null, file: !110, line: 669, type: !297, isLocal: true, isDefinition: true)
!297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !298)
!298 = !{!299}
!299 = !DISubrange(count: 17)
!300 = !DIGlobalVariableExpression(var: !301, expr: !DIExpression())
!301 = distinct !DIGlobalVariable(scope: null, file: !110, line: 669, type: !302, isLocal: true, isDefinition: true)
!302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !303)
!303 = !{!304}
!304 = !DISubrange(count: 40)
!305 = !DIGlobalVariableExpression(var: !306, expr: !DIExpression())
!306 = distinct !DIGlobalVariable(scope: null, file: !110, line: 676, type: !148, isLocal: true, isDefinition: true)
!307 = !DIGlobalVariableExpression(var: !308, expr: !DIExpression())
!308 = distinct !DIGlobalVariable(scope: null, file: !110, line: 676, type: !309, isLocal: true, isDefinition: true)
!309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !310)
!310 = !{!311}
!311 = !DISubrange(count: 61)
!312 = !DIGlobalVariableExpression(var: !313, expr: !DIExpression())
!313 = distinct !DIGlobalVariable(scope: null, file: !110, line: 679, type: !264, isLocal: true, isDefinition: true)
!314 = !DIGlobalVariableExpression(var: !315, expr: !DIExpression())
!315 = distinct !DIGlobalVariable(scope: null, file: !110, line: 683, type: !24, isLocal: true, isDefinition: true)
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(scope: null, file: !110, line: 688, type: !24, isLocal: true, isDefinition: true)
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression())
!319 = distinct !DIGlobalVariable(scope: null, file: !110, line: 691, type: !280, isLocal: true, isDefinition: true)
!320 = !DIGlobalVariableExpression(var: !321, expr: !DIExpression())
!321 = distinct !DIGlobalVariable(scope: null, file: !110, line: 839, type: !322, isLocal: true, isDefinition: true)
!322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !323)
!323 = !{!324}
!324 = !DISubrange(count: 16)
!325 = !DIGlobalVariableExpression(var: !326, expr: !DIExpression())
!326 = distinct !DIGlobalVariable(scope: null, file: !110, line: 840, type: !327, isLocal: true, isDefinition: true)
!327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !328)
!328 = !{!329}
!329 = !DISubrange(count: 22)
!330 = !DIGlobalVariableExpression(var: !331, expr: !DIExpression())
!331 = distinct !DIGlobalVariable(scope: null, file: !110, line: 841, type: !148, isLocal: true, isDefinition: true)
!332 = !DIGlobalVariableExpression(var: !333, expr: !DIExpression())
!333 = distinct !DIGlobalVariable(scope: null, file: !110, line: 862, type: !248, isLocal: true, isDefinition: true)
!334 = !DIGlobalVariableExpression(var: !335, expr: !DIExpression())
!335 = distinct !DIGlobalVariable(scope: null, file: !110, line: 868, type: !58, isLocal: true, isDefinition: true)
!336 = !DIGlobalVariableExpression(var: !337, expr: !DIExpression())
!337 = distinct !DIGlobalVariable(scope: null, file: !110, line: 875, type: !338, isLocal: true, isDefinition: true)
!338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !339)
!339 = !{!340}
!340 = !DISubrange(count: 27)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(scope: null, file: !110, line: 877, type: !343, isLocal: true, isDefinition: true)
!343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !344)
!344 = !{!345}
!345 = !DISubrange(count: 51)
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(scope: null, file: !110, line: 877, type: !348, isLocal: true, isDefinition: true)
!348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !349)
!349 = !{!350}
!350 = !DISubrange(count: 12)
!351 = !DIGlobalVariableExpression(var: !352, expr: !DIExpression())
!352 = distinct !DIGlobalVariable(scope: null, file: !2, line: 217, type: !143, isLocal: true, isDefinition: true)
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(scope: null, file: !2, line: 217, type: !322, isLocal: true, isDefinition: true)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(scope: null, file: !2, line: 217, type: !131, isLocal: true, isDefinition: true)
!357 = !DIGlobalVariableExpression(var: !358, expr: !DIExpression())
!358 = distinct !DIGlobalVariable(scope: null, file: !2, line: 227, type: !131, isLocal: true, isDefinition: true)
!359 = !DIGlobalVariableExpression(var: !360, expr: !DIExpression())
!360 = distinct !DIGlobalVariable(scope: null, file: !2, line: 281, type: !297, isLocal: true, isDefinition: true)
!361 = !DIGlobalVariableExpression(var: !362, expr: !DIExpression())
!362 = distinct !DIGlobalVariable(scope: null, file: !2, line: 102, type: !24, isLocal: true, isDefinition: true)
!363 = !DIGlobalVariableExpression(var: !364, expr: !DIExpression())
!364 = distinct !DIGlobalVariable(scope: null, file: !2, line: 103, type: !280, isLocal: true, isDefinition: true)
!365 = !DIGlobalVariableExpression(var: !366, expr: !DIExpression())
!366 = distinct !DIGlobalVariable(name: "arch_long_options", scope: !86, file: !2, line: 100, type: !367, isLocal: true, isDefinition: true)
!367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 768, elements: !265)
!368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !369)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !370, line: 50, size: 256, elements: !371)
!370 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!371 = !{!372, !373, !374, !376}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !369, file: !370, line: 52, baseType: !119, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !369, file: !370, line: 55, baseType: !83, size: 32, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !369, file: !370, line: 56, baseType: !375, size: 64, offset: 128)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !369, file: !370, line: 57, baseType: !83, size: 32, offset: 192)
!377 = !DIGlobalVariableExpression(var: !378, expr: !DIExpression())
!378 = distinct !DIGlobalVariable(scope: null, file: !2, line: 84, type: !248, isLocal: true, isDefinition: true)
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression())
!380 = distinct !DIGlobalVariable(scope: null, file: !2, line: 85, type: !348, isLocal: true, isDefinition: true)
!381 = !DIGlobalVariableExpression(var: !382, expr: !DIExpression())
!382 = distinct !DIGlobalVariable(scope: null, file: !2, line: 86, type: !280, isLocal: true, isDefinition: true)
!383 = !DIGlobalVariableExpression(var: !384, expr: !DIExpression())
!384 = distinct !DIGlobalVariable(scope: null, file: !2, line: 87, type: !385, isLocal: true, isDefinition: true)
!385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !386)
!386 = !{!387}
!387 = !DISubrange(count: 9)
!388 = !DIGlobalVariableExpression(var: !389, expr: !DIExpression())
!389 = distinct !DIGlobalVariable(scope: null, file: !2, line: 88, type: !148, isLocal: true, isDefinition: true)
!390 = !DIGlobalVariableExpression(var: !391, expr: !DIExpression())
!391 = distinct !DIGlobalVariable(scope: null, file: !2, line: 89, type: !280, isLocal: true, isDefinition: true)
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(scope: null, file: !2, line: 90, type: !148, isLocal: true, isDefinition: true)
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(scope: null, file: !2, line: 91, type: !280, isLocal: true, isDefinition: true)
!396 = !DIGlobalVariableExpression(var: !397, expr: !DIExpression())
!397 = distinct !DIGlobalVariable(scope: null, file: !2, line: 92, type: !131, isLocal: true, isDefinition: true)
!398 = !DIGlobalVariableExpression(var: !399, expr: !DIExpression())
!399 = distinct !DIGlobalVariable(scope: null, file: !2, line: 93, type: !400, isLocal: true, isDefinition: true)
!400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !401)
!401 = !{!402}
!402 = !DISubrange(count: 18)
!403 = !DIGlobalVariableExpression(var: !404, expr: !DIExpression())
!404 = distinct !DIGlobalVariable(scope: null, file: !2, line: 94, type: !297, isLocal: true, isDefinition: true)
!405 = !DIGlobalVariableExpression(var: !406, expr: !DIExpression())
!406 = distinct !DIGlobalVariable(name: "uname_long_options", scope: !86, file: !2, line: 82, type: !407, isLocal: true, isDefinition: true)
!407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 3584, elements: !144)
!408 = !DIGlobalVariableExpression(var: !409, expr: !DIExpression())
!409 = distinct !DIGlobalVariable(name: "printed", scope: !410, file: !2, line: 172, type: !171, isLocal: true, isDefinition: true)
!410 = distinct !DISubprogram(name: "print_element", scope: !2, file: !2, line: 170, type: !411, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !86, retainedNodes: !413)
!411 = !DISubroutineType(types: !412)
!412 = !{null, !119}
!413 = !{!414}
!414 = !DILocalVariable(name: "element", arg: 1, scope: !410, file: !2, line: 170, type: !119)
!415 = !{!416, !417, !418, !419, !431, !434}
!416 = !DILocalVariable(name: "argc", arg: 1, scope: !80, file: !2, line: 289, type: !83)
!417 = !DILocalVariable(name: "argv", arg: 2, scope: !80, file: !2, line: 289, type: !84)
!418 = !DILocalVariable(name: "toprint", scope: !80, file: !2, line: 294, type: !90)
!419 = !DILocalVariable(name: "name", scope: !420, file: !2, line: 313, type: !422)
!420 = distinct !DILexicalBlock(scope: !421, file: !2, line: 312, column: 5)
!421 = distinct !DILexicalBlock(scope: !80, file: !2, line: 309, column: 7)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utsname", file: !423, line: 48, size: 3120, elements: !424)
!423 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/utsname.h", directory: "", checksumkind: CSK_MD5, checksum: "025e6c1b1c47580289242d1d03561cee")
!424 = !{!425, !426, !427, !428, !429, !430}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "sysname", scope: !422, file: !423, line: 51, baseType: !14, size: 520)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "nodename", scope: !422, file: !423, line: 54, baseType: !14, size: 520, offset: 520)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !422, file: !423, line: 57, baseType: !14, size: 520, offset: 1040)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !422, file: !423, line: 59, baseType: !14, size: 520, offset: 1560)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !422, file: !423, line: 62, baseType: !14, size: 520, offset: 2080)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "domainname", scope: !422, file: !423, line: 67, baseType: !14, size: 520, offset: 2600)
!431 = !DILocalVariable(name: "element", scope: !432, file: !2, line: 332, type: !119)
!432 = distinct !DILexicalBlock(scope: !433, file: !2, line: 331, column: 5)
!433 = distinct !DILexicalBlock(scope: !80, file: !2, line: 330, column: 7)
!434 = !DILocalVariable(name: "element", scope: !435, file: !2, line: 366, type: !119)
!435 = distinct !DILexicalBlock(scope: !436, file: !2, line: 365, column: 5)
!436 = distinct !DILexicalBlock(scope: !80, file: !2, line: 364, column: 7)
!437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 64, elements: !281)
!438 = !DIGlobalVariableExpression(var: !409, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!439 = !DIGlobalVariableExpression(var: !440, expr: !DIExpression())
!440 = distinct !DIGlobalVariable(name: "uname_mode", scope: !441, file: !442, line: 2, type: !88, isLocal: false, isDefinition: true)
!441 = distinct !DICompileUnit(language: DW_LANG_C11, file: !442, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !443, globals: !444, splitDebugInlining: false, nameTableKind: None)
!442 = !DIFile(filename: "src/uname-uname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "355b38a68e18f877bfa709b962231397")
!443 = !{!88}
!444 = !{!439}
!445 = !DIGlobalVariableExpression(var: !446, expr: !DIExpression())
!446 = distinct !DIGlobalVariable(scope: null, file: !447, line: 3, type: !148, isLocal: true, isDefinition: true)
!447 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!448 = !DIGlobalVariableExpression(var: !449, expr: !DIExpression())
!449 = distinct !DIGlobalVariable(name: "Version", scope: !450, file: !447, line: 3, type: !119, isLocal: false, isDefinition: true)
!450 = distinct !DICompileUnit(language: DW_LANG_C11, file: !447, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !451, splitDebugInlining: false, nameTableKind: None)
!451 = !{!445, !448}
!452 = !DIGlobalVariableExpression(var: !453, expr: !DIExpression())
!453 = distinct !DIGlobalVariable(name: "file_name", scope: !454, file: !455, line: 45, type: !119, isLocal: true, isDefinition: true)
!454 = distinct !DICompileUnit(language: DW_LANG_C11, file: !455, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !456, splitDebugInlining: false, nameTableKind: None)
!455 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!456 = !{!457, !459, !461, !463, !452, !465}
!457 = !DIGlobalVariableExpression(var: !458, expr: !DIExpression())
!458 = distinct !DIGlobalVariable(scope: null, file: !455, line: 121, type: !275, isLocal: true, isDefinition: true)
!459 = !DIGlobalVariableExpression(var: !460, expr: !DIExpression())
!460 = distinct !DIGlobalVariable(scope: null, file: !455, line: 121, type: !348, isLocal: true, isDefinition: true)
!461 = !DIGlobalVariableExpression(var: !462, expr: !DIExpression())
!462 = distinct !DIGlobalVariable(scope: null, file: !455, line: 123, type: !275, isLocal: true, isDefinition: true)
!463 = !DIGlobalVariableExpression(var: !464, expr: !DIExpression())
!464 = distinct !DIGlobalVariable(scope: null, file: !455, line: 126, type: !264, isLocal: true, isDefinition: true)
!465 = !DIGlobalVariableExpression(var: !466, expr: !DIExpression())
!466 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !454, file: !455, line: 55, type: !171, isLocal: true, isDefinition: true)
!467 = !DIGlobalVariableExpression(var: !468, expr: !DIExpression())
!468 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !469, file: !470, line: 66, type: !521, isLocal: false, isDefinition: true)
!469 = distinct !DICompileUnit(language: DW_LANG_C11, file: !470, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !471, globals: !472, splitDebugInlining: false, nameTableKind: None)
!470 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!471 = !{!122, !121}
!472 = !{!473, !475, !500, !502, !504, !506, !467, !508, !510, !512, !514, !519}
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(scope: null, file: !470, line: 272, type: !24, isLocal: true, isDefinition: true)
!475 = !DIGlobalVariableExpression(var: !476, expr: !DIExpression())
!476 = distinct !DIGlobalVariable(name: "old_file_name", scope: !477, file: !470, line: 304, type: !119, isLocal: true, isDefinition: true)
!477 = distinct !DISubprogram(name: "verror_at_line", scope: !470, file: !470, line: 298, type: !478, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !469, retainedNodes: !493)
!478 = !DISubroutineType(types: !479)
!479 = !{null, !83, !83, !119, !90, !119, !480}
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !481, line: 52, baseType: !482)
!481 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !483, line: 14, baseType: !484)
!483 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !485, baseType: !486)
!485 = !DIFile(filename: "lib/error.c", directory: "/src")
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !487)
!487 = !{!488, !489, !490, !491, !492}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !486, file: !485, baseType: !122, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !486, file: !485, baseType: !122, size: 64, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !486, file: !485, baseType: !122, size: 64, offset: 128)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !486, file: !485, baseType: !83, size: 32, offset: 192)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !486, file: !485, baseType: !83, size: 32, offset: 224)
!493 = !{!494, !495, !496, !497, !498, !499}
!494 = !DILocalVariable(name: "status", arg: 1, scope: !477, file: !470, line: 298, type: !83)
!495 = !DILocalVariable(name: "errnum", arg: 2, scope: !477, file: !470, line: 298, type: !83)
!496 = !DILocalVariable(name: "file_name", arg: 3, scope: !477, file: !470, line: 298, type: !119)
!497 = !DILocalVariable(name: "line_number", arg: 4, scope: !477, file: !470, line: 298, type: !90)
!498 = !DILocalVariable(name: "message", arg: 5, scope: !477, file: !470, line: 298, type: !119)
!499 = !DILocalVariable(name: "args", arg: 6, scope: !477, file: !470, line: 298, type: !480)
!500 = !DIGlobalVariableExpression(var: !501, expr: !DIExpression())
!501 = distinct !DIGlobalVariable(name: "old_line_number", scope: !477, file: !470, line: 305, type: !90, isLocal: true, isDefinition: true)
!502 = !DIGlobalVariableExpression(var: !503, expr: !DIExpression())
!503 = distinct !DIGlobalVariable(scope: null, file: !470, line: 338, type: !248, isLocal: true, isDefinition: true)
!504 = !DIGlobalVariableExpression(var: !505, expr: !DIExpression())
!505 = distinct !DIGlobalVariable(scope: null, file: !470, line: 346, type: !280, isLocal: true, isDefinition: true)
!506 = !DIGlobalVariableExpression(var: !507, expr: !DIExpression())
!507 = distinct !DIGlobalVariable(scope: null, file: !470, line: 346, type: !255, isLocal: true, isDefinition: true)
!508 = !DIGlobalVariableExpression(var: !509, expr: !DIExpression())
!509 = distinct !DIGlobalVariable(name: "error_message_count", scope: !469, file: !470, line: 69, type: !90, isLocal: false, isDefinition: true)
!510 = !DIGlobalVariableExpression(var: !511, expr: !DIExpression())
!511 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !469, file: !470, line: 295, type: !83, isLocal: false, isDefinition: true)
!512 = !DIGlobalVariableExpression(var: !513, expr: !DIExpression())
!513 = distinct !DIGlobalVariable(scope: null, file: !470, line: 208, type: !275, isLocal: true, isDefinition: true)
!514 = !DIGlobalVariableExpression(var: !515, expr: !DIExpression())
!515 = distinct !DIGlobalVariable(scope: null, file: !470, line: 208, type: !516, isLocal: true, isDefinition: true)
!516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !517)
!517 = !{!518}
!518 = !DISubrange(count: 21)
!519 = !DIGlobalVariableExpression(var: !520, expr: !DIExpression())
!520 = distinct !DIGlobalVariable(scope: null, file: !470, line: 214, type: !24, isLocal: true, isDefinition: true)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DISubroutineType(types: !523)
!523 = !{null}
!524 = !DIGlobalVariableExpression(var: !525, expr: !DIExpression())
!525 = distinct !DIGlobalVariable(name: "program_name", scope: !526, file: !527, line: 31, type: !119, isLocal: false, isDefinition: true)
!526 = distinct !DICompileUnit(language: DW_LANG_C11, file: !527, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !528, globals: !529, splitDebugInlining: false, nameTableKind: None)
!527 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!528 = !{!85}
!529 = !{!524, !530, !532}
!530 = !DIGlobalVariableExpression(var: !531, expr: !DIExpression())
!531 = distinct !DIGlobalVariable(scope: null, file: !527, line: 46, type: !280, isLocal: true, isDefinition: true)
!532 = !DIGlobalVariableExpression(var: !533, expr: !DIExpression())
!533 = distinct !DIGlobalVariable(scope: null, file: !527, line: 49, type: !248, isLocal: true, isDefinition: true)
!534 = !DIGlobalVariableExpression(var: !535, expr: !DIExpression())
!535 = distinct !DIGlobalVariable(name: "utf07FF", scope: !536, file: !537, line: 46, type: !564, isLocal: true, isDefinition: true)
!536 = distinct !DISubprogram(name: "proper_name_lite", scope: !537, file: !537, line: 38, type: !538, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !542)
!537 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!538 = !DISubroutineType(types: !539)
!539 = !{!119, !119, !119}
!540 = distinct !DICompileUnit(language: DW_LANG_C11, file: !537, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !541, splitDebugInlining: false, nameTableKind: None)
!541 = !{!534}
!542 = !{!543, !544, !545, !546, !551}
!543 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !536, file: !537, line: 38, type: !119)
!544 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !536, file: !537, line: 38, type: !119)
!545 = !DILocalVariable(name: "translation", scope: !536, file: !537, line: 40, type: !119)
!546 = !DILocalVariable(name: "w", scope: !536, file: !537, line: 47, type: !547)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !548, line: 37, baseType: !549)
!548 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !211, line: 57, baseType: !550)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !211, line: 42, baseType: !90)
!551 = !DILocalVariable(name: "mbs", scope: !536, file: !537, line: 48, type: !552)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !553, line: 6, baseType: !554)
!553 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !555, line: 21, baseType: !556)
!555 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !555, line: 13, size: 64, elements: !557)
!557 = !{!558, !559}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !556, file: !555, line: 15, baseType: !83, size: 32)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !556, file: !555, line: 20, baseType: !560, size: 32, offset: 32)
!560 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !556, file: !555, line: 16, size: 32, elements: !561)
!561 = !{!562, !563}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !560, file: !555, line: 18, baseType: !90, size: 32)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !560, file: !555, line: 19, baseType: !248, size: 32)
!564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 16, elements: !256)
!565 = !DIGlobalVariableExpression(var: !566, expr: !DIExpression())
!566 = distinct !DIGlobalVariable(scope: null, file: !567, line: 78, type: !280, isLocal: true, isDefinition: true)
!567 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!568 = !DIGlobalVariableExpression(var: !569, expr: !DIExpression())
!569 = distinct !DIGlobalVariable(scope: null, file: !567, line: 79, type: !19, isLocal: true, isDefinition: true)
!570 = !DIGlobalVariableExpression(var: !571, expr: !DIExpression())
!571 = distinct !DIGlobalVariable(scope: null, file: !567, line: 80, type: !572, isLocal: true, isDefinition: true)
!572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !573)
!573 = !{!574}
!574 = !DISubrange(count: 13)
!575 = !DIGlobalVariableExpression(var: !576, expr: !DIExpression())
!576 = distinct !DIGlobalVariable(scope: null, file: !567, line: 81, type: !572, isLocal: true, isDefinition: true)
!577 = !DIGlobalVariableExpression(var: !578, expr: !DIExpression())
!578 = distinct !DIGlobalVariable(scope: null, file: !567, line: 82, type: !233, isLocal: true, isDefinition: true)
!579 = !DIGlobalVariableExpression(var: !580, expr: !DIExpression())
!580 = distinct !DIGlobalVariable(scope: null, file: !567, line: 83, type: !255, isLocal: true, isDefinition: true)
!581 = !DIGlobalVariableExpression(var: !582, expr: !DIExpression())
!582 = distinct !DIGlobalVariable(scope: null, file: !567, line: 84, type: !280, isLocal: true, isDefinition: true)
!583 = !DIGlobalVariableExpression(var: !584, expr: !DIExpression())
!584 = distinct !DIGlobalVariable(scope: null, file: !567, line: 85, type: !275, isLocal: true, isDefinition: true)
!585 = !DIGlobalVariableExpression(var: !586, expr: !DIExpression())
!586 = distinct !DIGlobalVariable(scope: null, file: !567, line: 86, type: !275, isLocal: true, isDefinition: true)
!587 = !DIGlobalVariableExpression(var: !588, expr: !DIExpression())
!588 = distinct !DIGlobalVariable(scope: null, file: !567, line: 87, type: !280, isLocal: true, isDefinition: true)
!589 = !DIGlobalVariableExpression(var: !590, expr: !DIExpression())
!590 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !591, file: !567, line: 76, type: !677, isLocal: false, isDefinition: true)
!591 = distinct !DICompileUnit(language: DW_LANG_C11, file: !567, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !592, retainedTypes: !612, globals: !613, splitDebugInlining: false, nameTableKind: None)
!592 = !{!593, !607, !94}
!593 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !594, line: 42, baseType: !90, size: 32, elements: !595)
!594 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!595 = !{!596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606}
!596 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!597 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!598 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!599 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!600 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!601 = !DIEnumerator(name: "c_quoting_style", value: 5)
!602 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!603 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!604 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!605 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!606 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!607 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !594, line: 254, baseType: !90, size: 32, elements: !608)
!608 = !{!609, !610, !611}
!609 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!610 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!611 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!612 = !{!83, !115, !116}
!613 = !{!565, !568, !570, !575, !577, !579, !581, !583, !585, !587, !589, !614, !618, !628, !630, !635, !637, !639, !641, !643, !666, !673, !675}
!614 = !DIGlobalVariableExpression(var: !615, expr: !DIExpression())
!615 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !591, file: !567, line: 92, type: !616, isLocal: false, isDefinition: true)
!616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !617, size: 320, elements: !132)
!617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !593)
!618 = !DIGlobalVariableExpression(var: !619, expr: !DIExpression())
!619 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !591, file: !567, line: 1040, type: !620, isLocal: false, isDefinition: true)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !567, line: 56, size: 448, elements: !621)
!621 = !{!622, !623, !624, !626, !627}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !620, file: !567, line: 59, baseType: !593, size: 32)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !620, file: !567, line: 62, baseType: !83, size: 32, offset: 32)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !620, file: !567, line: 66, baseType: !625, size: 256, offset: 64)
!625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 256, elements: !281)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !620, file: !567, line: 69, baseType: !119, size: 64, offset: 320)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !620, file: !567, line: 72, baseType: !119, size: 64, offset: 384)
!628 = !DIGlobalVariableExpression(var: !629, expr: !DIExpression())
!629 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !591, file: !567, line: 107, type: !620, isLocal: true, isDefinition: true)
!630 = !DIGlobalVariableExpression(var: !631, expr: !DIExpression())
!631 = distinct !DIGlobalVariable(name: "slot0", scope: !591, file: !567, line: 831, type: !632, isLocal: true, isDefinition: true)
!632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !633)
!633 = !{!634}
!634 = !DISubrange(count: 256)
!635 = !DIGlobalVariableExpression(var: !636, expr: !DIExpression())
!636 = distinct !DIGlobalVariable(scope: null, file: !567, line: 321, type: !255, isLocal: true, isDefinition: true)
!637 = !DIGlobalVariableExpression(var: !638, expr: !DIExpression())
!638 = distinct !DIGlobalVariable(scope: null, file: !567, line: 357, type: !255, isLocal: true, isDefinition: true)
!639 = !DIGlobalVariableExpression(var: !640, expr: !DIExpression())
!640 = distinct !DIGlobalVariable(scope: null, file: !567, line: 358, type: !255, isLocal: true, isDefinition: true)
!641 = !DIGlobalVariableExpression(var: !642, expr: !DIExpression())
!642 = distinct !DIGlobalVariable(scope: null, file: !567, line: 199, type: !275, isLocal: true, isDefinition: true)
!643 = !DIGlobalVariableExpression(var: !644, expr: !DIExpression())
!644 = distinct !DIGlobalVariable(name: "quote", scope: !645, file: !567, line: 228, type: !664, isLocal: true, isDefinition: true)
!645 = distinct !DISubprogram(name: "gettext_quote", scope: !567, file: !567, line: 197, type: !646, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !591, retainedNodes: !648)
!646 = !DISubroutineType(types: !647)
!647 = !{!119, !119, !593}
!648 = !{!649, !650, !651, !652, !653}
!649 = !DILocalVariable(name: "msgid", arg: 1, scope: !645, file: !567, line: 197, type: !119)
!650 = !DILocalVariable(name: "s", arg: 2, scope: !645, file: !567, line: 197, type: !593)
!651 = !DILocalVariable(name: "translation", scope: !645, file: !567, line: 199, type: !119)
!652 = !DILocalVariable(name: "w", scope: !645, file: !567, line: 229, type: !547)
!653 = !DILocalVariable(name: "mbs", scope: !645, file: !567, line: 230, type: !654)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !553, line: 6, baseType: !655)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !555, line: 21, baseType: !656)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !555, line: 13, size: 64, elements: !657)
!657 = !{!658, !659}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !656, file: !555, line: 15, baseType: !83, size: 32)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !656, file: !555, line: 20, baseType: !660, size: 32, offset: 32)
!660 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !656, file: !555, line: 16, size: 32, elements: !661)
!661 = !{!662, !663}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !660, file: !555, line: 18, baseType: !90, size: 32)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !660, file: !555, line: 19, baseType: !248, size: 32)
!664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 64, elements: !665)
!665 = !{!257, !250}
!666 = !DIGlobalVariableExpression(var: !667, expr: !DIExpression())
!667 = distinct !DIGlobalVariable(name: "slotvec", scope: !591, file: !567, line: 834, type: !668, isLocal: true, isDefinition: true)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !567, line: 823, size: 128, elements: !670)
!670 = !{!671, !672}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !669, file: !567, line: 825, baseType: !116, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !669, file: !567, line: 826, baseType: !85, size: 64, offset: 64)
!673 = !DIGlobalVariableExpression(var: !674, expr: !DIExpression())
!674 = distinct !DIGlobalVariable(name: "nslots", scope: !591, file: !567, line: 832, type: !83, isLocal: true, isDefinition: true)
!675 = !DIGlobalVariableExpression(var: !676, expr: !DIExpression())
!676 = distinct !DIGlobalVariable(name: "slotvec0", scope: !591, file: !567, line: 833, type: !669, isLocal: true, isDefinition: true)
!677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !678, size: 704, elements: !679)
!678 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!679 = !{!680}
!680 = !DISubrange(count: 11)
!681 = !DIGlobalVariableExpression(var: !682, expr: !DIExpression())
!682 = distinct !DIGlobalVariable(scope: null, file: !683, line: 67, type: !348, isLocal: true, isDefinition: true)
!683 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!684 = !DIGlobalVariableExpression(var: !685, expr: !DIExpression())
!685 = distinct !DIGlobalVariable(scope: null, file: !683, line: 69, type: !275, isLocal: true, isDefinition: true)
!686 = !DIGlobalVariableExpression(var: !687, expr: !DIExpression())
!687 = distinct !DIGlobalVariable(scope: null, file: !683, line: 83, type: !275, isLocal: true, isDefinition: true)
!688 = !DIGlobalVariableExpression(var: !689, expr: !DIExpression())
!689 = distinct !DIGlobalVariable(scope: null, file: !683, line: 83, type: !248, isLocal: true, isDefinition: true)
!690 = !DIGlobalVariableExpression(var: !691, expr: !DIExpression())
!691 = distinct !DIGlobalVariable(scope: null, file: !683, line: 85, type: !255, isLocal: true, isDefinition: true)
!692 = !DIGlobalVariableExpression(var: !693, expr: !DIExpression())
!693 = distinct !DIGlobalVariable(scope: null, file: !683, line: 88, type: !694, isLocal: true, isDefinition: true)
!694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !695)
!695 = !{!696}
!696 = !DISubrange(count: 171)
!697 = !DIGlobalVariableExpression(var: !698, expr: !DIExpression())
!698 = distinct !DIGlobalVariable(scope: null, file: !683, line: 88, type: !699, isLocal: true, isDefinition: true)
!699 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !700)
!700 = !{!701}
!701 = !DISubrange(count: 34)
!702 = !DIGlobalVariableExpression(var: !703, expr: !DIExpression())
!703 = distinct !DIGlobalVariable(scope: null, file: !683, line: 105, type: !322, isLocal: true, isDefinition: true)
!704 = !DIGlobalVariableExpression(var: !705, expr: !DIExpression())
!705 = distinct !DIGlobalVariable(scope: null, file: !683, line: 109, type: !9, isLocal: true, isDefinition: true)
!706 = !DIGlobalVariableExpression(var: !707, expr: !DIExpression())
!707 = distinct !DIGlobalVariable(scope: null, file: !683, line: 113, type: !708, isLocal: true, isDefinition: true)
!708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !709)
!709 = !{!710}
!710 = !DISubrange(count: 28)
!711 = !DIGlobalVariableExpression(var: !712, expr: !DIExpression())
!712 = distinct !DIGlobalVariable(scope: null, file: !683, line: 120, type: !713, isLocal: true, isDefinition: true)
!713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !714)
!714 = !{!715}
!715 = !DISubrange(count: 32)
!716 = !DIGlobalVariableExpression(var: !717, expr: !DIExpression())
!717 = distinct !DIGlobalVariable(scope: null, file: !683, line: 127, type: !718, isLocal: true, isDefinition: true)
!718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !719)
!719 = !{!720}
!720 = !DISubrange(count: 36)
!721 = !DIGlobalVariableExpression(var: !722, expr: !DIExpression())
!722 = distinct !DIGlobalVariable(scope: null, file: !683, line: 134, type: !302, isLocal: true, isDefinition: true)
!723 = !DIGlobalVariableExpression(var: !724, expr: !DIExpression())
!724 = distinct !DIGlobalVariable(scope: null, file: !683, line: 142, type: !725, isLocal: true, isDefinition: true)
!725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !726)
!726 = !{!727}
!727 = !DISubrange(count: 44)
!728 = !DIGlobalVariableExpression(var: !729, expr: !DIExpression())
!729 = distinct !DIGlobalVariable(scope: null, file: !683, line: 150, type: !730, isLocal: true, isDefinition: true)
!730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !731)
!731 = !{!732}
!732 = !DISubrange(count: 48)
!733 = !DIGlobalVariableExpression(var: !734, expr: !DIExpression())
!734 = distinct !DIGlobalVariable(scope: null, file: !683, line: 159, type: !735, isLocal: true, isDefinition: true)
!735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !736)
!736 = !{!737}
!737 = !DISubrange(count: 52)
!738 = !DIGlobalVariableExpression(var: !739, expr: !DIExpression())
!739 = distinct !DIGlobalVariable(scope: null, file: !683, line: 170, type: !39, isLocal: true, isDefinition: true)
!740 = !DIGlobalVariableExpression(var: !741, expr: !DIExpression())
!741 = distinct !DIGlobalVariable(scope: null, file: !683, line: 248, type: !233, isLocal: true, isDefinition: true)
!742 = !DIGlobalVariableExpression(var: !743, expr: !DIExpression())
!743 = distinct !DIGlobalVariable(scope: null, file: !683, line: 248, type: !327, isLocal: true, isDefinition: true)
!744 = !DIGlobalVariableExpression(var: !745, expr: !DIExpression())
!745 = distinct !DIGlobalVariable(scope: null, file: !683, line: 254, type: !233, isLocal: true, isDefinition: true)
!746 = !DIGlobalVariableExpression(var: !747, expr: !DIExpression())
!747 = distinct !DIGlobalVariable(scope: null, file: !683, line: 254, type: !143, isLocal: true, isDefinition: true)
!748 = !DIGlobalVariableExpression(var: !749, expr: !DIExpression())
!749 = distinct !DIGlobalVariable(scope: null, file: !683, line: 254, type: !302, isLocal: true, isDefinition: true)
!750 = !DIGlobalVariableExpression(var: !751, expr: !DIExpression())
!751 = distinct !DIGlobalVariable(scope: null, file: !683, line: 259, type: !3, isLocal: true, isDefinition: true)
!752 = !DIGlobalVariableExpression(var: !753, expr: !DIExpression())
!753 = distinct !DIGlobalVariable(scope: null, file: !683, line: 259, type: !754, isLocal: true, isDefinition: true)
!754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !755)
!755 = !{!756}
!756 = !DISubrange(count: 29)
!757 = !DIGlobalVariableExpression(var: !758, expr: !DIExpression())
!758 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !759, file: !760, line: 26, type: !762, isLocal: false, isDefinition: true)
!759 = distinct !DICompileUnit(language: DW_LANG_C11, file: !760, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !761, splitDebugInlining: false, nameTableKind: None)
!760 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!761 = !{!757}
!762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 376, elements: !763)
!763 = !{!764}
!764 = !DISubrange(count: 47)
!765 = !DIGlobalVariableExpression(var: !766, expr: !DIExpression())
!766 = distinct !DIGlobalVariable(name: "exit_failure", scope: !767, file: !768, line: 24, type: !770, isLocal: false, isDefinition: true)
!767 = distinct !DICompileUnit(language: DW_LANG_C11, file: !768, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !769, splitDebugInlining: false, nameTableKind: None)
!768 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!769 = !{!765}
!770 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !83)
!771 = !DIGlobalVariableExpression(var: !772, expr: !DIExpression())
!772 = distinct !DIGlobalVariable(scope: null, file: !773, line: 34, type: !264, isLocal: true, isDefinition: true)
!773 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!774 = !DIGlobalVariableExpression(var: !775, expr: !DIExpression())
!775 = distinct !DIGlobalVariable(scope: null, file: !773, line: 34, type: !275, isLocal: true, isDefinition: true)
!776 = !DIGlobalVariableExpression(var: !777, expr: !DIExpression())
!777 = distinct !DIGlobalVariable(scope: null, file: !773, line: 34, type: !297, isLocal: true, isDefinition: true)
!778 = !DIGlobalVariableExpression(var: !779, expr: !DIExpression())
!779 = distinct !DIGlobalVariable(scope: null, file: !780, line: 108, type: !126, isLocal: true, isDefinition: true)
!780 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!781 = !DIGlobalVariableExpression(var: !782, expr: !DIExpression())
!782 = distinct !DIGlobalVariable(name: "internal_state", scope: !783, file: !780, line: 97, type: !786, isLocal: true, isDefinition: true)
!783 = distinct !DICompileUnit(language: DW_LANG_C11, file: !780, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !784, globals: !785, splitDebugInlining: false, nameTableKind: None)
!784 = !{!122, !116, !121}
!785 = !{!778, !781}
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !553, line: 6, baseType: !787)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !555, line: 21, baseType: !788)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !555, line: 13, size: 64, elements: !789)
!789 = !{!790, !791}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !788, file: !555, line: 15, baseType: !83, size: 32)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !788, file: !555, line: 20, baseType: !792, size: 32, offset: 32)
!792 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !788, file: !555, line: 16, size: 32, elements: !793)
!793 = !{!794, !795}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !792, file: !555, line: 18, baseType: !90, size: 32)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !792, file: !555, line: 19, baseType: !248, size: 32)
!796 = !DIGlobalVariableExpression(var: !797, expr: !DIExpression())
!797 = distinct !DIGlobalVariable(scope: null, file: !798, line: 35, type: !255, isLocal: true, isDefinition: true)
!798 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!799 = !DIGlobalVariableExpression(var: !800, expr: !DIExpression())
!800 = distinct !DIGlobalVariable(scope: null, file: !798, line: 35, type: !19, isLocal: true, isDefinition: true)
!801 = distinct !DICompileUnit(language: DW_LANG_C11, file: !802, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!802 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!803 = distinct !DICompileUnit(language: DW_LANG_C11, file: !683, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !804, retainedTypes: !808, globals: !809, splitDebugInlining: false, nameTableKind: None)
!804 = !{!805}
!805 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !683, line: 40, baseType: !90, size: 32, elements: !806)
!806 = !{!807}
!807 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!808 = !{!122}
!809 = !{!681, !684, !686, !688, !690, !692, !697, !702, !704, !706, !711, !716, !721, !723, !728, !733, !738, !740, !742, !744, !746, !748, !750, !752}
!810 = distinct !DICompileUnit(language: DW_LANG_C11, file: !811, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !812, retainedTypes: !843, splitDebugInlining: false, nameTableKind: None)
!811 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!812 = !{!813, !825}
!813 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !814, file: !811, line: 188, baseType: !90, size: 32, elements: !823)
!814 = distinct !DISubprogram(name: "x2nrealloc", scope: !811, file: !811, line: 176, type: !815, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !818)
!815 = !DISubroutineType(types: !816)
!816 = !{!122, !122, !817, !116}
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!818 = !{!819, !820, !821, !822}
!819 = !DILocalVariable(name: "p", arg: 1, scope: !814, file: !811, line: 176, type: !122)
!820 = !DILocalVariable(name: "pn", arg: 2, scope: !814, file: !811, line: 176, type: !817)
!821 = !DILocalVariable(name: "s", arg: 3, scope: !814, file: !811, line: 176, type: !116)
!822 = !DILocalVariable(name: "n", scope: !814, file: !811, line: 178, type: !116)
!823 = !{!824}
!824 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!825 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !826, file: !811, line: 228, baseType: !90, size: 32, elements: !823)
!826 = distinct !DISubprogram(name: "xpalloc", scope: !811, file: !811, line: 223, type: !827, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !833)
!827 = !DISubroutineType(types: !828)
!828 = !{!122, !122, !829, !830, !832, !830}
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !831, line: 130, baseType: !832)
!831 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!832 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !117, line: 35, baseType: !212)
!833 = !{!834, !835, !836, !837, !838, !839, !840, !841, !842}
!834 = !DILocalVariable(name: "pa", arg: 1, scope: !826, file: !811, line: 223, type: !122)
!835 = !DILocalVariable(name: "pn", arg: 2, scope: !826, file: !811, line: 223, type: !829)
!836 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !826, file: !811, line: 223, type: !830)
!837 = !DILocalVariable(name: "n_max", arg: 4, scope: !826, file: !811, line: 223, type: !832)
!838 = !DILocalVariable(name: "s", arg: 5, scope: !826, file: !811, line: 223, type: !830)
!839 = !DILocalVariable(name: "n0", scope: !826, file: !811, line: 230, type: !830)
!840 = !DILocalVariable(name: "n", scope: !826, file: !811, line: 237, type: !830)
!841 = !DILocalVariable(name: "nbytes", scope: !826, file: !811, line: 248, type: !830)
!842 = !DILocalVariable(name: "adjusted_nbytes", scope: !826, file: !811, line: 252, type: !830)
!843 = !{!85, !122, !171, !212, !118}
!844 = distinct !DICompileUnit(language: DW_LANG_C11, file: !773, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !845, splitDebugInlining: false, nameTableKind: None)
!845 = !{!771, !774, !776}
!846 = distinct !DICompileUnit(language: DW_LANG_C11, file: !847, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!847 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!848 = distinct !DICompileUnit(language: DW_LANG_C11, file: !849, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!849 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!850 = distinct !DICompileUnit(language: DW_LANG_C11, file: !851, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !808, splitDebugInlining: false, nameTableKind: None)
!851 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!852 = distinct !DICompileUnit(language: DW_LANG_C11, file: !853, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !808, splitDebugInlining: false, nameTableKind: None)
!853 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!854 = distinct !DICompileUnit(language: DW_LANG_C11, file: !855, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !856, splitDebugInlining: false, nameTableKind: None)
!855 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!856 = !{!171, !118, !122}
!857 = distinct !DICompileUnit(language: DW_LANG_C11, file: !798, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !858, splitDebugInlining: false, nameTableKind: None)
!858 = !{!796, !799}
!859 = distinct !DICompileUnit(language: DW_LANG_C11, file: !860, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!860 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!861 = distinct !DICompileUnit(language: DW_LANG_C11, file: !862, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !808, splitDebugInlining: false, nameTableKind: None)
!862 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!863 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!864 = !{i32 7, !"Dwarf Version", i32 5}
!865 = !{i32 2, !"Debug Info Version", i32 3}
!866 = !{i32 1, !"wchar_size", i32 4}
!867 = !{i32 8, !"PIC Level", i32 2}
!868 = !{i32 7, !"PIE Level", i32 2}
!869 = !{i32 7, !"uwtable", i32 2}
!870 = !{i32 7, !"frame-pointer", i32 1}
!871 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 108, type: !872, scopeLine: 109, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !86, retainedNodes: !874)
!872 = !DISubroutineType(types: !873)
!873 = !{null, !83}
!874 = !{!875}
!875 = !DILocalVariable(name: "status", arg: 1, scope: !871, file: !2, line: 108, type: !83)
!876 = !DILocation(line: 0, scope: !871)
!877 = !DILocation(line: 110, column: 14, scope: !878)
!878 = distinct !DILexicalBlock(scope: !871, file: !2, line: 110, column: 7)
!879 = !DILocation(line: 110, column: 7, scope: !871)
!880 = !DILocation(line: 111, column: 5, scope: !881)
!881 = distinct !DILexicalBlock(scope: !878, file: !2, line: 111, column: 5)
!882 = !{!883, !883, i64 0}
!883 = !{!"any pointer", !884, i64 0}
!884 = !{!"omnipotent char", !885, i64 0}
!885 = !{!"Simple C/C++ TBAA"}
!886 = !DILocation(line: 114, column: 7, scope: !887)
!887 = distinct !DILexicalBlock(scope: !878, file: !2, line: 113, column: 5)
!888 = !DILocation(line: 116, column: 11, scope: !889)
!889 = distinct !DILexicalBlock(scope: !887, file: !2, line: 116, column: 11)
!890 = !{!884, !884, i64 0}
!891 = !DILocation(line: 116, column: 22, scope: !889)
!892 = !DILocation(line: 116, column: 11, scope: !887)
!893 = !DILocation(line: 118, column: 11, scope: !894)
!894 = distinct !DILexicalBlock(scope: !889, file: !2, line: 117, column: 9)
!895 = !DILocation(line: 122, column: 11, scope: !894)
!896 = !DILocation(line: 126, column: 11, scope: !894)
!897 = !DILocation(line: 129, column: 11, scope: !894)
!898 = !DILocation(line: 132, column: 11, scope: !894)
!899 = !DILocation(line: 135, column: 11, scope: !894)
!900 = !DILocation(line: 138, column: 11, scope: !894)
!901 = !DILocation(line: 141, column: 11, scope: !894)
!902 = !DILocation(line: 144, column: 11, scope: !894)
!903 = !DILocation(line: 147, column: 11, scope: !894)
!904 = !DILocation(line: 150, column: 9, scope: !894)
!905 = !DILocation(line: 153, column: 11, scope: !906)
!906 = distinct !DILexicalBlock(scope: !889, file: !2, line: 152, column: 9)
!907 = !DILocation(line: 159, column: 7, scope: !887)
!908 = !DILocation(line: 160, column: 7, scope: !887)
!909 = !DILocation(line: 161, column: 28, scope: !887)
!910 = !DILocalVariable(name: "program", arg: 1, scope: !911, file: !110, line: 836, type: !119)
!911 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !110, file: !110, line: 836, type: !411, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !86, retainedNodes: !912)
!912 = !{!910, !913, !920, !921, !923, !924}
!913 = !DILocalVariable(name: "infomap", scope: !911, file: !110, line: 838, type: !914)
!914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !915, size: 896, elements: !276)
!915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !916)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !911, file: !110, line: 838, size: 128, elements: !917)
!917 = !{!918, !919}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !916, file: !110, line: 838, baseType: !119, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !916, file: !110, line: 838, baseType: !119, size: 64, offset: 64)
!920 = !DILocalVariable(name: "node", scope: !911, file: !110, line: 848, type: !119)
!921 = !DILocalVariable(name: "map_prog", scope: !911, file: !110, line: 849, type: !922)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!923 = !DILocalVariable(name: "lc_messages", scope: !911, file: !110, line: 861, type: !119)
!924 = !DILocalVariable(name: "url_program", scope: !911, file: !110, line: 874, type: !119)
!925 = !DILocation(line: 0, scope: !911, inlinedAt: !926)
!926 = distinct !DILocation(line: 161, column: 7, scope: !887)
!927 = !DILocation(line: 838, column: 67, scope: !911, inlinedAt: !926)
!928 = !DILocalVariable(name: "__s1", arg: 1, scope: !929, file: !930, line: 1359, type: !119)
!929 = distinct !DISubprogram(name: "streq", scope: !930, file: !930, line: 1359, type: !931, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !86, retainedNodes: !933)
!930 = !DIFile(filename: "./lib/string.h", directory: "/src")
!931 = !DISubroutineType(types: !932)
!932 = !{!171, !119, !119}
!933 = !{!928, !934}
!934 = !DILocalVariable(name: "__s2", arg: 2, scope: !929, file: !930, line: 1359, type: !119)
!935 = !DILocation(line: 0, scope: !929, inlinedAt: !936)
!936 = distinct !DILocation(line: 851, column: 33, scope: !911, inlinedAt: !926)
!937 = !DILocation(line: 1361, column: 11, scope: !929, inlinedAt: !936)
!938 = !DILocation(line: 1361, column: 10, scope: !929, inlinedAt: !936)
!939 = !DILocation(line: 851, column: 3, scope: !911, inlinedAt: !926)
!940 = !DILocation(line: 854, column: 17, scope: !941, inlinedAt: !926)
!941 = distinct !DILexicalBlock(scope: !911, file: !110, line: 854, column: 7)
!942 = !{!943, !883, i64 8}
!943 = !{!"infomap", !883, i64 0, !883, i64 8}
!944 = !DILocation(line: 857, column: 3, scope: !911, inlinedAt: !926)
!945 = !DILocation(line: 861, column: 29, scope: !911, inlinedAt: !926)
!946 = !DILocation(line: 862, column: 7, scope: !947, inlinedAt: !926)
!947 = distinct !DILexicalBlock(scope: !911, file: !110, line: 862, column: 7)
!948 = !DILocation(line: 862, column: 19, scope: !947, inlinedAt: !926)
!949 = !DILocation(line: 862, column: 22, scope: !947, inlinedAt: !926)
!950 = !DILocation(line: 862, column: 7, scope: !911, inlinedAt: !926)
!951 = !DILocation(line: 868, column: 7, scope: !952, inlinedAt: !926)
!952 = distinct !DILexicalBlock(scope: !947, file: !110, line: 863, column: 5)
!953 = !DILocation(line: 870, column: 5, scope: !952, inlinedAt: !926)
!954 = !DILocation(line: 854, column: 7, scope: !941, inlinedAt: !926)
!955 = !DILocation(line: 854, column: 7, scope: !911, inlinedAt: !926)
!956 = !DILocation(line: 0, scope: !929, inlinedAt: !957)
!957 = distinct !DILocation(line: 874, column: 29, scope: !911, inlinedAt: !926)
!958 = !DILocation(line: 874, column: 29, scope: !911, inlinedAt: !926)
!959 = !DILocation(line: 875, column: 3, scope: !911, inlinedAt: !926)
!960 = !DILocation(line: 877, column: 3, scope: !911, inlinedAt: !926)
!961 = !DILocation(line: 163, column: 3, scope: !871)
!962 = !DISubprogram(name: "dcgettext", scope: !963, file: !963, line: 51, type: !964, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !966)
!963 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!964 = !DISubroutineType(types: !965)
!965 = !{!85, !119, !119, !83}
!966 = !{}
!967 = !DISubprogram(name: "__fprintf_chk", scope: !968, file: !968, line: 93, type: !969, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !966)
!968 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!969 = !DISubroutineType(types: !970)
!970 = !{!83, !971, !83, !972, null}
!971 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !184)
!972 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !119)
!973 = !DISubprogram(name: "__printf_chk", scope: !968, file: !968, line: 95, type: !974, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !966)
!974 = !DISubroutineType(types: !975)
!975 = !{!83, !83, !972, null}
!976 = !DISubprogram(name: "fputs_unlocked", scope: !481, file: !481, line: 691, type: !977, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !966)
!977 = !DISubroutineType(types: !978)
!978 = !{!83, !972, !971}
!979 = !DILocation(line: 0, scope: !161)
!980 = !DILocation(line: 581, column: 7, scope: !169)
!981 = !{!982, !982, i64 0}
!982 = !{!"int", !884, i64 0}
!983 = !DILocation(line: 581, column: 19, scope: !169)
!984 = !DILocation(line: 581, column: 7, scope: !161)
!985 = !DILocation(line: 585, column: 26, scope: !168)
!986 = !DILocation(line: 0, scope: !168)
!987 = !DILocation(line: 586, column: 23, scope: !168)
!988 = !DILocation(line: 586, column: 28, scope: !168)
!989 = !DILocation(line: 586, column: 32, scope: !168)
!990 = !DILocation(line: 586, column: 38, scope: !168)
!991 = !DILocation(line: 0, scope: !929, inlinedAt: !992)
!992 = distinct !DILocation(line: 586, column: 41, scope: !168)
!993 = !DILocation(line: 1361, column: 11, scope: !929, inlinedAt: !992)
!994 = !DILocation(line: 1361, column: 10, scope: !929, inlinedAt: !992)
!995 = !DILocation(line: 586, column: 19, scope: !168)
!996 = !DILocation(line: 587, column: 5, scope: !168)
!997 = !DILocation(line: 588, column: 7, scope: !998)
!998 = distinct !DILexicalBlock(scope: !161, file: !110, line: 588, column: 7)
!999 = !DILocation(line: 588, column: 7, scope: !161)
!1000 = !DILocation(line: 590, column: 7, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !998, file: !110, line: 589, column: 5)
!1002 = !DILocation(line: 591, column: 7, scope: !1001)
!1003 = !DILocation(line: 595, column: 37, scope: !161)
!1004 = !DILocation(line: 595, column: 35, scope: !161)
!1005 = !DILocation(line: 596, column: 29, scope: !161)
!1006 = !DILocation(line: 597, column: 8, scope: !177)
!1007 = !DILocation(line: 597, column: 7, scope: !161)
!1008 = !DILocation(line: 604, column: 24, scope: !176)
!1009 = !DILocation(line: 604, column: 12, scope: !177)
!1010 = !DILocation(line: 0, scope: !175)
!1011 = !DILocation(line: 610, column: 16, scope: !175)
!1012 = !DILocation(line: 610, column: 7, scope: !175)
!1013 = !DILocation(line: 611, column: 21, scope: !175)
!1014 = !{!1015, !1015, i64 0}
!1015 = !{!"short", !884, i64 0}
!1016 = !DILocation(line: 611, column: 19, scope: !175)
!1017 = !DILocation(line: 611, column: 16, scope: !175)
!1018 = !DILocation(line: 610, column: 30, scope: !175)
!1019 = distinct !{!1019, !1012, !1013, !1020}
!1020 = !{!"llvm.loop.mustprogress"}
!1021 = !DILocation(line: 612, column: 18, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !175, file: !110, line: 612, column: 11)
!1023 = !DILocation(line: 612, column: 11, scope: !175)
!1024 = !DILocation(line: 618, column: 5, scope: !175)
!1025 = !DILocation(line: 620, column: 23, scope: !161)
!1026 = !DILocation(line: 625, column: 39, scope: !161)
!1027 = !DILocation(line: 626, column: 3, scope: !161)
!1028 = !DILocation(line: 626, column: 10, scope: !161)
!1029 = !DILocation(line: 626, column: 21, scope: !161)
!1030 = !DILocation(line: 628, column: 44, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1032, file: !110, line: 628, column: 11)
!1032 = distinct !DILexicalBlock(scope: !161, file: !110, line: 627, column: 5)
!1033 = !DILocation(line: 628, column: 32, scope: !1031)
!1034 = !DILocation(line: 628, column: 49, scope: !1031)
!1035 = !DILocation(line: 628, column: 11, scope: !1032)
!1036 = !DILocation(line: 630, column: 11, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1032, file: !110, line: 630, column: 11)
!1038 = !DILocation(line: 630, column: 11, scope: !1032)
!1039 = !DILocation(line: 632, column: 26, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1041, file: !110, line: 632, column: 15)
!1041 = distinct !DILexicalBlock(scope: !1037, file: !110, line: 631, column: 9)
!1042 = !DILocation(line: 632, column: 34, scope: !1040)
!1043 = !DILocation(line: 632, column: 37, scope: !1040)
!1044 = !DILocation(line: 632, column: 15, scope: !1041)
!1045 = !DILocation(line: 640, column: 16, scope: !1032)
!1046 = distinct !{!1046, !1027, !1047, !1020}
!1047 = !DILocation(line: 641, column: 5, scope: !161)
!1048 = !DILocation(line: 644, column: 3, scope: !161)
!1049 = !DILocation(line: 0, scope: !929, inlinedAt: !1050)
!1050 = distinct !DILocation(line: 648, column: 31, scope: !161)
!1051 = !DILocation(line: 1361, column: 11, scope: !929, inlinedAt: !1050)
!1052 = !DILocation(line: 1361, column: 10, scope: !929, inlinedAt: !1050)
!1053 = !DILocation(line: 648, column: 31, scope: !161)
!1054 = !DILocation(line: 0, scope: !929, inlinedAt: !1055)
!1055 = distinct !DILocation(line: 649, column: 31, scope: !161)
!1056 = !DILocation(line: 1361, column: 11, scope: !929, inlinedAt: !1055)
!1057 = !DILocation(line: 1361, column: 10, scope: !929, inlinedAt: !1055)
!1058 = !DILocation(line: 649, column: 31, scope: !161)
!1059 = !DILocation(line: 0, scope: !929, inlinedAt: !1060)
!1060 = distinct !DILocation(line: 650, column: 31, scope: !161)
!1061 = !DILocation(line: 1361, column: 11, scope: !929, inlinedAt: !1060)
!1062 = !DILocation(line: 1361, column: 10, scope: !929, inlinedAt: !1060)
!1063 = !DILocation(line: 650, column: 31, scope: !161)
!1064 = !DILocation(line: 0, scope: !929, inlinedAt: !1065)
!1065 = distinct !DILocation(line: 651, column: 31, scope: !161)
!1066 = !DILocation(line: 1361, column: 11, scope: !929, inlinedAt: !1065)
!1067 = !DILocation(line: 1361, column: 10, scope: !929, inlinedAt: !1065)
!1068 = !DILocation(line: 651, column: 31, scope: !161)
!1069 = !DILocation(line: 0, scope: !929, inlinedAt: !1070)
!1070 = distinct !DILocation(line: 652, column: 31, scope: !161)
!1071 = !DILocation(line: 1361, column: 11, scope: !929, inlinedAt: !1070)
!1072 = !DILocation(line: 1361, column: 10, scope: !929, inlinedAt: !1070)
!1073 = !DILocation(line: 652, column: 31, scope: !161)
!1074 = !DILocation(line: 0, scope: !929, inlinedAt: !1075)
!1075 = distinct !DILocation(line: 653, column: 31, scope: !161)
!1076 = !DILocation(line: 1361, column: 11, scope: !929, inlinedAt: !1075)
!1077 = !DILocation(line: 1361, column: 10, scope: !929, inlinedAt: !1075)
!1078 = !DILocation(line: 653, column: 31, scope: !161)
!1079 = !DILocation(line: 0, scope: !929, inlinedAt: !1080)
!1080 = distinct !DILocation(line: 654, column: 31, scope: !161)
!1081 = !DILocation(line: 1361, column: 11, scope: !929, inlinedAt: !1080)
!1082 = !DILocation(line: 1361, column: 10, scope: !929, inlinedAt: !1080)
!1083 = !DILocation(line: 654, column: 31, scope: !161)
!1084 = !DILocation(line: 0, scope: !929, inlinedAt: !1085)
!1085 = distinct !DILocation(line: 655, column: 31, scope: !161)
!1086 = !DILocation(line: 1361, column: 11, scope: !929, inlinedAt: !1085)
!1087 = !DILocation(line: 1361, column: 10, scope: !929, inlinedAt: !1085)
!1088 = !DILocation(line: 655, column: 31, scope: !161)
!1089 = !DILocation(line: 0, scope: !929, inlinedAt: !1090)
!1090 = distinct !DILocation(line: 656, column: 31, scope: !161)
!1091 = !DILocation(line: 1361, column: 11, scope: !929, inlinedAt: !1090)
!1092 = !DILocation(line: 1361, column: 10, scope: !929, inlinedAt: !1090)
!1093 = !DILocation(line: 656, column: 31, scope: !161)
!1094 = !DILocation(line: 0, scope: !929, inlinedAt: !1095)
!1095 = distinct !DILocation(line: 657, column: 31, scope: !161)
!1096 = !DILocation(line: 1361, column: 11, scope: !929, inlinedAt: !1095)
!1097 = !DILocation(line: 1361, column: 10, scope: !929, inlinedAt: !1095)
!1098 = !DILocation(line: 657, column: 31, scope: !161)
!1099 = !DILocation(line: 663, column: 7, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !161, file: !110, line: 663, column: 7)
!1101 = !DILocation(line: 664, column: 7, scope: !1100)
!1102 = !DILocation(line: 664, column: 10, scope: !1100)
!1103 = !DILocation(line: 663, column: 7, scope: !161)
!1104 = !DILocation(line: 669, column: 7, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1100, file: !110, line: 665, column: 5)
!1106 = !DILocation(line: 671, column: 5, scope: !1105)
!1107 = !DILocation(line: 676, column: 7, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1100, file: !110, line: 673, column: 5)
!1109 = !DILocation(line: 679, column: 3, scope: !161)
!1110 = !DILocation(line: 683, column: 3, scope: !161)
!1111 = !DILocation(line: 686, column: 3, scope: !161)
!1112 = !DILocation(line: 688, column: 3, scope: !161)
!1113 = !DILocation(line: 691, column: 3, scope: !161)
!1114 = !DILocation(line: 695, column: 3, scope: !161)
!1115 = !DILocation(line: 696, column: 1, scope: !161)
!1116 = !DISubprogram(name: "strcmp", scope: !1117, file: !1117, line: 156, type: !1118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !966)
!1117 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1118 = !DISubroutineType(types: !1119)
!1119 = !{!83, !119, !119}
!1120 = !DISubprogram(name: "setlocale", scope: !1121, file: !1121, line: 122, type: !1122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !966)
!1121 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!85, !83, !119}
!1124 = !DISubprogram(name: "strncmp", scope: !1117, file: !1117, line: 159, type: !1125, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !966)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!83, !119, !119, !116}
!1127 = !DISubprogram(name: "exit", scope: !1128, file: !1128, line: 624, type: !872, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !966)
!1128 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1129 = !DISubprogram(name: "getenv", scope: !1128, file: !1128, line: 641, type: !1130, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !966)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{!85, !119}
!1132 = !DISubprogram(name: "strspn", scope: !1117, file: !1117, line: 297, type: !1133, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !966)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!118, !119, !119}
!1135 = !DISubprogram(name: "strchr", scope: !1117, file: !1117, line: 246, type: !1136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !966)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!85, !119, !83}
!1138 = !DISubprogram(name: "__ctype_b_loc", scope: !95, file: !95, line: 79, type: !1139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !966)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{!1141}
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!1144 = !DISubprogram(name: "strcspn", scope: !1117, file: !1117, line: 293, type: !1133, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !966)
!1145 = !DISubprogram(name: "fwrite_unlocked", scope: !481, file: !481, line: 704, type: !1146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !966)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!116, !1148, !116, !116, !971}
!1148 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1149)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1151 = !DILocation(line: 0, scope: !80)
!1152 = !DILocation(line: 297, column: 21, scope: !80)
!1153 = !DILocation(line: 297, column: 3, scope: !80)
!1154 = !DILocation(line: 298, column: 3, scope: !80)
!1155 = !DILocation(line: 299, column: 3, scope: !80)
!1156 = !DILocation(line: 300, column: 3, scope: !80)
!1157 = !DILocation(line: 302, column: 3, scope: !80)
!1158 = !DILocalVariable(name: "argc", arg: 1, scope: !1159, file: !2, line: 202, type: !83)
!1159 = distinct !DISubprogram(name: "decode_switches", scope: !2, file: !2, line: 202, type: !81, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !86, retainedNodes: !1160)
!1160 = !{!1158, !1161, !1162, !1163}
!1161 = !DILocalVariable(name: "argv", arg: 2, scope: !1159, file: !2, line: 202, type: !84)
!1162 = !DILocalVariable(name: "c", scope: !1159, file: !2, line: 204, type: !83)
!1163 = !DILocalVariable(name: "toprint", scope: !1159, file: !2, line: 205, type: !90)
!1164 = !DILocation(line: 0, scope: !1159, inlinedAt: !1165)
!1165 = distinct !DILocation(line: 304, column: 13, scope: !80)
!1166 = !DILocation(line: 207, column: 7, scope: !1167, inlinedAt: !1165)
!1167 = distinct !DILexicalBlock(scope: !1159, file: !2, line: 207, column: 7)
!1168 = !DILocation(line: 207, column: 18, scope: !1167, inlinedAt: !1165)
!1169 = !DILocation(line: 207, column: 7, scope: !1159, inlinedAt: !1165)
!1170 = !DILocation(line: 209, column: 19, scope: !1171, inlinedAt: !1165)
!1171 = distinct !DILexicalBlock(scope: !1167, file: !2, line: 208, column: 5)
!1172 = !DILocation(line: 209, column: 7, scope: !1171, inlinedAt: !1165)
!1173 = !DILocation(line: 215, column: 13, scope: !1174, inlinedAt: !1165)
!1174 = distinct !DILexicalBlock(scope: !1175, file: !2, line: 214, column: 13)
!1175 = distinct !DILexicalBlock(scope: !1171, file: !2, line: 212, column: 9)
!1176 = !DILocation(line: 217, column: 13, scope: !1174, inlinedAt: !1165)
!1177 = !DILocation(line: 220, column: 15, scope: !1174, inlinedAt: !1165)
!1178 = !DILocation(line: 227, column: 19, scope: !1179, inlinedAt: !1165)
!1179 = distinct !DILexicalBlock(scope: !1167, file: !2, line: 226, column: 5)
!1180 = !DILocation(line: 227, column: 7, scope: !1179, inlinedAt: !1165)
!1181 = !DILocation(line: 238, column: 23, scope: !1182, inlinedAt: !1165)
!1182 = distinct !DILexicalBlock(scope: !1183, file: !2, line: 232, column: 13)
!1183 = distinct !DILexicalBlock(scope: !1179, file: !2, line: 230, column: 9)
!1184 = !DILocation(line: 239, column: 15, scope: !1182, inlinedAt: !1165)
!1185 = !DILocation(line: 242, column: 23, scope: !1182, inlinedAt: !1165)
!1186 = !DILocation(line: 243, column: 15, scope: !1182, inlinedAt: !1165)
!1187 = !DILocation(line: 246, column: 23, scope: !1182, inlinedAt: !1165)
!1188 = !DILocation(line: 247, column: 15, scope: !1182, inlinedAt: !1165)
!1189 = !DILocation(line: 250, column: 23, scope: !1182, inlinedAt: !1165)
!1190 = !DILocation(line: 251, column: 15, scope: !1182, inlinedAt: !1165)
!1191 = !DILocation(line: 254, column: 23, scope: !1182, inlinedAt: !1165)
!1192 = !DILocation(line: 255, column: 15, scope: !1182, inlinedAt: !1165)
!1193 = !DILocation(line: 258, column: 23, scope: !1182, inlinedAt: !1165)
!1194 = !DILocation(line: 259, column: 15, scope: !1182, inlinedAt: !1165)
!1195 = !DILocation(line: 262, column: 23, scope: !1182, inlinedAt: !1165)
!1196 = !DILocation(line: 263, column: 15, scope: !1182, inlinedAt: !1165)
!1197 = !DILocation(line: 266, column: 23, scope: !1182, inlinedAt: !1165)
!1198 = !DILocation(line: 267, column: 15, scope: !1182, inlinedAt: !1165)
!1199 = distinct !{!1199, !1180, !1200, !1020}
!1200 = !DILocation(line: 276, column: 9, scope: !1179, inlinedAt: !1165)
!1201 = !DILocation(line: 269, column: 13, scope: !1182, inlinedAt: !1165)
!1202 = !DILocation(line: 271, column: 13, scope: !1182, inlinedAt: !1165)
!1203 = !DILocation(line: 274, column: 15, scope: !1182, inlinedAt: !1165)
!1204 = !DILocation(line: 279, column: 15, scope: !1205, inlinedAt: !1165)
!1205 = distinct !DILexicalBlock(scope: !1159, file: !2, line: 279, column: 7)
!1206 = !DILocation(line: 279, column: 12, scope: !1205, inlinedAt: !1165)
!1207 = !DILocation(line: 279, column: 7, scope: !1159, inlinedAt: !1165)
!1208 = !DILocation(line: 281, column: 7, scope: !1209, inlinedAt: !1165)
!1209 = distinct !DILexicalBlock(scope: !1205, file: !2, line: 280, column: 5)
!1210 = !DILocation(line: 282, column: 7, scope: !1209, inlinedAt: !1165)
!1211 = !DILocation(line: 306, column: 15, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !80, file: !2, line: 306, column: 7)
!1213 = !DILocation(line: 306, column: 7, scope: !80)
!1214 = !DILocation(line: 310, column: 8, scope: !421)
!1215 = !DILocation(line: 309, column: 7, scope: !80)
!1216 = !DILocation(line: 313, column: 7, scope: !420)
!1217 = !DILocation(line: 313, column: 22, scope: !420)
!1218 = !DILocation(line: 315, column: 11, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !420, file: !2, line: 315, column: 11)
!1220 = !DILocation(line: 315, column: 25, scope: !1219)
!1221 = !DILocation(line: 315, column: 11, scope: !420)
!1222 = !DILocation(line: 316, column: 9, scope: !1219)
!1223 = !DILocation(line: 318, column: 19, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !420, file: !2, line: 318, column: 11)
!1225 = !DILocation(line: 318, column: 11, scope: !420)
!1226 = !DILocalVariable(name: "element", arg: 1, scope: !1227, file: !2, line: 184, type: !119)
!1227 = distinct !DISubprogram(name: "print_element_env", scope: !2, file: !2, line: 184, type: !162, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !86, retainedNodes: !1228)
!1228 = !{!1226, !1229}
!1229 = !DILocalVariable(name: "envvar", arg: 2, scope: !1227, file: !2, line: 184, type: !119)
!1230 = !DILocation(line: 0, scope: !1227, inlinedAt: !1231)
!1231 = distinct !DILocation(line: 319, column: 9, scope: !1224)
!1232 = !DILocation(line: 0, scope: !410, inlinedAt: !1233)
!1233 = distinct !DILocation(line: 194, column: 3, scope: !1227, inlinedAt: !1231)
!1234 = !DILocation(line: 173, column: 7, scope: !1235, inlinedAt: !1233)
!1235 = distinct !DILexicalBlock(scope: !410, file: !2, line: 173, column: 7)
!1236 = !DILocation(line: 173, column: 7, scope: !410, inlinedAt: !1233)
!1237 = !DILocalVariable(name: "__c", arg: 1, scope: !1238, file: !1239, line: 108, type: !83)
!1238 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1239, file: !1239, line: 108, type: !1240, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !86, retainedNodes: !1242)
!1239 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!83, !83}
!1242 = !{!1237}
!1243 = !DILocation(line: 0, scope: !1238, inlinedAt: !1244)
!1244 = distinct !DILocation(line: 174, column: 5, scope: !1235, inlinedAt: !1233)
!1245 = !DILocation(line: 110, column: 10, scope: !1238, inlinedAt: !1244)
!1246 = !{!1247, !883, i64 40}
!1247 = !{!"_IO_FILE", !982, i64 0, !883, i64 8, !883, i64 16, !883, i64 24, !883, i64 32, !883, i64 40, !883, i64 48, !883, i64 56, !883, i64 64, !883, i64 72, !883, i64 80, !883, i64 88, !883, i64 96, !883, i64 104, !982, i64 112, !982, i64 116, !1248, i64 120, !1015, i64 128, !884, i64 130, !884, i64 131, !883, i64 136, !1248, i64 144, !883, i64 152, !883, i64 160, !883, i64 168, !883, i64 176, !1248, i64 184, !982, i64 192, !884, i64 196}
!1248 = !{!"long", !884, i64 0}
!1249 = !{!1247, !883, i64 48}
!1250 = !{!"branch_weights", i32 2000, i32 1}
!1251 = !DILocation(line: 175, column: 11, scope: !410, inlinedAt: !1233)
!1252 = !DILocation(line: 176, column: 3, scope: !410, inlinedAt: !1233)
!1253 = !DILocation(line: 319, column: 9, scope: !1224)
!1254 = !DILocation(line: 320, column: 19, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !420, file: !2, line: 320, column: 11)
!1256 = !DILocation(line: 320, column: 11, scope: !420)
!1257 = !DILocation(line: 321, column: 33, scope: !1255)
!1258 = !DILocation(line: 0, scope: !1227, inlinedAt: !1259)
!1259 = distinct !DILocation(line: 321, column: 9, scope: !1255)
!1260 = !DILocation(line: 0, scope: !410, inlinedAt: !1261)
!1261 = distinct !DILocation(line: 194, column: 3, scope: !1227, inlinedAt: !1259)
!1262 = !DILocation(line: 173, column: 7, scope: !1235, inlinedAt: !1261)
!1263 = !DILocation(line: 173, column: 7, scope: !410, inlinedAt: !1261)
!1264 = !DILocation(line: 0, scope: !1238, inlinedAt: !1265)
!1265 = distinct !DILocation(line: 174, column: 5, scope: !1235, inlinedAt: !1261)
!1266 = !DILocation(line: 110, column: 10, scope: !1238, inlinedAt: !1265)
!1267 = !DILocation(line: 175, column: 11, scope: !410, inlinedAt: !1261)
!1268 = !DILocation(line: 176, column: 3, scope: !410, inlinedAt: !1261)
!1269 = !DILocation(line: 321, column: 9, scope: !1255)
!1270 = !DILocation(line: 322, column: 19, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !420, file: !2, line: 322, column: 11)
!1272 = !DILocation(line: 322, column: 11, scope: !420)
!1273 = !DILocation(line: 323, column: 33, scope: !1271)
!1274 = !DILocation(line: 0, scope: !1227, inlinedAt: !1275)
!1275 = distinct !DILocation(line: 323, column: 9, scope: !1271)
!1276 = !DILocation(line: 0, scope: !410, inlinedAt: !1277)
!1277 = distinct !DILocation(line: 194, column: 3, scope: !1227, inlinedAt: !1275)
!1278 = !DILocation(line: 173, column: 7, scope: !1235, inlinedAt: !1277)
!1279 = !DILocation(line: 173, column: 7, scope: !410, inlinedAt: !1277)
!1280 = !DILocation(line: 0, scope: !1238, inlinedAt: !1281)
!1281 = distinct !DILocation(line: 174, column: 5, scope: !1235, inlinedAt: !1277)
!1282 = !DILocation(line: 110, column: 10, scope: !1238, inlinedAt: !1281)
!1283 = !DILocation(line: 175, column: 11, scope: !410, inlinedAt: !1277)
!1284 = !DILocation(line: 176, column: 3, scope: !410, inlinedAt: !1277)
!1285 = !DILocation(line: 323, column: 9, scope: !1271)
!1286 = !DILocation(line: 324, column: 19, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !420, file: !2, line: 324, column: 11)
!1288 = !DILocation(line: 324, column: 11, scope: !420)
!1289 = !DILocation(line: 325, column: 33, scope: !1287)
!1290 = !DILocation(line: 0, scope: !1227, inlinedAt: !1291)
!1291 = distinct !DILocation(line: 325, column: 9, scope: !1287)
!1292 = !DILocation(line: 0, scope: !410, inlinedAt: !1293)
!1293 = distinct !DILocation(line: 194, column: 3, scope: !1227, inlinedAt: !1291)
!1294 = !DILocation(line: 173, column: 7, scope: !1235, inlinedAt: !1293)
!1295 = !DILocation(line: 173, column: 7, scope: !410, inlinedAt: !1293)
!1296 = !DILocation(line: 0, scope: !1238, inlinedAt: !1297)
!1297 = distinct !DILocation(line: 174, column: 5, scope: !1235, inlinedAt: !1293)
!1298 = !DILocation(line: 110, column: 10, scope: !1238, inlinedAt: !1297)
!1299 = !DILocation(line: 175, column: 11, scope: !410, inlinedAt: !1293)
!1300 = !DILocation(line: 176, column: 3, scope: !410, inlinedAt: !1293)
!1301 = !DILocation(line: 325, column: 9, scope: !1287)
!1302 = !DILocation(line: 326, column: 19, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !420, file: !2, line: 326, column: 11)
!1304 = !DILocation(line: 326, column: 11, scope: !420)
!1305 = !DILocation(line: 327, column: 33, scope: !1303)
!1306 = !DILocation(line: 0, scope: !1227, inlinedAt: !1307)
!1307 = distinct !DILocation(line: 327, column: 9, scope: !1303)
!1308 = !DILocation(line: 0, scope: !410, inlinedAt: !1309)
!1309 = distinct !DILocation(line: 194, column: 3, scope: !1227, inlinedAt: !1307)
!1310 = !DILocation(line: 173, column: 7, scope: !1235, inlinedAt: !1309)
!1311 = !DILocation(line: 173, column: 7, scope: !410, inlinedAt: !1309)
!1312 = !DILocation(line: 0, scope: !1238, inlinedAt: !1313)
!1313 = distinct !DILocation(line: 174, column: 5, scope: !1235, inlinedAt: !1309)
!1314 = !DILocation(line: 110, column: 10, scope: !1238, inlinedAt: !1313)
!1315 = !DILocation(line: 175, column: 11, scope: !410, inlinedAt: !1309)
!1316 = !DILocation(line: 176, column: 3, scope: !410, inlinedAt: !1309)
!1317 = !DILocation(line: 327, column: 9, scope: !1303)
!1318 = !DILocation(line: 328, column: 5, scope: !421)
!1319 = !DILocation(line: 328, column: 5, scope: !420)
!1320 = !DILocation(line: 330, column: 15, scope: !433)
!1321 = !DILocation(line: 330, column: 7, scope: !80)
!1322 = !DILocation(line: 0, scope: !432)
!1323 = !DILocation(line: 0, scope: !410, inlinedAt: !1324)
!1324 = distinct !DILocation(line: 361, column: 9, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !432, file: !2, line: 360, column: 11)
!1326 = !DILocation(line: 173, column: 7, scope: !1235, inlinedAt: !1324)
!1327 = !DILocation(line: 173, column: 7, scope: !410, inlinedAt: !1324)
!1328 = !DILocation(line: 0, scope: !1238, inlinedAt: !1329)
!1329 = distinct !DILocation(line: 174, column: 5, scope: !1235, inlinedAt: !1324)
!1330 = !DILocation(line: 110, column: 10, scope: !1238, inlinedAt: !1329)
!1331 = !DILocation(line: 175, column: 11, scope: !410, inlinedAt: !1324)
!1332 = !DILocation(line: 176, column: 3, scope: !410, inlinedAt: !1324)
!1333 = !DILocation(line: 361, column: 9, scope: !1325)
!1334 = !DILocation(line: 364, column: 15, scope: !436)
!1335 = !DILocation(line: 364, column: 7, scope: !80)
!1336 = !DILocation(line: 0, scope: !435)
!1337 = !DILocation(line: 0, scope: !410, inlinedAt: !1338)
!1338 = distinct !DILocation(line: 386, column: 9, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !435, file: !2, line: 385, column: 11)
!1340 = !DILocation(line: 173, column: 7, scope: !1235, inlinedAt: !1338)
!1341 = !DILocation(line: 173, column: 7, scope: !410, inlinedAt: !1338)
!1342 = !DILocation(line: 0, scope: !1238, inlinedAt: !1343)
!1343 = distinct !DILocation(line: 174, column: 5, scope: !1235, inlinedAt: !1338)
!1344 = !DILocation(line: 110, column: 10, scope: !1238, inlinedAt: !1343)
!1345 = !DILocation(line: 175, column: 11, scope: !410, inlinedAt: !1338)
!1346 = !DILocation(line: 176, column: 3, scope: !410, inlinedAt: !1338)
!1347 = !DILocation(line: 386, column: 9, scope: !1339)
!1348 = !DILocation(line: 389, column: 15, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !80, file: !2, line: 389, column: 7)
!1350 = !DILocation(line: 389, column: 7, scope: !80)
!1351 = !DILocation(line: 0, scope: !410, inlinedAt: !1352)
!1352 = distinct !DILocation(line: 390, column: 5, scope: !1349)
!1353 = !DILocation(line: 173, column: 7, scope: !1235, inlinedAt: !1352)
!1354 = !DILocation(line: 173, column: 7, scope: !410, inlinedAt: !1352)
!1355 = !DILocation(line: 0, scope: !1238, inlinedAt: !1356)
!1356 = distinct !DILocation(line: 174, column: 5, scope: !1235, inlinedAt: !1352)
!1357 = !DILocation(line: 110, column: 10, scope: !1238, inlinedAt: !1356)
!1358 = !DILocation(line: 175, column: 11, scope: !410, inlinedAt: !1352)
!1359 = !DILocation(line: 176, column: 3, scope: !410, inlinedAt: !1352)
!1360 = !DILocation(line: 390, column: 5, scope: !1349)
!1361 = !DILocation(line: 0, scope: !1238, inlinedAt: !1362)
!1362 = distinct !DILocation(line: 392, column: 3, scope: !80)
!1363 = !DILocation(line: 110, column: 10, scope: !1238, inlinedAt: !1362)
!1364 = !DILocation(line: 394, column: 3, scope: !80)
!1365 = !DISubprogram(name: "bindtextdomain", scope: !963, file: !963, line: 86, type: !1366, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !966)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{!85, !119, !119}
!1368 = !DISubprogram(name: "textdomain", scope: !963, file: !963, line: 82, type: !1130, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !966)
!1369 = !DISubprogram(name: "atexit", scope: !1128, file: !1128, line: 602, type: !1370, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !966)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{!83, !521}
!1372 = !DISubprogram(name: "getopt_long", scope: !370, file: !370, line: 66, type: !1373, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !966)
!1373 = !DISubroutineType(types: !1374)
!1374 = !{!83, !83, !1375, !119, !1377, !375}
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!1378 = !DISubprogram(name: "uname", scope: !423, file: !423, line: 81, type: !1379, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !966)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{!83, !1381}
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!1382 = !DISubprogram(name: "__errno_location", scope: !1383, file: !1383, line: 37, type: !1384, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !966)
!1383 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!375}
!1386 = !DISubprogram(name: "__overflow", scope: !481, file: !481, line: 886, type: !1387, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !966)
!1387 = !DISubroutineType(types: !1388)
!1388 = !{!83, !184, !83}
!1389 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !455, file: !455, line: 50, type: !411, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !1390)
!1390 = !{!1391}
!1391 = !DILocalVariable(name: "file", arg: 1, scope: !1389, file: !455, line: 50, type: !119)
!1392 = !DILocation(line: 0, scope: !1389)
!1393 = !DILocation(line: 52, column: 13, scope: !1389)
!1394 = !DILocation(line: 53, column: 1, scope: !1389)
!1395 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !455, file: !455, line: 87, type: !1396, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !1398)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{null, !171}
!1398 = !{!1399}
!1399 = !DILocalVariable(name: "ignore", arg: 1, scope: !1395, file: !455, line: 87, type: !171)
!1400 = !DILocation(line: 0, scope: !1395)
!1401 = !DILocation(line: 89, column: 16, scope: !1395)
!1402 = !{!1403, !1403, i64 0}
!1403 = !{!"_Bool", !884, i64 0}
!1404 = !DILocation(line: 90, column: 1, scope: !1395)
!1405 = distinct !DISubprogram(name: "close_stdout", scope: !455, file: !455, line: 116, type: !522, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !1406)
!1406 = !{!1407}
!1407 = !DILocalVariable(name: "write_error", scope: !1408, file: !455, line: 121, type: !119)
!1408 = distinct !DILexicalBlock(scope: !1409, file: !455, line: 120, column: 5)
!1409 = distinct !DILexicalBlock(scope: !1405, file: !455, line: 118, column: 7)
!1410 = !DILocation(line: 118, column: 21, scope: !1409)
!1411 = !DILocation(line: 118, column: 7, scope: !1409)
!1412 = !DILocation(line: 118, column: 29, scope: !1409)
!1413 = !DILocation(line: 119, column: 7, scope: !1409)
!1414 = !DILocation(line: 119, column: 12, scope: !1409)
!1415 = !{i8 0, i8 2}
!1416 = !DILocation(line: 119, column: 25, scope: !1409)
!1417 = !DILocation(line: 119, column: 28, scope: !1409)
!1418 = !DILocation(line: 119, column: 34, scope: !1409)
!1419 = !DILocation(line: 118, column: 7, scope: !1405)
!1420 = !DILocation(line: 121, column: 33, scope: !1408)
!1421 = !DILocation(line: 0, scope: !1408)
!1422 = !DILocation(line: 122, column: 11, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1408, file: !455, line: 122, column: 11)
!1424 = !DILocation(line: 0, scope: !1423)
!1425 = !DILocation(line: 122, column: 11, scope: !1408)
!1426 = !DILocation(line: 123, column: 9, scope: !1423)
!1427 = !DILocation(line: 126, column: 9, scope: !1423)
!1428 = !DILocation(line: 128, column: 14, scope: !1408)
!1429 = !DILocation(line: 128, column: 7, scope: !1408)
!1430 = !DILocation(line: 133, column: 42, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1405, file: !455, line: 133, column: 7)
!1432 = !DILocation(line: 133, column: 28, scope: !1431)
!1433 = !DILocation(line: 133, column: 50, scope: !1431)
!1434 = !DILocation(line: 133, column: 7, scope: !1405)
!1435 = !DILocation(line: 134, column: 12, scope: !1431)
!1436 = !DILocation(line: 134, column: 5, scope: !1431)
!1437 = !DILocation(line: 135, column: 1, scope: !1405)
!1438 = !DISubprogram(name: "_exit", scope: !1439, file: !1439, line: 624, type: !872, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !966)
!1439 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1440 = distinct !DISubprogram(name: "verror", scope: !470, file: !470, line: 251, type: !1441, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !469, retainedNodes: !1443)
!1441 = !DISubroutineType(types: !1442)
!1442 = !{null, !83, !83, !119, !480}
!1443 = !{!1444, !1445, !1446, !1447}
!1444 = !DILocalVariable(name: "status", arg: 1, scope: !1440, file: !470, line: 251, type: !83)
!1445 = !DILocalVariable(name: "errnum", arg: 2, scope: !1440, file: !470, line: 251, type: !83)
!1446 = !DILocalVariable(name: "message", arg: 3, scope: !1440, file: !470, line: 251, type: !119)
!1447 = !DILocalVariable(name: "args", arg: 4, scope: !1440, file: !470, line: 251, type: !480)
!1448 = !DILocation(line: 0, scope: !1440)
!1449 = !DILocation(line: 251, column: 1, scope: !1440)
!1450 = !DILocation(line: 261, column: 3, scope: !1440)
!1451 = !DILocation(line: 265, column: 7, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1440, file: !470, line: 265, column: 7)
!1453 = !DILocation(line: 265, column: 7, scope: !1440)
!1454 = !DILocation(line: 266, column: 5, scope: !1452)
!1455 = !DILocation(line: 272, column: 7, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1452, file: !470, line: 268, column: 5)
!1457 = !DILocation(line: 276, column: 3, scope: !1440)
!1458 = !{i64 0, i64 8, !882, i64 8, i64 8, !882, i64 16, i64 8, !882, i64 24, i64 4, !981, i64 28, i64 4, !981}
!1459 = !DILocation(line: 282, column: 1, scope: !1440)
!1460 = distinct !DISubprogram(name: "flush_stdout", scope: !470, file: !470, line: 163, type: !522, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !469, retainedNodes: !1461)
!1461 = !{!1462}
!1462 = !DILocalVariable(name: "stdout_fd", scope: !1460, file: !470, line: 166, type: !83)
!1463 = !DILocation(line: 0, scope: !1460)
!1464 = !DILocalVariable(name: "fd", arg: 1, scope: !1465, file: !470, line: 145, type: !83)
!1465 = distinct !DISubprogram(name: "is_open", scope: !470, file: !470, line: 145, type: !1240, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !469, retainedNodes: !1466)
!1466 = !{!1464}
!1467 = !DILocation(line: 0, scope: !1465, inlinedAt: !1468)
!1468 = distinct !DILocation(line: 182, column: 25, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1460, file: !470, line: 182, column: 7)
!1470 = !DILocation(line: 157, column: 15, scope: !1465, inlinedAt: !1468)
!1471 = !DILocation(line: 157, column: 12, scope: !1465, inlinedAt: !1468)
!1472 = !DILocation(line: 182, column: 7, scope: !1460)
!1473 = !DILocation(line: 184, column: 5, scope: !1469)
!1474 = !DILocation(line: 185, column: 1, scope: !1460)
!1475 = distinct !DISubprogram(name: "error_tail", scope: !470, file: !470, line: 219, type: !1441, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !469, retainedNodes: !1476)
!1476 = !{!1477, !1478, !1479, !1480}
!1477 = !DILocalVariable(name: "status", arg: 1, scope: !1475, file: !470, line: 219, type: !83)
!1478 = !DILocalVariable(name: "errnum", arg: 2, scope: !1475, file: !470, line: 219, type: !83)
!1479 = !DILocalVariable(name: "message", arg: 3, scope: !1475, file: !470, line: 219, type: !119)
!1480 = !DILocalVariable(name: "args", arg: 4, scope: !1475, file: !470, line: 219, type: !480)
!1481 = !DILocation(line: 0, scope: !1475)
!1482 = !DILocation(line: 219, column: 1, scope: !1475)
!1483 = !DILocation(line: 229, column: 13, scope: !1475)
!1484 = !DILocation(line: 135, column: 10, scope: !1485, inlinedAt: !1527)
!1485 = distinct !DISubprogram(name: "vfprintf", scope: !968, file: !968, line: 132, type: !1486, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !469, retainedNodes: !1523)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{!83, !1488, !972, !482}
!1488 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1489)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !186, line: 7, baseType: !1491)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !188, line: 49, size: 1728, elements: !1492)
!1492 = !{!1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1491, file: !188, line: 51, baseType: !83, size: 32)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1491, file: !188, line: 54, baseType: !85, size: 64, offset: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1491, file: !188, line: 55, baseType: !85, size: 64, offset: 128)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1491, file: !188, line: 56, baseType: !85, size: 64, offset: 192)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1491, file: !188, line: 57, baseType: !85, size: 64, offset: 256)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1491, file: !188, line: 58, baseType: !85, size: 64, offset: 320)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1491, file: !188, line: 59, baseType: !85, size: 64, offset: 384)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1491, file: !188, line: 60, baseType: !85, size: 64, offset: 448)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1491, file: !188, line: 61, baseType: !85, size: 64, offset: 512)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1491, file: !188, line: 64, baseType: !85, size: 64, offset: 576)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1491, file: !188, line: 65, baseType: !85, size: 64, offset: 640)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1491, file: !188, line: 66, baseType: !85, size: 64, offset: 704)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1491, file: !188, line: 68, baseType: !203, size: 64, offset: 768)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1491, file: !188, line: 70, baseType: !1507, size: 64, offset: 832)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1491, file: !188, line: 72, baseType: !83, size: 32, offset: 896)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1491, file: !188, line: 73, baseType: !83, size: 32, offset: 928)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1491, file: !188, line: 74, baseType: !210, size: 64, offset: 960)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1491, file: !188, line: 77, baseType: !115, size: 16, offset: 1024)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1491, file: !188, line: 78, baseType: !215, size: 8, offset: 1040)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1491, file: !188, line: 79, baseType: !126, size: 8, offset: 1048)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1491, file: !188, line: 81, baseType: !218, size: 64, offset: 1088)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1491, file: !188, line: 89, baseType: !221, size: 64, offset: 1152)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1491, file: !188, line: 91, baseType: !223, size: 64, offset: 1216)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1491, file: !188, line: 92, baseType: !226, size: 64, offset: 1280)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1491, file: !188, line: 93, baseType: !1507, size: 64, offset: 1344)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1491, file: !188, line: 94, baseType: !122, size: 64, offset: 1408)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1491, file: !188, line: 95, baseType: !116, size: 64, offset: 1472)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1491, file: !188, line: 96, baseType: !83, size: 32, offset: 1536)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1491, file: !188, line: 98, baseType: !233, size: 160, offset: 1568)
!1523 = !{!1524, !1525, !1526}
!1524 = !DILocalVariable(name: "__stream", arg: 1, scope: !1485, file: !968, line: 132, type: !1488)
!1525 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1485, file: !968, line: 133, type: !972)
!1526 = !DILocalVariable(name: "__ap", arg: 3, scope: !1485, file: !968, line: 133, type: !482)
!1527 = distinct !DILocation(line: 229, column: 3, scope: !1475)
!1528 = !{!1529, !1531}
!1529 = distinct !{!1529, !1530, !"vfprintf.inline: argument 0"}
!1530 = distinct !{!1530, !"vfprintf.inline"}
!1531 = distinct !{!1531, !1530, !"vfprintf.inline: argument 1"}
!1532 = !DILocation(line: 229, column: 3, scope: !1475)
!1533 = !DILocation(line: 0, scope: !1485, inlinedAt: !1527)
!1534 = !DILocation(line: 133, column: 49, scope: !1485, inlinedAt: !1527)
!1535 = !DILocation(line: 232, column: 3, scope: !1475)
!1536 = !DILocation(line: 233, column: 7, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1475, file: !470, line: 233, column: 7)
!1538 = !DILocation(line: 233, column: 7, scope: !1475)
!1539 = !DILocalVariable(name: "errnum", arg: 1, scope: !1540, file: !470, line: 188, type: !83)
!1540 = distinct !DISubprogram(name: "print_errno_message", scope: !470, file: !470, line: 188, type: !872, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !469, retainedNodes: !1541)
!1541 = !{!1539, !1542, !1543}
!1542 = !DILocalVariable(name: "s", scope: !1540, file: !470, line: 190, type: !119)
!1543 = !DILocalVariable(name: "errbuf", scope: !1540, file: !470, line: 193, type: !1544)
!1544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1545)
!1545 = !{!1546}
!1546 = !DISubrange(count: 1024)
!1547 = !DILocation(line: 0, scope: !1540, inlinedAt: !1548)
!1548 = distinct !DILocation(line: 234, column: 5, scope: !1537)
!1549 = !DILocation(line: 193, column: 3, scope: !1540, inlinedAt: !1548)
!1550 = !DILocation(line: 193, column: 8, scope: !1540, inlinedAt: !1548)
!1551 = !DILocation(line: 195, column: 7, scope: !1540, inlinedAt: !1548)
!1552 = !DILocation(line: 207, column: 9, scope: !1553, inlinedAt: !1548)
!1553 = distinct !DILexicalBlock(scope: !1540, file: !470, line: 207, column: 7)
!1554 = !DILocation(line: 207, column: 7, scope: !1540, inlinedAt: !1548)
!1555 = !DILocation(line: 208, column: 9, scope: !1553, inlinedAt: !1548)
!1556 = !DILocation(line: 208, column: 5, scope: !1553, inlinedAt: !1548)
!1557 = !DILocation(line: 214, column: 3, scope: !1540, inlinedAt: !1548)
!1558 = !DILocation(line: 216, column: 1, scope: !1540, inlinedAt: !1548)
!1559 = !DILocation(line: 234, column: 5, scope: !1537)
!1560 = !DILocation(line: 238, column: 3, scope: !1475)
!1561 = !DILocalVariable(name: "__c", arg: 1, scope: !1562, file: !1239, line: 101, type: !83)
!1562 = distinct !DISubprogram(name: "putc_unlocked", scope: !1239, file: !1239, line: 101, type: !1563, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !469, retainedNodes: !1565)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!83, !83, !1489}
!1565 = !{!1561, !1566}
!1566 = !DILocalVariable(name: "__stream", arg: 2, scope: !1562, file: !1239, line: 101, type: !1489)
!1567 = !DILocation(line: 0, scope: !1562, inlinedAt: !1568)
!1568 = distinct !DILocation(line: 238, column: 3, scope: !1475)
!1569 = !DILocation(line: 103, column: 10, scope: !1562, inlinedAt: !1568)
!1570 = !DILocation(line: 240, column: 3, scope: !1475)
!1571 = !DILocation(line: 241, column: 7, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1475, file: !470, line: 241, column: 7)
!1573 = !DILocation(line: 241, column: 7, scope: !1475)
!1574 = !DILocation(line: 242, column: 5, scope: !1572)
!1575 = !DILocation(line: 243, column: 1, scope: !1475)
!1576 = !DISubprogram(name: "__vfprintf_chk", scope: !968, file: !968, line: 96, type: !1577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !966)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!83, !1488, !83, !972, !482}
!1579 = !DISubprogram(name: "strerror_r", scope: !1117, file: !1117, line: 444, type: !1580, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !966)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{!85, !83, !85, !116}
!1582 = !DISubprogram(name: "fflush_unlocked", scope: !481, file: !481, line: 239, type: !1583, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !966)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!83, !1489}
!1585 = !DISubprogram(name: "fcntl", scope: !1586, file: !1586, line: 149, type: !1587, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !966)
!1586 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1587 = !DISubroutineType(types: !1588)
!1588 = !{!83, !83, !83, null}
!1589 = distinct !DISubprogram(name: "error", scope: !470, file: !470, line: 285, type: !1590, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !469, retainedNodes: !1592)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{null, !83, !83, !119, null}
!1592 = !{!1593, !1594, !1595, !1596}
!1593 = !DILocalVariable(name: "status", arg: 1, scope: !1589, file: !470, line: 285, type: !83)
!1594 = !DILocalVariable(name: "errnum", arg: 2, scope: !1589, file: !470, line: 285, type: !83)
!1595 = !DILocalVariable(name: "message", arg: 3, scope: !1589, file: !470, line: 285, type: !119)
!1596 = !DILocalVariable(name: "ap", scope: !1589, file: !470, line: 287, type: !480)
!1597 = !DILocation(line: 0, scope: !1589)
!1598 = !DILocation(line: 287, column: 3, scope: !1589)
!1599 = !DILocation(line: 287, column: 11, scope: !1589)
!1600 = !DILocation(line: 288, column: 3, scope: !1589)
!1601 = !DILocation(line: 289, column: 3, scope: !1589)
!1602 = !DILocation(line: 290, column: 3, scope: !1589)
!1603 = !DILocation(line: 291, column: 1, scope: !1589)
!1604 = !DILocation(line: 0, scope: !477)
!1605 = !DILocation(line: 298, column: 1, scope: !477)
!1606 = !DILocation(line: 302, column: 7, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !477, file: !470, line: 302, column: 7)
!1608 = !DILocation(line: 302, column: 7, scope: !477)
!1609 = !DILocation(line: 307, column: 11, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1611, file: !470, line: 307, column: 11)
!1611 = distinct !DILexicalBlock(scope: !1607, file: !470, line: 303, column: 5)
!1612 = !DILocation(line: 307, column: 27, scope: !1610)
!1613 = !DILocation(line: 308, column: 11, scope: !1610)
!1614 = !DILocation(line: 308, column: 28, scope: !1610)
!1615 = !DILocation(line: 308, column: 25, scope: !1610)
!1616 = !DILocation(line: 309, column: 15, scope: !1610)
!1617 = !DILocation(line: 309, column: 33, scope: !1610)
!1618 = !DILocation(line: 310, column: 19, scope: !1610)
!1619 = !DILocation(line: 311, column: 22, scope: !1610)
!1620 = !DILocation(line: 311, column: 56, scope: !1610)
!1621 = !DILocation(line: 307, column: 11, scope: !1611)
!1622 = !DILocation(line: 316, column: 21, scope: !1611)
!1623 = !DILocation(line: 317, column: 23, scope: !1611)
!1624 = !DILocation(line: 318, column: 5, scope: !1611)
!1625 = !DILocation(line: 327, column: 3, scope: !477)
!1626 = !DILocation(line: 331, column: 7, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !477, file: !470, line: 331, column: 7)
!1628 = !DILocation(line: 331, column: 7, scope: !477)
!1629 = !DILocation(line: 332, column: 5, scope: !1627)
!1630 = !DILocation(line: 338, column: 7, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1627, file: !470, line: 334, column: 5)
!1632 = !DILocation(line: 346, column: 3, scope: !477)
!1633 = !DILocation(line: 350, column: 3, scope: !477)
!1634 = !DILocation(line: 356, column: 1, scope: !477)
!1635 = distinct !DISubprogram(name: "error_at_line", scope: !470, file: !470, line: 359, type: !1636, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !469, retainedNodes: !1638)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{null, !83, !83, !119, !90, !119, null}
!1638 = !{!1639, !1640, !1641, !1642, !1643, !1644}
!1639 = !DILocalVariable(name: "status", arg: 1, scope: !1635, file: !470, line: 359, type: !83)
!1640 = !DILocalVariable(name: "errnum", arg: 2, scope: !1635, file: !470, line: 359, type: !83)
!1641 = !DILocalVariable(name: "file_name", arg: 3, scope: !1635, file: !470, line: 359, type: !119)
!1642 = !DILocalVariable(name: "line_number", arg: 4, scope: !1635, file: !470, line: 360, type: !90)
!1643 = !DILocalVariable(name: "message", arg: 5, scope: !1635, file: !470, line: 360, type: !119)
!1644 = !DILocalVariable(name: "ap", scope: !1635, file: !470, line: 362, type: !480)
!1645 = !DILocation(line: 0, scope: !1635)
!1646 = !DILocation(line: 362, column: 3, scope: !1635)
!1647 = !DILocation(line: 362, column: 11, scope: !1635)
!1648 = !DILocation(line: 363, column: 3, scope: !1635)
!1649 = !DILocation(line: 364, column: 3, scope: !1635)
!1650 = !DILocation(line: 366, column: 3, scope: !1635)
!1651 = !DILocation(line: 367, column: 1, scope: !1635)
!1652 = distinct !DISubprogram(name: "getprogname", scope: !802, file: !802, line: 54, type: !1653, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !801, retainedNodes: !966)
!1653 = !DISubroutineType(types: !1654)
!1654 = !{!119}
!1655 = !DILocation(line: 58, column: 10, scope: !1652)
!1656 = !DILocation(line: 58, column: 3, scope: !1652)
!1657 = distinct !DISubprogram(name: "set_program_name", scope: !527, file: !527, line: 37, type: !411, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !526, retainedNodes: !1658)
!1658 = !{!1659, !1660, !1661}
!1659 = !DILocalVariable(name: "argv0", arg: 1, scope: !1657, file: !527, line: 37, type: !119)
!1660 = !DILocalVariable(name: "slash", scope: !1657, file: !527, line: 44, type: !119)
!1661 = !DILocalVariable(name: "base", scope: !1657, file: !527, line: 45, type: !119)
!1662 = !DILocation(line: 0, scope: !1657)
!1663 = !DILocation(line: 44, column: 23, scope: !1657)
!1664 = !DILocation(line: 45, column: 22, scope: !1657)
!1665 = !DILocation(line: 46, column: 17, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1657, file: !527, line: 46, column: 7)
!1667 = !DILocation(line: 46, column: 9, scope: !1666)
!1668 = !DILocation(line: 46, column: 25, scope: !1666)
!1669 = !DILocation(line: 46, column: 40, scope: !1666)
!1670 = !DILocalVariable(name: "__s1", arg: 1, scope: !1671, file: !930, line: 974, type: !1149)
!1671 = distinct !DISubprogram(name: "memeq", scope: !930, file: !930, line: 974, type: !1672, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !526, retainedNodes: !1674)
!1672 = !DISubroutineType(types: !1673)
!1673 = !{!171, !1149, !1149, !116}
!1674 = !{!1670, !1675, !1676}
!1675 = !DILocalVariable(name: "__s2", arg: 2, scope: !1671, file: !930, line: 974, type: !1149)
!1676 = !DILocalVariable(name: "__n", arg: 3, scope: !1671, file: !930, line: 974, type: !116)
!1677 = !DILocation(line: 0, scope: !1671, inlinedAt: !1678)
!1678 = distinct !DILocation(line: 46, column: 28, scope: !1666)
!1679 = !DILocation(line: 976, column: 11, scope: !1671, inlinedAt: !1678)
!1680 = !DILocation(line: 976, column: 10, scope: !1671, inlinedAt: !1678)
!1681 = !DILocation(line: 46, column: 7, scope: !1657)
!1682 = !DILocation(line: 49, column: 11, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1684, file: !527, line: 49, column: 11)
!1684 = distinct !DILexicalBlock(scope: !1666, file: !527, line: 47, column: 5)
!1685 = !DILocation(line: 49, column: 36, scope: !1683)
!1686 = !DILocation(line: 49, column: 11, scope: !1684)
!1687 = !DILocation(line: 65, column: 16, scope: !1657)
!1688 = !DILocation(line: 71, column: 27, scope: !1657)
!1689 = !DILocation(line: 74, column: 33, scope: !1657)
!1690 = !DILocation(line: 76, column: 1, scope: !1657)
!1691 = !DISubprogram(name: "strrchr", scope: !1117, file: !1117, line: 273, type: !1136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !966)
!1692 = !DILocation(line: 0, scope: !536)
!1693 = !DILocation(line: 40, column: 29, scope: !536)
!1694 = !DILocation(line: 41, column: 19, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !536, file: !537, line: 41, column: 7)
!1696 = !DILocation(line: 41, column: 7, scope: !536)
!1697 = !DILocation(line: 47, column: 3, scope: !536)
!1698 = !DILocation(line: 48, column: 3, scope: !536)
!1699 = !DILocation(line: 48, column: 13, scope: !536)
!1700 = !DILocalVariable(name: "ps", arg: 1, scope: !1701, file: !1702, line: 1135, type: !1705)
!1701 = distinct !DISubprogram(name: "mbszero", scope: !1702, file: !1702, line: 1135, type: !1703, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !1706)
!1702 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1703 = !DISubroutineType(types: !1704)
!1704 = !{null, !1705}
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!1706 = !{!1700}
!1707 = !DILocation(line: 0, scope: !1701, inlinedAt: !1708)
!1708 = distinct !DILocation(line: 48, column: 18, scope: !536)
!1709 = !DILocalVariable(name: "__dest", arg: 1, scope: !1710, file: !1711, line: 57, type: !122)
!1710 = distinct !DISubprogram(name: "memset", scope: !1711, file: !1711, line: 57, type: !1712, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !1714)
!1711 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1712 = !DISubroutineType(types: !1713)
!1713 = !{!122, !122, !83, !116}
!1714 = !{!1709, !1715, !1716}
!1715 = !DILocalVariable(name: "__ch", arg: 2, scope: !1710, file: !1711, line: 57, type: !83)
!1716 = !DILocalVariable(name: "__len", arg: 3, scope: !1710, file: !1711, line: 57, type: !116)
!1717 = !DILocation(line: 0, scope: !1710, inlinedAt: !1718)
!1718 = distinct !DILocation(line: 1137, column: 3, scope: !1701, inlinedAt: !1708)
!1719 = !DILocation(line: 59, column: 10, scope: !1710, inlinedAt: !1718)
!1720 = !DILocation(line: 49, column: 7, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !536, file: !537, line: 49, column: 7)
!1722 = !DILocation(line: 49, column: 39, scope: !1721)
!1723 = !DILocation(line: 49, column: 44, scope: !1721)
!1724 = !DILocation(line: 54, column: 1, scope: !536)
!1725 = !DISubprogram(name: "mbrtoc32", scope: !548, file: !548, line: 57, type: !1726, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !966)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{!116, !1728, !972, !116, !1730}
!1728 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1729)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!1730 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1705)
!1731 = distinct !DISubprogram(name: "clone_quoting_options", scope: !567, file: !567, line: 113, type: !1732, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !591, retainedNodes: !1735)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{!1734, !1734}
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!1735 = !{!1736, !1737, !1738}
!1736 = !DILocalVariable(name: "o", arg: 1, scope: !1731, file: !567, line: 113, type: !1734)
!1737 = !DILocalVariable(name: "saved_errno", scope: !1731, file: !567, line: 115, type: !83)
!1738 = !DILocalVariable(name: "p", scope: !1731, file: !567, line: 116, type: !1734)
!1739 = !DILocation(line: 0, scope: !1731)
!1740 = !DILocation(line: 115, column: 21, scope: !1731)
!1741 = !DILocation(line: 116, column: 40, scope: !1731)
!1742 = !DILocation(line: 116, column: 31, scope: !1731)
!1743 = !DILocation(line: 118, column: 9, scope: !1731)
!1744 = !DILocation(line: 119, column: 3, scope: !1731)
!1745 = distinct !DISubprogram(name: "get_quoting_style", scope: !567, file: !567, line: 124, type: !1746, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !591, retainedNodes: !1750)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{!593, !1748}
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !620)
!1750 = !{!1751}
!1751 = !DILocalVariable(name: "o", arg: 1, scope: !1745, file: !567, line: 124, type: !1748)
!1752 = !DILocation(line: 0, scope: !1745)
!1753 = !DILocation(line: 126, column: 11, scope: !1745)
!1754 = !DILocation(line: 126, column: 46, scope: !1745)
!1755 = !{!1756, !884, i64 0}
!1756 = !{!"quoting_options", !884, i64 0, !982, i64 4, !884, i64 8, !883, i64 40, !883, i64 48}
!1757 = !DILocation(line: 126, column: 3, scope: !1745)
!1758 = distinct !DISubprogram(name: "set_quoting_style", scope: !567, file: !567, line: 132, type: !1759, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !591, retainedNodes: !1761)
!1759 = !DISubroutineType(types: !1760)
!1760 = !{null, !1734, !593}
!1761 = !{!1762, !1763}
!1762 = !DILocalVariable(name: "o", arg: 1, scope: !1758, file: !567, line: 132, type: !1734)
!1763 = !DILocalVariable(name: "s", arg: 2, scope: !1758, file: !567, line: 132, type: !593)
!1764 = !DILocation(line: 0, scope: !1758)
!1765 = !DILocation(line: 134, column: 4, scope: !1758)
!1766 = !DILocation(line: 134, column: 45, scope: !1758)
!1767 = !DILocation(line: 135, column: 1, scope: !1758)
!1768 = distinct !DISubprogram(name: "set_char_quoting", scope: !567, file: !567, line: 143, type: !1769, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !591, retainedNodes: !1771)
!1769 = !DISubroutineType(types: !1770)
!1770 = !{!83, !1734, !4, !83}
!1771 = !{!1772, !1773, !1774, !1775, !1776, !1778, !1779}
!1772 = !DILocalVariable(name: "o", arg: 1, scope: !1768, file: !567, line: 143, type: !1734)
!1773 = !DILocalVariable(name: "c", arg: 2, scope: !1768, file: !567, line: 143, type: !4)
!1774 = !DILocalVariable(name: "i", arg: 3, scope: !1768, file: !567, line: 143, type: !83)
!1775 = !DILocalVariable(name: "uc", scope: !1768, file: !567, line: 145, type: !121)
!1776 = !DILocalVariable(name: "p", scope: !1768, file: !567, line: 146, type: !1777)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!1778 = !DILocalVariable(name: "shift", scope: !1768, file: !567, line: 148, type: !83)
!1779 = !DILocalVariable(name: "r", scope: !1768, file: !567, line: 149, type: !90)
!1780 = !DILocation(line: 0, scope: !1768)
!1781 = !DILocation(line: 147, column: 6, scope: !1768)
!1782 = !DILocation(line: 147, column: 41, scope: !1768)
!1783 = !DILocation(line: 147, column: 62, scope: !1768)
!1784 = !DILocation(line: 147, column: 57, scope: !1768)
!1785 = !DILocation(line: 148, column: 15, scope: !1768)
!1786 = !DILocation(line: 149, column: 21, scope: !1768)
!1787 = !DILocation(line: 149, column: 24, scope: !1768)
!1788 = !DILocation(line: 149, column: 34, scope: !1768)
!1789 = !DILocation(line: 150, column: 19, scope: !1768)
!1790 = !DILocation(line: 150, column: 24, scope: !1768)
!1791 = !DILocation(line: 150, column: 6, scope: !1768)
!1792 = !DILocation(line: 151, column: 3, scope: !1768)
!1793 = distinct !DISubprogram(name: "set_quoting_flags", scope: !567, file: !567, line: 159, type: !1794, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !591, retainedNodes: !1796)
!1794 = !DISubroutineType(types: !1795)
!1795 = !{!83, !1734, !83}
!1796 = !{!1797, !1798, !1799}
!1797 = !DILocalVariable(name: "o", arg: 1, scope: !1793, file: !567, line: 159, type: !1734)
!1798 = !DILocalVariable(name: "i", arg: 2, scope: !1793, file: !567, line: 159, type: !83)
!1799 = !DILocalVariable(name: "r", scope: !1793, file: !567, line: 163, type: !83)
!1800 = !DILocation(line: 0, scope: !1793)
!1801 = !DILocation(line: 161, column: 8, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1793, file: !567, line: 161, column: 7)
!1803 = !DILocation(line: 161, column: 7, scope: !1793)
!1804 = !DILocation(line: 163, column: 14, scope: !1793)
!1805 = !{!1756, !982, i64 4}
!1806 = !DILocation(line: 164, column: 12, scope: !1793)
!1807 = !DILocation(line: 165, column: 3, scope: !1793)
!1808 = distinct !DISubprogram(name: "set_custom_quoting", scope: !567, file: !567, line: 169, type: !1809, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !591, retainedNodes: !1811)
!1809 = !DISubroutineType(types: !1810)
!1810 = !{null, !1734, !119, !119}
!1811 = !{!1812, !1813, !1814}
!1812 = !DILocalVariable(name: "o", arg: 1, scope: !1808, file: !567, line: 169, type: !1734)
!1813 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1808, file: !567, line: 170, type: !119)
!1814 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1808, file: !567, line: 170, type: !119)
!1815 = !DILocation(line: 0, scope: !1808)
!1816 = !DILocation(line: 172, column: 8, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1808, file: !567, line: 172, column: 7)
!1818 = !DILocation(line: 172, column: 7, scope: !1808)
!1819 = !DILocation(line: 174, column: 12, scope: !1808)
!1820 = !DILocation(line: 175, column: 8, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1808, file: !567, line: 175, column: 7)
!1822 = !DILocation(line: 175, column: 19, scope: !1821)
!1823 = !DILocation(line: 176, column: 5, scope: !1821)
!1824 = !DILocation(line: 177, column: 6, scope: !1808)
!1825 = !DILocation(line: 177, column: 17, scope: !1808)
!1826 = !{!1756, !883, i64 40}
!1827 = !DILocation(line: 178, column: 6, scope: !1808)
!1828 = !DILocation(line: 178, column: 18, scope: !1808)
!1829 = !{!1756, !883, i64 48}
!1830 = !DILocation(line: 179, column: 1, scope: !1808)
!1831 = !DISubprogram(name: "abort", scope: !1128, file: !1128, line: 598, type: !522, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !966)
!1832 = distinct !DISubprogram(name: "quotearg_buffer", scope: !567, file: !567, line: 774, type: !1833, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !591, retainedNodes: !1835)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{!116, !85, !116, !119, !116, !1748}
!1835 = !{!1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843}
!1836 = !DILocalVariable(name: "buffer", arg: 1, scope: !1832, file: !567, line: 774, type: !85)
!1837 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1832, file: !567, line: 774, type: !116)
!1838 = !DILocalVariable(name: "arg", arg: 3, scope: !1832, file: !567, line: 775, type: !119)
!1839 = !DILocalVariable(name: "argsize", arg: 4, scope: !1832, file: !567, line: 775, type: !116)
!1840 = !DILocalVariable(name: "o", arg: 5, scope: !1832, file: !567, line: 776, type: !1748)
!1841 = !DILocalVariable(name: "p", scope: !1832, file: !567, line: 778, type: !1748)
!1842 = !DILocalVariable(name: "saved_errno", scope: !1832, file: !567, line: 779, type: !83)
!1843 = !DILocalVariable(name: "r", scope: !1832, file: !567, line: 780, type: !116)
!1844 = !DILocation(line: 0, scope: !1832)
!1845 = !DILocation(line: 778, column: 37, scope: !1832)
!1846 = !DILocation(line: 779, column: 21, scope: !1832)
!1847 = !DILocation(line: 781, column: 43, scope: !1832)
!1848 = !DILocation(line: 781, column: 53, scope: !1832)
!1849 = !DILocation(line: 781, column: 63, scope: !1832)
!1850 = !DILocation(line: 782, column: 43, scope: !1832)
!1851 = !DILocation(line: 782, column: 58, scope: !1832)
!1852 = !DILocation(line: 780, column: 14, scope: !1832)
!1853 = !DILocation(line: 783, column: 9, scope: !1832)
!1854 = !DILocation(line: 784, column: 3, scope: !1832)
!1855 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !567, file: !567, line: 251, type: !1856, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !591, retainedNodes: !1860)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{!116, !85, !116, !119, !116, !593, !83, !1858, !119, !119}
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!1860 = !{!1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1885, !1887, !1890, !1891, !1892, !1893, !1896, !1897, !1900, !1904, !1905, !1913, !1916, !1917, !1919, !1920, !1921, !1922}
!1861 = !DILocalVariable(name: "buffer", arg: 1, scope: !1855, file: !567, line: 251, type: !85)
!1862 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1855, file: !567, line: 251, type: !116)
!1863 = !DILocalVariable(name: "arg", arg: 3, scope: !1855, file: !567, line: 252, type: !119)
!1864 = !DILocalVariable(name: "argsize", arg: 4, scope: !1855, file: !567, line: 252, type: !116)
!1865 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1855, file: !567, line: 253, type: !593)
!1866 = !DILocalVariable(name: "flags", arg: 6, scope: !1855, file: !567, line: 253, type: !83)
!1867 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1855, file: !567, line: 254, type: !1858)
!1868 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1855, file: !567, line: 255, type: !119)
!1869 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1855, file: !567, line: 256, type: !119)
!1870 = !DILocalVariable(name: "unibyte_locale", scope: !1855, file: !567, line: 258, type: !171)
!1871 = !DILocalVariable(name: "len", scope: !1855, file: !567, line: 260, type: !116)
!1872 = !DILocalVariable(name: "orig_buffersize", scope: !1855, file: !567, line: 261, type: !116)
!1873 = !DILocalVariable(name: "quote_string", scope: !1855, file: !567, line: 262, type: !119)
!1874 = !DILocalVariable(name: "quote_string_len", scope: !1855, file: !567, line: 263, type: !116)
!1875 = !DILocalVariable(name: "backslash_escapes", scope: !1855, file: !567, line: 264, type: !171)
!1876 = !DILocalVariable(name: "elide_outer_quotes", scope: !1855, file: !567, line: 265, type: !171)
!1877 = !DILocalVariable(name: "encountered_single_quote", scope: !1855, file: !567, line: 266, type: !171)
!1878 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1855, file: !567, line: 267, type: !171)
!1879 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1855, file: !567, line: 309, type: !171)
!1880 = !DILocalVariable(name: "lq", scope: !1881, file: !567, line: 361, type: !119)
!1881 = distinct !DILexicalBlock(scope: !1882, file: !567, line: 361, column: 11)
!1882 = distinct !DILexicalBlock(scope: !1883, file: !567, line: 360, column: 13)
!1883 = distinct !DILexicalBlock(scope: !1884, file: !567, line: 333, column: 7)
!1884 = distinct !DILexicalBlock(scope: !1855, file: !567, line: 312, column: 5)
!1885 = !DILocalVariable(name: "i", scope: !1886, file: !567, line: 395, type: !116)
!1886 = distinct !DILexicalBlock(scope: !1855, file: !567, line: 395, column: 3)
!1887 = !DILocalVariable(name: "is_right_quote", scope: !1888, file: !567, line: 397, type: !171)
!1888 = distinct !DILexicalBlock(scope: !1889, file: !567, line: 396, column: 5)
!1889 = distinct !DILexicalBlock(scope: !1886, file: !567, line: 395, column: 3)
!1890 = !DILocalVariable(name: "escaping", scope: !1888, file: !567, line: 398, type: !171)
!1891 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1888, file: !567, line: 399, type: !171)
!1892 = !DILocalVariable(name: "c", scope: !1888, file: !567, line: 417, type: !121)
!1893 = !DILocalVariable(name: "m", scope: !1894, file: !567, line: 598, type: !116)
!1894 = distinct !DILexicalBlock(scope: !1895, file: !567, line: 596, column: 11)
!1895 = distinct !DILexicalBlock(scope: !1888, file: !567, line: 419, column: 9)
!1896 = !DILocalVariable(name: "printable", scope: !1894, file: !567, line: 600, type: !171)
!1897 = !DILocalVariable(name: "mbs", scope: !1898, file: !567, line: 609, type: !654)
!1898 = distinct !DILexicalBlock(scope: !1899, file: !567, line: 608, column: 15)
!1899 = distinct !DILexicalBlock(scope: !1894, file: !567, line: 602, column: 17)
!1900 = !DILocalVariable(name: "w", scope: !1901, file: !567, line: 618, type: !547)
!1901 = distinct !DILexicalBlock(scope: !1902, file: !567, line: 617, column: 19)
!1902 = distinct !DILexicalBlock(scope: !1903, file: !567, line: 616, column: 17)
!1903 = distinct !DILexicalBlock(scope: !1898, file: !567, line: 616, column: 17)
!1904 = !DILocalVariable(name: "bytes", scope: !1901, file: !567, line: 619, type: !116)
!1905 = !DILocalVariable(name: "j", scope: !1906, file: !567, line: 648, type: !116)
!1906 = distinct !DILexicalBlock(scope: !1907, file: !567, line: 648, column: 29)
!1907 = distinct !DILexicalBlock(scope: !1908, file: !567, line: 647, column: 27)
!1908 = distinct !DILexicalBlock(scope: !1909, file: !567, line: 645, column: 29)
!1909 = distinct !DILexicalBlock(scope: !1910, file: !567, line: 636, column: 23)
!1910 = distinct !DILexicalBlock(scope: !1911, file: !567, line: 628, column: 30)
!1911 = distinct !DILexicalBlock(scope: !1912, file: !567, line: 623, column: 30)
!1912 = distinct !DILexicalBlock(scope: !1901, file: !567, line: 621, column: 25)
!1913 = !DILocalVariable(name: "ilim", scope: !1914, file: !567, line: 674, type: !116)
!1914 = distinct !DILexicalBlock(scope: !1915, file: !567, line: 671, column: 15)
!1915 = distinct !DILexicalBlock(scope: !1894, file: !567, line: 670, column: 17)
!1916 = !DILabel(scope: !1855, name: "process_input", file: !567, line: 308)
!1917 = !DILabel(scope: !1918, name: "c_and_shell_escape", file: !567, line: 502)
!1918 = distinct !DILexicalBlock(scope: !1895, file: !567, line: 478, column: 9)
!1919 = !DILabel(scope: !1918, name: "c_escape", file: !567, line: 507)
!1920 = !DILabel(scope: !1888, name: "store_escape", file: !567, line: 709)
!1921 = !DILabel(scope: !1888, name: "store_c", file: !567, line: 712)
!1922 = !DILabel(scope: !1855, name: "force_outer_quoting_style", file: !567, line: 753)
!1923 = !DILocation(line: 0, scope: !1855)
!1924 = !DILocation(line: 258, column: 25, scope: !1855)
!1925 = !DILocation(line: 258, column: 36, scope: !1855)
!1926 = !DILocation(line: 267, column: 3, scope: !1855)
!1927 = !DILocation(line: 261, column: 10, scope: !1855)
!1928 = !DILocation(line: 262, column: 15, scope: !1855)
!1929 = !DILocation(line: 263, column: 10, scope: !1855)
!1930 = !DILocation(line: 308, column: 2, scope: !1855)
!1931 = !DILocation(line: 311, column: 3, scope: !1855)
!1932 = !DILocation(line: 318, column: 11, scope: !1884)
!1933 = !DILocation(line: 319, column: 9, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1935, file: !567, line: 319, column: 9)
!1935 = distinct !DILexicalBlock(scope: !1936, file: !567, line: 319, column: 9)
!1936 = distinct !DILexicalBlock(scope: !1884, file: !567, line: 318, column: 11)
!1937 = !DILocation(line: 319, column: 9, scope: !1935)
!1938 = !DILocation(line: 0, scope: !645, inlinedAt: !1939)
!1939 = distinct !DILocation(line: 357, column: 26, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1941, file: !567, line: 335, column: 11)
!1941 = distinct !DILexicalBlock(scope: !1883, file: !567, line: 334, column: 13)
!1942 = !DILocation(line: 199, column: 29, scope: !645, inlinedAt: !1939)
!1943 = !DILocation(line: 201, column: 19, scope: !1944, inlinedAt: !1939)
!1944 = distinct !DILexicalBlock(scope: !645, file: !567, line: 201, column: 7)
!1945 = !DILocation(line: 201, column: 7, scope: !645, inlinedAt: !1939)
!1946 = !DILocation(line: 229, column: 3, scope: !645, inlinedAt: !1939)
!1947 = !DILocation(line: 230, column: 3, scope: !645, inlinedAt: !1939)
!1948 = !DILocation(line: 230, column: 13, scope: !645, inlinedAt: !1939)
!1949 = !DILocalVariable(name: "ps", arg: 1, scope: !1950, file: !1702, line: 1135, type: !1953)
!1950 = distinct !DISubprogram(name: "mbszero", scope: !1702, file: !1702, line: 1135, type: !1951, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !591, retainedNodes: !1954)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{null, !1953}
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!1954 = !{!1949}
!1955 = !DILocation(line: 0, scope: !1950, inlinedAt: !1956)
!1956 = distinct !DILocation(line: 230, column: 18, scope: !645, inlinedAt: !1939)
!1957 = !DILocalVariable(name: "__dest", arg: 1, scope: !1958, file: !1711, line: 57, type: !122)
!1958 = distinct !DISubprogram(name: "memset", scope: !1711, file: !1711, line: 57, type: !1712, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !591, retainedNodes: !1959)
!1959 = !{!1957, !1960, !1961}
!1960 = !DILocalVariable(name: "__ch", arg: 2, scope: !1958, file: !1711, line: 57, type: !83)
!1961 = !DILocalVariable(name: "__len", arg: 3, scope: !1958, file: !1711, line: 57, type: !116)
!1962 = !DILocation(line: 0, scope: !1958, inlinedAt: !1963)
!1963 = distinct !DILocation(line: 1137, column: 3, scope: !1950, inlinedAt: !1956)
!1964 = !DILocation(line: 59, column: 10, scope: !1958, inlinedAt: !1963)
!1965 = !DILocation(line: 231, column: 7, scope: !1966, inlinedAt: !1939)
!1966 = distinct !DILexicalBlock(scope: !645, file: !567, line: 231, column: 7)
!1967 = !DILocation(line: 231, column: 40, scope: !1966, inlinedAt: !1939)
!1968 = !DILocation(line: 231, column: 45, scope: !1966, inlinedAt: !1939)
!1969 = !DILocation(line: 235, column: 1, scope: !645, inlinedAt: !1939)
!1970 = !DILocation(line: 0, scope: !645, inlinedAt: !1971)
!1971 = distinct !DILocation(line: 358, column: 27, scope: !1940)
!1972 = !DILocation(line: 199, column: 29, scope: !645, inlinedAt: !1971)
!1973 = !DILocation(line: 201, column: 19, scope: !1944, inlinedAt: !1971)
!1974 = !DILocation(line: 201, column: 7, scope: !645, inlinedAt: !1971)
!1975 = !DILocation(line: 229, column: 3, scope: !645, inlinedAt: !1971)
!1976 = !DILocation(line: 230, column: 3, scope: !645, inlinedAt: !1971)
!1977 = !DILocation(line: 230, column: 13, scope: !645, inlinedAt: !1971)
!1978 = !DILocation(line: 0, scope: !1950, inlinedAt: !1979)
!1979 = distinct !DILocation(line: 230, column: 18, scope: !645, inlinedAt: !1971)
!1980 = !DILocation(line: 0, scope: !1958, inlinedAt: !1981)
!1981 = distinct !DILocation(line: 1137, column: 3, scope: !1950, inlinedAt: !1979)
!1982 = !DILocation(line: 59, column: 10, scope: !1958, inlinedAt: !1981)
!1983 = !DILocation(line: 231, column: 7, scope: !1966, inlinedAt: !1971)
!1984 = !DILocation(line: 231, column: 40, scope: !1966, inlinedAt: !1971)
!1985 = !DILocation(line: 231, column: 45, scope: !1966, inlinedAt: !1971)
!1986 = !DILocation(line: 235, column: 1, scope: !645, inlinedAt: !1971)
!1987 = !DILocation(line: 360, column: 13, scope: !1883)
!1988 = !DILocation(line: 0, scope: !1881)
!1989 = !DILocation(line: 361, column: 45, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1881, file: !567, line: 361, column: 11)
!1991 = !DILocation(line: 361, column: 11, scope: !1881)
!1992 = !DILocation(line: 362, column: 13, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1994, file: !567, line: 362, column: 13)
!1994 = distinct !DILexicalBlock(scope: !1990, file: !567, line: 362, column: 13)
!1995 = !DILocation(line: 362, column: 13, scope: !1994)
!1996 = !DILocation(line: 361, column: 52, scope: !1990)
!1997 = distinct !{!1997, !1991, !1998, !1020}
!1998 = !DILocation(line: 362, column: 13, scope: !1881)
!1999 = !DILocation(line: 260, column: 10, scope: !1855)
!2000 = !DILocation(line: 365, column: 28, scope: !1883)
!2001 = !DILocation(line: 367, column: 7, scope: !1884)
!2002 = !DILocation(line: 370, column: 7, scope: !1884)
!2003 = !DILocation(line: 376, column: 11, scope: !1884)
!2004 = !DILocation(line: 381, column: 11, scope: !1884)
!2005 = !DILocation(line: 382, column: 9, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !2007, file: !567, line: 382, column: 9)
!2007 = distinct !DILexicalBlock(scope: !2008, file: !567, line: 382, column: 9)
!2008 = distinct !DILexicalBlock(scope: !1884, file: !567, line: 381, column: 11)
!2009 = !DILocation(line: 382, column: 9, scope: !2007)
!2010 = !DILocation(line: 389, column: 7, scope: !1884)
!2011 = !DILocation(line: 392, column: 7, scope: !1884)
!2012 = !DILocation(line: 0, scope: !1886)
!2013 = !DILocation(line: 395, column: 8, scope: !1886)
!2014 = !DILocation(line: 395, scope: !1886)
!2015 = !DILocation(line: 395, column: 34, scope: !1889)
!2016 = !DILocation(line: 395, column: 26, scope: !1889)
!2017 = !DILocation(line: 395, column: 48, scope: !1889)
!2018 = !DILocation(line: 395, column: 55, scope: !1889)
!2019 = !DILocation(line: 395, column: 3, scope: !1886)
!2020 = !DILocation(line: 395, column: 67, scope: !1889)
!2021 = !DILocation(line: 0, scope: !1888)
!2022 = !DILocation(line: 402, column: 11, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !1888, file: !567, line: 401, column: 11)
!2024 = !DILocation(line: 404, column: 17, scope: !2023)
!2025 = !DILocation(line: 405, column: 39, scope: !2023)
!2026 = !DILocation(line: 409, column: 32, scope: !2023)
!2027 = !DILocation(line: 405, column: 19, scope: !2023)
!2028 = !DILocation(line: 405, column: 15, scope: !2023)
!2029 = !DILocation(line: 410, column: 11, scope: !2023)
!2030 = !DILocation(line: 410, column: 25, scope: !2023)
!2031 = !DILocalVariable(name: "__s1", arg: 1, scope: !2032, file: !930, line: 974, type: !1149)
!2032 = distinct !DISubprogram(name: "memeq", scope: !930, file: !930, line: 974, type: !1672, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !591, retainedNodes: !2033)
!2033 = !{!2031, !2034, !2035}
!2034 = !DILocalVariable(name: "__s2", arg: 2, scope: !2032, file: !930, line: 974, type: !1149)
!2035 = !DILocalVariable(name: "__n", arg: 3, scope: !2032, file: !930, line: 974, type: !116)
!2036 = !DILocation(line: 0, scope: !2032, inlinedAt: !2037)
!2037 = distinct !DILocation(line: 410, column: 14, scope: !2023)
!2038 = !DILocation(line: 976, column: 11, scope: !2032, inlinedAt: !2037)
!2039 = !DILocation(line: 976, column: 10, scope: !2032, inlinedAt: !2037)
!2040 = !DILocation(line: 401, column: 11, scope: !1888)
!2041 = !DILocation(line: 417, column: 25, scope: !1888)
!2042 = !DILocation(line: 418, column: 7, scope: !1888)
!2043 = !DILocation(line: 421, column: 15, scope: !1895)
!2044 = !DILocation(line: 423, column: 15, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2046, file: !567, line: 423, column: 15)
!2046 = distinct !DILexicalBlock(scope: !2047, file: !567, line: 422, column: 13)
!2047 = distinct !DILexicalBlock(scope: !1895, file: !567, line: 421, column: 15)
!2048 = !DILocation(line: 423, column: 15, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2045, file: !567, line: 423, column: 15)
!2050 = !DILocation(line: 423, column: 15, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2052, file: !567, line: 423, column: 15)
!2052 = distinct !DILexicalBlock(scope: !2053, file: !567, line: 423, column: 15)
!2053 = distinct !DILexicalBlock(scope: !2049, file: !567, line: 423, column: 15)
!2054 = !DILocation(line: 423, column: 15, scope: !2052)
!2055 = !DILocation(line: 423, column: 15, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2057, file: !567, line: 423, column: 15)
!2057 = distinct !DILexicalBlock(scope: !2053, file: !567, line: 423, column: 15)
!2058 = !DILocation(line: 423, column: 15, scope: !2057)
!2059 = !DILocation(line: 423, column: 15, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2061, file: !567, line: 423, column: 15)
!2061 = distinct !DILexicalBlock(scope: !2053, file: !567, line: 423, column: 15)
!2062 = !DILocation(line: 423, column: 15, scope: !2061)
!2063 = !DILocation(line: 423, column: 15, scope: !2053)
!2064 = !DILocation(line: 423, column: 15, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2066, file: !567, line: 423, column: 15)
!2066 = distinct !DILexicalBlock(scope: !2045, file: !567, line: 423, column: 15)
!2067 = !DILocation(line: 423, column: 15, scope: !2066)
!2068 = !DILocation(line: 431, column: 19, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2046, file: !567, line: 430, column: 19)
!2070 = !DILocation(line: 431, column: 24, scope: !2069)
!2071 = !DILocation(line: 431, column: 28, scope: !2069)
!2072 = !DILocation(line: 431, column: 38, scope: !2069)
!2073 = !DILocation(line: 431, column: 48, scope: !2069)
!2074 = !DILocation(line: 431, column: 59, scope: !2069)
!2075 = !DILocation(line: 433, column: 19, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !567, line: 433, column: 19)
!2077 = distinct !DILexicalBlock(scope: !2078, file: !567, line: 433, column: 19)
!2078 = distinct !DILexicalBlock(scope: !2069, file: !567, line: 432, column: 17)
!2079 = !DILocation(line: 433, column: 19, scope: !2077)
!2080 = !DILocation(line: 434, column: 19, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2082, file: !567, line: 434, column: 19)
!2082 = distinct !DILexicalBlock(scope: !2078, file: !567, line: 434, column: 19)
!2083 = !DILocation(line: 434, column: 19, scope: !2082)
!2084 = !DILocation(line: 435, column: 17, scope: !2078)
!2085 = !DILocation(line: 442, column: 20, scope: !2047)
!2086 = !DILocation(line: 447, column: 11, scope: !1895)
!2087 = !DILocation(line: 450, column: 19, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !1895, file: !567, line: 448, column: 13)
!2089 = !DILocation(line: 456, column: 19, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2088, file: !567, line: 455, column: 19)
!2091 = !DILocation(line: 456, column: 24, scope: !2090)
!2092 = !DILocation(line: 456, column: 28, scope: !2090)
!2093 = !DILocation(line: 456, column: 38, scope: !2090)
!2094 = !DILocation(line: 456, column: 47, scope: !2090)
!2095 = !DILocation(line: 456, column: 41, scope: !2090)
!2096 = !DILocation(line: 456, column: 52, scope: !2090)
!2097 = !DILocation(line: 455, column: 19, scope: !2088)
!2098 = !DILocation(line: 457, column: 25, scope: !2090)
!2099 = !DILocation(line: 457, column: 17, scope: !2090)
!2100 = !DILocation(line: 464, column: 25, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2090, file: !567, line: 458, column: 19)
!2102 = !DILocation(line: 468, column: 21, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2104, file: !567, line: 468, column: 21)
!2104 = distinct !DILexicalBlock(scope: !2101, file: !567, line: 468, column: 21)
!2105 = !DILocation(line: 468, column: 21, scope: !2104)
!2106 = !DILocation(line: 469, column: 21, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2108, file: !567, line: 469, column: 21)
!2108 = distinct !DILexicalBlock(scope: !2101, file: !567, line: 469, column: 21)
!2109 = !DILocation(line: 469, column: 21, scope: !2108)
!2110 = !DILocation(line: 470, column: 21, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2112, file: !567, line: 470, column: 21)
!2112 = distinct !DILexicalBlock(scope: !2101, file: !567, line: 470, column: 21)
!2113 = !DILocation(line: 470, column: 21, scope: !2112)
!2114 = !DILocation(line: 471, column: 21, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2116, file: !567, line: 471, column: 21)
!2116 = distinct !DILexicalBlock(scope: !2101, file: !567, line: 471, column: 21)
!2117 = !DILocation(line: 471, column: 21, scope: !2116)
!2118 = !DILocation(line: 472, column: 21, scope: !2101)
!2119 = !DILocation(line: 482, column: 33, scope: !1918)
!2120 = !DILocation(line: 483, column: 33, scope: !1918)
!2121 = !DILocation(line: 485, column: 33, scope: !1918)
!2122 = !DILocation(line: 486, column: 33, scope: !1918)
!2123 = !DILocation(line: 487, column: 33, scope: !1918)
!2124 = !DILocation(line: 490, column: 17, scope: !1918)
!2125 = !DILocation(line: 492, column: 21, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2127, file: !567, line: 491, column: 15)
!2127 = distinct !DILexicalBlock(scope: !1918, file: !567, line: 490, column: 17)
!2128 = !DILocation(line: 499, column: 35, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !1918, file: !567, line: 499, column: 17)
!2130 = !DILocation(line: 0, scope: !1918)
!2131 = !DILocation(line: 502, column: 11, scope: !1918)
!2132 = !DILocation(line: 504, column: 17, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !1918, file: !567, line: 503, column: 17)
!2134 = !DILocation(line: 507, column: 11, scope: !1918)
!2135 = !DILocation(line: 508, column: 17, scope: !1918)
!2136 = !DILocation(line: 517, column: 15, scope: !1895)
!2137 = !DILocation(line: 517, column: 40, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !1895, file: !567, line: 517, column: 15)
!2139 = !DILocation(line: 517, column: 47, scope: !2138)
!2140 = !DILocation(line: 517, column: 18, scope: !2138)
!2141 = !DILocation(line: 521, column: 17, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !1895, file: !567, line: 521, column: 15)
!2143 = !DILocation(line: 521, column: 15, scope: !1895)
!2144 = !DILocation(line: 525, column: 11, scope: !1895)
!2145 = !DILocation(line: 537, column: 15, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !1895, file: !567, line: 536, column: 15)
!2147 = !DILocation(line: 536, column: 15, scope: !1895)
!2148 = !DILocation(line: 544, column: 15, scope: !1895)
!2149 = !DILocation(line: 546, column: 19, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2151, file: !567, line: 545, column: 13)
!2151 = distinct !DILexicalBlock(scope: !1895, file: !567, line: 544, column: 15)
!2152 = !DILocation(line: 549, column: 19, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2150, file: !567, line: 549, column: 19)
!2154 = !DILocation(line: 549, column: 30, scope: !2153)
!2155 = !DILocation(line: 558, column: 15, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2157, file: !567, line: 558, column: 15)
!2157 = distinct !DILexicalBlock(scope: !2150, file: !567, line: 558, column: 15)
!2158 = !DILocation(line: 558, column: 15, scope: !2157)
!2159 = !DILocation(line: 559, column: 15, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2161, file: !567, line: 559, column: 15)
!2161 = distinct !DILexicalBlock(scope: !2150, file: !567, line: 559, column: 15)
!2162 = !DILocation(line: 559, column: 15, scope: !2161)
!2163 = !DILocation(line: 560, column: 15, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2165, file: !567, line: 560, column: 15)
!2165 = distinct !DILexicalBlock(scope: !2150, file: !567, line: 560, column: 15)
!2166 = !DILocation(line: 560, column: 15, scope: !2165)
!2167 = !DILocation(line: 562, column: 13, scope: !2150)
!2168 = !DILocation(line: 602, column: 17, scope: !1894)
!2169 = !DILocation(line: 0, scope: !1894)
!2170 = !DILocation(line: 605, column: 29, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !1899, file: !567, line: 603, column: 15)
!2172 = !DILocation(line: 605, column: 41, scope: !2171)
!2173 = !DILocation(line: 606, column: 15, scope: !2171)
!2174 = !DILocation(line: 609, column: 17, scope: !1898)
!2175 = !DILocation(line: 609, column: 27, scope: !1898)
!2176 = !DILocation(line: 0, scope: !1950, inlinedAt: !2177)
!2177 = distinct !DILocation(line: 609, column: 32, scope: !1898)
!2178 = !DILocation(line: 0, scope: !1958, inlinedAt: !2179)
!2179 = distinct !DILocation(line: 1137, column: 3, scope: !1950, inlinedAt: !2177)
!2180 = !DILocation(line: 59, column: 10, scope: !1958, inlinedAt: !2179)
!2181 = !DILocation(line: 613, column: 29, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !1898, file: !567, line: 613, column: 21)
!2183 = !DILocation(line: 613, column: 21, scope: !1898)
!2184 = !DILocation(line: 614, column: 29, scope: !2182)
!2185 = !DILocation(line: 614, column: 19, scope: !2182)
!2186 = !DILocation(line: 618, column: 21, scope: !1901)
!2187 = !DILocation(line: 620, column: 54, scope: !1901)
!2188 = !DILocation(line: 0, scope: !1901)
!2189 = !DILocation(line: 619, column: 36, scope: !1901)
!2190 = !DILocation(line: 621, column: 25, scope: !1901)
!2191 = !DILocation(line: 631, column: 38, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !1910, file: !567, line: 629, column: 23)
!2193 = !DILocation(line: 631, column: 48, scope: !2192)
!2194 = !DILocation(line: 626, column: 25, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !1911, file: !567, line: 624, column: 23)
!2196 = !DILocation(line: 631, column: 51, scope: !2192)
!2197 = !DILocation(line: 631, column: 25, scope: !2192)
!2198 = !DILocation(line: 632, column: 28, scope: !2192)
!2199 = !DILocation(line: 631, column: 34, scope: !2192)
!2200 = distinct !{!2200, !2197, !2198, !1020}
!2201 = !DILocation(line: 646, column: 29, scope: !1908)
!2202 = !DILocation(line: 0, scope: !1906)
!2203 = !DILocation(line: 649, column: 49, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !1906, file: !567, line: 648, column: 29)
!2205 = !DILocation(line: 649, column: 39, scope: !2204)
!2206 = !DILocation(line: 649, column: 31, scope: !2204)
!2207 = !DILocation(line: 648, column: 60, scope: !2204)
!2208 = !DILocation(line: 648, column: 50, scope: !2204)
!2209 = !DILocation(line: 648, column: 29, scope: !1906)
!2210 = distinct !{!2210, !2209, !2211, !1020}
!2211 = !DILocation(line: 654, column: 33, scope: !1906)
!2212 = !DILocation(line: 657, column: 43, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !1909, file: !567, line: 657, column: 29)
!2214 = !DILocalVariable(name: "wc", arg: 1, scope: !2215, file: !2216, line: 865, type: !2219)
!2215 = distinct !DISubprogram(name: "c32isprint", scope: !2216, file: !2216, line: 865, type: !2217, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !591, retainedNodes: !2221)
!2216 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2217 = !DISubroutineType(types: !2218)
!2218 = !{!83, !2219}
!2219 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2220, line: 20, baseType: !90)
!2220 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2221 = !{!2214}
!2222 = !DILocation(line: 0, scope: !2215, inlinedAt: !2223)
!2223 = distinct !DILocation(line: 657, column: 31, scope: !2213)
!2224 = !DILocation(line: 871, column: 10, scope: !2215, inlinedAt: !2223)
!2225 = !DILocation(line: 657, column: 31, scope: !2213)
!2226 = !DILocation(line: 664, column: 23, scope: !1901)
!2227 = !DILocation(line: 665, column: 19, scope: !1902)
!2228 = !DILocation(line: 666, column: 15, scope: !1899)
!2229 = !DILocation(line: 753, column: 2, scope: !1855)
!2230 = !DILocation(line: 756, column: 51, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !1855, file: !567, line: 756, column: 7)
!2232 = !DILocation(line: 0, scope: !1899)
!2233 = !DILocation(line: 670, column: 19, scope: !1915)
!2234 = !DILocation(line: 670, column: 23, scope: !1915)
!2235 = !DILocation(line: 674, column: 33, scope: !1914)
!2236 = !DILocation(line: 0, scope: !1914)
!2237 = !DILocation(line: 676, column: 17, scope: !1914)
!2238 = !DILocation(line: 398, column: 12, scope: !1888)
!2239 = !DILocation(line: 678, column: 43, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2241, file: !567, line: 678, column: 25)
!2241 = distinct !DILexicalBlock(scope: !2242, file: !567, line: 677, column: 19)
!2242 = distinct !DILexicalBlock(scope: !2243, file: !567, line: 676, column: 17)
!2243 = distinct !DILexicalBlock(scope: !1914, file: !567, line: 676, column: 17)
!2244 = !DILocation(line: 680, column: 25, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2246, file: !567, line: 680, column: 25)
!2246 = distinct !DILexicalBlock(scope: !2240, file: !567, line: 679, column: 23)
!2247 = !DILocation(line: 680, column: 25, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2245, file: !567, line: 680, column: 25)
!2249 = !DILocation(line: 680, column: 25, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2251, file: !567, line: 680, column: 25)
!2251 = distinct !DILexicalBlock(scope: !2252, file: !567, line: 680, column: 25)
!2252 = distinct !DILexicalBlock(scope: !2248, file: !567, line: 680, column: 25)
!2253 = !DILocation(line: 680, column: 25, scope: !2251)
!2254 = !DILocation(line: 680, column: 25, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2256, file: !567, line: 680, column: 25)
!2256 = distinct !DILexicalBlock(scope: !2252, file: !567, line: 680, column: 25)
!2257 = !DILocation(line: 680, column: 25, scope: !2256)
!2258 = !DILocation(line: 680, column: 25, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2260, file: !567, line: 680, column: 25)
!2260 = distinct !DILexicalBlock(scope: !2252, file: !567, line: 680, column: 25)
!2261 = !DILocation(line: 680, column: 25, scope: !2260)
!2262 = !DILocation(line: 680, column: 25, scope: !2252)
!2263 = !DILocation(line: 680, column: 25, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2265, file: !567, line: 680, column: 25)
!2265 = distinct !DILexicalBlock(scope: !2245, file: !567, line: 680, column: 25)
!2266 = !DILocation(line: 680, column: 25, scope: !2265)
!2267 = !DILocation(line: 681, column: 25, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2269, file: !567, line: 681, column: 25)
!2269 = distinct !DILexicalBlock(scope: !2246, file: !567, line: 681, column: 25)
!2270 = !DILocation(line: 681, column: 25, scope: !2269)
!2271 = !DILocation(line: 682, column: 25, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2273, file: !567, line: 682, column: 25)
!2273 = distinct !DILexicalBlock(scope: !2246, file: !567, line: 682, column: 25)
!2274 = !DILocation(line: 682, column: 25, scope: !2273)
!2275 = !DILocation(line: 683, column: 38, scope: !2246)
!2276 = !DILocation(line: 683, column: 33, scope: !2246)
!2277 = !DILocation(line: 684, column: 23, scope: !2246)
!2278 = !DILocation(line: 685, column: 30, scope: !2240)
!2279 = !DILocation(line: 687, column: 25, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2281, file: !567, line: 687, column: 25)
!2281 = distinct !DILexicalBlock(scope: !2282, file: !567, line: 687, column: 25)
!2282 = distinct !DILexicalBlock(scope: !2283, file: !567, line: 686, column: 23)
!2283 = distinct !DILexicalBlock(scope: !2240, file: !567, line: 685, column: 30)
!2284 = !DILocation(line: 687, column: 25, scope: !2281)
!2285 = !DILocation(line: 689, column: 23, scope: !2282)
!2286 = !DILocation(line: 690, column: 35, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2241, file: !567, line: 690, column: 25)
!2288 = !DILocation(line: 690, column: 30, scope: !2287)
!2289 = !DILocation(line: 690, column: 25, scope: !2241)
!2290 = !DILocation(line: 692, column: 21, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2292, file: !567, line: 692, column: 21)
!2292 = distinct !DILexicalBlock(scope: !2241, file: !567, line: 692, column: 21)
!2293 = !DILocation(line: 692, column: 21, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2295, file: !567, line: 692, column: 21)
!2295 = distinct !DILexicalBlock(scope: !2296, file: !567, line: 692, column: 21)
!2296 = distinct !DILexicalBlock(scope: !2291, file: !567, line: 692, column: 21)
!2297 = !DILocation(line: 692, column: 21, scope: !2295)
!2298 = !DILocation(line: 692, column: 21, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2300, file: !567, line: 692, column: 21)
!2300 = distinct !DILexicalBlock(scope: !2296, file: !567, line: 692, column: 21)
!2301 = !DILocation(line: 692, column: 21, scope: !2300)
!2302 = !DILocation(line: 692, column: 21, scope: !2296)
!2303 = !DILocation(line: 0, scope: !2241)
!2304 = !DILocation(line: 693, column: 21, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2306, file: !567, line: 693, column: 21)
!2306 = distinct !DILexicalBlock(scope: !2241, file: !567, line: 693, column: 21)
!2307 = !DILocation(line: 693, column: 21, scope: !2306)
!2308 = !DILocation(line: 694, column: 25, scope: !2241)
!2309 = !DILocation(line: 676, column: 17, scope: !2242)
!2310 = distinct !{!2310, !2311, !2312}
!2311 = !DILocation(line: 676, column: 17, scope: !2243)
!2312 = !DILocation(line: 695, column: 19, scope: !2243)
!2313 = !DILocation(line: 409, column: 30, scope: !2023)
!2314 = !DILocation(line: 702, column: 34, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !1888, file: !567, line: 702, column: 11)
!2316 = !DILocation(line: 704, column: 14, scope: !2315)
!2317 = !DILocation(line: 705, column: 14, scope: !2315)
!2318 = !DILocation(line: 705, column: 35, scope: !2315)
!2319 = !DILocation(line: 705, column: 17, scope: !2315)
!2320 = !DILocation(line: 705, column: 47, scope: !2315)
!2321 = !DILocation(line: 705, column: 65, scope: !2315)
!2322 = !DILocation(line: 706, column: 11, scope: !2315)
!2323 = !DILocation(line: 702, column: 11, scope: !1888)
!2324 = !DILocation(line: 395, column: 15, scope: !1886)
!2325 = !DILocation(line: 709, column: 5, scope: !1888)
!2326 = !DILocation(line: 710, column: 7, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !1888, file: !567, line: 710, column: 7)
!2328 = !DILocation(line: 710, column: 7, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2327, file: !567, line: 710, column: 7)
!2330 = !DILocation(line: 710, column: 7, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2332, file: !567, line: 710, column: 7)
!2332 = distinct !DILexicalBlock(scope: !2333, file: !567, line: 710, column: 7)
!2333 = distinct !DILexicalBlock(scope: !2329, file: !567, line: 710, column: 7)
!2334 = !DILocation(line: 710, column: 7, scope: !2332)
!2335 = !DILocation(line: 710, column: 7, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2337, file: !567, line: 710, column: 7)
!2337 = distinct !DILexicalBlock(scope: !2333, file: !567, line: 710, column: 7)
!2338 = !DILocation(line: 710, column: 7, scope: !2337)
!2339 = !DILocation(line: 710, column: 7, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2341, file: !567, line: 710, column: 7)
!2341 = distinct !DILexicalBlock(scope: !2333, file: !567, line: 710, column: 7)
!2342 = !DILocation(line: 710, column: 7, scope: !2341)
!2343 = !DILocation(line: 710, column: 7, scope: !2333)
!2344 = !DILocation(line: 710, column: 7, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2346, file: !567, line: 710, column: 7)
!2346 = distinct !DILexicalBlock(scope: !2327, file: !567, line: 710, column: 7)
!2347 = !DILocation(line: 710, column: 7, scope: !2346)
!2348 = !DILocation(line: 712, column: 5, scope: !1888)
!2349 = !DILocation(line: 713, column: 7, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2351, file: !567, line: 713, column: 7)
!2351 = distinct !DILexicalBlock(scope: !1888, file: !567, line: 713, column: 7)
!2352 = !DILocation(line: 417, column: 21, scope: !1888)
!2353 = !DILocation(line: 713, column: 7, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2355, file: !567, line: 713, column: 7)
!2355 = distinct !DILexicalBlock(scope: !2356, file: !567, line: 713, column: 7)
!2356 = distinct !DILexicalBlock(scope: !2350, file: !567, line: 713, column: 7)
!2357 = !DILocation(line: 713, column: 7, scope: !2355)
!2358 = !DILocation(line: 713, column: 7, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2360, file: !567, line: 713, column: 7)
!2360 = distinct !DILexicalBlock(scope: !2356, file: !567, line: 713, column: 7)
!2361 = !DILocation(line: 713, column: 7, scope: !2360)
!2362 = !DILocation(line: 713, column: 7, scope: !2356)
!2363 = !DILocation(line: 714, column: 7, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2365, file: !567, line: 714, column: 7)
!2365 = distinct !DILexicalBlock(scope: !1888, file: !567, line: 714, column: 7)
!2366 = !DILocation(line: 714, column: 7, scope: !2365)
!2367 = !DILocation(line: 716, column: 11, scope: !1888)
!2368 = !DILocation(line: 718, column: 5, scope: !1889)
!2369 = !DILocation(line: 395, column: 82, scope: !1889)
!2370 = !DILocation(line: 395, column: 3, scope: !1889)
!2371 = distinct !{!2371, !2019, !2372, !1020}
!2372 = !DILocation(line: 718, column: 5, scope: !1886)
!2373 = !DILocation(line: 720, column: 11, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !1855, file: !567, line: 720, column: 7)
!2375 = !DILocation(line: 720, column: 16, scope: !2374)
!2376 = !DILocation(line: 728, column: 51, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !1855, file: !567, line: 728, column: 7)
!2378 = !DILocation(line: 731, column: 11, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2377, file: !567, line: 730, column: 5)
!2380 = !DILocation(line: 732, column: 16, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2379, file: !567, line: 731, column: 11)
!2382 = !DILocation(line: 732, column: 9, scope: !2381)
!2383 = !DILocation(line: 736, column: 18, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2381, file: !567, line: 736, column: 16)
!2385 = !DILocation(line: 736, column: 29, scope: !2384)
!2386 = !DILocation(line: 745, column: 7, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !1855, file: !567, line: 745, column: 7)
!2388 = !DILocation(line: 745, column: 20, scope: !2387)
!2389 = !DILocation(line: 746, column: 12, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2391, file: !567, line: 746, column: 5)
!2391 = distinct !DILexicalBlock(scope: !2387, file: !567, line: 746, column: 5)
!2392 = !DILocation(line: 746, column: 5, scope: !2391)
!2393 = !DILocation(line: 747, column: 7, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2395, file: !567, line: 747, column: 7)
!2395 = distinct !DILexicalBlock(scope: !2390, file: !567, line: 747, column: 7)
!2396 = !DILocation(line: 747, column: 7, scope: !2395)
!2397 = !DILocation(line: 746, column: 39, scope: !2390)
!2398 = distinct !{!2398, !2392, !2399, !1020}
!2399 = !DILocation(line: 747, column: 7, scope: !2391)
!2400 = !DILocation(line: 749, column: 11, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !1855, file: !567, line: 749, column: 7)
!2402 = !DILocation(line: 749, column: 7, scope: !1855)
!2403 = !DILocation(line: 750, column: 5, scope: !2401)
!2404 = !DILocation(line: 750, column: 17, scope: !2401)
!2405 = !DILocation(line: 756, column: 21, scope: !2231)
!2406 = !DILocation(line: 760, column: 42, scope: !1855)
!2407 = !DILocation(line: 758, column: 10, scope: !1855)
!2408 = !DILocation(line: 758, column: 3, scope: !1855)
!2409 = !DILocation(line: 762, column: 1, scope: !1855)
!2410 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1128, file: !1128, line: 98, type: !2411, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !966)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{!116}
!2413 = !DISubprogram(name: "strlen", scope: !1117, file: !1117, line: 407, type: !2414, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !966)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{!118, !119}
!2416 = !DISubprogram(name: "iswprint", scope: !2417, file: !2417, line: 120, type: !2217, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !966)
!2417 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2418 = distinct !DISubprogram(name: "quotearg_alloc", scope: !567, file: !567, line: 788, type: !2419, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !591, retainedNodes: !2421)
!2419 = !DISubroutineType(types: !2420)
!2420 = !{!85, !119, !116, !1748}
!2421 = !{!2422, !2423, !2424}
!2422 = !DILocalVariable(name: "arg", arg: 1, scope: !2418, file: !567, line: 788, type: !119)
!2423 = !DILocalVariable(name: "argsize", arg: 2, scope: !2418, file: !567, line: 788, type: !116)
!2424 = !DILocalVariable(name: "o", arg: 3, scope: !2418, file: !567, line: 789, type: !1748)
!2425 = !DILocation(line: 0, scope: !2418)
!2426 = !DILocalVariable(name: "arg", arg: 1, scope: !2427, file: !567, line: 801, type: !119)
!2427 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !567, file: !567, line: 801, type: !2428, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !591, retainedNodes: !2430)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{!85, !119, !116, !817, !1748}
!2430 = !{!2426, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438}
!2431 = !DILocalVariable(name: "argsize", arg: 2, scope: !2427, file: !567, line: 801, type: !116)
!2432 = !DILocalVariable(name: "size", arg: 3, scope: !2427, file: !567, line: 801, type: !817)
!2433 = !DILocalVariable(name: "o", arg: 4, scope: !2427, file: !567, line: 802, type: !1748)
!2434 = !DILocalVariable(name: "p", scope: !2427, file: !567, line: 804, type: !1748)
!2435 = !DILocalVariable(name: "saved_errno", scope: !2427, file: !567, line: 805, type: !83)
!2436 = !DILocalVariable(name: "flags", scope: !2427, file: !567, line: 807, type: !83)
!2437 = !DILocalVariable(name: "bufsize", scope: !2427, file: !567, line: 808, type: !116)
!2438 = !DILocalVariable(name: "buf", scope: !2427, file: !567, line: 812, type: !85)
!2439 = !DILocation(line: 0, scope: !2427, inlinedAt: !2440)
!2440 = distinct !DILocation(line: 791, column: 10, scope: !2418)
!2441 = !DILocation(line: 804, column: 37, scope: !2427, inlinedAt: !2440)
!2442 = !DILocation(line: 805, column: 21, scope: !2427, inlinedAt: !2440)
!2443 = !DILocation(line: 807, column: 18, scope: !2427, inlinedAt: !2440)
!2444 = !DILocation(line: 807, column: 24, scope: !2427, inlinedAt: !2440)
!2445 = !DILocation(line: 808, column: 72, scope: !2427, inlinedAt: !2440)
!2446 = !DILocation(line: 809, column: 56, scope: !2427, inlinedAt: !2440)
!2447 = !DILocation(line: 810, column: 49, scope: !2427, inlinedAt: !2440)
!2448 = !DILocation(line: 811, column: 49, scope: !2427, inlinedAt: !2440)
!2449 = !DILocation(line: 808, column: 20, scope: !2427, inlinedAt: !2440)
!2450 = !DILocation(line: 811, column: 62, scope: !2427, inlinedAt: !2440)
!2451 = !DILocation(line: 812, column: 15, scope: !2427, inlinedAt: !2440)
!2452 = !DILocation(line: 813, column: 60, scope: !2427, inlinedAt: !2440)
!2453 = !DILocation(line: 815, column: 32, scope: !2427, inlinedAt: !2440)
!2454 = !DILocation(line: 815, column: 47, scope: !2427, inlinedAt: !2440)
!2455 = !DILocation(line: 813, column: 3, scope: !2427, inlinedAt: !2440)
!2456 = !DILocation(line: 816, column: 9, scope: !2427, inlinedAt: !2440)
!2457 = !DILocation(line: 791, column: 3, scope: !2418)
!2458 = !DILocation(line: 0, scope: !2427)
!2459 = !DILocation(line: 804, column: 37, scope: !2427)
!2460 = !DILocation(line: 805, column: 21, scope: !2427)
!2461 = !DILocation(line: 807, column: 18, scope: !2427)
!2462 = !DILocation(line: 807, column: 27, scope: !2427)
!2463 = !DILocation(line: 807, column: 24, scope: !2427)
!2464 = !DILocation(line: 808, column: 72, scope: !2427)
!2465 = !DILocation(line: 809, column: 56, scope: !2427)
!2466 = !DILocation(line: 810, column: 49, scope: !2427)
!2467 = !DILocation(line: 811, column: 49, scope: !2427)
!2468 = !DILocation(line: 808, column: 20, scope: !2427)
!2469 = !DILocation(line: 811, column: 62, scope: !2427)
!2470 = !DILocation(line: 812, column: 15, scope: !2427)
!2471 = !DILocation(line: 813, column: 60, scope: !2427)
!2472 = !DILocation(line: 815, column: 32, scope: !2427)
!2473 = !DILocation(line: 815, column: 47, scope: !2427)
!2474 = !DILocation(line: 813, column: 3, scope: !2427)
!2475 = !DILocation(line: 816, column: 9, scope: !2427)
!2476 = !DILocation(line: 817, column: 7, scope: !2427)
!2477 = !DILocation(line: 818, column: 11, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2427, file: !567, line: 817, column: 7)
!2479 = !{!1248, !1248, i64 0}
!2480 = !DILocation(line: 818, column: 5, scope: !2478)
!2481 = !DILocation(line: 819, column: 3, scope: !2427)
!2482 = distinct !DISubprogram(name: "quotearg_free", scope: !567, file: !567, line: 837, type: !522, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !591, retainedNodes: !2483)
!2483 = !{!2484, !2485}
!2484 = !DILocalVariable(name: "sv", scope: !2482, file: !567, line: 839, type: !668)
!2485 = !DILocalVariable(name: "i", scope: !2486, file: !567, line: 840, type: !83)
!2486 = distinct !DILexicalBlock(scope: !2482, file: !567, line: 840, column: 3)
!2487 = !DILocation(line: 839, column: 24, scope: !2482)
!2488 = !DILocation(line: 0, scope: !2482)
!2489 = !DILocation(line: 0, scope: !2486)
!2490 = !DILocation(line: 840, column: 21, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2486, file: !567, line: 840, column: 3)
!2492 = !DILocation(line: 840, column: 3, scope: !2486)
!2493 = !DILocation(line: 842, column: 13, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2482, file: !567, line: 842, column: 7)
!2495 = !{!2496, !883, i64 8}
!2496 = !{!"slotvec", !1248, i64 0, !883, i64 8}
!2497 = !DILocation(line: 842, column: 17, scope: !2494)
!2498 = !DILocation(line: 842, column: 7, scope: !2482)
!2499 = !DILocation(line: 841, column: 17, scope: !2491)
!2500 = !DILocation(line: 841, column: 5, scope: !2491)
!2501 = !DILocation(line: 840, column: 32, scope: !2491)
!2502 = distinct !{!2502, !2492, !2503, !1020}
!2503 = !DILocation(line: 841, column: 20, scope: !2486)
!2504 = !DILocation(line: 844, column: 7, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2494, file: !567, line: 843, column: 5)
!2506 = !DILocation(line: 845, column: 21, scope: !2505)
!2507 = !{!2496, !1248, i64 0}
!2508 = !DILocation(line: 846, column: 20, scope: !2505)
!2509 = !DILocation(line: 847, column: 5, scope: !2505)
!2510 = !DILocation(line: 848, column: 10, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2482, file: !567, line: 848, column: 7)
!2512 = !DILocation(line: 848, column: 7, scope: !2482)
!2513 = !DILocation(line: 850, column: 7, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2511, file: !567, line: 849, column: 5)
!2515 = !DILocation(line: 851, column: 15, scope: !2514)
!2516 = !DILocation(line: 852, column: 5, scope: !2514)
!2517 = !DILocation(line: 853, column: 10, scope: !2482)
!2518 = !DILocation(line: 854, column: 1, scope: !2482)
!2519 = !DISubprogram(name: "free", scope: !1702, file: !1702, line: 786, type: !2520, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !966)
!2520 = !DISubroutineType(types: !2521)
!2521 = !{null, !122}
!2522 = distinct !DISubprogram(name: "quotearg_n", scope: !567, file: !567, line: 919, type: !1122, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !591, retainedNodes: !2523)
!2523 = !{!2524, !2525}
!2524 = !DILocalVariable(name: "n", arg: 1, scope: !2522, file: !567, line: 919, type: !83)
!2525 = !DILocalVariable(name: "arg", arg: 2, scope: !2522, file: !567, line: 919, type: !119)
!2526 = !DILocation(line: 0, scope: !2522)
!2527 = !DILocation(line: 921, column: 10, scope: !2522)
!2528 = !DILocation(line: 921, column: 3, scope: !2522)
!2529 = distinct !DISubprogram(name: "quotearg_n_options", scope: !567, file: !567, line: 866, type: !2530, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !591, retainedNodes: !2532)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{!85, !83, !119, !116, !1748}
!2532 = !{!2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2543, !2544, !2546, !2547, !2548}
!2533 = !DILocalVariable(name: "n", arg: 1, scope: !2529, file: !567, line: 866, type: !83)
!2534 = !DILocalVariable(name: "arg", arg: 2, scope: !2529, file: !567, line: 866, type: !119)
!2535 = !DILocalVariable(name: "argsize", arg: 3, scope: !2529, file: !567, line: 866, type: !116)
!2536 = !DILocalVariable(name: "options", arg: 4, scope: !2529, file: !567, line: 867, type: !1748)
!2537 = !DILocalVariable(name: "saved_errno", scope: !2529, file: !567, line: 869, type: !83)
!2538 = !DILocalVariable(name: "sv", scope: !2529, file: !567, line: 871, type: !668)
!2539 = !DILocalVariable(name: "nslots_max", scope: !2529, file: !567, line: 873, type: !83)
!2540 = !DILocalVariable(name: "preallocated", scope: !2541, file: !567, line: 879, type: !171)
!2541 = distinct !DILexicalBlock(scope: !2542, file: !567, line: 878, column: 5)
!2542 = distinct !DILexicalBlock(scope: !2529, file: !567, line: 877, column: 7)
!2543 = !DILocalVariable(name: "new_nslots", scope: !2541, file: !567, line: 880, type: !830)
!2544 = !DILocalVariable(name: "size", scope: !2545, file: !567, line: 891, type: !116)
!2545 = distinct !DILexicalBlock(scope: !2529, file: !567, line: 890, column: 3)
!2546 = !DILocalVariable(name: "val", scope: !2545, file: !567, line: 892, type: !85)
!2547 = !DILocalVariable(name: "flags", scope: !2545, file: !567, line: 894, type: !83)
!2548 = !DILocalVariable(name: "qsize", scope: !2545, file: !567, line: 895, type: !116)
!2549 = !DILocation(line: 0, scope: !2529)
!2550 = !DILocation(line: 869, column: 21, scope: !2529)
!2551 = !DILocation(line: 871, column: 24, scope: !2529)
!2552 = !DILocation(line: 874, column: 17, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2529, file: !567, line: 874, column: 7)
!2554 = !DILocation(line: 875, column: 5, scope: !2553)
!2555 = !DILocation(line: 877, column: 7, scope: !2542)
!2556 = !DILocation(line: 877, column: 14, scope: !2542)
!2557 = !DILocation(line: 877, column: 7, scope: !2529)
!2558 = !DILocation(line: 879, column: 31, scope: !2541)
!2559 = !DILocation(line: 0, scope: !2541)
!2560 = !DILocation(line: 880, column: 7, scope: !2541)
!2561 = !DILocation(line: 880, column: 26, scope: !2541)
!2562 = !DILocation(line: 880, column: 13, scope: !2541)
!2563 = !DILocation(line: 882, column: 31, scope: !2541)
!2564 = !DILocation(line: 883, column: 33, scope: !2541)
!2565 = !DILocation(line: 883, column: 42, scope: !2541)
!2566 = !DILocation(line: 883, column: 31, scope: !2541)
!2567 = !DILocation(line: 882, column: 22, scope: !2541)
!2568 = !DILocation(line: 882, column: 15, scope: !2541)
!2569 = !DILocation(line: 884, column: 11, scope: !2541)
!2570 = !DILocation(line: 885, column: 15, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2541, file: !567, line: 884, column: 11)
!2572 = !{i64 0, i64 8, !2479, i64 8, i64 8, !882}
!2573 = !DILocation(line: 885, column: 9, scope: !2571)
!2574 = !DILocation(line: 886, column: 20, scope: !2541)
!2575 = !DILocation(line: 886, column: 18, scope: !2541)
!2576 = !DILocation(line: 886, column: 32, scope: !2541)
!2577 = !DILocation(line: 886, column: 43, scope: !2541)
!2578 = !DILocation(line: 886, column: 53, scope: !2541)
!2579 = !DILocation(line: 0, scope: !1958, inlinedAt: !2580)
!2580 = distinct !DILocation(line: 886, column: 7, scope: !2541)
!2581 = !DILocation(line: 59, column: 10, scope: !1958, inlinedAt: !2580)
!2582 = !DILocation(line: 887, column: 16, scope: !2541)
!2583 = !DILocation(line: 887, column: 14, scope: !2541)
!2584 = !DILocation(line: 888, column: 5, scope: !2542)
!2585 = !DILocation(line: 888, column: 5, scope: !2541)
!2586 = !DILocation(line: 891, column: 19, scope: !2545)
!2587 = !DILocation(line: 891, column: 25, scope: !2545)
!2588 = !DILocation(line: 0, scope: !2545)
!2589 = !DILocation(line: 892, column: 23, scope: !2545)
!2590 = !DILocation(line: 894, column: 26, scope: !2545)
!2591 = !DILocation(line: 894, column: 32, scope: !2545)
!2592 = !DILocation(line: 896, column: 55, scope: !2545)
!2593 = !DILocation(line: 897, column: 55, scope: !2545)
!2594 = !DILocation(line: 898, column: 55, scope: !2545)
!2595 = !DILocation(line: 899, column: 55, scope: !2545)
!2596 = !DILocation(line: 895, column: 20, scope: !2545)
!2597 = !DILocation(line: 901, column: 14, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2545, file: !567, line: 901, column: 9)
!2599 = !DILocation(line: 901, column: 9, scope: !2545)
!2600 = !DILocation(line: 903, column: 35, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2598, file: !567, line: 902, column: 7)
!2602 = !DILocation(line: 903, column: 20, scope: !2601)
!2603 = !DILocation(line: 904, column: 17, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2601, file: !567, line: 904, column: 13)
!2605 = !DILocation(line: 904, column: 13, scope: !2601)
!2606 = !DILocation(line: 905, column: 11, scope: !2604)
!2607 = !DILocation(line: 906, column: 27, scope: !2601)
!2608 = !DILocation(line: 906, column: 19, scope: !2601)
!2609 = !DILocation(line: 907, column: 69, scope: !2601)
!2610 = !DILocation(line: 909, column: 44, scope: !2601)
!2611 = !DILocation(line: 910, column: 44, scope: !2601)
!2612 = !DILocation(line: 907, column: 9, scope: !2601)
!2613 = !DILocation(line: 911, column: 7, scope: !2601)
!2614 = !DILocation(line: 913, column: 11, scope: !2545)
!2615 = !DILocation(line: 914, column: 5, scope: !2545)
!2616 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !567, file: !567, line: 925, type: !2617, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !591, retainedNodes: !2619)
!2617 = !DISubroutineType(types: !2618)
!2618 = !{!85, !83, !119, !116}
!2619 = !{!2620, !2621, !2622}
!2620 = !DILocalVariable(name: "n", arg: 1, scope: !2616, file: !567, line: 925, type: !83)
!2621 = !DILocalVariable(name: "arg", arg: 2, scope: !2616, file: !567, line: 925, type: !119)
!2622 = !DILocalVariable(name: "argsize", arg: 3, scope: !2616, file: !567, line: 925, type: !116)
!2623 = !DILocation(line: 0, scope: !2616)
!2624 = !DILocation(line: 927, column: 10, scope: !2616)
!2625 = !DILocation(line: 927, column: 3, scope: !2616)
!2626 = distinct !DISubprogram(name: "quotearg", scope: !567, file: !567, line: 931, type: !1130, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !591, retainedNodes: !2627)
!2627 = !{!2628}
!2628 = !DILocalVariable(name: "arg", arg: 1, scope: !2626, file: !567, line: 931, type: !119)
!2629 = !DILocation(line: 0, scope: !2626)
!2630 = !DILocation(line: 0, scope: !2522, inlinedAt: !2631)
!2631 = distinct !DILocation(line: 933, column: 10, scope: !2626)
!2632 = !DILocation(line: 921, column: 10, scope: !2522, inlinedAt: !2631)
!2633 = !DILocation(line: 933, column: 3, scope: !2626)
!2634 = distinct !DISubprogram(name: "quotearg_mem", scope: !567, file: !567, line: 937, type: !2635, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !591, retainedNodes: !2637)
!2635 = !DISubroutineType(types: !2636)
!2636 = !{!85, !119, !116}
!2637 = !{!2638, !2639}
!2638 = !DILocalVariable(name: "arg", arg: 1, scope: !2634, file: !567, line: 937, type: !119)
!2639 = !DILocalVariable(name: "argsize", arg: 2, scope: !2634, file: !567, line: 937, type: !116)
!2640 = !DILocation(line: 0, scope: !2634)
!2641 = !DILocation(line: 0, scope: !2616, inlinedAt: !2642)
!2642 = distinct !DILocation(line: 939, column: 10, scope: !2634)
!2643 = !DILocation(line: 927, column: 10, scope: !2616, inlinedAt: !2642)
!2644 = !DILocation(line: 939, column: 3, scope: !2634)
!2645 = distinct !DISubprogram(name: "quotearg_n_style", scope: !567, file: !567, line: 943, type: !2646, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !591, retainedNodes: !2648)
!2646 = !DISubroutineType(types: !2647)
!2647 = !{!85, !83, !593, !119}
!2648 = !{!2649, !2650, !2651, !2652}
!2649 = !DILocalVariable(name: "n", arg: 1, scope: !2645, file: !567, line: 943, type: !83)
!2650 = !DILocalVariable(name: "s", arg: 2, scope: !2645, file: !567, line: 943, type: !593)
!2651 = !DILocalVariable(name: "arg", arg: 3, scope: !2645, file: !567, line: 943, type: !119)
!2652 = !DILocalVariable(name: "o", scope: !2645, file: !567, line: 945, type: !1749)
!2653 = !DILocation(line: 0, scope: !2645)
!2654 = !DILocation(line: 945, column: 3, scope: !2645)
!2655 = !DILocation(line: 945, column: 32, scope: !2645)
!2656 = !{!2657}
!2657 = distinct !{!2657, !2658, !"quoting_options_from_style: argument 0"}
!2658 = distinct !{!2658, !"quoting_options_from_style"}
!2659 = !DILocation(line: 945, column: 36, scope: !2645)
!2660 = !DILocalVariable(name: "style", arg: 1, scope: !2661, file: !567, line: 183, type: !593)
!2661 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !567, file: !567, line: 183, type: !2662, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !591, retainedNodes: !2664)
!2662 = !DISubroutineType(types: !2663)
!2663 = !{!620, !593}
!2664 = !{!2660, !2665}
!2665 = !DILocalVariable(name: "o", scope: !2661, file: !567, line: 185, type: !620)
!2666 = !DILocation(line: 0, scope: !2661, inlinedAt: !2667)
!2667 = distinct !DILocation(line: 945, column: 36, scope: !2645)
!2668 = !DILocation(line: 185, column: 26, scope: !2661, inlinedAt: !2667)
!2669 = !DILocation(line: 186, column: 13, scope: !2670, inlinedAt: !2667)
!2670 = distinct !DILexicalBlock(scope: !2661, file: !567, line: 186, column: 7)
!2671 = !DILocation(line: 186, column: 7, scope: !2661, inlinedAt: !2667)
!2672 = !DILocation(line: 187, column: 5, scope: !2670, inlinedAt: !2667)
!2673 = !DILocation(line: 188, column: 11, scope: !2661, inlinedAt: !2667)
!2674 = !DILocation(line: 946, column: 10, scope: !2645)
!2675 = !DILocation(line: 947, column: 1, scope: !2645)
!2676 = !DILocation(line: 946, column: 3, scope: !2645)
!2677 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !567, file: !567, line: 950, type: !2678, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !591, retainedNodes: !2680)
!2678 = !DISubroutineType(types: !2679)
!2679 = !{!85, !83, !593, !119, !116}
!2680 = !{!2681, !2682, !2683, !2684, !2685}
!2681 = !DILocalVariable(name: "n", arg: 1, scope: !2677, file: !567, line: 950, type: !83)
!2682 = !DILocalVariable(name: "s", arg: 2, scope: !2677, file: !567, line: 950, type: !593)
!2683 = !DILocalVariable(name: "arg", arg: 3, scope: !2677, file: !567, line: 951, type: !119)
!2684 = !DILocalVariable(name: "argsize", arg: 4, scope: !2677, file: !567, line: 951, type: !116)
!2685 = !DILocalVariable(name: "o", scope: !2677, file: !567, line: 953, type: !1749)
!2686 = !DILocation(line: 0, scope: !2677)
!2687 = !DILocation(line: 953, column: 3, scope: !2677)
!2688 = !DILocation(line: 953, column: 32, scope: !2677)
!2689 = !{!2690}
!2690 = distinct !{!2690, !2691, !"quoting_options_from_style: argument 0"}
!2691 = distinct !{!2691, !"quoting_options_from_style"}
!2692 = !DILocation(line: 953, column: 36, scope: !2677)
!2693 = !DILocation(line: 0, scope: !2661, inlinedAt: !2694)
!2694 = distinct !DILocation(line: 953, column: 36, scope: !2677)
!2695 = !DILocation(line: 185, column: 26, scope: !2661, inlinedAt: !2694)
!2696 = !DILocation(line: 186, column: 13, scope: !2670, inlinedAt: !2694)
!2697 = !DILocation(line: 186, column: 7, scope: !2661, inlinedAt: !2694)
!2698 = !DILocation(line: 187, column: 5, scope: !2670, inlinedAt: !2694)
!2699 = !DILocation(line: 188, column: 11, scope: !2661, inlinedAt: !2694)
!2700 = !DILocation(line: 954, column: 10, scope: !2677)
!2701 = !DILocation(line: 955, column: 1, scope: !2677)
!2702 = !DILocation(line: 954, column: 3, scope: !2677)
!2703 = distinct !DISubprogram(name: "quotearg_style", scope: !567, file: !567, line: 958, type: !2704, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !591, retainedNodes: !2706)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{!85, !593, !119}
!2706 = !{!2707, !2708}
!2707 = !DILocalVariable(name: "s", arg: 1, scope: !2703, file: !567, line: 958, type: !593)
!2708 = !DILocalVariable(name: "arg", arg: 2, scope: !2703, file: !567, line: 958, type: !119)
!2709 = !DILocation(line: 0, scope: !2703)
!2710 = !DILocation(line: 0, scope: !2645, inlinedAt: !2711)
!2711 = distinct !DILocation(line: 960, column: 10, scope: !2703)
!2712 = !DILocation(line: 945, column: 3, scope: !2645, inlinedAt: !2711)
!2713 = !DILocation(line: 945, column: 32, scope: !2645, inlinedAt: !2711)
!2714 = !{!2715}
!2715 = distinct !{!2715, !2716, !"quoting_options_from_style: argument 0"}
!2716 = distinct !{!2716, !"quoting_options_from_style"}
!2717 = !DILocation(line: 945, column: 36, scope: !2645, inlinedAt: !2711)
!2718 = !DILocation(line: 0, scope: !2661, inlinedAt: !2719)
!2719 = distinct !DILocation(line: 945, column: 36, scope: !2645, inlinedAt: !2711)
!2720 = !DILocation(line: 185, column: 26, scope: !2661, inlinedAt: !2719)
!2721 = !DILocation(line: 186, column: 13, scope: !2670, inlinedAt: !2719)
!2722 = !DILocation(line: 186, column: 7, scope: !2661, inlinedAt: !2719)
!2723 = !DILocation(line: 187, column: 5, scope: !2670, inlinedAt: !2719)
!2724 = !DILocation(line: 188, column: 11, scope: !2661, inlinedAt: !2719)
!2725 = !DILocation(line: 946, column: 10, scope: !2645, inlinedAt: !2711)
!2726 = !DILocation(line: 947, column: 1, scope: !2645, inlinedAt: !2711)
!2727 = !DILocation(line: 960, column: 3, scope: !2703)
!2728 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !567, file: !567, line: 964, type: !2729, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !591, retainedNodes: !2731)
!2729 = !DISubroutineType(types: !2730)
!2730 = !{!85, !593, !119, !116}
!2731 = !{!2732, !2733, !2734}
!2732 = !DILocalVariable(name: "s", arg: 1, scope: !2728, file: !567, line: 964, type: !593)
!2733 = !DILocalVariable(name: "arg", arg: 2, scope: !2728, file: !567, line: 964, type: !119)
!2734 = !DILocalVariable(name: "argsize", arg: 3, scope: !2728, file: !567, line: 964, type: !116)
!2735 = !DILocation(line: 0, scope: !2728)
!2736 = !DILocation(line: 0, scope: !2677, inlinedAt: !2737)
!2737 = distinct !DILocation(line: 966, column: 10, scope: !2728)
!2738 = !DILocation(line: 953, column: 3, scope: !2677, inlinedAt: !2737)
!2739 = !DILocation(line: 953, column: 32, scope: !2677, inlinedAt: !2737)
!2740 = !{!2741}
!2741 = distinct !{!2741, !2742, !"quoting_options_from_style: argument 0"}
!2742 = distinct !{!2742, !"quoting_options_from_style"}
!2743 = !DILocation(line: 953, column: 36, scope: !2677, inlinedAt: !2737)
!2744 = !DILocation(line: 0, scope: !2661, inlinedAt: !2745)
!2745 = distinct !DILocation(line: 953, column: 36, scope: !2677, inlinedAt: !2737)
!2746 = !DILocation(line: 185, column: 26, scope: !2661, inlinedAt: !2745)
!2747 = !DILocation(line: 186, column: 13, scope: !2670, inlinedAt: !2745)
!2748 = !DILocation(line: 186, column: 7, scope: !2661, inlinedAt: !2745)
!2749 = !DILocation(line: 187, column: 5, scope: !2670, inlinedAt: !2745)
!2750 = !DILocation(line: 188, column: 11, scope: !2661, inlinedAt: !2745)
!2751 = !DILocation(line: 954, column: 10, scope: !2677, inlinedAt: !2737)
!2752 = !DILocation(line: 955, column: 1, scope: !2677, inlinedAt: !2737)
!2753 = !DILocation(line: 966, column: 3, scope: !2728)
!2754 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !567, file: !567, line: 970, type: !2755, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !591, retainedNodes: !2757)
!2755 = !DISubroutineType(types: !2756)
!2756 = !{!85, !119, !116, !4}
!2757 = !{!2758, !2759, !2760, !2761}
!2758 = !DILocalVariable(name: "arg", arg: 1, scope: !2754, file: !567, line: 970, type: !119)
!2759 = !DILocalVariable(name: "argsize", arg: 2, scope: !2754, file: !567, line: 970, type: !116)
!2760 = !DILocalVariable(name: "ch", arg: 3, scope: !2754, file: !567, line: 970, type: !4)
!2761 = !DILocalVariable(name: "options", scope: !2754, file: !567, line: 972, type: !620)
!2762 = !DILocation(line: 0, scope: !2754)
!2763 = !DILocation(line: 972, column: 3, scope: !2754)
!2764 = !DILocation(line: 972, column: 26, scope: !2754)
!2765 = !DILocation(line: 973, column: 13, scope: !2754)
!2766 = !{i64 0, i64 4, !890, i64 4, i64 4, !981, i64 8, i64 32, !890, i64 40, i64 8, !882, i64 48, i64 8, !882}
!2767 = !DILocation(line: 0, scope: !1768, inlinedAt: !2768)
!2768 = distinct !DILocation(line: 974, column: 3, scope: !2754)
!2769 = !DILocation(line: 147, column: 41, scope: !1768, inlinedAt: !2768)
!2770 = !DILocation(line: 147, column: 62, scope: !1768, inlinedAt: !2768)
!2771 = !DILocation(line: 147, column: 57, scope: !1768, inlinedAt: !2768)
!2772 = !DILocation(line: 148, column: 15, scope: !1768, inlinedAt: !2768)
!2773 = !DILocation(line: 149, column: 21, scope: !1768, inlinedAt: !2768)
!2774 = !DILocation(line: 149, column: 24, scope: !1768, inlinedAt: !2768)
!2775 = !DILocation(line: 150, column: 19, scope: !1768, inlinedAt: !2768)
!2776 = !DILocation(line: 150, column: 24, scope: !1768, inlinedAt: !2768)
!2777 = !DILocation(line: 150, column: 6, scope: !1768, inlinedAt: !2768)
!2778 = !DILocation(line: 975, column: 10, scope: !2754)
!2779 = !DILocation(line: 976, column: 1, scope: !2754)
!2780 = !DILocation(line: 975, column: 3, scope: !2754)
!2781 = distinct !DISubprogram(name: "quotearg_char", scope: !567, file: !567, line: 979, type: !2782, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !591, retainedNodes: !2784)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{!85, !119, !4}
!2784 = !{!2785, !2786}
!2785 = !DILocalVariable(name: "arg", arg: 1, scope: !2781, file: !567, line: 979, type: !119)
!2786 = !DILocalVariable(name: "ch", arg: 2, scope: !2781, file: !567, line: 979, type: !4)
!2787 = !DILocation(line: 0, scope: !2781)
!2788 = !DILocation(line: 0, scope: !2754, inlinedAt: !2789)
!2789 = distinct !DILocation(line: 981, column: 10, scope: !2781)
!2790 = !DILocation(line: 972, column: 3, scope: !2754, inlinedAt: !2789)
!2791 = !DILocation(line: 972, column: 26, scope: !2754, inlinedAt: !2789)
!2792 = !DILocation(line: 973, column: 13, scope: !2754, inlinedAt: !2789)
!2793 = !DILocation(line: 0, scope: !1768, inlinedAt: !2794)
!2794 = distinct !DILocation(line: 974, column: 3, scope: !2754, inlinedAt: !2789)
!2795 = !DILocation(line: 147, column: 41, scope: !1768, inlinedAt: !2794)
!2796 = !DILocation(line: 147, column: 62, scope: !1768, inlinedAt: !2794)
!2797 = !DILocation(line: 147, column: 57, scope: !1768, inlinedAt: !2794)
!2798 = !DILocation(line: 148, column: 15, scope: !1768, inlinedAt: !2794)
!2799 = !DILocation(line: 149, column: 21, scope: !1768, inlinedAt: !2794)
!2800 = !DILocation(line: 149, column: 24, scope: !1768, inlinedAt: !2794)
!2801 = !DILocation(line: 150, column: 19, scope: !1768, inlinedAt: !2794)
!2802 = !DILocation(line: 150, column: 24, scope: !1768, inlinedAt: !2794)
!2803 = !DILocation(line: 150, column: 6, scope: !1768, inlinedAt: !2794)
!2804 = !DILocation(line: 975, column: 10, scope: !2754, inlinedAt: !2789)
!2805 = !DILocation(line: 976, column: 1, scope: !2754, inlinedAt: !2789)
!2806 = !DILocation(line: 981, column: 3, scope: !2781)
!2807 = distinct !DISubprogram(name: "quotearg_colon", scope: !567, file: !567, line: 985, type: !1130, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !591, retainedNodes: !2808)
!2808 = !{!2809}
!2809 = !DILocalVariable(name: "arg", arg: 1, scope: !2807, file: !567, line: 985, type: !119)
!2810 = !DILocation(line: 0, scope: !2807)
!2811 = !DILocation(line: 0, scope: !2781, inlinedAt: !2812)
!2812 = distinct !DILocation(line: 987, column: 10, scope: !2807)
!2813 = !DILocation(line: 0, scope: !2754, inlinedAt: !2814)
!2814 = distinct !DILocation(line: 981, column: 10, scope: !2781, inlinedAt: !2812)
!2815 = !DILocation(line: 972, column: 3, scope: !2754, inlinedAt: !2814)
!2816 = !DILocation(line: 972, column: 26, scope: !2754, inlinedAt: !2814)
!2817 = !DILocation(line: 973, column: 13, scope: !2754, inlinedAt: !2814)
!2818 = !DILocation(line: 0, scope: !1768, inlinedAt: !2819)
!2819 = distinct !DILocation(line: 974, column: 3, scope: !2754, inlinedAt: !2814)
!2820 = !DILocation(line: 147, column: 57, scope: !1768, inlinedAt: !2819)
!2821 = !DILocation(line: 149, column: 21, scope: !1768, inlinedAt: !2819)
!2822 = !DILocation(line: 150, column: 6, scope: !1768, inlinedAt: !2819)
!2823 = !DILocation(line: 975, column: 10, scope: !2754, inlinedAt: !2814)
!2824 = !DILocation(line: 976, column: 1, scope: !2754, inlinedAt: !2814)
!2825 = !DILocation(line: 987, column: 3, scope: !2807)
!2826 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !567, file: !567, line: 991, type: !2635, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !591, retainedNodes: !2827)
!2827 = !{!2828, !2829}
!2828 = !DILocalVariable(name: "arg", arg: 1, scope: !2826, file: !567, line: 991, type: !119)
!2829 = !DILocalVariable(name: "argsize", arg: 2, scope: !2826, file: !567, line: 991, type: !116)
!2830 = !DILocation(line: 0, scope: !2826)
!2831 = !DILocation(line: 0, scope: !2754, inlinedAt: !2832)
!2832 = distinct !DILocation(line: 993, column: 10, scope: !2826)
!2833 = !DILocation(line: 972, column: 3, scope: !2754, inlinedAt: !2832)
!2834 = !DILocation(line: 972, column: 26, scope: !2754, inlinedAt: !2832)
!2835 = !DILocation(line: 973, column: 13, scope: !2754, inlinedAt: !2832)
!2836 = !DILocation(line: 0, scope: !1768, inlinedAt: !2837)
!2837 = distinct !DILocation(line: 974, column: 3, scope: !2754, inlinedAt: !2832)
!2838 = !DILocation(line: 147, column: 57, scope: !1768, inlinedAt: !2837)
!2839 = !DILocation(line: 149, column: 21, scope: !1768, inlinedAt: !2837)
!2840 = !DILocation(line: 150, column: 6, scope: !1768, inlinedAt: !2837)
!2841 = !DILocation(line: 975, column: 10, scope: !2754, inlinedAt: !2832)
!2842 = !DILocation(line: 976, column: 1, scope: !2754, inlinedAt: !2832)
!2843 = !DILocation(line: 993, column: 3, scope: !2826)
!2844 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !567, file: !567, line: 997, type: !2646, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !591, retainedNodes: !2845)
!2845 = !{!2846, !2847, !2848, !2849}
!2846 = !DILocalVariable(name: "n", arg: 1, scope: !2844, file: !567, line: 997, type: !83)
!2847 = !DILocalVariable(name: "s", arg: 2, scope: !2844, file: !567, line: 997, type: !593)
!2848 = !DILocalVariable(name: "arg", arg: 3, scope: !2844, file: !567, line: 997, type: !119)
!2849 = !DILocalVariable(name: "options", scope: !2844, file: !567, line: 999, type: !620)
!2850 = !DILocation(line: 185, column: 26, scope: !2661, inlinedAt: !2851)
!2851 = distinct !DILocation(line: 1000, column: 13, scope: !2844)
!2852 = !DILocation(line: 0, scope: !2844)
!2853 = !DILocation(line: 999, column: 3, scope: !2844)
!2854 = !DILocation(line: 999, column: 26, scope: !2844)
!2855 = !DILocation(line: 0, scope: !2661, inlinedAt: !2851)
!2856 = !DILocation(line: 186, column: 13, scope: !2670, inlinedAt: !2851)
!2857 = !DILocation(line: 186, column: 7, scope: !2661, inlinedAt: !2851)
!2858 = !DILocation(line: 187, column: 5, scope: !2670, inlinedAt: !2851)
!2859 = !{!2860}
!2860 = distinct !{!2860, !2861, !"quoting_options_from_style: argument 0"}
!2861 = distinct !{!2861, !"quoting_options_from_style"}
!2862 = !DILocation(line: 1000, column: 13, scope: !2844)
!2863 = !DILocation(line: 0, scope: !1768, inlinedAt: !2864)
!2864 = distinct !DILocation(line: 1001, column: 3, scope: !2844)
!2865 = !DILocation(line: 147, column: 57, scope: !1768, inlinedAt: !2864)
!2866 = !DILocation(line: 149, column: 21, scope: !1768, inlinedAt: !2864)
!2867 = !DILocation(line: 150, column: 6, scope: !1768, inlinedAt: !2864)
!2868 = !DILocation(line: 1002, column: 10, scope: !2844)
!2869 = !DILocation(line: 1003, column: 1, scope: !2844)
!2870 = !DILocation(line: 1002, column: 3, scope: !2844)
!2871 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !567, file: !567, line: 1006, type: !2872, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !591, retainedNodes: !2874)
!2872 = !DISubroutineType(types: !2873)
!2873 = !{!85, !83, !119, !119, !119}
!2874 = !{!2875, !2876, !2877, !2878}
!2875 = !DILocalVariable(name: "n", arg: 1, scope: !2871, file: !567, line: 1006, type: !83)
!2876 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2871, file: !567, line: 1006, type: !119)
!2877 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2871, file: !567, line: 1007, type: !119)
!2878 = !DILocalVariable(name: "arg", arg: 4, scope: !2871, file: !567, line: 1007, type: !119)
!2879 = !DILocation(line: 0, scope: !2871)
!2880 = !DILocalVariable(name: "n", arg: 1, scope: !2881, file: !567, line: 1014, type: !83)
!2881 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !567, file: !567, line: 1014, type: !2882, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !591, retainedNodes: !2884)
!2882 = !DISubroutineType(types: !2883)
!2883 = !{!85, !83, !119, !119, !119, !116}
!2884 = !{!2880, !2885, !2886, !2887, !2888, !2889}
!2885 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2881, file: !567, line: 1014, type: !119)
!2886 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2881, file: !567, line: 1015, type: !119)
!2887 = !DILocalVariable(name: "arg", arg: 4, scope: !2881, file: !567, line: 1016, type: !119)
!2888 = !DILocalVariable(name: "argsize", arg: 5, scope: !2881, file: !567, line: 1016, type: !116)
!2889 = !DILocalVariable(name: "o", scope: !2881, file: !567, line: 1018, type: !620)
!2890 = !DILocation(line: 0, scope: !2881, inlinedAt: !2891)
!2891 = distinct !DILocation(line: 1009, column: 10, scope: !2871)
!2892 = !DILocation(line: 1018, column: 3, scope: !2881, inlinedAt: !2891)
!2893 = !DILocation(line: 1018, column: 26, scope: !2881, inlinedAt: !2891)
!2894 = !DILocation(line: 1018, column: 30, scope: !2881, inlinedAt: !2891)
!2895 = !DILocation(line: 0, scope: !1808, inlinedAt: !2896)
!2896 = distinct !DILocation(line: 1019, column: 3, scope: !2881, inlinedAt: !2891)
!2897 = !DILocation(line: 174, column: 12, scope: !1808, inlinedAt: !2896)
!2898 = !DILocation(line: 175, column: 8, scope: !1821, inlinedAt: !2896)
!2899 = !DILocation(line: 175, column: 19, scope: !1821, inlinedAt: !2896)
!2900 = !DILocation(line: 176, column: 5, scope: !1821, inlinedAt: !2896)
!2901 = !DILocation(line: 177, column: 6, scope: !1808, inlinedAt: !2896)
!2902 = !DILocation(line: 177, column: 17, scope: !1808, inlinedAt: !2896)
!2903 = !DILocation(line: 178, column: 6, scope: !1808, inlinedAt: !2896)
!2904 = !DILocation(line: 178, column: 18, scope: !1808, inlinedAt: !2896)
!2905 = !DILocation(line: 1020, column: 10, scope: !2881, inlinedAt: !2891)
!2906 = !DILocation(line: 1021, column: 1, scope: !2881, inlinedAt: !2891)
!2907 = !DILocation(line: 1009, column: 3, scope: !2871)
!2908 = !DILocation(line: 0, scope: !2881)
!2909 = !DILocation(line: 1018, column: 3, scope: !2881)
!2910 = !DILocation(line: 1018, column: 26, scope: !2881)
!2911 = !DILocation(line: 1018, column: 30, scope: !2881)
!2912 = !DILocation(line: 0, scope: !1808, inlinedAt: !2913)
!2913 = distinct !DILocation(line: 1019, column: 3, scope: !2881)
!2914 = !DILocation(line: 174, column: 12, scope: !1808, inlinedAt: !2913)
!2915 = !DILocation(line: 175, column: 8, scope: !1821, inlinedAt: !2913)
!2916 = !DILocation(line: 175, column: 19, scope: !1821, inlinedAt: !2913)
!2917 = !DILocation(line: 176, column: 5, scope: !1821, inlinedAt: !2913)
!2918 = !DILocation(line: 177, column: 6, scope: !1808, inlinedAt: !2913)
!2919 = !DILocation(line: 177, column: 17, scope: !1808, inlinedAt: !2913)
!2920 = !DILocation(line: 178, column: 6, scope: !1808, inlinedAt: !2913)
!2921 = !DILocation(line: 178, column: 18, scope: !1808, inlinedAt: !2913)
!2922 = !DILocation(line: 1020, column: 10, scope: !2881)
!2923 = !DILocation(line: 1021, column: 1, scope: !2881)
!2924 = !DILocation(line: 1020, column: 3, scope: !2881)
!2925 = distinct !DISubprogram(name: "quotearg_custom", scope: !567, file: !567, line: 1024, type: !2926, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !591, retainedNodes: !2928)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{!85, !119, !119, !119}
!2928 = !{!2929, !2930, !2931}
!2929 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2925, file: !567, line: 1024, type: !119)
!2930 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2925, file: !567, line: 1024, type: !119)
!2931 = !DILocalVariable(name: "arg", arg: 3, scope: !2925, file: !567, line: 1025, type: !119)
!2932 = !DILocation(line: 0, scope: !2925)
!2933 = !DILocation(line: 0, scope: !2871, inlinedAt: !2934)
!2934 = distinct !DILocation(line: 1027, column: 10, scope: !2925)
!2935 = !DILocation(line: 0, scope: !2881, inlinedAt: !2936)
!2936 = distinct !DILocation(line: 1009, column: 10, scope: !2871, inlinedAt: !2934)
!2937 = !DILocation(line: 1018, column: 3, scope: !2881, inlinedAt: !2936)
!2938 = !DILocation(line: 1018, column: 26, scope: !2881, inlinedAt: !2936)
!2939 = !DILocation(line: 1018, column: 30, scope: !2881, inlinedAt: !2936)
!2940 = !DILocation(line: 0, scope: !1808, inlinedAt: !2941)
!2941 = distinct !DILocation(line: 1019, column: 3, scope: !2881, inlinedAt: !2936)
!2942 = !DILocation(line: 174, column: 12, scope: !1808, inlinedAt: !2941)
!2943 = !DILocation(line: 175, column: 8, scope: !1821, inlinedAt: !2941)
!2944 = !DILocation(line: 175, column: 19, scope: !1821, inlinedAt: !2941)
!2945 = !DILocation(line: 176, column: 5, scope: !1821, inlinedAt: !2941)
!2946 = !DILocation(line: 177, column: 6, scope: !1808, inlinedAt: !2941)
!2947 = !DILocation(line: 177, column: 17, scope: !1808, inlinedAt: !2941)
!2948 = !DILocation(line: 178, column: 6, scope: !1808, inlinedAt: !2941)
!2949 = !DILocation(line: 178, column: 18, scope: !1808, inlinedAt: !2941)
!2950 = !DILocation(line: 1020, column: 10, scope: !2881, inlinedAt: !2936)
!2951 = !DILocation(line: 1021, column: 1, scope: !2881, inlinedAt: !2936)
!2952 = !DILocation(line: 1027, column: 3, scope: !2925)
!2953 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !567, file: !567, line: 1031, type: !2954, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !591, retainedNodes: !2956)
!2954 = !DISubroutineType(types: !2955)
!2955 = !{!85, !119, !119, !119, !116}
!2956 = !{!2957, !2958, !2959, !2960}
!2957 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2953, file: !567, line: 1031, type: !119)
!2958 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2953, file: !567, line: 1031, type: !119)
!2959 = !DILocalVariable(name: "arg", arg: 3, scope: !2953, file: !567, line: 1032, type: !119)
!2960 = !DILocalVariable(name: "argsize", arg: 4, scope: !2953, file: !567, line: 1032, type: !116)
!2961 = !DILocation(line: 0, scope: !2953)
!2962 = !DILocation(line: 0, scope: !2881, inlinedAt: !2963)
!2963 = distinct !DILocation(line: 1034, column: 10, scope: !2953)
!2964 = !DILocation(line: 1018, column: 3, scope: !2881, inlinedAt: !2963)
!2965 = !DILocation(line: 1018, column: 26, scope: !2881, inlinedAt: !2963)
!2966 = !DILocation(line: 1018, column: 30, scope: !2881, inlinedAt: !2963)
!2967 = !DILocation(line: 0, scope: !1808, inlinedAt: !2968)
!2968 = distinct !DILocation(line: 1019, column: 3, scope: !2881, inlinedAt: !2963)
!2969 = !DILocation(line: 174, column: 12, scope: !1808, inlinedAt: !2968)
!2970 = !DILocation(line: 175, column: 8, scope: !1821, inlinedAt: !2968)
!2971 = !DILocation(line: 175, column: 19, scope: !1821, inlinedAt: !2968)
!2972 = !DILocation(line: 176, column: 5, scope: !1821, inlinedAt: !2968)
!2973 = !DILocation(line: 177, column: 6, scope: !1808, inlinedAt: !2968)
!2974 = !DILocation(line: 177, column: 17, scope: !1808, inlinedAt: !2968)
!2975 = !DILocation(line: 178, column: 6, scope: !1808, inlinedAt: !2968)
!2976 = !DILocation(line: 178, column: 18, scope: !1808, inlinedAt: !2968)
!2977 = !DILocation(line: 1020, column: 10, scope: !2881, inlinedAt: !2963)
!2978 = !DILocation(line: 1021, column: 1, scope: !2881, inlinedAt: !2963)
!2979 = !DILocation(line: 1034, column: 3, scope: !2953)
!2980 = distinct !DISubprogram(name: "quote_n_mem", scope: !567, file: !567, line: 1049, type: !2981, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !591, retainedNodes: !2983)
!2981 = !DISubroutineType(types: !2982)
!2982 = !{!119, !83, !119, !116}
!2983 = !{!2984, !2985, !2986}
!2984 = !DILocalVariable(name: "n", arg: 1, scope: !2980, file: !567, line: 1049, type: !83)
!2985 = !DILocalVariable(name: "arg", arg: 2, scope: !2980, file: !567, line: 1049, type: !119)
!2986 = !DILocalVariable(name: "argsize", arg: 3, scope: !2980, file: !567, line: 1049, type: !116)
!2987 = !DILocation(line: 0, scope: !2980)
!2988 = !DILocation(line: 1051, column: 10, scope: !2980)
!2989 = !DILocation(line: 1051, column: 3, scope: !2980)
!2990 = distinct !DISubprogram(name: "quote_mem", scope: !567, file: !567, line: 1055, type: !2991, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !591, retainedNodes: !2993)
!2991 = !DISubroutineType(types: !2992)
!2992 = !{!119, !119, !116}
!2993 = !{!2994, !2995}
!2994 = !DILocalVariable(name: "arg", arg: 1, scope: !2990, file: !567, line: 1055, type: !119)
!2995 = !DILocalVariable(name: "argsize", arg: 2, scope: !2990, file: !567, line: 1055, type: !116)
!2996 = !DILocation(line: 0, scope: !2990)
!2997 = !DILocation(line: 0, scope: !2980, inlinedAt: !2998)
!2998 = distinct !DILocation(line: 1057, column: 10, scope: !2990)
!2999 = !DILocation(line: 1051, column: 10, scope: !2980, inlinedAt: !2998)
!3000 = !DILocation(line: 1057, column: 3, scope: !2990)
!3001 = distinct !DISubprogram(name: "quote_n", scope: !567, file: !567, line: 1061, type: !3002, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !591, retainedNodes: !3004)
!3002 = !DISubroutineType(types: !3003)
!3003 = !{!119, !83, !119}
!3004 = !{!3005, !3006}
!3005 = !DILocalVariable(name: "n", arg: 1, scope: !3001, file: !567, line: 1061, type: !83)
!3006 = !DILocalVariable(name: "arg", arg: 2, scope: !3001, file: !567, line: 1061, type: !119)
!3007 = !DILocation(line: 0, scope: !3001)
!3008 = !DILocation(line: 0, scope: !2980, inlinedAt: !3009)
!3009 = distinct !DILocation(line: 1063, column: 10, scope: !3001)
!3010 = !DILocation(line: 1051, column: 10, scope: !2980, inlinedAt: !3009)
!3011 = !DILocation(line: 1063, column: 3, scope: !3001)
!3012 = distinct !DISubprogram(name: "quote", scope: !567, file: !567, line: 1067, type: !3013, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !591, retainedNodes: !3015)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{!119, !119}
!3015 = !{!3016}
!3016 = !DILocalVariable(name: "arg", arg: 1, scope: !3012, file: !567, line: 1067, type: !119)
!3017 = !DILocation(line: 0, scope: !3012)
!3018 = !DILocation(line: 0, scope: !3001, inlinedAt: !3019)
!3019 = distinct !DILocation(line: 1069, column: 10, scope: !3012)
!3020 = !DILocation(line: 0, scope: !2980, inlinedAt: !3021)
!3021 = distinct !DILocation(line: 1063, column: 10, scope: !3001, inlinedAt: !3019)
!3022 = !DILocation(line: 1051, column: 10, scope: !2980, inlinedAt: !3021)
!3023 = !DILocation(line: 1069, column: 3, scope: !3012)
!3024 = distinct !DISubprogram(name: "version_etc_arn", scope: !683, file: !683, line: 61, type: !3025, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !3062)
!3025 = !DISubroutineType(types: !3026)
!3026 = !{null, !3027, !119, !119, !119, !3061, !116}
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !186, line: 7, baseType: !3029)
!3029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !188, line: 49, size: 1728, elements: !3030)
!3030 = !{!3031, !3032, !3033, !3034, !3035, !3036, !3037, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3046, !3047, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3060}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3029, file: !188, line: 51, baseType: !83, size: 32)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3029, file: !188, line: 54, baseType: !85, size: 64, offset: 64)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3029, file: !188, line: 55, baseType: !85, size: 64, offset: 128)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3029, file: !188, line: 56, baseType: !85, size: 64, offset: 192)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3029, file: !188, line: 57, baseType: !85, size: 64, offset: 256)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3029, file: !188, line: 58, baseType: !85, size: 64, offset: 320)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3029, file: !188, line: 59, baseType: !85, size: 64, offset: 384)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3029, file: !188, line: 60, baseType: !85, size: 64, offset: 448)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3029, file: !188, line: 61, baseType: !85, size: 64, offset: 512)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3029, file: !188, line: 64, baseType: !85, size: 64, offset: 576)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3029, file: !188, line: 65, baseType: !85, size: 64, offset: 640)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3029, file: !188, line: 66, baseType: !85, size: 64, offset: 704)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3029, file: !188, line: 68, baseType: !203, size: 64, offset: 768)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3029, file: !188, line: 70, baseType: !3045, size: 64, offset: 832)
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3029, file: !188, line: 72, baseType: !83, size: 32, offset: 896)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3029, file: !188, line: 73, baseType: !83, size: 32, offset: 928)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3029, file: !188, line: 74, baseType: !210, size: 64, offset: 960)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3029, file: !188, line: 77, baseType: !115, size: 16, offset: 1024)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3029, file: !188, line: 78, baseType: !215, size: 8, offset: 1040)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3029, file: !188, line: 79, baseType: !126, size: 8, offset: 1048)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3029, file: !188, line: 81, baseType: !218, size: 64, offset: 1088)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3029, file: !188, line: 89, baseType: !221, size: 64, offset: 1152)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3029, file: !188, line: 91, baseType: !223, size: 64, offset: 1216)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3029, file: !188, line: 92, baseType: !226, size: 64, offset: 1280)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3029, file: !188, line: 93, baseType: !3045, size: 64, offset: 1344)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3029, file: !188, line: 94, baseType: !122, size: 64, offset: 1408)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3029, file: !188, line: 95, baseType: !116, size: 64, offset: 1472)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3029, file: !188, line: 96, baseType: !83, size: 32, offset: 1536)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3029, file: !188, line: 98, baseType: !233, size: 160, offset: 1568)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!3062 = !{!3063, !3064, !3065, !3066, !3067, !3068}
!3063 = !DILocalVariable(name: "stream", arg: 1, scope: !3024, file: !683, line: 61, type: !3027)
!3064 = !DILocalVariable(name: "command_name", arg: 2, scope: !3024, file: !683, line: 62, type: !119)
!3065 = !DILocalVariable(name: "package", arg: 3, scope: !3024, file: !683, line: 62, type: !119)
!3066 = !DILocalVariable(name: "version", arg: 4, scope: !3024, file: !683, line: 63, type: !119)
!3067 = !DILocalVariable(name: "authors", arg: 5, scope: !3024, file: !683, line: 64, type: !3061)
!3068 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3024, file: !683, line: 64, type: !116)
!3069 = !DILocation(line: 0, scope: !3024)
!3070 = !DILocation(line: 66, column: 7, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3024, file: !683, line: 66, column: 7)
!3072 = !DILocation(line: 66, column: 7, scope: !3024)
!3073 = !DILocation(line: 67, column: 5, scope: !3071)
!3074 = !DILocation(line: 69, column: 5, scope: !3071)
!3075 = !DILocation(line: 83, column: 3, scope: !3024)
!3076 = !DILocation(line: 85, column: 3, scope: !3024)
!3077 = !DILocation(line: 88, column: 3, scope: !3024)
!3078 = !DILocation(line: 95, column: 3, scope: !3024)
!3079 = !DILocation(line: 97, column: 3, scope: !3024)
!3080 = !DILocation(line: 105, column: 7, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !3024, file: !683, line: 98, column: 5)
!3082 = !DILocation(line: 106, column: 7, scope: !3081)
!3083 = !DILocation(line: 109, column: 7, scope: !3081)
!3084 = !DILocation(line: 110, column: 7, scope: !3081)
!3085 = !DILocation(line: 113, column: 7, scope: !3081)
!3086 = !DILocation(line: 115, column: 7, scope: !3081)
!3087 = !DILocation(line: 120, column: 7, scope: !3081)
!3088 = !DILocation(line: 122, column: 7, scope: !3081)
!3089 = !DILocation(line: 127, column: 7, scope: !3081)
!3090 = !DILocation(line: 129, column: 7, scope: !3081)
!3091 = !DILocation(line: 134, column: 7, scope: !3081)
!3092 = !DILocation(line: 137, column: 7, scope: !3081)
!3093 = !DILocation(line: 142, column: 7, scope: !3081)
!3094 = !DILocation(line: 145, column: 7, scope: !3081)
!3095 = !DILocation(line: 150, column: 7, scope: !3081)
!3096 = !DILocation(line: 154, column: 7, scope: !3081)
!3097 = !DILocation(line: 159, column: 7, scope: !3081)
!3098 = !DILocation(line: 163, column: 7, scope: !3081)
!3099 = !DILocation(line: 170, column: 7, scope: !3081)
!3100 = !DILocation(line: 174, column: 7, scope: !3081)
!3101 = !DILocation(line: 176, column: 1, scope: !3024)
!3102 = distinct !DISubprogram(name: "version_etc_ar", scope: !683, file: !683, line: 183, type: !3103, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !3105)
!3103 = !DISubroutineType(types: !3104)
!3104 = !{null, !3027, !119, !119, !119, !3061}
!3105 = !{!3106, !3107, !3108, !3109, !3110, !3111}
!3106 = !DILocalVariable(name: "stream", arg: 1, scope: !3102, file: !683, line: 183, type: !3027)
!3107 = !DILocalVariable(name: "command_name", arg: 2, scope: !3102, file: !683, line: 184, type: !119)
!3108 = !DILocalVariable(name: "package", arg: 3, scope: !3102, file: !683, line: 184, type: !119)
!3109 = !DILocalVariable(name: "version", arg: 4, scope: !3102, file: !683, line: 185, type: !119)
!3110 = !DILocalVariable(name: "authors", arg: 5, scope: !3102, file: !683, line: 185, type: !3061)
!3111 = !DILocalVariable(name: "n_authors", scope: !3102, file: !683, line: 187, type: !116)
!3112 = !DILocation(line: 0, scope: !3102)
!3113 = !DILocation(line: 189, column: 8, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3102, file: !683, line: 189, column: 3)
!3115 = !DILocation(line: 189, scope: !3114)
!3116 = !DILocation(line: 189, column: 23, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !3114, file: !683, line: 189, column: 3)
!3118 = !DILocation(line: 189, column: 3, scope: !3114)
!3119 = !DILocation(line: 189, column: 52, scope: !3117)
!3120 = distinct !{!3120, !3118, !3121, !1020}
!3121 = !DILocation(line: 190, column: 5, scope: !3114)
!3122 = !DILocation(line: 191, column: 3, scope: !3102)
!3123 = !DILocation(line: 192, column: 1, scope: !3102)
!3124 = distinct !DISubprogram(name: "version_etc_va", scope: !683, file: !683, line: 199, type: !3125, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !3138)
!3125 = !DISubroutineType(types: !3126)
!3126 = !{null, !3027, !119, !119, !119, !3127}
!3127 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !481, line: 52, baseType: !3128)
!3128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !483, line: 14, baseType: !3129)
!3129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3130, baseType: !3131)
!3130 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !3132)
!3132 = !{!3133, !3134, !3135, !3136, !3137}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3131, file: !3130, line: 192, baseType: !122, size: 64)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3131, file: !3130, line: 192, baseType: !122, size: 64, offset: 64)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3131, file: !3130, line: 192, baseType: !122, size: 64, offset: 128)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3131, file: !3130, line: 192, baseType: !83, size: 32, offset: 192)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3131, file: !3130, line: 192, baseType: !83, size: 32, offset: 224)
!3138 = !{!3139, !3140, !3141, !3142, !3143, !3144, !3145}
!3139 = !DILocalVariable(name: "stream", arg: 1, scope: !3124, file: !683, line: 199, type: !3027)
!3140 = !DILocalVariable(name: "command_name", arg: 2, scope: !3124, file: !683, line: 200, type: !119)
!3141 = !DILocalVariable(name: "package", arg: 3, scope: !3124, file: !683, line: 200, type: !119)
!3142 = !DILocalVariable(name: "version", arg: 4, scope: !3124, file: !683, line: 201, type: !119)
!3143 = !DILocalVariable(name: "authors", arg: 5, scope: !3124, file: !683, line: 201, type: !3127)
!3144 = !DILocalVariable(name: "n_authors", scope: !3124, file: !683, line: 203, type: !116)
!3145 = !DILocalVariable(name: "authtab", scope: !3124, file: !683, line: 204, type: !3146)
!3146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 640, elements: !132)
!3147 = !DILocation(line: 0, scope: !3124)
!3148 = !DILocation(line: 201, column: 46, scope: !3124)
!3149 = !DILocation(line: 204, column: 3, scope: !3124)
!3150 = !DILocation(line: 204, column: 15, scope: !3124)
!3151 = !DILocation(line: 208, column: 35, scope: !3152)
!3152 = distinct !DILexicalBlock(scope: !3153, file: !683, line: 206, column: 3)
!3153 = distinct !DILexicalBlock(scope: !3124, file: !683, line: 206, column: 3)
!3154 = !DILocation(line: 208, column: 33, scope: !3152)
!3155 = !DILocation(line: 208, column: 67, scope: !3152)
!3156 = !DILocation(line: 206, column: 3, scope: !3153)
!3157 = !DILocation(line: 208, column: 14, scope: !3152)
!3158 = !DILocation(line: 0, scope: !3153)
!3159 = !DILocation(line: 211, column: 3, scope: !3124)
!3160 = !DILocation(line: 213, column: 1, scope: !3124)
!3161 = distinct !DISubprogram(name: "version_etc", scope: !683, file: !683, line: 230, type: !3162, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !3164)
!3162 = !DISubroutineType(types: !3163)
!3163 = !{null, !3027, !119, !119, !119, null}
!3164 = !{!3165, !3166, !3167, !3168, !3169}
!3165 = !DILocalVariable(name: "stream", arg: 1, scope: !3161, file: !683, line: 230, type: !3027)
!3166 = !DILocalVariable(name: "command_name", arg: 2, scope: !3161, file: !683, line: 231, type: !119)
!3167 = !DILocalVariable(name: "package", arg: 3, scope: !3161, file: !683, line: 231, type: !119)
!3168 = !DILocalVariable(name: "version", arg: 4, scope: !3161, file: !683, line: 232, type: !119)
!3169 = !DILocalVariable(name: "authors", scope: !3161, file: !683, line: 234, type: !3127)
!3170 = !DILocation(line: 0, scope: !3161)
!3171 = !DILocation(line: 234, column: 3, scope: !3161)
!3172 = !DILocation(line: 234, column: 11, scope: !3161)
!3173 = !DILocation(line: 235, column: 3, scope: !3161)
!3174 = !DILocation(line: 236, column: 3, scope: !3161)
!3175 = !DILocation(line: 237, column: 3, scope: !3161)
!3176 = !DILocation(line: 238, column: 1, scope: !3161)
!3177 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !683, file: !683, line: 241, type: !522, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !966)
!3178 = !DILocation(line: 243, column: 3, scope: !3177)
!3179 = !DILocation(line: 248, column: 3, scope: !3177)
!3180 = !DILocation(line: 254, column: 3, scope: !3177)
!3181 = !DILocation(line: 259, column: 3, scope: !3177)
!3182 = !DILocation(line: 261, column: 1, scope: !3177)
!3183 = distinct !DISubprogram(name: "xnrealloc", scope: !3184, file: !3184, line: 147, type: !3185, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3187)
!3184 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3185 = !DISubroutineType(types: !3186)
!3186 = !{!122, !122, !116, !116}
!3187 = !{!3188, !3189, !3190}
!3188 = !DILocalVariable(name: "p", arg: 1, scope: !3183, file: !3184, line: 147, type: !122)
!3189 = !DILocalVariable(name: "n", arg: 2, scope: !3183, file: !3184, line: 147, type: !116)
!3190 = !DILocalVariable(name: "s", arg: 3, scope: !3183, file: !3184, line: 147, type: !116)
!3191 = !DILocation(line: 0, scope: !3183)
!3192 = !DILocalVariable(name: "p", arg: 1, scope: !3193, file: !811, line: 83, type: !122)
!3193 = distinct !DISubprogram(name: "xreallocarray", scope: !811, file: !811, line: 83, type: !3185, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3194)
!3194 = !{!3192, !3195, !3196}
!3195 = !DILocalVariable(name: "n", arg: 2, scope: !3193, file: !811, line: 83, type: !116)
!3196 = !DILocalVariable(name: "s", arg: 3, scope: !3193, file: !811, line: 83, type: !116)
!3197 = !DILocation(line: 0, scope: !3193, inlinedAt: !3198)
!3198 = distinct !DILocation(line: 149, column: 10, scope: !3183)
!3199 = !DILocation(line: 85, column: 25, scope: !3193, inlinedAt: !3198)
!3200 = !DILocalVariable(name: "p", arg: 1, scope: !3201, file: !811, line: 37, type: !122)
!3201 = distinct !DISubprogram(name: "check_nonnull", scope: !811, file: !811, line: 37, type: !3202, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3204)
!3202 = !DISubroutineType(types: !3203)
!3203 = !{!122, !122}
!3204 = !{!3200}
!3205 = !DILocation(line: 0, scope: !3201, inlinedAt: !3206)
!3206 = distinct !DILocation(line: 85, column: 10, scope: !3193, inlinedAt: !3198)
!3207 = !DILocation(line: 39, column: 8, scope: !3208, inlinedAt: !3206)
!3208 = distinct !DILexicalBlock(scope: !3201, file: !811, line: 39, column: 7)
!3209 = !DILocation(line: 39, column: 7, scope: !3201, inlinedAt: !3206)
!3210 = !DILocation(line: 40, column: 5, scope: !3208, inlinedAt: !3206)
!3211 = !DILocation(line: 149, column: 3, scope: !3183)
!3212 = !DILocation(line: 0, scope: !3193)
!3213 = !DILocation(line: 85, column: 25, scope: !3193)
!3214 = !DILocation(line: 0, scope: !3201, inlinedAt: !3215)
!3215 = distinct !DILocation(line: 85, column: 10, scope: !3193)
!3216 = !DILocation(line: 39, column: 8, scope: !3208, inlinedAt: !3215)
!3217 = !DILocation(line: 39, column: 7, scope: !3201, inlinedAt: !3215)
!3218 = !DILocation(line: 40, column: 5, scope: !3208, inlinedAt: !3215)
!3219 = !DILocation(line: 85, column: 3, scope: !3193)
!3220 = distinct !DISubprogram(name: "xmalloc", scope: !811, file: !811, line: 47, type: !3221, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3223)
!3221 = !DISubroutineType(types: !3222)
!3222 = !{!122, !116}
!3223 = !{!3224}
!3224 = !DILocalVariable(name: "s", arg: 1, scope: !3220, file: !811, line: 47, type: !116)
!3225 = !DILocation(line: 0, scope: !3220)
!3226 = !DILocation(line: 49, column: 25, scope: !3220)
!3227 = !DILocation(line: 0, scope: !3201, inlinedAt: !3228)
!3228 = distinct !DILocation(line: 49, column: 10, scope: !3220)
!3229 = !DILocation(line: 39, column: 8, scope: !3208, inlinedAt: !3228)
!3230 = !DILocation(line: 39, column: 7, scope: !3201, inlinedAt: !3228)
!3231 = !DILocation(line: 40, column: 5, scope: !3208, inlinedAt: !3228)
!3232 = !DILocation(line: 49, column: 3, scope: !3220)
!3233 = !DISubprogram(name: "malloc", scope: !1128, file: !1128, line: 540, type: !3221, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !966)
!3234 = distinct !DISubprogram(name: "ximalloc", scope: !811, file: !811, line: 53, type: !3235, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3237)
!3235 = !DISubroutineType(types: !3236)
!3236 = !{!122, !830}
!3237 = !{!3238}
!3238 = !DILocalVariable(name: "s", arg: 1, scope: !3234, file: !811, line: 53, type: !830)
!3239 = !DILocation(line: 0, scope: !3234)
!3240 = !DILocalVariable(name: "s", arg: 1, scope: !3241, file: !3242, line: 55, type: !830)
!3241 = distinct !DISubprogram(name: "imalloc", scope: !3242, file: !3242, line: 55, type: !3235, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3243)
!3242 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3243 = !{!3240}
!3244 = !DILocation(line: 0, scope: !3241, inlinedAt: !3245)
!3245 = distinct !DILocation(line: 55, column: 25, scope: !3234)
!3246 = !DILocation(line: 57, column: 26, scope: !3241, inlinedAt: !3245)
!3247 = !DILocation(line: 0, scope: !3201, inlinedAt: !3248)
!3248 = distinct !DILocation(line: 55, column: 10, scope: !3234)
!3249 = !DILocation(line: 39, column: 8, scope: !3208, inlinedAt: !3248)
!3250 = !DILocation(line: 39, column: 7, scope: !3201, inlinedAt: !3248)
!3251 = !DILocation(line: 40, column: 5, scope: !3208, inlinedAt: !3248)
!3252 = !DILocation(line: 55, column: 3, scope: !3234)
!3253 = distinct !DISubprogram(name: "xcharalloc", scope: !811, file: !811, line: 59, type: !3254, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3256)
!3254 = !DISubroutineType(types: !3255)
!3255 = !{!85, !116}
!3256 = !{!3257}
!3257 = !DILocalVariable(name: "n", arg: 1, scope: !3253, file: !811, line: 59, type: !116)
!3258 = !DILocation(line: 0, scope: !3253)
!3259 = !DILocation(line: 0, scope: !3220, inlinedAt: !3260)
!3260 = distinct !DILocation(line: 61, column: 10, scope: !3253)
!3261 = !DILocation(line: 49, column: 25, scope: !3220, inlinedAt: !3260)
!3262 = !DILocation(line: 0, scope: !3201, inlinedAt: !3263)
!3263 = distinct !DILocation(line: 49, column: 10, scope: !3220, inlinedAt: !3260)
!3264 = !DILocation(line: 39, column: 8, scope: !3208, inlinedAt: !3263)
!3265 = !DILocation(line: 39, column: 7, scope: !3201, inlinedAt: !3263)
!3266 = !DILocation(line: 40, column: 5, scope: !3208, inlinedAt: !3263)
!3267 = !DILocation(line: 61, column: 3, scope: !3253)
!3268 = distinct !DISubprogram(name: "xrealloc", scope: !811, file: !811, line: 68, type: !3269, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3271)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{!122, !122, !116}
!3271 = !{!3272, !3273}
!3272 = !DILocalVariable(name: "p", arg: 1, scope: !3268, file: !811, line: 68, type: !122)
!3273 = !DILocalVariable(name: "s", arg: 2, scope: !3268, file: !811, line: 68, type: !116)
!3274 = !DILocation(line: 0, scope: !3268)
!3275 = !DILocalVariable(name: "ptr", arg: 1, scope: !3276, file: !3277, line: 2057, type: !122)
!3276 = distinct !DISubprogram(name: "rpl_realloc", scope: !3277, file: !3277, line: 2057, type: !3269, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3278)
!3277 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3278 = !{!3275, !3279}
!3279 = !DILocalVariable(name: "size", arg: 2, scope: !3276, file: !3277, line: 2057, type: !116)
!3280 = !DILocation(line: 0, scope: !3276, inlinedAt: !3281)
!3281 = distinct !DILocation(line: 70, column: 25, scope: !3268)
!3282 = !DILocation(line: 2059, column: 24, scope: !3276, inlinedAt: !3281)
!3283 = !DILocation(line: 2059, column: 10, scope: !3276, inlinedAt: !3281)
!3284 = !DILocation(line: 0, scope: !3201, inlinedAt: !3285)
!3285 = distinct !DILocation(line: 70, column: 10, scope: !3268)
!3286 = !DILocation(line: 39, column: 8, scope: !3208, inlinedAt: !3285)
!3287 = !DILocation(line: 39, column: 7, scope: !3201, inlinedAt: !3285)
!3288 = !DILocation(line: 40, column: 5, scope: !3208, inlinedAt: !3285)
!3289 = !DILocation(line: 70, column: 3, scope: !3268)
!3290 = !DISubprogram(name: "realloc", scope: !1128, file: !1128, line: 551, type: !3269, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !966)
!3291 = distinct !DISubprogram(name: "xirealloc", scope: !811, file: !811, line: 74, type: !3292, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3294)
!3292 = !DISubroutineType(types: !3293)
!3293 = !{!122, !122, !830}
!3294 = !{!3295, !3296}
!3295 = !DILocalVariable(name: "p", arg: 1, scope: !3291, file: !811, line: 74, type: !122)
!3296 = !DILocalVariable(name: "s", arg: 2, scope: !3291, file: !811, line: 74, type: !830)
!3297 = !DILocation(line: 0, scope: !3291)
!3298 = !DILocalVariable(name: "p", arg: 1, scope: !3299, file: !3242, line: 66, type: !122)
!3299 = distinct !DISubprogram(name: "irealloc", scope: !3242, file: !3242, line: 66, type: !3292, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3300)
!3300 = !{!3298, !3301}
!3301 = !DILocalVariable(name: "s", arg: 2, scope: !3299, file: !3242, line: 66, type: !830)
!3302 = !DILocation(line: 0, scope: !3299, inlinedAt: !3303)
!3303 = distinct !DILocation(line: 76, column: 25, scope: !3291)
!3304 = !DILocation(line: 0, scope: !3276, inlinedAt: !3305)
!3305 = distinct !DILocation(line: 68, column: 26, scope: !3299, inlinedAt: !3303)
!3306 = !DILocation(line: 2059, column: 24, scope: !3276, inlinedAt: !3305)
!3307 = !DILocation(line: 2059, column: 10, scope: !3276, inlinedAt: !3305)
!3308 = !DILocation(line: 0, scope: !3201, inlinedAt: !3309)
!3309 = distinct !DILocation(line: 76, column: 10, scope: !3291)
!3310 = !DILocation(line: 39, column: 8, scope: !3208, inlinedAt: !3309)
!3311 = !DILocation(line: 39, column: 7, scope: !3201, inlinedAt: !3309)
!3312 = !DILocation(line: 40, column: 5, scope: !3208, inlinedAt: !3309)
!3313 = !DILocation(line: 76, column: 3, scope: !3291)
!3314 = distinct !DISubprogram(name: "xireallocarray", scope: !811, file: !811, line: 89, type: !3315, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3317)
!3315 = !DISubroutineType(types: !3316)
!3316 = !{!122, !122, !830, !830}
!3317 = !{!3318, !3319, !3320}
!3318 = !DILocalVariable(name: "p", arg: 1, scope: !3314, file: !811, line: 89, type: !122)
!3319 = !DILocalVariable(name: "n", arg: 2, scope: !3314, file: !811, line: 89, type: !830)
!3320 = !DILocalVariable(name: "s", arg: 3, scope: !3314, file: !811, line: 89, type: !830)
!3321 = !DILocation(line: 0, scope: !3314)
!3322 = !DILocalVariable(name: "p", arg: 1, scope: !3323, file: !3242, line: 98, type: !122)
!3323 = distinct !DISubprogram(name: "ireallocarray", scope: !3242, file: !3242, line: 98, type: !3315, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3324)
!3324 = !{!3322, !3325, !3326}
!3325 = !DILocalVariable(name: "n", arg: 2, scope: !3323, file: !3242, line: 98, type: !830)
!3326 = !DILocalVariable(name: "s", arg: 3, scope: !3323, file: !3242, line: 98, type: !830)
!3327 = !DILocation(line: 0, scope: !3323, inlinedAt: !3328)
!3328 = distinct !DILocation(line: 91, column: 25, scope: !3314)
!3329 = !DILocation(line: 101, column: 13, scope: !3323, inlinedAt: !3328)
!3330 = !DILocation(line: 0, scope: !3201, inlinedAt: !3331)
!3331 = distinct !DILocation(line: 91, column: 10, scope: !3314)
!3332 = !DILocation(line: 39, column: 8, scope: !3208, inlinedAt: !3331)
!3333 = !DILocation(line: 39, column: 7, scope: !3201, inlinedAt: !3331)
!3334 = !DILocation(line: 40, column: 5, scope: !3208, inlinedAt: !3331)
!3335 = !DILocation(line: 91, column: 3, scope: !3314)
!3336 = distinct !DISubprogram(name: "xnmalloc", scope: !811, file: !811, line: 98, type: !3337, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3339)
!3337 = !DISubroutineType(types: !3338)
!3338 = !{!122, !116, !116}
!3339 = !{!3340, !3341}
!3340 = !DILocalVariable(name: "n", arg: 1, scope: !3336, file: !811, line: 98, type: !116)
!3341 = !DILocalVariable(name: "s", arg: 2, scope: !3336, file: !811, line: 98, type: !116)
!3342 = !DILocation(line: 0, scope: !3336)
!3343 = !DILocation(line: 0, scope: !3193, inlinedAt: !3344)
!3344 = distinct !DILocation(line: 100, column: 10, scope: !3336)
!3345 = !DILocation(line: 85, column: 25, scope: !3193, inlinedAt: !3344)
!3346 = !DILocation(line: 0, scope: !3201, inlinedAt: !3347)
!3347 = distinct !DILocation(line: 85, column: 10, scope: !3193, inlinedAt: !3344)
!3348 = !DILocation(line: 39, column: 8, scope: !3208, inlinedAt: !3347)
!3349 = !DILocation(line: 39, column: 7, scope: !3201, inlinedAt: !3347)
!3350 = !DILocation(line: 40, column: 5, scope: !3208, inlinedAt: !3347)
!3351 = !DILocation(line: 100, column: 3, scope: !3336)
!3352 = distinct !DISubprogram(name: "xinmalloc", scope: !811, file: !811, line: 104, type: !3353, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3355)
!3353 = !DISubroutineType(types: !3354)
!3354 = !{!122, !830, !830}
!3355 = !{!3356, !3357}
!3356 = !DILocalVariable(name: "n", arg: 1, scope: !3352, file: !811, line: 104, type: !830)
!3357 = !DILocalVariable(name: "s", arg: 2, scope: !3352, file: !811, line: 104, type: !830)
!3358 = !DILocation(line: 0, scope: !3352)
!3359 = !DILocation(line: 0, scope: !3314, inlinedAt: !3360)
!3360 = distinct !DILocation(line: 106, column: 10, scope: !3352)
!3361 = !DILocation(line: 0, scope: !3323, inlinedAt: !3362)
!3362 = distinct !DILocation(line: 91, column: 25, scope: !3314, inlinedAt: !3360)
!3363 = !DILocation(line: 101, column: 13, scope: !3323, inlinedAt: !3362)
!3364 = !DILocation(line: 0, scope: !3201, inlinedAt: !3365)
!3365 = distinct !DILocation(line: 91, column: 10, scope: !3314, inlinedAt: !3360)
!3366 = !DILocation(line: 39, column: 8, scope: !3208, inlinedAt: !3365)
!3367 = !DILocation(line: 39, column: 7, scope: !3201, inlinedAt: !3365)
!3368 = !DILocation(line: 40, column: 5, scope: !3208, inlinedAt: !3365)
!3369 = !DILocation(line: 106, column: 3, scope: !3352)
!3370 = distinct !DISubprogram(name: "x2realloc", scope: !811, file: !811, line: 116, type: !3371, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3373)
!3371 = !DISubroutineType(types: !3372)
!3372 = !{!122, !122, !817}
!3373 = !{!3374, !3375}
!3374 = !DILocalVariable(name: "p", arg: 1, scope: !3370, file: !811, line: 116, type: !122)
!3375 = !DILocalVariable(name: "ps", arg: 2, scope: !3370, file: !811, line: 116, type: !817)
!3376 = !DILocation(line: 0, scope: !3370)
!3377 = !DILocation(line: 0, scope: !814, inlinedAt: !3378)
!3378 = distinct !DILocation(line: 118, column: 10, scope: !3370)
!3379 = !DILocation(line: 178, column: 14, scope: !814, inlinedAt: !3378)
!3380 = !DILocation(line: 180, column: 9, scope: !3381, inlinedAt: !3378)
!3381 = distinct !DILexicalBlock(scope: !814, file: !811, line: 180, column: 7)
!3382 = !DILocation(line: 180, column: 7, scope: !814, inlinedAt: !3378)
!3383 = !DILocation(line: 182, column: 13, scope: !3384, inlinedAt: !3378)
!3384 = distinct !DILexicalBlock(scope: !3385, file: !811, line: 182, column: 11)
!3385 = distinct !DILexicalBlock(scope: !3381, file: !811, line: 181, column: 5)
!3386 = !DILocation(line: 182, column: 11, scope: !3385, inlinedAt: !3378)
!3387 = !DILocation(line: 197, column: 11, scope: !3388, inlinedAt: !3378)
!3388 = distinct !DILexicalBlock(scope: !3389, file: !811, line: 197, column: 11)
!3389 = distinct !DILexicalBlock(scope: !3381, file: !811, line: 195, column: 5)
!3390 = !DILocation(line: 197, column: 11, scope: !3389, inlinedAt: !3378)
!3391 = !DILocation(line: 198, column: 9, scope: !3388, inlinedAt: !3378)
!3392 = !DILocation(line: 0, scope: !3193, inlinedAt: !3393)
!3393 = distinct !DILocation(line: 201, column: 7, scope: !814, inlinedAt: !3378)
!3394 = !DILocation(line: 85, column: 25, scope: !3193, inlinedAt: !3393)
!3395 = !DILocation(line: 0, scope: !3201, inlinedAt: !3396)
!3396 = distinct !DILocation(line: 85, column: 10, scope: !3193, inlinedAt: !3393)
!3397 = !DILocation(line: 39, column: 8, scope: !3208, inlinedAt: !3396)
!3398 = !DILocation(line: 39, column: 7, scope: !3201, inlinedAt: !3396)
!3399 = !DILocation(line: 40, column: 5, scope: !3208, inlinedAt: !3396)
!3400 = !DILocation(line: 202, column: 7, scope: !814, inlinedAt: !3378)
!3401 = !DILocation(line: 118, column: 3, scope: !3370)
!3402 = !DILocation(line: 0, scope: !814)
!3403 = !DILocation(line: 178, column: 14, scope: !814)
!3404 = !DILocation(line: 180, column: 9, scope: !3381)
!3405 = !DILocation(line: 180, column: 7, scope: !814)
!3406 = !DILocation(line: 182, column: 13, scope: !3384)
!3407 = !DILocation(line: 182, column: 11, scope: !3385)
!3408 = !DILocation(line: 190, column: 30, scope: !3409)
!3409 = distinct !DILexicalBlock(scope: !3384, file: !811, line: 183, column: 9)
!3410 = !DILocation(line: 191, column: 16, scope: !3409)
!3411 = !DILocation(line: 191, column: 13, scope: !3409)
!3412 = !DILocation(line: 192, column: 9, scope: !3409)
!3413 = !DILocation(line: 197, column: 11, scope: !3388)
!3414 = !DILocation(line: 197, column: 11, scope: !3389)
!3415 = !DILocation(line: 198, column: 9, scope: !3388)
!3416 = !DILocation(line: 0, scope: !3193, inlinedAt: !3417)
!3417 = distinct !DILocation(line: 201, column: 7, scope: !814)
!3418 = !DILocation(line: 85, column: 25, scope: !3193, inlinedAt: !3417)
!3419 = !DILocation(line: 0, scope: !3201, inlinedAt: !3420)
!3420 = distinct !DILocation(line: 85, column: 10, scope: !3193, inlinedAt: !3417)
!3421 = !DILocation(line: 39, column: 8, scope: !3208, inlinedAt: !3420)
!3422 = !DILocation(line: 39, column: 7, scope: !3201, inlinedAt: !3420)
!3423 = !DILocation(line: 40, column: 5, scope: !3208, inlinedAt: !3420)
!3424 = !DILocation(line: 202, column: 7, scope: !814)
!3425 = !DILocation(line: 203, column: 3, scope: !814)
!3426 = !DILocation(line: 0, scope: !826)
!3427 = !DILocation(line: 230, column: 14, scope: !826)
!3428 = !DILocation(line: 238, column: 7, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !826, file: !811, line: 238, column: 7)
!3430 = !DILocation(line: 238, column: 7, scope: !826)
!3431 = !DILocation(line: 240, column: 9, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !826, file: !811, line: 240, column: 7)
!3433 = !DILocation(line: 240, column: 18, scope: !3432)
!3434 = !DILocation(line: 253, column: 8, scope: !826)
!3435 = !DILocation(line: 258, column: 27, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !3437, file: !811, line: 257, column: 5)
!3437 = distinct !DILexicalBlock(scope: !826, file: !811, line: 256, column: 7)
!3438 = !DILocation(line: 259, column: 32, scope: !3436)
!3439 = !DILocation(line: 260, column: 5, scope: !3436)
!3440 = !DILocation(line: 262, column: 9, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !826, file: !811, line: 262, column: 7)
!3442 = !DILocation(line: 262, column: 7, scope: !826)
!3443 = !DILocation(line: 263, column: 9, scope: !3441)
!3444 = !DILocation(line: 263, column: 5, scope: !3441)
!3445 = !DILocation(line: 264, column: 9, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !826, file: !811, line: 264, column: 7)
!3447 = !DILocation(line: 264, column: 14, scope: !3446)
!3448 = !DILocation(line: 265, column: 7, scope: !3446)
!3449 = !DILocation(line: 265, column: 11, scope: !3446)
!3450 = !DILocation(line: 266, column: 11, scope: !3446)
!3451 = !DILocation(line: 267, column: 14, scope: !3446)
!3452 = !DILocation(line: 264, column: 7, scope: !826)
!3453 = !DILocation(line: 268, column: 5, scope: !3446)
!3454 = !DILocation(line: 0, scope: !3268, inlinedAt: !3455)
!3455 = distinct !DILocation(line: 269, column: 8, scope: !826)
!3456 = !DILocation(line: 0, scope: !3276, inlinedAt: !3457)
!3457 = distinct !DILocation(line: 70, column: 25, scope: !3268, inlinedAt: !3455)
!3458 = !DILocation(line: 2059, column: 24, scope: !3276, inlinedAt: !3457)
!3459 = !DILocation(line: 2059, column: 10, scope: !3276, inlinedAt: !3457)
!3460 = !DILocation(line: 0, scope: !3201, inlinedAt: !3461)
!3461 = distinct !DILocation(line: 70, column: 10, scope: !3268, inlinedAt: !3455)
!3462 = !DILocation(line: 39, column: 8, scope: !3208, inlinedAt: !3461)
!3463 = !DILocation(line: 39, column: 7, scope: !3201, inlinedAt: !3461)
!3464 = !DILocation(line: 40, column: 5, scope: !3208, inlinedAt: !3461)
!3465 = !DILocation(line: 270, column: 7, scope: !826)
!3466 = !DILocation(line: 271, column: 3, scope: !826)
!3467 = distinct !DISubprogram(name: "xzalloc", scope: !811, file: !811, line: 279, type: !3221, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3468)
!3468 = !{!3469}
!3469 = !DILocalVariable(name: "s", arg: 1, scope: !3467, file: !811, line: 279, type: !116)
!3470 = !DILocation(line: 0, scope: !3467)
!3471 = !DILocalVariable(name: "n", arg: 1, scope: !3472, file: !811, line: 294, type: !116)
!3472 = distinct !DISubprogram(name: "xcalloc", scope: !811, file: !811, line: 294, type: !3337, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3473)
!3473 = !{!3471, !3474}
!3474 = !DILocalVariable(name: "s", arg: 2, scope: !3472, file: !811, line: 294, type: !116)
!3475 = !DILocation(line: 0, scope: !3472, inlinedAt: !3476)
!3476 = distinct !DILocation(line: 281, column: 10, scope: !3467)
!3477 = !DILocation(line: 296, column: 25, scope: !3472, inlinedAt: !3476)
!3478 = !DILocation(line: 0, scope: !3201, inlinedAt: !3479)
!3479 = distinct !DILocation(line: 296, column: 10, scope: !3472, inlinedAt: !3476)
!3480 = !DILocation(line: 39, column: 8, scope: !3208, inlinedAt: !3479)
!3481 = !DILocation(line: 39, column: 7, scope: !3201, inlinedAt: !3479)
!3482 = !DILocation(line: 40, column: 5, scope: !3208, inlinedAt: !3479)
!3483 = !DILocation(line: 281, column: 3, scope: !3467)
!3484 = !DISubprogram(name: "calloc", scope: !1128, file: !1128, line: 543, type: !3337, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !966)
!3485 = !DILocation(line: 0, scope: !3472)
!3486 = !DILocation(line: 296, column: 25, scope: !3472)
!3487 = !DILocation(line: 0, scope: !3201, inlinedAt: !3488)
!3488 = distinct !DILocation(line: 296, column: 10, scope: !3472)
!3489 = !DILocation(line: 39, column: 8, scope: !3208, inlinedAt: !3488)
!3490 = !DILocation(line: 39, column: 7, scope: !3201, inlinedAt: !3488)
!3491 = !DILocation(line: 40, column: 5, scope: !3208, inlinedAt: !3488)
!3492 = !DILocation(line: 296, column: 3, scope: !3472)
!3493 = distinct !DISubprogram(name: "xizalloc", scope: !811, file: !811, line: 285, type: !3235, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3494)
!3494 = !{!3495}
!3495 = !DILocalVariable(name: "s", arg: 1, scope: !3493, file: !811, line: 285, type: !830)
!3496 = !DILocation(line: 0, scope: !3493)
!3497 = !DILocalVariable(name: "n", arg: 1, scope: !3498, file: !811, line: 300, type: !830)
!3498 = distinct !DISubprogram(name: "xicalloc", scope: !811, file: !811, line: 300, type: !3353, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3499)
!3499 = !{!3497, !3500}
!3500 = !DILocalVariable(name: "s", arg: 2, scope: !3498, file: !811, line: 300, type: !830)
!3501 = !DILocation(line: 0, scope: !3498, inlinedAt: !3502)
!3502 = distinct !DILocation(line: 287, column: 10, scope: !3493)
!3503 = !DILocalVariable(name: "n", arg: 1, scope: !3504, file: !3242, line: 77, type: !830)
!3504 = distinct !DISubprogram(name: "icalloc", scope: !3242, file: !3242, line: 77, type: !3353, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3505)
!3505 = !{!3503, !3506}
!3506 = !DILocalVariable(name: "s", arg: 2, scope: !3504, file: !3242, line: 77, type: !830)
!3507 = !DILocation(line: 0, scope: !3504, inlinedAt: !3508)
!3508 = distinct !DILocation(line: 302, column: 25, scope: !3498, inlinedAt: !3502)
!3509 = !DILocation(line: 91, column: 10, scope: !3504, inlinedAt: !3508)
!3510 = !DILocation(line: 0, scope: !3201, inlinedAt: !3511)
!3511 = distinct !DILocation(line: 302, column: 10, scope: !3498, inlinedAt: !3502)
!3512 = !DILocation(line: 39, column: 8, scope: !3208, inlinedAt: !3511)
!3513 = !DILocation(line: 39, column: 7, scope: !3201, inlinedAt: !3511)
!3514 = !DILocation(line: 40, column: 5, scope: !3208, inlinedAt: !3511)
!3515 = !DILocation(line: 287, column: 3, scope: !3493)
!3516 = !DILocation(line: 0, scope: !3498)
!3517 = !DILocation(line: 0, scope: !3504, inlinedAt: !3518)
!3518 = distinct !DILocation(line: 302, column: 25, scope: !3498)
!3519 = !DILocation(line: 91, column: 10, scope: !3504, inlinedAt: !3518)
!3520 = !DILocation(line: 0, scope: !3201, inlinedAt: !3521)
!3521 = distinct !DILocation(line: 302, column: 10, scope: !3498)
!3522 = !DILocation(line: 39, column: 8, scope: !3208, inlinedAt: !3521)
!3523 = !DILocation(line: 39, column: 7, scope: !3201, inlinedAt: !3521)
!3524 = !DILocation(line: 40, column: 5, scope: !3208, inlinedAt: !3521)
!3525 = !DILocation(line: 302, column: 3, scope: !3498)
!3526 = distinct !DISubprogram(name: "xmemdup", scope: !811, file: !811, line: 310, type: !3527, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3529)
!3527 = !DISubroutineType(types: !3528)
!3528 = !{!122, !1149, !116}
!3529 = !{!3530, !3531}
!3530 = !DILocalVariable(name: "p", arg: 1, scope: !3526, file: !811, line: 310, type: !1149)
!3531 = !DILocalVariable(name: "s", arg: 2, scope: !3526, file: !811, line: 310, type: !116)
!3532 = !DILocation(line: 0, scope: !3526)
!3533 = !DILocation(line: 0, scope: !3220, inlinedAt: !3534)
!3534 = distinct !DILocation(line: 312, column: 18, scope: !3526)
!3535 = !DILocation(line: 49, column: 25, scope: !3220, inlinedAt: !3534)
!3536 = !DILocation(line: 0, scope: !3201, inlinedAt: !3537)
!3537 = distinct !DILocation(line: 49, column: 10, scope: !3220, inlinedAt: !3534)
!3538 = !DILocation(line: 39, column: 8, scope: !3208, inlinedAt: !3537)
!3539 = !DILocation(line: 39, column: 7, scope: !3201, inlinedAt: !3537)
!3540 = !DILocation(line: 40, column: 5, scope: !3208, inlinedAt: !3537)
!3541 = !DILocalVariable(name: "__dest", arg: 1, scope: !3542, file: !1711, line: 26, type: !3545)
!3542 = distinct !DISubprogram(name: "memcpy", scope: !1711, file: !1711, line: 26, type: !3543, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3546)
!3543 = !DISubroutineType(types: !3544)
!3544 = !{!122, !3545, !1148, !116}
!3545 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !122)
!3546 = !{!3541, !3547, !3548}
!3547 = !DILocalVariable(name: "__src", arg: 2, scope: !3542, file: !1711, line: 26, type: !1148)
!3548 = !DILocalVariable(name: "__len", arg: 3, scope: !3542, file: !1711, line: 26, type: !116)
!3549 = !DILocation(line: 0, scope: !3542, inlinedAt: !3550)
!3550 = distinct !DILocation(line: 312, column: 10, scope: !3526)
!3551 = !DILocation(line: 29, column: 10, scope: !3542, inlinedAt: !3550)
!3552 = !DILocation(line: 312, column: 3, scope: !3526)
!3553 = distinct !DISubprogram(name: "ximemdup", scope: !811, file: !811, line: 316, type: !3554, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3556)
!3554 = !DISubroutineType(types: !3555)
!3555 = !{!122, !1149, !830}
!3556 = !{!3557, !3558}
!3557 = !DILocalVariable(name: "p", arg: 1, scope: !3553, file: !811, line: 316, type: !1149)
!3558 = !DILocalVariable(name: "s", arg: 2, scope: !3553, file: !811, line: 316, type: !830)
!3559 = !DILocation(line: 0, scope: !3553)
!3560 = !DILocation(line: 0, scope: !3234, inlinedAt: !3561)
!3561 = distinct !DILocation(line: 318, column: 18, scope: !3553)
!3562 = !DILocation(line: 0, scope: !3241, inlinedAt: !3563)
!3563 = distinct !DILocation(line: 55, column: 25, scope: !3234, inlinedAt: !3561)
!3564 = !DILocation(line: 57, column: 26, scope: !3241, inlinedAt: !3563)
!3565 = !DILocation(line: 0, scope: !3201, inlinedAt: !3566)
!3566 = distinct !DILocation(line: 55, column: 10, scope: !3234, inlinedAt: !3561)
!3567 = !DILocation(line: 39, column: 8, scope: !3208, inlinedAt: !3566)
!3568 = !DILocation(line: 39, column: 7, scope: !3201, inlinedAt: !3566)
!3569 = !DILocation(line: 40, column: 5, scope: !3208, inlinedAt: !3566)
!3570 = !DILocation(line: 0, scope: !3542, inlinedAt: !3571)
!3571 = distinct !DILocation(line: 318, column: 10, scope: !3553)
!3572 = !DILocation(line: 29, column: 10, scope: !3542, inlinedAt: !3571)
!3573 = !DILocation(line: 318, column: 3, scope: !3553)
!3574 = distinct !DISubprogram(name: "ximemdup0", scope: !811, file: !811, line: 325, type: !3575, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3577)
!3575 = !DISubroutineType(types: !3576)
!3576 = !{!85, !1149, !830}
!3577 = !{!3578, !3579, !3580}
!3578 = !DILocalVariable(name: "p", arg: 1, scope: !3574, file: !811, line: 325, type: !1149)
!3579 = !DILocalVariable(name: "s", arg: 2, scope: !3574, file: !811, line: 325, type: !830)
!3580 = !DILocalVariable(name: "result", scope: !3574, file: !811, line: 327, type: !85)
!3581 = !DILocation(line: 0, scope: !3574)
!3582 = !DILocation(line: 327, column: 30, scope: !3574)
!3583 = !DILocation(line: 0, scope: !3234, inlinedAt: !3584)
!3584 = distinct !DILocation(line: 327, column: 18, scope: !3574)
!3585 = !DILocation(line: 0, scope: !3241, inlinedAt: !3586)
!3586 = distinct !DILocation(line: 55, column: 25, scope: !3234, inlinedAt: !3584)
!3587 = !DILocation(line: 57, column: 26, scope: !3241, inlinedAt: !3586)
!3588 = !DILocation(line: 0, scope: !3201, inlinedAt: !3589)
!3589 = distinct !DILocation(line: 55, column: 10, scope: !3234, inlinedAt: !3584)
!3590 = !DILocation(line: 39, column: 8, scope: !3208, inlinedAt: !3589)
!3591 = !DILocation(line: 39, column: 7, scope: !3201, inlinedAt: !3589)
!3592 = !DILocation(line: 40, column: 5, scope: !3208, inlinedAt: !3589)
!3593 = !DILocation(line: 328, column: 3, scope: !3574)
!3594 = !DILocation(line: 328, column: 13, scope: !3574)
!3595 = !DILocation(line: 0, scope: !3542, inlinedAt: !3596)
!3596 = distinct !DILocation(line: 329, column: 10, scope: !3574)
!3597 = !DILocation(line: 29, column: 10, scope: !3542, inlinedAt: !3596)
!3598 = !DILocation(line: 329, column: 3, scope: !3574)
!3599 = distinct !DISubprogram(name: "xstrdup", scope: !811, file: !811, line: 335, type: !1130, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3600)
!3600 = !{!3601}
!3601 = !DILocalVariable(name: "string", arg: 1, scope: !3599, file: !811, line: 335, type: !119)
!3602 = !DILocation(line: 0, scope: !3599)
!3603 = !DILocation(line: 337, column: 27, scope: !3599)
!3604 = !DILocation(line: 337, column: 43, scope: !3599)
!3605 = !DILocation(line: 0, scope: !3526, inlinedAt: !3606)
!3606 = distinct !DILocation(line: 337, column: 10, scope: !3599)
!3607 = !DILocation(line: 0, scope: !3220, inlinedAt: !3608)
!3608 = distinct !DILocation(line: 312, column: 18, scope: !3526, inlinedAt: !3606)
!3609 = !DILocation(line: 49, column: 25, scope: !3220, inlinedAt: !3608)
!3610 = !DILocation(line: 0, scope: !3201, inlinedAt: !3611)
!3611 = distinct !DILocation(line: 49, column: 10, scope: !3220, inlinedAt: !3608)
!3612 = !DILocation(line: 39, column: 8, scope: !3208, inlinedAt: !3611)
!3613 = !DILocation(line: 39, column: 7, scope: !3201, inlinedAt: !3611)
!3614 = !DILocation(line: 40, column: 5, scope: !3208, inlinedAt: !3611)
!3615 = !DILocation(line: 0, scope: !3542, inlinedAt: !3616)
!3616 = distinct !DILocation(line: 312, column: 10, scope: !3526, inlinedAt: !3606)
!3617 = !DILocation(line: 29, column: 10, scope: !3542, inlinedAt: !3616)
!3618 = !DILocation(line: 337, column: 3, scope: !3599)
!3619 = distinct !DISubprogram(name: "xalloc_die", scope: !773, file: !773, line: 32, type: !522, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !844, retainedNodes: !3620)
!3620 = !{!3621}
!3621 = !DILocalVariable(name: "__errstatus", scope: !3622, file: !773, line: 34, type: !3623)
!3622 = distinct !DILexicalBlock(scope: !3619, file: !773, line: 34, column: 3)
!3623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!3624 = !DILocation(line: 34, column: 3, scope: !3622)
!3625 = !DILocation(line: 0, scope: !3622)
!3626 = !DILocation(line: 40, column: 3, scope: !3619)
!3627 = distinct !DISubprogram(name: "close_stream", scope: !847, file: !847, line: 55, type: !3628, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !846, retainedNodes: !3664)
!3628 = !DISubroutineType(types: !3629)
!3629 = !{!83, !3630}
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !186, line: 7, baseType: !3632)
!3632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !188, line: 49, size: 1728, elements: !3633)
!3633 = !{!3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663}
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3632, file: !188, line: 51, baseType: !83, size: 32)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3632, file: !188, line: 54, baseType: !85, size: 64, offset: 64)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3632, file: !188, line: 55, baseType: !85, size: 64, offset: 128)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3632, file: !188, line: 56, baseType: !85, size: 64, offset: 192)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3632, file: !188, line: 57, baseType: !85, size: 64, offset: 256)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3632, file: !188, line: 58, baseType: !85, size: 64, offset: 320)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3632, file: !188, line: 59, baseType: !85, size: 64, offset: 384)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3632, file: !188, line: 60, baseType: !85, size: 64, offset: 448)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3632, file: !188, line: 61, baseType: !85, size: 64, offset: 512)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3632, file: !188, line: 64, baseType: !85, size: 64, offset: 576)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3632, file: !188, line: 65, baseType: !85, size: 64, offset: 640)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3632, file: !188, line: 66, baseType: !85, size: 64, offset: 704)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3632, file: !188, line: 68, baseType: !203, size: 64, offset: 768)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3632, file: !188, line: 70, baseType: !3648, size: 64, offset: 832)
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3632, size: 64)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3632, file: !188, line: 72, baseType: !83, size: 32, offset: 896)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3632, file: !188, line: 73, baseType: !83, size: 32, offset: 928)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3632, file: !188, line: 74, baseType: !210, size: 64, offset: 960)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3632, file: !188, line: 77, baseType: !115, size: 16, offset: 1024)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3632, file: !188, line: 78, baseType: !215, size: 8, offset: 1040)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3632, file: !188, line: 79, baseType: !126, size: 8, offset: 1048)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3632, file: !188, line: 81, baseType: !218, size: 64, offset: 1088)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3632, file: !188, line: 89, baseType: !221, size: 64, offset: 1152)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3632, file: !188, line: 91, baseType: !223, size: 64, offset: 1216)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3632, file: !188, line: 92, baseType: !226, size: 64, offset: 1280)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3632, file: !188, line: 93, baseType: !3648, size: 64, offset: 1344)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3632, file: !188, line: 94, baseType: !122, size: 64, offset: 1408)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3632, file: !188, line: 95, baseType: !116, size: 64, offset: 1472)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3632, file: !188, line: 96, baseType: !83, size: 32, offset: 1536)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3632, file: !188, line: 98, baseType: !233, size: 160, offset: 1568)
!3664 = !{!3665, !3666, !3668, !3669}
!3665 = !DILocalVariable(name: "stream", arg: 1, scope: !3627, file: !847, line: 55, type: !3630)
!3666 = !DILocalVariable(name: "some_pending", scope: !3627, file: !847, line: 57, type: !3667)
!3667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!3668 = !DILocalVariable(name: "prev_fail", scope: !3627, file: !847, line: 58, type: !3667)
!3669 = !DILocalVariable(name: "fclose_fail", scope: !3627, file: !847, line: 59, type: !3667)
!3670 = !DILocation(line: 0, scope: !3627)
!3671 = !DILocation(line: 57, column: 30, scope: !3627)
!3672 = !DILocalVariable(name: "__stream", arg: 1, scope: !3673, file: !1239, line: 135, type: !3630)
!3673 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1239, file: !1239, line: 135, type: !3628, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !846, retainedNodes: !3674)
!3674 = !{!3672}
!3675 = !DILocation(line: 0, scope: !3673, inlinedAt: !3676)
!3676 = distinct !DILocation(line: 58, column: 27, scope: !3627)
!3677 = !DILocation(line: 137, column: 10, scope: !3673, inlinedAt: !3676)
!3678 = !{!1247, !982, i64 0}
!3679 = !DILocation(line: 58, column: 43, scope: !3627)
!3680 = !DILocation(line: 59, column: 29, scope: !3627)
!3681 = !DILocation(line: 59, column: 45, scope: !3627)
!3682 = !DILocation(line: 69, column: 17, scope: !3683)
!3683 = distinct !DILexicalBlock(scope: !3627, file: !847, line: 69, column: 7)
!3684 = !DILocation(line: 57, column: 50, scope: !3627)
!3685 = !DILocation(line: 69, column: 33, scope: !3683)
!3686 = !DILocation(line: 69, column: 53, scope: !3683)
!3687 = !DILocation(line: 69, column: 59, scope: !3683)
!3688 = !DILocation(line: 69, column: 7, scope: !3627)
!3689 = !DILocation(line: 71, column: 11, scope: !3690)
!3690 = distinct !DILexicalBlock(scope: !3683, file: !847, line: 70, column: 5)
!3691 = !DILocation(line: 72, column: 9, scope: !3692)
!3692 = distinct !DILexicalBlock(scope: !3690, file: !847, line: 71, column: 11)
!3693 = !DILocation(line: 72, column: 15, scope: !3692)
!3694 = !DILocation(line: 77, column: 1, scope: !3627)
!3695 = !DISubprogram(name: "__fpending", scope: !3696, file: !3696, line: 75, type: !3697, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !966)
!3696 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3697 = !DISubroutineType(types: !3698)
!3698 = !{!116, !3630}
!3699 = distinct !DISubprogram(name: "rpl_fclose", scope: !849, file: !849, line: 58, type: !3700, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !848, retainedNodes: !3736)
!3700 = !DISubroutineType(types: !3701)
!3701 = !{!83, !3702}
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !186, line: 7, baseType: !3704)
!3704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !188, line: 49, size: 1728, elements: !3705)
!3705 = !{!3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3704, file: !188, line: 51, baseType: !83, size: 32)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3704, file: !188, line: 54, baseType: !85, size: 64, offset: 64)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3704, file: !188, line: 55, baseType: !85, size: 64, offset: 128)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3704, file: !188, line: 56, baseType: !85, size: 64, offset: 192)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3704, file: !188, line: 57, baseType: !85, size: 64, offset: 256)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3704, file: !188, line: 58, baseType: !85, size: 64, offset: 320)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3704, file: !188, line: 59, baseType: !85, size: 64, offset: 384)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3704, file: !188, line: 60, baseType: !85, size: 64, offset: 448)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3704, file: !188, line: 61, baseType: !85, size: 64, offset: 512)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3704, file: !188, line: 64, baseType: !85, size: 64, offset: 576)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3704, file: !188, line: 65, baseType: !85, size: 64, offset: 640)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3704, file: !188, line: 66, baseType: !85, size: 64, offset: 704)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3704, file: !188, line: 68, baseType: !203, size: 64, offset: 768)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3704, file: !188, line: 70, baseType: !3720, size: 64, offset: 832)
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3704, file: !188, line: 72, baseType: !83, size: 32, offset: 896)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3704, file: !188, line: 73, baseType: !83, size: 32, offset: 928)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3704, file: !188, line: 74, baseType: !210, size: 64, offset: 960)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3704, file: !188, line: 77, baseType: !115, size: 16, offset: 1024)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3704, file: !188, line: 78, baseType: !215, size: 8, offset: 1040)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3704, file: !188, line: 79, baseType: !126, size: 8, offset: 1048)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3704, file: !188, line: 81, baseType: !218, size: 64, offset: 1088)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3704, file: !188, line: 89, baseType: !221, size: 64, offset: 1152)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3704, file: !188, line: 91, baseType: !223, size: 64, offset: 1216)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3704, file: !188, line: 92, baseType: !226, size: 64, offset: 1280)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3704, file: !188, line: 93, baseType: !3720, size: 64, offset: 1344)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3704, file: !188, line: 94, baseType: !122, size: 64, offset: 1408)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3704, file: !188, line: 95, baseType: !116, size: 64, offset: 1472)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3704, file: !188, line: 96, baseType: !83, size: 32, offset: 1536)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3704, file: !188, line: 98, baseType: !233, size: 160, offset: 1568)
!3736 = !{!3737, !3738, !3739, !3740}
!3737 = !DILocalVariable(name: "fp", arg: 1, scope: !3699, file: !849, line: 58, type: !3702)
!3738 = !DILocalVariable(name: "saved_errno", scope: !3699, file: !849, line: 60, type: !83)
!3739 = !DILocalVariable(name: "fd", scope: !3699, file: !849, line: 63, type: !83)
!3740 = !DILocalVariable(name: "result", scope: !3699, file: !849, line: 74, type: !83)
!3741 = !DILocation(line: 0, scope: !3699)
!3742 = !DILocation(line: 63, column: 12, scope: !3699)
!3743 = !DILocation(line: 64, column: 10, scope: !3744)
!3744 = distinct !DILexicalBlock(scope: !3699, file: !849, line: 64, column: 7)
!3745 = !DILocation(line: 64, column: 7, scope: !3699)
!3746 = !DILocation(line: 65, column: 12, scope: !3744)
!3747 = !DILocation(line: 65, column: 5, scope: !3744)
!3748 = !DILocation(line: 70, column: 9, scope: !3749)
!3749 = distinct !DILexicalBlock(scope: !3699, file: !849, line: 70, column: 7)
!3750 = !DILocation(line: 70, column: 23, scope: !3749)
!3751 = !DILocation(line: 70, column: 33, scope: !3749)
!3752 = !DILocation(line: 70, column: 26, scope: !3749)
!3753 = !DILocation(line: 70, column: 59, scope: !3749)
!3754 = !DILocation(line: 71, column: 7, scope: !3749)
!3755 = !DILocation(line: 71, column: 10, scope: !3749)
!3756 = !DILocation(line: 70, column: 7, scope: !3699)
!3757 = !DILocation(line: 100, column: 12, scope: !3699)
!3758 = !DILocation(line: 105, column: 7, scope: !3699)
!3759 = !DILocation(line: 72, column: 19, scope: !3749)
!3760 = !DILocation(line: 105, column: 19, scope: !3761)
!3761 = distinct !DILexicalBlock(scope: !3699, file: !849, line: 105, column: 7)
!3762 = !DILocation(line: 107, column: 13, scope: !3763)
!3763 = distinct !DILexicalBlock(scope: !3761, file: !849, line: 106, column: 5)
!3764 = !DILocation(line: 109, column: 5, scope: !3763)
!3765 = !DILocation(line: 112, column: 1, scope: !3699)
!3766 = !DISubprogram(name: "fileno", scope: !481, file: !481, line: 809, type: !3700, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !966)
!3767 = !DISubprogram(name: "fclose", scope: !481, file: !481, line: 178, type: !3700, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !966)
!3768 = !DISubprogram(name: "__freading", scope: !3696, file: !3696, line: 51, type: !3700, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !966)
!3769 = !DISubprogram(name: "lseek", scope: !1439, file: !1439, line: 339, type: !3770, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !966)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{!210, !83, !210, !83}
!3772 = distinct !DISubprogram(name: "rpl_fflush", scope: !851, file: !851, line: 130, type: !3773, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !850, retainedNodes: !3809)
!3773 = !DISubroutineType(types: !3774)
!3774 = !{!83, !3775}
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !186, line: 7, baseType: !3777)
!3777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !188, line: 49, size: 1728, elements: !3778)
!3778 = !{!3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808}
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3777, file: !188, line: 51, baseType: !83, size: 32)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3777, file: !188, line: 54, baseType: !85, size: 64, offset: 64)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3777, file: !188, line: 55, baseType: !85, size: 64, offset: 128)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3777, file: !188, line: 56, baseType: !85, size: 64, offset: 192)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3777, file: !188, line: 57, baseType: !85, size: 64, offset: 256)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3777, file: !188, line: 58, baseType: !85, size: 64, offset: 320)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3777, file: !188, line: 59, baseType: !85, size: 64, offset: 384)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3777, file: !188, line: 60, baseType: !85, size: 64, offset: 448)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3777, file: !188, line: 61, baseType: !85, size: 64, offset: 512)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3777, file: !188, line: 64, baseType: !85, size: 64, offset: 576)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3777, file: !188, line: 65, baseType: !85, size: 64, offset: 640)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3777, file: !188, line: 66, baseType: !85, size: 64, offset: 704)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3777, file: !188, line: 68, baseType: !203, size: 64, offset: 768)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3777, file: !188, line: 70, baseType: !3793, size: 64, offset: 832)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3777, file: !188, line: 72, baseType: !83, size: 32, offset: 896)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3777, file: !188, line: 73, baseType: !83, size: 32, offset: 928)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3777, file: !188, line: 74, baseType: !210, size: 64, offset: 960)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3777, file: !188, line: 77, baseType: !115, size: 16, offset: 1024)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3777, file: !188, line: 78, baseType: !215, size: 8, offset: 1040)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3777, file: !188, line: 79, baseType: !126, size: 8, offset: 1048)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3777, file: !188, line: 81, baseType: !218, size: 64, offset: 1088)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3777, file: !188, line: 89, baseType: !221, size: 64, offset: 1152)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3777, file: !188, line: 91, baseType: !223, size: 64, offset: 1216)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3777, file: !188, line: 92, baseType: !226, size: 64, offset: 1280)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3777, file: !188, line: 93, baseType: !3793, size: 64, offset: 1344)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3777, file: !188, line: 94, baseType: !122, size: 64, offset: 1408)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3777, file: !188, line: 95, baseType: !116, size: 64, offset: 1472)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3777, file: !188, line: 96, baseType: !83, size: 32, offset: 1536)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3777, file: !188, line: 98, baseType: !233, size: 160, offset: 1568)
!3809 = !{!3810}
!3810 = !DILocalVariable(name: "stream", arg: 1, scope: !3772, file: !851, line: 130, type: !3775)
!3811 = !DILocation(line: 0, scope: !3772)
!3812 = !DILocation(line: 151, column: 14, scope: !3813)
!3813 = distinct !DILexicalBlock(scope: !3772, file: !851, line: 151, column: 7)
!3814 = !DILocation(line: 151, column: 22, scope: !3813)
!3815 = !DILocation(line: 151, column: 27, scope: !3813)
!3816 = !DILocation(line: 151, column: 7, scope: !3772)
!3817 = !DILocation(line: 152, column: 12, scope: !3813)
!3818 = !DILocation(line: 152, column: 5, scope: !3813)
!3819 = !DILocalVariable(name: "fp", arg: 1, scope: !3820, file: !851, line: 42, type: !3775)
!3820 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !851, file: !851, line: 42, type: !3821, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !850, retainedNodes: !3823)
!3821 = !DISubroutineType(types: !3822)
!3822 = !{null, !3775}
!3823 = !{!3819}
!3824 = !DILocation(line: 0, scope: !3820, inlinedAt: !3825)
!3825 = distinct !DILocation(line: 157, column: 3, scope: !3772)
!3826 = !DILocation(line: 44, column: 12, scope: !3827, inlinedAt: !3825)
!3827 = distinct !DILexicalBlock(scope: !3820, file: !851, line: 44, column: 7)
!3828 = !DILocation(line: 44, column: 19, scope: !3827, inlinedAt: !3825)
!3829 = !DILocation(line: 44, column: 7, scope: !3820, inlinedAt: !3825)
!3830 = !DILocation(line: 46, column: 5, scope: !3827, inlinedAt: !3825)
!3831 = !DILocation(line: 159, column: 10, scope: !3772)
!3832 = !DILocation(line: 159, column: 3, scope: !3772)
!3833 = !DILocation(line: 236, column: 1, scope: !3772)
!3834 = !DISubprogram(name: "fflush", scope: !481, file: !481, line: 230, type: !3773, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !966)
!3835 = distinct !DISubprogram(name: "rpl_fseeko", scope: !853, file: !853, line: 28, type: !3836, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !852, retainedNodes: !3873)
!3836 = !DISubroutineType(types: !3837)
!3837 = !{!83, !3838, !3872, !83}
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !186, line: 7, baseType: !3840)
!3840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !188, line: 49, size: 1728, elements: !3841)
!3841 = !{!3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3840, file: !188, line: 51, baseType: !83, size: 32)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3840, file: !188, line: 54, baseType: !85, size: 64, offset: 64)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3840, file: !188, line: 55, baseType: !85, size: 64, offset: 128)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3840, file: !188, line: 56, baseType: !85, size: 64, offset: 192)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3840, file: !188, line: 57, baseType: !85, size: 64, offset: 256)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3840, file: !188, line: 58, baseType: !85, size: 64, offset: 320)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3840, file: !188, line: 59, baseType: !85, size: 64, offset: 384)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3840, file: !188, line: 60, baseType: !85, size: 64, offset: 448)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3840, file: !188, line: 61, baseType: !85, size: 64, offset: 512)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3840, file: !188, line: 64, baseType: !85, size: 64, offset: 576)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3840, file: !188, line: 65, baseType: !85, size: 64, offset: 640)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3840, file: !188, line: 66, baseType: !85, size: 64, offset: 704)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3840, file: !188, line: 68, baseType: !203, size: 64, offset: 768)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3840, file: !188, line: 70, baseType: !3856, size: 64, offset: 832)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3840, file: !188, line: 72, baseType: !83, size: 32, offset: 896)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3840, file: !188, line: 73, baseType: !83, size: 32, offset: 928)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3840, file: !188, line: 74, baseType: !210, size: 64, offset: 960)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3840, file: !188, line: 77, baseType: !115, size: 16, offset: 1024)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3840, file: !188, line: 78, baseType: !215, size: 8, offset: 1040)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3840, file: !188, line: 79, baseType: !126, size: 8, offset: 1048)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3840, file: !188, line: 81, baseType: !218, size: 64, offset: 1088)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3840, file: !188, line: 89, baseType: !221, size: 64, offset: 1152)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3840, file: !188, line: 91, baseType: !223, size: 64, offset: 1216)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3840, file: !188, line: 92, baseType: !226, size: 64, offset: 1280)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3840, file: !188, line: 93, baseType: !3856, size: 64, offset: 1344)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3840, file: !188, line: 94, baseType: !122, size: 64, offset: 1408)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3840, file: !188, line: 95, baseType: !116, size: 64, offset: 1472)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3840, file: !188, line: 96, baseType: !83, size: 32, offset: 1536)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3840, file: !188, line: 98, baseType: !233, size: 160, offset: 1568)
!3872 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !481, line: 63, baseType: !210)
!3873 = !{!3874, !3875, !3876, !3877}
!3874 = !DILocalVariable(name: "fp", arg: 1, scope: !3835, file: !853, line: 28, type: !3838)
!3875 = !DILocalVariable(name: "offset", arg: 2, scope: !3835, file: !853, line: 28, type: !3872)
!3876 = !DILocalVariable(name: "whence", arg: 3, scope: !3835, file: !853, line: 28, type: !83)
!3877 = !DILocalVariable(name: "pos", scope: !3878, file: !853, line: 123, type: !3872)
!3878 = distinct !DILexicalBlock(scope: !3879, file: !853, line: 119, column: 5)
!3879 = distinct !DILexicalBlock(scope: !3835, file: !853, line: 55, column: 7)
!3880 = !DILocation(line: 0, scope: !3835)
!3881 = !DILocation(line: 55, column: 12, scope: !3879)
!3882 = !{!1247, !883, i64 16}
!3883 = !DILocation(line: 55, column: 33, scope: !3879)
!3884 = !{!1247, !883, i64 8}
!3885 = !DILocation(line: 55, column: 25, scope: !3879)
!3886 = !DILocation(line: 56, column: 7, scope: !3879)
!3887 = !DILocation(line: 56, column: 15, scope: !3879)
!3888 = !DILocation(line: 56, column: 37, scope: !3879)
!3889 = !{!1247, !883, i64 32}
!3890 = !DILocation(line: 56, column: 29, scope: !3879)
!3891 = !DILocation(line: 57, column: 7, scope: !3879)
!3892 = !DILocation(line: 57, column: 15, scope: !3879)
!3893 = !{!1247, !883, i64 72}
!3894 = !DILocation(line: 57, column: 29, scope: !3879)
!3895 = !DILocation(line: 55, column: 7, scope: !3835)
!3896 = !DILocation(line: 123, column: 26, scope: !3878)
!3897 = !DILocation(line: 123, column: 19, scope: !3878)
!3898 = !DILocation(line: 0, scope: !3878)
!3899 = !DILocation(line: 124, column: 15, scope: !3900)
!3900 = distinct !DILexicalBlock(scope: !3878, file: !853, line: 124, column: 11)
!3901 = !DILocation(line: 124, column: 11, scope: !3878)
!3902 = !DILocation(line: 135, column: 19, scope: !3878)
!3903 = !DILocation(line: 136, column: 12, scope: !3878)
!3904 = !DILocation(line: 136, column: 20, scope: !3878)
!3905 = !{!1247, !1248, i64 144}
!3906 = !DILocation(line: 167, column: 7, scope: !3878)
!3907 = !DILocation(line: 169, column: 10, scope: !3835)
!3908 = !DILocation(line: 169, column: 3, scope: !3835)
!3909 = !DILocation(line: 170, column: 1, scope: !3835)
!3910 = !DISubprogram(name: "fseeko", scope: !481, file: !481, line: 736, type: !3911, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !966)
!3911 = !DISubroutineType(types: !3912)
!3912 = !{!83, !3838, !210, !83}
!3913 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !780, file: !780, line: 100, type: !3914, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !3917)
!3914 = !DISubroutineType(types: !3915)
!3915 = !{!116, !1729, !119, !116, !3916}
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!3917 = !{!3918, !3919, !3920, !3921, !3922}
!3918 = !DILocalVariable(name: "pwc", arg: 1, scope: !3913, file: !780, line: 100, type: !1729)
!3919 = !DILocalVariable(name: "s", arg: 2, scope: !3913, file: !780, line: 100, type: !119)
!3920 = !DILocalVariable(name: "n", arg: 3, scope: !3913, file: !780, line: 100, type: !116)
!3921 = !DILocalVariable(name: "ps", arg: 4, scope: !3913, file: !780, line: 100, type: !3916)
!3922 = !DILocalVariable(name: "ret", scope: !3913, file: !780, line: 130, type: !116)
!3923 = !DILocation(line: 0, scope: !3913)
!3924 = !DILocation(line: 105, column: 9, scope: !3925)
!3925 = distinct !DILexicalBlock(scope: !3913, file: !780, line: 105, column: 7)
!3926 = !DILocation(line: 105, column: 7, scope: !3913)
!3927 = !DILocation(line: 117, column: 10, scope: !3928)
!3928 = distinct !DILexicalBlock(scope: !3913, file: !780, line: 117, column: 7)
!3929 = !DILocation(line: 117, column: 7, scope: !3913)
!3930 = !DILocation(line: 130, column: 16, scope: !3913)
!3931 = !DILocation(line: 135, column: 11, scope: !3932)
!3932 = distinct !DILexicalBlock(scope: !3913, file: !780, line: 135, column: 7)
!3933 = !DILocation(line: 135, column: 25, scope: !3932)
!3934 = !DILocation(line: 135, column: 30, scope: !3932)
!3935 = !DILocation(line: 135, column: 7, scope: !3913)
!3936 = !DILocalVariable(name: "ps", arg: 1, scope: !3937, file: !1702, line: 1135, type: !3916)
!3937 = distinct !DISubprogram(name: "mbszero", scope: !1702, file: !1702, line: 1135, type: !3938, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !3940)
!3938 = !DISubroutineType(types: !3939)
!3939 = !{null, !3916}
!3940 = !{!3936}
!3941 = !DILocation(line: 0, scope: !3937, inlinedAt: !3942)
!3942 = distinct !DILocation(line: 137, column: 5, scope: !3932)
!3943 = !DILocalVariable(name: "__dest", arg: 1, scope: !3944, file: !1711, line: 57, type: !122)
!3944 = distinct !DISubprogram(name: "memset", scope: !1711, file: !1711, line: 57, type: !1712, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !3945)
!3945 = !{!3943, !3946, !3947}
!3946 = !DILocalVariable(name: "__ch", arg: 2, scope: !3944, file: !1711, line: 57, type: !83)
!3947 = !DILocalVariable(name: "__len", arg: 3, scope: !3944, file: !1711, line: 57, type: !116)
!3948 = !DILocation(line: 0, scope: !3944, inlinedAt: !3949)
!3949 = distinct !DILocation(line: 1137, column: 3, scope: !3937, inlinedAt: !3942)
!3950 = !DILocation(line: 59, column: 10, scope: !3944, inlinedAt: !3949)
!3951 = !DILocation(line: 137, column: 5, scope: !3932)
!3952 = !DILocation(line: 138, column: 11, scope: !3953)
!3953 = distinct !DILexicalBlock(scope: !3913, file: !780, line: 138, column: 7)
!3954 = !DILocation(line: 138, column: 7, scope: !3913)
!3955 = !DILocation(line: 139, column: 5, scope: !3953)
!3956 = !DILocation(line: 143, column: 26, scope: !3957)
!3957 = distinct !DILexicalBlock(scope: !3913, file: !780, line: 143, column: 7)
!3958 = !DILocation(line: 143, column: 41, scope: !3957)
!3959 = !DILocation(line: 143, column: 7, scope: !3913)
!3960 = !DILocation(line: 145, column: 15, scope: !3961)
!3961 = distinct !DILexicalBlock(scope: !3962, file: !780, line: 145, column: 11)
!3962 = distinct !DILexicalBlock(scope: !3957, file: !780, line: 144, column: 5)
!3963 = !DILocation(line: 145, column: 11, scope: !3962)
!3964 = !DILocation(line: 146, column: 32, scope: !3961)
!3965 = !DILocation(line: 146, column: 16, scope: !3961)
!3966 = !DILocation(line: 146, column: 14, scope: !3961)
!3967 = !DILocation(line: 146, column: 9, scope: !3961)
!3968 = !DILocation(line: 286, column: 1, scope: !3913)
!3969 = !DISubprogram(name: "mbsinit", scope: !3970, file: !3970, line: 293, type: !3971, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !966)
!3970 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3971 = !DISubroutineType(types: !3972)
!3972 = !{!83, !3973}
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3974, size: 64)
!3974 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !786)
!3975 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !855, file: !855, line: 27, type: !3185, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !854, retainedNodes: !3976)
!3976 = !{!3977, !3978, !3979, !3980}
!3977 = !DILocalVariable(name: "ptr", arg: 1, scope: !3975, file: !855, line: 27, type: !122)
!3978 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3975, file: !855, line: 27, type: !116)
!3979 = !DILocalVariable(name: "size", arg: 3, scope: !3975, file: !855, line: 27, type: !116)
!3980 = !DILocalVariable(name: "nbytes", scope: !3975, file: !855, line: 29, type: !116)
!3981 = !DILocation(line: 0, scope: !3975)
!3982 = !DILocation(line: 30, column: 7, scope: !3983)
!3983 = distinct !DILexicalBlock(scope: !3975, file: !855, line: 30, column: 7)
!3984 = !DILocalVariable(name: "ptr", arg: 1, scope: !3985, file: !3277, line: 2057, type: !122)
!3985 = distinct !DISubprogram(name: "rpl_realloc", scope: !3277, file: !3277, line: 2057, type: !3269, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !854, retainedNodes: !3986)
!3986 = !{!3984, !3987}
!3987 = !DILocalVariable(name: "size", arg: 2, scope: !3985, file: !3277, line: 2057, type: !116)
!3988 = !DILocation(line: 0, scope: !3985, inlinedAt: !3989)
!3989 = distinct !DILocation(line: 37, column: 10, scope: !3975)
!3990 = !DILocation(line: 2059, column: 24, scope: !3985, inlinedAt: !3989)
!3991 = !DILocation(line: 2059, column: 10, scope: !3985, inlinedAt: !3989)
!3992 = !DILocation(line: 37, column: 3, scope: !3975)
!3993 = !DILocation(line: 32, column: 7, scope: !3994)
!3994 = distinct !DILexicalBlock(scope: !3983, file: !855, line: 31, column: 5)
!3995 = !DILocation(line: 32, column: 13, scope: !3994)
!3996 = !DILocation(line: 33, column: 7, scope: !3994)
!3997 = !DILocation(line: 38, column: 1, scope: !3975)
!3998 = distinct !DISubprogram(name: "hard_locale", scope: !798, file: !798, line: 28, type: !3999, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !857, retainedNodes: !4001)
!3999 = !DISubroutineType(types: !4000)
!4000 = !{!171, !83}
!4001 = !{!4002, !4003}
!4002 = !DILocalVariable(name: "category", arg: 1, scope: !3998, file: !798, line: 28, type: !83)
!4003 = !DILocalVariable(name: "locale", scope: !3998, file: !798, line: 30, type: !4004)
!4004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4005)
!4005 = !{!4006}
!4006 = !DISubrange(count: 257)
!4007 = !DILocation(line: 0, scope: !3998)
!4008 = !DILocation(line: 30, column: 3, scope: !3998)
!4009 = !DILocation(line: 30, column: 8, scope: !3998)
!4010 = !DILocation(line: 32, column: 7, scope: !4011)
!4011 = distinct !DILexicalBlock(scope: !3998, file: !798, line: 32, column: 7)
!4012 = !DILocation(line: 32, column: 7, scope: !3998)
!4013 = !DILocalVariable(name: "__s1", arg: 1, scope: !4014, file: !930, line: 1359, type: !119)
!4014 = distinct !DISubprogram(name: "streq", scope: !930, file: !930, line: 1359, type: !931, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !857, retainedNodes: !4015)
!4015 = !{!4013, !4016}
!4016 = !DILocalVariable(name: "__s2", arg: 2, scope: !4014, file: !930, line: 1359, type: !119)
!4017 = !DILocation(line: 0, scope: !4014, inlinedAt: !4018)
!4018 = distinct !DILocation(line: 35, column: 9, scope: !4019)
!4019 = distinct !DILexicalBlock(scope: !3998, file: !798, line: 35, column: 7)
!4020 = !DILocation(line: 1361, column: 11, scope: !4014, inlinedAt: !4018)
!4021 = !DILocation(line: 1361, column: 10, scope: !4014, inlinedAt: !4018)
!4022 = !DILocation(line: 35, column: 29, scope: !4019)
!4023 = !DILocation(line: 0, scope: !4014, inlinedAt: !4024)
!4024 = distinct !DILocation(line: 35, column: 32, scope: !4019)
!4025 = !DILocation(line: 1361, column: 11, scope: !4014, inlinedAt: !4024)
!4026 = !DILocation(line: 1361, column: 10, scope: !4014, inlinedAt: !4024)
!4027 = !DILocation(line: 35, column: 7, scope: !3998)
!4028 = !DILocation(line: 46, column: 3, scope: !3998)
!4029 = !DILocation(line: 47, column: 1, scope: !3998)
!4030 = distinct !DISubprogram(name: "setlocale_null_r", scope: !860, file: !860, line: 154, type: !4031, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !859, retainedNodes: !4033)
!4031 = !DISubroutineType(types: !4032)
!4032 = !{!83, !83, !85, !116}
!4033 = !{!4034, !4035, !4036}
!4034 = !DILocalVariable(name: "category", arg: 1, scope: !4030, file: !860, line: 154, type: !83)
!4035 = !DILocalVariable(name: "buf", arg: 2, scope: !4030, file: !860, line: 154, type: !85)
!4036 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4030, file: !860, line: 154, type: !116)
!4037 = !DILocation(line: 0, scope: !4030)
!4038 = !DILocation(line: 159, column: 10, scope: !4030)
!4039 = !DILocation(line: 159, column: 3, scope: !4030)
!4040 = distinct !DISubprogram(name: "setlocale_null", scope: !860, file: !860, line: 186, type: !4041, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !859, retainedNodes: !4043)
!4041 = !DISubroutineType(types: !4042)
!4042 = !{!119, !83}
!4043 = !{!4044}
!4044 = !DILocalVariable(name: "category", arg: 1, scope: !4040, file: !860, line: 186, type: !83)
!4045 = !DILocation(line: 0, scope: !4040)
!4046 = !DILocation(line: 189, column: 10, scope: !4040)
!4047 = !DILocation(line: 189, column: 3, scope: !4040)
!4048 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !862, file: !862, line: 35, type: !4041, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !861, retainedNodes: !4049)
!4049 = !{!4050, !4051}
!4050 = !DILocalVariable(name: "category", arg: 1, scope: !4048, file: !862, line: 35, type: !83)
!4051 = !DILocalVariable(name: "result", scope: !4048, file: !862, line: 37, type: !119)
!4052 = !DILocation(line: 0, scope: !4048)
!4053 = !DILocation(line: 37, column: 24, scope: !4048)
!4054 = !DILocation(line: 62, column: 3, scope: !4048)
!4055 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !862, file: !862, line: 66, type: !4031, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !861, retainedNodes: !4056)
!4056 = !{!4057, !4058, !4059, !4060, !4061}
!4057 = !DILocalVariable(name: "category", arg: 1, scope: !4055, file: !862, line: 66, type: !83)
!4058 = !DILocalVariable(name: "buf", arg: 2, scope: !4055, file: !862, line: 66, type: !85)
!4059 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4055, file: !862, line: 66, type: !116)
!4060 = !DILocalVariable(name: "result", scope: !4055, file: !862, line: 111, type: !119)
!4061 = !DILocalVariable(name: "length", scope: !4062, file: !862, line: 125, type: !116)
!4062 = distinct !DILexicalBlock(scope: !4063, file: !862, line: 124, column: 5)
!4063 = distinct !DILexicalBlock(scope: !4055, file: !862, line: 113, column: 7)
!4064 = !DILocation(line: 0, scope: !4055)
!4065 = !DILocation(line: 0, scope: !4048, inlinedAt: !4066)
!4066 = distinct !DILocation(line: 111, column: 24, scope: !4055)
!4067 = !DILocation(line: 37, column: 24, scope: !4048, inlinedAt: !4066)
!4068 = !DILocation(line: 113, column: 14, scope: !4063)
!4069 = !DILocation(line: 113, column: 7, scope: !4055)
!4070 = !DILocation(line: 116, column: 19, scope: !4071)
!4071 = distinct !DILexicalBlock(scope: !4072, file: !862, line: 116, column: 11)
!4072 = distinct !DILexicalBlock(scope: !4063, file: !862, line: 114, column: 5)
!4073 = !DILocation(line: 116, column: 11, scope: !4072)
!4074 = !DILocation(line: 120, column: 16, scope: !4071)
!4075 = !DILocation(line: 120, column: 9, scope: !4071)
!4076 = !DILocation(line: 125, column: 23, scope: !4062)
!4077 = !DILocation(line: 0, scope: !4062)
!4078 = !DILocation(line: 126, column: 18, scope: !4079)
!4079 = distinct !DILexicalBlock(scope: !4062, file: !862, line: 126, column: 11)
!4080 = !DILocation(line: 126, column: 11, scope: !4062)
!4081 = !DILocation(line: 128, column: 39, scope: !4082)
!4082 = distinct !DILexicalBlock(scope: !4079, file: !862, line: 127, column: 9)
!4083 = !DILocalVariable(name: "__dest", arg: 1, scope: !4084, file: !1711, line: 26, type: !3545)
!4084 = distinct !DISubprogram(name: "memcpy", scope: !1711, file: !1711, line: 26, type: !3543, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !861, retainedNodes: !4085)
!4085 = !{!4083, !4086, !4087}
!4086 = !DILocalVariable(name: "__src", arg: 2, scope: !4084, file: !1711, line: 26, type: !1148)
!4087 = !DILocalVariable(name: "__len", arg: 3, scope: !4084, file: !1711, line: 26, type: !116)
!4088 = !DILocation(line: 0, scope: !4084, inlinedAt: !4089)
!4089 = distinct !DILocation(line: 128, column: 11, scope: !4082)
!4090 = !DILocation(line: 29, column: 10, scope: !4084, inlinedAt: !4089)
!4091 = !DILocation(line: 129, column: 11, scope: !4082)
!4092 = !DILocation(line: 133, column: 23, scope: !4093)
!4093 = distinct !DILexicalBlock(scope: !4094, file: !862, line: 133, column: 15)
!4094 = distinct !DILexicalBlock(scope: !4079, file: !862, line: 132, column: 9)
!4095 = !DILocation(line: 133, column: 15, scope: !4094)
!4096 = !DILocation(line: 138, column: 44, scope: !4097)
!4097 = distinct !DILexicalBlock(scope: !4093, file: !862, line: 134, column: 13)
!4098 = !DILocation(line: 0, scope: !4084, inlinedAt: !4099)
!4099 = distinct !DILocation(line: 138, column: 15, scope: !4097)
!4100 = !DILocation(line: 29, column: 10, scope: !4084, inlinedAt: !4099)
!4101 = !DILocation(line: 139, column: 15, scope: !4097)
!4102 = !DILocation(line: 139, column: 32, scope: !4097)
!4103 = !DILocation(line: 140, column: 13, scope: !4097)
!4104 = !DILocation(line: 0, scope: !4063)
!4105 = !DILocation(line: 145, column: 1, scope: !4055)
