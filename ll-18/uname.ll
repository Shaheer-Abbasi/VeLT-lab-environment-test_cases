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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !509
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !475
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !499
@.str.1.86 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !501
@.str.2.88 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !503
@.str.3.87 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !505
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !507
@.str.4.81 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !511
@.str.5.82 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !513
@.str.6.83 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !518
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !523
@.str.97 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !529
@.str.1.98 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !531
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !533
@.str.101 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !564
@.str.1.102 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !567
@.str.2.103 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !569
@.str.3.104 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !574
@.str.4.105 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !576
@.str.5.106 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !578
@.str.6.107 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !580
@.str.7.108 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !582
@.str.8.109 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !584
@.str.9.110 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !586
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.101, ptr @.str.1.102, ptr @.str.2.103, ptr @.str.3.104, ptr @.str.4.105, ptr @.str.5.106, ptr @.str.6.107, ptr @.str.7.108, ptr @.str.8.109, ptr @.str.9.110, ptr null], align 8, !dbg !588
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !613
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !627
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !665
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !672
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !629
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !674
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !617
@.str.10.113 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !634
@.str.11.111 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !636
@.str.12.114 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !638
@.str.13.112 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !640
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !642
@.str.119 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !680
@.str.1.120 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !683
@.str.2.121 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !685
@.str.3.122 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !687
@.str.4.123 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !689
@.str.5.124 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !691
@.str.6.125 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !696
@.str.7.126 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !701
@.str.8.127 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !703
@.str.9.128 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !705
@.str.10.129 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !710
@.str.11.130 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !715
@.str.12.131 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !720
@.str.13.132 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !722
@.str.14.133 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !727
@.str.15.134 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !732
@.str.16.135 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !737
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.140 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !739
@.str.18.141 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !741
@.str.19.142 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !743
@.str.20.143 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !745
@.str.21.144 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !747
@.str.22 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !749
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !751
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !756
@exit_failure = dso_local global i32 1, align 4, !dbg !764
@.str.157 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !770
@.str.1.155 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !773
@.str.2.156 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !775
@.str.168 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !777
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !780
@.str.173 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !795
@.str.1.174 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !798

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !871 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !875, metadata !DIExpression()), !dbg !876
  %2 = icmp eq i32 %0, 0, !dbg !877
  br i1 %2, label %8, label %3, !dbg !879

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !880, !tbaa !882
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #37, !dbg !880
  %6 = load ptr, ptr @program_name, align 8, !dbg !880, !tbaa !882
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #37, !dbg !880
  br label %111, !dbg !880

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #37, !dbg !886
  %10 = load ptr, ptr @program_name, align 8, !dbg !886, !tbaa !882
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #37, !dbg !886
  %12 = load i32, ptr @uname_mode, align 4, !dbg !888, !tbaa !890
  %13 = icmp eq i32 %12, 0, !dbg !892
  br i1 %13, label %14, label %54, !dbg !893

14:                                               ; preds = %8
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #37, !dbg !894
  %16 = load ptr, ptr @stdout, align 8, !dbg !894, !tbaa !882
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !894
  %18 = load i32, ptr @uname_mode, align 4, !dbg !896, !tbaa !890
  %19 = icmp eq i32 %18, 0, !dbg !896
  %20 = select i1 %19, ptr @.str.3, ptr @.str.4, !dbg !896
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #37, !dbg !896
  tail call fastcc void @oputs_(ptr noundef nonnull %20, ptr noundef %21), !dbg !896
  %22 = load i32, ptr @uname_mode, align 4, !dbg !897, !tbaa !890
  %23 = icmp eq i32 %22, 0, !dbg !897
  %24 = select i1 %23, ptr @.str.3, ptr @.str.4, !dbg !897
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #37, !dbg !897
  tail call fastcc void @oputs_(ptr noundef nonnull %24, ptr noundef %25), !dbg !897
  %26 = load i32, ptr @uname_mode, align 4, !dbg !898, !tbaa !890
  %27 = icmp eq i32 %26, 0, !dbg !898
  %28 = select i1 %27, ptr @.str.3, ptr @.str.4, !dbg !898
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #37, !dbg !898
  tail call fastcc void @oputs_(ptr noundef nonnull %28, ptr noundef %29), !dbg !898
  %30 = load i32, ptr @uname_mode, align 4, !dbg !899, !tbaa !890
  %31 = icmp eq i32 %30, 0, !dbg !899
  %32 = select i1 %31, ptr @.str.3, ptr @.str.4, !dbg !899
  %33 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #37, !dbg !899
  tail call fastcc void @oputs_(ptr noundef nonnull %32, ptr noundef %33), !dbg !899
  %34 = load i32, ptr @uname_mode, align 4, !dbg !900, !tbaa !890
  %35 = icmp eq i32 %34, 0, !dbg !900
  %36 = select i1 %35, ptr @.str.3, ptr @.str.4, !dbg !900
  %37 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #37, !dbg !900
  tail call fastcc void @oputs_(ptr noundef nonnull %36, ptr noundef %37), !dbg !900
  %38 = load i32, ptr @uname_mode, align 4, !dbg !901, !tbaa !890
  %39 = icmp eq i32 %38, 0, !dbg !901
  %40 = select i1 %39, ptr @.str.3, ptr @.str.4, !dbg !901
  %41 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #37, !dbg !901
  tail call fastcc void @oputs_(ptr noundef nonnull %40, ptr noundef %41), !dbg !901
  %42 = load i32, ptr @uname_mode, align 4, !dbg !902, !tbaa !890
  %43 = icmp eq i32 %42, 0, !dbg !902
  %44 = select i1 %43, ptr @.str.3, ptr @.str.4, !dbg !902
  %45 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #37, !dbg !902
  tail call fastcc void @oputs_(ptr noundef nonnull %44, ptr noundef %45), !dbg !902
  %46 = load i32, ptr @uname_mode, align 4, !dbg !903, !tbaa !890
  %47 = icmp eq i32 %46, 0, !dbg !903
  %48 = select i1 %47, ptr @.str.3, ptr @.str.4, !dbg !903
  %49 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #37, !dbg !903
  tail call fastcc void @oputs_(ptr noundef nonnull %48, ptr noundef %49), !dbg !903
  %50 = load i32, ptr @uname_mode, align 4, !dbg !904, !tbaa !890
  %51 = icmp eq i32 %50, 0, !dbg !904
  %52 = select i1 %51, ptr @.str.3, ptr @.str.4, !dbg !904
  %53 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #37, !dbg !904
  tail call fastcc void @oputs_(ptr noundef nonnull %52, ptr noundef %53), !dbg !904
  br label %58, !dbg !905

54:                                               ; preds = %8
  %55 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #37, !dbg !906
  %56 = load ptr, ptr @stdout, align 8, !dbg !906, !tbaa !882
  %57 = tail call i32 @fputs_unlocked(ptr noundef %55, ptr noundef %56), !dbg !906
  br label %58

58:                                               ; preds = %54, %14
  %59 = load i32, ptr @uname_mode, align 4, !dbg !908, !tbaa !890
  %60 = icmp eq i32 %59, 0, !dbg !908
  %61 = select i1 %60, ptr @.str.3, ptr @.str.4, !dbg !908
  %62 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #37, !dbg !908
  tail call fastcc void @oputs_(ptr noundef nonnull %61, ptr noundef %62), !dbg !908
  %63 = load i32, ptr @uname_mode, align 4, !dbg !909, !tbaa !890
  %64 = icmp eq i32 %63, 0, !dbg !909
  %65 = select i1 %64, ptr @.str.3, ptr @.str.4, !dbg !909
  %66 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #37, !dbg !909
  tail call fastcc void @oputs_(ptr noundef nonnull %65, ptr noundef %66), !dbg !909
  %67 = load i32, ptr @uname_mode, align 4, !dbg !910, !tbaa !890
  %68 = icmp eq i32 %67, 0, !dbg !910
  %69 = select i1 %68, ptr @.str.3, ptr @.str.4, !dbg !910
  call void @llvm.dbg.assign(metadata i1 undef, metadata !911, metadata !DIExpression(), metadata !926, metadata ptr @__const.emit_ancillary_info.infomap, metadata !DIExpression()), !dbg !927
  call void @llvm.dbg.value(metadata ptr %69, metadata !914, metadata !DIExpression()), !dbg !927
  call void @llvm.dbg.assign(metadata i1 undef, metadata !911, metadata !DIExpression(), metadata !929, metadata ptr @__const.emit_ancillary_info.infomap, metadata !DIExpression()), !dbg !927
  call void @llvm.dbg.value(metadata ptr %69, metadata !915, metadata !DIExpression()), !dbg !927
  call void @llvm.dbg.value(metadata ptr @__const.emit_ancillary_info.infomap, metadata !916, metadata !DIExpression()), !dbg !927
  call void @llvm.dbg.value(metadata ptr @__const.emit_ancillary_info.infomap, metadata !916, metadata !DIExpression()), !dbg !927
  call void @llvm.dbg.value(metadata ptr %69, metadata !930, metadata !DIExpression()), !dbg !937
  call void @llvm.dbg.value(metadata ptr @.str.31, metadata !936, metadata !DIExpression()), !dbg !937
  %70 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %69, ptr noundef nonnull dereferenceable(2) @.str.31, i64 2), !dbg !939
  %71 = icmp eq i32 %70, 0, !dbg !940
  br i1 %71, label %88, label %72, !dbg !941

72:                                               ; preds = %58
  call void @llvm.dbg.value(metadata ptr getelementptr inbounds ([7 x %struct.infomap], ptr @__const.emit_ancillary_info.infomap, i64 0, i64 1), metadata !916, metadata !DIExpression()), !dbg !927
  call void @llvm.dbg.value(metadata ptr getelementptr inbounds ([7 x %struct.infomap], ptr @__const.emit_ancillary_info.infomap, i64 0, i64 1), metadata !916, metadata !DIExpression()), !dbg !927
  call void @llvm.dbg.value(metadata ptr %69, metadata !930, metadata !DIExpression()), !dbg !937
  call void @llvm.dbg.value(metadata ptr @.str.18, metadata !936, metadata !DIExpression()), !dbg !937
  %73 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %69, ptr noundef nonnull dereferenceable(10) @.str.18) #38, !dbg !939
  %74 = icmp eq i32 %73, 0, !dbg !940
  br i1 %74, label %88, label %75, !dbg !941

75:                                               ; preds = %72
  call void @llvm.dbg.value(metadata ptr getelementptr inbounds ([7 x %struct.infomap], ptr @__const.emit_ancillary_info.infomap, i64 0, i64 2), metadata !916, metadata !DIExpression()), !dbg !927
  call void @llvm.dbg.value(metadata ptr getelementptr inbounds ([7 x %struct.infomap], ptr @__const.emit_ancillary_info.infomap, i64 0, i64 2), metadata !916, metadata !DIExpression()), !dbg !927
  call void @llvm.dbg.value(metadata ptr %69, metadata !930, metadata !DIExpression()), !dbg !937
  call void @llvm.dbg.value(metadata ptr @.str.40, metadata !936, metadata !DIExpression()), !dbg !937
  %76 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %69, ptr noundef nonnull dereferenceable(10) @.str.40) #38, !dbg !939
  %77 = icmp eq i32 %76, 0, !dbg !940
  br i1 %77, label %88, label %78, !dbg !941

78:                                               ; preds = %75
  call void @llvm.dbg.value(metadata ptr getelementptr inbounds ([7 x %struct.infomap], ptr @__const.emit_ancillary_info.infomap, i64 0, i64 3), metadata !916, metadata !DIExpression()), !dbg !927
  call void @llvm.dbg.value(metadata ptr getelementptr inbounds ([7 x %struct.infomap], ptr @__const.emit_ancillary_info.infomap, i64 0, i64 3), metadata !916, metadata !DIExpression()), !dbg !927
  call void @llvm.dbg.value(metadata ptr %69, metadata !930, metadata !DIExpression()), !dbg !937
  call void @llvm.dbg.value(metadata ptr @.str.41, metadata !936, metadata !DIExpression()), !dbg !937
  %79 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %69, ptr noundef nonnull dereferenceable(10) @.str.41) #38, !dbg !939
  %80 = icmp eq i32 %79, 0, !dbg !940
  br i1 %80, label %88, label %81, !dbg !941

81:                                               ; preds = %78
  call void @llvm.dbg.value(metadata ptr getelementptr inbounds ([7 x %struct.infomap], ptr @__const.emit_ancillary_info.infomap, i64 0, i64 4), metadata !916, metadata !DIExpression()), !dbg !927
  call void @llvm.dbg.value(metadata ptr getelementptr inbounds ([7 x %struct.infomap], ptr @__const.emit_ancillary_info.infomap, i64 0, i64 4), metadata !916, metadata !DIExpression()), !dbg !927
  call void @llvm.dbg.value(metadata ptr %69, metadata !930, metadata !DIExpression()), !dbg !937
  call void @llvm.dbg.value(metadata ptr @.str.42, metadata !936, metadata !DIExpression()), !dbg !937
  %82 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %69, ptr noundef nonnull dereferenceable(10) @.str.42) #38, !dbg !939
  %83 = icmp eq i32 %82, 0, !dbg !940
  br i1 %83, label %88, label %84, !dbg !941

84:                                               ; preds = %81
  call void @llvm.dbg.value(metadata ptr getelementptr inbounds ([7 x %struct.infomap], ptr @__const.emit_ancillary_info.infomap, i64 0, i64 5), metadata !916, metadata !DIExpression()), !dbg !927
  call void @llvm.dbg.value(metadata ptr getelementptr inbounds ([7 x %struct.infomap], ptr @__const.emit_ancillary_info.infomap, i64 0, i64 5), metadata !916, metadata !DIExpression()), !dbg !927
  call void @llvm.dbg.value(metadata ptr %69, metadata !930, metadata !DIExpression()), !dbg !937
  call void @llvm.dbg.value(metadata ptr @.str.43, metadata !936, metadata !DIExpression()), !dbg !937
  %85 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %69, ptr noundef nonnull dereferenceable(10) @.str.43) #38, !dbg !939
  %86 = icmp eq i32 %85, 0, !dbg !940
  %87 = select i1 %86, ptr getelementptr inbounds ([7 x %struct.infomap], ptr @__const.emit_ancillary_info.infomap, i64 0, i64 5), ptr getelementptr inbounds ([7 x %struct.infomap], ptr @__const.emit_ancillary_info.infomap, i64 0, i64 6, i32 0), !dbg !941
  br label %88, !dbg !941

88:                                               ; preds = %84, %81, %78, %75, %72, %58
  %89 = phi ptr [ @__const.emit_ancillary_info.infomap, %58 ], [ getelementptr inbounds ([7 x %struct.infomap], ptr @__const.emit_ancillary_info.infomap, i64 0, i64 1), %72 ], [ getelementptr inbounds ([7 x %struct.infomap], ptr @__const.emit_ancillary_info.infomap, i64 0, i64 2), %75 ], [ getelementptr inbounds ([7 x %struct.infomap], ptr @__const.emit_ancillary_info.infomap, i64 0, i64 3), %78 ], [ getelementptr inbounds ([7 x %struct.infomap], ptr @__const.emit_ancillary_info.infomap, i64 0, i64 4), %81 ], [ %87, %84 ], !dbg !927
  %90 = getelementptr inbounds %struct.infomap, ptr %89, i64 0, i32 1, !dbg !942
  %91 = load ptr, ptr %90, align 8, !dbg !942, !tbaa !944
  call void @llvm.dbg.value(metadata ptr poison, metadata !915, metadata !DIExpression()), !dbg !927
  tail call void @emit_bug_reporting_address() #37, !dbg !946
  %92 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #37, !dbg !947
  call void @llvm.dbg.value(metadata ptr %92, metadata !923, metadata !DIExpression()), !dbg !927
  %93 = icmp eq ptr %92, null, !dbg !948
  br i1 %93, label %101, label %94, !dbg !950

94:                                               ; preds = %88
  %95 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %92, ptr noundef nonnull dereferenceable(4) @.str.57, i64 noundef 3) #38, !dbg !951
  %96 = icmp eq i32 %95, 0, !dbg !951
  br i1 %96, label %101, label %97, !dbg !952

97:                                               ; preds = %94
  %98 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.58, i32 noundef 5) #37, !dbg !953
  %99 = load ptr, ptr @stdout, align 8, !dbg !953, !tbaa !882
  %100 = tail call i32 @fputs_unlocked(ptr noundef %98, ptr noundef %99), !dbg !953
  br label %101, !dbg !955

101:                                              ; preds = %88, %94, %97
  %102 = icmp eq ptr %91, null, !dbg !956
  %103 = select i1 %102, ptr %69, ptr %91, !dbg !957
  call void @llvm.dbg.value(metadata ptr %103, metadata !915, metadata !DIExpression()), !dbg !927
  call void @llvm.dbg.value(metadata ptr %69, metadata !930, metadata !DIExpression()), !dbg !958
  call void @llvm.dbg.value(metadata ptr @.str.31, metadata !936, metadata !DIExpression()), !dbg !958
  %104 = select i1 %71, ptr @.str.32, ptr %69, !dbg !960
  call void @llvm.dbg.value(metadata ptr %104, metadata !924, metadata !DIExpression()), !dbg !927
  %105 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 5) #37, !dbg !961
  %106 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %105, ptr noundef nonnull @.str.47, ptr noundef nonnull %104) #37, !dbg !961
  %107 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.60, i32 noundef 5) #37, !dbg !962
  %108 = icmp eq ptr %103, %69, !dbg !962
  %109 = select i1 %108, ptr @.str.61, ptr @.str.17, !dbg !962
  %110 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %107, ptr noundef nonnull %103, ptr noundef nonnull %109) #37, !dbg !962
  br label %111

111:                                              ; preds = %101, %3
  tail call void @exit(i32 noundef %0) #39, !dbg !963
  unreachable, !dbg !963
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !964 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !968 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !974 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !977 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0, ptr noundef %1) unnamed_addr #5 !dbg !161 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !165, metadata !DIExpression()), !dbg !980
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !166, metadata !DIExpression()), !dbg !980
  %3 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !981, !tbaa !890
  %4 = icmp eq i32 %3, -1, !dbg !982
  br i1 %4, label %5, label %17, !dbg !983

5:                                                ; preds = %2
  %6 = tail call ptr @getenv(ptr noundef nonnull @.str.27) #37, !dbg !984
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !167, metadata !DIExpression()), !dbg !985
  %7 = icmp eq ptr %6, null, !dbg !986
  br i1 %7, label %15, label %8, !dbg !987

8:                                                ; preds = %5
  %9 = load i8, ptr %6, align 1, !dbg !988, !tbaa !989
  %10 = icmp eq i8 %9, 0, !dbg !988
  br i1 %10, label %15, label %11, !dbg !990

11:                                               ; preds = %8
  call void @llvm.dbg.value(metadata ptr %6, metadata !930, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata ptr @.str.28, metadata !936, metadata !DIExpression()), !dbg !991
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(5) @.str.28) #38, !dbg !993
  %13 = icmp eq i32 %12, 0, !dbg !994
  %14 = zext i1 %13 to i32, !dbg !990
  br label %15, !dbg !990

15:                                               ; preds = %11, %8, %5
  %16 = phi i32 [ 1, %8 ], [ 1, %5 ], [ %14, %11 ]
  store i32 %16, ptr @oputs_.help_no_sgr, align 4, !dbg !995, !tbaa !890
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
  tail call void @llvm.dbg.value(metadata i8 1, metadata !170, metadata !DIExpression()), !dbg !980
  %24 = tail call i64 @strspn(ptr noundef %1, ptr noundef nonnull @.str.29) #38, !dbg !1003
  %25 = getelementptr inbounds i8, ptr %1, i64 %24, !dbg !1004
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !172, metadata !DIExpression()), !dbg !980
  %26 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 45) #38, !dbg !1005
  tail call void @llvm.dbg.value(metadata ptr %26, metadata !173, metadata !DIExpression()), !dbg !980
  %27 = icmp eq ptr %26, null, !dbg !1006
  br i1 %27, label %55, label %28, !dbg !1007

28:                                               ; preds = %23
  %29 = icmp eq ptr %26, %25, !dbg !1008
  br i1 %29, label %55, label %30, !dbg !1009

30:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !174, metadata !DIExpression()), !dbg !1010
  tail call void @llvm.dbg.value(metadata i64 0, metadata !178, metadata !DIExpression()), !dbg !1010
  %31 = icmp ult ptr %25, %26, !dbg !1011
  br i1 %31, label %32, label %52, !dbg !1012

32:                                               ; preds = %30
  %33 = tail call ptr @__ctype_b_loc() #40, !dbg !980
  %34 = load ptr, ptr %33, align 8, !tbaa !882
  br label %35, !dbg !1012

35:                                               ; preds = %32, %35
  %36 = phi ptr [ %25, %32 ], [ %38, %35 ]
  %37 = phi i64 [ 0, %32 ], [ %46, %35 ]
  tail call void @llvm.dbg.value(metadata ptr %36, metadata !174, metadata !DIExpression()), !dbg !1010
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !178, metadata !DIExpression()), !dbg !1010
  %38 = getelementptr inbounds i8, ptr %36, i64 1, !dbg !1013
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !174, metadata !DIExpression()), !dbg !1010
  %39 = load i8, ptr %36, align 1, !dbg !1013, !tbaa !989
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds i16, ptr %34, i64 %40, !dbg !1013
  %42 = load i16, ptr %41, align 2, !dbg !1013, !tbaa !1014
  %43 = lshr i16 %42, 13, !dbg !1016
  %44 = and i16 %43, 1, !dbg !1016
  %45 = zext nneg i16 %44 to i64
  %46 = add nuw nsw i64 %37, %45, !dbg !1017
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !178, metadata !DIExpression()), !dbg !1010
  %47 = icmp ult ptr %38, %26, !dbg !1011
  %48 = icmp ult i64 %46, 2, !dbg !1018
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1018
  br i1 %49, label %35, label %50, !dbg !1012, !llvm.loop !1019

50:                                               ; preds = %35
  %.lcssa1 = phi i64 [ %46, %35 ], !dbg !1017
  %51 = icmp ne i64 %.lcssa1, 2, !dbg !1021
  br label %52, !dbg !1021

52:                                               ; preds = %50, %30
  %53 = phi i1 [ true, %30 ], [ %51, %50 ], !dbg !1010
  %54 = select i1 %53, ptr %26, ptr %25, !dbg !1023
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !170, metadata !DIExpression()), !dbg !980
  tail call void @llvm.dbg.value(metadata ptr %54, metadata !173, metadata !DIExpression()), !dbg !980
  br label %55, !dbg !1024

55:                                               ; preds = %23, %28, %52
  %56 = phi ptr [ %54, %52 ], [ %25, %28 ], [ %25, %23 ], !dbg !980
  %57 = phi i1 [ %53, %52 ], [ true, %28 ], [ false, %23 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !170, metadata !DIExpression()), !dbg !980
  tail call void @llvm.dbg.value(metadata ptr %56, metadata !173, metadata !DIExpression()), !dbg !980
  %58 = tail call i64 @strcspn(ptr noundef %56, ptr noundef nonnull @.str.30) #38, !dbg !1025
  tail call void @llvm.dbg.value(metadata i64 %58, metadata !179, metadata !DIExpression()), !dbg !980
  %59 = getelementptr inbounds i8, ptr %56, i64 %58, !dbg !1026
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !180, metadata !DIExpression()), !dbg !980
  br label %60, !dbg !1027

60:                                               ; preds = %91, %55
  %61 = phi ptr [ %59, %55 ], [ %92, %91 ], !dbg !980
  %62 = phi i1 [ %57, %55 ], [ %70, %91 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !170, metadata !DIExpression()), !dbg !980
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !180, metadata !DIExpression()), !dbg !980
  %63 = load i8, ptr %61, align 1, !dbg !1028, !tbaa !989
  switch i8 %63, label %69 [
    i8 0, label %93
    i8 10, label %93
    i8 45, label %64
  ], !dbg !1029

64:                                               ; preds = %60
  %65 = getelementptr inbounds i8, ptr %61, i64 1, !dbg !1030
  %66 = load i8, ptr %65, align 1, !dbg !1033, !tbaa !989
  %67 = icmp ne i8 %66, 45, !dbg !1034
  %68 = select i1 %67, i1 %62, i1 false, !dbg !1035
  br label %69, !dbg !1035

69:                                               ; preds = %64, %60
  %70 = phi i1 [ %62, %60 ], [ %68, %64 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !170, metadata !DIExpression()), !dbg !980
  %71 = tail call ptr @__ctype_b_loc() #40, !dbg !1036
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
  %82 = load i8, ptr %81, align 1, !dbg !1043, !tbaa !989
  %83 = zext i8 %82 to i64
  %84 = getelementptr inbounds i16, ptr %72, i64 %83, !dbg !1043
  %85 = load i16, ptr %84, align 2, !dbg !1043, !tbaa !1014
  %86 = and i16 %85, 8192, !dbg !1043
  %87 = icmp eq i16 %86, 0, !dbg !1043
  %88 = icmp eq i8 %82, 45
  %89 = or i1 %70, %88
  %90 = select i1 %87, i1 %89, i1 false, !dbg !1044
  br i1 %90, label %91, label %93, !dbg !1044

91:                                               ; preds = %80, %69
  %92 = getelementptr inbounds i8, ptr %61, i64 1, !dbg !1045
  tail call void @llvm.dbg.value(metadata ptr %92, metadata !180, metadata !DIExpression()), !dbg !980
  br label %60, !dbg !1027, !llvm.loop !1046

93:                                               ; preds = %60, %60, %78, %80
  %.lcssa = phi ptr [ %61, %60 ], [ %61, %60 ], [ %61, %78 ], [ %61, %80 ], !dbg !980
  %94 = ptrtoint ptr %25 to i64, !dbg !1048
  %95 = load ptr, ptr @stdout, align 8, !dbg !1048, !tbaa !882
  %96 = tail call i64 @fwrite_unlocked(ptr noundef %1, i64 noundef 1, i64 noundef %24, ptr noundef %95), !dbg !1048
  call void @llvm.dbg.value(metadata ptr %0, metadata !930, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata ptr @.str.31, metadata !936, metadata !DIExpression()), !dbg !1049
  %97 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.31) #38, !dbg !1051
  %98 = icmp eq i32 %97, 0, !dbg !1052
  br i1 %98, label %127, label %99, !dbg !1053

99:                                               ; preds = %93
  call void @llvm.dbg.value(metadata ptr %0, metadata !930, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata ptr @.str.33, metadata !936, metadata !DIExpression()), !dbg !1054
  %100 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.33) #38, !dbg !1056
  %101 = icmp eq i32 %100, 0, !dbg !1057
  br i1 %101, label %127, label %102, !dbg !1058

102:                                              ; preds = %99
  call void @llvm.dbg.value(metadata ptr %0, metadata !930, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata ptr @.str.35, metadata !936, metadata !DIExpression()), !dbg !1059
  %103 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.35) #38, !dbg !1061
  %104 = icmp eq i32 %103, 0, !dbg !1062
  br i1 %104, label %127, label %105, !dbg !1063

105:                                              ; preds = %102
  call void @llvm.dbg.value(metadata ptr %0, metadata !930, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.value(metadata ptr @.str.36, metadata !936, metadata !DIExpression()), !dbg !1064
  %106 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.36) #38, !dbg !1066
  %107 = icmp eq i32 %106, 0, !dbg !1067
  br i1 %107, label %127, label %108, !dbg !1068

108:                                              ; preds = %105
  call void @llvm.dbg.value(metadata ptr %0, metadata !930, metadata !DIExpression()), !dbg !1069
  call void @llvm.dbg.value(metadata ptr @.str.38, metadata !936, metadata !DIExpression()), !dbg !1069
  %109 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.38) #38, !dbg !1071
  %110 = icmp eq i32 %109, 0, !dbg !1072
  br i1 %110, label %127, label %111, !dbg !1073

111:                                              ; preds = %108
  call void @llvm.dbg.value(metadata ptr %0, metadata !930, metadata !DIExpression()), !dbg !1074
  call void @llvm.dbg.value(metadata ptr @.str.39, metadata !936, metadata !DIExpression()), !dbg !1074
  %112 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.39) #38, !dbg !1076
  %113 = icmp eq i32 %112, 0, !dbg !1077
  br i1 %113, label %127, label %114, !dbg !1078

114:                                              ; preds = %111
  call void @llvm.dbg.value(metadata ptr %0, metadata !930, metadata !DIExpression()), !dbg !1079
  call void @llvm.dbg.value(metadata ptr @.str.40, metadata !936, metadata !DIExpression()), !dbg !1079
  %115 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(10) @.str.40) #38, !dbg !1081
  %116 = icmp eq i32 %115, 0, !dbg !1082
  br i1 %116, label %127, label %117, !dbg !1083

117:                                              ; preds = %114
  call void @llvm.dbg.value(metadata ptr %0, metadata !930, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata ptr @.str.41, metadata !936, metadata !DIExpression()), !dbg !1084
  %118 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(10) @.str.41) #38, !dbg !1086
  %119 = icmp eq i32 %118, 0, !dbg !1087
  br i1 %119, label %127, label %120, !dbg !1088

120:                                              ; preds = %117
  call void @llvm.dbg.value(metadata ptr %0, metadata !930, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata ptr @.str.42, metadata !936, metadata !DIExpression()), !dbg !1089
  %121 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(10) @.str.42) #38, !dbg !1091
  %122 = icmp eq i32 %121, 0, !dbg !1092
  br i1 %122, label %127, label %123, !dbg !1093

123:                                              ; preds = %120
  call void @llvm.dbg.value(metadata ptr %0, metadata !930, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata ptr @.str.43, metadata !936, metadata !DIExpression()), !dbg !1094
  %124 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(10) @.str.43) #38, !dbg !1096
  %125 = icmp eq i32 %124, 0, !dbg !1097
  %126 = select i1 %125, ptr @.str.37, ptr %0, !dbg !1098
  br label %127, !dbg !1093

127:                                              ; preds = %99, %105, %111, %117, %120, %123, %114, %108, %102, %93
  %128 = phi ptr [ @.str.32, %93 ], [ @.str.34, %99 ], [ @.str.34, %102 ], [ @.str.37, %105 ], [ @.str.37, %108 ], [ @.str.37, %111 ], [ @.str.37, %114 ], [ @.str.37, %117 ], [ %126, %123 ], [ @.str.37, %120 ], !dbg !1053
  tail call void @llvm.dbg.value(metadata ptr %128, metadata !237, metadata !DIExpression()), !dbg !980
  %129 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %56, ptr noundef nonnull dereferenceable(7) @.str.44, i64 noundef 6) #38, !dbg !1099
  %130 = icmp eq i32 %129, 0, !dbg !1099
  br i1 %130, label %134, label %131, !dbg !1101

131:                                              ; preds = %127
  %132 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %56, ptr noundef nonnull dereferenceable(10) @.str.45, i64 noundef 9) #38, !dbg !1102
  %133 = icmp eq i32 %132, 0, !dbg !1102
  br i1 %133, label %134, label %137, !dbg !1103

134:                                              ; preds = %131, %127
  %135 = trunc i64 %58 to i32, !dbg !1104
  %136 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, ptr noundef %128, ptr noundef %128, i32 noundef %135, ptr noundef %56) #37, !dbg !1104
  br label %140, !dbg !1106

137:                                              ; preds = %131
  %138 = trunc i64 %58 to i32, !dbg !1107
  %139 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, ptr noundef %128, i32 noundef %138, ptr noundef %56) #37, !dbg !1107
  br label %140

140:                                              ; preds = %137, %134
  %141 = load ptr, ptr @stdout, align 8, !dbg !1109, !tbaa !882
  %142 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.50, ptr noundef %141), !dbg !1109
  %143 = load ptr, ptr @stdout, align 8, !dbg !1110, !tbaa !882
  %144 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.51, ptr noundef %143), !dbg !1110
  %145 = ptrtoint ptr %.lcssa to i64, !dbg !1111
  %146 = sub i64 %145, %94, !dbg !1111
  %147 = load ptr, ptr @stdout, align 8, !dbg !1111, !tbaa !882
  %148 = tail call i64 @fwrite_unlocked(ptr noundef %25, i64 noundef 1, i64 noundef %146, ptr noundef %147), !dbg !1111
  %149 = load ptr, ptr @stdout, align 8, !dbg !1112, !tbaa !882
  %150 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.52, ptr noundef %149), !dbg !1112
  %151 = load ptr, ptr @stdout, align 8, !dbg !1113, !tbaa !882
  %152 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.53, ptr noundef %151), !dbg !1113
  %153 = load ptr, ptr @stdout, align 8, !dbg !1114, !tbaa !882
  %154 = tail call i32 @fputs_unlocked(ptr noundef nonnull %.lcssa, ptr noundef %153), !dbg !1114
  br label %155, !dbg !1115

155:                                              ; preds = %140, %20
  ret void, !dbg !1115
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

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
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #11 !dbg !80 {
  %3 = alloca %struct.utsname, align 1, !DIAssignID !1151
  call void @llvm.dbg.assign(metadata i1 undef, metadata !419, metadata !DIExpression(), metadata !1151, metadata ptr %3, metadata !DIExpression()), !dbg !1152
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !416, metadata !DIExpression()), !dbg !1153
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !417, metadata !DIExpression()), !dbg !1153
  tail call void @llvm.dbg.value(metadata i32 0, metadata !418, metadata !DIExpression()), !dbg !1153
  %4 = load ptr, ptr %1, align 8, !dbg !1154, !tbaa !882
  tail call void @set_program_name(ptr noundef %4) #37, !dbg !1155
  %5 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.17) #37, !dbg !1156
  %6 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #37, !dbg !1157
  %7 = tail call ptr @textdomain(ptr noundef nonnull @.str.18) #37, !dbg !1158
  %8 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #37, !dbg !1159
  call void @llvm.dbg.value(metadata i32 %0, metadata !1160, metadata !DIExpression()), !dbg !1166
  call void @llvm.dbg.value(metadata ptr %1, metadata !1163, metadata !DIExpression()), !dbg !1166
  call void @llvm.dbg.value(metadata i32 0, metadata !1165, metadata !DIExpression()), !dbg !1166
  %9 = load i32, ptr @uname_mode, align 4, !dbg !1168, !tbaa !890
  %10 = icmp eq i32 %9, 1, !dbg !1170
  br i1 %10, label %11, label %.preheader, !dbg !1171

.preheader:                                       ; preds = %2
  br label %21, !dbg !1172

11:                                               ; preds = %2
  %12 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.17, ptr noundef nonnull @arch_long_options, ptr noundef null) #37, !dbg !1174
  call void @llvm.dbg.value(metadata i32 %12, metadata !1164, metadata !DIExpression()), !dbg !1166
  switch i32 %12, label %20 [
    i32 -1, label %51
    i32 -2, label %13
    i32 -3, label %14
  ], !dbg !1176

13:                                               ; preds = %11
  tail call void @usage(i32 noundef 0) #41, !dbg !1177
  unreachable, !dbg !1177

14:                                               ; preds = %11
  %15 = load ptr, ptr @stdout, align 8, !dbg !1180, !tbaa !882
  %16 = load i32, ptr @uname_mode, align 4, !dbg !1180, !tbaa !890
  %17 = icmp eq i32 %16, 0, !dbg !1180
  %18 = select i1 %17, ptr @.str.3, ptr @.str.4, !dbg !1180
  %19 = load ptr, ptr @Version, align 8, !dbg !1180, !tbaa !882
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %15, ptr noundef nonnull %18, ptr noundef nonnull @.str.62, ptr noundef %19, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64, ptr noundef null) #37, !dbg !1180
  tail call void @exit(i32 noundef 0) #39, !dbg !1180
  unreachable, !dbg !1180

20:                                               ; preds = %11
  tail call void @usage(i32 noundef 1) #41, !dbg !1181
  unreachable, !dbg !1181

21:                                               ; preds = %.preheader, %40
  %22 = phi i32 [ %41, %40 ], [ 0, %.preheader ], !dbg !1166
  call void @llvm.dbg.value(metadata i32 %22, metadata !1165, metadata !DIExpression()), !dbg !1166
  %23 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.65, ptr noundef nonnull @uname_long_options, ptr noundef null) #37, !dbg !1182
  call void @llvm.dbg.value(metadata i32 %23, metadata !1164, metadata !DIExpression()), !dbg !1166
  switch i32 %23, label %50 [
    i32 -1, label %.loopexit
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
  ], !dbg !1172

24:                                               ; preds = %21
  %25 = or i32 %22, 1, !dbg !1183
  call void @llvm.dbg.value(metadata i32 %25, metadata !1165, metadata !DIExpression()), !dbg !1166
  br label %40, !dbg !1186

26:                                               ; preds = %21
  %27 = or i32 %22, 2, !dbg !1187
  call void @llvm.dbg.value(metadata i32 %27, metadata !1165, metadata !DIExpression()), !dbg !1166
  br label %40, !dbg !1188

28:                                               ; preds = %21
  %29 = or i32 %22, 4, !dbg !1189
  call void @llvm.dbg.value(metadata i32 %29, metadata !1165, metadata !DIExpression()), !dbg !1166
  br label %40, !dbg !1190

30:                                               ; preds = %21
  %31 = or i32 %22, 8, !dbg !1191
  call void @llvm.dbg.value(metadata i32 %31, metadata !1165, metadata !DIExpression()), !dbg !1166
  br label %40, !dbg !1192

32:                                               ; preds = %21
  %33 = or i32 %22, 16, !dbg !1193
  call void @llvm.dbg.value(metadata i32 %33, metadata !1165, metadata !DIExpression()), !dbg !1166
  br label %40, !dbg !1194

34:                                               ; preds = %21
  %35 = or i32 %22, 32, !dbg !1195
  call void @llvm.dbg.value(metadata i32 %35, metadata !1165, metadata !DIExpression()), !dbg !1166
  br label %40, !dbg !1196

36:                                               ; preds = %21
  %37 = or i32 %22, 64, !dbg !1197
  call void @llvm.dbg.value(metadata i32 %37, metadata !1165, metadata !DIExpression()), !dbg !1166
  br label %40, !dbg !1198

38:                                               ; preds = %21
  %39 = or i32 %22, 128, !dbg !1199
  call void @llvm.dbg.value(metadata i32 %39, metadata !1165, metadata !DIExpression()), !dbg !1166
  br label %40, !dbg !1200

40:                                               ; preds = %38, %36, %34, %32, %30, %28, %26, %24, %21
  %41 = phi i32 [ %39, %38 ], [ %37, %36 ], [ %35, %34 ], [ %33, %32 ], [ %31, %30 ], [ %29, %28 ], [ %27, %26 ], [ %25, %24 ], [ -1, %21 ]
  br label %21, !dbg !1166, !llvm.loop !1201

42:                                               ; preds = %21
  tail call void @usage(i32 noundef 0) #41, !dbg !1203
  unreachable, !dbg !1203

43:                                               ; preds = %21
  %44 = load ptr, ptr @stdout, align 8, !dbg !1204, !tbaa !882
  %45 = load i32, ptr @uname_mode, align 4, !dbg !1204, !tbaa !890
  %46 = icmp eq i32 %45, 0, !dbg !1204
  %47 = select i1 %46, ptr @.str.3, ptr @.str.4, !dbg !1204
  %48 = load ptr, ptr @Version, align 8, !dbg !1204, !tbaa !882
  %49 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.63) #37, !dbg !1204
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %44, ptr noundef nonnull %47, ptr noundef nonnull @.str.62, ptr noundef %48, ptr noundef %49, ptr noundef null) #37, !dbg !1204
  tail call void @exit(i32 noundef 0) #39, !dbg !1204
  unreachable, !dbg !1204

50:                                               ; preds = %21
  tail call void @usage(i32 noundef 1) #41, !dbg !1205
  unreachable, !dbg !1205

.loopexit:                                        ; preds = %21
  %.lcssa1 = phi i32 [ %22, %21 ], !dbg !1166
  br label %51, !dbg !1206

51:                                               ; preds = %.loopexit, %11
  %52 = phi i32 [ 16, %11 ], [ %.lcssa1, %.loopexit ], !dbg !1166
  call void @llvm.dbg.value(metadata i32 %52, metadata !1165, metadata !DIExpression()), !dbg !1166
  %53 = load i32, ptr @optind, align 4, !dbg !1206, !tbaa !890
  %54 = icmp eq i32 %53, %0, !dbg !1208
  br i1 %54, label %62, label %55, !dbg !1209

55:                                               ; preds = %51
  %56 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.66, i32 noundef 5) #37, !dbg !1210
  %57 = load i32, ptr @optind, align 4, !dbg !1210, !tbaa !890
  %58 = sext i32 %57 to i64, !dbg !1210
  %59 = getelementptr inbounds ptr, ptr %1, i64 %58, !dbg !1210
  %60 = load ptr, ptr %59, align 8, !dbg !1210, !tbaa !882
  %61 = tail call ptr @quote(ptr noundef %60) #37, !dbg !1210
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %56, ptr noundef %61) #37, !dbg !1210
  tail call void @usage(i32 noundef 1) #41, !dbg !1212
  unreachable, !dbg !1212

62:                                               ; preds = %51
  tail call void @llvm.dbg.value(metadata i32 %52, metadata !418, metadata !DIExpression()), !dbg !1153
  %63 = tail call i32 @llvm.umax.i32(i32 %52, i32 1), !dbg !1213
  tail call void @llvm.dbg.value(metadata i32 %63, metadata !418, metadata !DIExpression()), !dbg !1153
  %64 = and i32 %63, 31, !dbg !1214
  %65 = icmp eq i32 %64, 0, !dbg !1214
  br i1 %65, label %173, label %66, !dbg !1215

66:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 390, ptr nonnull %3) #37, !dbg !1216
  %67 = call i32 @uname(ptr noundef nonnull %3) #37, !dbg !1217
  %68 = icmp eq i32 %67, -1, !dbg !1219
  br i1 %68, label %69, label %73, !dbg !1220

69:                                               ; preds = %66
  %70 = tail call ptr @__errno_location() #40, !dbg !1221
  %71 = load i32, ptr %70, align 4, !dbg !1221, !tbaa !890
  %72 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef 5) #37, !dbg !1221
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %71, ptr noundef %72) #37, !dbg !1221
  unreachable, !dbg !1221

73:                                               ; preds = %66
  %74 = and i32 %63, 1, !dbg !1222
  %75 = icmp eq i32 %74, 0, !dbg !1222
  br i1 %75, label %92, label %76, !dbg !1224

76:                                               ; preds = %73
  call void @llvm.dbg.value(metadata ptr %3, metadata !1225, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata !1231, metadata !1228, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata ptr %3, metadata !414, metadata !DIExpression()), !dbg !1232
  %77 = load i1, ptr @print_element.printed, align 1, !dbg !1234
  br i1 %77, label %78, label %89, !dbg !1236

78:                                               ; preds = %76
  call void @llvm.dbg.value(metadata i32 32, metadata !1237, metadata !DIExpression()), !dbg !1243
  %79 = load ptr, ptr @stdout, align 8, !dbg !1245, !tbaa !882
  %80 = getelementptr inbounds %struct._IO_FILE, ptr %79, i64 0, i32 5, !dbg !1245
  %81 = load ptr, ptr %80, align 8, !dbg !1245, !tbaa !1246
  %82 = getelementptr inbounds %struct._IO_FILE, ptr %79, i64 0, i32 6, !dbg !1245
  %83 = load ptr, ptr %82, align 8, !dbg !1245, !tbaa !1249
  %84 = icmp ult ptr %81, %83, !dbg !1245
  br i1 %84, label %87, label %85, !dbg !1245, !prof !1250

85:                                               ; preds = %78
  %86 = tail call i32 @__overflow(ptr noundef nonnull %79, i32 noundef 32) #37, !dbg !1245
  br label %89, !dbg !1245

87:                                               ; preds = %78
  %88 = getelementptr inbounds i8, ptr %81, i64 1, !dbg !1245
  store ptr %88, ptr %80, align 8, !dbg !1245, !tbaa !1246
  store i8 32, ptr %81, align 1, !dbg !1245, !tbaa !989
  br label %89, !dbg !1245

89:                                               ; preds = %76, %85, %87
  store i1 true, ptr @print_element.printed, align 1, !dbg !1251
  %90 = load ptr, ptr @stdout, align 8, !dbg !1252, !tbaa !882
  %91 = call i32 @fputs_unlocked(ptr noundef nonnull %3, ptr noundef %90), !dbg !1252
  br label %92, !dbg !1253

92:                                               ; preds = %89, %73
  %93 = and i32 %63, 2, !dbg !1254
  %94 = icmp eq i32 %93, 0, !dbg !1254
  br i1 %94, label %112, label %95, !dbg !1256

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.utsname, ptr %3, i64 0, i32 1, !dbg !1257
  call void @llvm.dbg.value(metadata ptr %96, metadata !1225, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata !1231, metadata !1228, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata ptr %96, metadata !414, metadata !DIExpression()), !dbg !1260
  %97 = load i1, ptr @print_element.printed, align 1, !dbg !1262
  br i1 %97, label %98, label %109, !dbg !1263

98:                                               ; preds = %95
  call void @llvm.dbg.value(metadata i32 32, metadata !1237, metadata !DIExpression()), !dbg !1264
  %99 = load ptr, ptr @stdout, align 8, !dbg !1266, !tbaa !882
  %100 = getelementptr inbounds %struct._IO_FILE, ptr %99, i64 0, i32 5, !dbg !1266
  %101 = load ptr, ptr %100, align 8, !dbg !1266, !tbaa !1246
  %102 = getelementptr inbounds %struct._IO_FILE, ptr %99, i64 0, i32 6, !dbg !1266
  %103 = load ptr, ptr %102, align 8, !dbg !1266, !tbaa !1249
  %104 = icmp ult ptr %101, %103, !dbg !1266
  br i1 %104, label %107, label %105, !dbg !1266, !prof !1250

105:                                              ; preds = %98
  %106 = tail call i32 @__overflow(ptr noundef nonnull %99, i32 noundef 32) #37, !dbg !1266
  br label %109, !dbg !1266

107:                                              ; preds = %98
  %108 = getelementptr inbounds i8, ptr %101, i64 1, !dbg !1266
  store ptr %108, ptr %100, align 8, !dbg !1266, !tbaa !1246
  store i8 32, ptr %101, align 1, !dbg !1266, !tbaa !989
  br label %109, !dbg !1266

109:                                              ; preds = %95, %105, %107
  store i1 true, ptr @print_element.printed, align 1, !dbg !1267
  %110 = load ptr, ptr @stdout, align 8, !dbg !1268, !tbaa !882
  %111 = call i32 @fputs_unlocked(ptr noundef nonnull %96, ptr noundef %110), !dbg !1268
  br label %112, !dbg !1269

112:                                              ; preds = %109, %92
  %113 = and i32 %63, 4, !dbg !1270
  %114 = icmp eq i32 %113, 0, !dbg !1270
  br i1 %114, label %132, label %115, !dbg !1272

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.utsname, ptr %3, i64 0, i32 2, !dbg !1273
  call void @llvm.dbg.value(metadata ptr %116, metadata !1225, metadata !DIExpression()), !dbg !1274
  call void @llvm.dbg.value(metadata !1231, metadata !1228, metadata !DIExpression()), !dbg !1274
  call void @llvm.dbg.value(metadata ptr %116, metadata !414, metadata !DIExpression()), !dbg !1276
  %117 = load i1, ptr @print_element.printed, align 1, !dbg !1278
  br i1 %117, label %118, label %129, !dbg !1279

118:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i32 32, metadata !1237, metadata !DIExpression()), !dbg !1280
  %119 = load ptr, ptr @stdout, align 8, !dbg !1282, !tbaa !882
  %120 = getelementptr inbounds %struct._IO_FILE, ptr %119, i64 0, i32 5, !dbg !1282
  %121 = load ptr, ptr %120, align 8, !dbg !1282, !tbaa !1246
  %122 = getelementptr inbounds %struct._IO_FILE, ptr %119, i64 0, i32 6, !dbg !1282
  %123 = load ptr, ptr %122, align 8, !dbg !1282, !tbaa !1249
  %124 = icmp ult ptr %121, %123, !dbg !1282
  br i1 %124, label %127, label %125, !dbg !1282, !prof !1250

125:                                              ; preds = %118
  %126 = tail call i32 @__overflow(ptr noundef nonnull %119, i32 noundef 32) #37, !dbg !1282
  br label %129, !dbg !1282

127:                                              ; preds = %118
  %128 = getelementptr inbounds i8, ptr %121, i64 1, !dbg !1282
  store ptr %128, ptr %120, align 8, !dbg !1282, !tbaa !1246
  store i8 32, ptr %121, align 1, !dbg !1282, !tbaa !989
  br label %129, !dbg !1282

129:                                              ; preds = %115, %125, %127
  store i1 true, ptr @print_element.printed, align 1, !dbg !1283
  %130 = load ptr, ptr @stdout, align 8, !dbg !1284, !tbaa !882
  %131 = call i32 @fputs_unlocked(ptr noundef nonnull %116, ptr noundef %130), !dbg !1284
  br label %132, !dbg !1285

132:                                              ; preds = %129, %112
  %133 = and i32 %63, 8, !dbg !1286
  %134 = icmp eq i32 %133, 0, !dbg !1286
  br i1 %134, label %152, label %135, !dbg !1288

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct.utsname, ptr %3, i64 0, i32 3, !dbg !1289
  call void @llvm.dbg.value(metadata ptr %136, metadata !1225, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.value(metadata !1231, metadata !1228, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.value(metadata ptr %136, metadata !414, metadata !DIExpression()), !dbg !1292
  %137 = load i1, ptr @print_element.printed, align 1, !dbg !1294
  br i1 %137, label %138, label %149, !dbg !1295

138:                                              ; preds = %135
  call void @llvm.dbg.value(metadata i32 32, metadata !1237, metadata !DIExpression()), !dbg !1296
  %139 = load ptr, ptr @stdout, align 8, !dbg !1298, !tbaa !882
  %140 = getelementptr inbounds %struct._IO_FILE, ptr %139, i64 0, i32 5, !dbg !1298
  %141 = load ptr, ptr %140, align 8, !dbg !1298, !tbaa !1246
  %142 = getelementptr inbounds %struct._IO_FILE, ptr %139, i64 0, i32 6, !dbg !1298
  %143 = load ptr, ptr %142, align 8, !dbg !1298, !tbaa !1249
  %144 = icmp ult ptr %141, %143, !dbg !1298
  br i1 %144, label %147, label %145, !dbg !1298, !prof !1250

145:                                              ; preds = %138
  %146 = tail call i32 @__overflow(ptr noundef nonnull %139, i32 noundef 32) #37, !dbg !1298
  br label %149, !dbg !1298

147:                                              ; preds = %138
  %148 = getelementptr inbounds i8, ptr %141, i64 1, !dbg !1298
  store ptr %148, ptr %140, align 8, !dbg !1298, !tbaa !1246
  store i8 32, ptr %141, align 1, !dbg !1298, !tbaa !989
  br label %149, !dbg !1298

149:                                              ; preds = %135, %145, %147
  store i1 true, ptr @print_element.printed, align 1, !dbg !1299
  %150 = load ptr, ptr @stdout, align 8, !dbg !1300, !tbaa !882
  %151 = call i32 @fputs_unlocked(ptr noundef nonnull %136, ptr noundef %150), !dbg !1300
  br label %152, !dbg !1301

152:                                              ; preds = %149, %132
  %153 = and i32 %63, 16, !dbg !1302
  %154 = icmp eq i32 %153, 0, !dbg !1302
  br i1 %154, label %172, label %155, !dbg !1304

155:                                              ; preds = %152
  %156 = getelementptr inbounds %struct.utsname, ptr %3, i64 0, i32 4, !dbg !1305
  call void @llvm.dbg.value(metadata ptr %156, metadata !1225, metadata !DIExpression()), !dbg !1306
  call void @llvm.dbg.value(metadata !1231, metadata !1228, metadata !DIExpression()), !dbg !1306
  call void @llvm.dbg.value(metadata ptr %156, metadata !414, metadata !DIExpression()), !dbg !1308
  %157 = load i1, ptr @print_element.printed, align 1, !dbg !1310
  br i1 %157, label %158, label %169, !dbg !1311

158:                                              ; preds = %155
  call void @llvm.dbg.value(metadata i32 32, metadata !1237, metadata !DIExpression()), !dbg !1312
  %159 = load ptr, ptr @stdout, align 8, !dbg !1314, !tbaa !882
  %160 = getelementptr inbounds %struct._IO_FILE, ptr %159, i64 0, i32 5, !dbg !1314
  %161 = load ptr, ptr %160, align 8, !dbg !1314, !tbaa !1246
  %162 = getelementptr inbounds %struct._IO_FILE, ptr %159, i64 0, i32 6, !dbg !1314
  %163 = load ptr, ptr %162, align 8, !dbg !1314, !tbaa !1249
  %164 = icmp ult ptr %161, %163, !dbg !1314
  br i1 %164, label %167, label %165, !dbg !1314, !prof !1250

165:                                              ; preds = %158
  %166 = tail call i32 @__overflow(ptr noundef nonnull %159, i32 noundef 32) #37, !dbg !1314
  br label %169, !dbg !1314

167:                                              ; preds = %158
  %168 = getelementptr inbounds i8, ptr %161, i64 1, !dbg !1314
  store ptr %168, ptr %160, align 8, !dbg !1314, !tbaa !1246
  store i8 32, ptr %161, align 1, !dbg !1314, !tbaa !989
  br label %169, !dbg !1314

169:                                              ; preds = %155, %165, %167
  store i1 true, ptr @print_element.printed, align 1, !dbg !1315
  %170 = load ptr, ptr @stdout, align 8, !dbg !1316, !tbaa !882
  %171 = call i32 @fputs_unlocked(ptr noundef nonnull %156, ptr noundef %170), !dbg !1316
  br label %172, !dbg !1317

172:                                              ; preds = %169, %152
  call void @llvm.lifetime.end.p0(i64 390, ptr nonnull %3) #37, !dbg !1318
  br label %173, !dbg !1319

173:                                              ; preds = %172, %62
  %174 = and i32 %63, 32, !dbg !1320
  %175 = icmp eq i32 %174, 0, !dbg !1320
  tail call void @llvm.dbg.value(metadata ptr @main.unknown, metadata !431, metadata !DIExpression()), !dbg !1321
  %176 = icmp eq i32 %52, -1
  %177 = select i1 %175, i1 true, i1 %176, !dbg !1322
  br i1 %177, label %194, label %178, !dbg !1322

178:                                              ; preds = %173
  call void @llvm.dbg.value(metadata ptr @main.unknown, metadata !414, metadata !DIExpression()), !dbg !1323
  %179 = load i1, ptr @print_element.printed, align 1, !dbg !1326
  br i1 %179, label %180, label %191, !dbg !1327

180:                                              ; preds = %178
  call void @llvm.dbg.value(metadata i32 32, metadata !1237, metadata !DIExpression()), !dbg !1328
  %181 = load ptr, ptr @stdout, align 8, !dbg !1330, !tbaa !882
  %182 = getelementptr inbounds %struct._IO_FILE, ptr %181, i64 0, i32 5, !dbg !1330
  %183 = load ptr, ptr %182, align 8, !dbg !1330, !tbaa !1246
  %184 = getelementptr inbounds %struct._IO_FILE, ptr %181, i64 0, i32 6, !dbg !1330
  %185 = load ptr, ptr %184, align 8, !dbg !1330, !tbaa !1249
  %186 = icmp ult ptr %183, %185, !dbg !1330
  br i1 %186, label %189, label %187, !dbg !1330, !prof !1250

187:                                              ; preds = %180
  %188 = tail call i32 @__overflow(ptr noundef nonnull %181, i32 noundef 32) #37, !dbg !1330
  br label %191, !dbg !1330

189:                                              ; preds = %180
  %190 = getelementptr inbounds i8, ptr %183, i64 1, !dbg !1330
  store ptr %190, ptr %182, align 8, !dbg !1330, !tbaa !1246
  store i8 32, ptr %183, align 1, !dbg !1330, !tbaa !989
  br label %191, !dbg !1330

191:                                              ; preds = %178, %187, %189
  store i1 true, ptr @print_element.printed, align 1, !dbg !1331
  %192 = load ptr, ptr @stdout, align 8, !dbg !1332, !tbaa !882
  %193 = tail call i32 @fputs_unlocked(ptr noundef nonnull @main.unknown, ptr noundef %192), !dbg !1332
  br label %194, !dbg !1333

194:                                              ; preds = %191, %173
  %195 = and i32 %63, 64, !dbg !1334
  %196 = icmp eq i32 %195, 0, !dbg !1334
  tail call void @llvm.dbg.value(metadata ptr @main.unknown, metadata !434, metadata !DIExpression()), !dbg !1335
  %197 = select i1 %196, i1 true, i1 %176, !dbg !1336
  br i1 %197, label %214, label %198, !dbg !1336

198:                                              ; preds = %194
  call void @llvm.dbg.value(metadata ptr @main.unknown, metadata !414, metadata !DIExpression()), !dbg !1337
  %199 = load i1, ptr @print_element.printed, align 1, !dbg !1340
  br i1 %199, label %200, label %211, !dbg !1341

200:                                              ; preds = %198
  call void @llvm.dbg.value(metadata i32 32, metadata !1237, metadata !DIExpression()), !dbg !1342
  %201 = load ptr, ptr @stdout, align 8, !dbg !1344, !tbaa !882
  %202 = getelementptr inbounds %struct._IO_FILE, ptr %201, i64 0, i32 5, !dbg !1344
  %203 = load ptr, ptr %202, align 8, !dbg !1344, !tbaa !1246
  %204 = getelementptr inbounds %struct._IO_FILE, ptr %201, i64 0, i32 6, !dbg !1344
  %205 = load ptr, ptr %204, align 8, !dbg !1344, !tbaa !1249
  %206 = icmp ult ptr %203, %205, !dbg !1344
  br i1 %206, label %209, label %207, !dbg !1344, !prof !1250

207:                                              ; preds = %200
  %208 = tail call i32 @__overflow(ptr noundef nonnull %201, i32 noundef 32) #37, !dbg !1344
  br label %211, !dbg !1344

209:                                              ; preds = %200
  %210 = getelementptr inbounds i8, ptr %203, i64 1, !dbg !1344
  store ptr %210, ptr %202, align 8, !dbg !1344, !tbaa !1246
  store i8 32, ptr %203, align 1, !dbg !1344, !tbaa !989
  br label %211, !dbg !1344

211:                                              ; preds = %198, %207, %209
  store i1 true, ptr @print_element.printed, align 1, !dbg !1345
  %212 = load ptr, ptr @stdout, align 8, !dbg !1346, !tbaa !882
  %213 = tail call i32 @fputs_unlocked(ptr noundef nonnull @main.unknown, ptr noundef %212), !dbg !1346
  br label %214, !dbg !1347

214:                                              ; preds = %211, %194
  %215 = and i32 %63, 128, !dbg !1348
  %216 = icmp eq i32 %215, 0, !dbg !1348
  br i1 %216, label %233, label %217, !dbg !1350

217:                                              ; preds = %214
  call void @llvm.dbg.value(metadata ptr @.str.26, metadata !414, metadata !DIExpression()), !dbg !1351
  %218 = load i1, ptr @print_element.printed, align 1, !dbg !1353
  br i1 %218, label %219, label %230, !dbg !1354

219:                                              ; preds = %217
  call void @llvm.dbg.value(metadata i32 32, metadata !1237, metadata !DIExpression()), !dbg !1355
  %220 = load ptr, ptr @stdout, align 8, !dbg !1357, !tbaa !882
  %221 = getelementptr inbounds %struct._IO_FILE, ptr %220, i64 0, i32 5, !dbg !1357
  %222 = load ptr, ptr %221, align 8, !dbg !1357, !tbaa !1246
  %223 = getelementptr inbounds %struct._IO_FILE, ptr %220, i64 0, i32 6, !dbg !1357
  %224 = load ptr, ptr %223, align 8, !dbg !1357, !tbaa !1249
  %225 = icmp ult ptr %222, %224, !dbg !1357
  br i1 %225, label %228, label %226, !dbg !1357, !prof !1250

226:                                              ; preds = %219
  %227 = tail call i32 @__overflow(ptr noundef nonnull %220, i32 noundef 32) #37, !dbg !1357
  br label %230, !dbg !1357

228:                                              ; preds = %219
  %229 = getelementptr inbounds i8, ptr %222, i64 1, !dbg !1357
  store ptr %229, ptr %221, align 8, !dbg !1357, !tbaa !1246
  store i8 32, ptr %222, align 1, !dbg !1357, !tbaa !989
  br label %230, !dbg !1357

230:                                              ; preds = %217, %226, %228
  store i1 true, ptr @print_element.printed, align 1, !dbg !1358
  %231 = load ptr, ptr @stdout, align 8, !dbg !1359, !tbaa !882
  %232 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.26, ptr noundef %231), !dbg !1359
  br label %233, !dbg !1360

233:                                              ; preds = %230, %214
  call void @llvm.dbg.value(metadata i32 10, metadata !1237, metadata !DIExpression()), !dbg !1361
  %234 = load ptr, ptr @stdout, align 8, !dbg !1363, !tbaa !882
  %235 = getelementptr inbounds %struct._IO_FILE, ptr %234, i64 0, i32 5, !dbg !1363
  %236 = load ptr, ptr %235, align 8, !dbg !1363, !tbaa !1246
  %237 = getelementptr inbounds %struct._IO_FILE, ptr %234, i64 0, i32 6, !dbg !1363
  %238 = load ptr, ptr %237, align 8, !dbg !1363, !tbaa !1249
  %239 = icmp ult ptr %236, %238, !dbg !1363
  br i1 %239, label %242, label %240, !dbg !1363, !prof !1250

240:                                              ; preds = %233
  %241 = tail call i32 @__overflow(ptr noundef nonnull %234, i32 noundef 10) #37, !dbg !1363
  br label %244, !dbg !1363

242:                                              ; preds = %233
  %243 = getelementptr inbounds i8, ptr %236, i64 1, !dbg !1363
  store ptr %243, ptr %235, align 8, !dbg !1363, !tbaa !1246
  store i8 10, ptr %236, align 1, !dbg !1363, !tbaa !989
  br label %244, !dbg !1363

244:                                              ; preds = %240, %242
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #1

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
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1391, metadata !DIExpression()), !dbg !1392
  store ptr %0, ptr @file_name, align 8, !dbg !1393, !tbaa !882
  ret void, !dbg !1394
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #13 !dbg !1395 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1399, metadata !DIExpression()), !dbg !1400
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1401, !tbaa !1402
  ret void, !dbg !1404
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #11 !dbg !1405 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1410, !tbaa !882
  %2 = tail call i32 @close_stream(ptr noundef %1) #37, !dbg !1411
  %3 = icmp eq i32 %2, 0, !dbg !1412
  br i1 %3, label %22, label %4, !dbg !1413

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1414, !tbaa !1402, !range !1415, !noundef !1231
  %6 = icmp eq i8 %5, 0, !dbg !1414
  br i1 %6, label %11, label %7, !dbg !1416

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #40, !dbg !1417
  %9 = load i32, ptr %8, align 4, !dbg !1417, !tbaa !890
  %10 = icmp eq i32 %9, 32, !dbg !1418
  br i1 %10, label %22, label %11, !dbg !1419

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1.25, i32 noundef 5) #37, !dbg !1420
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1407, metadata !DIExpression()), !dbg !1421
  %13 = load ptr, ptr @file_name, align 8, !dbg !1422, !tbaa !882
  %14 = icmp eq ptr %13, null, !dbg !1422
  %15 = tail call ptr @__errno_location() #40, !dbg !1424
  %16 = load i32, ptr %15, align 4, !dbg !1424, !tbaa !890
  br i1 %14, label %19, label %17, !dbg !1425

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #37, !dbg !1426
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.26, ptr noundef %18, ptr noundef %12) #37, !dbg !1426
  br label %20, !dbg !1426

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.27, ptr noundef %12) #37, !dbg !1427
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1428, !tbaa !890
  tail call void @_exit(i32 noundef %21) #39, !dbg !1429
  unreachable, !dbg !1429

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1430, !tbaa !882
  %24 = tail call i32 @close_stream(ptr noundef %23) #37, !dbg !1432
  %25 = icmp eq i32 %24, 0, !dbg !1433
  br i1 %25, label %28, label %26, !dbg !1434

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1435, !tbaa !890
  tail call void @_exit(i32 noundef %27) #39, !dbg !1436
  unreachable, !dbg !1436

28:                                               ; preds = %22
  ret void, !dbg !1437
}

; Function Attrs: noreturn
declare !dbg !1438 void @_exit(i32 noundef) local_unnamed_addr #14

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #15 !dbg !1440 {
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1444, metadata !DIExpression()), !dbg !1448
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1445, metadata !DIExpression()), !dbg !1448
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1446, metadata !DIExpression()), !dbg !1448
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1447, metadata !DIExpression(DW_OP_deref)), !dbg !1448
  tail call fastcc void @flush_stdout(), !dbg !1449
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1450, !tbaa !882
  %7 = icmp eq ptr %6, null, !dbg !1450
  br i1 %7, label %9, label %8, !dbg !1452

8:                                                ; preds = %4
  tail call void %6() #37, !dbg !1453
  br label %13, !dbg !1453

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1454, !tbaa !882
  %11 = tail call ptr @getprogname() #38, !dbg !1454
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.80, ptr noundef %11) #37, !dbg !1454
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #37, !dbg !1456
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1456, !tbaa.struct !1457
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1456
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #37, !dbg !1456
  ret void, !dbg !1458
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #11 !dbg !1459 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1461, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i32 1, metadata !1463, metadata !DIExpression()), !dbg !1466
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #37, !dbg !1469
  %2 = icmp slt i32 %1, 0, !dbg !1470
  br i1 %2, label %6, label %3, !dbg !1471

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1472, !tbaa !882
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #37, !dbg !1472
  br label %6, !dbg !1472

6:                                                ; preds = %3, %0
  ret void, !dbg !1473
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #16

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #11 !dbg !1474 {
  %5 = alloca [1024 x i8], align 1, !DIAssignID !1480
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1476, metadata !DIExpression()), !dbg !1481
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1477, metadata !DIExpression()), !dbg !1481
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1478, metadata !DIExpression()), !dbg !1481
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1479, metadata !DIExpression(DW_OP_deref)), !dbg !1481
  %7 = load ptr, ptr @stderr, align 8, !dbg !1482, !tbaa !882
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #37, !dbg !1483, !noalias !1527
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1531
  call void @llvm.dbg.value(metadata ptr %7, metadata !1523, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata ptr %2, metadata !1524, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata ptr poison, metadata !1525, metadata !DIExpression(DW_OP_deref)), !dbg !1532
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #37, !dbg !1483
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #37, !dbg !1483, !noalias !1527
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1533, !tbaa !890
  %10 = add i32 %9, 1, !dbg !1533
  store i32 %10, ptr @error_message_count, align 4, !dbg !1533, !tbaa !890
  %11 = icmp eq i32 %1, 0, !dbg !1534
  br i1 %11, label %21, label %12, !dbg !1536

12:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1537, metadata !DIExpression(), metadata !1480, metadata ptr %5, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.value(metadata i32 %1, metadata !1540, metadata !DIExpression()), !dbg !1545
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #37, !dbg !1547
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #37, !dbg !1548
  call void @llvm.dbg.value(metadata ptr %13, metadata !1541, metadata !DIExpression()), !dbg !1545
  %14 = icmp eq ptr %13, null, !dbg !1549
  br i1 %14, label %15, label %17, !dbg !1551

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.81, ptr noundef nonnull @.str.5.82, i32 noundef 5) #37, !dbg !1552
  call void @llvm.dbg.value(metadata ptr %16, metadata !1541, metadata !DIExpression()), !dbg !1545
  br label %17, !dbg !1553

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1545
  call void @llvm.dbg.value(metadata ptr %18, metadata !1541, metadata !DIExpression()), !dbg !1545
  %19 = load ptr, ptr @stderr, align 8, !dbg !1554, !tbaa !882
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.83, ptr noundef %18) #37, !dbg !1554
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #37, !dbg !1555
  br label %21, !dbg !1556

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !1557, !tbaa !882
  call void @llvm.dbg.value(metadata i32 10, metadata !1558, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata ptr %22, metadata !1563, metadata !DIExpression()), !dbg !1564
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !1566
  %24 = load ptr, ptr %23, align 8, !dbg !1566, !tbaa !1246
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !1566
  %26 = load ptr, ptr %25, align 8, !dbg !1566, !tbaa !1249
  %27 = icmp ult ptr %24, %26, !dbg !1566
  br i1 %27, label %30, label %28, !dbg !1566, !prof !1250

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #37, !dbg !1566
  br label %32, !dbg !1566

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1566
  store ptr %31, ptr %23, align 8, !dbg !1566, !tbaa !1246
  store i8 10, ptr %24, align 1, !dbg !1566, !tbaa !989
  br label %32, !dbg !1566

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !1567, !tbaa !882
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #37, !dbg !1567
  %35 = icmp eq i32 %0, 0, !dbg !1568
  br i1 %35, label %37, label %36, !dbg !1570

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #39, !dbg !1571
  unreachable, !dbg !1571

37:                                               ; preds = %32
  ret void, !dbg !1572
}

declare !dbg !1573 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1576 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1579 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1582 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #11 !dbg !1586 {
  %4 = alloca %struct.__va_list, align 8, !DIAssignID !1594
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1593, metadata !DIExpression(), metadata !1594, metadata ptr %4, metadata !DIExpression()), !dbg !1595
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1590, metadata !DIExpression()), !dbg !1595
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1591, metadata !DIExpression()), !dbg !1595
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1592, metadata !DIExpression()), !dbg !1595
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #37, !dbg !1596
  call void @llvm.va_start(ptr nonnull %4), !dbg !1597
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #37, !dbg !1598
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1598, !tbaa.struct !1457
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #42, !dbg !1598
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #37, !dbg !1598
  call void @llvm.va_end(ptr nonnull %4), !dbg !1599
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #37, !dbg !1600
  ret void, !dbg !1600
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #15 !dbg !477 {
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !493, metadata !DIExpression()), !dbg !1601
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !494, metadata !DIExpression()), !dbg !1601
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !495, metadata !DIExpression()), !dbg !1601
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !496, metadata !DIExpression()), !dbg !1601
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !497, metadata !DIExpression()), !dbg !1601
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !498, metadata !DIExpression(DW_OP_deref)), !dbg !1601
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !1602, !tbaa !890
  %9 = icmp eq i32 %8, 0, !dbg !1602
  br i1 %9, label %24, label %10, !dbg !1604

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1605, !tbaa !890
  %12 = icmp eq i32 %11, %3, !dbg !1608
  br i1 %12, label %13, label %23, !dbg !1609

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1610, !tbaa !882
  %15 = icmp eq ptr %14, %2, !dbg !1611
  br i1 %15, label %37, label %16, !dbg !1612

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !1613
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !1614
  br i1 %19, label %20, label %23, !dbg !1614

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1615
  %22 = icmp eq i32 %21, 0, !dbg !1616
  br i1 %22, label %37, label %23, !dbg !1617

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1618, !tbaa !882
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1619, !tbaa !890
  br label %24, !dbg !1620

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1621
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !1622, !tbaa !882
  %26 = icmp eq ptr %25, null, !dbg !1622
  br i1 %26, label %28, label %27, !dbg !1624

27:                                               ; preds = %24
  tail call void %25() #37, !dbg !1625
  br label %32, !dbg !1625

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !1626, !tbaa !882
  %30 = tail call ptr @getprogname() #38, !dbg !1626
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.86, ptr noundef %30) #37, !dbg !1626
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !1628, !tbaa !882
  %34 = icmp eq ptr %2, null, !dbg !1628
  %35 = select i1 %34, ptr @.str.3.87, ptr @.str.2.88, !dbg !1628
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #37, !dbg !1628
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #37, !dbg !1629
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1629, !tbaa.struct !1457
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !1629
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #37, !dbg !1629
  br label %37, !dbg !1630

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !1630
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #11 !dbg !1631 {
  %6 = alloca %struct.__va_list, align 8, !DIAssignID !1641
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1640, metadata !DIExpression(), metadata !1641, metadata ptr %6, metadata !DIExpression()), !dbg !1642
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1635, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1636, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1637, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1638, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1639, metadata !DIExpression()), !dbg !1642
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #37, !dbg !1643
  call void @llvm.va_start(ptr nonnull %6), !dbg !1644
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #37, !dbg !1645
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1645, !tbaa.struct !1457
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #42, !dbg !1645
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #37, !dbg !1645
  call void @llvm.va_end(ptr nonnull %6), !dbg !1646
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #37, !dbg !1647
  ret void, !dbg !1647
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #18 !dbg !1648 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1651, !tbaa !882
  ret ptr %1, !dbg !1652
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #19 !dbg !1653 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1655, metadata !DIExpression()), !dbg !1658
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #38, !dbg !1659
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1656, metadata !DIExpression()), !dbg !1658
  %3 = icmp eq ptr %2, null, !dbg !1660
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1660
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1660
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1657, metadata !DIExpression()), !dbg !1658
  %6 = ptrtoint ptr %5 to i64, !dbg !1661
  %7 = ptrtoint ptr %0 to i64, !dbg !1661
  %8 = sub i64 %6, %7, !dbg !1661
  %9 = icmp sgt i64 %8, 6, !dbg !1663
  br i1 %9, label %10, label %19, !dbg !1664

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1665
  call void @llvm.dbg.value(metadata ptr %11, metadata !1666, metadata !DIExpression()), !dbg !1673
  call void @llvm.dbg.value(metadata ptr @.str.97, metadata !1671, metadata !DIExpression()), !dbg !1673
  call void @llvm.dbg.value(metadata i64 7, metadata !1672, metadata !DIExpression()), !dbg !1673
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.97, i64 7), !dbg !1675
  %13 = icmp eq i32 %12, 0, !dbg !1676
  br i1 %13, label %14, label %19, !dbg !1677

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1655, metadata !DIExpression()), !dbg !1658
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.98, i64 noundef 3) #38, !dbg !1678
  %16 = icmp eq i32 %15, 0, !dbg !1681
  %17 = select i1 %16, i64 3, i64 0, !dbg !1682
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !1682
  br label %19, !dbg !1682

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1658
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1657, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !1655, metadata !DIExpression()), !dbg !1658
  store ptr %20, ptr @program_name, align 8, !dbg !1683, !tbaa !882
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1684, !tbaa !882
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1685, !tbaa !882
  ret void, !dbg !1686
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1687 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #11 !dbg !535 {
  %3 = alloca i32, align 4, !DIAssignID !1688
  call void @llvm.dbg.assign(metadata i1 undef, metadata !545, metadata !DIExpression(), metadata !1688, metadata ptr %3, metadata !DIExpression()), !dbg !1689
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1690
  call void @llvm.dbg.assign(metadata i1 undef, metadata !550, metadata !DIExpression(), metadata !1690, metadata ptr %4, metadata !DIExpression()), !dbg !1689
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !542, metadata !DIExpression()), !dbg !1689
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !543, metadata !DIExpression()), !dbg !1689
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #37, !dbg !1691
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !544, metadata !DIExpression()), !dbg !1689
  %6 = icmp eq ptr %5, %0, !dbg !1692
  br i1 %6, label %7, label %14, !dbg !1694

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #37, !dbg !1695
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #37, !dbg !1696
  call void @llvm.dbg.value(metadata ptr %4, metadata !1697, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata ptr %4, metadata !1706, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata i32 0, metadata !1712, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata i64 8, metadata !1713, metadata !DIExpression()), !dbg !1714
  store i64 0, ptr %4, align 8, !dbg !1716
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #37, !dbg !1717
  %9 = icmp eq i64 %8, 2, !dbg !1719
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1720
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1689
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #37, !dbg !1721
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #37, !dbg !1721
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1689
  ret ptr %15, !dbg !1721
}

; Function Attrs: nounwind
declare !dbg !1722 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #11 !dbg !1728 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1733, metadata !DIExpression()), !dbg !1736
  %2 = tail call ptr @__errno_location() #40, !dbg !1737
  %3 = load i32, ptr %2, align 4, !dbg !1737, !tbaa !890
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1734, metadata !DIExpression()), !dbg !1736
  %4 = icmp eq ptr %0, null, !dbg !1738
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1738
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #43, !dbg !1739
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1735, metadata !DIExpression()), !dbg !1736
  store i32 %3, ptr %2, align 4, !dbg !1740, !tbaa !890
  ret ptr %6, !dbg !1741
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #20 !dbg !1742 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1748, metadata !DIExpression()), !dbg !1749
  %2 = icmp eq ptr %0, null, !dbg !1750
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1750
  %4 = load i32, ptr %3, align 8, !dbg !1751, !tbaa !1752
  ret i32 %4, !dbg !1754
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1755 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1759, metadata !DIExpression()), !dbg !1761
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1760, metadata !DIExpression()), !dbg !1761
  %3 = icmp eq ptr %0, null, !dbg !1762
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1762
  store i32 %1, ptr %4, align 8, !dbg !1763, !tbaa !1752
  ret void, !dbg !1764
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #22 !dbg !1765 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1769, metadata !DIExpression()), !dbg !1777
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1770, metadata !DIExpression()), !dbg !1777
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1771, metadata !DIExpression()), !dbg !1777
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1772, metadata !DIExpression()), !dbg !1777
  %4 = icmp eq ptr %0, null, !dbg !1778
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1778
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1779
  %7 = lshr i8 %1, 5, !dbg !1780
  %8 = zext nneg i8 %7 to i64, !dbg !1780
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1781
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1773, metadata !DIExpression()), !dbg !1777
  %10 = and i8 %1, 31, !dbg !1782
  %11 = zext nneg i8 %10 to i32, !dbg !1782
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1775, metadata !DIExpression()), !dbg !1777
  %12 = load i32, ptr %9, align 4, !dbg !1783, !tbaa !890
  %13 = lshr i32 %12, %11, !dbg !1784
  %14 = and i32 %13, 1, !dbg !1785
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !1776, metadata !DIExpression()), !dbg !1777
  %15 = xor i32 %13, %2, !dbg !1786
  %16 = and i32 %15, 1, !dbg !1786
  %17 = shl nuw i32 %16, %11, !dbg !1787
  %18 = xor i32 %17, %12, !dbg !1788
  store i32 %18, ptr %9, align 4, !dbg !1788, !tbaa !890
  ret i32 %14, !dbg !1789
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #22 !dbg !1790 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1794, metadata !DIExpression()), !dbg !1797
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1795, metadata !DIExpression()), !dbg !1797
  %3 = icmp eq ptr %0, null, !dbg !1798
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1800
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1794, metadata !DIExpression()), !dbg !1797
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1801
  %6 = load i32, ptr %5, align 4, !dbg !1801, !tbaa !1802
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1796, metadata !DIExpression()), !dbg !1797
  store i32 %1, ptr %5, align 4, !dbg !1803, !tbaa !1802
  ret i32 %6, !dbg !1804
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #11 !dbg !1805 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1809, metadata !DIExpression()), !dbg !1812
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1810, metadata !DIExpression()), !dbg !1812
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1811, metadata !DIExpression()), !dbg !1812
  %4 = icmp eq ptr %0, null, !dbg !1813
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1815
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1809, metadata !DIExpression()), !dbg !1812
  store i32 10, ptr %5, align 8, !dbg !1816, !tbaa !1752
  %6 = icmp ne ptr %1, null, !dbg !1817
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1819
  br i1 %8, label %10, label %9, !dbg !1819

9:                                                ; preds = %3
  tail call void @abort() #39, !dbg !1820
  unreachable, !dbg !1820

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1821
  store ptr %1, ptr %11, align 8, !dbg !1822, !tbaa !1823
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1824
  store ptr %2, ptr %12, align 8, !dbg !1825, !tbaa !1826
  ret void, !dbg !1827
}

; Function Attrs: noreturn nounwind
declare !dbg !1828 void @abort() local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #11 !dbg !1829 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1833, metadata !DIExpression()), !dbg !1841
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1834, metadata !DIExpression()), !dbg !1841
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1835, metadata !DIExpression()), !dbg !1841
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1836, metadata !DIExpression()), !dbg !1841
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1837, metadata !DIExpression()), !dbg !1841
  %6 = icmp eq ptr %4, null, !dbg !1842
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1842
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1838, metadata !DIExpression()), !dbg !1841
  %8 = tail call ptr @__errno_location() #40, !dbg !1843
  %9 = load i32, ptr %8, align 4, !dbg !1843, !tbaa !890
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1839, metadata !DIExpression()), !dbg !1841
  %10 = load i32, ptr %7, align 8, !dbg !1844, !tbaa !1752
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1845
  %12 = load i32, ptr %11, align 4, !dbg !1845, !tbaa !1802
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1846
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1847
  %15 = load ptr, ptr %14, align 8, !dbg !1847, !tbaa !1823
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1848
  %17 = load ptr, ptr %16, align 8, !dbg !1848, !tbaa !1826
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1849
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !1840, metadata !DIExpression()), !dbg !1841
  store i32 %9, ptr %8, align 4, !dbg !1850, !tbaa !890
  ret i64 %18, !dbg !1851
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #11 !dbg !1852 {
  %10 = alloca i32, align 4, !DIAssignID !1920
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1921
  %12 = alloca i32, align 4, !DIAssignID !1922
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1923
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1924
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1898, metadata !DIExpression(), metadata !1924, metadata ptr %14, metadata !DIExpression()), !dbg !1925
  %15 = alloca i32, align 4, !DIAssignID !1926
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1901, metadata !DIExpression(), metadata !1926, metadata ptr %15, metadata !DIExpression()), !dbg !1927
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1858, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1859, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1860, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1861, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1862, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1863, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1864, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1865, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1866, metadata !DIExpression()), !dbg !1928
  %16 = tail call i64 @__ctype_get_mb_cur_max() #37, !dbg !1929
  %17 = icmp eq i64 %16, 1, !dbg !1930
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !1867, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1928
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1868, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1869, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1870, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1871, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1872, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1873, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1928
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1874, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1875, metadata !DIExpression()), !dbg !1928
  %18 = and i32 %5, 2, !dbg !1931
  %19 = icmp ne i32 %18, 0, !dbg !1931
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !1931

27:                                               ; preds = %585, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %585 ]
  %29 = phi ptr [ %7, %9 ], [ %103, %585 ]
  %30 = phi ptr [ %8, %9 ], [ %104, %585 ]
  %31 = phi i64 [ %3, %9 ], [ %.lcssa60, %585 ]
  %32 = phi i64 [ 0, %9 ], [ %.lcssa44, %585 ], !dbg !1932
  %33 = phi ptr [ null, %9 ], [ %106, %585 ], !dbg !1933
  %34 = phi i64 [ 0, %9 ], [ %107, %585 ], !dbg !1934
  %35 = phi i1 [ false, %9 ], [ %108, %585 ]
  %36 = phi i1 [ %19, %9 ], [ false, %585 ]
  %37 = phi i1 [ false, %9 ], [ %.lcssa38, %585 ]
  %38 = phi i1 [ true, %9 ], [ false, %585 ]
  %39 = phi i64 [ %1, %9 ], [ %.lcssa44, %585 ]
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !1859, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1875, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1874, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1873, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1872, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !1871, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !1870, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !1869, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1868, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !1861, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !1866, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata ptr %29, metadata !1865, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !1862, metadata !DIExpression()), !dbg !1928
  call void @llvm.dbg.label(metadata !1876), !dbg !1935
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1877, metadata !DIExpression()), !dbg !1928
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
  ], !dbg !1936

40:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1873, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1862, metadata !DIExpression()), !dbg !1928
  br label %101, !dbg !1937

41:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1873, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1862, metadata !DIExpression()), !dbg !1928
  br i1 %36, label %101, label %42, !dbg !1937

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !1938
  br i1 %43, label %101, label %44, !dbg !1942

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !1938, !tbaa !989
  br label %101, !dbg !1938

45:                                               ; preds = %27, %27
  call void @llvm.dbg.assign(metadata i1 undef, metadata !651, metadata !DIExpression(), metadata !1922, metadata ptr %12, metadata !DIExpression()), !dbg !1943
  call void @llvm.dbg.assign(metadata i1 undef, metadata !652, metadata !DIExpression(), metadata !1923, metadata ptr %13, metadata !DIExpression()), !dbg !1943
  call void @llvm.dbg.value(metadata ptr @.str.11.111, metadata !648, metadata !DIExpression()), !dbg !1943
  call void @llvm.dbg.value(metadata i32 %28, metadata !649, metadata !DIExpression()), !dbg !1943
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.112, ptr noundef nonnull @.str.11.111, i32 noundef 5) #37, !dbg !1947
  call void @llvm.dbg.value(metadata ptr %46, metadata !650, metadata !DIExpression()), !dbg !1943
  %47 = icmp eq ptr %46, @.str.11.111, !dbg !1948
  br i1 %47, label %48, label %57, !dbg !1950

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #37, !dbg !1951
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #37, !dbg !1952
  call void @llvm.dbg.value(metadata ptr %13, metadata !1953, metadata !DIExpression()), !dbg !1959
  call void @llvm.dbg.value(metadata ptr %13, metadata !1961, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i32 0, metadata !1964, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 8, metadata !1965, metadata !DIExpression()), !dbg !1966
  store i64 0, ptr %13, align 8, !dbg !1968
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #37, !dbg !1969
  %50 = icmp eq i64 %49, 3, !dbg !1971
  %51 = load i32, ptr %12, align 4
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !1972
  %54 = icmp eq i32 %28, 9, !dbg !1972
  %55 = select i1 %54, ptr @.str.10.113, ptr @.str.12.114, !dbg !1972
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !1972
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #37, !dbg !1973
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #37, !dbg !1973
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !1943
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !1865, metadata !DIExpression()), !dbg !1928
  call void @llvm.dbg.assign(metadata i1 undef, metadata !651, metadata !DIExpression(), metadata !1920, metadata ptr %10, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.assign(metadata i1 undef, metadata !652, metadata !DIExpression(), metadata !1921, metadata ptr %11, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata ptr @.str.12.114, metadata !648, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i32 %28, metadata !649, metadata !DIExpression()), !dbg !1974
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.112, ptr noundef nonnull @.str.12.114, i32 noundef 5) #37, !dbg !1976
  call void @llvm.dbg.value(metadata ptr %59, metadata !650, metadata !DIExpression()), !dbg !1974
  %60 = icmp eq ptr %59, @.str.12.114, !dbg !1977
  br i1 %60, label %61, label %70, !dbg !1978

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #37, !dbg !1979
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #37, !dbg !1980
  call void @llvm.dbg.value(metadata ptr %11, metadata !1953, metadata !DIExpression()), !dbg !1981
  call void @llvm.dbg.value(metadata ptr %11, metadata !1961, metadata !DIExpression()), !dbg !1983
  call void @llvm.dbg.value(metadata i32 0, metadata !1964, metadata !DIExpression()), !dbg !1983
  call void @llvm.dbg.value(metadata i64 8, metadata !1965, metadata !DIExpression()), !dbg !1983
  store i64 0, ptr %11, align 8, !dbg !1985
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #37, !dbg !1986
  %63 = icmp eq i64 %62, 3, !dbg !1987
  %64 = load i32, ptr %10, align 4
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !1988
  %67 = icmp eq i32 %28, 9, !dbg !1988
  %68 = select i1 %67, ptr @.str.10.113, ptr @.str.12.114, !dbg !1988
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !1988
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #37, !dbg !1989
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #37, !dbg !1989
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !1866, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !1865, metadata !DIExpression()), !dbg !1928
  br i1 %36, label %88, label %73, !dbg !1990

73:                                               ; preds = %70
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !1878, metadata !DIExpression()), !dbg !1991
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1868, metadata !DIExpression()), !dbg !1928
  %74 = load i8, ptr %71, align 1, !dbg !1992, !tbaa !989
  %75 = icmp eq i8 %74, 0, !dbg !1994
  br i1 %75, label %88, label %.preheader11, !dbg !1994

.preheader11:                                     ; preds = %73
  br label %76, !dbg !1994

76:                                               ; preds = %.preheader11, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %.preheader11 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %.preheader11 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %.preheader11 ]
  tail call void @llvm.dbg.value(metadata ptr %78, metadata !1878, metadata !DIExpression()), !dbg !1991
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !1868, metadata !DIExpression()), !dbg !1928
  %80 = icmp ult i64 %79, %39, !dbg !1995
  br i1 %80, label %81, label %83, !dbg !1998

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !1995
  store i8 %77, ptr %82, align 1, !dbg !1995, !tbaa !989
  br label %83, !dbg !1995

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !1998
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !1868, metadata !DIExpression()), !dbg !1928
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !1999
  tail call void @llvm.dbg.value(metadata ptr %85, metadata !1878, metadata !DIExpression()), !dbg !1991
  %86 = load i8, ptr %85, align 1, !dbg !1992, !tbaa !989
  %87 = icmp eq i8 %86, 0, !dbg !1994
  br i1 %87, label %.loopexit12, label %76, !dbg !1994, !llvm.loop !2000

.loopexit12:                                      ; preds = %83
  %.lcssa14 = phi i64 [ %84, %83 ], !dbg !1998
  br label %88, !dbg !2002

88:                                               ; preds = %.loopexit12, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %.lcssa14, %.loopexit12 ], !dbg !2003
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !1868, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1872, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !1870, metadata !DIExpression()), !dbg !1928
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #38, !dbg !2002
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !1871, metadata !DIExpression()), !dbg !1928
  br label %101, !dbg !2004

91:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1872, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1873, metadata !DIExpression()), !dbg !1928
  br label %101, !dbg !2005

92:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1873, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1872, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1862, metadata !DIExpression()), !dbg !1928
  br label %101, !dbg !2006

93:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1873, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1872, metadata !DIExpression()), !dbg !1928
  br i1 %36, label %101, label %95, !dbg !2007

94:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1873, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1872, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1862, metadata !DIExpression()), !dbg !1928
  br i1 %36, label %101, label %95, !dbg !2006

95:                                               ; preds = %93, %94
  %96 = phi i1 [ %35, %94 ], [ true, %93 ]
  %97 = icmp eq i64 %39, 0, !dbg !2008
  br i1 %97, label %101, label %98, !dbg !2012

98:                                               ; preds = %95
  store i8 39, ptr %0, align 1, !dbg !2008, !tbaa !989
  br label %101, !dbg !2008

99:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1873, metadata !DIExpression()), !dbg !1928
  br label %101, !dbg !2013

100:                                              ; preds = %27
  call void @abort() #39, !dbg !2014
  unreachable, !dbg !2014

101:                                              ; preds = %93, %91, %92, %40, %94, %98, %95, %27, %41, %44, %42, %99, %88
  %102 = phi i32 [ 0, %99 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %95 ], [ 2, %98 ], [ 2, %94 ], [ 5, %40 ], [ 2, %91 ], [ 2, %92 ], [ 2, %93 ]
  %103 = phi ptr [ %29, %99 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %95 ], [ %29, %98 ], [ %29, %94 ], [ %29, %40 ], [ %29, %91 ], [ %29, %92 ], [ %29, %93 ]
  %104 = phi ptr [ %30, %99 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %95 ], [ %30, %98 ], [ %30, %94 ], [ %30, %40 ], [ %30, %91 ], [ %30, %92 ], [ %30, %93 ]
  %105 = phi i64 [ 0, %99 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %95 ], [ 1, %98 ], [ 0, %94 ], [ 0, %40 ], [ 0, %91 ], [ 0, %92 ], [ 0, %93 ], !dbg !2003
  %106 = phi ptr [ %33, %99 ], [ %72, %88 ], [ @.str.10.113, %42 ], [ @.str.10.113, %44 ], [ @.str.10.113, %41 ], [ %33, %27 ], [ @.str.12.114, %95 ], [ @.str.12.114, %98 ], [ @.str.12.114, %94 ], [ @.str.10.113, %40 ], [ @.str.12.114, %91 ], [ @.str.12.114, %92 ], [ @.str.12.114, %93 ], !dbg !1928
  %107 = phi i64 [ %34, %99 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %95 ], [ 1, %98 ], [ 1, %94 ], [ 1, %40 ], [ 1, %91 ], [ 1, %92 ], [ 1, %93 ], !dbg !1928
  %108 = phi i1 [ %35, %99 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %96, %95 ], [ %96, %98 ], [ %35, %94 ], [ true, %40 ], [ %35, %91 ], [ true, %92 ], [ %35, %93 ]
  %109 = phi i1 [ false, %99 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %95 ], [ false, %98 ], [ true, %94 ], [ true, %40 ], [ true, %91 ], [ true, %92 ], [ true, %93 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1873, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1872, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !1871, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata ptr %106, metadata !1870, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i64 %105, metadata !1868, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata ptr %104, metadata !1866, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata ptr %103, metadata !1865, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i32 %102, metadata !1862, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1883, metadata !DIExpression()), !dbg !2015
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
  br label %121, !dbg !2016

121:                                              ; preds = %563, %101
  %122 = phi i64 [ %31, %101 ], [ %564, %563 ]
  %123 = phi i64 [ %105, %101 ], [ %565, %563 ], !dbg !2003
  %124 = phi i64 [ %32, %101 ], [ %566, %563 ], !dbg !1932
  %125 = phi i1 [ %37, %101 ], [ %567, %563 ]
  %126 = phi i1 [ %38, %101 ], [ %568, %563 ]
  %127 = phi i1 [ false, %101 ], [ %569, %563 ]
  %128 = phi i64 [ 0, %101 ], [ %572, %563 ], !dbg !2017
  %129 = phi i64 [ %39, %101 ], [ %571, %563 ]
  tail call void @llvm.dbg.value(metadata i64 %129, metadata !1859, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i64 %128, metadata !1883, metadata !DIExpression()), !dbg !2015
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1877, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1875, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1874, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !1869, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i64 %123, metadata !1868, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i64 %122, metadata !1861, metadata !DIExpression()), !dbg !1928
  %130 = icmp eq i64 %122, -1, !dbg !2018
  br i1 %130, label %131, label %135, !dbg !2019

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2020
  %133 = load i8, ptr %132, align 1, !dbg !2020, !tbaa !989
  %134 = icmp eq i8 %133, 0, !dbg !2021
  br i1 %134, label %573, label %137, !dbg !2022

135:                                              ; preds = %121
  %136 = icmp eq i64 %128, %122, !dbg !2023
  br i1 %136, label %573, label %137, !dbg !2022

137:                                              ; preds = %131, %135
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1885, metadata !DIExpression()), !dbg !2024
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1888, metadata !DIExpression()), !dbg !2024
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1889, metadata !DIExpression()), !dbg !2024
  br i1 %113, label %138, label %151, !dbg !2025

138:                                              ; preds = %137
  %139 = add i64 %128, %107, !dbg !2027
  %140 = select i1 %130, i1 %114, i1 false, !dbg !2028
  br i1 %140, label %141, label %143, !dbg !2028

141:                                              ; preds = %138
  %142 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !2029
  tail call void @llvm.dbg.value(metadata i64 %142, metadata !1861, metadata !DIExpression()), !dbg !1928
  br label %143, !dbg !2030

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %122, %138 ], !dbg !2030
  tail call void @llvm.dbg.value(metadata i64 %144, metadata !1861, metadata !DIExpression()), !dbg !1928
  %145 = icmp ugt i64 %139, %144, !dbg !2031
  br i1 %145, label %151, label %146, !dbg !2032

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2033
  call void @llvm.dbg.value(metadata ptr %147, metadata !2034, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata ptr %106, metadata !2037, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %107, metadata !2038, metadata !DIExpression()), !dbg !2039
  %148 = call i32 @bcmp(ptr %147, ptr %106, i64 %107), !dbg !2041
  %149 = icmp eq i32 %148, 0, !dbg !2042
  %150 = and i1 %149, %109, !dbg !2043
  br i1 %150, label %.loopexit7, label %151, !dbg !2043

151:                                              ; preds = %146, %143, %137
  %152 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %122, %137 ]
  %153 = phi i1 [ %149, %146 ], [ false, %143 ], [ false, %137 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1885, metadata !DIExpression()), !dbg !2024
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !1861, metadata !DIExpression()), !dbg !1928
  %154 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2044
  %155 = load i8, ptr %154, align 1, !dbg !2044, !tbaa !989
  tail call void @llvm.dbg.value(metadata i8 %155, metadata !1890, metadata !DIExpression()), !dbg !2024
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
  ], !dbg !2045

156:                                              ; preds = %151
  br i1 %108, label %157, label %203, !dbg !2046

157:                                              ; preds = %156
  br i1 %109, label %613, label %158, !dbg !2047

158:                                              ; preds = %157
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1888, metadata !DIExpression()), !dbg !2024
  %159 = select i1 %110, i1 true, i1 %127, !dbg !2051
  br i1 %159, label %176, label %160, !dbg !2051

160:                                              ; preds = %158
  %161 = icmp ult i64 %123, %129, !dbg !2053
  br i1 %161, label %162, label %164, !dbg !2057

162:                                              ; preds = %160
  %163 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2053
  store i8 39, ptr %163, align 1, !dbg !2053, !tbaa !989
  br label %164, !dbg !2053

164:                                              ; preds = %162, %160
  %165 = add i64 %123, 1, !dbg !2057
  tail call void @llvm.dbg.value(metadata i64 %165, metadata !1868, metadata !DIExpression()), !dbg !1928
  %166 = icmp ult i64 %165, %129, !dbg !2058
  br i1 %166, label %167, label %169, !dbg !2061

167:                                              ; preds = %164
  %168 = getelementptr inbounds i8, ptr %0, i64 %165, !dbg !2058
  store i8 36, ptr %168, align 1, !dbg !2058, !tbaa !989
  br label %169, !dbg !2058

169:                                              ; preds = %167, %164
  %170 = add i64 %123, 2, !dbg !2061
  tail call void @llvm.dbg.value(metadata i64 %170, metadata !1868, metadata !DIExpression()), !dbg !1928
  %171 = icmp ult i64 %170, %129, !dbg !2062
  br i1 %171, label %172, label %174, !dbg !2065

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, ptr %0, i64 %170, !dbg !2062
  store i8 39, ptr %173, align 1, !dbg !2062, !tbaa !989
  br label %174, !dbg !2062

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 3, !dbg !2065
  tail call void @llvm.dbg.value(metadata i64 %175, metadata !1868, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1877, metadata !DIExpression()), !dbg !1928
  br label %176, !dbg !2066

176:                                              ; preds = %158, %174
  %177 = phi i64 [ %175, %174 ], [ %123, %158 ], !dbg !1928
  %178 = phi i1 [ true, %174 ], [ %127, %158 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1877, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i64 %177, metadata !1868, metadata !DIExpression()), !dbg !1928
  %179 = icmp ult i64 %177, %129, !dbg !2067
  br i1 %179, label %180, label %182, !dbg !2070

180:                                              ; preds = %176
  %181 = getelementptr inbounds i8, ptr %0, i64 %177, !dbg !2067
  store i8 92, ptr %181, align 1, !dbg !2067, !tbaa !989
  br label %182, !dbg !2067

182:                                              ; preds = %180, %176
  %183 = add i64 %177, 1, !dbg !2070
  tail call void @llvm.dbg.value(metadata i64 %183, metadata !1868, metadata !DIExpression()), !dbg !1928
  br i1 %110, label %184, label %476, !dbg !2071

184:                                              ; preds = %182
  %185 = add i64 %128, 1, !dbg !2073
  %186 = icmp ult i64 %185, %152, !dbg !2074
  br i1 %186, label %187, label %433, !dbg !2075

187:                                              ; preds = %184
  %188 = getelementptr inbounds i8, ptr %2, i64 %185, !dbg !2076
  %189 = load i8, ptr %188, align 1, !dbg !2076, !tbaa !989
  %190 = add i8 %189, -48, !dbg !2077
  %191 = icmp ult i8 %190, 10, !dbg !2077
  br i1 %191, label %192, label %433, !dbg !2077

192:                                              ; preds = %187
  %193 = icmp ult i64 %183, %129, !dbg !2078
  br i1 %193, label %194, label %196, !dbg !2082

194:                                              ; preds = %192
  %195 = getelementptr inbounds i8, ptr %0, i64 %183, !dbg !2078
  store i8 48, ptr %195, align 1, !dbg !2078, !tbaa !989
  br label %196, !dbg !2078

196:                                              ; preds = %194, %192
  %197 = add i64 %177, 2, !dbg !2082
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !1868, metadata !DIExpression()), !dbg !1928
  %198 = icmp ult i64 %197, %129, !dbg !2083
  br i1 %198, label %199, label %201, !dbg !2086

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, ptr %0, i64 %197, !dbg !2083
  store i8 48, ptr %200, align 1, !dbg !2083, !tbaa !989
  br label %201, !dbg !2083

201:                                              ; preds = %199, %196
  %202 = add i64 %177, 3, !dbg !2086
  tail call void @llvm.dbg.value(metadata i64 %202, metadata !1868, metadata !DIExpression()), !dbg !1928
  br label %433, !dbg !2087

203:                                              ; preds = %156
  br i1 %24, label %444, label %563, !dbg !2088

204:                                              ; preds = %151
  switch i32 %102, label %433 [
    i32 2, label %205
    i32 5, label %206
  ], !dbg !2089

205:                                              ; preds = %204
  br i1 %109, label %.loopexit8, label %433, !dbg !2090

206:                                              ; preds = %204
  br i1 %22, label %433, label %207, !dbg !2092

207:                                              ; preds = %206
  %208 = add i64 %128, 2, !dbg !2094
  %209 = icmp ult i64 %208, %152, !dbg !2095
  br i1 %209, label %210, label %433, !dbg !2096

210:                                              ; preds = %207
  %211 = getelementptr i8, ptr %154, i64 1, !dbg !2097
  %212 = load i8, ptr %211, align 1, !dbg !2097, !tbaa !989
  %213 = icmp eq i8 %212, 63, !dbg !2098
  br i1 %213, label %214, label %433, !dbg !2099

214:                                              ; preds = %210
  %215 = getelementptr inbounds i8, ptr %2, i64 %208, !dbg !2100
  %216 = load i8, ptr %215, align 1, !dbg !2100, !tbaa !989
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
  ], !dbg !2101

217:                                              ; preds = %214, %214, %214, %214, %214, %214, %214, %214, %214
  br i1 %109, label %.loopexit8, label %218, !dbg !2102

218:                                              ; preds = %217
  tail call void @llvm.dbg.value(metadata i8 %216, metadata !1890, metadata !DIExpression()), !dbg !2024
  tail call void @llvm.dbg.value(metadata i64 %208, metadata !1883, metadata !DIExpression()), !dbg !2015
  %219 = icmp ult i64 %123, %129, !dbg !2104
  br i1 %219, label %220, label %222, !dbg !2107

220:                                              ; preds = %218
  %221 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2104
  store i8 63, ptr %221, align 1, !dbg !2104, !tbaa !989
  br label %222, !dbg !2104

222:                                              ; preds = %220, %218
  %223 = add i64 %123, 1, !dbg !2107
  tail call void @llvm.dbg.value(metadata i64 %223, metadata !1868, metadata !DIExpression()), !dbg !1928
  %224 = icmp ult i64 %223, %129, !dbg !2108
  br i1 %224, label %225, label %227, !dbg !2111

225:                                              ; preds = %222
  %226 = getelementptr inbounds i8, ptr %0, i64 %223, !dbg !2108
  store i8 34, ptr %226, align 1, !dbg !2108, !tbaa !989
  br label %227, !dbg !2108

227:                                              ; preds = %225, %222
  %228 = add i64 %123, 2, !dbg !2111
  tail call void @llvm.dbg.value(metadata i64 %228, metadata !1868, metadata !DIExpression()), !dbg !1928
  %229 = icmp ult i64 %228, %129, !dbg !2112
  br i1 %229, label %230, label %232, !dbg !2115

230:                                              ; preds = %227
  %231 = getelementptr inbounds i8, ptr %0, i64 %228, !dbg !2112
  store i8 34, ptr %231, align 1, !dbg !2112, !tbaa !989
  br label %232, !dbg !2112

232:                                              ; preds = %230, %227
  %233 = add i64 %123, 3, !dbg !2115
  tail call void @llvm.dbg.value(metadata i64 %233, metadata !1868, metadata !DIExpression()), !dbg !1928
  %234 = icmp ult i64 %233, %129, !dbg !2116
  br i1 %234, label %235, label %237, !dbg !2119

235:                                              ; preds = %232
  %236 = getelementptr inbounds i8, ptr %0, i64 %233, !dbg !2116
  store i8 63, ptr %236, align 1, !dbg !2116, !tbaa !989
  br label %237, !dbg !2116

237:                                              ; preds = %235, %232
  %238 = add i64 %123, 4, !dbg !2119
  tail call void @llvm.dbg.value(metadata i64 %238, metadata !1868, metadata !DIExpression()), !dbg !1928
  br label %433, !dbg !2120

239:                                              ; preds = %151
  br label %249, !dbg !2121

240:                                              ; preds = %151
  br label %249, !dbg !2122

241:                                              ; preds = %151
  br label %247, !dbg !2123

242:                                              ; preds = %151
  br label %247, !dbg !2124

243:                                              ; preds = %151
  br label %249, !dbg !2125

244:                                              ; preds = %151
  br i1 %115, label %245, label %246, !dbg !2126

245:                                              ; preds = %244
  br i1 %109, label %.loopexit8, label %523, !dbg !2127

246:                                              ; preds = %244
  br i1 %117, label %523, label %249, !dbg !2130

247:                                              ; preds = %151, %242, %241
  %248 = phi i8 [ 116, %242 ], [ 114, %241 ], [ 110, %151 ], !dbg !2132
  call void @llvm.dbg.label(metadata !1891), !dbg !2133
  br i1 %118, label %.loopexit8, label %249, !dbg !2134

249:                                              ; preds = %246, %247, %151, %243, %240, %239
  %250 = phi i8 [ %248, %247 ], [ 118, %243 ], [ 102, %240 ], [ 98, %239 ], [ 97, %151 ], [ 92, %246 ], !dbg !2132
  call void @llvm.dbg.label(metadata !1894), !dbg !2136
  br i1 %108, label %487, label %444, !dbg !2137

251:                                              ; preds = %151, %151
  switch i64 %152, label %433 [
    i64 -1, label %252
    i64 1, label %255
  ], !dbg !2138

252:                                              ; preds = %251
  %253 = load i8, ptr %20, align 1, !dbg !2139, !tbaa !989
  %254 = icmp eq i8 %253, 0, !dbg !2141
  br i1 %254, label %255, label %433, !dbg !2142

255:                                              ; preds = %251, %252, %151, %151
  %256 = icmp eq i64 %128, 0, !dbg !2143
  br i1 %256, label %257, label %433, !dbg !2145

257:                                              ; preds = %255, %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1889, metadata !DIExpression()), !dbg !2024
  br label %258, !dbg !2146

258:                                              ; preds = %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %257
  %259 = phi i1 [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ true, %257 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1889, metadata !DIExpression()), !dbg !2024
  br i1 %115, label %260, label %433, !dbg !2147

260:                                              ; preds = %258
  br i1 %109, label %.loopexit8, label %433, !dbg !2149

261:                                              ; preds = %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1874, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1889, metadata !DIExpression()), !dbg !2024
  br i1 %115, label %262, label %433, !dbg !2150

262:                                              ; preds = %261
  br i1 %109, label %.loopexit8, label %263, !dbg !2151

263:                                              ; preds = %262
  %264 = icmp eq i64 %129, 0, !dbg !2154
  %265 = icmp ne i64 %124, 0
  %266 = select i1 %264, i1 true, i1 %265, !dbg !2156
  %267 = select i1 %266, i64 %124, i64 %129, !dbg !2156
  %268 = select i1 %266, i64 %129, i64 0, !dbg !2156
  tail call void @llvm.dbg.value(metadata i64 %268, metadata !1859, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i64 %267, metadata !1869, metadata !DIExpression()), !dbg !1928
  %269 = icmp ult i64 %123, %268, !dbg !2157
  br i1 %269, label %270, label %272, !dbg !2160

270:                                              ; preds = %263
  %271 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2157
  store i8 39, ptr %271, align 1, !dbg !2157, !tbaa !989
  br label %272, !dbg !2157

272:                                              ; preds = %270, %263
  %273 = add i64 %123, 1, !dbg !2160
  tail call void @llvm.dbg.value(metadata i64 %273, metadata !1868, metadata !DIExpression()), !dbg !1928
  %274 = icmp ult i64 %273, %268, !dbg !2161
  br i1 %274, label %275, label %277, !dbg !2164

275:                                              ; preds = %272
  %276 = getelementptr inbounds i8, ptr %0, i64 %273, !dbg !2161
  store i8 92, ptr %276, align 1, !dbg !2161, !tbaa !989
  br label %277, !dbg !2161

277:                                              ; preds = %275, %272
  %278 = add i64 %123, 2, !dbg !2164
  tail call void @llvm.dbg.value(metadata i64 %278, metadata !1868, metadata !DIExpression()), !dbg !1928
  %279 = icmp ult i64 %278, %268, !dbg !2165
  br i1 %279, label %280, label %282, !dbg !2168

280:                                              ; preds = %277
  %281 = getelementptr inbounds i8, ptr %0, i64 %278, !dbg !2165
  store i8 39, ptr %281, align 1, !dbg !2165, !tbaa !989
  br label %282, !dbg !2165

282:                                              ; preds = %280, %277
  %283 = add i64 %123, 3, !dbg !2168
  tail call void @llvm.dbg.value(metadata i64 %283, metadata !1868, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1877, metadata !DIExpression()), !dbg !1928
  br label %433, !dbg !2169

284:                                              ; preds = %151
  br i1 %17, label %285, label %293, !dbg !2170

285:                                              ; preds = %284
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1895, metadata !DIExpression()), !dbg !2171
  %286 = tail call ptr @__ctype_b_loc() #40, !dbg !2172
  %287 = load ptr, ptr %286, align 8, !dbg !2172, !tbaa !882
  %288 = zext i8 %155 to i64
  %289 = getelementptr inbounds i16, ptr %287, i64 %288, !dbg !2172
  %290 = load i16, ptr %289, align 2, !dbg !2172, !tbaa !1014
  %291 = and i16 %290, 16384, !dbg !2172
  %292 = icmp ne i16 %291, 0, !dbg !2174
  tail call void @llvm.dbg.value(metadata i1 %292, metadata !1897, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2171
  br label %334, !dbg !2175

293:                                              ; preds = %284
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #37, !dbg !2176
  call void @llvm.dbg.value(metadata ptr %14, metadata !1953, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata ptr %14, metadata !1961, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i32 0, metadata !1964, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i64 8, metadata !1965, metadata !DIExpression()), !dbg !2179
  store i64 0, ptr %14, align 8, !dbg !2181
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1895, metadata !DIExpression()), !dbg !2171
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1897, metadata !DIExpression()), !dbg !2171
  %294 = icmp eq i64 %152, -1, !dbg !2182
  br i1 %294, label %295, label %297, !dbg !2184

295:                                              ; preds = %293
  %296 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !2185
  tail call void @llvm.dbg.value(metadata i64 %296, metadata !1861, metadata !DIExpression()), !dbg !1928
  br label %297, !dbg !2186

297:                                              ; preds = %293, %295
  %298 = phi i64 [ %296, %295 ], [ %152, %293 ], !dbg !2024
  tail call void @llvm.dbg.value(metadata i64 %298, metadata !1861, metadata !DIExpression()), !dbg !1928
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #37, !dbg !2187
  %299 = sub i64 %298, %128, !dbg !2188
  %300 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %154, i64 noundef %299, ptr noundef nonnull %14) #37, !dbg !2189
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !1905, metadata !DIExpression()), !dbg !1927
  switch i64 %300, label %314 [
    i64 0, label %329
    i64 -1, label %303
    i64 -2, label %301
  ], !dbg !2190

301:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1895, metadata !DIExpression()), !dbg !2171
  %302 = icmp ult i64 %128, %298, !dbg !2191
  br i1 %302, label %.preheader5, label %329, !dbg !2193

.preheader5:                                      ; preds = %301
  br label %304, !dbg !2194

303:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1897, metadata !DIExpression()), !dbg !2171
  br label %329, !dbg !2195

304:                                              ; preds = %.preheader5, %310
  %305 = phi i64 [ %312, %310 ], [ %128, %.preheader5 ]
  %306 = phi i64 [ %311, %310 ], [ 0, %.preheader5 ]
  tail call void @llvm.dbg.value(metadata i64 %306, metadata !1895, metadata !DIExpression()), !dbg !2171
  %307 = getelementptr inbounds i8, ptr %2, i64 %305, !dbg !2197
  %308 = load i8, ptr %307, align 1, !dbg !2197, !tbaa !989
  %309 = icmp eq i8 %308, 0, !dbg !2193
  br i1 %309, label %.loopexit6, label %310, !dbg !2194

310:                                              ; preds = %304
  %311 = add i64 %306, 1, !dbg !2198
  tail call void @llvm.dbg.value(metadata i64 %311, metadata !1895, metadata !DIExpression()), !dbg !2171
  %312 = add i64 %311, %128, !dbg !2199
  %313 = icmp eq i64 %311, %299, !dbg !2191
  br i1 %313, label %.loopexit6, label %304, !dbg !2193, !llvm.loop !2200

314:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1906, metadata !DIExpression()), !dbg !2201
  %315 = icmp ugt i64 %300, 1
  %316 = and i1 %115, %315, !dbg !2202
  %317 = and i1 %316, %109, !dbg !2202
  br i1 %317, label %.preheader3, label %325, !dbg !2202

.preheader3:                                      ; preds = %314
  br label %318, !dbg !2203

318:                                              ; preds = %.preheader3, %322
  %319 = phi i64 [ %323, %322 ], [ 1, %.preheader3 ]
  tail call void @llvm.dbg.value(metadata i64 %319, metadata !1906, metadata !DIExpression()), !dbg !2201
  %320 = getelementptr i8, ptr %154, i64 %319, !dbg !2204
  %321 = load i8, ptr %320, align 1, !dbg !2204, !tbaa !989
  switch i8 %321, label %322 [
    i8 91, label %332
    i8 92, label %332
    i8 94, label %332
    i8 96, label %332
    i8 124, label %332
  ], !dbg !2206

322:                                              ; preds = %318
  %323 = add nuw i64 %319, 1, !dbg !2207
  tail call void @llvm.dbg.value(metadata i64 %323, metadata !1906, metadata !DIExpression()), !dbg !2201
  %324 = icmp eq i64 %323, %300, !dbg !2208
  br i1 %324, label %.loopexit4, label %318, !dbg !2203, !llvm.loop !2209

.loopexit4:                                       ; preds = %322
  br label %325, !dbg !2211

325:                                              ; preds = %.loopexit4, %314
  %326 = load i32, ptr %15, align 4, !dbg !2211, !tbaa !890
  call void @llvm.dbg.value(metadata i32 %326, metadata !2213, metadata !DIExpression()), !dbg !2221
  %327 = call i32 @iswprint(i32 noundef %326) #37, !dbg !2223
  %328 = icmp ne i32 %327, 0, !dbg !2224
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1897, metadata !DIExpression()), !dbg !2171
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !1895, metadata !DIExpression()), !dbg !2171
  br label %329, !dbg !2225

.loopexit6:                                       ; preds = %310, %304
  %.ph = phi i64 [ %299, %310 ], [ %306, %304 ]
  br label %329, !dbg !2226

329:                                              ; preds = %.loopexit6, %301, %303, %325, %297
  %330 = phi i64 [ %300, %297 ], [ %300, %325 ], [ 0, %303 ], [ 0, %301 ], [ %.ph, %.loopexit6 ]
  %331 = phi i1 [ true, %297 ], [ %328, %325 ], [ false, %303 ], [ false, %301 ], [ false, %.loopexit6 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1897, metadata !DIExpression()), !dbg !2171
  tail call void @llvm.dbg.value(metadata i64 %330, metadata !1895, metadata !DIExpression()), !dbg !2171
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !2226
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !2227
  br label %334

332:                                              ; preds = %318, %318, %318, %318, %318
  %.lcssa99 = phi ptr [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ]
  %.lcssa91 = phi ptr [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ]
  %.lcssa75 = phi i1 [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ]
  %.lcssa28 = phi i64 [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ]
  %.lcssa22 = phi i64 [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], !dbg !2024
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1897, metadata !DIExpression()), !dbg !2171
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1895, metadata !DIExpression()), !dbg !2171
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !2226
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !2227
  call void @llvm.dbg.label(metadata !1919), !dbg !2228
  %333 = select i1 %.lcssa75, i32 4, i32 2, !dbg !2229
  br label %624, !dbg !2229

334:                                              ; preds = %329, %285
  %335 = phi i64 [ %152, %285 ], [ %298, %329 ], !dbg !2024
  %336 = phi i64 [ 1, %285 ], [ %330, %329 ], !dbg !2231
  %337 = phi i1 [ %292, %285 ], [ %331, %329 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1897, metadata !DIExpression()), !dbg !2171
  tail call void @llvm.dbg.value(metadata i64 %336, metadata !1895, metadata !DIExpression()), !dbg !2171
  tail call void @llvm.dbg.value(metadata i64 %335, metadata !1861, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i1 %337, metadata !1889, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2024
  %338 = icmp ult i64 %336, 2, !dbg !2232
  %339 = select i1 %119, i1 true, i1 %337
  %340 = select i1 %338, i1 %339, i1 false, !dbg !2233
  br i1 %340, label %433, label %341, !dbg !2233

341:                                              ; preds = %334
  %342 = add i64 %336, %128, !dbg !2234
  tail call void @llvm.dbg.value(metadata i64 %342, metadata !1914, metadata !DIExpression()), !dbg !2235
  br label %343, !dbg !2236

343:                                              ; preds = %429, %341
  %344 = phi i64 [ %123, %341 ], [ %430, %429 ], !dbg !1928
  %345 = phi i1 [ %127, %341 ], [ %425, %429 ]
  %346 = phi i64 [ %128, %341 ], [ %407, %429 ], !dbg !2015
  %347 = phi i1 [ %153, %341 ], [ %404, %429 ]
  %348 = phi i1 [ false, %341 ], [ %405, %429 ]
  %349 = phi i8 [ %155, %341 ], [ %432, %429 ], !dbg !2024
  tail call void @llvm.dbg.value(metadata i8 %349, metadata !1890, metadata !DIExpression()), !dbg !2024
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1888, metadata !DIExpression()), !dbg !2024
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1885, metadata !DIExpression()), !dbg !2024
  tail call void @llvm.dbg.value(metadata i64 %346, metadata !1883, metadata !DIExpression()), !dbg !2015
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1877, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i64 %344, metadata !1868, metadata !DIExpression()), !dbg !1928
  br i1 %339, label %394, label %350, !dbg !2237

350:                                              ; preds = %343
  br i1 %109, label %.loopexit1, label %351, !dbg !2242

351:                                              ; preds = %350
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1888, metadata !DIExpression()), !dbg !2024
  %352 = select i1 %110, i1 true, i1 %345, !dbg !2245
  br i1 %352, label %369, label %353, !dbg !2245

353:                                              ; preds = %351
  %354 = icmp ult i64 %344, %129, !dbg !2247
  br i1 %354, label %355, label %357, !dbg !2251

355:                                              ; preds = %353
  %356 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !2247
  store i8 39, ptr %356, align 1, !dbg !2247, !tbaa !989
  br label %357, !dbg !2247

357:                                              ; preds = %355, %353
  %358 = add i64 %344, 1, !dbg !2251
  tail call void @llvm.dbg.value(metadata i64 %358, metadata !1868, metadata !DIExpression()), !dbg !1928
  %359 = icmp ult i64 %358, %129, !dbg !2252
  br i1 %359, label %360, label %362, !dbg !2255

360:                                              ; preds = %357
  %361 = getelementptr inbounds i8, ptr %0, i64 %358, !dbg !2252
  store i8 36, ptr %361, align 1, !dbg !2252, !tbaa !989
  br label %362, !dbg !2252

362:                                              ; preds = %360, %357
  %363 = add i64 %344, 2, !dbg !2255
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !1868, metadata !DIExpression()), !dbg !1928
  %364 = icmp ult i64 %363, %129, !dbg !2256
  br i1 %364, label %365, label %367, !dbg !2259

365:                                              ; preds = %362
  %366 = getelementptr inbounds i8, ptr %0, i64 %363, !dbg !2256
  store i8 39, ptr %366, align 1, !dbg !2256, !tbaa !989
  br label %367, !dbg !2256

367:                                              ; preds = %365, %362
  %368 = add i64 %344, 3, !dbg !2259
  tail call void @llvm.dbg.value(metadata i64 %368, metadata !1868, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1877, metadata !DIExpression()), !dbg !1928
  br label %369, !dbg !2260

369:                                              ; preds = %351, %367
  %370 = phi i64 [ %368, %367 ], [ %344, %351 ], !dbg !1928
  %371 = phi i1 [ true, %367 ], [ %345, %351 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1877, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i64 %370, metadata !1868, metadata !DIExpression()), !dbg !1928
  %372 = icmp ult i64 %370, %129, !dbg !2261
  br i1 %372, label %373, label %375, !dbg !2264

373:                                              ; preds = %369
  %374 = getelementptr inbounds i8, ptr %0, i64 %370, !dbg !2261
  store i8 92, ptr %374, align 1, !dbg !2261, !tbaa !989
  br label %375, !dbg !2261

375:                                              ; preds = %373, %369
  %376 = add i64 %370, 1, !dbg !2264
  tail call void @llvm.dbg.value(metadata i64 %376, metadata !1868, metadata !DIExpression()), !dbg !1928
  %377 = icmp ult i64 %376, %129, !dbg !2265
  br i1 %377, label %378, label %382, !dbg !2268

378:                                              ; preds = %375
  %379 = lshr i8 %349, 6
  %380 = or disjoint i8 %379, 48, !dbg !2265
  %381 = getelementptr inbounds i8, ptr %0, i64 %376, !dbg !2265
  store i8 %380, ptr %381, align 1, !dbg !2265, !tbaa !989
  br label %382, !dbg !2265

382:                                              ; preds = %378, %375
  %383 = add i64 %370, 2, !dbg !2268
  tail call void @llvm.dbg.value(metadata i64 %383, metadata !1868, metadata !DIExpression()), !dbg !1928
  %384 = icmp ult i64 %383, %129, !dbg !2269
  br i1 %384, label %385, label %390, !dbg !2272

385:                                              ; preds = %382
  %386 = lshr i8 %349, 3
  %387 = and i8 %386, 7, !dbg !2269
  %388 = or disjoint i8 %387, 48, !dbg !2269
  %389 = getelementptr inbounds i8, ptr %0, i64 %383, !dbg !2269
  store i8 %388, ptr %389, align 1, !dbg !2269, !tbaa !989
  br label %390, !dbg !2269

390:                                              ; preds = %385, %382
  %391 = add i64 %370, 3, !dbg !2272
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !1868, metadata !DIExpression()), !dbg !1928
  %392 = and i8 %349, 7, !dbg !2273
  %393 = or disjoint i8 %392, 48, !dbg !2274
  tail call void @llvm.dbg.value(metadata i8 %393, metadata !1890, metadata !DIExpression()), !dbg !2024
  br label %401, !dbg !2275

394:                                              ; preds = %343
  br i1 %347, label %395, label %401, !dbg !2276

395:                                              ; preds = %394
  %396 = icmp ult i64 %344, %129, !dbg !2277
  br i1 %396, label %397, label %399, !dbg !2282

397:                                              ; preds = %395
  %398 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !2277
  store i8 92, ptr %398, align 1, !dbg !2277, !tbaa !989
  br label %399, !dbg !2277

399:                                              ; preds = %397, %395
  %400 = add i64 %344, 1, !dbg !2282
  tail call void @llvm.dbg.value(metadata i64 %400, metadata !1868, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1885, metadata !DIExpression()), !dbg !2024
  br label %401, !dbg !2283

401:                                              ; preds = %394, %399, %390
  %402 = phi i64 [ %400, %399 ], [ %344, %394 ], [ %391, %390 ], !dbg !1928
  %403 = phi i1 [ %345, %399 ], [ %345, %394 ], [ %371, %390 ]
  %404 = phi i1 [ false, %399 ], [ false, %394 ], [ %347, %390 ]
  %405 = phi i1 [ %348, %399 ], [ %348, %394 ], [ true, %390 ]
  %406 = phi i8 [ %349, %399 ], [ %349, %394 ], [ %393, %390 ], !dbg !2024
  tail call void @llvm.dbg.value(metadata i8 %406, metadata !1890, metadata !DIExpression()), !dbg !2024
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1888, metadata !DIExpression()), !dbg !2024
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1885, metadata !DIExpression()), !dbg !2024
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1877, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i64 %402, metadata !1868, metadata !DIExpression()), !dbg !1928
  %407 = add i64 %346, 1, !dbg !2284
  %408 = icmp ugt i64 %342, %407, !dbg !2286
  br i1 %408, label %409, label %.loopexit2, !dbg !2287

409:                                              ; preds = %401
  %410 = xor i1 %403, true, !dbg !2288
  %411 = select i1 %410, i1 true, i1 %405, !dbg !2288
  br i1 %411, label %423, label %412, !dbg !2288

412:                                              ; preds = %409
  %413 = icmp ult i64 %402, %129, !dbg !2291
  br i1 %413, label %414, label %416, !dbg !2295

414:                                              ; preds = %412
  %415 = getelementptr inbounds i8, ptr %0, i64 %402, !dbg !2291
  store i8 39, ptr %415, align 1, !dbg !2291, !tbaa !989
  br label %416, !dbg !2291

416:                                              ; preds = %414, %412
  %417 = add i64 %402, 1, !dbg !2295
  tail call void @llvm.dbg.value(metadata i64 %417, metadata !1868, metadata !DIExpression()), !dbg !1928
  %418 = icmp ult i64 %417, %129, !dbg !2296
  br i1 %418, label %419, label %421, !dbg !2299

419:                                              ; preds = %416
  %420 = getelementptr inbounds i8, ptr %0, i64 %417, !dbg !2296
  store i8 39, ptr %420, align 1, !dbg !2296, !tbaa !989
  br label %421, !dbg !2296

421:                                              ; preds = %419, %416
  %422 = add i64 %402, 2, !dbg !2299
  tail call void @llvm.dbg.value(metadata i64 %422, metadata !1868, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1877, metadata !DIExpression()), !dbg !1928
  br label %423, !dbg !2300

423:                                              ; preds = %409, %421
  %424 = phi i64 [ %422, %421 ], [ %402, %409 ], !dbg !2301
  %425 = phi i1 [ false, %421 ], [ %403, %409 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1877, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i64 %424, metadata !1868, metadata !DIExpression()), !dbg !1928
  %426 = icmp ult i64 %424, %129, !dbg !2302
  br i1 %426, label %427, label %429, !dbg !2305

427:                                              ; preds = %423
  %428 = getelementptr inbounds i8, ptr %0, i64 %424, !dbg !2302
  store i8 %406, ptr %428, align 1, !dbg !2302, !tbaa !989
  br label %429, !dbg !2302

429:                                              ; preds = %427, %423
  %430 = add i64 %424, 1, !dbg !2305
  tail call void @llvm.dbg.value(metadata i64 %430, metadata !1868, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i64 %407, metadata !1883, metadata !DIExpression()), !dbg !2015
  %431 = getelementptr inbounds i8, ptr %2, i64 %407, !dbg !2306
  %432 = load i8, ptr %431, align 1, !dbg !2306, !tbaa !989
  tail call void @llvm.dbg.value(metadata i8 %432, metadata !1890, metadata !DIExpression()), !dbg !2024
  br label %343, !dbg !2307, !llvm.loop !2308

433:                                              ; preds = %334, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %251, %184, %187, %201, %261, %282, %258, %260, %255, %252, %204, %205, %237, %214, %210, %207, %206
  %434 = phi i64 [ %152, %282 ], [ %152, %261 ], [ %152, %260 ], [ %152, %258 ], [ %152, %255 ], [ -1, %252 ], [ %152, %204 ], [ %152, %214 ], [ %152, %237 ], [ %152, %210 ], [ %152, %207 ], [ %152, %206 ], [ %152, %205 ], [ %152, %201 ], [ %152, %187 ], [ %152, %184 ], [ %152, %251 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %335, %334 ], !dbg !2311
  %435 = phi i64 [ %283, %282 ], [ %123, %261 ], [ %123, %260 ], [ %123, %258 ], [ %123, %255 ], [ %123, %252 ], [ %123, %204 ], [ %123, %214 ], [ %238, %237 ], [ %123, %210 ], [ %123, %207 ], [ %123, %206 ], [ %123, %205 ], [ %202, %201 ], [ %183, %187 ], [ %183, %184 ], [ %123, %251 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %334 ], !dbg !1928
  %436 = phi i64 [ %267, %282 ], [ %124, %261 ], [ %124, %260 ], [ %124, %258 ], [ %124, %255 ], [ %124, %252 ], [ %124, %204 ], [ %124, %214 ], [ %124, %237 ], [ %124, %210 ], [ %124, %207 ], [ %124, %206 ], [ %124, %205 ], [ %124, %201 ], [ %124, %187 ], [ %124, %184 ], [ %124, %251 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %334 ], !dbg !1932
  %437 = phi i1 [ true, %282 ], [ true, %261 ], [ %125, %260 ], [ %125, %258 ], [ %125, %255 ], [ %125, %252 ], [ %125, %204 ], [ %125, %214 ], [ %125, %237 ], [ %125, %210 ], [ %125, %207 ], [ %125, %206 ], [ %125, %205 ], [ %125, %201 ], [ %125, %187 ], [ %125, %184 ], [ %125, %251 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %334 ]
  %438 = phi i1 [ false, %282 ], [ %127, %261 ], [ %127, %260 ], [ %127, %258 ], [ %127, %255 ], [ %127, %252 ], [ %127, %204 ], [ %127, %214 ], [ %127, %237 ], [ %127, %210 ], [ %127, %207 ], [ %127, %206 ], [ %127, %205 ], [ %178, %201 ], [ %178, %187 ], [ %178, %184 ], [ %127, %251 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %334 ]
  %439 = phi i64 [ %128, %282 ], [ %128, %261 ], [ %128, %260 ], [ %128, %258 ], [ %128, %255 ], [ %128, %252 ], [ %128, %204 ], [ %128, %214 ], [ %208, %237 ], [ %128, %210 ], [ %128, %207 ], [ %128, %206 ], [ %128, %205 ], [ %128, %201 ], [ %128, %187 ], [ %128, %184 ], [ %128, %251 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %334 ], !dbg !2015
  %440 = phi i1 [ false, %282 ], [ false, %261 ], [ false, %260 ], [ false, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ true, %201 ], [ true, %187 ], [ true, %184 ], [ false, %251 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %334 ]
  %441 = phi i1 [ true, %282 ], [ true, %261 ], [ %259, %260 ], [ %259, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ false, %201 ], [ false, %187 ], [ false, %184 ], [ false, %251 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ %337, %334 ]
  %442 = phi i8 [ 39, %282 ], [ 39, %261 ], [ %155, %260 ], [ %155, %258 ], [ %155, %255 ], [ %155, %252 ], [ 63, %204 ], [ 63, %214 ], [ %216, %237 ], [ 63, %210 ], [ 63, %207 ], [ 63, %206 ], [ 63, %205 ], [ 48, %201 ], [ 48, %187 ], [ 48, %184 ], [ %155, %251 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %334 ], !dbg !2024
  %443 = phi i64 [ %268, %282 ], [ %129, %261 ], [ %129, %260 ], [ %129, %258 ], [ %129, %255 ], [ %129, %252 ], [ %129, %204 ], [ %129, %214 ], [ %129, %237 ], [ %129, %210 ], [ %129, %207 ], [ %129, %206 ], [ %129, %205 ], [ %129, %201 ], [ %129, %187 ], [ %129, %184 ], [ %129, %251 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %334 ]
  tail call void @llvm.dbg.value(metadata i64 %443, metadata !1859, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i8 %442, metadata !1890, metadata !DIExpression()), !dbg !2024
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1889, metadata !DIExpression()), !dbg !2024
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1888, metadata !DIExpression()), !dbg !2024
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1885, metadata !DIExpression()), !dbg !2024
  tail call void @llvm.dbg.value(metadata i64 %439, metadata !1883, metadata !DIExpression()), !dbg !2015
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1877, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1874, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i64 %436, metadata !1869, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i64 %435, metadata !1868, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i64 %434, metadata !1861, metadata !DIExpression()), !dbg !1928
  br i1 %111, label %455, label %444, !dbg !2312

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
  br i1 %120, label %456, label %476, !dbg !2314

455:                                              ; preds = %433
  br i1 %26, label %476, label %456, !dbg !2315

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
  %467 = lshr i8 %458, 5, !dbg !2316
  %468 = zext nneg i8 %467 to i64, !dbg !2316
  %469 = getelementptr inbounds i32, ptr %6, i64 %468, !dbg !2317
  %470 = load i32, ptr %469, align 4, !dbg !2317, !tbaa !890
  %471 = and i8 %458, 31, !dbg !2318
  %472 = zext nneg i8 %471 to i32, !dbg !2318
  %473 = shl nuw i32 1, %472, !dbg !2319
  %474 = and i32 %470, %473, !dbg !2319
  %475 = icmp eq i32 %474, 0, !dbg !2319
  br i1 %475, label %476, label %487, !dbg !2320

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
  br i1 %153, label %487, label %523, !dbg !2321

487:                                              ; preds = %249, %476, %456
  %488 = phi i64 [ %466, %456 ], [ %486, %476 ], [ %152, %249 ], !dbg !2311
  %489 = phi i64 [ %465, %456 ], [ %485, %476 ], [ %123, %249 ], !dbg !1928
  %490 = phi i64 [ %464, %456 ], [ %484, %476 ], [ %124, %249 ], !dbg !1932
  %491 = phi i1 [ %463, %456 ], [ %483, %476 ], [ %125, %249 ]
  %492 = phi i1 [ %462, %456 ], [ %482, %476 ], [ %127, %249 ]
  %493 = phi i64 [ %461, %456 ], [ %481, %476 ], [ %128, %249 ], !dbg !2322
  %494 = phi i1 [ %459, %456 ], [ %479, %476 ], [ false, %249 ]
  %495 = phi i8 [ %458, %456 ], [ %478, %476 ], [ %250, %249 ], !dbg !2024
  %496 = phi i64 [ %457, %456 ], [ %477, %476 ], [ %129, %249 ]
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !1859, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !1890, metadata !DIExpression()), !dbg !2024
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1889, metadata !DIExpression()), !dbg !2024
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !1883, metadata !DIExpression()), !dbg !2015
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1877, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1874, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !1869, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i64 %489, metadata !1868, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !1861, metadata !DIExpression()), !dbg !1928
  call void @llvm.dbg.label(metadata !1917), !dbg !2323
  br i1 %109, label %.loopexit8, label %497, !dbg !2324

497:                                              ; preds = %487
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1888, metadata !DIExpression()), !dbg !2024
  %498 = select i1 %110, i1 true, i1 %492, !dbg !2326
  br i1 %498, label %515, label %499, !dbg !2326

499:                                              ; preds = %497
  %500 = icmp ult i64 %489, %496, !dbg !2328
  br i1 %500, label %501, label %503, !dbg !2332

501:                                              ; preds = %499
  %502 = getelementptr inbounds i8, ptr %0, i64 %489, !dbg !2328
  store i8 39, ptr %502, align 1, !dbg !2328, !tbaa !989
  br label %503, !dbg !2328

503:                                              ; preds = %501, %499
  %504 = add i64 %489, 1, !dbg !2332
  tail call void @llvm.dbg.value(metadata i64 %504, metadata !1868, metadata !DIExpression()), !dbg !1928
  %505 = icmp ult i64 %504, %496, !dbg !2333
  br i1 %505, label %506, label %508, !dbg !2336

506:                                              ; preds = %503
  %507 = getelementptr inbounds i8, ptr %0, i64 %504, !dbg !2333
  store i8 36, ptr %507, align 1, !dbg !2333, !tbaa !989
  br label %508, !dbg !2333

508:                                              ; preds = %506, %503
  %509 = add i64 %489, 2, !dbg !2336
  tail call void @llvm.dbg.value(metadata i64 %509, metadata !1868, metadata !DIExpression()), !dbg !1928
  %510 = icmp ult i64 %509, %496, !dbg !2337
  br i1 %510, label %511, label %513, !dbg !2340

511:                                              ; preds = %508
  %512 = getelementptr inbounds i8, ptr %0, i64 %509, !dbg !2337
  store i8 39, ptr %512, align 1, !dbg !2337, !tbaa !989
  br label %513, !dbg !2337

513:                                              ; preds = %511, %508
  %514 = add i64 %489, 3, !dbg !2340
  tail call void @llvm.dbg.value(metadata i64 %514, metadata !1868, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1877, metadata !DIExpression()), !dbg !1928
  br label %515, !dbg !2341

515:                                              ; preds = %497, %513
  %516 = phi i64 [ %514, %513 ], [ %489, %497 ], !dbg !2024
  %517 = phi i1 [ true, %513 ], [ %492, %497 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1877, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i64 %516, metadata !1868, metadata !DIExpression()), !dbg !1928
  %518 = icmp ult i64 %516, %496, !dbg !2342
  br i1 %518, label %519, label %521, !dbg !2345

519:                                              ; preds = %515
  %520 = getelementptr inbounds i8, ptr %0, i64 %516, !dbg !2342
  store i8 92, ptr %520, align 1, !dbg !2342, !tbaa !989
  br label %521, !dbg !2342

521:                                              ; preds = %515, %519
  %522 = add i64 %516, 1, !dbg !2345
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !1859, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !1890, metadata !DIExpression()), !dbg !2024
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1889, metadata !DIExpression()), !dbg !2024
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1888, metadata !DIExpression()), !dbg !2024
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !1883, metadata !DIExpression()), !dbg !2015
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1877, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1874, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !1869, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !1868, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !1861, metadata !DIExpression()), !dbg !1928
  call void @llvm.dbg.label(metadata !1918), !dbg !2346
  br label %547, !dbg !2347

.loopexit2:                                       ; preds = %401
  %.lcssa20 = phi i64 [ %402, %401 ], !dbg !1928
  %.lcssa19 = phi i1 [ %403, %401 ]
  %.lcssa18 = phi i1 [ %405, %401 ]
  %.lcssa17 = phi i8 [ %406, %401 ], !dbg !2024
  %.lcssa16 = phi i64 [ %346, %401 ], !dbg !2015
  br label %523, !dbg !2347

523:                                              ; preds = %.loopexit2, %246, %245, %476
  %524 = phi i64 [ %486, %476 ], [ %152, %245 ], [ %152, %246 ], [ %335, %.loopexit2 ], !dbg !2311
  %525 = phi i64 [ %485, %476 ], [ %123, %245 ], [ %123, %246 ], [ %.lcssa20, %.loopexit2 ], !dbg !1928
  %526 = phi i64 [ %484, %476 ], [ %124, %245 ], [ %124, %246 ], [ %124, %.loopexit2 ], !dbg !1932
  %527 = phi i1 [ %483, %476 ], [ %125, %245 ], [ %125, %246 ], [ %125, %.loopexit2 ]
  %528 = phi i1 [ %482, %476 ], [ %127, %245 ], [ %127, %246 ], [ %.lcssa19, %.loopexit2 ]
  %529 = phi i64 [ %481, %476 ], [ %128, %245 ], [ %128, %246 ], [ %.lcssa16, %.loopexit2 ], !dbg !2322
  %530 = phi i1 [ %480, %476 ], [ false, %245 ], [ false, %246 ], [ %.lcssa18, %.loopexit2 ]
  %531 = phi i1 [ %479, %476 ], [ false, %245 ], [ false, %246 ], [ %337, %.loopexit2 ]
  %532 = phi i8 [ %478, %476 ], [ 92, %245 ], [ 92, %246 ], [ %.lcssa17, %.loopexit2 ], !dbg !2350
  %533 = phi i64 [ %477, %476 ], [ %129, %245 ], [ %129, %246 ], [ %129, %.loopexit2 ]
  tail call void @llvm.dbg.value(metadata i64 %533, metadata !1859, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i8 %532, metadata !1890, metadata !DIExpression()), !dbg !2024
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1889, metadata !DIExpression()), !dbg !2024
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1888, metadata !DIExpression()), !dbg !2024
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1883, metadata !DIExpression()), !dbg !2015
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1877, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1874, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1869, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i64 %525, metadata !1868, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i64 %524, metadata !1861, metadata !DIExpression()), !dbg !1928
  call void @llvm.dbg.label(metadata !1918), !dbg !2346
  %534 = xor i1 %528, true, !dbg !2347
  %535 = select i1 %534, i1 true, i1 %530, !dbg !2347
  br i1 %535, label %547, label %536, !dbg !2347

536:                                              ; preds = %523
  %537 = icmp ult i64 %525, %533, !dbg !2351
  br i1 %537, label %538, label %540, !dbg !2355

538:                                              ; preds = %536
  %539 = getelementptr inbounds i8, ptr %0, i64 %525, !dbg !2351
  store i8 39, ptr %539, align 1, !dbg !2351, !tbaa !989
  br label %540, !dbg !2351

540:                                              ; preds = %538, %536
  %541 = add i64 %525, 1, !dbg !2355
  tail call void @llvm.dbg.value(metadata i64 %541, metadata !1868, metadata !DIExpression()), !dbg !1928
  %542 = icmp ult i64 %541, %533, !dbg !2356
  br i1 %542, label %543, label %545, !dbg !2359

543:                                              ; preds = %540
  %544 = getelementptr inbounds i8, ptr %0, i64 %541, !dbg !2356
  store i8 39, ptr %544, align 1, !dbg !2356, !tbaa !989
  br label %545, !dbg !2356

545:                                              ; preds = %543, %540
  %546 = add i64 %525, 2, !dbg !2359
  tail call void @llvm.dbg.value(metadata i64 %546, metadata !1868, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1877, metadata !DIExpression()), !dbg !1928
  br label %547, !dbg !2360

547:                                              ; preds = %521, %523, %545
  %548 = phi i64 [ %533, %545 ], [ %533, %523 ], [ %496, %521 ]
  %549 = phi i8 [ %532, %545 ], [ %532, %523 ], [ %495, %521 ]
  %550 = phi i1 [ %531, %545 ], [ %531, %523 ], [ %494, %521 ]
  %551 = phi i64 [ %529, %545 ], [ %529, %523 ], [ %493, %521 ]
  %552 = phi i1 [ %527, %545 ], [ %527, %523 ], [ %491, %521 ]
  %553 = phi i64 [ %526, %545 ], [ %526, %523 ], [ %490, %521 ]
  %554 = phi i64 [ %524, %545 ], [ %524, %523 ], [ %488, %521 ]
  %555 = phi i64 [ %546, %545 ], [ %525, %523 ], [ %522, %521 ], !dbg !2024
  %556 = phi i1 [ false, %545 ], [ %528, %523 ], [ %517, %521 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1877, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i64 %555, metadata !1868, metadata !DIExpression()), !dbg !1928
  %557 = icmp ult i64 %555, %548, !dbg !2361
  br i1 %557, label %558, label %560, !dbg !2364

558:                                              ; preds = %547
  %559 = getelementptr inbounds i8, ptr %0, i64 %555, !dbg !2361
  store i8 %549, ptr %559, align 1, !dbg !2361, !tbaa !989
  br label %560, !dbg !2361

560:                                              ; preds = %558, %547
  %561 = add i64 %555, 1, !dbg !2364
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !1868, metadata !DIExpression()), !dbg !1928
  %562 = select i1 %550, i1 %126, i1 false, !dbg !2365
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1875, metadata !DIExpression()), !dbg !1928
  br label %563, !dbg !2366

563:                                              ; preds = %203, %560
  %564 = phi i64 [ %554, %560 ], [ %152, %203 ], !dbg !2311
  %565 = phi i64 [ %561, %560 ], [ %123, %203 ], !dbg !1928
  %566 = phi i64 [ %553, %560 ], [ %124, %203 ], !dbg !1932
  %567 = phi i1 [ %552, %560 ], [ %125, %203 ]
  %568 = phi i1 [ %562, %560 ], [ %126, %203 ]
  %569 = phi i1 [ %556, %560 ], [ %127, %203 ]
  %570 = phi i64 [ %551, %560 ], [ %128, %203 ], !dbg !2322
  %571 = phi i64 [ %548, %560 ], [ %129, %203 ]
  tail call void @llvm.dbg.value(metadata i64 %571, metadata !1859, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i64 %570, metadata !1883, metadata !DIExpression()), !dbg !2015
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1877, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1875, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1874, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i64 %566, metadata !1869, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i64 %565, metadata !1868, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !1861, metadata !DIExpression()), !dbg !1928
  %572 = add i64 %570, 1, !dbg !2367
  tail call void @llvm.dbg.value(metadata i64 %572, metadata !1883, metadata !DIExpression()), !dbg !2015
  br label %121, !dbg !2368, !llvm.loop !2369

573:                                              ; preds = %135, %131
  %.lcssa60 = phi i64 [ %122, %135 ], [ %122, %131 ]
  %.lcssa52 = phi i64 [ %123, %135 ], [ %123, %131 ], !dbg !2003
  %.lcssa44 = phi i64 [ %124, %135 ], [ %124, %131 ], !dbg !1932
  %.lcssa38 = phi i1 [ %125, %135 ], [ %125, %131 ]
  %.lcssa32 = phi i1 [ %126, %135 ], [ %126, %131 ]
  %.lcssa24 = phi i64 [ %129, %135 ], [ %129, %131 ]
  tail call void @llvm.dbg.value(metadata i64 %.lcssa24, metadata !1859, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1875, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1874, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i64 %.lcssa44, metadata !1869, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52, metadata !1868, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i64 %.lcssa60, metadata !1861, metadata !DIExpression()), !dbg !1928
  %574 = icmp ne i64 %.lcssa52, 0, !dbg !2371
  %575 = xor i1 %109, true, !dbg !2373
  %576 = or i1 %574, %575, !dbg !2373
  %577 = or i1 %576, %110, !dbg !2373
  br i1 %577, label %578, label %.loopexit13, !dbg !2373

578:                                              ; preds = %573
  %579 = or i1 %110, %109, !dbg !2374
  %580 = xor i1 %.lcssa38, true, !dbg !2374
  %581 = select i1 %579, i1 true, i1 %580, !dbg !2374
  br i1 %581, label %589, label %582, !dbg !2374

582:                                              ; preds = %578
  br i1 %.lcssa32, label %583, label %585, !dbg !2376

583:                                              ; preds = %582
  %.lcssa103 = phi ptr [ %103, %582 ]
  %.lcssa95 = phi ptr [ %104, %582 ]
  %.lcssa60.lcssa67 = phi i64 [ %.lcssa60, %582 ]
  %.lcssa44.lcssa51 = phi i64 [ %.lcssa44, %582 ], !dbg !1932
  %584 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %.lcssa44.lcssa51, ptr noundef %2, i64 noundef %.lcssa60.lcssa67, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %.lcssa103, ptr noundef %.lcssa95), !dbg !2378
  br label %638, !dbg !2380

585:                                              ; preds = %582
  %586 = icmp eq i64 %.lcssa24, 0, !dbg !2381
  %587 = icmp ne i64 %.lcssa44, 0
  %588 = select i1 %586, i1 %587, i1 false, !dbg !2383
  br i1 %588, label %27, label %589, !dbg !2383

589:                                              ; preds = %578, %585
  %.lcssa86 = phi ptr [ %106, %578 ], [ %106, %585 ], !dbg !1928
  %.lcssa52.lcssa58 = phi i64 [ %.lcssa52, %578 ], [ %.lcssa52, %585 ], !dbg !2003
  %.lcssa24.lcssa30 = phi i64 [ %.lcssa24, %578 ], [ %.lcssa24, %585 ]
  %590 = phi i1 [ %109, %578 ], [ false, %585 ]
  %591 = icmp eq ptr %.lcssa86, null, !dbg !2384
  %592 = or i1 %591, %590, !dbg !2386
  br i1 %592, label %608, label %593, !dbg !2386

593:                                              ; preds = %589
  tail call void @llvm.dbg.value(metadata ptr %.lcssa86, metadata !1870, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52.lcssa58, metadata !1868, metadata !DIExpression()), !dbg !1928
  %594 = load i8, ptr %.lcssa86, align 1, !dbg !2387, !tbaa !989
  %595 = icmp eq i8 %594, 0, !dbg !2390
  br i1 %595, label %608, label %.preheader, !dbg !2390

.preheader:                                       ; preds = %593
  br label %596, !dbg !2390

596:                                              ; preds = %.preheader, %603
  %597 = phi i8 [ %606, %603 ], [ %594, %.preheader ]
  %598 = phi ptr [ %605, %603 ], [ %.lcssa86, %.preheader ]
  %599 = phi i64 [ %604, %603 ], [ %.lcssa52.lcssa58, %.preheader ]
  tail call void @llvm.dbg.value(metadata ptr %598, metadata !1870, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !1868, metadata !DIExpression()), !dbg !1928
  %600 = icmp ult i64 %599, %.lcssa24.lcssa30, !dbg !2391
  br i1 %600, label %601, label %603, !dbg !2394

601:                                              ; preds = %596
  %602 = getelementptr inbounds i8, ptr %0, i64 %599, !dbg !2391
  store i8 %597, ptr %602, align 1, !dbg !2391, !tbaa !989
  br label %603, !dbg !2391

603:                                              ; preds = %601, %596
  %604 = add i64 %599, 1, !dbg !2394
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !1868, metadata !DIExpression()), !dbg !1928
  %605 = getelementptr inbounds i8, ptr %598, i64 1, !dbg !2395
  tail call void @llvm.dbg.value(metadata ptr %605, metadata !1870, metadata !DIExpression()), !dbg !1928
  %606 = load i8, ptr %605, align 1, !dbg !2387, !tbaa !989
  %607 = icmp eq i8 %606, 0, !dbg !2390
  br i1 %607, label %.loopexit, label %596, !dbg !2390, !llvm.loop !2396

.loopexit:                                        ; preds = %603
  %.lcssa = phi i64 [ %604, %603 ], !dbg !2394
  br label %608, !dbg !2398

608:                                              ; preds = %.loopexit, %593, %589
  %609 = phi i64 [ %.lcssa52.lcssa58, %589 ], [ %.lcssa52.lcssa58, %593 ], [ %.lcssa, %.loopexit ], !dbg !2003
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !1868, metadata !DIExpression()), !dbg !1928
  %610 = icmp ult i64 %609, %.lcssa24.lcssa30, !dbg !2398
  br i1 %610, label %611, label %638, !dbg !2400

611:                                              ; preds = %608
  %612 = getelementptr inbounds i8, ptr %0, i64 %609, !dbg !2401
  store i8 0, ptr %612, align 1, !dbg !2402, !tbaa !989
  br label %638, !dbg !2401

613:                                              ; preds = %157
  %.lcssa106 = phi i32 [ %102, %157 ]
  %.lcssa98 = phi ptr [ %103, %157 ]
  %.lcssa90 = phi ptr [ %104, %157 ]
  %.lcssa69 = phi i64 [ %152, %157 ]
  %.lcssa27 = phi i64 [ %129, %157 ]
  call void @llvm.dbg.label(metadata !1919), !dbg !2228
  %614 = icmp eq i32 %.lcssa106, 2, !dbg !2403
  br i1 %614, label %624, label %630, !dbg !2229

.loopexit1:                                       ; preds = %350
  %.lcssa108 = phi i32 [ %102, %350 ]
  %.lcssa100 = phi ptr [ %103, %350 ]
  %.lcssa92 = phi ptr [ %104, %350 ]
  %.lcssa76 = phi i1 [ %108, %350 ]
  %.lcssa29 = phi i64 [ %129, %350 ]
  %.lcssa23 = phi i64 [ %335, %350 ], !dbg !2024
  br label %615, !dbg !2403

.loopexit8:                                       ; preds = %205, %217, %245, %247, %260, %262, %487
  %.lcssa105 = phi i32 [ %102, %205 ], [ %102, %217 ], [ %102, %245 ], [ %102, %247 ], [ %102, %260 ], [ %102, %262 ], [ %102, %487 ]
  %.lcssa97 = phi ptr [ %103, %205 ], [ %103, %217 ], [ %103, %245 ], [ %103, %247 ], [ %103, %260 ], [ %103, %262 ], [ %103, %487 ]
  %.lcssa89 = phi ptr [ %104, %205 ], [ %104, %217 ], [ %104, %245 ], [ %104, %247 ], [ %104, %260 ], [ %104, %262 ], [ %104, %487 ]
  %.lcssa73 = phi i1 [ %108, %205 ], [ %108, %217 ], [ %108, %245 ], [ %108, %247 ], [ %108, %260 ], [ %108, %262 ], [ %108, %487 ]
  %.ph9 = phi i64 [ %129, %205 ], [ %129, %217 ], [ %129, %245 ], [ %129, %247 ], [ %129, %260 ], [ %129, %262 ], [ %496, %487 ]
  %.ph10 = phi i64 [ %152, %205 ], [ %152, %217 ], [ %152, %245 ], [ %152, %247 ], [ %152, %260 ], [ %152, %262 ], [ %488, %487 ]
  br label %615, !dbg !2403

.loopexit13:                                      ; preds = %573
  %.lcssa109 = phi i32 [ %102, %573 ]
  %.lcssa101 = phi ptr [ %103, %573 ]
  %.lcssa93 = phi ptr [ %104, %573 ]
  %.lcssa77 = phi i1 [ %108, %573 ]
  %.lcssa60.lcssa = phi i64 [ %.lcssa60, %573 ]
  %.lcssa24.lcssa = phi i64 [ %.lcssa24, %573 ]
  br label %615, !dbg !2403

615:                                              ; preds = %.loopexit13, %.loopexit8, %.loopexit1
  %616 = phi i32 [ %.lcssa108, %.loopexit1 ], [ %.lcssa105, %.loopexit8 ], [ %.lcssa109, %.loopexit13 ]
  %617 = phi ptr [ %.lcssa100, %.loopexit1 ], [ %.lcssa97, %.loopexit8 ], [ %.lcssa101, %.loopexit13 ]
  %618 = phi ptr [ %.lcssa92, %.loopexit1 ], [ %.lcssa89, %.loopexit8 ], [ %.lcssa93, %.loopexit13 ]
  %619 = phi i1 [ %.lcssa76, %.loopexit1 ], [ %.lcssa73, %.loopexit8 ], [ %.lcssa77, %.loopexit13 ]
  %620 = phi i64 [ %.lcssa29, %.loopexit1 ], [ %.ph9, %.loopexit8 ], [ %.lcssa24.lcssa, %.loopexit13 ]
  %621 = phi i64 [ %.lcssa23, %.loopexit1 ], [ %.ph10, %.loopexit8 ], [ %.lcssa60.lcssa, %.loopexit13 ]
  call void @llvm.dbg.label(metadata !1919), !dbg !2228
  %622 = icmp eq i32 %616, 2, !dbg !2403
  %623 = select i1 %619, i32 4, i32 2, !dbg !2229
  br i1 %622, label %624, label %630, !dbg !2229

624:                                              ; preds = %332, %615, %613
  %625 = phi ptr [ %.lcssa98, %613 ], [ %.lcssa99, %332 ], [ %617, %615 ]
  %626 = phi ptr [ %.lcssa90, %613 ], [ %.lcssa91, %332 ], [ %618, %615 ]
  %627 = phi i32 [ 4, %613 ], [ %333, %332 ], [ %623, %615 ]
  %628 = phi i64 [ %.lcssa27, %613 ], [ %.lcssa28, %332 ], [ %620, %615 ]
  %629 = phi i64 [ %.lcssa69, %613 ], [ %.lcssa22, %332 ], [ %621, %615 ]
  br label %630, !dbg !2229

.loopexit7:                                       ; preds = %146
  %.lcssa104 = phi i32 [ %102, %146 ]
  %.lcssa96 = phi ptr [ %103, %146 ]
  %.lcssa88 = phi ptr [ %104, %146 ]
  %.lcssa25 = phi i64 [ %129, %146 ]
  %.lcssa21 = phi i64 [ %144, %146 ], !dbg !2030
  br label %630, !dbg !2404

630:                                              ; preds = %.loopexit7, %615, %613, %624
  %631 = phi ptr [ %625, %624 ], [ %.lcssa98, %613 ], [ %617, %615 ], [ %.lcssa96, %.loopexit7 ]
  %632 = phi ptr [ %626, %624 ], [ %.lcssa90, %613 ], [ %618, %615 ], [ %.lcssa88, %.loopexit7 ]
  %633 = phi i64 [ %628, %624 ], [ %.lcssa27, %613 ], [ %620, %615 ], [ %.lcssa25, %.loopexit7 ]
  %634 = phi i64 [ %629, %624 ], [ %.lcssa69, %613 ], [ %621, %615 ], [ %.lcssa21, %.loopexit7 ]
  %635 = phi i32 [ %627, %624 ], [ %.lcssa106, %613 ], [ %616, %615 ], [ %.lcssa104, %.loopexit7 ]
  tail call void @llvm.dbg.value(metadata i32 %635, metadata !1862, metadata !DIExpression()), !dbg !1928
  %636 = and i32 %5, -3, !dbg !2404
  %637 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %633, ptr noundef %2, i64 noundef %634, i32 noundef %635, i32 noundef %636, ptr noundef null, ptr noundef %631, ptr noundef %632), !dbg !2405
  br label %638, !dbg !2406

638:                                              ; preds = %608, %611, %630, %583
  %639 = phi i64 [ %637, %630 ], [ %584, %583 ], [ %609, %611 ], [ %609, %608 ]
  ret i64 %639, !dbg !2407
}

; Function Attrs: nounwind
declare !dbg !2408 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2411 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !2414 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #11 !dbg !2416 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2420, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2421, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2422, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.value(metadata ptr %0, metadata !2424, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.value(metadata i64 %1, metadata !2429, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.value(metadata ptr null, metadata !2430, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.value(metadata ptr %2, metadata !2431, metadata !DIExpression()), !dbg !2437
  %4 = icmp eq ptr %2, null, !dbg !2439
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2439
  call void @llvm.dbg.value(metadata ptr %5, metadata !2432, metadata !DIExpression()), !dbg !2437
  %6 = tail call ptr @__errno_location() #40, !dbg !2440
  %7 = load i32, ptr %6, align 4, !dbg !2440, !tbaa !890
  call void @llvm.dbg.value(metadata i32 %7, metadata !2433, metadata !DIExpression()), !dbg !2437
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2441
  %9 = load i32, ptr %8, align 4, !dbg !2441, !tbaa !1802
  %10 = or i32 %9, 1, !dbg !2442
  call void @llvm.dbg.value(metadata i32 %10, metadata !2434, metadata !DIExpression()), !dbg !2437
  %11 = load i32, ptr %5, align 8, !dbg !2443, !tbaa !1752
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2444
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2445
  %14 = load ptr, ptr %13, align 8, !dbg !2445, !tbaa !1823
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2446
  %16 = load ptr, ptr %15, align 8, !dbg !2446, !tbaa !1826
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2447
  %18 = add i64 %17, 1, !dbg !2448
  call void @llvm.dbg.value(metadata i64 %18, metadata !2435, metadata !DIExpression()), !dbg !2437
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #44, !dbg !2449
  call void @llvm.dbg.value(metadata ptr %19, metadata !2436, metadata !DIExpression()), !dbg !2437
  %20 = load i32, ptr %5, align 8, !dbg !2450, !tbaa !1752
  %21 = load ptr, ptr %13, align 8, !dbg !2451, !tbaa !1823
  %22 = load ptr, ptr %15, align 8, !dbg !2452, !tbaa !1826
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2453
  store i32 %7, ptr %6, align 4, !dbg !2454, !tbaa !890
  ret ptr %19, !dbg !2455
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #11 !dbg !2425 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2424, metadata !DIExpression()), !dbg !2456
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2429, metadata !DIExpression()), !dbg !2456
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2430, metadata !DIExpression()), !dbg !2456
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2431, metadata !DIExpression()), !dbg !2456
  %5 = icmp eq ptr %3, null, !dbg !2457
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2457
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2432, metadata !DIExpression()), !dbg !2456
  %7 = tail call ptr @__errno_location() #40, !dbg !2458
  %8 = load i32, ptr %7, align 4, !dbg !2458, !tbaa !890
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !2433, metadata !DIExpression()), !dbg !2456
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2459
  %10 = load i32, ptr %9, align 4, !dbg !2459, !tbaa !1802
  %11 = icmp eq ptr %2, null, !dbg !2460
  %12 = zext i1 %11 to i32, !dbg !2460
  %13 = or i32 %10, %12, !dbg !2461
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !2434, metadata !DIExpression()), !dbg !2456
  %14 = load i32, ptr %6, align 8, !dbg !2462, !tbaa !1752
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2463
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2464
  %17 = load ptr, ptr %16, align 8, !dbg !2464, !tbaa !1823
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2465
  %19 = load ptr, ptr %18, align 8, !dbg !2465, !tbaa !1826
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2466
  %21 = add i64 %20, 1, !dbg !2467
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2435, metadata !DIExpression()), !dbg !2456
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #44, !dbg !2468
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !2436, metadata !DIExpression()), !dbg !2456
  %23 = load i32, ptr %6, align 8, !dbg !2469, !tbaa !1752
  %24 = load ptr, ptr %16, align 8, !dbg !2470, !tbaa !1823
  %25 = load ptr, ptr %18, align 8, !dbg !2471, !tbaa !1826
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2472
  store i32 %8, ptr %7, align 4, !dbg !2473, !tbaa !890
  br i1 %11, label %28, label %27, !dbg !2474

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2475, !tbaa !2477
  br label %28, !dbg !2478

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2479
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #11 !dbg !2480 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2485, !tbaa !882
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2482, metadata !DIExpression()), !dbg !2486
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2483, metadata !DIExpression()), !dbg !2487
  %2 = load i32, ptr @nslots, align 4, !tbaa !890
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2483, metadata !DIExpression()), !dbg !2487
  %3 = icmp sgt i32 %2, 1, !dbg !2488
  br i1 %3, label %4, label %6, !dbg !2490

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !2488
  br label %10, !dbg !2490

.loopexit:                                        ; preds = %10
  br label %6, !dbg !2491

6:                                                ; preds = %.loopexit, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2491
  %8 = load ptr, ptr %7, align 8, !dbg !2491, !tbaa !2493
  %9 = icmp eq ptr %8, @slot0, !dbg !2495
  br i1 %9, label %17, label %16, !dbg !2496

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2483, metadata !DIExpression()), !dbg !2487
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2497
  %13 = load ptr, ptr %12, align 8, !dbg !2497, !tbaa !2493
  tail call void @free(ptr noundef %13) #37, !dbg !2498
  %14 = add nuw nsw i64 %11, 1, !dbg !2499
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2483, metadata !DIExpression()), !dbg !2487
  %15 = icmp eq i64 %14, %5, !dbg !2488
  br i1 %15, label %.loopexit, label %10, !dbg !2490, !llvm.loop !2500

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #37, !dbg !2502
  store i64 256, ptr @slotvec0, align 8, !dbg !2504, !tbaa !2505
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2506, !tbaa !2493
  br label %17, !dbg !2507

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2508
  br i1 %18, label %20, label %19, !dbg !2510

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #37, !dbg !2511
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2513, !tbaa !882
  br label %20, !dbg !2514

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2515, !tbaa !890
  ret void, !dbg !2516
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2517 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #11 !dbg !2520 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2522, metadata !DIExpression()), !dbg !2524
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2523, metadata !DIExpression()), !dbg !2524
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2525
  ret ptr %3, !dbg !2526
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #11 !dbg !2527 {
  %5 = alloca i64, align 8, !DIAssignID !2547
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2541, metadata !DIExpression(), metadata !2547, metadata ptr %5, metadata !DIExpression()), !dbg !2548
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2531, metadata !DIExpression()), !dbg !2549
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2532, metadata !DIExpression()), !dbg !2549
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2533, metadata !DIExpression()), !dbg !2549
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2534, metadata !DIExpression()), !dbg !2549
  %6 = tail call ptr @__errno_location() #40, !dbg !2550
  %7 = load i32, ptr %6, align 4, !dbg !2550, !tbaa !890
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !2535, metadata !DIExpression()), !dbg !2549
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2551, !tbaa !882
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2536, metadata !DIExpression()), !dbg !2549
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !2537, metadata !DIExpression()), !dbg !2549
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2552
  br i1 %9, label %10, label %11, !dbg !2552

10:                                               ; preds = %4
  tail call void @abort() #39, !dbg !2554
  unreachable, !dbg !2554

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2555, !tbaa !890
  %13 = icmp sgt i32 %12, %0, !dbg !2556
  br i1 %13, label %32, label %14, !dbg !2557

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2558
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !2538, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2548
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #37, !dbg !2559
  %16 = sext i32 %12 to i64, !dbg !2560
  store i64 %16, ptr %5, align 8, !dbg !2561, !tbaa !2477, !DIAssignID !2562
  call void @llvm.dbg.assign(metadata i64 %16, metadata !2541, metadata !DIExpression(), metadata !2562, metadata ptr %5, metadata !DIExpression()), !dbg !2548
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2563
  %18 = add nuw nsw i32 %0, 1, !dbg !2564
  %19 = sub i32 %18, %12, !dbg !2565
  %20 = sext i32 %19 to i64, !dbg !2566
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #37, !dbg !2567
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2536, metadata !DIExpression()), !dbg !2549
  store ptr %21, ptr @slotvec, align 8, !dbg !2568, !tbaa !882
  br i1 %15, label %22, label %23, !dbg !2569

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2570, !tbaa.struct !2572
  br label %23, !dbg !2573

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2574, !tbaa !890
  %25 = sext i32 %24 to i64, !dbg !2575
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2575
  %27 = load i64, ptr %5, align 8, !dbg !2576, !tbaa !2477
  %28 = sub nsw i64 %27, %25, !dbg !2577
  %29 = shl i64 %28, 4, !dbg !2578
  call void @llvm.dbg.value(metadata ptr %26, metadata !1961, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i32 0, metadata !1964, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i64 %29, metadata !1965, metadata !DIExpression()), !dbg !2579
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #37, !dbg !2581
  %30 = load i64, ptr %5, align 8, !dbg !2582, !tbaa !2477
  %31 = trunc i64 %30 to i32, !dbg !2582
  store i32 %31, ptr @nslots, align 4, !dbg !2583, !tbaa !890
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #37, !dbg !2584
  br label %32, !dbg !2585

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2549
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2536, metadata !DIExpression()), !dbg !2549
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2586
  %36 = load i64, ptr %35, align 8, !dbg !2587, !tbaa !2505
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !2542, metadata !DIExpression()), !dbg !2588
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2589
  %38 = load ptr, ptr %37, align 8, !dbg !2589, !tbaa !2493
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !2544, metadata !DIExpression()), !dbg !2588
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2590
  %40 = load i32, ptr %39, align 4, !dbg !2590, !tbaa !1802
  %41 = or i32 %40, 1, !dbg !2591
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !2545, metadata !DIExpression()), !dbg !2588
  %42 = load i32, ptr %3, align 8, !dbg !2592, !tbaa !1752
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2593
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2594
  %45 = load ptr, ptr %44, align 8, !dbg !2594, !tbaa !1823
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2595
  %47 = load ptr, ptr %46, align 8, !dbg !2595, !tbaa !1826
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2596
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !2546, metadata !DIExpression()), !dbg !2588
  %49 = icmp ugt i64 %36, %48, !dbg !2597
  br i1 %49, label %60, label %50, !dbg !2599

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2600
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !2542, metadata !DIExpression()), !dbg !2588
  store i64 %51, ptr %35, align 8, !dbg !2602, !tbaa !2505
  %52 = icmp eq ptr %38, @slot0, !dbg !2603
  br i1 %52, label %54, label %53, !dbg !2605

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #37, !dbg !2606
  br label %54, !dbg !2606

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #44, !dbg !2607
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !2544, metadata !DIExpression()), !dbg !2588
  store ptr %55, ptr %37, align 8, !dbg !2608, !tbaa !2493
  %56 = load i32, ptr %3, align 8, !dbg !2609, !tbaa !1752
  %57 = load ptr, ptr %44, align 8, !dbg !2610, !tbaa !1823
  %58 = load ptr, ptr %46, align 8, !dbg !2611, !tbaa !1826
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2612
  br label %60, !dbg !2613

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2588
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2544, metadata !DIExpression()), !dbg !2588
  store i32 %7, ptr %6, align 4, !dbg !2614, !tbaa !890
  ret ptr %61, !dbg !2615
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #11 !dbg !2616 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2620, metadata !DIExpression()), !dbg !2623
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2621, metadata !DIExpression()), !dbg !2623
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2622, metadata !DIExpression()), !dbg !2623
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2624
  ret ptr %4, !dbg !2625
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #11 !dbg !2626 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2628, metadata !DIExpression()), !dbg !2629
  call void @llvm.dbg.value(metadata i32 0, metadata !2522, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata ptr %0, metadata !2523, metadata !DIExpression()), !dbg !2630
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2632
  ret ptr %2, !dbg !2633
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #11 !dbg !2634 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2638, metadata !DIExpression()), !dbg !2640
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2639, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i32 0, metadata !2620, metadata !DIExpression()), !dbg !2641
  call void @llvm.dbg.value(metadata ptr %0, metadata !2621, metadata !DIExpression()), !dbg !2641
  call void @llvm.dbg.value(metadata i64 %1, metadata !2622, metadata !DIExpression()), !dbg !2641
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2643
  ret ptr %3, !dbg !2644
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #11 !dbg !2645 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2653
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2652, metadata !DIExpression(), metadata !2653, metadata ptr %4, metadata !DIExpression()), !dbg !2654
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2649, metadata !DIExpression()), !dbg !2654
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2650, metadata !DIExpression()), !dbg !2654
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2651, metadata !DIExpression()), !dbg !2654
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2655
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2656), !dbg !2659
  call void @llvm.dbg.value(metadata i32 %1, metadata !2660, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2665, metadata !DIExpression()), !dbg !2668
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2668, !alias.scope !2656, !DIAssignID !2669
  call void @llvm.dbg.assign(metadata i8 0, metadata !2652, metadata !DIExpression(), metadata !2669, metadata ptr %4, metadata !DIExpression()), !dbg !2654
  %5 = icmp eq i32 %1, 10, !dbg !2670
  br i1 %5, label %6, label %7, !dbg !2672

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2673, !noalias !2656
  unreachable, !dbg !2673

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2674, !tbaa !1752, !alias.scope !2656, !DIAssignID !2675
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2652, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2675, metadata ptr %4, metadata !DIExpression()), !dbg !2654
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2676
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2677
  ret ptr %8, !dbg !2678
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #11 !dbg !2679 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2688
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2687, metadata !DIExpression(), metadata !2688, metadata ptr %5, metadata !DIExpression()), !dbg !2689
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2683, metadata !DIExpression()), !dbg !2689
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2684, metadata !DIExpression()), !dbg !2689
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2685, metadata !DIExpression()), !dbg !2689
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2686, metadata !DIExpression()), !dbg !2689
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2690
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2691), !dbg !2694
  call void @llvm.dbg.value(metadata i32 %1, metadata !2660, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2665, metadata !DIExpression()), !dbg !2697
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2697, !alias.scope !2691, !DIAssignID !2698
  call void @llvm.dbg.assign(metadata i8 0, metadata !2687, metadata !DIExpression(), metadata !2698, metadata ptr %5, metadata !DIExpression()), !dbg !2689
  %6 = icmp eq i32 %1, 10, !dbg !2699
  br i1 %6, label %7, label %8, !dbg !2700

7:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2701, !noalias !2691
  unreachable, !dbg !2701

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2702, !tbaa !1752, !alias.scope !2691, !DIAssignID !2703
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2687, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2703, metadata ptr %5, metadata !DIExpression()), !dbg !2689
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2704
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2705
  ret ptr %9, !dbg !2706
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #11 !dbg !2707 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2713
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2711, metadata !DIExpression()), !dbg !2714
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2712, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2652, metadata !DIExpression(), metadata !2713, metadata ptr %3, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata i32 0, metadata !2649, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata i32 %0, metadata !2650, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata ptr %1, metadata !2651, metadata !DIExpression()), !dbg !2715
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2717
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2718), !dbg !2721
  call void @llvm.dbg.value(metadata i32 %0, metadata !2660, metadata !DIExpression()), !dbg !2722
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2665, metadata !DIExpression()), !dbg !2724
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2724, !alias.scope !2718, !DIAssignID !2725
  call void @llvm.dbg.assign(metadata i8 0, metadata !2652, metadata !DIExpression(), metadata !2725, metadata ptr %3, metadata !DIExpression()), !dbg !2715
  %4 = icmp eq i32 %0, 10, !dbg !2726
  br i1 %4, label %5, label %6, !dbg !2727

5:                                                ; preds = %2
  tail call void @abort() #39, !dbg !2728, !noalias !2718
  unreachable, !dbg !2728

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2729, !tbaa !1752, !alias.scope !2718, !DIAssignID !2730
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2652, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2730, metadata ptr %3, metadata !DIExpression()), !dbg !2715
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2731
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2732
  ret ptr %7, !dbg !2733
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #11 !dbg !2734 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2741
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2738, metadata !DIExpression()), !dbg !2742
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2739, metadata !DIExpression()), !dbg !2742
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2740, metadata !DIExpression()), !dbg !2742
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2687, metadata !DIExpression(), metadata !2741, metadata ptr %4, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata i32 0, metadata !2683, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata i32 %0, metadata !2684, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata ptr %1, metadata !2685, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata i64 %2, metadata !2686, metadata !DIExpression()), !dbg !2743
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2745
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2746), !dbg !2749
  call void @llvm.dbg.value(metadata i32 %0, metadata !2660, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2665, metadata !DIExpression()), !dbg !2752
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2752, !alias.scope !2746, !DIAssignID !2753
  call void @llvm.dbg.assign(metadata i8 0, metadata !2687, metadata !DIExpression(), metadata !2753, metadata ptr %4, metadata !DIExpression()), !dbg !2743
  %5 = icmp eq i32 %0, 10, !dbg !2754
  br i1 %5, label %6, label %7, !dbg !2755

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2756, !noalias !2746
  unreachable, !dbg !2756

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2757, !tbaa !1752, !alias.scope !2746, !DIAssignID !2758
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2687, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2758, metadata ptr %4, metadata !DIExpression()), !dbg !2743
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2759
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2760
  ret ptr %8, !dbg !2761
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #11 !dbg !2762 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2770
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2769, metadata !DIExpression(), metadata !2770, metadata ptr %4, metadata !DIExpression()), !dbg !2771
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2766, metadata !DIExpression()), !dbg !2771
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2767, metadata !DIExpression()), !dbg !2771
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2768, metadata !DIExpression()), !dbg !2771
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2772
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2773, !tbaa.struct !2774, !DIAssignID !2775
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2769, metadata !DIExpression(), metadata !2775, metadata ptr %4, metadata !DIExpression()), !dbg !2771
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1769, metadata !DIExpression()), !dbg !2776
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1770, metadata !DIExpression()), !dbg !2776
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1771, metadata !DIExpression()), !dbg !2776
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1772, metadata !DIExpression()), !dbg !2776
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2778
  %6 = lshr i8 %2, 5, !dbg !2779
  %7 = zext nneg i8 %6 to i64, !dbg !2779
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2780
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1773, metadata !DIExpression()), !dbg !2776
  %9 = and i8 %2, 31, !dbg !2781
  %10 = zext nneg i8 %9 to i32, !dbg !2781
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1775, metadata !DIExpression()), !dbg !2776
  %11 = load i32, ptr %8, align 4, !dbg !2782, !tbaa !890
  %12 = lshr i32 %11, %10, !dbg !2783
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1776, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2776
  %13 = and i32 %12, 1, !dbg !2784
  %14 = xor i32 %13, 1, !dbg !2784
  %15 = shl nuw i32 %14, %10, !dbg !2785
  %16 = xor i32 %15, %11, !dbg !2786
  store i32 %16, ptr %8, align 4, !dbg !2786, !tbaa !890
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2787
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2788
  ret ptr %17, !dbg !2789
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #11 !dbg !2790 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2796
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2794, metadata !DIExpression()), !dbg !2797
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2795, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2769, metadata !DIExpression(), metadata !2796, metadata ptr %3, metadata !DIExpression()), !dbg !2798
  call void @llvm.dbg.value(metadata ptr %0, metadata !2766, metadata !DIExpression()), !dbg !2798
  call void @llvm.dbg.value(metadata i64 -1, metadata !2767, metadata !DIExpression()), !dbg !2798
  call void @llvm.dbg.value(metadata i8 %1, metadata !2768, metadata !DIExpression()), !dbg !2798
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2800
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2801, !tbaa.struct !2774, !DIAssignID !2802
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2769, metadata !DIExpression(), metadata !2802, metadata ptr %3, metadata !DIExpression()), !dbg !2798
  call void @llvm.dbg.value(metadata ptr %3, metadata !1769, metadata !DIExpression()), !dbg !2803
  call void @llvm.dbg.value(metadata i8 %1, metadata !1770, metadata !DIExpression()), !dbg !2803
  call void @llvm.dbg.value(metadata i32 1, metadata !1771, metadata !DIExpression()), !dbg !2803
  call void @llvm.dbg.value(metadata i8 %1, metadata !1772, metadata !DIExpression()), !dbg !2803
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2805
  %5 = lshr i8 %1, 5, !dbg !2806
  %6 = zext nneg i8 %5 to i64, !dbg !2806
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2807
  call void @llvm.dbg.value(metadata ptr %7, metadata !1773, metadata !DIExpression()), !dbg !2803
  %8 = and i8 %1, 31, !dbg !2808
  %9 = zext nneg i8 %8 to i32, !dbg !2808
  call void @llvm.dbg.value(metadata i32 %9, metadata !1775, metadata !DIExpression()), !dbg !2803
  %10 = load i32, ptr %7, align 4, !dbg !2809, !tbaa !890
  %11 = lshr i32 %10, %9, !dbg !2810
  call void @llvm.dbg.value(metadata i32 %11, metadata !1776, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2803
  %12 = and i32 %11, 1, !dbg !2811
  %13 = xor i32 %12, 1, !dbg !2811
  %14 = shl nuw i32 %13, %9, !dbg !2812
  %15 = xor i32 %14, %10, !dbg !2813
  store i32 %15, ptr %7, align 4, !dbg !2813, !tbaa !890
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2814
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2815
  ret ptr %16, !dbg !2816
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #11 !dbg !2817 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !2820
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2819, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata ptr %0, metadata !2794, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.value(metadata i8 58, metadata !2795, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2769, metadata !DIExpression(), metadata !2820, metadata ptr %2, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.value(metadata ptr %0, metadata !2766, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.value(metadata i64 -1, metadata !2767, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.value(metadata i8 58, metadata !2768, metadata !DIExpression()), !dbg !2824
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #37, !dbg !2826
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2827, !tbaa.struct !2774, !DIAssignID !2828
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2769, metadata !DIExpression(), metadata !2828, metadata ptr %2, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.value(metadata ptr %2, metadata !1769, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata i8 58, metadata !1770, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata i32 1, metadata !1771, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata i8 58, metadata !1772, metadata !DIExpression()), !dbg !2829
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2831
  call void @llvm.dbg.value(metadata ptr %3, metadata !1773, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata i32 26, metadata !1775, metadata !DIExpression()), !dbg !2829
  %4 = load i32, ptr %3, align 4, !dbg !2832, !tbaa !890
  call void @llvm.dbg.value(metadata i32 %4, metadata !1776, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2829
  %5 = or i32 %4, 67108864, !dbg !2833
  store i32 %5, ptr %3, align 4, !dbg !2833, !tbaa !890
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2834
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #37, !dbg !2835
  ret ptr %6, !dbg !2836
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #11 !dbg !2837 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2841
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2839, metadata !DIExpression()), !dbg !2842
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2840, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2769, metadata !DIExpression(), metadata !2841, metadata ptr %3, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata ptr %0, metadata !2766, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i64 %1, metadata !2767, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i8 58, metadata !2768, metadata !DIExpression()), !dbg !2843
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2845
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2846, !tbaa.struct !2774, !DIAssignID !2847
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2769, metadata !DIExpression(), metadata !2847, metadata ptr %3, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata ptr %3, metadata !1769, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i8 58, metadata !1770, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i32 1, metadata !1771, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i8 58, metadata !1772, metadata !DIExpression()), !dbg !2848
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2850
  call void @llvm.dbg.value(metadata ptr %4, metadata !1773, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i32 26, metadata !1775, metadata !DIExpression()), !dbg !2848
  %5 = load i32, ptr %4, align 4, !dbg !2851, !tbaa !890
  call void @llvm.dbg.value(metadata i32 %5, metadata !1776, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2848
  %6 = or i32 %5, 67108864, !dbg !2852
  store i32 %6, ptr %4, align 4, !dbg !2852, !tbaa !890
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2853
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2854
  ret ptr %7, !dbg !2855
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #11 !dbg !2856 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2862
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2861, metadata !DIExpression(), metadata !2862, metadata ptr %4, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2665, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2864
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2858, metadata !DIExpression()), !dbg !2863
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2859, metadata !DIExpression()), !dbg !2863
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2860, metadata !DIExpression()), !dbg !2863
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2866
  call void @llvm.dbg.value(metadata i32 %1, metadata !2660, metadata !DIExpression()), !dbg !2867
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2665, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2867
  %5 = icmp eq i32 %1, 10, !dbg !2868
  br i1 %5, label %6, label %7, !dbg !2869

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2870, !noalias !2871
  unreachable, !dbg !2870

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2665, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2867
  store i32 %1, ptr %4, align 8, !dbg !2874, !tbaa.struct !2774, !DIAssignID !2875
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2874
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2874
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2861, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2875, metadata ptr %4, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2861, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !2876, metadata ptr %8, metadata !DIExpression()), !dbg !2863
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1769, metadata !DIExpression()), !dbg !2877
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1770, metadata !DIExpression()), !dbg !2877
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1771, metadata !DIExpression()), !dbg !2877
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1772, metadata !DIExpression()), !dbg !2877
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2879
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1773, metadata !DIExpression()), !dbg !2877
  tail call void @llvm.dbg.value(metadata i32 26, metadata !1775, metadata !DIExpression()), !dbg !2877
  %10 = load i32, ptr %9, align 4, !dbg !2880, !tbaa !890
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1776, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2877
  %11 = or i32 %10, 67108864, !dbg !2881
  store i32 %11, ptr %9, align 4, !dbg !2881, !tbaa !890, !DIAssignID !2882
  call void @llvm.dbg.assign(metadata i32 %11, metadata !2861, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !2882, metadata ptr %9, metadata !DIExpression()), !dbg !2863
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2883
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2884
  ret ptr %12, !dbg !2885
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #11 !dbg !2886 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2894
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2890, metadata !DIExpression()), !dbg !2895
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2891, metadata !DIExpression()), !dbg !2895
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2892, metadata !DIExpression()), !dbg !2895
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2893, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2896, metadata !DIExpression(), metadata !2894, metadata ptr %5, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i32 %0, metadata !2901, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata ptr %1, metadata !2902, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata ptr %2, metadata !2903, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata ptr %3, metadata !2904, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i64 -1, metadata !2905, metadata !DIExpression()), !dbg !2906
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2908
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2909, !tbaa.struct !2774, !DIAssignID !2910
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2896, metadata !DIExpression(), metadata !2910, metadata ptr %5, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2896, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2911, metadata ptr undef, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata ptr %5, metadata !1809, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata ptr %1, metadata !1810, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata ptr %2, metadata !1811, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata ptr %5, metadata !1809, metadata !DIExpression()), !dbg !2912
  store i32 10, ptr %5, align 8, !dbg !2914, !tbaa !1752, !DIAssignID !2915
  call void @llvm.dbg.assign(metadata i32 10, metadata !2896, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2915, metadata ptr %5, metadata !DIExpression()), !dbg !2906
  %6 = icmp ne ptr %1, null, !dbg !2916
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2917
  br i1 %8, label %10, label %9, !dbg !2917

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2918
  unreachable, !dbg !2918

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2919
  store ptr %1, ptr %11, align 8, !dbg !2920, !tbaa !1823, !DIAssignID !2921
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2896, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2921, metadata ptr %11, metadata !DIExpression()), !dbg !2906
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2922
  store ptr %2, ptr %12, align 8, !dbg !2923, !tbaa !1826, !DIAssignID !2924
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2896, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2924, metadata ptr %12, metadata !DIExpression()), !dbg !2906
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2925
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2926
  ret ptr %13, !dbg !2927
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #11 !dbg !2897 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !2928
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2896, metadata !DIExpression(), metadata !2928, metadata ptr %6, metadata !DIExpression()), !dbg !2929
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2901, metadata !DIExpression()), !dbg !2929
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2902, metadata !DIExpression()), !dbg !2929
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2903, metadata !DIExpression()), !dbg !2929
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2904, metadata !DIExpression()), !dbg !2929
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !2905, metadata !DIExpression()), !dbg !2929
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #37, !dbg !2930
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2931, !tbaa.struct !2774, !DIAssignID !2932
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2896, metadata !DIExpression(), metadata !2932, metadata ptr %6, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2896, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2933, metadata ptr undef, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata ptr %6, metadata !1809, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata ptr %1, metadata !1810, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata ptr %2, metadata !1811, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata ptr %6, metadata !1809, metadata !DIExpression()), !dbg !2934
  store i32 10, ptr %6, align 8, !dbg !2936, !tbaa !1752, !DIAssignID !2937
  call void @llvm.dbg.assign(metadata i32 10, metadata !2896, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2937, metadata ptr %6, metadata !DIExpression()), !dbg !2929
  %7 = icmp ne ptr %1, null, !dbg !2938
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2939
  br i1 %9, label %11, label %10, !dbg !2939

10:                                               ; preds = %5
  tail call void @abort() #39, !dbg !2940
  unreachable, !dbg !2940

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2941
  store ptr %1, ptr %12, align 8, !dbg !2942, !tbaa !1823, !DIAssignID !2943
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2896, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2943, metadata ptr %12, metadata !DIExpression()), !dbg !2929
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2944
  store ptr %2, ptr %13, align 8, !dbg !2945, !tbaa !1826, !DIAssignID !2946
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2896, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2946, metadata ptr %13, metadata !DIExpression()), !dbg !2929
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2947
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #37, !dbg !2948
  ret ptr %14, !dbg !2949
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #11 !dbg !2950 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2957
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2954, metadata !DIExpression()), !dbg !2958
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2955, metadata !DIExpression()), !dbg !2958
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2956, metadata !DIExpression()), !dbg !2958
  call void @llvm.dbg.value(metadata i32 0, metadata !2890, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata ptr %0, metadata !2891, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata ptr %1, metadata !2892, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata ptr %2, metadata !2893, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2896, metadata !DIExpression(), metadata !2957, metadata ptr %4, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata i32 0, metadata !2901, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata ptr %0, metadata !2902, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata ptr %1, metadata !2903, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata ptr %2, metadata !2904, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata i64 -1, metadata !2905, metadata !DIExpression()), !dbg !2961
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2963
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2964, !tbaa.struct !2774, !DIAssignID !2965
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2896, metadata !DIExpression(), metadata !2965, metadata ptr %4, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2896, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2966, metadata ptr undef, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata ptr %4, metadata !1809, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata ptr %0, metadata !1810, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata ptr %1, metadata !1811, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata ptr %4, metadata !1809, metadata !DIExpression()), !dbg !2967
  store i32 10, ptr %4, align 8, !dbg !2969, !tbaa !1752, !DIAssignID !2970
  call void @llvm.dbg.assign(metadata i32 10, metadata !2896, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2970, metadata ptr %4, metadata !DIExpression()), !dbg !2961
  %5 = icmp ne ptr %0, null, !dbg !2971
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2972
  br i1 %7, label %9, label %8, !dbg !2972

8:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2973
  unreachable, !dbg !2973

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2974
  store ptr %0, ptr %10, align 8, !dbg !2975, !tbaa !1823, !DIAssignID !2976
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2896, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2976, metadata ptr %10, metadata !DIExpression()), !dbg !2961
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2977
  store ptr %1, ptr %11, align 8, !dbg !2978, !tbaa !1826, !DIAssignID !2979
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2896, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2979, metadata ptr %11, metadata !DIExpression()), !dbg !2961
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2980
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2981
  ret ptr %12, !dbg !2982
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #11 !dbg !2983 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2991
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2987, metadata !DIExpression()), !dbg !2992
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2988, metadata !DIExpression()), !dbg !2992
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2989, metadata !DIExpression()), !dbg !2992
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2990, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2896, metadata !DIExpression(), metadata !2991, metadata ptr %5, metadata !DIExpression()), !dbg !2993
  call void @llvm.dbg.value(metadata i32 0, metadata !2901, metadata !DIExpression()), !dbg !2993
  call void @llvm.dbg.value(metadata ptr %0, metadata !2902, metadata !DIExpression()), !dbg !2993
  call void @llvm.dbg.value(metadata ptr %1, metadata !2903, metadata !DIExpression()), !dbg !2993
  call void @llvm.dbg.value(metadata ptr %2, metadata !2904, metadata !DIExpression()), !dbg !2993
  call void @llvm.dbg.value(metadata i64 %3, metadata !2905, metadata !DIExpression()), !dbg !2993
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2995
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2996, !tbaa.struct !2774, !DIAssignID !2997
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2896, metadata !DIExpression(), metadata !2997, metadata ptr %5, metadata !DIExpression()), !dbg !2993
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2896, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2998, metadata ptr undef, metadata !DIExpression()), !dbg !2993
  call void @llvm.dbg.value(metadata ptr %5, metadata !1809, metadata !DIExpression()), !dbg !2999
  call void @llvm.dbg.value(metadata ptr %0, metadata !1810, metadata !DIExpression()), !dbg !2999
  call void @llvm.dbg.value(metadata ptr %1, metadata !1811, metadata !DIExpression()), !dbg !2999
  call void @llvm.dbg.value(metadata ptr %5, metadata !1809, metadata !DIExpression()), !dbg !2999
  store i32 10, ptr %5, align 8, !dbg !3001, !tbaa !1752, !DIAssignID !3002
  call void @llvm.dbg.assign(metadata i32 10, metadata !2896, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3002, metadata ptr %5, metadata !DIExpression()), !dbg !2993
  %6 = icmp ne ptr %0, null, !dbg !3003
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3004
  br i1 %8, label %10, label %9, !dbg !3004

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !3005
  unreachable, !dbg !3005

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3006
  store ptr %0, ptr %11, align 8, !dbg !3007, !tbaa !1823, !DIAssignID !3008
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2896, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3008, metadata ptr %11, metadata !DIExpression()), !dbg !2993
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3009
  store ptr %1, ptr %12, align 8, !dbg !3010, !tbaa !1826, !DIAssignID !3011
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2896, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3011, metadata ptr %12, metadata !DIExpression()), !dbg !2993
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3012
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !3013
  ret ptr %13, !dbg !3014
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #11 !dbg !3015 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3019, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3020, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3021, metadata !DIExpression()), !dbg !3022
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3023
  ret ptr %4, !dbg !3024
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #11 !dbg !3025 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3029, metadata !DIExpression()), !dbg !3031
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3030, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.value(metadata i32 0, metadata !3019, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata ptr %0, metadata !3020, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i64 %1, metadata !3021, metadata !DIExpression()), !dbg !3032
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3034
  ret ptr %3, !dbg !3035
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #11 !dbg !3036 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3040, metadata !DIExpression()), !dbg !3042
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3041, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i32 %0, metadata !3019, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata ptr %1, metadata !3020, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i64 -1, metadata !3021, metadata !DIExpression()), !dbg !3043
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3045
  ret ptr %3, !dbg !3046
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #11 !dbg !3047 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3051, metadata !DIExpression()), !dbg !3052
  call void @llvm.dbg.value(metadata i32 0, metadata !3040, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata ptr %0, metadata !3041, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i32 0, metadata !3019, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata ptr %0, metadata !3020, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i64 -1, metadata !3021, metadata !DIExpression()), !dbg !3055
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3057
  ret ptr %2, !dbg !3058
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #11 !dbg !3059 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3098, metadata !DIExpression()), !dbg !3104
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3099, metadata !DIExpression()), !dbg !3104
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3100, metadata !DIExpression()), !dbg !3104
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3101, metadata !DIExpression()), !dbg !3104
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3102, metadata !DIExpression()), !dbg !3104
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !3103, metadata !DIExpression()), !dbg !3104
  %7 = icmp eq ptr %1, null, !dbg !3105
  br i1 %7, label %10, label %8, !dbg !3107

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.119, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #37, !dbg !3108
  br label %12, !dbg !3108

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.120, ptr noundef %2, ptr noundef %3) #37, !dbg !3109
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.3.122, i32 noundef 5) #37, !dbg !3110
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #37, !dbg !3110
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.123, ptr noundef %0), !dbg !3111
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.5.124, i32 noundef 5) #37, !dbg !3112
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.125) #37, !dbg !3112
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.123, ptr noundef %0), !dbg !3113
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
  ], !dbg !3114

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.7.126, i32 noundef 5) #37, !dbg !3115
  %21 = load ptr, ptr %4, align 8, !dbg !3115, !tbaa !882
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #37, !dbg !3115
  br label %147, !dbg !3117

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.8.127, i32 noundef 5) #37, !dbg !3118
  %25 = load ptr, ptr %4, align 8, !dbg !3118, !tbaa !882
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3118
  %27 = load ptr, ptr %26, align 8, !dbg !3118, !tbaa !882
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #37, !dbg !3118
  br label %147, !dbg !3119

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.9.128, i32 noundef 5) #37, !dbg !3120
  %31 = load ptr, ptr %4, align 8, !dbg !3120, !tbaa !882
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3120
  %33 = load ptr, ptr %32, align 8, !dbg !3120, !tbaa !882
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3120
  %35 = load ptr, ptr %34, align 8, !dbg !3120, !tbaa !882
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #37, !dbg !3120
  br label %147, !dbg !3121

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.10.129, i32 noundef 5) #37, !dbg !3122
  %39 = load ptr, ptr %4, align 8, !dbg !3122, !tbaa !882
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3122
  %41 = load ptr, ptr %40, align 8, !dbg !3122, !tbaa !882
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3122
  %43 = load ptr, ptr %42, align 8, !dbg !3122, !tbaa !882
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3122
  %45 = load ptr, ptr %44, align 8, !dbg !3122, !tbaa !882
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #37, !dbg !3122
  br label %147, !dbg !3123

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.11.130, i32 noundef 5) #37, !dbg !3124
  %49 = load ptr, ptr %4, align 8, !dbg !3124, !tbaa !882
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3124
  %51 = load ptr, ptr %50, align 8, !dbg !3124, !tbaa !882
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3124
  %53 = load ptr, ptr %52, align 8, !dbg !3124, !tbaa !882
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3124
  %55 = load ptr, ptr %54, align 8, !dbg !3124, !tbaa !882
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3124
  %57 = load ptr, ptr %56, align 8, !dbg !3124, !tbaa !882
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #37, !dbg !3124
  br label %147, !dbg !3125

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.12.131, i32 noundef 5) #37, !dbg !3126
  %61 = load ptr, ptr %4, align 8, !dbg !3126, !tbaa !882
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3126
  %63 = load ptr, ptr %62, align 8, !dbg !3126, !tbaa !882
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3126
  %65 = load ptr, ptr %64, align 8, !dbg !3126, !tbaa !882
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3126
  %67 = load ptr, ptr %66, align 8, !dbg !3126, !tbaa !882
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3126
  %69 = load ptr, ptr %68, align 8, !dbg !3126, !tbaa !882
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3126
  %71 = load ptr, ptr %70, align 8, !dbg !3126, !tbaa !882
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #37, !dbg !3126
  br label %147, !dbg !3127

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.13.132, i32 noundef 5) #37, !dbg !3128
  %75 = load ptr, ptr %4, align 8, !dbg !3128, !tbaa !882
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3128
  %77 = load ptr, ptr %76, align 8, !dbg !3128, !tbaa !882
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3128
  %79 = load ptr, ptr %78, align 8, !dbg !3128, !tbaa !882
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3128
  %81 = load ptr, ptr %80, align 8, !dbg !3128, !tbaa !882
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3128
  %83 = load ptr, ptr %82, align 8, !dbg !3128, !tbaa !882
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3128
  %85 = load ptr, ptr %84, align 8, !dbg !3128, !tbaa !882
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3128
  %87 = load ptr, ptr %86, align 8, !dbg !3128, !tbaa !882
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #37, !dbg !3128
  br label %147, !dbg !3129

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.14.133, i32 noundef 5) #37, !dbg !3130
  %91 = load ptr, ptr %4, align 8, !dbg !3130, !tbaa !882
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3130
  %93 = load ptr, ptr %92, align 8, !dbg !3130, !tbaa !882
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3130
  %95 = load ptr, ptr %94, align 8, !dbg !3130, !tbaa !882
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3130
  %97 = load ptr, ptr %96, align 8, !dbg !3130, !tbaa !882
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3130
  %99 = load ptr, ptr %98, align 8, !dbg !3130, !tbaa !882
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3130
  %101 = load ptr, ptr %100, align 8, !dbg !3130, !tbaa !882
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3130
  %103 = load ptr, ptr %102, align 8, !dbg !3130, !tbaa !882
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3130
  %105 = load ptr, ptr %104, align 8, !dbg !3130, !tbaa !882
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #37, !dbg !3130
  br label %147, !dbg !3131

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.15.134, i32 noundef 5) #37, !dbg !3132
  %109 = load ptr, ptr %4, align 8, !dbg !3132, !tbaa !882
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3132
  %111 = load ptr, ptr %110, align 8, !dbg !3132, !tbaa !882
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3132
  %113 = load ptr, ptr %112, align 8, !dbg !3132, !tbaa !882
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3132
  %115 = load ptr, ptr %114, align 8, !dbg !3132, !tbaa !882
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3132
  %117 = load ptr, ptr %116, align 8, !dbg !3132, !tbaa !882
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3132
  %119 = load ptr, ptr %118, align 8, !dbg !3132, !tbaa !882
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3132
  %121 = load ptr, ptr %120, align 8, !dbg !3132, !tbaa !882
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3132
  %123 = load ptr, ptr %122, align 8, !dbg !3132, !tbaa !882
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3132
  %125 = load ptr, ptr %124, align 8, !dbg !3132, !tbaa !882
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #37, !dbg !3132
  br label %147, !dbg !3133

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.16.135, i32 noundef 5) #37, !dbg !3134
  %129 = load ptr, ptr %4, align 8, !dbg !3134, !tbaa !882
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3134
  %131 = load ptr, ptr %130, align 8, !dbg !3134, !tbaa !882
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3134
  %133 = load ptr, ptr %132, align 8, !dbg !3134, !tbaa !882
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3134
  %135 = load ptr, ptr %134, align 8, !dbg !3134, !tbaa !882
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3134
  %137 = load ptr, ptr %136, align 8, !dbg !3134, !tbaa !882
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3134
  %139 = load ptr, ptr %138, align 8, !dbg !3134, !tbaa !882
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3134
  %141 = load ptr, ptr %140, align 8, !dbg !3134, !tbaa !882
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3134
  %143 = load ptr, ptr %142, align 8, !dbg !3134, !tbaa !882
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3134
  %145 = load ptr, ptr %144, align 8, !dbg !3134, !tbaa !882
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #37, !dbg !3134
  br label %147, !dbg !3135

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3136
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #11 !dbg !3137 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3141, metadata !DIExpression()), !dbg !3147
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3142, metadata !DIExpression()), !dbg !3147
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3143, metadata !DIExpression()), !dbg !3147
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3144, metadata !DIExpression()), !dbg !3147
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3145, metadata !DIExpression()), !dbg !3147
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3146, metadata !DIExpression()), !dbg !3147
  br label %6, !dbg !3148

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3150
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !3146, metadata !DIExpression()), !dbg !3147
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3151
  %9 = load ptr, ptr %8, align 8, !dbg !3151, !tbaa !882
  %10 = icmp eq ptr %9, null, !dbg !3153
  %11 = add i64 %7, 1, !dbg !3154
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3146, metadata !DIExpression()), !dbg !3147
  br i1 %10, label %12, label %6, !dbg !3153, !llvm.loop !3155

12:                                               ; preds = %6
  %.lcssa = phi i64 [ %7, %6 ], !dbg !3150
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %.lcssa), !dbg !3157
  ret void, !dbg !3158
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #11 !dbg !3159 {
  %6 = alloca [10 x ptr], align 8, !DIAssignID !3181
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3179, metadata !DIExpression(), metadata !3181, metadata ptr %6, metadata !DIExpression()), !dbg !3182
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3173, metadata !DIExpression()), !dbg !3182
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3174, metadata !DIExpression()), !dbg !3182
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3175, metadata !DIExpression()), !dbg !3182
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3176, metadata !DIExpression()), !dbg !3182
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3177, metadata !DIExpression(DW_OP_deref)), !dbg !3182
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #37, !dbg !3183
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3178, metadata !DIExpression()), !dbg !3182
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3178, metadata !DIExpression()), !dbg !3182
  %10 = icmp sgt i32 %9, -1, !dbg !3184
  br i1 %10, label %18, label %11, !dbg !3184

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !3184
  store i32 %12, ptr %7, align 8, !dbg !3184
  %13 = icmp ult i32 %9, -7, !dbg !3184
  br i1 %13, label %14, label %18, !dbg !3184

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !3184
  %16 = sext i32 %9 to i64, !dbg !3184
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !3184
  br label %22, !dbg !3184

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !3184
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !3184
  store ptr %21, ptr %4, align 8, !dbg !3184
  br label %22, !dbg !3184

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !3184
  %25 = load ptr, ptr %24, align 8, !dbg !3184
  store ptr %25, ptr %6, align 8, !dbg !3187, !tbaa !882
  %26 = icmp eq ptr %25, null, !dbg !3188
  br i1 %26, label %197, label %27, !dbg !3189

27:                                               ; preds = %22
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3178, metadata !DIExpression()), !dbg !3182
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3178, metadata !DIExpression()), !dbg !3182
  %28 = icmp sgt i32 %23, -1, !dbg !3184
  br i1 %28, label %36, label %29, !dbg !3184

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !3184
  store i32 %30, ptr %7, align 8, !dbg !3184
  %31 = icmp ult i32 %23, -7, !dbg !3184
  br i1 %31, label %32, label %36, !dbg !3184

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !3184
  %34 = sext i32 %23 to i64, !dbg !3184
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !3184
  br label %40, !dbg !3184

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !3184
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !3184
  store ptr %39, ptr %4, align 8, !dbg !3184
  br label %40, !dbg !3184

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !3184
  %43 = load ptr, ptr %42, align 8, !dbg !3184
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3190
  store ptr %43, ptr %44, align 8, !dbg !3187, !tbaa !882
  %45 = icmp eq ptr %43, null, !dbg !3188
  br i1 %45, label %197, label %46, !dbg !3189

46:                                               ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3178, metadata !DIExpression()), !dbg !3182
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3178, metadata !DIExpression()), !dbg !3182
  %47 = icmp sgt i32 %41, -1, !dbg !3184
  br i1 %47, label %55, label %48, !dbg !3184

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !3184
  store i32 %49, ptr %7, align 8, !dbg !3184
  %50 = icmp ult i32 %41, -7, !dbg !3184
  br i1 %50, label %51, label %55, !dbg !3184

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !3184
  %53 = sext i32 %41 to i64, !dbg !3184
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !3184
  br label %59, !dbg !3184

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !3184
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !3184
  store ptr %58, ptr %4, align 8, !dbg !3184
  br label %59, !dbg !3184

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !3184
  %62 = load ptr, ptr %61, align 8, !dbg !3184
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3190
  store ptr %62, ptr %63, align 8, !dbg !3187, !tbaa !882
  %64 = icmp eq ptr %62, null, !dbg !3188
  br i1 %64, label %197, label %65, !dbg !3189

65:                                               ; preds = %59
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3178, metadata !DIExpression()), !dbg !3182
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3178, metadata !DIExpression()), !dbg !3182
  %66 = icmp sgt i32 %60, -1, !dbg !3184
  br i1 %66, label %74, label %67, !dbg !3184

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !3184
  store i32 %68, ptr %7, align 8, !dbg !3184
  %69 = icmp ult i32 %60, -7, !dbg !3184
  br i1 %69, label %70, label %74, !dbg !3184

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !3184
  %72 = sext i32 %60 to i64, !dbg !3184
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !3184
  br label %78, !dbg !3184

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !3184
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !3184
  store ptr %77, ptr %4, align 8, !dbg !3184
  br label %78, !dbg !3184

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !3184
  %81 = load ptr, ptr %80, align 8, !dbg !3184
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3190
  store ptr %81, ptr %82, align 8, !dbg !3187, !tbaa !882
  %83 = icmp eq ptr %81, null, !dbg !3188
  br i1 %83, label %197, label %84, !dbg !3189

84:                                               ; preds = %78
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3178, metadata !DIExpression()), !dbg !3182
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3178, metadata !DIExpression()), !dbg !3182
  %85 = icmp sgt i32 %79, -1, !dbg !3184
  br i1 %85, label %93, label %86, !dbg !3184

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !3184
  store i32 %87, ptr %7, align 8, !dbg !3184
  %88 = icmp ult i32 %79, -7, !dbg !3184
  br i1 %88, label %89, label %93, !dbg !3184

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !3184
  %91 = sext i32 %79 to i64, !dbg !3184
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !3184
  br label %97, !dbg !3184

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !3184
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !3184
  store ptr %96, ptr %4, align 8, !dbg !3184
  br label %97, !dbg !3184

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !3184
  %100 = load ptr, ptr %99, align 8, !dbg !3184
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3190
  store ptr %100, ptr %101, align 8, !dbg !3187, !tbaa !882
  %102 = icmp eq ptr %100, null, !dbg !3188
  br i1 %102, label %197, label %103, !dbg !3189

103:                                              ; preds = %97
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3178, metadata !DIExpression()), !dbg !3182
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3178, metadata !DIExpression()), !dbg !3182
  %104 = icmp sgt i32 %98, -1, !dbg !3184
  br i1 %104, label %112, label %105, !dbg !3184

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !3184
  store i32 %106, ptr %7, align 8, !dbg !3184
  %107 = icmp ult i32 %98, -7, !dbg !3184
  br i1 %107, label %108, label %112, !dbg !3184

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !3184
  %110 = sext i32 %98 to i64, !dbg !3184
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !3184
  br label %116, !dbg !3184

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !3184
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !3184
  store ptr %115, ptr %4, align 8, !dbg !3184
  br label %116, !dbg !3184

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !3184
  %119 = load ptr, ptr %118, align 8, !dbg !3184
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3190
  store ptr %119, ptr %120, align 8, !dbg !3187, !tbaa !882
  %121 = icmp eq ptr %119, null, !dbg !3188
  br i1 %121, label %197, label %122, !dbg !3189

122:                                              ; preds = %116
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3178, metadata !DIExpression()), !dbg !3182
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3178, metadata !DIExpression()), !dbg !3182
  %123 = icmp sgt i32 %117, -1, !dbg !3184
  br i1 %123, label %131, label %124, !dbg !3184

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !3184
  store i32 %125, ptr %7, align 8, !dbg !3184
  %126 = icmp ult i32 %117, -7, !dbg !3184
  br i1 %126, label %127, label %131, !dbg !3184

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !3184
  %129 = sext i32 %117 to i64, !dbg !3184
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !3184
  br label %135, !dbg !3184

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !3184
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !3184
  store ptr %134, ptr %4, align 8, !dbg !3184
  br label %135, !dbg !3184

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !3184
  %138 = load ptr, ptr %137, align 8, !dbg !3184
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3190
  store ptr %138, ptr %139, align 8, !dbg !3187, !tbaa !882
  %140 = icmp eq ptr %138, null, !dbg !3188
  br i1 %140, label %197, label %141, !dbg !3189

141:                                              ; preds = %135
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3178, metadata !DIExpression()), !dbg !3182
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3178, metadata !DIExpression()), !dbg !3182
  %142 = icmp sgt i32 %136, -1, !dbg !3184
  br i1 %142, label %150, label %143, !dbg !3184

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !3184
  store i32 %144, ptr %7, align 8, !dbg !3184
  %145 = icmp ult i32 %136, -7, !dbg !3184
  br i1 %145, label %146, label %150, !dbg !3184

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !3184
  %148 = sext i32 %136 to i64, !dbg !3184
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !3184
  br label %154, !dbg !3184

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !3184
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !3184
  store ptr %153, ptr %4, align 8, !dbg !3184
  br label %154, !dbg !3184

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !3184
  %157 = load ptr, ptr %156, align 8, !dbg !3184
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3190
  store ptr %157, ptr %158, align 8, !dbg !3187, !tbaa !882
  %159 = icmp eq ptr %157, null, !dbg !3188
  br i1 %159, label %197, label %160, !dbg !3189

160:                                              ; preds = %154
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3178, metadata !DIExpression()), !dbg !3182
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3178, metadata !DIExpression()), !dbg !3182
  %161 = icmp sgt i32 %155, -1, !dbg !3184
  br i1 %161, label %169, label %162, !dbg !3184

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !3184
  store i32 %163, ptr %7, align 8, !dbg !3184
  %164 = icmp ult i32 %155, -7, !dbg !3184
  br i1 %164, label %165, label %169, !dbg !3184

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !3184
  %167 = sext i32 %155 to i64, !dbg !3184
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !3184
  br label %173, !dbg !3184

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !3184
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !3184
  store ptr %172, ptr %4, align 8, !dbg !3184
  br label %173, !dbg !3184

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !3184
  %176 = load ptr, ptr %175, align 8, !dbg !3184
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3190
  store ptr %176, ptr %177, align 8, !dbg !3187, !tbaa !882
  %178 = icmp eq ptr %176, null, !dbg !3188
  br i1 %178, label %197, label %179, !dbg !3189

179:                                              ; preds = %173
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3178, metadata !DIExpression()), !dbg !3182
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3178, metadata !DIExpression()), !dbg !3182
  %180 = icmp sgt i32 %174, -1, !dbg !3184
  br i1 %180, label %188, label %181, !dbg !3184

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !3184
  store i32 %182, ptr %7, align 8, !dbg !3184
  %183 = icmp ult i32 %174, -7, !dbg !3184
  br i1 %183, label %184, label %188, !dbg !3184

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !3184
  %186 = sext i32 %174 to i64, !dbg !3184
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !3184
  br label %191, !dbg !3184

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !3184
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !3184
  store ptr %190, ptr %4, align 8, !dbg !3184
  br label %191, !dbg !3184

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !3184
  %193 = load ptr, ptr %192, align 8, !dbg !3184
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3190
  store ptr %193, ptr %194, align 8, !dbg !3187, !tbaa !882
  %195 = icmp eq ptr %193, null, !dbg !3188
  %196 = select i1 %195, i64 9, i64 10, !dbg !3189
  br label %197, !dbg !3189

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !3191
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !3192
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #37, !dbg !3193
  ret void, !dbg !3193
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #11 !dbg !3194 {
  %5 = alloca %struct.__va_list, align 8, !DIAssignID !3203
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3202, metadata !DIExpression(), metadata !3203, metadata ptr %5, metadata !DIExpression()), !dbg !3204
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3198, metadata !DIExpression()), !dbg !3204
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3199, metadata !DIExpression()), !dbg !3204
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3200, metadata !DIExpression()), !dbg !3204
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3201, metadata !DIExpression()), !dbg !3204
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #37, !dbg !3205
  call void @llvm.va_start(ptr nonnull %5), !dbg !3206
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #37, !dbg !3207
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !3207, !tbaa.struct !1457
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !3207
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #37, !dbg !3207
  call void @llvm.va_end(ptr nonnull %5), !dbg !3208
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #37, !dbg !3209
  ret void, !dbg !3209
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #11 !dbg !3210 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3211, !tbaa !882
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.123, ptr noundef %1), !dbg !3211
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.17.140, i32 noundef 5) #37, !dbg !3212
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.141) #37, !dbg !3212
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.19.142, i32 noundef 5) #37, !dbg !3213
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.143, ptr noundef nonnull @.str.21.144) #37, !dbg !3213
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.22, i32 noundef 5) #37, !dbg !3214
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23) #37, !dbg !3214
  ret void, !dbg !3215
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !3216 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3221, metadata !DIExpression()), !dbg !3224
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3222, metadata !DIExpression()), !dbg !3224
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3223, metadata !DIExpression()), !dbg !3224
  call void @llvm.dbg.value(metadata ptr %0, metadata !3225, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %1, metadata !3228, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %2, metadata !3229, metadata !DIExpression()), !dbg !3230
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3232
  call void @llvm.dbg.value(metadata ptr %4, metadata !3233, metadata !DIExpression()), !dbg !3238
  %5 = icmp eq ptr %4, null, !dbg !3240
  br i1 %5, label %6, label %7, !dbg !3242

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3243
  unreachable, !dbg !3243

7:                                                ; preds = %3
  ret ptr %4, !dbg !3244
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3226 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3225, metadata !DIExpression()), !dbg !3245
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3228, metadata !DIExpression()), !dbg !3245
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3229, metadata !DIExpression()), !dbg !3245
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3246
  call void @llvm.dbg.value(metadata ptr %4, metadata !3233, metadata !DIExpression()), !dbg !3247
  %5 = icmp eq ptr %4, null, !dbg !3249
  br i1 %5, label %6, label %7, !dbg !3250

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3251
  unreachable, !dbg !3251

7:                                                ; preds = %3
  ret ptr %4, !dbg !3252
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3253 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3257, metadata !DIExpression()), !dbg !3258
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3259
  call void @llvm.dbg.value(metadata ptr %2, metadata !3233, metadata !DIExpression()), !dbg !3260
  %3 = icmp eq ptr %2, null, !dbg !3262
  br i1 %3, label %4, label %5, !dbg !3263

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3264
  unreachable, !dbg !3264

5:                                                ; preds = %1
  ret ptr %2, !dbg !3265
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3266 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3267 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3271, metadata !DIExpression()), !dbg !3272
  call void @llvm.dbg.value(metadata i64 %0, metadata !3273, metadata !DIExpression()), !dbg !3277
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3279
  call void @llvm.dbg.value(metadata ptr %2, metadata !3233, metadata !DIExpression()), !dbg !3280
  %3 = icmp eq ptr %2, null, !dbg !3282
  br i1 %3, label %4, label %5, !dbg !3283

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3284
  unreachable, !dbg !3284

5:                                                ; preds = %1
  ret ptr %2, !dbg !3285
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3286 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3290, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i64 %0, metadata !3257, metadata !DIExpression()), !dbg !3292
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3294
  call void @llvm.dbg.value(metadata ptr %2, metadata !3233, metadata !DIExpression()), !dbg !3295
  %3 = icmp eq ptr %2, null, !dbg !3297
  br i1 %3, label %4, label %5, !dbg !3298

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3299
  unreachable, !dbg !3299

5:                                                ; preds = %1
  ret ptr %2, !dbg !3300
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3301 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3305, metadata !DIExpression()), !dbg !3307
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3306, metadata !DIExpression()), !dbg !3307
  call void @llvm.dbg.value(metadata ptr %0, metadata !3308, metadata !DIExpression()), !dbg !3313
  call void @llvm.dbg.value(metadata i64 %1, metadata !3312, metadata !DIExpression()), !dbg !3313
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3315
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #43, !dbg !3316
  call void @llvm.dbg.value(metadata ptr %4, metadata !3233, metadata !DIExpression()), !dbg !3317
  %5 = icmp eq ptr %4, null, !dbg !3319
  br i1 %5, label %6, label %7, !dbg !3320

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3321
  unreachable, !dbg !3321

7:                                                ; preds = %2
  ret ptr %4, !dbg !3322
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3323 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3324 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3328, metadata !DIExpression()), !dbg !3330
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3329, metadata !DIExpression()), !dbg !3330
  call void @llvm.dbg.value(metadata ptr %0, metadata !3331, metadata !DIExpression()), !dbg !3335
  call void @llvm.dbg.value(metadata i64 %1, metadata !3334, metadata !DIExpression()), !dbg !3335
  call void @llvm.dbg.value(metadata ptr %0, metadata !3308, metadata !DIExpression()), !dbg !3337
  call void @llvm.dbg.value(metadata i64 %1, metadata !3312, metadata !DIExpression()), !dbg !3337
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3339
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #43, !dbg !3340
  call void @llvm.dbg.value(metadata ptr %4, metadata !3233, metadata !DIExpression()), !dbg !3341
  %5 = icmp eq ptr %4, null, !dbg !3343
  br i1 %5, label %6, label %7, !dbg !3344

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3345
  unreachable, !dbg !3345

7:                                                ; preds = %2
  ret ptr %4, !dbg !3346
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3347 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3351, metadata !DIExpression()), !dbg !3354
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3352, metadata !DIExpression()), !dbg !3354
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3353, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata ptr %0, metadata !3355, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i64 %1, metadata !3358, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i64 %2, metadata !3359, metadata !DIExpression()), !dbg !3360
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3362
  call void @llvm.dbg.value(metadata ptr %4, metadata !3233, metadata !DIExpression()), !dbg !3363
  %5 = icmp eq ptr %4, null, !dbg !3365
  br i1 %5, label %6, label %7, !dbg !3366

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3367
  unreachable, !dbg !3367

7:                                                ; preds = %3
  ret ptr %4, !dbg !3368
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3369 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3373, metadata !DIExpression()), !dbg !3375
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3374, metadata !DIExpression()), !dbg !3375
  call void @llvm.dbg.value(metadata ptr null, metadata !3225, metadata !DIExpression()), !dbg !3376
  call void @llvm.dbg.value(metadata i64 %0, metadata !3228, metadata !DIExpression()), !dbg !3376
  call void @llvm.dbg.value(metadata i64 %1, metadata !3229, metadata !DIExpression()), !dbg !3376
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3378
  call void @llvm.dbg.value(metadata ptr %3, metadata !3233, metadata !DIExpression()), !dbg !3379
  %4 = icmp eq ptr %3, null, !dbg !3381
  br i1 %4, label %5, label %6, !dbg !3382

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3383
  unreachable, !dbg !3383

6:                                                ; preds = %2
  ret ptr %3, !dbg !3384
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3385 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3389, metadata !DIExpression()), !dbg !3391
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3390, metadata !DIExpression()), !dbg !3391
  call void @llvm.dbg.value(metadata ptr null, metadata !3351, metadata !DIExpression()), !dbg !3392
  call void @llvm.dbg.value(metadata i64 %0, metadata !3352, metadata !DIExpression()), !dbg !3392
  call void @llvm.dbg.value(metadata i64 %1, metadata !3353, metadata !DIExpression()), !dbg !3392
  call void @llvm.dbg.value(metadata ptr null, metadata !3355, metadata !DIExpression()), !dbg !3394
  call void @llvm.dbg.value(metadata i64 %0, metadata !3358, metadata !DIExpression()), !dbg !3394
  call void @llvm.dbg.value(metadata i64 %1, metadata !3359, metadata !DIExpression()), !dbg !3394
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3396
  call void @llvm.dbg.value(metadata ptr %3, metadata !3233, metadata !DIExpression()), !dbg !3397
  %4 = icmp eq ptr %3, null, !dbg !3399
  br i1 %4, label %5, label %6, !dbg !3400

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3401
  unreachable, !dbg !3401

6:                                                ; preds = %2
  ret ptr %3, !dbg !3402
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #11 !dbg !3403 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3407, metadata !DIExpression()), !dbg !3409
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3408, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata ptr %0, metadata !818, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata ptr %1, metadata !819, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata i64 1, metadata !820, metadata !DIExpression()), !dbg !3410
  %3 = load i64, ptr %1, align 8, !dbg !3412, !tbaa !2477
  call void @llvm.dbg.value(metadata i64 %3, metadata !821, metadata !DIExpression()), !dbg !3410
  %4 = icmp eq ptr %0, null, !dbg !3413
  br i1 %4, label %5, label %8, !dbg !3415

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3416
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3419
  br label %15, !dbg !3419

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3420
  %10 = add nuw i64 %9, 1, !dbg !3420
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3420
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3420
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3420
  call void @llvm.dbg.value(metadata i64 %13, metadata !821, metadata !DIExpression()), !dbg !3410
  br i1 %12, label %14, label %15, !dbg !3423

14:                                               ; preds = %8
  tail call void @xalloc_die() #39, !dbg !3424
  unreachable, !dbg !3424

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3410
  call void @llvm.dbg.value(metadata i64 %16, metadata !821, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata ptr %0, metadata !3225, metadata !DIExpression()), !dbg !3425
  call void @llvm.dbg.value(metadata i64 %16, metadata !3228, metadata !DIExpression()), !dbg !3425
  call void @llvm.dbg.value(metadata i64 1, metadata !3229, metadata !DIExpression()), !dbg !3425
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #37, !dbg !3427
  call void @llvm.dbg.value(metadata ptr %17, metadata !3233, metadata !DIExpression()), !dbg !3428
  %18 = icmp eq ptr %17, null, !dbg !3430
  br i1 %18, label %19, label %20, !dbg !3431

19:                                               ; preds = %15
  tail call void @xalloc_die() #39, !dbg !3432
  unreachable, !dbg !3432

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !818, metadata !DIExpression()), !dbg !3410
  store i64 %16, ptr %1, align 8, !dbg !3433, !tbaa !2477
  ret ptr %17, !dbg !3434
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #11 !dbg !813 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !818, metadata !DIExpression()), !dbg !3435
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !819, metadata !DIExpression()), !dbg !3435
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !820, metadata !DIExpression()), !dbg !3435
  %4 = load i64, ptr %1, align 8, !dbg !3436, !tbaa !2477
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !821, metadata !DIExpression()), !dbg !3435
  %5 = icmp eq ptr %0, null, !dbg !3437
  br i1 %5, label %6, label %13, !dbg !3438

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3439
  br i1 %7, label %8, label %20, !dbg !3440

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3441
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !821, metadata !DIExpression()), !dbg !3435
  %10 = icmp ugt i64 %2, 128, !dbg !3443
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3444
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !821, metadata !DIExpression()), !dbg !3435
  br label %20, !dbg !3445

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3446
  %15 = add nuw i64 %14, 1, !dbg !3446
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3446
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3446
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3446
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !821, metadata !DIExpression()), !dbg !3435
  br i1 %17, label %19, label %20, !dbg !3447

19:                                               ; preds = %13
  tail call void @xalloc_die() #39, !dbg !3448
  unreachable, !dbg !3448

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3435
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !821, metadata !DIExpression()), !dbg !3435
  call void @llvm.dbg.value(metadata ptr %0, metadata !3225, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata i64 %21, metadata !3228, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata i64 %2, metadata !3229, metadata !DIExpression()), !dbg !3449
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #37, !dbg !3451
  call void @llvm.dbg.value(metadata ptr %22, metadata !3233, metadata !DIExpression()), !dbg !3452
  %23 = icmp eq ptr %22, null, !dbg !3454
  br i1 %23, label %24, label %25, !dbg !3455

24:                                               ; preds = %20
  tail call void @xalloc_die() #39, !dbg !3456
  unreachable, !dbg !3456

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !818, metadata !DIExpression()), !dbg !3435
  store i64 %21, ptr %1, align 8, !dbg !3457, !tbaa !2477
  ret ptr %22, !dbg !3458
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #11 !dbg !825 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !834, metadata !DIExpression()), !dbg !3459
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !835, metadata !DIExpression()), !dbg !3459
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !836, metadata !DIExpression()), !dbg !3459
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !837, metadata !DIExpression()), !dbg !3459
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !838, metadata !DIExpression()), !dbg !3459
  %6 = load i64, ptr %1, align 8, !dbg !3460, !tbaa !2477
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !839, metadata !DIExpression()), !dbg !3459
  %7 = ashr i64 %6, 1, !dbg !3461
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3461
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3461
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3461
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !840, metadata !DIExpression()), !dbg !3459
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3463
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !840, metadata !DIExpression()), !dbg !3459
  %12 = icmp sgt i64 %3, -1, !dbg !3464
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !3466
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !3466
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !840, metadata !DIExpression()), !dbg !3459
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !3467
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !3467
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !3467
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !841, metadata !DIExpression()), !dbg !3459
  %18 = icmp slt i64 %17, 128, !dbg !3467
  %19 = select i1 %18, i64 128, i64 0, !dbg !3467
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !3467
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !842, metadata !DIExpression()), !dbg !3459
  %21 = icmp eq i64 %20, 0, !dbg !3468
  br i1 %21, label %28, label %22, !dbg !3470

22:                                               ; preds = %5
  %23 = freeze i64 %20
  %24 = sdiv i64 %23, %4, !dbg !3471
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !840, metadata !DIExpression()), !dbg !3459
  %25 = mul i64 %24, %4
  %26 = sub i64 %23, %25
  %27 = sub nsw i64 %20, %26, !dbg !3473
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !841, metadata !DIExpression()), !dbg !3459
  br label %28, !dbg !3474

28:                                               ; preds = %22, %5
  %29 = phi i64 [ %24, %22 ], [ %14, %5 ], !dbg !3459
  %30 = phi i64 [ %27, %22 ], [ %17, %5 ], !dbg !3459
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !841, metadata !DIExpression()), !dbg !3459
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !840, metadata !DIExpression()), !dbg !3459
  %31 = icmp eq ptr %0, null, !dbg !3475
  br i1 %31, label %32, label %33, !dbg !3477

32:                                               ; preds = %28
  store i64 0, ptr %1, align 8, !dbg !3478, !tbaa !2477
  br label %33, !dbg !3479

33:                                               ; preds = %32, %28
  %34 = sub nsw i64 %29, %6, !dbg !3480
  %35 = icmp slt i64 %34, %2, !dbg !3482
  br i1 %35, label %36, label %48, !dbg !3483

36:                                               ; preds = %33
  %37 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3484
  %38 = extractvalue { i64, i1 } %37, 1, !dbg !3484
  %39 = extractvalue { i64, i1 } %37, 0, !dbg !3484
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !840, metadata !DIExpression()), !dbg !3459
  %40 = icmp sgt i64 %39, %3
  %41 = select i1 %12, i1 %40, i1 false
  %42 = or i1 %38, %41, !dbg !3485
  br i1 %42, label %47, label %43, !dbg !3485

43:                                               ; preds = %36
  %44 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %39, i64 %4), !dbg !3486
  %45 = extractvalue { i64, i1 } %44, 1, !dbg !3486
  %46 = extractvalue { i64, i1 } %44, 0, !dbg !3486
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !841, metadata !DIExpression()), !dbg !3459
  br i1 %45, label %47, label %48, !dbg !3487

47:                                               ; preds = %43, %36
  tail call void @xalloc_die() #39, !dbg !3488
  unreachable, !dbg !3488

48:                                               ; preds = %43, %33
  %49 = phi i64 [ %39, %43 ], [ %29, %33 ], !dbg !3459
  %50 = phi i64 [ %46, %43 ], [ %30, %33 ], !dbg !3459
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !841, metadata !DIExpression()), !dbg !3459
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !840, metadata !DIExpression()), !dbg !3459
  call void @llvm.dbg.value(metadata ptr %0, metadata !3305, metadata !DIExpression()), !dbg !3489
  call void @llvm.dbg.value(metadata i64 %50, metadata !3306, metadata !DIExpression()), !dbg !3489
  call void @llvm.dbg.value(metadata ptr %0, metadata !3308, metadata !DIExpression()), !dbg !3491
  call void @llvm.dbg.value(metadata i64 %50, metadata !3312, metadata !DIExpression()), !dbg !3491
  %51 = tail call i64 @llvm.umax.i64(i64 %50, i64 1), !dbg !3493
  %52 = tail call ptr @realloc(ptr noundef %0, i64 noundef %51) #43, !dbg !3494
  call void @llvm.dbg.value(metadata ptr %52, metadata !3233, metadata !DIExpression()), !dbg !3495
  %53 = icmp eq ptr %52, null, !dbg !3497
  br i1 %53, label %54, label %55, !dbg !3498

54:                                               ; preds = %48
  tail call void @xalloc_die() #39, !dbg !3499
  unreachable, !dbg !3499

55:                                               ; preds = %48
  tail call void @llvm.dbg.value(metadata ptr %52, metadata !834, metadata !DIExpression()), !dbg !3459
  store i64 %49, ptr %1, align 8, !dbg !3500, !tbaa !2477
  ret ptr %52, !dbg !3501
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3502 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3504, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata i64 %0, metadata !3506, metadata !DIExpression()), !dbg !3510
  call void @llvm.dbg.value(metadata i64 1, metadata !3509, metadata !DIExpression()), !dbg !3510
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !3512
  call void @llvm.dbg.value(metadata ptr %2, metadata !3233, metadata !DIExpression()), !dbg !3513
  %3 = icmp eq ptr %2, null, !dbg !3515
  br i1 %3, label %4, label %5, !dbg !3516

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3517
  unreachable, !dbg !3517

5:                                                ; preds = %1
  ret ptr %2, !dbg !3518
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3519 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3507 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3506, metadata !DIExpression()), !dbg !3520
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3509, metadata !DIExpression()), !dbg !3520
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !3521
  call void @llvm.dbg.value(metadata ptr %3, metadata !3233, metadata !DIExpression()), !dbg !3522
  %4 = icmp eq ptr %3, null, !dbg !3524
  br i1 %4, label %5, label %6, !dbg !3525

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3526
  unreachable, !dbg !3526

6:                                                ; preds = %2
  ret ptr %3, !dbg !3527
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3528 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3530, metadata !DIExpression()), !dbg !3531
  call void @llvm.dbg.value(metadata i64 %0, metadata !3532, metadata !DIExpression()), !dbg !3536
  call void @llvm.dbg.value(metadata i64 1, metadata !3535, metadata !DIExpression()), !dbg !3536
  call void @llvm.dbg.value(metadata i64 %0, metadata !3538, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.value(metadata i64 1, metadata !3541, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.value(metadata i64 %0, metadata !3538, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.value(metadata i64 1, metadata !3541, metadata !DIExpression()), !dbg !3542
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !3544
  call void @llvm.dbg.value(metadata ptr %2, metadata !3233, metadata !DIExpression()), !dbg !3545
  %3 = icmp eq ptr %2, null, !dbg !3547
  br i1 %3, label %4, label %5, !dbg !3548

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3549
  unreachable, !dbg !3549

5:                                                ; preds = %1
  ret ptr %2, !dbg !3550
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3533 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3532, metadata !DIExpression()), !dbg !3551
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3535, metadata !DIExpression()), !dbg !3551
  call void @llvm.dbg.value(metadata i64 %0, metadata !3538, metadata !DIExpression()), !dbg !3552
  call void @llvm.dbg.value(metadata i64 %1, metadata !3541, metadata !DIExpression()), !dbg !3552
  call void @llvm.dbg.value(metadata i64 %0, metadata !3538, metadata !DIExpression()), !dbg !3552
  call void @llvm.dbg.value(metadata i64 %1, metadata !3541, metadata !DIExpression()), !dbg !3552
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !3554
  call void @llvm.dbg.value(metadata ptr %3, metadata !3233, metadata !DIExpression()), !dbg !3555
  %4 = icmp eq ptr %3, null, !dbg !3557
  br i1 %4, label %5, label %6, !dbg !3558

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3559
  unreachable, !dbg !3559

6:                                                ; preds = %2
  ret ptr %3, !dbg !3560
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3561 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3565, metadata !DIExpression()), !dbg !3567
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3566, metadata !DIExpression()), !dbg !3567
  call void @llvm.dbg.value(metadata i64 %1, metadata !3257, metadata !DIExpression()), !dbg !3568
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3570
  call void @llvm.dbg.value(metadata ptr %3, metadata !3233, metadata !DIExpression()), !dbg !3571
  %4 = icmp eq ptr %3, null, !dbg !3573
  br i1 %4, label %5, label %6, !dbg !3574

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3575
  unreachable, !dbg !3575

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3576, metadata !DIExpression()), !dbg !3584
  call void @llvm.dbg.value(metadata ptr %0, metadata !3582, metadata !DIExpression()), !dbg !3584
  call void @llvm.dbg.value(metadata i64 %1, metadata !3583, metadata !DIExpression()), !dbg !3584
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3586
  ret ptr %3, !dbg !3587
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3588 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3592, metadata !DIExpression()), !dbg !3594
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3593, metadata !DIExpression()), !dbg !3594
  call void @llvm.dbg.value(metadata i64 %1, metadata !3271, metadata !DIExpression()), !dbg !3595
  call void @llvm.dbg.value(metadata i64 %1, metadata !3273, metadata !DIExpression()), !dbg !3597
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3599
  call void @llvm.dbg.value(metadata ptr %3, metadata !3233, metadata !DIExpression()), !dbg !3600
  %4 = icmp eq ptr %3, null, !dbg !3602
  br i1 %4, label %5, label %6, !dbg !3603

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3604
  unreachable, !dbg !3604

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3576, metadata !DIExpression()), !dbg !3605
  call void @llvm.dbg.value(metadata ptr %0, metadata !3582, metadata !DIExpression()), !dbg !3605
  call void @llvm.dbg.value(metadata i64 %1, metadata !3583, metadata !DIExpression()), !dbg !3605
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3607
  ret ptr %3, !dbg !3608
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #11 !dbg !3609 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3613, metadata !DIExpression()), !dbg !3616
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3614, metadata !DIExpression()), !dbg !3616
  %3 = add nsw i64 %1, 1, !dbg !3617
  call void @llvm.dbg.value(metadata i64 %3, metadata !3271, metadata !DIExpression()), !dbg !3618
  call void @llvm.dbg.value(metadata i64 %3, metadata !3273, metadata !DIExpression()), !dbg !3620
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3622
  call void @llvm.dbg.value(metadata ptr %4, metadata !3233, metadata !DIExpression()), !dbg !3623
  %5 = icmp eq ptr %4, null, !dbg !3625
  br i1 %5, label %6, label %7, !dbg !3626

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3627
  unreachable, !dbg !3627

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3615, metadata !DIExpression()), !dbg !3616
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3628
  store i8 0, ptr %8, align 1, !dbg !3629, !tbaa !989
  call void @llvm.dbg.value(metadata ptr %4, metadata !3576, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata ptr %0, metadata !3582, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata i64 %1, metadata !3583, metadata !DIExpression()), !dbg !3630
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3632
  ret ptr %4, !dbg !3633
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #11 !dbg !3634 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3636, metadata !DIExpression()), !dbg !3637
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #38, !dbg !3638
  %3 = add i64 %2, 1, !dbg !3639
  call void @llvm.dbg.value(metadata ptr %0, metadata !3565, metadata !DIExpression()), !dbg !3640
  call void @llvm.dbg.value(metadata i64 %3, metadata !3566, metadata !DIExpression()), !dbg !3640
  call void @llvm.dbg.value(metadata i64 %3, metadata !3257, metadata !DIExpression()), !dbg !3642
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3644
  call void @llvm.dbg.value(metadata ptr %4, metadata !3233, metadata !DIExpression()), !dbg !3645
  %5 = icmp eq ptr %4, null, !dbg !3647
  br i1 %5, label %6, label %7, !dbg !3648

6:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3649
  unreachable, !dbg !3649

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3576, metadata !DIExpression()), !dbg !3650
  call void @llvm.dbg.value(metadata ptr %0, metadata !3582, metadata !DIExpression()), !dbg !3650
  call void @llvm.dbg.value(metadata i64 %3, metadata !3583, metadata !DIExpression()), !dbg !3650
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #37, !dbg !3652
  ret ptr %4, !dbg !3653
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3654 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3659, !tbaa !890
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3656, metadata !DIExpression()), !dbg !3660
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.155, ptr noundef nonnull @.str.2.156, i32 noundef 5) #37, !dbg !3659
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.157, ptr noundef %2) #37, !dbg !3659
  %3 = icmp eq i32 %1, 0, !dbg !3659
  tail call void @llvm.assume(i1 %3), !dbg !3659
  tail call void @abort() #39, !dbg !3661
  unreachable, !dbg !3661
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #34

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #11 !dbg !3662 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3700, metadata !DIExpression()), !dbg !3705
  %2 = tail call i64 @__fpending(ptr noundef %0) #37, !dbg !3706
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3701, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3705
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3707, metadata !DIExpression()), !dbg !3710
  %3 = load i32, ptr %0, align 8, !dbg !3712, !tbaa !3713
  %4 = and i32 %3, 32, !dbg !3714
  %5 = icmp eq i32 %4, 0, !dbg !3714
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !3703, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3705
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #37, !dbg !3715
  %7 = icmp eq i32 %6, 0, !dbg !3716
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !3704, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3705
  br i1 %5, label %8, label %18, !dbg !3717

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3719
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !3701, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3705
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3720
  %11 = xor i1 %7, true, !dbg !3720
  %12 = sext i1 %11 to i32, !dbg !3720
  br i1 %10, label %21, label %13, !dbg !3720

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #40, !dbg !3721
  %15 = load i32, ptr %14, align 4, !dbg !3721, !tbaa !890
  %16 = icmp ne i32 %15, 9, !dbg !3722
  %17 = sext i1 %16 to i32, !dbg !3723
  br label %21, !dbg !3723

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3724

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #40, !dbg !3726
  store i32 0, ptr %20, align 4, !dbg !3728, !tbaa !890
  br label %21, !dbg !3726

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3705
  ret i32 %22, !dbg !3729
}

; Function Attrs: nounwind
declare !dbg !3730 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #11 !dbg !3734 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3772, metadata !DIExpression()), !dbg !3776
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3773, metadata !DIExpression()), !dbg !3776
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3777
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3774, metadata !DIExpression()), !dbg !3776
  %3 = icmp slt i32 %2, 0, !dbg !3778
  br i1 %3, label %4, label %6, !dbg !3780

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3781
  br label %24, !dbg !3782

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !3783
  %8 = icmp eq i32 %7, 0, !dbg !3783
  br i1 %8, label %13, label %9, !dbg !3785

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3786
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #37, !dbg !3787
  %12 = icmp eq i64 %11, -1, !dbg !3788
  br i1 %12, label %16, label %13, !dbg !3789

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #37, !dbg !3790
  %15 = icmp eq i32 %14, 0, !dbg !3790
  br i1 %15, label %16, label %18, !dbg !3791

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3773, metadata !DIExpression()), !dbg !3776
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3775, metadata !DIExpression()), !dbg !3776
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3792
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !3775, metadata !DIExpression()), !dbg !3776
  br label %24, !dbg !3793

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #40, !dbg !3794
  %20 = load i32, ptr %19, align 4, !dbg !3794, !tbaa !890
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !3773, metadata !DIExpression()), !dbg !3776
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3775, metadata !DIExpression()), !dbg !3776
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3792
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !3775, metadata !DIExpression()), !dbg !3776
  %22 = icmp eq i32 %20, 0, !dbg !3795
  br i1 %22, label %24, label %23, !dbg !3793

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3797, !tbaa !890
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !3775, metadata !DIExpression()), !dbg !3776
  br label %24, !dbg !3799

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3776
  ret i32 %25, !dbg !3800
}

; Function Attrs: nofree nounwind
declare !dbg !3801 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3802 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !3803 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3804 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #11 !dbg !3807 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3845, metadata !DIExpression()), !dbg !3846
  %2 = icmp eq ptr %0, null, !dbg !3847
  br i1 %2, label %6, label %3, !dbg !3849

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !3850
  %5 = icmp eq i32 %4, 0, !dbg !3850
  br i1 %5, label %6, label %8, !dbg !3851

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3852
  br label %16, !dbg !3853

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3854, metadata !DIExpression()), !dbg !3859
  %9 = load i32, ptr %0, align 8, !dbg !3861, !tbaa !3713
  %10 = and i32 %9, 256, !dbg !3863
  %11 = icmp eq i32 %10, 0, !dbg !3863
  br i1 %11, label %14, label %12, !dbg !3864

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #37, !dbg !3865
  br label %14, !dbg !3865

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3866
  br label %16, !dbg !3867

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3846
  ret i32 %17, !dbg !3868
}

; Function Attrs: nofree nounwind
declare !dbg !3869 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #11 !dbg !3870 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3909, metadata !DIExpression()), !dbg !3915
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3910, metadata !DIExpression()), !dbg !3915
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3911, metadata !DIExpression()), !dbg !3915
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3916
  %5 = load ptr, ptr %4, align 8, !dbg !3916, !tbaa !3917
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3918
  %7 = load ptr, ptr %6, align 8, !dbg !3918, !tbaa !3919
  %8 = icmp eq ptr %5, %7, !dbg !3920
  br i1 %8, label %9, label %27, !dbg !3921

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3922
  %11 = load ptr, ptr %10, align 8, !dbg !3922, !tbaa !1246
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3923
  %13 = load ptr, ptr %12, align 8, !dbg !3923, !tbaa !3924
  %14 = icmp eq ptr %11, %13, !dbg !3925
  br i1 %14, label %15, label %27, !dbg !3926

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3927
  %17 = load ptr, ptr %16, align 8, !dbg !3927, !tbaa !3928
  %18 = icmp eq ptr %17, null, !dbg !3929
  br i1 %18, label %19, label %27, !dbg !3930

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3931
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #37, !dbg !3932
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3912, metadata !DIExpression()), !dbg !3933
  %22 = icmp eq i64 %21, -1, !dbg !3934
  br i1 %22, label %29, label %23, !dbg !3936

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3937, !tbaa !3713
  %25 = and i32 %24, -17, !dbg !3937
  store i32 %25, ptr %0, align 8, !dbg !3937, !tbaa !3713
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3938
  store i64 %21, ptr %26, align 8, !dbg !3939, !tbaa !3940
  br label %29, !dbg !3941

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3942
  br label %29, !dbg !3943

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3915
  ret i32 %30, !dbg !3944
}

; Function Attrs: nofree nounwind
declare !dbg !3945 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #11 !dbg !3948 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3953, metadata !DIExpression()), !dbg !3958
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3954, metadata !DIExpression()), !dbg !3958
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3955, metadata !DIExpression()), !dbg !3958
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3956, metadata !DIExpression()), !dbg !3958
  %5 = icmp eq ptr %1, null, !dbg !3959
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3961
  %7 = select i1 %5, ptr @.str.168, ptr %1, !dbg !3961
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3961
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !3955, metadata !DIExpression()), !dbg !3958
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !3954, metadata !DIExpression()), !dbg !3958
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3953, metadata !DIExpression()), !dbg !3958
  %9 = icmp eq ptr %3, null, !dbg !3962
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !3964
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !3956, metadata !DIExpression()), !dbg !3958
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #37, !dbg !3965
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3957, metadata !DIExpression()), !dbg !3958
  %12 = icmp ult i64 %11, -3, !dbg !3966
  br i1 %12, label %13, label %17, !dbg !3968

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #38, !dbg !3969
  %15 = icmp eq i32 %14, 0, !dbg !3969
  br i1 %15, label %16, label %29, !dbg !3970

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !3971, metadata !DIExpression()), !dbg !3976
  call void @llvm.dbg.value(metadata ptr %10, metadata !3978, metadata !DIExpression()), !dbg !3983
  call void @llvm.dbg.value(metadata i32 0, metadata !3981, metadata !DIExpression()), !dbg !3983
  call void @llvm.dbg.value(metadata i64 8, metadata !3982, metadata !DIExpression()), !dbg !3983
  store i64 0, ptr %10, align 1, !dbg !3985
  br label %29, !dbg !3986

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !3987
  br i1 %18, label %19, label %20, !dbg !3989

19:                                               ; preds = %17
  tail call void @abort() #39, !dbg !3990
  unreachable, !dbg !3990

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !3991

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #37, !dbg !3993
  br i1 %23, label %29, label %24, !dbg !3994

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !3995
  br i1 %25, label %29, label %26, !dbg !3998

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !3999, !tbaa !989
  %28 = zext i8 %27 to i32, !dbg !4000
  store i32 %28, ptr %6, align 4, !dbg !4001, !tbaa !890
  br label %29, !dbg !4002

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3958
  ret i64 %30, !dbg !4003
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4004 i32 @mbsinit(ptr noundef) local_unnamed_addr #35

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #36 !dbg !4010 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4012, metadata !DIExpression()), !dbg !4016
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4013, metadata !DIExpression()), !dbg !4016
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4014, metadata !DIExpression()), !dbg !4016
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !4017
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !4017
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !4015, metadata !DIExpression()), !dbg !4016
  br i1 %5, label %6, label %8, !dbg !4019

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #40, !dbg !4020
  store i32 12, ptr %7, align 4, !dbg !4022, !tbaa !890
  br label %12, !dbg !4023

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !4017
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !4015, metadata !DIExpression()), !dbg !4016
  call void @llvm.dbg.value(metadata ptr %0, metadata !4024, metadata !DIExpression()), !dbg !4028
  call void @llvm.dbg.value(metadata i64 %9, metadata !4027, metadata !DIExpression()), !dbg !4028
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !4030
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #43, !dbg !4031
  br label %12, !dbg !4032

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !4016
  ret ptr %13, !dbg !4033
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i1 @hard_locale(i32 noundef %0) local_unnamed_addr #11 !dbg !4034 {
  %2 = alloca [257 x i8], align 1, !DIAssignID !4043
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4039, metadata !DIExpression(), metadata !4043, metadata ptr %2, metadata !DIExpression()), !dbg !4044
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4038, metadata !DIExpression()), !dbg !4044
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #37, !dbg !4045
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #37, !dbg !4046
  %4 = icmp eq i32 %3, 0, !dbg !4046
  br i1 %4, label %5, label %12, !dbg !4048

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4049, metadata !DIExpression()), !dbg !4053
  call void @llvm.dbg.value(metadata ptr @.str.173, metadata !4052, metadata !DIExpression()), !dbg !4053
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.173, i64 2), !dbg !4056
  %7 = icmp eq i32 %6, 0, !dbg !4057
  br i1 %7, label %11, label %8, !dbg !4058

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4049, metadata !DIExpression()), !dbg !4059
  call void @llvm.dbg.value(metadata ptr @.str.1.174, metadata !4052, metadata !DIExpression()), !dbg !4059
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.174, i64 6), !dbg !4061
  %10 = icmp eq i32 %9, 0, !dbg !4062
  br i1 %10, label %11, label %12, !dbg !4063

11:                                               ; preds = %8, %5
  br label %12, !dbg !4064

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4044
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #37, !dbg !4065
  ret i1 %13, !dbg !4065
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #11 !dbg !4066 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4070, metadata !DIExpression()), !dbg !4073
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4071, metadata !DIExpression()), !dbg !4073
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4072, metadata !DIExpression()), !dbg !4073
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #37, !dbg !4074
  ret i32 %4, !dbg !4075
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #11 !dbg !4076 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4080, metadata !DIExpression()), !dbg !4081
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #37, !dbg !4082
  ret ptr %2, !dbg !4083
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #11 !dbg !4084 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4086, metadata !DIExpression()), !dbg !4088
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !4089
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4087, metadata !DIExpression()), !dbg !4088
  ret ptr %2, !dbg !4090
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #11 !dbg !4091 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4093, metadata !DIExpression()), !dbg !4100
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4094, metadata !DIExpression()), !dbg !4100
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4095, metadata !DIExpression()), !dbg !4100
  call void @llvm.dbg.value(metadata i32 %0, metadata !4086, metadata !DIExpression()), !dbg !4101
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !4103
  call void @llvm.dbg.value(metadata ptr %4, metadata !4087, metadata !DIExpression()), !dbg !4101
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4096, metadata !DIExpression()), !dbg !4100
  %5 = icmp eq ptr %4, null, !dbg !4104
  br i1 %5, label %6, label %9, !dbg !4105

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4106
  br i1 %7, label %19, label %8, !dbg !4109

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4110, !tbaa !989
  br label %19, !dbg !4111

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #38, !dbg !4112
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !4097, metadata !DIExpression()), !dbg !4113
  %11 = icmp ult i64 %10, %2, !dbg !4114
  br i1 %11, label %12, label %14, !dbg !4116

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4117
  call void @llvm.dbg.value(metadata ptr %1, metadata !4119, metadata !DIExpression()), !dbg !4124
  call void @llvm.dbg.value(metadata ptr %4, metadata !4122, metadata !DIExpression()), !dbg !4124
  call void @llvm.dbg.value(metadata i64 %13, metadata !4123, metadata !DIExpression()), !dbg !4124
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #37, !dbg !4126
  br label %19, !dbg !4127

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4128
  br i1 %15, label %19, label %16, !dbg !4131

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4132
  call void @llvm.dbg.value(metadata ptr %1, metadata !4119, metadata !DIExpression()), !dbg !4134
  call void @llvm.dbg.value(metadata ptr %4, metadata !4122, metadata !DIExpression()), !dbg !4134
  call void @llvm.dbg.value(metadata i64 %17, metadata !4123, metadata !DIExpression()), !dbg !4134
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #37, !dbg !4136
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4137
  store i8 0, ptr %18, align 1, !dbg !4138, !tbaa !989
  br label %19, !dbg !4139

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4140
  ret i32 %20, !dbg !4141
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
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #35 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #36 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #37 = { nounwind }
attributes #38 = { nounwind willreturn memory(read) }
attributes #39 = { noreturn nounwind }
attributes #40 = { nounwind willreturn memory(none) }
attributes #41 = { noreturn }
attributes #42 = { cold }
attributes #43 = { nounwind allocsize(1) }
attributes #44 = { nounwind allocsize(0) }
attributes #45 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!86, !441, !450, !454, !469, !766, !800, !525, !539, !590, !802, !758, !809, !844, !846, !848, !850, !852, !782, !854, !856, !858, !860}
!llvm.ident = !{!862, !862, !862, !862, !862, !862, !862, !862, !862, !862, !862, !862, !862, !862, !862, !862, !862, !862, !862, !862, !862, !862, !862}
!llvm.module.flags = !{!863, !864, !865, !866, !867, !868, !869, !870}

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
!86 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/uname.o -MD -MP -MF src/.deps/uname.Tpo -c src/uname.c -o src/.uname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !87, retainedTypes: !114, globals: !123, splitDebugInlining: false, nameTableKind: None)
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
!114 = !{!83, !115, !116, !119, !121, !122, !85}
!115 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !117, line: 18, baseType: !118)
!117 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
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
!441 = distinct !DICompileUnit(language: DW_LANG_C11, file: !442, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/uname-uname.o -MD -MP -MF src/.deps/uname-uname.Tpo -c src/uname-uname.c -o src/.uname-uname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !443, globals: !444, splitDebugInlining: false, nameTableKind: None)
!442 = !DIFile(filename: "src/uname-uname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "355b38a68e18f877bfa709b962231397")
!443 = !{!88}
!444 = !{!439}
!445 = !DIGlobalVariableExpression(var: !446, expr: !DIExpression())
!446 = distinct !DIGlobalVariable(scope: null, file: !447, line: 3, type: !148, isLocal: true, isDefinition: true)
!447 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!448 = !DIGlobalVariableExpression(var: !449, expr: !DIExpression())
!449 = distinct !DIGlobalVariable(name: "Version", scope: !450, file: !447, line: 3, type: !119, isLocal: false, isDefinition: true)
!450 = distinct !DICompileUnit(language: DW_LANG_C11, file: !447, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/version.o -MD -MP -MF src/.deps/version.Tpo -c src/version.c -o src/.version.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !451, splitDebugInlining: false, nameTableKind: None)
!451 = !{!445, !448}
!452 = !DIGlobalVariableExpression(var: !453, expr: !DIExpression())
!453 = distinct !DIGlobalVariable(name: "file_name", scope: !454, file: !455, line: 45, type: !119, isLocal: true, isDefinition: true)
!454 = distinct !DICompileUnit(language: DW_LANG_C11, file: !455, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-closeout.o -MD -MP -MF lib/.deps/libcoreutils_a-closeout.Tpo -c lib/closeout.c -o lib/.libcoreutils_a-closeout.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !456, splitDebugInlining: false, nameTableKind: None)
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
!468 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !469, file: !470, line: 66, type: !520, isLocal: false, isDefinition: true)
!469 = distinct !DICompileUnit(language: DW_LANG_C11, file: !470, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !471, globals: !472, splitDebugInlining: false, nameTableKind: None)
!470 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!471 = !{!122, !121}
!472 = !{!473, !475, !499, !501, !503, !505, !467, !507, !509, !511, !513, !518}
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(scope: null, file: !470, line: 272, type: !24, isLocal: true, isDefinition: true)
!475 = !DIGlobalVariableExpression(var: !476, expr: !DIExpression())
!476 = distinct !DIGlobalVariable(name: "old_file_name", scope: !477, file: !470, line: 304, type: !119, isLocal: true, isDefinition: true)
!477 = distinct !DISubprogram(name: "verror_at_line", scope: !470, file: !470, line: 298, type: !478, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !469, retainedNodes: !492)
!478 = !DISubroutineType(types: !479)
!479 = !{null, !83, !83, !119, !90, !119, !480}
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !481, line: 52, baseType: !482)
!481 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !483, line: 12, baseType: !484)
!483 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !470, baseType: !485)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !486)
!486 = !{!487, !488, !489, !490, !491}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !485, file: !470, baseType: !122, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !485, file: !470, baseType: !122, size: 64, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !485, file: !470, baseType: !122, size: 64, offset: 128)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !485, file: !470, baseType: !83, size: 32, offset: 192)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !485, file: !470, baseType: !83, size: 32, offset: 224)
!492 = !{!493, !494, !495, !496, !497, !498}
!493 = !DILocalVariable(name: "status", arg: 1, scope: !477, file: !470, line: 298, type: !83)
!494 = !DILocalVariable(name: "errnum", arg: 2, scope: !477, file: !470, line: 298, type: !83)
!495 = !DILocalVariable(name: "file_name", arg: 3, scope: !477, file: !470, line: 298, type: !119)
!496 = !DILocalVariable(name: "line_number", arg: 4, scope: !477, file: !470, line: 298, type: !90)
!497 = !DILocalVariable(name: "message", arg: 5, scope: !477, file: !470, line: 298, type: !119)
!498 = !DILocalVariable(name: "args", arg: 6, scope: !477, file: !470, line: 298, type: !480)
!499 = !DIGlobalVariableExpression(var: !500, expr: !DIExpression())
!500 = distinct !DIGlobalVariable(name: "old_line_number", scope: !477, file: !470, line: 305, type: !90, isLocal: true, isDefinition: true)
!501 = !DIGlobalVariableExpression(var: !502, expr: !DIExpression())
!502 = distinct !DIGlobalVariable(scope: null, file: !470, line: 338, type: !248, isLocal: true, isDefinition: true)
!503 = !DIGlobalVariableExpression(var: !504, expr: !DIExpression())
!504 = distinct !DIGlobalVariable(scope: null, file: !470, line: 346, type: !280, isLocal: true, isDefinition: true)
!505 = !DIGlobalVariableExpression(var: !506, expr: !DIExpression())
!506 = distinct !DIGlobalVariable(scope: null, file: !470, line: 346, type: !255, isLocal: true, isDefinition: true)
!507 = !DIGlobalVariableExpression(var: !508, expr: !DIExpression())
!508 = distinct !DIGlobalVariable(name: "error_message_count", scope: !469, file: !470, line: 69, type: !90, isLocal: false, isDefinition: true)
!509 = !DIGlobalVariableExpression(var: !510, expr: !DIExpression())
!510 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !469, file: !470, line: 295, type: !83, isLocal: false, isDefinition: true)
!511 = !DIGlobalVariableExpression(var: !512, expr: !DIExpression())
!512 = distinct !DIGlobalVariable(scope: null, file: !470, line: 208, type: !275, isLocal: true, isDefinition: true)
!513 = !DIGlobalVariableExpression(var: !514, expr: !DIExpression())
!514 = distinct !DIGlobalVariable(scope: null, file: !470, line: 208, type: !515, isLocal: true, isDefinition: true)
!515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !516)
!516 = !{!517}
!517 = !DISubrange(count: 21)
!518 = !DIGlobalVariableExpression(var: !519, expr: !DIExpression())
!519 = distinct !DIGlobalVariable(scope: null, file: !470, line: 214, type: !24, isLocal: true, isDefinition: true)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{null}
!523 = !DIGlobalVariableExpression(var: !524, expr: !DIExpression())
!524 = distinct !DIGlobalVariable(name: "program_name", scope: !525, file: !526, line: 31, type: !119, isLocal: false, isDefinition: true)
!525 = distinct !DICompileUnit(language: DW_LANG_C11, file: !526, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !527, globals: !528, splitDebugInlining: false, nameTableKind: None)
!526 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!527 = !{!122, !85}
!528 = !{!523, !529, !531}
!529 = !DIGlobalVariableExpression(var: !530, expr: !DIExpression())
!530 = distinct !DIGlobalVariable(scope: null, file: !526, line: 46, type: !280, isLocal: true, isDefinition: true)
!531 = !DIGlobalVariableExpression(var: !532, expr: !DIExpression())
!532 = distinct !DIGlobalVariable(scope: null, file: !526, line: 49, type: !248, isLocal: true, isDefinition: true)
!533 = !DIGlobalVariableExpression(var: !534, expr: !DIExpression())
!534 = distinct !DIGlobalVariable(name: "utf07FF", scope: !535, file: !536, line: 46, type: !563, isLocal: true, isDefinition: true)
!535 = distinct !DISubprogram(name: "proper_name_lite", scope: !536, file: !536, line: 38, type: !537, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !539, retainedNodes: !541)
!536 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!537 = !DISubroutineType(types: !538)
!538 = !{!119, !119, !119}
!539 = distinct !DICompileUnit(language: DW_LANG_C11, file: !536, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !540, splitDebugInlining: false, nameTableKind: None)
!540 = !{!533}
!541 = !{!542, !543, !544, !545, !550}
!542 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !535, file: !536, line: 38, type: !119)
!543 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !535, file: !536, line: 38, type: !119)
!544 = !DILocalVariable(name: "translation", scope: !535, file: !536, line: 40, type: !119)
!545 = !DILocalVariable(name: "w", scope: !535, file: !536, line: 47, type: !546)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !547, line: 37, baseType: !548)
!547 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !211, line: 57, baseType: !549)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !211, line: 42, baseType: !90)
!550 = !DILocalVariable(name: "mbs", scope: !535, file: !536, line: 48, type: !551)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !552, line: 6, baseType: !553)
!552 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !554, line: 21, baseType: !555)
!554 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !554, line: 13, size: 64, elements: !556)
!556 = !{!557, !558}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !555, file: !554, line: 15, baseType: !83, size: 32)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !555, file: !554, line: 20, baseType: !559, size: 32, offset: 32)
!559 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !555, file: !554, line: 16, size: 32, elements: !560)
!560 = !{!561, !562}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !559, file: !554, line: 18, baseType: !90, size: 32)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !559, file: !554, line: 19, baseType: !248, size: 32)
!563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 16, elements: !256)
!564 = !DIGlobalVariableExpression(var: !565, expr: !DIExpression())
!565 = distinct !DIGlobalVariable(scope: null, file: !566, line: 78, type: !280, isLocal: true, isDefinition: true)
!566 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!567 = !DIGlobalVariableExpression(var: !568, expr: !DIExpression())
!568 = distinct !DIGlobalVariable(scope: null, file: !566, line: 79, type: !19, isLocal: true, isDefinition: true)
!569 = !DIGlobalVariableExpression(var: !570, expr: !DIExpression())
!570 = distinct !DIGlobalVariable(scope: null, file: !566, line: 80, type: !571, isLocal: true, isDefinition: true)
!571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !572)
!572 = !{!573}
!573 = !DISubrange(count: 13)
!574 = !DIGlobalVariableExpression(var: !575, expr: !DIExpression())
!575 = distinct !DIGlobalVariable(scope: null, file: !566, line: 81, type: !571, isLocal: true, isDefinition: true)
!576 = !DIGlobalVariableExpression(var: !577, expr: !DIExpression())
!577 = distinct !DIGlobalVariable(scope: null, file: !566, line: 82, type: !233, isLocal: true, isDefinition: true)
!578 = !DIGlobalVariableExpression(var: !579, expr: !DIExpression())
!579 = distinct !DIGlobalVariable(scope: null, file: !566, line: 83, type: !255, isLocal: true, isDefinition: true)
!580 = !DIGlobalVariableExpression(var: !581, expr: !DIExpression())
!581 = distinct !DIGlobalVariable(scope: null, file: !566, line: 84, type: !280, isLocal: true, isDefinition: true)
!582 = !DIGlobalVariableExpression(var: !583, expr: !DIExpression())
!583 = distinct !DIGlobalVariable(scope: null, file: !566, line: 85, type: !275, isLocal: true, isDefinition: true)
!584 = !DIGlobalVariableExpression(var: !585, expr: !DIExpression())
!585 = distinct !DIGlobalVariable(scope: null, file: !566, line: 86, type: !275, isLocal: true, isDefinition: true)
!586 = !DIGlobalVariableExpression(var: !587, expr: !DIExpression())
!587 = distinct !DIGlobalVariable(scope: null, file: !566, line: 87, type: !280, isLocal: true, isDefinition: true)
!588 = !DIGlobalVariableExpression(var: !589, expr: !DIExpression())
!589 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !590, file: !566, line: 76, type: !676, isLocal: false, isDefinition: true)
!590 = distinct !DICompileUnit(language: DW_LANG_C11, file: !566, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !591, retainedTypes: !611, globals: !612, splitDebugInlining: false, nameTableKind: None)
!591 = !{!592, !606, !94}
!592 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !593, line: 42, baseType: !90, size: 32, elements: !594)
!593 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!594 = !{!595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605}
!595 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!596 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!597 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!598 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!599 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!600 = !DIEnumerator(name: "c_quoting_style", value: 5)
!601 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!602 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!603 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!604 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!605 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!606 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !593, line: 254, baseType: !90, size: 32, elements: !607)
!607 = !{!608, !609, !610}
!608 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!609 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!610 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!611 = !{!122, !83, !115, !116}
!612 = !{!564, !567, !569, !574, !576, !578, !580, !582, !584, !586, !588, !613, !617, !627, !629, !634, !636, !638, !640, !642, !665, !672, !674}
!613 = !DIGlobalVariableExpression(var: !614, expr: !DIExpression())
!614 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !590, file: !566, line: 92, type: !615, isLocal: false, isDefinition: true)
!615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !616, size: 320, elements: !132)
!616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !592)
!617 = !DIGlobalVariableExpression(var: !618, expr: !DIExpression())
!618 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !590, file: !566, line: 1040, type: !619, isLocal: false, isDefinition: true)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !566, line: 56, size: 448, elements: !620)
!620 = !{!621, !622, !623, !625, !626}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !619, file: !566, line: 59, baseType: !592, size: 32)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !619, file: !566, line: 62, baseType: !83, size: 32, offset: 32)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !619, file: !566, line: 66, baseType: !624, size: 256, offset: 64)
!624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 256, elements: !281)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !619, file: !566, line: 69, baseType: !119, size: 64, offset: 320)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !619, file: !566, line: 72, baseType: !119, size: 64, offset: 384)
!627 = !DIGlobalVariableExpression(var: !628, expr: !DIExpression())
!628 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !590, file: !566, line: 107, type: !619, isLocal: true, isDefinition: true)
!629 = !DIGlobalVariableExpression(var: !630, expr: !DIExpression())
!630 = distinct !DIGlobalVariable(name: "slot0", scope: !590, file: !566, line: 831, type: !631, isLocal: true, isDefinition: true)
!631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !632)
!632 = !{!633}
!633 = !DISubrange(count: 256)
!634 = !DIGlobalVariableExpression(var: !635, expr: !DIExpression())
!635 = distinct !DIGlobalVariable(scope: null, file: !566, line: 321, type: !255, isLocal: true, isDefinition: true)
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(scope: null, file: !566, line: 357, type: !255, isLocal: true, isDefinition: true)
!638 = !DIGlobalVariableExpression(var: !639, expr: !DIExpression())
!639 = distinct !DIGlobalVariable(scope: null, file: !566, line: 358, type: !255, isLocal: true, isDefinition: true)
!640 = !DIGlobalVariableExpression(var: !641, expr: !DIExpression())
!641 = distinct !DIGlobalVariable(scope: null, file: !566, line: 199, type: !275, isLocal: true, isDefinition: true)
!642 = !DIGlobalVariableExpression(var: !643, expr: !DIExpression())
!643 = distinct !DIGlobalVariable(name: "quote", scope: !644, file: !566, line: 228, type: !663, isLocal: true, isDefinition: true)
!644 = distinct !DISubprogram(name: "gettext_quote", scope: !566, file: !566, line: 197, type: !645, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !590, retainedNodes: !647)
!645 = !DISubroutineType(types: !646)
!646 = !{!119, !119, !592}
!647 = !{!648, !649, !650, !651, !652}
!648 = !DILocalVariable(name: "msgid", arg: 1, scope: !644, file: !566, line: 197, type: !119)
!649 = !DILocalVariable(name: "s", arg: 2, scope: !644, file: !566, line: 197, type: !592)
!650 = !DILocalVariable(name: "translation", scope: !644, file: !566, line: 199, type: !119)
!651 = !DILocalVariable(name: "w", scope: !644, file: !566, line: 229, type: !546)
!652 = !DILocalVariable(name: "mbs", scope: !644, file: !566, line: 230, type: !653)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !552, line: 6, baseType: !654)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !554, line: 21, baseType: !655)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !554, line: 13, size: 64, elements: !656)
!656 = !{!657, !658}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !655, file: !554, line: 15, baseType: !83, size: 32)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !655, file: !554, line: 20, baseType: !659, size: 32, offset: 32)
!659 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !655, file: !554, line: 16, size: 32, elements: !660)
!660 = !{!661, !662}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !659, file: !554, line: 18, baseType: !90, size: 32)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !659, file: !554, line: 19, baseType: !248, size: 32)
!663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 64, elements: !664)
!664 = !{!257, !250}
!665 = !DIGlobalVariableExpression(var: !666, expr: !DIExpression())
!666 = distinct !DIGlobalVariable(name: "slotvec", scope: !590, file: !566, line: 834, type: !667, isLocal: true, isDefinition: true)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !566, line: 823, size: 128, elements: !669)
!669 = !{!670, !671}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !668, file: !566, line: 825, baseType: !116, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !668, file: !566, line: 826, baseType: !85, size: 64, offset: 64)
!672 = !DIGlobalVariableExpression(var: !673, expr: !DIExpression())
!673 = distinct !DIGlobalVariable(name: "nslots", scope: !590, file: !566, line: 832, type: !83, isLocal: true, isDefinition: true)
!674 = !DIGlobalVariableExpression(var: !675, expr: !DIExpression())
!675 = distinct !DIGlobalVariable(name: "slotvec0", scope: !590, file: !566, line: 833, type: !668, isLocal: true, isDefinition: true)
!676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !677, size: 704, elements: !678)
!677 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!678 = !{!679}
!679 = !DISubrange(count: 11)
!680 = !DIGlobalVariableExpression(var: !681, expr: !DIExpression())
!681 = distinct !DIGlobalVariable(scope: null, file: !682, line: 67, type: !348, isLocal: true, isDefinition: true)
!682 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!683 = !DIGlobalVariableExpression(var: !684, expr: !DIExpression())
!684 = distinct !DIGlobalVariable(scope: null, file: !682, line: 69, type: !275, isLocal: true, isDefinition: true)
!685 = !DIGlobalVariableExpression(var: !686, expr: !DIExpression())
!686 = distinct !DIGlobalVariable(scope: null, file: !682, line: 83, type: !275, isLocal: true, isDefinition: true)
!687 = !DIGlobalVariableExpression(var: !688, expr: !DIExpression())
!688 = distinct !DIGlobalVariable(scope: null, file: !682, line: 83, type: !248, isLocal: true, isDefinition: true)
!689 = !DIGlobalVariableExpression(var: !690, expr: !DIExpression())
!690 = distinct !DIGlobalVariable(scope: null, file: !682, line: 85, type: !255, isLocal: true, isDefinition: true)
!691 = !DIGlobalVariableExpression(var: !692, expr: !DIExpression())
!692 = distinct !DIGlobalVariable(scope: null, file: !682, line: 88, type: !693, isLocal: true, isDefinition: true)
!693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !694)
!694 = !{!695}
!695 = !DISubrange(count: 171)
!696 = !DIGlobalVariableExpression(var: !697, expr: !DIExpression())
!697 = distinct !DIGlobalVariable(scope: null, file: !682, line: 88, type: !698, isLocal: true, isDefinition: true)
!698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !699)
!699 = !{!700}
!700 = !DISubrange(count: 34)
!701 = !DIGlobalVariableExpression(var: !702, expr: !DIExpression())
!702 = distinct !DIGlobalVariable(scope: null, file: !682, line: 105, type: !322, isLocal: true, isDefinition: true)
!703 = !DIGlobalVariableExpression(var: !704, expr: !DIExpression())
!704 = distinct !DIGlobalVariable(scope: null, file: !682, line: 109, type: !9, isLocal: true, isDefinition: true)
!705 = !DIGlobalVariableExpression(var: !706, expr: !DIExpression())
!706 = distinct !DIGlobalVariable(scope: null, file: !682, line: 113, type: !707, isLocal: true, isDefinition: true)
!707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !708)
!708 = !{!709}
!709 = !DISubrange(count: 28)
!710 = !DIGlobalVariableExpression(var: !711, expr: !DIExpression())
!711 = distinct !DIGlobalVariable(scope: null, file: !682, line: 120, type: !712, isLocal: true, isDefinition: true)
!712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !713)
!713 = !{!714}
!714 = !DISubrange(count: 32)
!715 = !DIGlobalVariableExpression(var: !716, expr: !DIExpression())
!716 = distinct !DIGlobalVariable(scope: null, file: !682, line: 127, type: !717, isLocal: true, isDefinition: true)
!717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !718)
!718 = !{!719}
!719 = !DISubrange(count: 36)
!720 = !DIGlobalVariableExpression(var: !721, expr: !DIExpression())
!721 = distinct !DIGlobalVariable(scope: null, file: !682, line: 134, type: !302, isLocal: true, isDefinition: true)
!722 = !DIGlobalVariableExpression(var: !723, expr: !DIExpression())
!723 = distinct !DIGlobalVariable(scope: null, file: !682, line: 142, type: !724, isLocal: true, isDefinition: true)
!724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !725)
!725 = !{!726}
!726 = !DISubrange(count: 44)
!727 = !DIGlobalVariableExpression(var: !728, expr: !DIExpression())
!728 = distinct !DIGlobalVariable(scope: null, file: !682, line: 150, type: !729, isLocal: true, isDefinition: true)
!729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !730)
!730 = !{!731}
!731 = !DISubrange(count: 48)
!732 = !DIGlobalVariableExpression(var: !733, expr: !DIExpression())
!733 = distinct !DIGlobalVariable(scope: null, file: !682, line: 159, type: !734, isLocal: true, isDefinition: true)
!734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !735)
!735 = !{!736}
!736 = !DISubrange(count: 52)
!737 = !DIGlobalVariableExpression(var: !738, expr: !DIExpression())
!738 = distinct !DIGlobalVariable(scope: null, file: !682, line: 170, type: !39, isLocal: true, isDefinition: true)
!739 = !DIGlobalVariableExpression(var: !740, expr: !DIExpression())
!740 = distinct !DIGlobalVariable(scope: null, file: !682, line: 248, type: !233, isLocal: true, isDefinition: true)
!741 = !DIGlobalVariableExpression(var: !742, expr: !DIExpression())
!742 = distinct !DIGlobalVariable(scope: null, file: !682, line: 248, type: !327, isLocal: true, isDefinition: true)
!743 = !DIGlobalVariableExpression(var: !744, expr: !DIExpression())
!744 = distinct !DIGlobalVariable(scope: null, file: !682, line: 254, type: !233, isLocal: true, isDefinition: true)
!745 = !DIGlobalVariableExpression(var: !746, expr: !DIExpression())
!746 = distinct !DIGlobalVariable(scope: null, file: !682, line: 254, type: !143, isLocal: true, isDefinition: true)
!747 = !DIGlobalVariableExpression(var: !748, expr: !DIExpression())
!748 = distinct !DIGlobalVariable(scope: null, file: !682, line: 254, type: !302, isLocal: true, isDefinition: true)
!749 = !DIGlobalVariableExpression(var: !750, expr: !DIExpression())
!750 = distinct !DIGlobalVariable(scope: null, file: !682, line: 259, type: !3, isLocal: true, isDefinition: true)
!751 = !DIGlobalVariableExpression(var: !752, expr: !DIExpression())
!752 = distinct !DIGlobalVariable(scope: null, file: !682, line: 259, type: !753, isLocal: true, isDefinition: true)
!753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !754)
!754 = !{!755}
!755 = !DISubrange(count: 29)
!756 = !DIGlobalVariableExpression(var: !757, expr: !DIExpression())
!757 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !758, file: !759, line: 26, type: !761, isLocal: false, isDefinition: true)
!758 = distinct !DICompileUnit(language: DW_LANG_C11, file: !759, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !760, splitDebugInlining: false, nameTableKind: None)
!759 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!760 = !{!756}
!761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 376, elements: !762)
!762 = !{!763}
!763 = !DISubrange(count: 47)
!764 = !DIGlobalVariableExpression(var: !765, expr: !DIExpression())
!765 = distinct !DIGlobalVariable(name: "exit_failure", scope: !766, file: !767, line: 24, type: !769, isLocal: false, isDefinition: true)
!766 = distinct !DICompileUnit(language: DW_LANG_C11, file: !767, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !768, splitDebugInlining: false, nameTableKind: None)
!767 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!768 = !{!764}
!769 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !83)
!770 = !DIGlobalVariableExpression(var: !771, expr: !DIExpression())
!771 = distinct !DIGlobalVariable(scope: null, file: !772, line: 34, type: !264, isLocal: true, isDefinition: true)
!772 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!773 = !DIGlobalVariableExpression(var: !774, expr: !DIExpression())
!774 = distinct !DIGlobalVariable(scope: null, file: !772, line: 34, type: !275, isLocal: true, isDefinition: true)
!775 = !DIGlobalVariableExpression(var: !776, expr: !DIExpression())
!776 = distinct !DIGlobalVariable(scope: null, file: !772, line: 34, type: !297, isLocal: true, isDefinition: true)
!777 = !DIGlobalVariableExpression(var: !778, expr: !DIExpression())
!778 = distinct !DIGlobalVariable(scope: null, file: !779, line: 108, type: !126, isLocal: true, isDefinition: true)
!779 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!780 = !DIGlobalVariableExpression(var: !781, expr: !DIExpression())
!781 = distinct !DIGlobalVariable(name: "internal_state", scope: !782, file: !779, line: 97, type: !785, isLocal: true, isDefinition: true)
!782 = distinct !DICompileUnit(language: DW_LANG_C11, file: !779, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !783, globals: !784, splitDebugInlining: false, nameTableKind: None)
!783 = !{!122, !116, !121}
!784 = !{!777, !780}
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !552, line: 6, baseType: !786)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !554, line: 21, baseType: !787)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !554, line: 13, size: 64, elements: !788)
!788 = !{!789, !790}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !787, file: !554, line: 15, baseType: !83, size: 32)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !787, file: !554, line: 20, baseType: !791, size: 32, offset: 32)
!791 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !787, file: !554, line: 16, size: 32, elements: !792)
!792 = !{!793, !794}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !791, file: !554, line: 18, baseType: !90, size: 32)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !791, file: !554, line: 19, baseType: !248, size: 32)
!795 = !DIGlobalVariableExpression(var: !796, expr: !DIExpression())
!796 = distinct !DIGlobalVariable(scope: null, file: !797, line: 35, type: !255, isLocal: true, isDefinition: true)
!797 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!798 = !DIGlobalVariableExpression(var: !799, expr: !DIExpression())
!799 = distinct !DIGlobalVariable(scope: null, file: !797, line: 35, type: !19, isLocal: true, isDefinition: true)
!800 = distinct !DICompileUnit(language: DW_LANG_C11, file: !801, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!801 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!802 = distinct !DICompileUnit(language: DW_LANG_C11, file: !682, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !803, retainedTypes: !807, globals: !808, splitDebugInlining: false, nameTableKind: None)
!803 = !{!804}
!804 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !682, line: 40, baseType: !90, size: 32, elements: !805)
!805 = !{!806}
!806 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!807 = !{!122}
!808 = !{!680, !683, !685, !687, !689, !691, !696, !701, !703, !705, !710, !715, !720, !722, !727, !732, !737, !739, !741, !743, !745, !747, !749, !751}
!809 = distinct !DICompileUnit(language: DW_LANG_C11, file: !810, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !811, retainedTypes: !843, splitDebugInlining: false, nameTableKind: None)
!810 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!811 = !{!812, !824}
!812 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !813, file: !810, line: 188, baseType: !90, size: 32, elements: !822)
!813 = distinct !DISubprogram(name: "x2nrealloc", scope: !810, file: !810, line: 176, type: !814, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !809, retainedNodes: !817)
!814 = !DISubroutineType(types: !815)
!815 = !{!122, !122, !816, !116}
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!817 = !{!818, !819, !820, !821}
!818 = !DILocalVariable(name: "p", arg: 1, scope: !813, file: !810, line: 176, type: !122)
!819 = !DILocalVariable(name: "pn", arg: 2, scope: !813, file: !810, line: 176, type: !816)
!820 = !DILocalVariable(name: "s", arg: 3, scope: !813, file: !810, line: 176, type: !116)
!821 = !DILocalVariable(name: "n", scope: !813, file: !810, line: 178, type: !116)
!822 = !{!823}
!823 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!824 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !825, file: !810, line: 228, baseType: !90, size: 32, elements: !822)
!825 = distinct !DISubprogram(name: "xpalloc", scope: !810, file: !810, line: 223, type: !826, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !809, retainedNodes: !833)
!826 = !DISubroutineType(types: !827)
!827 = !{!122, !122, !828, !829, !831, !829}
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !830, line: 130, baseType: !831)
!830 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!831 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !832, line: 18, baseType: !212)
!832 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!833 = !{!834, !835, !836, !837, !838, !839, !840, !841, !842}
!834 = !DILocalVariable(name: "pa", arg: 1, scope: !825, file: !810, line: 223, type: !122)
!835 = !DILocalVariable(name: "pn", arg: 2, scope: !825, file: !810, line: 223, type: !828)
!836 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !825, file: !810, line: 223, type: !829)
!837 = !DILocalVariable(name: "n_max", arg: 4, scope: !825, file: !810, line: 223, type: !831)
!838 = !DILocalVariable(name: "s", arg: 5, scope: !825, file: !810, line: 223, type: !829)
!839 = !DILocalVariable(name: "n0", scope: !825, file: !810, line: 230, type: !829)
!840 = !DILocalVariable(name: "n", scope: !825, file: !810, line: 237, type: !829)
!841 = !DILocalVariable(name: "nbytes", scope: !825, file: !810, line: 248, type: !829)
!842 = !DILocalVariable(name: "adjusted_nbytes", scope: !825, file: !810, line: 252, type: !829)
!843 = !{!85, !122}
!844 = distinct !DICompileUnit(language: DW_LANG_C11, file: !772, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !845, splitDebugInlining: false, nameTableKind: None)
!845 = !{!770, !773, !775}
!846 = distinct !DICompileUnit(language: DW_LANG_C11, file: !847, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!847 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!848 = distinct !DICompileUnit(language: DW_LANG_C11, file: !849, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!849 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!850 = distinct !DICompileUnit(language: DW_LANG_C11, file: !851, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !807, splitDebugInlining: false, nameTableKind: None)
!851 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!852 = distinct !DICompileUnit(language: DW_LANG_C11, file: !853, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !807, splitDebugInlining: false, nameTableKind: None)
!853 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!854 = distinct !DICompileUnit(language: DW_LANG_C11, file: !855, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !807, splitDebugInlining: false, nameTableKind: None)
!855 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!856 = distinct !DICompileUnit(language: DW_LANG_C11, file: !797, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !857, splitDebugInlining: false, nameTableKind: None)
!857 = !{!795, !798}
!858 = distinct !DICompileUnit(language: DW_LANG_C11, file: !859, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!859 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!860 = distinct !DICompileUnit(language: DW_LANG_C11, file: !861, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !807, splitDebugInlining: false, nameTableKind: None)
!861 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!862 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!863 = !{i32 7, !"Dwarf Version", i32 5}
!864 = !{i32 2, !"Debug Info Version", i32 3}
!865 = !{i32 1, !"wchar_size", i32 4}
!866 = !{i32 8, !"PIC Level", i32 2}
!867 = !{i32 7, !"PIE Level", i32 2}
!868 = !{i32 7, !"uwtable", i32 2}
!869 = !{i32 7, !"frame-pointer", i32 1}
!870 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
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
!890 = !{!891, !891, i64 0}
!891 = !{!"int", !884, i64 0}
!892 = !DILocation(line: 116, column: 22, scope: !889)
!893 = !DILocation(line: 116, column: 11, scope: !887)
!894 = !DILocation(line: 118, column: 11, scope: !895)
!895 = distinct !DILexicalBlock(scope: !889, file: !2, line: 117, column: 9)
!896 = !DILocation(line: 122, column: 11, scope: !895)
!897 = !DILocation(line: 126, column: 11, scope: !895)
!898 = !DILocation(line: 129, column: 11, scope: !895)
!899 = !DILocation(line: 132, column: 11, scope: !895)
!900 = !DILocation(line: 135, column: 11, scope: !895)
!901 = !DILocation(line: 138, column: 11, scope: !895)
!902 = !DILocation(line: 141, column: 11, scope: !895)
!903 = !DILocation(line: 144, column: 11, scope: !895)
!904 = !DILocation(line: 147, column: 11, scope: !895)
!905 = !DILocation(line: 150, column: 9, scope: !895)
!906 = !DILocation(line: 153, column: 11, scope: !907)
!907 = distinct !DILexicalBlock(scope: !889, file: !2, line: 152, column: 9)
!908 = !DILocation(line: 159, column: 7, scope: !887)
!909 = !DILocation(line: 160, column: 7, scope: !887)
!910 = !DILocation(line: 161, column: 28, scope: !887)
!911 = !DILocalVariable(name: "infomap", scope: !912, file: !110, line: 838, type: !925)
!912 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !110, file: !110, line: 836, type: !411, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !86, retainedNodes: !913)
!913 = !{!914, !911, !915, !916, !923, !924}
!914 = !DILocalVariable(name: "program", arg: 1, scope: !912, file: !110, line: 836, type: !119)
!915 = !DILocalVariable(name: "node", scope: !912, file: !110, line: 848, type: !119)
!916 = !DILocalVariable(name: "map_prog", scope: !912, file: !110, line: 849, type: !917)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !919)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !912, file: !110, line: 838, size: 128, elements: !920)
!920 = !{!921, !922}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !919, file: !110, line: 838, baseType: !119, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !919, file: !110, line: 838, baseType: !119, size: 64, offset: 64)
!923 = !DILocalVariable(name: "lc_messages", scope: !912, file: !110, line: 861, type: !119)
!924 = !DILocalVariable(name: "url_program", scope: !912, file: !110, line: 874, type: !119)
!925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !918, size: 896, elements: !276)
!926 = distinct !DIAssignID()
!927 = !DILocation(line: 0, scope: !912, inlinedAt: !928)
!928 = distinct !DILocation(line: 161, column: 7, scope: !887)
!929 = distinct !DIAssignID()
!930 = !DILocalVariable(name: "__s1", arg: 1, scope: !931, file: !932, line: 1359, type: !119)
!931 = distinct !DISubprogram(name: "streq", scope: !932, file: !932, line: 1359, type: !933, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !86, retainedNodes: !935)
!932 = !DIFile(filename: "./lib/string.h", directory: "/src")
!933 = !DISubroutineType(types: !934)
!934 = !{!171, !119, !119}
!935 = !{!930, !936}
!936 = !DILocalVariable(name: "__s2", arg: 2, scope: !931, file: !932, line: 1359, type: !119)
!937 = !DILocation(line: 0, scope: !931, inlinedAt: !938)
!938 = distinct !DILocation(line: 851, column: 33, scope: !912, inlinedAt: !928)
!939 = !DILocation(line: 1361, column: 11, scope: !931, inlinedAt: !938)
!940 = !DILocation(line: 1361, column: 10, scope: !931, inlinedAt: !938)
!941 = !DILocation(line: 851, column: 3, scope: !912, inlinedAt: !928)
!942 = !DILocation(line: 854, column: 17, scope: !943, inlinedAt: !928)
!943 = distinct !DILexicalBlock(scope: !912, file: !110, line: 854, column: 7)
!944 = !{!945, !883, i64 8}
!945 = !{!"infomap", !883, i64 0, !883, i64 8}
!946 = !DILocation(line: 857, column: 3, scope: !912, inlinedAt: !928)
!947 = !DILocation(line: 861, column: 29, scope: !912, inlinedAt: !928)
!948 = !DILocation(line: 862, column: 7, scope: !949, inlinedAt: !928)
!949 = distinct !DILexicalBlock(scope: !912, file: !110, line: 862, column: 7)
!950 = !DILocation(line: 862, column: 19, scope: !949, inlinedAt: !928)
!951 = !DILocation(line: 862, column: 22, scope: !949, inlinedAt: !928)
!952 = !DILocation(line: 862, column: 7, scope: !912, inlinedAt: !928)
!953 = !DILocation(line: 868, column: 7, scope: !954, inlinedAt: !928)
!954 = distinct !DILexicalBlock(scope: !949, file: !110, line: 863, column: 5)
!955 = !DILocation(line: 870, column: 5, scope: !954, inlinedAt: !928)
!956 = !DILocation(line: 854, column: 7, scope: !943, inlinedAt: !928)
!957 = !DILocation(line: 854, column: 7, scope: !912, inlinedAt: !928)
!958 = !DILocation(line: 0, scope: !931, inlinedAt: !959)
!959 = distinct !DILocation(line: 874, column: 29, scope: !912, inlinedAt: !928)
!960 = !DILocation(line: 874, column: 29, scope: !912, inlinedAt: !928)
!961 = !DILocation(line: 875, column: 3, scope: !912, inlinedAt: !928)
!962 = !DILocation(line: 877, column: 3, scope: !912, inlinedAt: !928)
!963 = !DILocation(line: 163, column: 3, scope: !871)
!964 = !DISubprogram(name: "dcgettext", scope: !965, file: !965, line: 51, type: !966, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!965 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!966 = !DISubroutineType(types: !967)
!967 = !{!85, !119, !119, !83}
!968 = !DISubprogram(name: "__fprintf_chk", scope: !969, file: !969, line: 93, type: !970, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!969 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!970 = !DISubroutineType(types: !971)
!971 = !{!83, !972, !83, !973, null}
!972 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !184)
!973 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !119)
!974 = !DISubprogram(name: "__printf_chk", scope: !969, file: !969, line: 95, type: !975, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!975 = !DISubroutineType(types: !976)
!976 = !{!83, !83, !973, null}
!977 = !DISubprogram(name: "fputs_unlocked", scope: !481, file: !481, line: 691, type: !978, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!978 = !DISubroutineType(types: !979)
!979 = !{!83, !973, !972}
!980 = !DILocation(line: 0, scope: !161)
!981 = !DILocation(line: 581, column: 7, scope: !169)
!982 = !DILocation(line: 581, column: 19, scope: !169)
!983 = !DILocation(line: 581, column: 7, scope: !161)
!984 = !DILocation(line: 585, column: 26, scope: !168)
!985 = !DILocation(line: 0, scope: !168)
!986 = !DILocation(line: 586, column: 23, scope: !168)
!987 = !DILocation(line: 586, column: 28, scope: !168)
!988 = !DILocation(line: 586, column: 32, scope: !168)
!989 = !{!884, !884, i64 0}
!990 = !DILocation(line: 586, column: 38, scope: !168)
!991 = !DILocation(line: 0, scope: !931, inlinedAt: !992)
!992 = distinct !DILocation(line: 586, column: 41, scope: !168)
!993 = !DILocation(line: 1361, column: 11, scope: !931, inlinedAt: !992)
!994 = !DILocation(line: 1361, column: 10, scope: !931, inlinedAt: !992)
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
!1049 = !DILocation(line: 0, scope: !931, inlinedAt: !1050)
!1050 = distinct !DILocation(line: 648, column: 31, scope: !161)
!1051 = !DILocation(line: 1361, column: 11, scope: !931, inlinedAt: !1050)
!1052 = !DILocation(line: 1361, column: 10, scope: !931, inlinedAt: !1050)
!1053 = !DILocation(line: 648, column: 31, scope: !161)
!1054 = !DILocation(line: 0, scope: !931, inlinedAt: !1055)
!1055 = distinct !DILocation(line: 649, column: 31, scope: !161)
!1056 = !DILocation(line: 1361, column: 11, scope: !931, inlinedAt: !1055)
!1057 = !DILocation(line: 1361, column: 10, scope: !931, inlinedAt: !1055)
!1058 = !DILocation(line: 649, column: 31, scope: !161)
!1059 = !DILocation(line: 0, scope: !931, inlinedAt: !1060)
!1060 = distinct !DILocation(line: 650, column: 31, scope: !161)
!1061 = !DILocation(line: 1361, column: 11, scope: !931, inlinedAt: !1060)
!1062 = !DILocation(line: 1361, column: 10, scope: !931, inlinedAt: !1060)
!1063 = !DILocation(line: 650, column: 31, scope: !161)
!1064 = !DILocation(line: 0, scope: !931, inlinedAt: !1065)
!1065 = distinct !DILocation(line: 651, column: 31, scope: !161)
!1066 = !DILocation(line: 1361, column: 11, scope: !931, inlinedAt: !1065)
!1067 = !DILocation(line: 1361, column: 10, scope: !931, inlinedAt: !1065)
!1068 = !DILocation(line: 651, column: 31, scope: !161)
!1069 = !DILocation(line: 0, scope: !931, inlinedAt: !1070)
!1070 = distinct !DILocation(line: 652, column: 31, scope: !161)
!1071 = !DILocation(line: 1361, column: 11, scope: !931, inlinedAt: !1070)
!1072 = !DILocation(line: 1361, column: 10, scope: !931, inlinedAt: !1070)
!1073 = !DILocation(line: 652, column: 31, scope: !161)
!1074 = !DILocation(line: 0, scope: !931, inlinedAt: !1075)
!1075 = distinct !DILocation(line: 653, column: 31, scope: !161)
!1076 = !DILocation(line: 1361, column: 11, scope: !931, inlinedAt: !1075)
!1077 = !DILocation(line: 1361, column: 10, scope: !931, inlinedAt: !1075)
!1078 = !DILocation(line: 653, column: 31, scope: !161)
!1079 = !DILocation(line: 0, scope: !931, inlinedAt: !1080)
!1080 = distinct !DILocation(line: 654, column: 31, scope: !161)
!1081 = !DILocation(line: 1361, column: 11, scope: !931, inlinedAt: !1080)
!1082 = !DILocation(line: 1361, column: 10, scope: !931, inlinedAt: !1080)
!1083 = !DILocation(line: 654, column: 31, scope: !161)
!1084 = !DILocation(line: 0, scope: !931, inlinedAt: !1085)
!1085 = distinct !DILocation(line: 655, column: 31, scope: !161)
!1086 = !DILocation(line: 1361, column: 11, scope: !931, inlinedAt: !1085)
!1087 = !DILocation(line: 1361, column: 10, scope: !931, inlinedAt: !1085)
!1088 = !DILocation(line: 655, column: 31, scope: !161)
!1089 = !DILocation(line: 0, scope: !931, inlinedAt: !1090)
!1090 = distinct !DILocation(line: 656, column: 31, scope: !161)
!1091 = !DILocation(line: 1361, column: 11, scope: !931, inlinedAt: !1090)
!1092 = !DILocation(line: 1361, column: 10, scope: !931, inlinedAt: !1090)
!1093 = !DILocation(line: 656, column: 31, scope: !161)
!1094 = !DILocation(line: 0, scope: !931, inlinedAt: !1095)
!1095 = distinct !DILocation(line: 657, column: 31, scope: !161)
!1096 = !DILocation(line: 1361, column: 11, scope: !931, inlinedAt: !1095)
!1097 = !DILocation(line: 1361, column: 10, scope: !931, inlinedAt: !1095)
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
!1116 = !DISubprogram(name: "strcmp", scope: !1117, file: !1117, line: 156, type: !1118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1117 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1118 = !DISubroutineType(types: !1119)
!1119 = !{!83, !119, !119}
!1120 = !DISubprogram(name: "setlocale", scope: !1121, file: !1121, line: 122, type: !1122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1121 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!85, !83, !119}
!1124 = !DISubprogram(name: "strncmp", scope: !1117, file: !1117, line: 159, type: !1125, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!83, !119, !119, !116}
!1127 = !DISubprogram(name: "exit", scope: !1128, file: !1128, line: 624, type: !872, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1128 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1129 = !DISubprogram(name: "getenv", scope: !1128, file: !1128, line: 641, type: !1130, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{!85, !119}
!1132 = !DISubprogram(name: "strspn", scope: !1117, file: !1117, line: 297, type: !1133, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!118, !119, !119}
!1135 = !DISubprogram(name: "strchr", scope: !1117, file: !1117, line: 246, type: !1136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!85, !119, !83}
!1138 = !DISubprogram(name: "__ctype_b_loc", scope: !95, file: !95, line: 79, type: !1139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{!1141}
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!1144 = !DISubprogram(name: "strcspn", scope: !1117, file: !1117, line: 293, type: !1133, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1145 = !DISubprogram(name: "fwrite_unlocked", scope: !481, file: !481, line: 704, type: !1146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!116, !1148, !116, !116, !972}
!1148 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1149)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1151 = distinct !DIAssignID()
!1152 = !DILocation(line: 0, scope: !420)
!1153 = !DILocation(line: 0, scope: !80)
!1154 = !DILocation(line: 297, column: 21, scope: !80)
!1155 = !DILocation(line: 297, column: 3, scope: !80)
!1156 = !DILocation(line: 298, column: 3, scope: !80)
!1157 = !DILocation(line: 299, column: 3, scope: !80)
!1158 = !DILocation(line: 300, column: 3, scope: !80)
!1159 = !DILocation(line: 302, column: 3, scope: !80)
!1160 = !DILocalVariable(name: "argc", arg: 1, scope: !1161, file: !2, line: 202, type: !83)
!1161 = distinct !DISubprogram(name: "decode_switches", scope: !2, file: !2, line: 202, type: !81, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !86, retainedNodes: !1162)
!1162 = !{!1160, !1163, !1164, !1165}
!1163 = !DILocalVariable(name: "argv", arg: 2, scope: !1161, file: !2, line: 202, type: !84)
!1164 = !DILocalVariable(name: "c", scope: !1161, file: !2, line: 204, type: !83)
!1165 = !DILocalVariable(name: "toprint", scope: !1161, file: !2, line: 205, type: !90)
!1166 = !DILocation(line: 0, scope: !1161, inlinedAt: !1167)
!1167 = distinct !DILocation(line: 304, column: 13, scope: !80)
!1168 = !DILocation(line: 207, column: 7, scope: !1169, inlinedAt: !1167)
!1169 = distinct !DILexicalBlock(scope: !1161, file: !2, line: 207, column: 7)
!1170 = !DILocation(line: 207, column: 18, scope: !1169, inlinedAt: !1167)
!1171 = !DILocation(line: 207, column: 7, scope: !1161, inlinedAt: !1167)
!1172 = !DILocation(line: 227, column: 7, scope: !1173, inlinedAt: !1167)
!1173 = distinct !DILexicalBlock(scope: !1169, file: !2, line: 226, column: 5)
!1174 = !DILocation(line: 209, column: 19, scope: !1175, inlinedAt: !1167)
!1175 = distinct !DILexicalBlock(scope: !1169, file: !2, line: 208, column: 5)
!1176 = !DILocation(line: 209, column: 7, scope: !1175, inlinedAt: !1167)
!1177 = !DILocation(line: 215, column: 13, scope: !1178, inlinedAt: !1167)
!1178 = distinct !DILexicalBlock(scope: !1179, file: !2, line: 214, column: 13)
!1179 = distinct !DILexicalBlock(scope: !1175, file: !2, line: 212, column: 9)
!1180 = !DILocation(line: 217, column: 13, scope: !1178, inlinedAt: !1167)
!1181 = !DILocation(line: 220, column: 15, scope: !1178, inlinedAt: !1167)
!1182 = !DILocation(line: 227, column: 19, scope: !1173, inlinedAt: !1167)
!1183 = !DILocation(line: 238, column: 23, scope: !1184, inlinedAt: !1167)
!1184 = distinct !DILexicalBlock(scope: !1185, file: !2, line: 232, column: 13)
!1185 = distinct !DILexicalBlock(scope: !1173, file: !2, line: 230, column: 9)
!1186 = !DILocation(line: 239, column: 15, scope: !1184, inlinedAt: !1167)
!1187 = !DILocation(line: 242, column: 23, scope: !1184, inlinedAt: !1167)
!1188 = !DILocation(line: 243, column: 15, scope: !1184, inlinedAt: !1167)
!1189 = !DILocation(line: 246, column: 23, scope: !1184, inlinedAt: !1167)
!1190 = !DILocation(line: 247, column: 15, scope: !1184, inlinedAt: !1167)
!1191 = !DILocation(line: 250, column: 23, scope: !1184, inlinedAt: !1167)
!1192 = !DILocation(line: 251, column: 15, scope: !1184, inlinedAt: !1167)
!1193 = !DILocation(line: 254, column: 23, scope: !1184, inlinedAt: !1167)
!1194 = !DILocation(line: 255, column: 15, scope: !1184, inlinedAt: !1167)
!1195 = !DILocation(line: 258, column: 23, scope: !1184, inlinedAt: !1167)
!1196 = !DILocation(line: 259, column: 15, scope: !1184, inlinedAt: !1167)
!1197 = !DILocation(line: 262, column: 23, scope: !1184, inlinedAt: !1167)
!1198 = !DILocation(line: 263, column: 15, scope: !1184, inlinedAt: !1167)
!1199 = !DILocation(line: 266, column: 23, scope: !1184, inlinedAt: !1167)
!1200 = !DILocation(line: 267, column: 15, scope: !1184, inlinedAt: !1167)
!1201 = distinct !{!1201, !1172, !1202, !1020}
!1202 = !DILocation(line: 276, column: 9, scope: !1173, inlinedAt: !1167)
!1203 = !DILocation(line: 269, column: 13, scope: !1184, inlinedAt: !1167)
!1204 = !DILocation(line: 271, column: 13, scope: !1184, inlinedAt: !1167)
!1205 = !DILocation(line: 274, column: 15, scope: !1184, inlinedAt: !1167)
!1206 = !DILocation(line: 279, column: 15, scope: !1207, inlinedAt: !1167)
!1207 = distinct !DILexicalBlock(scope: !1161, file: !2, line: 279, column: 7)
!1208 = !DILocation(line: 279, column: 12, scope: !1207, inlinedAt: !1167)
!1209 = !DILocation(line: 279, column: 7, scope: !1161, inlinedAt: !1167)
!1210 = !DILocation(line: 281, column: 7, scope: !1211, inlinedAt: !1167)
!1211 = distinct !DILexicalBlock(scope: !1207, file: !2, line: 280, column: 5)
!1212 = !DILocation(line: 282, column: 7, scope: !1211, inlinedAt: !1167)
!1213 = !DILocation(line: 306, column: 7, scope: !80)
!1214 = !DILocation(line: 310, column: 8, scope: !421)
!1215 = !DILocation(line: 309, column: 7, scope: !80)
!1216 = !DILocation(line: 313, column: 7, scope: !420)
!1217 = !DILocation(line: 315, column: 11, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !420, file: !2, line: 315, column: 11)
!1219 = !DILocation(line: 315, column: 25, scope: !1218)
!1220 = !DILocation(line: 315, column: 11, scope: !420)
!1221 = !DILocation(line: 316, column: 9, scope: !1218)
!1222 = !DILocation(line: 318, column: 19, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !420, file: !2, line: 318, column: 11)
!1224 = !DILocation(line: 318, column: 11, scope: !420)
!1225 = !DILocalVariable(name: "element", arg: 1, scope: !1226, file: !2, line: 184, type: !119)
!1226 = distinct !DISubprogram(name: "print_element_env", scope: !2, file: !2, line: 184, type: !162, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !86, retainedNodes: !1227)
!1227 = !{!1225, !1228}
!1228 = !DILocalVariable(name: "envvar", arg: 2, scope: !1226, file: !2, line: 184, type: !119)
!1229 = !DILocation(line: 0, scope: !1226, inlinedAt: !1230)
!1230 = distinct !DILocation(line: 319, column: 9, scope: !1223)
!1231 = !{}
!1232 = !DILocation(line: 0, scope: !410, inlinedAt: !1233)
!1233 = distinct !DILocation(line: 194, column: 3, scope: !1226, inlinedAt: !1230)
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
!1247 = !{!"_IO_FILE", !891, i64 0, !883, i64 8, !883, i64 16, !883, i64 24, !883, i64 32, !883, i64 40, !883, i64 48, !883, i64 56, !883, i64 64, !883, i64 72, !883, i64 80, !883, i64 88, !883, i64 96, !883, i64 104, !891, i64 112, !891, i64 116, !1248, i64 120, !1015, i64 128, !884, i64 130, !884, i64 131, !883, i64 136, !1248, i64 144, !883, i64 152, !883, i64 160, !883, i64 168, !883, i64 176, !1248, i64 184, !891, i64 192, !884, i64 196}
!1248 = !{!"long", !884, i64 0}
!1249 = !{!1247, !883, i64 48}
!1250 = !{!"branch_weights", i32 2000, i32 1}
!1251 = !DILocation(line: 175, column: 11, scope: !410, inlinedAt: !1233)
!1252 = !DILocation(line: 176, column: 3, scope: !410, inlinedAt: !1233)
!1253 = !DILocation(line: 319, column: 9, scope: !1223)
!1254 = !DILocation(line: 320, column: 19, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !420, file: !2, line: 320, column: 11)
!1256 = !DILocation(line: 320, column: 11, scope: !420)
!1257 = !DILocation(line: 321, column: 33, scope: !1255)
!1258 = !DILocation(line: 0, scope: !1226, inlinedAt: !1259)
!1259 = distinct !DILocation(line: 321, column: 9, scope: !1255)
!1260 = !DILocation(line: 0, scope: !410, inlinedAt: !1261)
!1261 = distinct !DILocation(line: 194, column: 3, scope: !1226, inlinedAt: !1259)
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
!1274 = !DILocation(line: 0, scope: !1226, inlinedAt: !1275)
!1275 = distinct !DILocation(line: 323, column: 9, scope: !1271)
!1276 = !DILocation(line: 0, scope: !410, inlinedAt: !1277)
!1277 = distinct !DILocation(line: 194, column: 3, scope: !1226, inlinedAt: !1275)
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
!1290 = !DILocation(line: 0, scope: !1226, inlinedAt: !1291)
!1291 = distinct !DILocation(line: 325, column: 9, scope: !1287)
!1292 = !DILocation(line: 0, scope: !410, inlinedAt: !1293)
!1293 = distinct !DILocation(line: 194, column: 3, scope: !1226, inlinedAt: !1291)
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
!1306 = !DILocation(line: 0, scope: !1226, inlinedAt: !1307)
!1307 = distinct !DILocation(line: 327, column: 9, scope: !1303)
!1308 = !DILocation(line: 0, scope: !410, inlinedAt: !1309)
!1309 = distinct !DILocation(line: 194, column: 3, scope: !1226, inlinedAt: !1307)
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
!1321 = !DILocation(line: 0, scope: !432)
!1322 = !DILocation(line: 330, column: 7, scope: !80)
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
!1335 = !DILocation(line: 0, scope: !435)
!1336 = !DILocation(line: 364, column: 7, scope: !80)
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
!1365 = !DISubprogram(name: "bindtextdomain", scope: !965, file: !965, line: 86, type: !1366, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{!85, !119, !119}
!1368 = !DISubprogram(name: "textdomain", scope: !965, file: !965, line: 82, type: !1130, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1369 = !DISubprogram(name: "atexit", scope: !1128, file: !1128, line: 602, type: !1370, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{!83, !520}
!1372 = !DISubprogram(name: "getopt_long", scope: !370, file: !370, line: 66, type: !1373, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1373 = !DISubroutineType(types: !1374)
!1374 = !{!83, !83, !1375, !119, !1377, !375}
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!1378 = !DISubprogram(name: "uname", scope: !423, file: !423, line: 81, type: !1379, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{!83, !1381}
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!1382 = !DISubprogram(name: "__errno_location", scope: !1383, file: !1383, line: 37, type: !1384, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1383 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!375}
!1386 = !DISubprogram(name: "__overflow", scope: !481, file: !481, line: 886, type: !1387, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
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
!1405 = distinct !DISubprogram(name: "close_stdout", scope: !455, file: !455, line: 116, type: !521, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !1406)
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
!1438 = !DISubprogram(name: "_exit", scope: !1439, file: !1439, line: 624, type: !872, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
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
!1449 = !DILocation(line: 261, column: 3, scope: !1440)
!1450 = !DILocation(line: 265, column: 7, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1440, file: !470, line: 265, column: 7)
!1452 = !DILocation(line: 265, column: 7, scope: !1440)
!1453 = !DILocation(line: 266, column: 5, scope: !1451)
!1454 = !DILocation(line: 272, column: 7, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1451, file: !470, line: 268, column: 5)
!1456 = !DILocation(line: 276, column: 3, scope: !1440)
!1457 = !{i64 0, i64 8, !882, i64 8, i64 8, !882, i64 16, i64 8, !882, i64 24, i64 4, !890, i64 28, i64 4, !890}
!1458 = !DILocation(line: 282, column: 1, scope: !1440)
!1459 = distinct !DISubprogram(name: "flush_stdout", scope: !470, file: !470, line: 163, type: !521, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !469, retainedNodes: !1460)
!1460 = !{!1461}
!1461 = !DILocalVariable(name: "stdout_fd", scope: !1459, file: !470, line: 166, type: !83)
!1462 = !DILocation(line: 0, scope: !1459)
!1463 = !DILocalVariable(name: "fd", arg: 1, scope: !1464, file: !470, line: 145, type: !83)
!1464 = distinct !DISubprogram(name: "is_open", scope: !470, file: !470, line: 145, type: !1240, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !469, retainedNodes: !1465)
!1465 = !{!1463}
!1466 = !DILocation(line: 0, scope: !1464, inlinedAt: !1467)
!1467 = distinct !DILocation(line: 182, column: 25, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1459, file: !470, line: 182, column: 7)
!1469 = !DILocation(line: 157, column: 15, scope: !1464, inlinedAt: !1467)
!1470 = !DILocation(line: 157, column: 12, scope: !1464, inlinedAt: !1467)
!1471 = !DILocation(line: 182, column: 7, scope: !1459)
!1472 = !DILocation(line: 184, column: 5, scope: !1468)
!1473 = !DILocation(line: 185, column: 1, scope: !1459)
!1474 = distinct !DISubprogram(name: "error_tail", scope: !470, file: !470, line: 219, type: !1441, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !469, retainedNodes: !1475)
!1475 = !{!1476, !1477, !1478, !1479}
!1476 = !DILocalVariable(name: "status", arg: 1, scope: !1474, file: !470, line: 219, type: !83)
!1477 = !DILocalVariable(name: "errnum", arg: 2, scope: !1474, file: !470, line: 219, type: !83)
!1478 = !DILocalVariable(name: "message", arg: 3, scope: !1474, file: !470, line: 219, type: !119)
!1479 = !DILocalVariable(name: "args", arg: 4, scope: !1474, file: !470, line: 219, type: !480)
!1480 = distinct !DIAssignID()
!1481 = !DILocation(line: 0, scope: !1474)
!1482 = !DILocation(line: 229, column: 13, scope: !1474)
!1483 = !DILocation(line: 135, column: 10, scope: !1484, inlinedAt: !1526)
!1484 = distinct !DISubprogram(name: "vfprintf", scope: !969, file: !969, line: 132, type: !1485, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !469, retainedNodes: !1522)
!1485 = !DISubroutineType(types: !1486)
!1486 = !{!83, !1487, !973, !482}
!1487 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1488)
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1489 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !186, line: 7, baseType: !1490)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !188, line: 49, size: 1728, elements: !1491)
!1491 = !{!1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1490, file: !188, line: 51, baseType: !83, size: 32)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1490, file: !188, line: 54, baseType: !85, size: 64, offset: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1490, file: !188, line: 55, baseType: !85, size: 64, offset: 128)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1490, file: !188, line: 56, baseType: !85, size: 64, offset: 192)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1490, file: !188, line: 57, baseType: !85, size: 64, offset: 256)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1490, file: !188, line: 58, baseType: !85, size: 64, offset: 320)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1490, file: !188, line: 59, baseType: !85, size: 64, offset: 384)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1490, file: !188, line: 60, baseType: !85, size: 64, offset: 448)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1490, file: !188, line: 61, baseType: !85, size: 64, offset: 512)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1490, file: !188, line: 64, baseType: !85, size: 64, offset: 576)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1490, file: !188, line: 65, baseType: !85, size: 64, offset: 640)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1490, file: !188, line: 66, baseType: !85, size: 64, offset: 704)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1490, file: !188, line: 68, baseType: !203, size: 64, offset: 768)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1490, file: !188, line: 70, baseType: !1506, size: 64, offset: 832)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1490, file: !188, line: 72, baseType: !83, size: 32, offset: 896)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1490, file: !188, line: 73, baseType: !83, size: 32, offset: 928)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1490, file: !188, line: 74, baseType: !210, size: 64, offset: 960)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1490, file: !188, line: 77, baseType: !115, size: 16, offset: 1024)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1490, file: !188, line: 78, baseType: !215, size: 8, offset: 1040)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1490, file: !188, line: 79, baseType: !126, size: 8, offset: 1048)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1490, file: !188, line: 81, baseType: !218, size: 64, offset: 1088)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1490, file: !188, line: 89, baseType: !221, size: 64, offset: 1152)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1490, file: !188, line: 91, baseType: !223, size: 64, offset: 1216)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1490, file: !188, line: 92, baseType: !226, size: 64, offset: 1280)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1490, file: !188, line: 93, baseType: !1506, size: 64, offset: 1344)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1490, file: !188, line: 94, baseType: !122, size: 64, offset: 1408)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1490, file: !188, line: 95, baseType: !116, size: 64, offset: 1472)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1490, file: !188, line: 96, baseType: !83, size: 32, offset: 1536)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1490, file: !188, line: 98, baseType: !233, size: 160, offset: 1568)
!1522 = !{!1523, !1524, !1525}
!1523 = !DILocalVariable(name: "__stream", arg: 1, scope: !1484, file: !969, line: 132, type: !1487)
!1524 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1484, file: !969, line: 133, type: !973)
!1525 = !DILocalVariable(name: "__ap", arg: 3, scope: !1484, file: !969, line: 133, type: !482)
!1526 = distinct !DILocation(line: 229, column: 3, scope: !1474)
!1527 = !{!1528, !1530}
!1528 = distinct !{!1528, !1529, !"vfprintf.inline: argument 0"}
!1529 = distinct !{!1529, !"vfprintf.inline"}
!1530 = distinct !{!1530, !1529, !"vfprintf.inline: argument 1"}
!1531 = !DILocation(line: 229, column: 3, scope: !1474)
!1532 = !DILocation(line: 0, scope: !1484, inlinedAt: !1526)
!1533 = !DILocation(line: 232, column: 3, scope: !1474)
!1534 = !DILocation(line: 233, column: 7, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1474, file: !470, line: 233, column: 7)
!1536 = !DILocation(line: 233, column: 7, scope: !1474)
!1537 = !DILocalVariable(name: "errbuf", scope: !1538, file: !470, line: 193, type: !1542)
!1538 = distinct !DISubprogram(name: "print_errno_message", scope: !470, file: !470, line: 188, type: !872, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !469, retainedNodes: !1539)
!1539 = !{!1540, !1541, !1537}
!1540 = !DILocalVariable(name: "errnum", arg: 1, scope: !1538, file: !470, line: 188, type: !83)
!1541 = !DILocalVariable(name: "s", scope: !1538, file: !470, line: 190, type: !119)
!1542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1543)
!1543 = !{!1544}
!1544 = !DISubrange(count: 1024)
!1545 = !DILocation(line: 0, scope: !1538, inlinedAt: !1546)
!1546 = distinct !DILocation(line: 234, column: 5, scope: !1535)
!1547 = !DILocation(line: 193, column: 3, scope: !1538, inlinedAt: !1546)
!1548 = !DILocation(line: 195, column: 7, scope: !1538, inlinedAt: !1546)
!1549 = !DILocation(line: 207, column: 9, scope: !1550, inlinedAt: !1546)
!1550 = distinct !DILexicalBlock(scope: !1538, file: !470, line: 207, column: 7)
!1551 = !DILocation(line: 207, column: 7, scope: !1538, inlinedAt: !1546)
!1552 = !DILocation(line: 208, column: 9, scope: !1550, inlinedAt: !1546)
!1553 = !DILocation(line: 208, column: 5, scope: !1550, inlinedAt: !1546)
!1554 = !DILocation(line: 214, column: 3, scope: !1538, inlinedAt: !1546)
!1555 = !DILocation(line: 216, column: 1, scope: !1538, inlinedAt: !1546)
!1556 = !DILocation(line: 234, column: 5, scope: !1535)
!1557 = !DILocation(line: 238, column: 3, scope: !1474)
!1558 = !DILocalVariable(name: "__c", arg: 1, scope: !1559, file: !1239, line: 101, type: !83)
!1559 = distinct !DISubprogram(name: "putc_unlocked", scope: !1239, file: !1239, line: 101, type: !1560, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !469, retainedNodes: !1562)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{!83, !83, !1488}
!1562 = !{!1558, !1563}
!1563 = !DILocalVariable(name: "__stream", arg: 2, scope: !1559, file: !1239, line: 101, type: !1488)
!1564 = !DILocation(line: 0, scope: !1559, inlinedAt: !1565)
!1565 = distinct !DILocation(line: 238, column: 3, scope: !1474)
!1566 = !DILocation(line: 103, column: 10, scope: !1559, inlinedAt: !1565)
!1567 = !DILocation(line: 240, column: 3, scope: !1474)
!1568 = !DILocation(line: 241, column: 7, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1474, file: !470, line: 241, column: 7)
!1570 = !DILocation(line: 241, column: 7, scope: !1474)
!1571 = !DILocation(line: 242, column: 5, scope: !1569)
!1572 = !DILocation(line: 243, column: 1, scope: !1474)
!1573 = !DISubprogram(name: "__vfprintf_chk", scope: !969, file: !969, line: 96, type: !1574, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1574 = !DISubroutineType(types: !1575)
!1575 = !{!83, !1487, !83, !973, !482}
!1576 = !DISubprogram(name: "strerror_r", scope: !1117, file: !1117, line: 444, type: !1577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!85, !83, !85, !116}
!1579 = !DISubprogram(name: "fflush_unlocked", scope: !481, file: !481, line: 239, type: !1580, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{!83, !1488}
!1582 = !DISubprogram(name: "fcntl", scope: !1583, file: !1583, line: 149, type: !1584, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1583 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1584 = !DISubroutineType(types: !1585)
!1585 = !{!83, !83, !83, null}
!1586 = distinct !DISubprogram(name: "error", scope: !470, file: !470, line: 285, type: !1587, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !469, retainedNodes: !1589)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{null, !83, !83, !119, null}
!1589 = !{!1590, !1591, !1592, !1593}
!1590 = !DILocalVariable(name: "status", arg: 1, scope: !1586, file: !470, line: 285, type: !83)
!1591 = !DILocalVariable(name: "errnum", arg: 2, scope: !1586, file: !470, line: 285, type: !83)
!1592 = !DILocalVariable(name: "message", arg: 3, scope: !1586, file: !470, line: 285, type: !119)
!1593 = !DILocalVariable(name: "ap", scope: !1586, file: !470, line: 287, type: !480)
!1594 = distinct !DIAssignID()
!1595 = !DILocation(line: 0, scope: !1586)
!1596 = !DILocation(line: 287, column: 3, scope: !1586)
!1597 = !DILocation(line: 288, column: 3, scope: !1586)
!1598 = !DILocation(line: 289, column: 3, scope: !1586)
!1599 = !DILocation(line: 290, column: 3, scope: !1586)
!1600 = !DILocation(line: 291, column: 1, scope: !1586)
!1601 = !DILocation(line: 0, scope: !477)
!1602 = !DILocation(line: 302, column: 7, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !477, file: !470, line: 302, column: 7)
!1604 = !DILocation(line: 302, column: 7, scope: !477)
!1605 = !DILocation(line: 307, column: 11, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1607, file: !470, line: 307, column: 11)
!1607 = distinct !DILexicalBlock(scope: !1603, file: !470, line: 303, column: 5)
!1608 = !DILocation(line: 307, column: 27, scope: !1606)
!1609 = !DILocation(line: 308, column: 11, scope: !1606)
!1610 = !DILocation(line: 308, column: 28, scope: !1606)
!1611 = !DILocation(line: 308, column: 25, scope: !1606)
!1612 = !DILocation(line: 309, column: 15, scope: !1606)
!1613 = !DILocation(line: 309, column: 33, scope: !1606)
!1614 = !DILocation(line: 310, column: 19, scope: !1606)
!1615 = !DILocation(line: 311, column: 22, scope: !1606)
!1616 = !DILocation(line: 311, column: 56, scope: !1606)
!1617 = !DILocation(line: 307, column: 11, scope: !1607)
!1618 = !DILocation(line: 316, column: 21, scope: !1607)
!1619 = !DILocation(line: 317, column: 23, scope: !1607)
!1620 = !DILocation(line: 318, column: 5, scope: !1607)
!1621 = !DILocation(line: 327, column: 3, scope: !477)
!1622 = !DILocation(line: 331, column: 7, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !477, file: !470, line: 331, column: 7)
!1624 = !DILocation(line: 331, column: 7, scope: !477)
!1625 = !DILocation(line: 332, column: 5, scope: !1623)
!1626 = !DILocation(line: 338, column: 7, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1623, file: !470, line: 334, column: 5)
!1628 = !DILocation(line: 346, column: 3, scope: !477)
!1629 = !DILocation(line: 350, column: 3, scope: !477)
!1630 = !DILocation(line: 356, column: 1, scope: !477)
!1631 = distinct !DISubprogram(name: "error_at_line", scope: !470, file: !470, line: 359, type: !1632, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !469, retainedNodes: !1634)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{null, !83, !83, !119, !90, !119, null}
!1634 = !{!1635, !1636, !1637, !1638, !1639, !1640}
!1635 = !DILocalVariable(name: "status", arg: 1, scope: !1631, file: !470, line: 359, type: !83)
!1636 = !DILocalVariable(name: "errnum", arg: 2, scope: !1631, file: !470, line: 359, type: !83)
!1637 = !DILocalVariable(name: "file_name", arg: 3, scope: !1631, file: !470, line: 359, type: !119)
!1638 = !DILocalVariable(name: "line_number", arg: 4, scope: !1631, file: !470, line: 360, type: !90)
!1639 = !DILocalVariable(name: "message", arg: 5, scope: !1631, file: !470, line: 360, type: !119)
!1640 = !DILocalVariable(name: "ap", scope: !1631, file: !470, line: 362, type: !480)
!1641 = distinct !DIAssignID()
!1642 = !DILocation(line: 0, scope: !1631)
!1643 = !DILocation(line: 362, column: 3, scope: !1631)
!1644 = !DILocation(line: 363, column: 3, scope: !1631)
!1645 = !DILocation(line: 364, column: 3, scope: !1631)
!1646 = !DILocation(line: 366, column: 3, scope: !1631)
!1647 = !DILocation(line: 367, column: 1, scope: !1631)
!1648 = distinct !DISubprogram(name: "getprogname", scope: !801, file: !801, line: 54, type: !1649, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !800)
!1649 = !DISubroutineType(types: !1650)
!1650 = !{!119}
!1651 = !DILocation(line: 58, column: 10, scope: !1648)
!1652 = !DILocation(line: 58, column: 3, scope: !1648)
!1653 = distinct !DISubprogram(name: "set_program_name", scope: !526, file: !526, line: 37, type: !411, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !1654)
!1654 = !{!1655, !1656, !1657}
!1655 = !DILocalVariable(name: "argv0", arg: 1, scope: !1653, file: !526, line: 37, type: !119)
!1656 = !DILocalVariable(name: "slash", scope: !1653, file: !526, line: 44, type: !119)
!1657 = !DILocalVariable(name: "base", scope: !1653, file: !526, line: 45, type: !119)
!1658 = !DILocation(line: 0, scope: !1653)
!1659 = !DILocation(line: 44, column: 23, scope: !1653)
!1660 = !DILocation(line: 45, column: 22, scope: !1653)
!1661 = !DILocation(line: 46, column: 17, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1653, file: !526, line: 46, column: 7)
!1663 = !DILocation(line: 46, column: 9, scope: !1662)
!1664 = !DILocation(line: 46, column: 25, scope: !1662)
!1665 = !DILocation(line: 46, column: 40, scope: !1662)
!1666 = !DILocalVariable(name: "__s1", arg: 1, scope: !1667, file: !932, line: 974, type: !1149)
!1667 = distinct !DISubprogram(name: "memeq", scope: !932, file: !932, line: 974, type: !1668, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !1670)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{!171, !1149, !1149, !116}
!1670 = !{!1666, !1671, !1672}
!1671 = !DILocalVariable(name: "__s2", arg: 2, scope: !1667, file: !932, line: 974, type: !1149)
!1672 = !DILocalVariable(name: "__n", arg: 3, scope: !1667, file: !932, line: 974, type: !116)
!1673 = !DILocation(line: 0, scope: !1667, inlinedAt: !1674)
!1674 = distinct !DILocation(line: 46, column: 28, scope: !1662)
!1675 = !DILocation(line: 976, column: 11, scope: !1667, inlinedAt: !1674)
!1676 = !DILocation(line: 976, column: 10, scope: !1667, inlinedAt: !1674)
!1677 = !DILocation(line: 46, column: 7, scope: !1653)
!1678 = !DILocation(line: 49, column: 11, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1680, file: !526, line: 49, column: 11)
!1680 = distinct !DILexicalBlock(scope: !1662, file: !526, line: 47, column: 5)
!1681 = !DILocation(line: 49, column: 36, scope: !1679)
!1682 = !DILocation(line: 49, column: 11, scope: !1680)
!1683 = !DILocation(line: 65, column: 16, scope: !1653)
!1684 = !DILocation(line: 71, column: 27, scope: !1653)
!1685 = !DILocation(line: 74, column: 33, scope: !1653)
!1686 = !DILocation(line: 76, column: 1, scope: !1653)
!1687 = !DISubprogram(name: "strrchr", scope: !1117, file: !1117, line: 273, type: !1136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1688 = distinct !DIAssignID()
!1689 = !DILocation(line: 0, scope: !535)
!1690 = distinct !DIAssignID()
!1691 = !DILocation(line: 40, column: 29, scope: !535)
!1692 = !DILocation(line: 41, column: 19, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !535, file: !536, line: 41, column: 7)
!1694 = !DILocation(line: 41, column: 7, scope: !535)
!1695 = !DILocation(line: 47, column: 3, scope: !535)
!1696 = !DILocation(line: 48, column: 3, scope: !535)
!1697 = !DILocalVariable(name: "ps", arg: 1, scope: !1698, file: !1699, line: 1135, type: !1702)
!1698 = distinct !DISubprogram(name: "mbszero", scope: !1699, file: !1699, line: 1135, type: !1700, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !539, retainedNodes: !1703)
!1699 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1700 = !DISubroutineType(types: !1701)
!1701 = !{null, !1702}
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!1703 = !{!1697}
!1704 = !DILocation(line: 0, scope: !1698, inlinedAt: !1705)
!1705 = distinct !DILocation(line: 48, column: 18, scope: !535)
!1706 = !DILocalVariable(name: "__dest", arg: 1, scope: !1707, file: !1708, line: 57, type: !122)
!1707 = distinct !DISubprogram(name: "memset", scope: !1708, file: !1708, line: 57, type: !1709, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !539, retainedNodes: !1711)
!1708 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1709 = !DISubroutineType(types: !1710)
!1710 = !{!122, !122, !83, !116}
!1711 = !{!1706, !1712, !1713}
!1712 = !DILocalVariable(name: "__ch", arg: 2, scope: !1707, file: !1708, line: 57, type: !83)
!1713 = !DILocalVariable(name: "__len", arg: 3, scope: !1707, file: !1708, line: 57, type: !116)
!1714 = !DILocation(line: 0, scope: !1707, inlinedAt: !1715)
!1715 = distinct !DILocation(line: 1137, column: 3, scope: !1698, inlinedAt: !1705)
!1716 = !DILocation(line: 59, column: 10, scope: !1707, inlinedAt: !1715)
!1717 = !DILocation(line: 49, column: 7, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !535, file: !536, line: 49, column: 7)
!1719 = !DILocation(line: 49, column: 39, scope: !1718)
!1720 = !DILocation(line: 49, column: 44, scope: !1718)
!1721 = !DILocation(line: 54, column: 1, scope: !535)
!1722 = !DISubprogram(name: "mbrtoc32", scope: !547, file: !547, line: 57, type: !1723, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1723 = !DISubroutineType(types: !1724)
!1724 = !{!116, !1725, !973, !116, !1727}
!1725 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1726)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!1727 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1702)
!1728 = distinct !DISubprogram(name: "clone_quoting_options", scope: !566, file: !566, line: 113, type: !1729, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !590, retainedNodes: !1732)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{!1731, !1731}
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!1732 = !{!1733, !1734, !1735}
!1733 = !DILocalVariable(name: "o", arg: 1, scope: !1728, file: !566, line: 113, type: !1731)
!1734 = !DILocalVariable(name: "saved_errno", scope: !1728, file: !566, line: 115, type: !83)
!1735 = !DILocalVariable(name: "p", scope: !1728, file: !566, line: 116, type: !1731)
!1736 = !DILocation(line: 0, scope: !1728)
!1737 = !DILocation(line: 115, column: 21, scope: !1728)
!1738 = !DILocation(line: 116, column: 40, scope: !1728)
!1739 = !DILocation(line: 116, column: 31, scope: !1728)
!1740 = !DILocation(line: 118, column: 9, scope: !1728)
!1741 = !DILocation(line: 119, column: 3, scope: !1728)
!1742 = distinct !DISubprogram(name: "get_quoting_style", scope: !566, file: !566, line: 124, type: !1743, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !590, retainedNodes: !1747)
!1743 = !DISubroutineType(types: !1744)
!1744 = !{!592, !1745}
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !619)
!1747 = !{!1748}
!1748 = !DILocalVariable(name: "o", arg: 1, scope: !1742, file: !566, line: 124, type: !1745)
!1749 = !DILocation(line: 0, scope: !1742)
!1750 = !DILocation(line: 126, column: 11, scope: !1742)
!1751 = !DILocation(line: 126, column: 46, scope: !1742)
!1752 = !{!1753, !891, i64 0}
!1753 = !{!"quoting_options", !891, i64 0, !891, i64 4, !884, i64 8, !883, i64 40, !883, i64 48}
!1754 = !DILocation(line: 126, column: 3, scope: !1742)
!1755 = distinct !DISubprogram(name: "set_quoting_style", scope: !566, file: !566, line: 132, type: !1756, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !590, retainedNodes: !1758)
!1756 = !DISubroutineType(types: !1757)
!1757 = !{null, !1731, !592}
!1758 = !{!1759, !1760}
!1759 = !DILocalVariable(name: "o", arg: 1, scope: !1755, file: !566, line: 132, type: !1731)
!1760 = !DILocalVariable(name: "s", arg: 2, scope: !1755, file: !566, line: 132, type: !592)
!1761 = !DILocation(line: 0, scope: !1755)
!1762 = !DILocation(line: 134, column: 4, scope: !1755)
!1763 = !DILocation(line: 134, column: 45, scope: !1755)
!1764 = !DILocation(line: 135, column: 1, scope: !1755)
!1765 = distinct !DISubprogram(name: "set_char_quoting", scope: !566, file: !566, line: 143, type: !1766, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !590, retainedNodes: !1768)
!1766 = !DISubroutineType(types: !1767)
!1767 = !{!83, !1731, !4, !83}
!1768 = !{!1769, !1770, !1771, !1772, !1773, !1775, !1776}
!1769 = !DILocalVariable(name: "o", arg: 1, scope: !1765, file: !566, line: 143, type: !1731)
!1770 = !DILocalVariable(name: "c", arg: 2, scope: !1765, file: !566, line: 143, type: !4)
!1771 = !DILocalVariable(name: "i", arg: 3, scope: !1765, file: !566, line: 143, type: !83)
!1772 = !DILocalVariable(name: "uc", scope: !1765, file: !566, line: 145, type: !121)
!1773 = !DILocalVariable(name: "p", scope: !1765, file: !566, line: 146, type: !1774)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!1775 = !DILocalVariable(name: "shift", scope: !1765, file: !566, line: 148, type: !83)
!1776 = !DILocalVariable(name: "r", scope: !1765, file: !566, line: 149, type: !90)
!1777 = !DILocation(line: 0, scope: !1765)
!1778 = !DILocation(line: 147, column: 6, scope: !1765)
!1779 = !DILocation(line: 147, column: 41, scope: !1765)
!1780 = !DILocation(line: 147, column: 62, scope: !1765)
!1781 = !DILocation(line: 147, column: 57, scope: !1765)
!1782 = !DILocation(line: 148, column: 15, scope: !1765)
!1783 = !DILocation(line: 149, column: 21, scope: !1765)
!1784 = !DILocation(line: 149, column: 24, scope: !1765)
!1785 = !DILocation(line: 149, column: 34, scope: !1765)
!1786 = !DILocation(line: 150, column: 19, scope: !1765)
!1787 = !DILocation(line: 150, column: 24, scope: !1765)
!1788 = !DILocation(line: 150, column: 6, scope: !1765)
!1789 = !DILocation(line: 151, column: 3, scope: !1765)
!1790 = distinct !DISubprogram(name: "set_quoting_flags", scope: !566, file: !566, line: 159, type: !1791, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !590, retainedNodes: !1793)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{!83, !1731, !83}
!1793 = !{!1794, !1795, !1796}
!1794 = !DILocalVariable(name: "o", arg: 1, scope: !1790, file: !566, line: 159, type: !1731)
!1795 = !DILocalVariable(name: "i", arg: 2, scope: !1790, file: !566, line: 159, type: !83)
!1796 = !DILocalVariable(name: "r", scope: !1790, file: !566, line: 163, type: !83)
!1797 = !DILocation(line: 0, scope: !1790)
!1798 = !DILocation(line: 161, column: 8, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1790, file: !566, line: 161, column: 7)
!1800 = !DILocation(line: 161, column: 7, scope: !1790)
!1801 = !DILocation(line: 163, column: 14, scope: !1790)
!1802 = !{!1753, !891, i64 4}
!1803 = !DILocation(line: 164, column: 12, scope: !1790)
!1804 = !DILocation(line: 165, column: 3, scope: !1790)
!1805 = distinct !DISubprogram(name: "set_custom_quoting", scope: !566, file: !566, line: 169, type: !1806, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !590, retainedNodes: !1808)
!1806 = !DISubroutineType(types: !1807)
!1807 = !{null, !1731, !119, !119}
!1808 = !{!1809, !1810, !1811}
!1809 = !DILocalVariable(name: "o", arg: 1, scope: !1805, file: !566, line: 169, type: !1731)
!1810 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1805, file: !566, line: 170, type: !119)
!1811 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1805, file: !566, line: 170, type: !119)
!1812 = !DILocation(line: 0, scope: !1805)
!1813 = !DILocation(line: 172, column: 8, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1805, file: !566, line: 172, column: 7)
!1815 = !DILocation(line: 172, column: 7, scope: !1805)
!1816 = !DILocation(line: 174, column: 12, scope: !1805)
!1817 = !DILocation(line: 175, column: 8, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1805, file: !566, line: 175, column: 7)
!1819 = !DILocation(line: 175, column: 19, scope: !1818)
!1820 = !DILocation(line: 176, column: 5, scope: !1818)
!1821 = !DILocation(line: 177, column: 6, scope: !1805)
!1822 = !DILocation(line: 177, column: 17, scope: !1805)
!1823 = !{!1753, !883, i64 40}
!1824 = !DILocation(line: 178, column: 6, scope: !1805)
!1825 = !DILocation(line: 178, column: 18, scope: !1805)
!1826 = !{!1753, !883, i64 48}
!1827 = !DILocation(line: 179, column: 1, scope: !1805)
!1828 = !DISubprogram(name: "abort", scope: !1128, file: !1128, line: 598, type: !521, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1829 = distinct !DISubprogram(name: "quotearg_buffer", scope: !566, file: !566, line: 774, type: !1830, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !590, retainedNodes: !1832)
!1830 = !DISubroutineType(types: !1831)
!1831 = !{!116, !85, !116, !119, !116, !1745}
!1832 = !{!1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840}
!1833 = !DILocalVariable(name: "buffer", arg: 1, scope: !1829, file: !566, line: 774, type: !85)
!1834 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1829, file: !566, line: 774, type: !116)
!1835 = !DILocalVariable(name: "arg", arg: 3, scope: !1829, file: !566, line: 775, type: !119)
!1836 = !DILocalVariable(name: "argsize", arg: 4, scope: !1829, file: !566, line: 775, type: !116)
!1837 = !DILocalVariable(name: "o", arg: 5, scope: !1829, file: !566, line: 776, type: !1745)
!1838 = !DILocalVariable(name: "p", scope: !1829, file: !566, line: 778, type: !1745)
!1839 = !DILocalVariable(name: "saved_errno", scope: !1829, file: !566, line: 779, type: !83)
!1840 = !DILocalVariable(name: "r", scope: !1829, file: !566, line: 780, type: !116)
!1841 = !DILocation(line: 0, scope: !1829)
!1842 = !DILocation(line: 778, column: 37, scope: !1829)
!1843 = !DILocation(line: 779, column: 21, scope: !1829)
!1844 = !DILocation(line: 781, column: 43, scope: !1829)
!1845 = !DILocation(line: 781, column: 53, scope: !1829)
!1846 = !DILocation(line: 781, column: 63, scope: !1829)
!1847 = !DILocation(line: 782, column: 43, scope: !1829)
!1848 = !DILocation(line: 782, column: 58, scope: !1829)
!1849 = !DILocation(line: 780, column: 14, scope: !1829)
!1850 = !DILocation(line: 783, column: 9, scope: !1829)
!1851 = !DILocation(line: 784, column: 3, scope: !1829)
!1852 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !566, file: !566, line: 251, type: !1853, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !590, retainedNodes: !1857)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{!116, !85, !116, !119, !116, !592, !83, !1855, !119, !119}
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!1857 = !{!1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1883, !1885, !1888, !1889, !1890, !1891, !1894, !1895, !1897, !1898, !1901, !1905, !1906, !1914, !1917, !1918, !1919}
!1858 = !DILocalVariable(name: "buffer", arg: 1, scope: !1852, file: !566, line: 251, type: !85)
!1859 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1852, file: !566, line: 251, type: !116)
!1860 = !DILocalVariable(name: "arg", arg: 3, scope: !1852, file: !566, line: 252, type: !119)
!1861 = !DILocalVariable(name: "argsize", arg: 4, scope: !1852, file: !566, line: 252, type: !116)
!1862 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1852, file: !566, line: 253, type: !592)
!1863 = !DILocalVariable(name: "flags", arg: 6, scope: !1852, file: !566, line: 253, type: !83)
!1864 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1852, file: !566, line: 254, type: !1855)
!1865 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1852, file: !566, line: 255, type: !119)
!1866 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1852, file: !566, line: 256, type: !119)
!1867 = !DILocalVariable(name: "unibyte_locale", scope: !1852, file: !566, line: 258, type: !171)
!1868 = !DILocalVariable(name: "len", scope: !1852, file: !566, line: 260, type: !116)
!1869 = !DILocalVariable(name: "orig_buffersize", scope: !1852, file: !566, line: 261, type: !116)
!1870 = !DILocalVariable(name: "quote_string", scope: !1852, file: !566, line: 262, type: !119)
!1871 = !DILocalVariable(name: "quote_string_len", scope: !1852, file: !566, line: 263, type: !116)
!1872 = !DILocalVariable(name: "backslash_escapes", scope: !1852, file: !566, line: 264, type: !171)
!1873 = !DILocalVariable(name: "elide_outer_quotes", scope: !1852, file: !566, line: 265, type: !171)
!1874 = !DILocalVariable(name: "encountered_single_quote", scope: !1852, file: !566, line: 266, type: !171)
!1875 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1852, file: !566, line: 267, type: !171)
!1876 = !DILabel(scope: !1852, name: "process_input", file: !566, line: 308)
!1877 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1852, file: !566, line: 309, type: !171)
!1878 = !DILocalVariable(name: "lq", scope: !1879, file: !566, line: 361, type: !119)
!1879 = distinct !DILexicalBlock(scope: !1880, file: !566, line: 361, column: 11)
!1880 = distinct !DILexicalBlock(scope: !1881, file: !566, line: 360, column: 13)
!1881 = distinct !DILexicalBlock(scope: !1882, file: !566, line: 333, column: 7)
!1882 = distinct !DILexicalBlock(scope: !1852, file: !566, line: 312, column: 5)
!1883 = !DILocalVariable(name: "i", scope: !1884, file: !566, line: 395, type: !116)
!1884 = distinct !DILexicalBlock(scope: !1852, file: !566, line: 395, column: 3)
!1885 = !DILocalVariable(name: "is_right_quote", scope: !1886, file: !566, line: 397, type: !171)
!1886 = distinct !DILexicalBlock(scope: !1887, file: !566, line: 396, column: 5)
!1887 = distinct !DILexicalBlock(scope: !1884, file: !566, line: 395, column: 3)
!1888 = !DILocalVariable(name: "escaping", scope: !1886, file: !566, line: 398, type: !171)
!1889 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1886, file: !566, line: 399, type: !171)
!1890 = !DILocalVariable(name: "c", scope: !1886, file: !566, line: 417, type: !121)
!1891 = !DILabel(scope: !1892, name: "c_and_shell_escape", file: !566, line: 502)
!1892 = distinct !DILexicalBlock(scope: !1893, file: !566, line: 478, column: 9)
!1893 = distinct !DILexicalBlock(scope: !1886, file: !566, line: 419, column: 9)
!1894 = !DILabel(scope: !1892, name: "c_escape", file: !566, line: 507)
!1895 = !DILocalVariable(name: "m", scope: !1896, file: !566, line: 598, type: !116)
!1896 = distinct !DILexicalBlock(scope: !1893, file: !566, line: 596, column: 11)
!1897 = !DILocalVariable(name: "printable", scope: !1896, file: !566, line: 600, type: !171)
!1898 = !DILocalVariable(name: "mbs", scope: !1899, file: !566, line: 609, type: !653)
!1899 = distinct !DILexicalBlock(scope: !1900, file: !566, line: 608, column: 15)
!1900 = distinct !DILexicalBlock(scope: !1896, file: !566, line: 602, column: 17)
!1901 = !DILocalVariable(name: "w", scope: !1902, file: !566, line: 618, type: !546)
!1902 = distinct !DILexicalBlock(scope: !1903, file: !566, line: 617, column: 19)
!1903 = distinct !DILexicalBlock(scope: !1904, file: !566, line: 616, column: 17)
!1904 = distinct !DILexicalBlock(scope: !1899, file: !566, line: 616, column: 17)
!1905 = !DILocalVariable(name: "bytes", scope: !1902, file: !566, line: 619, type: !116)
!1906 = !DILocalVariable(name: "j", scope: !1907, file: !566, line: 648, type: !116)
!1907 = distinct !DILexicalBlock(scope: !1908, file: !566, line: 648, column: 29)
!1908 = distinct !DILexicalBlock(scope: !1909, file: !566, line: 647, column: 27)
!1909 = distinct !DILexicalBlock(scope: !1910, file: !566, line: 645, column: 29)
!1910 = distinct !DILexicalBlock(scope: !1911, file: !566, line: 636, column: 23)
!1911 = distinct !DILexicalBlock(scope: !1912, file: !566, line: 628, column: 30)
!1912 = distinct !DILexicalBlock(scope: !1913, file: !566, line: 623, column: 30)
!1913 = distinct !DILexicalBlock(scope: !1902, file: !566, line: 621, column: 25)
!1914 = !DILocalVariable(name: "ilim", scope: !1915, file: !566, line: 674, type: !116)
!1915 = distinct !DILexicalBlock(scope: !1916, file: !566, line: 671, column: 15)
!1916 = distinct !DILexicalBlock(scope: !1896, file: !566, line: 670, column: 17)
!1917 = !DILabel(scope: !1886, name: "store_escape", file: !566, line: 709)
!1918 = !DILabel(scope: !1886, name: "store_c", file: !566, line: 712)
!1919 = !DILabel(scope: !1852, name: "force_outer_quoting_style", file: !566, line: 753)
!1920 = distinct !DIAssignID()
!1921 = distinct !DIAssignID()
!1922 = distinct !DIAssignID()
!1923 = distinct !DIAssignID()
!1924 = distinct !DIAssignID()
!1925 = !DILocation(line: 0, scope: !1899)
!1926 = distinct !DIAssignID()
!1927 = !DILocation(line: 0, scope: !1902)
!1928 = !DILocation(line: 0, scope: !1852)
!1929 = !DILocation(line: 258, column: 25, scope: !1852)
!1930 = !DILocation(line: 258, column: 36, scope: !1852)
!1931 = !DILocation(line: 267, column: 3, scope: !1852)
!1932 = !DILocation(line: 261, column: 10, scope: !1852)
!1933 = !DILocation(line: 262, column: 15, scope: !1852)
!1934 = !DILocation(line: 263, column: 10, scope: !1852)
!1935 = !DILocation(line: 308, column: 2, scope: !1852)
!1936 = !DILocation(line: 311, column: 3, scope: !1852)
!1937 = !DILocation(line: 318, column: 11, scope: !1882)
!1938 = !DILocation(line: 319, column: 9, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1940, file: !566, line: 319, column: 9)
!1940 = distinct !DILexicalBlock(scope: !1941, file: !566, line: 319, column: 9)
!1941 = distinct !DILexicalBlock(scope: !1882, file: !566, line: 318, column: 11)
!1942 = !DILocation(line: 319, column: 9, scope: !1940)
!1943 = !DILocation(line: 0, scope: !644, inlinedAt: !1944)
!1944 = distinct !DILocation(line: 357, column: 26, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1946, file: !566, line: 335, column: 11)
!1946 = distinct !DILexicalBlock(scope: !1881, file: !566, line: 334, column: 13)
!1947 = !DILocation(line: 199, column: 29, scope: !644, inlinedAt: !1944)
!1948 = !DILocation(line: 201, column: 19, scope: !1949, inlinedAt: !1944)
!1949 = distinct !DILexicalBlock(scope: !644, file: !566, line: 201, column: 7)
!1950 = !DILocation(line: 201, column: 7, scope: !644, inlinedAt: !1944)
!1951 = !DILocation(line: 229, column: 3, scope: !644, inlinedAt: !1944)
!1952 = !DILocation(line: 230, column: 3, scope: !644, inlinedAt: !1944)
!1953 = !DILocalVariable(name: "ps", arg: 1, scope: !1954, file: !1699, line: 1135, type: !1957)
!1954 = distinct !DISubprogram(name: "mbszero", scope: !1699, file: !1699, line: 1135, type: !1955, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !590, retainedNodes: !1958)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{null, !1957}
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!1958 = !{!1953}
!1959 = !DILocation(line: 0, scope: !1954, inlinedAt: !1960)
!1960 = distinct !DILocation(line: 230, column: 18, scope: !644, inlinedAt: !1944)
!1961 = !DILocalVariable(name: "__dest", arg: 1, scope: !1962, file: !1708, line: 57, type: !122)
!1962 = distinct !DISubprogram(name: "memset", scope: !1708, file: !1708, line: 57, type: !1709, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !590, retainedNodes: !1963)
!1963 = !{!1961, !1964, !1965}
!1964 = !DILocalVariable(name: "__ch", arg: 2, scope: !1962, file: !1708, line: 57, type: !83)
!1965 = !DILocalVariable(name: "__len", arg: 3, scope: !1962, file: !1708, line: 57, type: !116)
!1966 = !DILocation(line: 0, scope: !1962, inlinedAt: !1967)
!1967 = distinct !DILocation(line: 1137, column: 3, scope: !1954, inlinedAt: !1960)
!1968 = !DILocation(line: 59, column: 10, scope: !1962, inlinedAt: !1967)
!1969 = !DILocation(line: 231, column: 7, scope: !1970, inlinedAt: !1944)
!1970 = distinct !DILexicalBlock(scope: !644, file: !566, line: 231, column: 7)
!1971 = !DILocation(line: 231, column: 40, scope: !1970, inlinedAt: !1944)
!1972 = !DILocation(line: 231, column: 45, scope: !1970, inlinedAt: !1944)
!1973 = !DILocation(line: 235, column: 1, scope: !644, inlinedAt: !1944)
!1974 = !DILocation(line: 0, scope: !644, inlinedAt: !1975)
!1975 = distinct !DILocation(line: 358, column: 27, scope: !1945)
!1976 = !DILocation(line: 199, column: 29, scope: !644, inlinedAt: !1975)
!1977 = !DILocation(line: 201, column: 19, scope: !1949, inlinedAt: !1975)
!1978 = !DILocation(line: 201, column: 7, scope: !644, inlinedAt: !1975)
!1979 = !DILocation(line: 229, column: 3, scope: !644, inlinedAt: !1975)
!1980 = !DILocation(line: 230, column: 3, scope: !644, inlinedAt: !1975)
!1981 = !DILocation(line: 0, scope: !1954, inlinedAt: !1982)
!1982 = distinct !DILocation(line: 230, column: 18, scope: !644, inlinedAt: !1975)
!1983 = !DILocation(line: 0, scope: !1962, inlinedAt: !1984)
!1984 = distinct !DILocation(line: 1137, column: 3, scope: !1954, inlinedAt: !1982)
!1985 = !DILocation(line: 59, column: 10, scope: !1962, inlinedAt: !1984)
!1986 = !DILocation(line: 231, column: 7, scope: !1970, inlinedAt: !1975)
!1987 = !DILocation(line: 231, column: 40, scope: !1970, inlinedAt: !1975)
!1988 = !DILocation(line: 231, column: 45, scope: !1970, inlinedAt: !1975)
!1989 = !DILocation(line: 235, column: 1, scope: !644, inlinedAt: !1975)
!1990 = !DILocation(line: 360, column: 13, scope: !1881)
!1991 = !DILocation(line: 0, scope: !1879)
!1992 = !DILocation(line: 361, column: 45, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1879, file: !566, line: 361, column: 11)
!1994 = !DILocation(line: 361, column: 11, scope: !1879)
!1995 = !DILocation(line: 362, column: 13, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1997, file: !566, line: 362, column: 13)
!1997 = distinct !DILexicalBlock(scope: !1993, file: !566, line: 362, column: 13)
!1998 = !DILocation(line: 362, column: 13, scope: !1997)
!1999 = !DILocation(line: 361, column: 52, scope: !1993)
!2000 = distinct !{!2000, !1994, !2001, !1020}
!2001 = !DILocation(line: 362, column: 13, scope: !1879)
!2002 = !DILocation(line: 365, column: 28, scope: !1881)
!2003 = !DILocation(line: 260, column: 10, scope: !1852)
!2004 = !DILocation(line: 367, column: 7, scope: !1882)
!2005 = !DILocation(line: 373, column: 7, scope: !1882)
!2006 = !DILocation(line: 381, column: 11, scope: !1882)
!2007 = !DILocation(line: 376, column: 11, scope: !1882)
!2008 = !DILocation(line: 382, column: 9, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !2010, file: !566, line: 382, column: 9)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !566, line: 382, column: 9)
!2011 = distinct !DILexicalBlock(scope: !1882, file: !566, line: 381, column: 11)
!2012 = !DILocation(line: 382, column: 9, scope: !2010)
!2013 = !DILocation(line: 389, column: 7, scope: !1882)
!2014 = !DILocation(line: 392, column: 7, scope: !1882)
!2015 = !DILocation(line: 0, scope: !1884)
!2016 = !DILocation(line: 395, column: 8, scope: !1884)
!2017 = !DILocation(line: 395, scope: !1884)
!2018 = !DILocation(line: 395, column: 34, scope: !1887)
!2019 = !DILocation(line: 395, column: 26, scope: !1887)
!2020 = !DILocation(line: 395, column: 48, scope: !1887)
!2021 = !DILocation(line: 395, column: 55, scope: !1887)
!2022 = !DILocation(line: 395, column: 3, scope: !1884)
!2023 = !DILocation(line: 395, column: 67, scope: !1887)
!2024 = !DILocation(line: 0, scope: !1886)
!2025 = !DILocation(line: 402, column: 11, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !1886, file: !566, line: 401, column: 11)
!2027 = !DILocation(line: 404, column: 17, scope: !2026)
!2028 = !DILocation(line: 405, column: 39, scope: !2026)
!2029 = !DILocation(line: 409, column: 32, scope: !2026)
!2030 = !DILocation(line: 405, column: 19, scope: !2026)
!2031 = !DILocation(line: 405, column: 15, scope: !2026)
!2032 = !DILocation(line: 410, column: 11, scope: !2026)
!2033 = !DILocation(line: 410, column: 25, scope: !2026)
!2034 = !DILocalVariable(name: "__s1", arg: 1, scope: !2035, file: !932, line: 974, type: !1149)
!2035 = distinct !DISubprogram(name: "memeq", scope: !932, file: !932, line: 974, type: !1668, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !590, retainedNodes: !2036)
!2036 = !{!2034, !2037, !2038}
!2037 = !DILocalVariable(name: "__s2", arg: 2, scope: !2035, file: !932, line: 974, type: !1149)
!2038 = !DILocalVariable(name: "__n", arg: 3, scope: !2035, file: !932, line: 974, type: !116)
!2039 = !DILocation(line: 0, scope: !2035, inlinedAt: !2040)
!2040 = distinct !DILocation(line: 410, column: 14, scope: !2026)
!2041 = !DILocation(line: 976, column: 11, scope: !2035, inlinedAt: !2040)
!2042 = !DILocation(line: 976, column: 10, scope: !2035, inlinedAt: !2040)
!2043 = !DILocation(line: 401, column: 11, scope: !1886)
!2044 = !DILocation(line: 417, column: 25, scope: !1886)
!2045 = !DILocation(line: 418, column: 7, scope: !1886)
!2046 = !DILocation(line: 421, column: 15, scope: !1893)
!2047 = !DILocation(line: 423, column: 15, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2049, file: !566, line: 423, column: 15)
!2049 = distinct !DILexicalBlock(scope: !2050, file: !566, line: 422, column: 13)
!2050 = distinct !DILexicalBlock(scope: !1893, file: !566, line: 421, column: 15)
!2051 = !DILocation(line: 423, column: 15, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2048, file: !566, line: 423, column: 15)
!2053 = !DILocation(line: 423, column: 15, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2055, file: !566, line: 423, column: 15)
!2055 = distinct !DILexicalBlock(scope: !2056, file: !566, line: 423, column: 15)
!2056 = distinct !DILexicalBlock(scope: !2052, file: !566, line: 423, column: 15)
!2057 = !DILocation(line: 423, column: 15, scope: !2055)
!2058 = !DILocation(line: 423, column: 15, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2060, file: !566, line: 423, column: 15)
!2060 = distinct !DILexicalBlock(scope: !2056, file: !566, line: 423, column: 15)
!2061 = !DILocation(line: 423, column: 15, scope: !2060)
!2062 = !DILocation(line: 423, column: 15, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2064, file: !566, line: 423, column: 15)
!2064 = distinct !DILexicalBlock(scope: !2056, file: !566, line: 423, column: 15)
!2065 = !DILocation(line: 423, column: 15, scope: !2064)
!2066 = !DILocation(line: 423, column: 15, scope: !2056)
!2067 = !DILocation(line: 423, column: 15, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2069, file: !566, line: 423, column: 15)
!2069 = distinct !DILexicalBlock(scope: !2048, file: !566, line: 423, column: 15)
!2070 = !DILocation(line: 423, column: 15, scope: !2069)
!2071 = !DILocation(line: 431, column: 19, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2049, file: !566, line: 430, column: 19)
!2073 = !DILocation(line: 431, column: 24, scope: !2072)
!2074 = !DILocation(line: 431, column: 28, scope: !2072)
!2075 = !DILocation(line: 431, column: 38, scope: !2072)
!2076 = !DILocation(line: 431, column: 48, scope: !2072)
!2077 = !DILocation(line: 431, column: 59, scope: !2072)
!2078 = !DILocation(line: 433, column: 19, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2080, file: !566, line: 433, column: 19)
!2080 = distinct !DILexicalBlock(scope: !2081, file: !566, line: 433, column: 19)
!2081 = distinct !DILexicalBlock(scope: !2072, file: !566, line: 432, column: 17)
!2082 = !DILocation(line: 433, column: 19, scope: !2080)
!2083 = !DILocation(line: 434, column: 19, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2085, file: !566, line: 434, column: 19)
!2085 = distinct !DILexicalBlock(scope: !2081, file: !566, line: 434, column: 19)
!2086 = !DILocation(line: 434, column: 19, scope: !2085)
!2087 = !DILocation(line: 435, column: 17, scope: !2081)
!2088 = !DILocation(line: 442, column: 20, scope: !2050)
!2089 = !DILocation(line: 447, column: 11, scope: !1893)
!2090 = !DILocation(line: 450, column: 19, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !1893, file: !566, line: 448, column: 13)
!2092 = !DILocation(line: 456, column: 19, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2091, file: !566, line: 455, column: 19)
!2094 = !DILocation(line: 456, column: 24, scope: !2093)
!2095 = !DILocation(line: 456, column: 28, scope: !2093)
!2096 = !DILocation(line: 456, column: 38, scope: !2093)
!2097 = !DILocation(line: 456, column: 41, scope: !2093)
!2098 = !DILocation(line: 456, column: 52, scope: !2093)
!2099 = !DILocation(line: 455, column: 19, scope: !2091)
!2100 = !DILocation(line: 457, column: 25, scope: !2093)
!2101 = !DILocation(line: 457, column: 17, scope: !2093)
!2102 = !DILocation(line: 464, column: 25, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2093, file: !566, line: 458, column: 19)
!2104 = !DILocation(line: 468, column: 21, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2106, file: !566, line: 468, column: 21)
!2106 = distinct !DILexicalBlock(scope: !2103, file: !566, line: 468, column: 21)
!2107 = !DILocation(line: 468, column: 21, scope: !2106)
!2108 = !DILocation(line: 469, column: 21, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2110, file: !566, line: 469, column: 21)
!2110 = distinct !DILexicalBlock(scope: !2103, file: !566, line: 469, column: 21)
!2111 = !DILocation(line: 469, column: 21, scope: !2110)
!2112 = !DILocation(line: 470, column: 21, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2114, file: !566, line: 470, column: 21)
!2114 = distinct !DILexicalBlock(scope: !2103, file: !566, line: 470, column: 21)
!2115 = !DILocation(line: 470, column: 21, scope: !2114)
!2116 = !DILocation(line: 471, column: 21, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2118, file: !566, line: 471, column: 21)
!2118 = distinct !DILexicalBlock(scope: !2103, file: !566, line: 471, column: 21)
!2119 = !DILocation(line: 471, column: 21, scope: !2118)
!2120 = !DILocation(line: 472, column: 21, scope: !2103)
!2121 = !DILocation(line: 482, column: 33, scope: !1892)
!2122 = !DILocation(line: 483, column: 33, scope: !1892)
!2123 = !DILocation(line: 485, column: 33, scope: !1892)
!2124 = !DILocation(line: 486, column: 33, scope: !1892)
!2125 = !DILocation(line: 487, column: 33, scope: !1892)
!2126 = !DILocation(line: 490, column: 17, scope: !1892)
!2127 = !DILocation(line: 492, column: 21, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2129, file: !566, line: 491, column: 15)
!2129 = distinct !DILexicalBlock(scope: !1892, file: !566, line: 490, column: 17)
!2130 = !DILocation(line: 499, column: 35, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !1892, file: !566, line: 499, column: 17)
!2132 = !DILocation(line: 0, scope: !1892)
!2133 = !DILocation(line: 502, column: 11, scope: !1892)
!2134 = !DILocation(line: 504, column: 17, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !1892, file: !566, line: 503, column: 17)
!2136 = !DILocation(line: 507, column: 11, scope: !1892)
!2137 = !DILocation(line: 508, column: 17, scope: !1892)
!2138 = !DILocation(line: 517, column: 15, scope: !1893)
!2139 = !DILocation(line: 517, column: 40, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !1893, file: !566, line: 517, column: 15)
!2141 = !DILocation(line: 517, column: 47, scope: !2140)
!2142 = !DILocation(line: 517, column: 18, scope: !2140)
!2143 = !DILocation(line: 521, column: 17, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !1893, file: !566, line: 521, column: 15)
!2145 = !DILocation(line: 521, column: 15, scope: !1893)
!2146 = !DILocation(line: 525, column: 11, scope: !1893)
!2147 = !DILocation(line: 537, column: 15, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !1893, file: !566, line: 536, column: 15)
!2149 = !DILocation(line: 536, column: 15, scope: !1893)
!2150 = !DILocation(line: 544, column: 15, scope: !1893)
!2151 = !DILocation(line: 546, column: 19, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2153, file: !566, line: 545, column: 13)
!2153 = distinct !DILexicalBlock(scope: !1893, file: !566, line: 544, column: 15)
!2154 = !DILocation(line: 549, column: 19, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2152, file: !566, line: 549, column: 19)
!2156 = !DILocation(line: 549, column: 30, scope: !2155)
!2157 = !DILocation(line: 558, column: 15, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2159, file: !566, line: 558, column: 15)
!2159 = distinct !DILexicalBlock(scope: !2152, file: !566, line: 558, column: 15)
!2160 = !DILocation(line: 558, column: 15, scope: !2159)
!2161 = !DILocation(line: 559, column: 15, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2163, file: !566, line: 559, column: 15)
!2163 = distinct !DILexicalBlock(scope: !2152, file: !566, line: 559, column: 15)
!2164 = !DILocation(line: 559, column: 15, scope: !2163)
!2165 = !DILocation(line: 560, column: 15, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2167, file: !566, line: 560, column: 15)
!2167 = distinct !DILexicalBlock(scope: !2152, file: !566, line: 560, column: 15)
!2168 = !DILocation(line: 560, column: 15, scope: !2167)
!2169 = !DILocation(line: 562, column: 13, scope: !2152)
!2170 = !DILocation(line: 602, column: 17, scope: !1896)
!2171 = !DILocation(line: 0, scope: !1896)
!2172 = !DILocation(line: 605, column: 29, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !1900, file: !566, line: 603, column: 15)
!2174 = !DILocation(line: 605, column: 41, scope: !2173)
!2175 = !DILocation(line: 606, column: 15, scope: !2173)
!2176 = !DILocation(line: 609, column: 17, scope: !1899)
!2177 = !DILocation(line: 0, scope: !1954, inlinedAt: !2178)
!2178 = distinct !DILocation(line: 609, column: 32, scope: !1899)
!2179 = !DILocation(line: 0, scope: !1962, inlinedAt: !2180)
!2180 = distinct !DILocation(line: 1137, column: 3, scope: !1954, inlinedAt: !2178)
!2181 = !DILocation(line: 59, column: 10, scope: !1962, inlinedAt: !2180)
!2182 = !DILocation(line: 613, column: 29, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !1899, file: !566, line: 613, column: 21)
!2184 = !DILocation(line: 613, column: 21, scope: !1899)
!2185 = !DILocation(line: 614, column: 29, scope: !2183)
!2186 = !DILocation(line: 614, column: 19, scope: !2183)
!2187 = !DILocation(line: 618, column: 21, scope: !1902)
!2188 = !DILocation(line: 620, column: 54, scope: !1902)
!2189 = !DILocation(line: 619, column: 36, scope: !1902)
!2190 = !DILocation(line: 621, column: 25, scope: !1902)
!2191 = !DILocation(line: 631, column: 38, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !1911, file: !566, line: 629, column: 23)
!2193 = !DILocation(line: 631, column: 48, scope: !2192)
!2194 = !DILocation(line: 631, column: 25, scope: !2192)
!2195 = !DILocation(line: 626, column: 25, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !1912, file: !566, line: 624, column: 23)
!2197 = !DILocation(line: 631, column: 51, scope: !2192)
!2198 = !DILocation(line: 632, column: 28, scope: !2192)
!2199 = !DILocation(line: 631, column: 34, scope: !2192)
!2200 = distinct !{!2200, !2194, !2198, !1020}
!2201 = !DILocation(line: 0, scope: !1907)
!2202 = !DILocation(line: 646, column: 29, scope: !1909)
!2203 = !DILocation(line: 648, column: 29, scope: !1907)
!2204 = !DILocation(line: 649, column: 39, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !1907, file: !566, line: 648, column: 29)
!2206 = !DILocation(line: 649, column: 31, scope: !2205)
!2207 = !DILocation(line: 648, column: 60, scope: !2205)
!2208 = !DILocation(line: 648, column: 50, scope: !2205)
!2209 = distinct !{!2209, !2203, !2210, !1020}
!2210 = !DILocation(line: 654, column: 33, scope: !1907)
!2211 = !DILocation(line: 657, column: 43, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !1910, file: !566, line: 657, column: 29)
!2213 = !DILocalVariable(name: "wc", arg: 1, scope: !2214, file: !2215, line: 865, type: !2218)
!2214 = distinct !DISubprogram(name: "c32isprint", scope: !2215, file: !2215, line: 865, type: !2216, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !590, retainedNodes: !2220)
!2215 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2216 = !DISubroutineType(types: !2217)
!2217 = !{!83, !2218}
!2218 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2219, line: 20, baseType: !90)
!2219 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2220 = !{!2213}
!2221 = !DILocation(line: 0, scope: !2214, inlinedAt: !2222)
!2222 = distinct !DILocation(line: 657, column: 31, scope: !2212)
!2223 = !DILocation(line: 871, column: 10, scope: !2214, inlinedAt: !2222)
!2224 = !DILocation(line: 657, column: 31, scope: !2212)
!2225 = !DILocation(line: 664, column: 23, scope: !1902)
!2226 = !DILocation(line: 665, column: 19, scope: !1903)
!2227 = !DILocation(line: 666, column: 15, scope: !1900)
!2228 = !DILocation(line: 753, column: 2, scope: !1852)
!2229 = !DILocation(line: 756, column: 51, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !1852, file: !566, line: 756, column: 7)
!2231 = !DILocation(line: 0, scope: !1900)
!2232 = !DILocation(line: 670, column: 19, scope: !1916)
!2233 = !DILocation(line: 670, column: 23, scope: !1916)
!2234 = !DILocation(line: 674, column: 33, scope: !1915)
!2235 = !DILocation(line: 0, scope: !1915)
!2236 = !DILocation(line: 676, column: 17, scope: !1915)
!2237 = !DILocation(line: 678, column: 43, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2239, file: !566, line: 678, column: 25)
!2239 = distinct !DILexicalBlock(scope: !2240, file: !566, line: 677, column: 19)
!2240 = distinct !DILexicalBlock(scope: !2241, file: !566, line: 676, column: 17)
!2241 = distinct !DILexicalBlock(scope: !1915, file: !566, line: 676, column: 17)
!2242 = !DILocation(line: 680, column: 25, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2244, file: !566, line: 680, column: 25)
!2244 = distinct !DILexicalBlock(scope: !2238, file: !566, line: 679, column: 23)
!2245 = !DILocation(line: 680, column: 25, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2243, file: !566, line: 680, column: 25)
!2247 = !DILocation(line: 680, column: 25, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2249, file: !566, line: 680, column: 25)
!2249 = distinct !DILexicalBlock(scope: !2250, file: !566, line: 680, column: 25)
!2250 = distinct !DILexicalBlock(scope: !2246, file: !566, line: 680, column: 25)
!2251 = !DILocation(line: 680, column: 25, scope: !2249)
!2252 = !DILocation(line: 680, column: 25, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2254, file: !566, line: 680, column: 25)
!2254 = distinct !DILexicalBlock(scope: !2250, file: !566, line: 680, column: 25)
!2255 = !DILocation(line: 680, column: 25, scope: !2254)
!2256 = !DILocation(line: 680, column: 25, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2258, file: !566, line: 680, column: 25)
!2258 = distinct !DILexicalBlock(scope: !2250, file: !566, line: 680, column: 25)
!2259 = !DILocation(line: 680, column: 25, scope: !2258)
!2260 = !DILocation(line: 680, column: 25, scope: !2250)
!2261 = !DILocation(line: 680, column: 25, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2263, file: !566, line: 680, column: 25)
!2263 = distinct !DILexicalBlock(scope: !2243, file: !566, line: 680, column: 25)
!2264 = !DILocation(line: 680, column: 25, scope: !2263)
!2265 = !DILocation(line: 681, column: 25, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2267, file: !566, line: 681, column: 25)
!2267 = distinct !DILexicalBlock(scope: !2244, file: !566, line: 681, column: 25)
!2268 = !DILocation(line: 681, column: 25, scope: !2267)
!2269 = !DILocation(line: 682, column: 25, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2271, file: !566, line: 682, column: 25)
!2271 = distinct !DILexicalBlock(scope: !2244, file: !566, line: 682, column: 25)
!2272 = !DILocation(line: 682, column: 25, scope: !2271)
!2273 = !DILocation(line: 683, column: 38, scope: !2244)
!2274 = !DILocation(line: 683, column: 33, scope: !2244)
!2275 = !DILocation(line: 684, column: 23, scope: !2244)
!2276 = !DILocation(line: 685, column: 30, scope: !2238)
!2277 = !DILocation(line: 687, column: 25, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2279, file: !566, line: 687, column: 25)
!2279 = distinct !DILexicalBlock(scope: !2280, file: !566, line: 687, column: 25)
!2280 = distinct !DILexicalBlock(scope: !2281, file: !566, line: 686, column: 23)
!2281 = distinct !DILexicalBlock(scope: !2238, file: !566, line: 685, column: 30)
!2282 = !DILocation(line: 687, column: 25, scope: !2279)
!2283 = !DILocation(line: 689, column: 23, scope: !2280)
!2284 = !DILocation(line: 690, column: 35, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2239, file: !566, line: 690, column: 25)
!2286 = !DILocation(line: 690, column: 30, scope: !2285)
!2287 = !DILocation(line: 690, column: 25, scope: !2239)
!2288 = !DILocation(line: 692, column: 21, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2290, file: !566, line: 692, column: 21)
!2290 = distinct !DILexicalBlock(scope: !2239, file: !566, line: 692, column: 21)
!2291 = !DILocation(line: 692, column: 21, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2293, file: !566, line: 692, column: 21)
!2293 = distinct !DILexicalBlock(scope: !2294, file: !566, line: 692, column: 21)
!2294 = distinct !DILexicalBlock(scope: !2289, file: !566, line: 692, column: 21)
!2295 = !DILocation(line: 692, column: 21, scope: !2293)
!2296 = !DILocation(line: 692, column: 21, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2298, file: !566, line: 692, column: 21)
!2298 = distinct !DILexicalBlock(scope: !2294, file: !566, line: 692, column: 21)
!2299 = !DILocation(line: 692, column: 21, scope: !2298)
!2300 = !DILocation(line: 692, column: 21, scope: !2294)
!2301 = !DILocation(line: 0, scope: !2239)
!2302 = !DILocation(line: 693, column: 21, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2304, file: !566, line: 693, column: 21)
!2304 = distinct !DILexicalBlock(scope: !2239, file: !566, line: 693, column: 21)
!2305 = !DILocation(line: 693, column: 21, scope: !2304)
!2306 = !DILocation(line: 694, column: 25, scope: !2239)
!2307 = !DILocation(line: 676, column: 17, scope: !2240)
!2308 = distinct !{!2308, !2309, !2310}
!2309 = !DILocation(line: 676, column: 17, scope: !2241)
!2310 = !DILocation(line: 695, column: 19, scope: !2241)
!2311 = !DILocation(line: 409, column: 30, scope: !2026)
!2312 = !DILocation(line: 702, column: 34, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !1886, file: !566, line: 702, column: 11)
!2314 = !DILocation(line: 704, column: 14, scope: !2313)
!2315 = !DILocation(line: 705, column: 14, scope: !2313)
!2316 = !DILocation(line: 705, column: 35, scope: !2313)
!2317 = !DILocation(line: 705, column: 17, scope: !2313)
!2318 = !DILocation(line: 705, column: 47, scope: !2313)
!2319 = !DILocation(line: 705, column: 65, scope: !2313)
!2320 = !DILocation(line: 706, column: 11, scope: !2313)
!2321 = !DILocation(line: 702, column: 11, scope: !1886)
!2322 = !DILocation(line: 395, column: 15, scope: !1884)
!2323 = !DILocation(line: 709, column: 5, scope: !1886)
!2324 = !DILocation(line: 710, column: 7, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !1886, file: !566, line: 710, column: 7)
!2326 = !DILocation(line: 710, column: 7, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2325, file: !566, line: 710, column: 7)
!2328 = !DILocation(line: 710, column: 7, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2330, file: !566, line: 710, column: 7)
!2330 = distinct !DILexicalBlock(scope: !2331, file: !566, line: 710, column: 7)
!2331 = distinct !DILexicalBlock(scope: !2327, file: !566, line: 710, column: 7)
!2332 = !DILocation(line: 710, column: 7, scope: !2330)
!2333 = !DILocation(line: 710, column: 7, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2335, file: !566, line: 710, column: 7)
!2335 = distinct !DILexicalBlock(scope: !2331, file: !566, line: 710, column: 7)
!2336 = !DILocation(line: 710, column: 7, scope: !2335)
!2337 = !DILocation(line: 710, column: 7, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2339, file: !566, line: 710, column: 7)
!2339 = distinct !DILexicalBlock(scope: !2331, file: !566, line: 710, column: 7)
!2340 = !DILocation(line: 710, column: 7, scope: !2339)
!2341 = !DILocation(line: 710, column: 7, scope: !2331)
!2342 = !DILocation(line: 710, column: 7, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2344, file: !566, line: 710, column: 7)
!2344 = distinct !DILexicalBlock(scope: !2325, file: !566, line: 710, column: 7)
!2345 = !DILocation(line: 710, column: 7, scope: !2344)
!2346 = !DILocation(line: 712, column: 5, scope: !1886)
!2347 = !DILocation(line: 713, column: 7, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2349, file: !566, line: 713, column: 7)
!2349 = distinct !DILexicalBlock(scope: !1886, file: !566, line: 713, column: 7)
!2350 = !DILocation(line: 417, column: 21, scope: !1886)
!2351 = !DILocation(line: 713, column: 7, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2353, file: !566, line: 713, column: 7)
!2353 = distinct !DILexicalBlock(scope: !2354, file: !566, line: 713, column: 7)
!2354 = distinct !DILexicalBlock(scope: !2348, file: !566, line: 713, column: 7)
!2355 = !DILocation(line: 713, column: 7, scope: !2353)
!2356 = !DILocation(line: 713, column: 7, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2358, file: !566, line: 713, column: 7)
!2358 = distinct !DILexicalBlock(scope: !2354, file: !566, line: 713, column: 7)
!2359 = !DILocation(line: 713, column: 7, scope: !2358)
!2360 = !DILocation(line: 713, column: 7, scope: !2354)
!2361 = !DILocation(line: 714, column: 7, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2363, file: !566, line: 714, column: 7)
!2363 = distinct !DILexicalBlock(scope: !1886, file: !566, line: 714, column: 7)
!2364 = !DILocation(line: 714, column: 7, scope: !2363)
!2365 = !DILocation(line: 716, column: 11, scope: !1886)
!2366 = !DILocation(line: 718, column: 5, scope: !1887)
!2367 = !DILocation(line: 395, column: 82, scope: !1887)
!2368 = !DILocation(line: 395, column: 3, scope: !1887)
!2369 = distinct !{!2369, !2022, !2370, !1020}
!2370 = !DILocation(line: 718, column: 5, scope: !1884)
!2371 = !DILocation(line: 720, column: 11, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !1852, file: !566, line: 720, column: 7)
!2373 = !DILocation(line: 720, column: 16, scope: !2372)
!2374 = !DILocation(line: 728, column: 51, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !1852, file: !566, line: 728, column: 7)
!2376 = !DILocation(line: 731, column: 11, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2375, file: !566, line: 730, column: 5)
!2378 = !DILocation(line: 732, column: 16, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2377, file: !566, line: 731, column: 11)
!2380 = !DILocation(line: 732, column: 9, scope: !2379)
!2381 = !DILocation(line: 736, column: 18, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2379, file: !566, line: 736, column: 16)
!2383 = !DILocation(line: 736, column: 29, scope: !2382)
!2384 = !DILocation(line: 745, column: 7, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !1852, file: !566, line: 745, column: 7)
!2386 = !DILocation(line: 745, column: 20, scope: !2385)
!2387 = !DILocation(line: 746, column: 12, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2389, file: !566, line: 746, column: 5)
!2389 = distinct !DILexicalBlock(scope: !2385, file: !566, line: 746, column: 5)
!2390 = !DILocation(line: 746, column: 5, scope: !2389)
!2391 = !DILocation(line: 747, column: 7, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2393, file: !566, line: 747, column: 7)
!2393 = distinct !DILexicalBlock(scope: !2388, file: !566, line: 747, column: 7)
!2394 = !DILocation(line: 747, column: 7, scope: !2393)
!2395 = !DILocation(line: 746, column: 39, scope: !2388)
!2396 = distinct !{!2396, !2390, !2397, !1020}
!2397 = !DILocation(line: 747, column: 7, scope: !2389)
!2398 = !DILocation(line: 749, column: 11, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !1852, file: !566, line: 749, column: 7)
!2400 = !DILocation(line: 749, column: 7, scope: !1852)
!2401 = !DILocation(line: 750, column: 5, scope: !2399)
!2402 = !DILocation(line: 750, column: 17, scope: !2399)
!2403 = !DILocation(line: 756, column: 21, scope: !2230)
!2404 = !DILocation(line: 760, column: 42, scope: !1852)
!2405 = !DILocation(line: 758, column: 10, scope: !1852)
!2406 = !DILocation(line: 758, column: 3, scope: !1852)
!2407 = !DILocation(line: 762, column: 1, scope: !1852)
!2408 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1128, file: !1128, line: 98, type: !2409, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{!116}
!2411 = !DISubprogram(name: "strlen", scope: !1117, file: !1117, line: 407, type: !2412, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2412 = !DISubroutineType(types: !2413)
!2413 = !{!118, !119}
!2414 = !DISubprogram(name: "iswprint", scope: !2415, file: !2415, line: 120, type: !2216, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2415 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2416 = distinct !DISubprogram(name: "quotearg_alloc", scope: !566, file: !566, line: 788, type: !2417, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !590, retainedNodes: !2419)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{!85, !119, !116, !1745}
!2419 = !{!2420, !2421, !2422}
!2420 = !DILocalVariable(name: "arg", arg: 1, scope: !2416, file: !566, line: 788, type: !119)
!2421 = !DILocalVariable(name: "argsize", arg: 2, scope: !2416, file: !566, line: 788, type: !116)
!2422 = !DILocalVariable(name: "o", arg: 3, scope: !2416, file: !566, line: 789, type: !1745)
!2423 = !DILocation(line: 0, scope: !2416)
!2424 = !DILocalVariable(name: "arg", arg: 1, scope: !2425, file: !566, line: 801, type: !119)
!2425 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !566, file: !566, line: 801, type: !2426, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !590, retainedNodes: !2428)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{!85, !119, !116, !816, !1745}
!2428 = !{!2424, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436}
!2429 = !DILocalVariable(name: "argsize", arg: 2, scope: !2425, file: !566, line: 801, type: !116)
!2430 = !DILocalVariable(name: "size", arg: 3, scope: !2425, file: !566, line: 801, type: !816)
!2431 = !DILocalVariable(name: "o", arg: 4, scope: !2425, file: !566, line: 802, type: !1745)
!2432 = !DILocalVariable(name: "p", scope: !2425, file: !566, line: 804, type: !1745)
!2433 = !DILocalVariable(name: "saved_errno", scope: !2425, file: !566, line: 805, type: !83)
!2434 = !DILocalVariable(name: "flags", scope: !2425, file: !566, line: 807, type: !83)
!2435 = !DILocalVariable(name: "bufsize", scope: !2425, file: !566, line: 808, type: !116)
!2436 = !DILocalVariable(name: "buf", scope: !2425, file: !566, line: 812, type: !85)
!2437 = !DILocation(line: 0, scope: !2425, inlinedAt: !2438)
!2438 = distinct !DILocation(line: 791, column: 10, scope: !2416)
!2439 = !DILocation(line: 804, column: 37, scope: !2425, inlinedAt: !2438)
!2440 = !DILocation(line: 805, column: 21, scope: !2425, inlinedAt: !2438)
!2441 = !DILocation(line: 807, column: 18, scope: !2425, inlinedAt: !2438)
!2442 = !DILocation(line: 807, column: 24, scope: !2425, inlinedAt: !2438)
!2443 = !DILocation(line: 808, column: 72, scope: !2425, inlinedAt: !2438)
!2444 = !DILocation(line: 809, column: 56, scope: !2425, inlinedAt: !2438)
!2445 = !DILocation(line: 810, column: 49, scope: !2425, inlinedAt: !2438)
!2446 = !DILocation(line: 811, column: 49, scope: !2425, inlinedAt: !2438)
!2447 = !DILocation(line: 808, column: 20, scope: !2425, inlinedAt: !2438)
!2448 = !DILocation(line: 811, column: 62, scope: !2425, inlinedAt: !2438)
!2449 = !DILocation(line: 812, column: 15, scope: !2425, inlinedAt: !2438)
!2450 = !DILocation(line: 813, column: 60, scope: !2425, inlinedAt: !2438)
!2451 = !DILocation(line: 815, column: 32, scope: !2425, inlinedAt: !2438)
!2452 = !DILocation(line: 815, column: 47, scope: !2425, inlinedAt: !2438)
!2453 = !DILocation(line: 813, column: 3, scope: !2425, inlinedAt: !2438)
!2454 = !DILocation(line: 816, column: 9, scope: !2425, inlinedAt: !2438)
!2455 = !DILocation(line: 791, column: 3, scope: !2416)
!2456 = !DILocation(line: 0, scope: !2425)
!2457 = !DILocation(line: 804, column: 37, scope: !2425)
!2458 = !DILocation(line: 805, column: 21, scope: !2425)
!2459 = !DILocation(line: 807, column: 18, scope: !2425)
!2460 = !DILocation(line: 807, column: 27, scope: !2425)
!2461 = !DILocation(line: 807, column: 24, scope: !2425)
!2462 = !DILocation(line: 808, column: 72, scope: !2425)
!2463 = !DILocation(line: 809, column: 56, scope: !2425)
!2464 = !DILocation(line: 810, column: 49, scope: !2425)
!2465 = !DILocation(line: 811, column: 49, scope: !2425)
!2466 = !DILocation(line: 808, column: 20, scope: !2425)
!2467 = !DILocation(line: 811, column: 62, scope: !2425)
!2468 = !DILocation(line: 812, column: 15, scope: !2425)
!2469 = !DILocation(line: 813, column: 60, scope: !2425)
!2470 = !DILocation(line: 815, column: 32, scope: !2425)
!2471 = !DILocation(line: 815, column: 47, scope: !2425)
!2472 = !DILocation(line: 813, column: 3, scope: !2425)
!2473 = !DILocation(line: 816, column: 9, scope: !2425)
!2474 = !DILocation(line: 817, column: 7, scope: !2425)
!2475 = !DILocation(line: 818, column: 11, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2425, file: !566, line: 817, column: 7)
!2477 = !{!1248, !1248, i64 0}
!2478 = !DILocation(line: 818, column: 5, scope: !2476)
!2479 = !DILocation(line: 819, column: 3, scope: !2425)
!2480 = distinct !DISubprogram(name: "quotearg_free", scope: !566, file: !566, line: 837, type: !521, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !590, retainedNodes: !2481)
!2481 = !{!2482, !2483}
!2482 = !DILocalVariable(name: "sv", scope: !2480, file: !566, line: 839, type: !667)
!2483 = !DILocalVariable(name: "i", scope: !2484, file: !566, line: 840, type: !83)
!2484 = distinct !DILexicalBlock(scope: !2480, file: !566, line: 840, column: 3)
!2485 = !DILocation(line: 839, column: 24, scope: !2480)
!2486 = !DILocation(line: 0, scope: !2480)
!2487 = !DILocation(line: 0, scope: !2484)
!2488 = !DILocation(line: 840, column: 21, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2484, file: !566, line: 840, column: 3)
!2490 = !DILocation(line: 840, column: 3, scope: !2484)
!2491 = !DILocation(line: 842, column: 13, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2480, file: !566, line: 842, column: 7)
!2493 = !{!2494, !883, i64 8}
!2494 = !{!"slotvec", !1248, i64 0, !883, i64 8}
!2495 = !DILocation(line: 842, column: 17, scope: !2492)
!2496 = !DILocation(line: 842, column: 7, scope: !2480)
!2497 = !DILocation(line: 841, column: 17, scope: !2489)
!2498 = !DILocation(line: 841, column: 5, scope: !2489)
!2499 = !DILocation(line: 840, column: 32, scope: !2489)
!2500 = distinct !{!2500, !2490, !2501, !1020}
!2501 = !DILocation(line: 841, column: 20, scope: !2484)
!2502 = !DILocation(line: 844, column: 7, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2492, file: !566, line: 843, column: 5)
!2504 = !DILocation(line: 845, column: 21, scope: !2503)
!2505 = !{!2494, !1248, i64 0}
!2506 = !DILocation(line: 846, column: 20, scope: !2503)
!2507 = !DILocation(line: 847, column: 5, scope: !2503)
!2508 = !DILocation(line: 848, column: 10, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2480, file: !566, line: 848, column: 7)
!2510 = !DILocation(line: 848, column: 7, scope: !2480)
!2511 = !DILocation(line: 850, column: 7, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2509, file: !566, line: 849, column: 5)
!2513 = !DILocation(line: 851, column: 15, scope: !2512)
!2514 = !DILocation(line: 852, column: 5, scope: !2512)
!2515 = !DILocation(line: 853, column: 10, scope: !2480)
!2516 = !DILocation(line: 854, column: 1, scope: !2480)
!2517 = !DISubprogram(name: "free", scope: !1699, file: !1699, line: 786, type: !2518, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{null, !122}
!2520 = distinct !DISubprogram(name: "quotearg_n", scope: !566, file: !566, line: 919, type: !1122, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !590, retainedNodes: !2521)
!2521 = !{!2522, !2523}
!2522 = !DILocalVariable(name: "n", arg: 1, scope: !2520, file: !566, line: 919, type: !83)
!2523 = !DILocalVariable(name: "arg", arg: 2, scope: !2520, file: !566, line: 919, type: !119)
!2524 = !DILocation(line: 0, scope: !2520)
!2525 = !DILocation(line: 921, column: 10, scope: !2520)
!2526 = !DILocation(line: 921, column: 3, scope: !2520)
!2527 = distinct !DISubprogram(name: "quotearg_n_options", scope: !566, file: !566, line: 866, type: !2528, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !590, retainedNodes: !2530)
!2528 = !DISubroutineType(types: !2529)
!2529 = !{!85, !83, !119, !116, !1745}
!2530 = !{!2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2541, !2542, !2544, !2545, !2546}
!2531 = !DILocalVariable(name: "n", arg: 1, scope: !2527, file: !566, line: 866, type: !83)
!2532 = !DILocalVariable(name: "arg", arg: 2, scope: !2527, file: !566, line: 866, type: !119)
!2533 = !DILocalVariable(name: "argsize", arg: 3, scope: !2527, file: !566, line: 866, type: !116)
!2534 = !DILocalVariable(name: "options", arg: 4, scope: !2527, file: !566, line: 867, type: !1745)
!2535 = !DILocalVariable(name: "saved_errno", scope: !2527, file: !566, line: 869, type: !83)
!2536 = !DILocalVariable(name: "sv", scope: !2527, file: !566, line: 871, type: !667)
!2537 = !DILocalVariable(name: "nslots_max", scope: !2527, file: !566, line: 873, type: !83)
!2538 = !DILocalVariable(name: "preallocated", scope: !2539, file: !566, line: 879, type: !171)
!2539 = distinct !DILexicalBlock(scope: !2540, file: !566, line: 878, column: 5)
!2540 = distinct !DILexicalBlock(scope: !2527, file: !566, line: 877, column: 7)
!2541 = !DILocalVariable(name: "new_nslots", scope: !2539, file: !566, line: 880, type: !829)
!2542 = !DILocalVariable(name: "size", scope: !2543, file: !566, line: 891, type: !116)
!2543 = distinct !DILexicalBlock(scope: !2527, file: !566, line: 890, column: 3)
!2544 = !DILocalVariable(name: "val", scope: !2543, file: !566, line: 892, type: !85)
!2545 = !DILocalVariable(name: "flags", scope: !2543, file: !566, line: 894, type: !83)
!2546 = !DILocalVariable(name: "qsize", scope: !2543, file: !566, line: 895, type: !116)
!2547 = distinct !DIAssignID()
!2548 = !DILocation(line: 0, scope: !2539)
!2549 = !DILocation(line: 0, scope: !2527)
!2550 = !DILocation(line: 869, column: 21, scope: !2527)
!2551 = !DILocation(line: 871, column: 24, scope: !2527)
!2552 = !DILocation(line: 874, column: 17, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2527, file: !566, line: 874, column: 7)
!2554 = !DILocation(line: 875, column: 5, scope: !2553)
!2555 = !DILocation(line: 877, column: 7, scope: !2540)
!2556 = !DILocation(line: 877, column: 14, scope: !2540)
!2557 = !DILocation(line: 877, column: 7, scope: !2527)
!2558 = !DILocation(line: 879, column: 31, scope: !2539)
!2559 = !DILocation(line: 880, column: 7, scope: !2539)
!2560 = !DILocation(line: 880, column: 26, scope: !2539)
!2561 = !DILocation(line: 880, column: 13, scope: !2539)
!2562 = distinct !DIAssignID()
!2563 = !DILocation(line: 882, column: 31, scope: !2539)
!2564 = !DILocation(line: 883, column: 33, scope: !2539)
!2565 = !DILocation(line: 883, column: 42, scope: !2539)
!2566 = !DILocation(line: 883, column: 31, scope: !2539)
!2567 = !DILocation(line: 882, column: 22, scope: !2539)
!2568 = !DILocation(line: 882, column: 15, scope: !2539)
!2569 = !DILocation(line: 884, column: 11, scope: !2539)
!2570 = !DILocation(line: 885, column: 15, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2539, file: !566, line: 884, column: 11)
!2572 = !{i64 0, i64 8, !2477, i64 8, i64 8, !882}
!2573 = !DILocation(line: 885, column: 9, scope: !2571)
!2574 = !DILocation(line: 886, column: 20, scope: !2539)
!2575 = !DILocation(line: 886, column: 18, scope: !2539)
!2576 = !DILocation(line: 886, column: 32, scope: !2539)
!2577 = !DILocation(line: 886, column: 43, scope: !2539)
!2578 = !DILocation(line: 886, column: 53, scope: !2539)
!2579 = !DILocation(line: 0, scope: !1962, inlinedAt: !2580)
!2580 = distinct !DILocation(line: 886, column: 7, scope: !2539)
!2581 = !DILocation(line: 59, column: 10, scope: !1962, inlinedAt: !2580)
!2582 = !DILocation(line: 887, column: 16, scope: !2539)
!2583 = !DILocation(line: 887, column: 14, scope: !2539)
!2584 = !DILocation(line: 888, column: 5, scope: !2540)
!2585 = !DILocation(line: 888, column: 5, scope: !2539)
!2586 = !DILocation(line: 891, column: 19, scope: !2543)
!2587 = !DILocation(line: 891, column: 25, scope: !2543)
!2588 = !DILocation(line: 0, scope: !2543)
!2589 = !DILocation(line: 892, column: 23, scope: !2543)
!2590 = !DILocation(line: 894, column: 26, scope: !2543)
!2591 = !DILocation(line: 894, column: 32, scope: !2543)
!2592 = !DILocation(line: 896, column: 55, scope: !2543)
!2593 = !DILocation(line: 897, column: 55, scope: !2543)
!2594 = !DILocation(line: 898, column: 55, scope: !2543)
!2595 = !DILocation(line: 899, column: 55, scope: !2543)
!2596 = !DILocation(line: 895, column: 20, scope: !2543)
!2597 = !DILocation(line: 901, column: 14, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2543, file: !566, line: 901, column: 9)
!2599 = !DILocation(line: 901, column: 9, scope: !2543)
!2600 = !DILocation(line: 903, column: 35, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2598, file: !566, line: 902, column: 7)
!2602 = !DILocation(line: 903, column: 20, scope: !2601)
!2603 = !DILocation(line: 904, column: 17, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2601, file: !566, line: 904, column: 13)
!2605 = !DILocation(line: 904, column: 13, scope: !2601)
!2606 = !DILocation(line: 905, column: 11, scope: !2604)
!2607 = !DILocation(line: 906, column: 27, scope: !2601)
!2608 = !DILocation(line: 906, column: 19, scope: !2601)
!2609 = !DILocation(line: 907, column: 69, scope: !2601)
!2610 = !DILocation(line: 909, column: 44, scope: !2601)
!2611 = !DILocation(line: 910, column: 44, scope: !2601)
!2612 = !DILocation(line: 907, column: 9, scope: !2601)
!2613 = !DILocation(line: 911, column: 7, scope: !2601)
!2614 = !DILocation(line: 913, column: 11, scope: !2543)
!2615 = !DILocation(line: 914, column: 5, scope: !2543)
!2616 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !566, file: !566, line: 925, type: !2617, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !590, retainedNodes: !2619)
!2617 = !DISubroutineType(types: !2618)
!2618 = !{!85, !83, !119, !116}
!2619 = !{!2620, !2621, !2622}
!2620 = !DILocalVariable(name: "n", arg: 1, scope: !2616, file: !566, line: 925, type: !83)
!2621 = !DILocalVariable(name: "arg", arg: 2, scope: !2616, file: !566, line: 925, type: !119)
!2622 = !DILocalVariable(name: "argsize", arg: 3, scope: !2616, file: !566, line: 925, type: !116)
!2623 = !DILocation(line: 0, scope: !2616)
!2624 = !DILocation(line: 927, column: 10, scope: !2616)
!2625 = !DILocation(line: 927, column: 3, scope: !2616)
!2626 = distinct !DISubprogram(name: "quotearg", scope: !566, file: !566, line: 931, type: !1130, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !590, retainedNodes: !2627)
!2627 = !{!2628}
!2628 = !DILocalVariable(name: "arg", arg: 1, scope: !2626, file: !566, line: 931, type: !119)
!2629 = !DILocation(line: 0, scope: !2626)
!2630 = !DILocation(line: 0, scope: !2520, inlinedAt: !2631)
!2631 = distinct !DILocation(line: 933, column: 10, scope: !2626)
!2632 = !DILocation(line: 921, column: 10, scope: !2520, inlinedAt: !2631)
!2633 = !DILocation(line: 933, column: 3, scope: !2626)
!2634 = distinct !DISubprogram(name: "quotearg_mem", scope: !566, file: !566, line: 937, type: !2635, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !590, retainedNodes: !2637)
!2635 = !DISubroutineType(types: !2636)
!2636 = !{!85, !119, !116}
!2637 = !{!2638, !2639}
!2638 = !DILocalVariable(name: "arg", arg: 1, scope: !2634, file: !566, line: 937, type: !119)
!2639 = !DILocalVariable(name: "argsize", arg: 2, scope: !2634, file: !566, line: 937, type: !116)
!2640 = !DILocation(line: 0, scope: !2634)
!2641 = !DILocation(line: 0, scope: !2616, inlinedAt: !2642)
!2642 = distinct !DILocation(line: 939, column: 10, scope: !2634)
!2643 = !DILocation(line: 927, column: 10, scope: !2616, inlinedAt: !2642)
!2644 = !DILocation(line: 939, column: 3, scope: !2634)
!2645 = distinct !DISubprogram(name: "quotearg_n_style", scope: !566, file: !566, line: 943, type: !2646, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !590, retainedNodes: !2648)
!2646 = !DISubroutineType(types: !2647)
!2647 = !{!85, !83, !592, !119}
!2648 = !{!2649, !2650, !2651, !2652}
!2649 = !DILocalVariable(name: "n", arg: 1, scope: !2645, file: !566, line: 943, type: !83)
!2650 = !DILocalVariable(name: "s", arg: 2, scope: !2645, file: !566, line: 943, type: !592)
!2651 = !DILocalVariable(name: "arg", arg: 3, scope: !2645, file: !566, line: 943, type: !119)
!2652 = !DILocalVariable(name: "o", scope: !2645, file: !566, line: 945, type: !1746)
!2653 = distinct !DIAssignID()
!2654 = !DILocation(line: 0, scope: !2645)
!2655 = !DILocation(line: 945, column: 3, scope: !2645)
!2656 = !{!2657}
!2657 = distinct !{!2657, !2658, !"quoting_options_from_style: argument 0"}
!2658 = distinct !{!2658, !"quoting_options_from_style"}
!2659 = !DILocation(line: 945, column: 36, scope: !2645)
!2660 = !DILocalVariable(name: "style", arg: 1, scope: !2661, file: !566, line: 183, type: !592)
!2661 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !566, file: !566, line: 183, type: !2662, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !590, retainedNodes: !2664)
!2662 = !DISubroutineType(types: !2663)
!2663 = !{!619, !592}
!2664 = !{!2660, !2665}
!2665 = !DILocalVariable(name: "o", scope: !2661, file: !566, line: 185, type: !619)
!2666 = !DILocation(line: 0, scope: !2661, inlinedAt: !2667)
!2667 = distinct !DILocation(line: 945, column: 36, scope: !2645)
!2668 = !DILocation(line: 185, column: 26, scope: !2661, inlinedAt: !2667)
!2669 = distinct !DIAssignID()
!2670 = !DILocation(line: 186, column: 13, scope: !2671, inlinedAt: !2667)
!2671 = distinct !DILexicalBlock(scope: !2661, file: !566, line: 186, column: 7)
!2672 = !DILocation(line: 186, column: 7, scope: !2661, inlinedAt: !2667)
!2673 = !DILocation(line: 187, column: 5, scope: !2671, inlinedAt: !2667)
!2674 = !DILocation(line: 188, column: 11, scope: !2661, inlinedAt: !2667)
!2675 = distinct !DIAssignID()
!2676 = !DILocation(line: 946, column: 10, scope: !2645)
!2677 = !DILocation(line: 947, column: 1, scope: !2645)
!2678 = !DILocation(line: 946, column: 3, scope: !2645)
!2679 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !566, file: !566, line: 950, type: !2680, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !590, retainedNodes: !2682)
!2680 = !DISubroutineType(types: !2681)
!2681 = !{!85, !83, !592, !119, !116}
!2682 = !{!2683, !2684, !2685, !2686, !2687}
!2683 = !DILocalVariable(name: "n", arg: 1, scope: !2679, file: !566, line: 950, type: !83)
!2684 = !DILocalVariable(name: "s", arg: 2, scope: !2679, file: !566, line: 950, type: !592)
!2685 = !DILocalVariable(name: "arg", arg: 3, scope: !2679, file: !566, line: 951, type: !119)
!2686 = !DILocalVariable(name: "argsize", arg: 4, scope: !2679, file: !566, line: 951, type: !116)
!2687 = !DILocalVariable(name: "o", scope: !2679, file: !566, line: 953, type: !1746)
!2688 = distinct !DIAssignID()
!2689 = !DILocation(line: 0, scope: !2679)
!2690 = !DILocation(line: 953, column: 3, scope: !2679)
!2691 = !{!2692}
!2692 = distinct !{!2692, !2693, !"quoting_options_from_style: argument 0"}
!2693 = distinct !{!2693, !"quoting_options_from_style"}
!2694 = !DILocation(line: 953, column: 36, scope: !2679)
!2695 = !DILocation(line: 0, scope: !2661, inlinedAt: !2696)
!2696 = distinct !DILocation(line: 953, column: 36, scope: !2679)
!2697 = !DILocation(line: 185, column: 26, scope: !2661, inlinedAt: !2696)
!2698 = distinct !DIAssignID()
!2699 = !DILocation(line: 186, column: 13, scope: !2671, inlinedAt: !2696)
!2700 = !DILocation(line: 186, column: 7, scope: !2661, inlinedAt: !2696)
!2701 = !DILocation(line: 187, column: 5, scope: !2671, inlinedAt: !2696)
!2702 = !DILocation(line: 188, column: 11, scope: !2661, inlinedAt: !2696)
!2703 = distinct !DIAssignID()
!2704 = !DILocation(line: 954, column: 10, scope: !2679)
!2705 = !DILocation(line: 955, column: 1, scope: !2679)
!2706 = !DILocation(line: 954, column: 3, scope: !2679)
!2707 = distinct !DISubprogram(name: "quotearg_style", scope: !566, file: !566, line: 958, type: !2708, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !590, retainedNodes: !2710)
!2708 = !DISubroutineType(types: !2709)
!2709 = !{!85, !592, !119}
!2710 = !{!2711, !2712}
!2711 = !DILocalVariable(name: "s", arg: 1, scope: !2707, file: !566, line: 958, type: !592)
!2712 = !DILocalVariable(name: "arg", arg: 2, scope: !2707, file: !566, line: 958, type: !119)
!2713 = distinct !DIAssignID()
!2714 = !DILocation(line: 0, scope: !2707)
!2715 = !DILocation(line: 0, scope: !2645, inlinedAt: !2716)
!2716 = distinct !DILocation(line: 960, column: 10, scope: !2707)
!2717 = !DILocation(line: 945, column: 3, scope: !2645, inlinedAt: !2716)
!2718 = !{!2719}
!2719 = distinct !{!2719, !2720, !"quoting_options_from_style: argument 0"}
!2720 = distinct !{!2720, !"quoting_options_from_style"}
!2721 = !DILocation(line: 945, column: 36, scope: !2645, inlinedAt: !2716)
!2722 = !DILocation(line: 0, scope: !2661, inlinedAt: !2723)
!2723 = distinct !DILocation(line: 945, column: 36, scope: !2645, inlinedAt: !2716)
!2724 = !DILocation(line: 185, column: 26, scope: !2661, inlinedAt: !2723)
!2725 = distinct !DIAssignID()
!2726 = !DILocation(line: 186, column: 13, scope: !2671, inlinedAt: !2723)
!2727 = !DILocation(line: 186, column: 7, scope: !2661, inlinedAt: !2723)
!2728 = !DILocation(line: 187, column: 5, scope: !2671, inlinedAt: !2723)
!2729 = !DILocation(line: 188, column: 11, scope: !2661, inlinedAt: !2723)
!2730 = distinct !DIAssignID()
!2731 = !DILocation(line: 946, column: 10, scope: !2645, inlinedAt: !2716)
!2732 = !DILocation(line: 947, column: 1, scope: !2645, inlinedAt: !2716)
!2733 = !DILocation(line: 960, column: 3, scope: !2707)
!2734 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !566, file: !566, line: 964, type: !2735, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !590, retainedNodes: !2737)
!2735 = !DISubroutineType(types: !2736)
!2736 = !{!85, !592, !119, !116}
!2737 = !{!2738, !2739, !2740}
!2738 = !DILocalVariable(name: "s", arg: 1, scope: !2734, file: !566, line: 964, type: !592)
!2739 = !DILocalVariable(name: "arg", arg: 2, scope: !2734, file: !566, line: 964, type: !119)
!2740 = !DILocalVariable(name: "argsize", arg: 3, scope: !2734, file: !566, line: 964, type: !116)
!2741 = distinct !DIAssignID()
!2742 = !DILocation(line: 0, scope: !2734)
!2743 = !DILocation(line: 0, scope: !2679, inlinedAt: !2744)
!2744 = distinct !DILocation(line: 966, column: 10, scope: !2734)
!2745 = !DILocation(line: 953, column: 3, scope: !2679, inlinedAt: !2744)
!2746 = !{!2747}
!2747 = distinct !{!2747, !2748, !"quoting_options_from_style: argument 0"}
!2748 = distinct !{!2748, !"quoting_options_from_style"}
!2749 = !DILocation(line: 953, column: 36, scope: !2679, inlinedAt: !2744)
!2750 = !DILocation(line: 0, scope: !2661, inlinedAt: !2751)
!2751 = distinct !DILocation(line: 953, column: 36, scope: !2679, inlinedAt: !2744)
!2752 = !DILocation(line: 185, column: 26, scope: !2661, inlinedAt: !2751)
!2753 = distinct !DIAssignID()
!2754 = !DILocation(line: 186, column: 13, scope: !2671, inlinedAt: !2751)
!2755 = !DILocation(line: 186, column: 7, scope: !2661, inlinedAt: !2751)
!2756 = !DILocation(line: 187, column: 5, scope: !2671, inlinedAt: !2751)
!2757 = !DILocation(line: 188, column: 11, scope: !2661, inlinedAt: !2751)
!2758 = distinct !DIAssignID()
!2759 = !DILocation(line: 954, column: 10, scope: !2679, inlinedAt: !2744)
!2760 = !DILocation(line: 955, column: 1, scope: !2679, inlinedAt: !2744)
!2761 = !DILocation(line: 966, column: 3, scope: !2734)
!2762 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !566, file: !566, line: 970, type: !2763, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !590, retainedNodes: !2765)
!2763 = !DISubroutineType(types: !2764)
!2764 = !{!85, !119, !116, !4}
!2765 = !{!2766, !2767, !2768, !2769}
!2766 = !DILocalVariable(name: "arg", arg: 1, scope: !2762, file: !566, line: 970, type: !119)
!2767 = !DILocalVariable(name: "argsize", arg: 2, scope: !2762, file: !566, line: 970, type: !116)
!2768 = !DILocalVariable(name: "ch", arg: 3, scope: !2762, file: !566, line: 970, type: !4)
!2769 = !DILocalVariable(name: "options", scope: !2762, file: !566, line: 972, type: !619)
!2770 = distinct !DIAssignID()
!2771 = !DILocation(line: 0, scope: !2762)
!2772 = !DILocation(line: 972, column: 3, scope: !2762)
!2773 = !DILocation(line: 973, column: 13, scope: !2762)
!2774 = !{i64 0, i64 4, !890, i64 4, i64 4, !890, i64 8, i64 32, !989, i64 40, i64 8, !882, i64 48, i64 8, !882}
!2775 = distinct !DIAssignID()
!2776 = !DILocation(line: 0, scope: !1765, inlinedAt: !2777)
!2777 = distinct !DILocation(line: 974, column: 3, scope: !2762)
!2778 = !DILocation(line: 147, column: 41, scope: !1765, inlinedAt: !2777)
!2779 = !DILocation(line: 147, column: 62, scope: !1765, inlinedAt: !2777)
!2780 = !DILocation(line: 147, column: 57, scope: !1765, inlinedAt: !2777)
!2781 = !DILocation(line: 148, column: 15, scope: !1765, inlinedAt: !2777)
!2782 = !DILocation(line: 149, column: 21, scope: !1765, inlinedAt: !2777)
!2783 = !DILocation(line: 149, column: 24, scope: !1765, inlinedAt: !2777)
!2784 = !DILocation(line: 150, column: 19, scope: !1765, inlinedAt: !2777)
!2785 = !DILocation(line: 150, column: 24, scope: !1765, inlinedAt: !2777)
!2786 = !DILocation(line: 150, column: 6, scope: !1765, inlinedAt: !2777)
!2787 = !DILocation(line: 975, column: 10, scope: !2762)
!2788 = !DILocation(line: 976, column: 1, scope: !2762)
!2789 = !DILocation(line: 975, column: 3, scope: !2762)
!2790 = distinct !DISubprogram(name: "quotearg_char", scope: !566, file: !566, line: 979, type: !2791, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !590, retainedNodes: !2793)
!2791 = !DISubroutineType(types: !2792)
!2792 = !{!85, !119, !4}
!2793 = !{!2794, !2795}
!2794 = !DILocalVariable(name: "arg", arg: 1, scope: !2790, file: !566, line: 979, type: !119)
!2795 = !DILocalVariable(name: "ch", arg: 2, scope: !2790, file: !566, line: 979, type: !4)
!2796 = distinct !DIAssignID()
!2797 = !DILocation(line: 0, scope: !2790)
!2798 = !DILocation(line: 0, scope: !2762, inlinedAt: !2799)
!2799 = distinct !DILocation(line: 981, column: 10, scope: !2790)
!2800 = !DILocation(line: 972, column: 3, scope: !2762, inlinedAt: !2799)
!2801 = !DILocation(line: 973, column: 13, scope: !2762, inlinedAt: !2799)
!2802 = distinct !DIAssignID()
!2803 = !DILocation(line: 0, scope: !1765, inlinedAt: !2804)
!2804 = distinct !DILocation(line: 974, column: 3, scope: !2762, inlinedAt: !2799)
!2805 = !DILocation(line: 147, column: 41, scope: !1765, inlinedAt: !2804)
!2806 = !DILocation(line: 147, column: 62, scope: !1765, inlinedAt: !2804)
!2807 = !DILocation(line: 147, column: 57, scope: !1765, inlinedAt: !2804)
!2808 = !DILocation(line: 148, column: 15, scope: !1765, inlinedAt: !2804)
!2809 = !DILocation(line: 149, column: 21, scope: !1765, inlinedAt: !2804)
!2810 = !DILocation(line: 149, column: 24, scope: !1765, inlinedAt: !2804)
!2811 = !DILocation(line: 150, column: 19, scope: !1765, inlinedAt: !2804)
!2812 = !DILocation(line: 150, column: 24, scope: !1765, inlinedAt: !2804)
!2813 = !DILocation(line: 150, column: 6, scope: !1765, inlinedAt: !2804)
!2814 = !DILocation(line: 975, column: 10, scope: !2762, inlinedAt: !2799)
!2815 = !DILocation(line: 976, column: 1, scope: !2762, inlinedAt: !2799)
!2816 = !DILocation(line: 981, column: 3, scope: !2790)
!2817 = distinct !DISubprogram(name: "quotearg_colon", scope: !566, file: !566, line: 985, type: !1130, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !590, retainedNodes: !2818)
!2818 = !{!2819}
!2819 = !DILocalVariable(name: "arg", arg: 1, scope: !2817, file: !566, line: 985, type: !119)
!2820 = distinct !DIAssignID()
!2821 = !DILocation(line: 0, scope: !2817)
!2822 = !DILocation(line: 0, scope: !2790, inlinedAt: !2823)
!2823 = distinct !DILocation(line: 987, column: 10, scope: !2817)
!2824 = !DILocation(line: 0, scope: !2762, inlinedAt: !2825)
!2825 = distinct !DILocation(line: 981, column: 10, scope: !2790, inlinedAt: !2823)
!2826 = !DILocation(line: 972, column: 3, scope: !2762, inlinedAt: !2825)
!2827 = !DILocation(line: 973, column: 13, scope: !2762, inlinedAt: !2825)
!2828 = distinct !DIAssignID()
!2829 = !DILocation(line: 0, scope: !1765, inlinedAt: !2830)
!2830 = distinct !DILocation(line: 974, column: 3, scope: !2762, inlinedAt: !2825)
!2831 = !DILocation(line: 147, column: 57, scope: !1765, inlinedAt: !2830)
!2832 = !DILocation(line: 149, column: 21, scope: !1765, inlinedAt: !2830)
!2833 = !DILocation(line: 150, column: 6, scope: !1765, inlinedAt: !2830)
!2834 = !DILocation(line: 975, column: 10, scope: !2762, inlinedAt: !2825)
!2835 = !DILocation(line: 976, column: 1, scope: !2762, inlinedAt: !2825)
!2836 = !DILocation(line: 987, column: 3, scope: !2817)
!2837 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !566, file: !566, line: 991, type: !2635, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !590, retainedNodes: !2838)
!2838 = !{!2839, !2840}
!2839 = !DILocalVariable(name: "arg", arg: 1, scope: !2837, file: !566, line: 991, type: !119)
!2840 = !DILocalVariable(name: "argsize", arg: 2, scope: !2837, file: !566, line: 991, type: !116)
!2841 = distinct !DIAssignID()
!2842 = !DILocation(line: 0, scope: !2837)
!2843 = !DILocation(line: 0, scope: !2762, inlinedAt: !2844)
!2844 = distinct !DILocation(line: 993, column: 10, scope: !2837)
!2845 = !DILocation(line: 972, column: 3, scope: !2762, inlinedAt: !2844)
!2846 = !DILocation(line: 973, column: 13, scope: !2762, inlinedAt: !2844)
!2847 = distinct !DIAssignID()
!2848 = !DILocation(line: 0, scope: !1765, inlinedAt: !2849)
!2849 = distinct !DILocation(line: 974, column: 3, scope: !2762, inlinedAt: !2844)
!2850 = !DILocation(line: 147, column: 57, scope: !1765, inlinedAt: !2849)
!2851 = !DILocation(line: 149, column: 21, scope: !1765, inlinedAt: !2849)
!2852 = !DILocation(line: 150, column: 6, scope: !1765, inlinedAt: !2849)
!2853 = !DILocation(line: 975, column: 10, scope: !2762, inlinedAt: !2844)
!2854 = !DILocation(line: 976, column: 1, scope: !2762, inlinedAt: !2844)
!2855 = !DILocation(line: 993, column: 3, scope: !2837)
!2856 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !566, file: !566, line: 997, type: !2646, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !590, retainedNodes: !2857)
!2857 = !{!2858, !2859, !2860, !2861}
!2858 = !DILocalVariable(name: "n", arg: 1, scope: !2856, file: !566, line: 997, type: !83)
!2859 = !DILocalVariable(name: "s", arg: 2, scope: !2856, file: !566, line: 997, type: !592)
!2860 = !DILocalVariable(name: "arg", arg: 3, scope: !2856, file: !566, line: 997, type: !119)
!2861 = !DILocalVariable(name: "options", scope: !2856, file: !566, line: 999, type: !619)
!2862 = distinct !DIAssignID()
!2863 = !DILocation(line: 0, scope: !2856)
!2864 = !DILocation(line: 185, column: 26, scope: !2661, inlinedAt: !2865)
!2865 = distinct !DILocation(line: 1000, column: 13, scope: !2856)
!2866 = !DILocation(line: 999, column: 3, scope: !2856)
!2867 = !DILocation(line: 0, scope: !2661, inlinedAt: !2865)
!2868 = !DILocation(line: 186, column: 13, scope: !2671, inlinedAt: !2865)
!2869 = !DILocation(line: 186, column: 7, scope: !2661, inlinedAt: !2865)
!2870 = !DILocation(line: 187, column: 5, scope: !2671, inlinedAt: !2865)
!2871 = !{!2872}
!2872 = distinct !{!2872, !2873, !"quoting_options_from_style: argument 0"}
!2873 = distinct !{!2873, !"quoting_options_from_style"}
!2874 = !DILocation(line: 1000, column: 13, scope: !2856)
!2875 = distinct !DIAssignID()
!2876 = distinct !DIAssignID()
!2877 = !DILocation(line: 0, scope: !1765, inlinedAt: !2878)
!2878 = distinct !DILocation(line: 1001, column: 3, scope: !2856)
!2879 = !DILocation(line: 147, column: 57, scope: !1765, inlinedAt: !2878)
!2880 = !DILocation(line: 149, column: 21, scope: !1765, inlinedAt: !2878)
!2881 = !DILocation(line: 150, column: 6, scope: !1765, inlinedAt: !2878)
!2882 = distinct !DIAssignID()
!2883 = !DILocation(line: 1002, column: 10, scope: !2856)
!2884 = !DILocation(line: 1003, column: 1, scope: !2856)
!2885 = !DILocation(line: 1002, column: 3, scope: !2856)
!2886 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !566, file: !566, line: 1006, type: !2887, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !590, retainedNodes: !2889)
!2887 = !DISubroutineType(types: !2888)
!2888 = !{!85, !83, !119, !119, !119}
!2889 = !{!2890, !2891, !2892, !2893}
!2890 = !DILocalVariable(name: "n", arg: 1, scope: !2886, file: !566, line: 1006, type: !83)
!2891 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2886, file: !566, line: 1006, type: !119)
!2892 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2886, file: !566, line: 1007, type: !119)
!2893 = !DILocalVariable(name: "arg", arg: 4, scope: !2886, file: !566, line: 1007, type: !119)
!2894 = distinct !DIAssignID()
!2895 = !DILocation(line: 0, scope: !2886)
!2896 = !DILocalVariable(name: "o", scope: !2897, file: !566, line: 1018, type: !619)
!2897 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !566, file: !566, line: 1014, type: !2898, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !590, retainedNodes: !2900)
!2898 = !DISubroutineType(types: !2899)
!2899 = !{!85, !83, !119, !119, !119, !116}
!2900 = !{!2901, !2902, !2903, !2904, !2905, !2896}
!2901 = !DILocalVariable(name: "n", arg: 1, scope: !2897, file: !566, line: 1014, type: !83)
!2902 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2897, file: !566, line: 1014, type: !119)
!2903 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2897, file: !566, line: 1015, type: !119)
!2904 = !DILocalVariable(name: "arg", arg: 4, scope: !2897, file: !566, line: 1016, type: !119)
!2905 = !DILocalVariable(name: "argsize", arg: 5, scope: !2897, file: !566, line: 1016, type: !116)
!2906 = !DILocation(line: 0, scope: !2897, inlinedAt: !2907)
!2907 = distinct !DILocation(line: 1009, column: 10, scope: !2886)
!2908 = !DILocation(line: 1018, column: 3, scope: !2897, inlinedAt: !2907)
!2909 = !DILocation(line: 1018, column: 30, scope: !2897, inlinedAt: !2907)
!2910 = distinct !DIAssignID()
!2911 = distinct !DIAssignID()
!2912 = !DILocation(line: 0, scope: !1805, inlinedAt: !2913)
!2913 = distinct !DILocation(line: 1019, column: 3, scope: !2897, inlinedAt: !2907)
!2914 = !DILocation(line: 174, column: 12, scope: !1805, inlinedAt: !2913)
!2915 = distinct !DIAssignID()
!2916 = !DILocation(line: 175, column: 8, scope: !1818, inlinedAt: !2913)
!2917 = !DILocation(line: 175, column: 19, scope: !1818, inlinedAt: !2913)
!2918 = !DILocation(line: 176, column: 5, scope: !1818, inlinedAt: !2913)
!2919 = !DILocation(line: 177, column: 6, scope: !1805, inlinedAt: !2913)
!2920 = !DILocation(line: 177, column: 17, scope: !1805, inlinedAt: !2913)
!2921 = distinct !DIAssignID()
!2922 = !DILocation(line: 178, column: 6, scope: !1805, inlinedAt: !2913)
!2923 = !DILocation(line: 178, column: 18, scope: !1805, inlinedAt: !2913)
!2924 = distinct !DIAssignID()
!2925 = !DILocation(line: 1020, column: 10, scope: !2897, inlinedAt: !2907)
!2926 = !DILocation(line: 1021, column: 1, scope: !2897, inlinedAt: !2907)
!2927 = !DILocation(line: 1009, column: 3, scope: !2886)
!2928 = distinct !DIAssignID()
!2929 = !DILocation(line: 0, scope: !2897)
!2930 = !DILocation(line: 1018, column: 3, scope: !2897)
!2931 = !DILocation(line: 1018, column: 30, scope: !2897)
!2932 = distinct !DIAssignID()
!2933 = distinct !DIAssignID()
!2934 = !DILocation(line: 0, scope: !1805, inlinedAt: !2935)
!2935 = distinct !DILocation(line: 1019, column: 3, scope: !2897)
!2936 = !DILocation(line: 174, column: 12, scope: !1805, inlinedAt: !2935)
!2937 = distinct !DIAssignID()
!2938 = !DILocation(line: 175, column: 8, scope: !1818, inlinedAt: !2935)
!2939 = !DILocation(line: 175, column: 19, scope: !1818, inlinedAt: !2935)
!2940 = !DILocation(line: 176, column: 5, scope: !1818, inlinedAt: !2935)
!2941 = !DILocation(line: 177, column: 6, scope: !1805, inlinedAt: !2935)
!2942 = !DILocation(line: 177, column: 17, scope: !1805, inlinedAt: !2935)
!2943 = distinct !DIAssignID()
!2944 = !DILocation(line: 178, column: 6, scope: !1805, inlinedAt: !2935)
!2945 = !DILocation(line: 178, column: 18, scope: !1805, inlinedAt: !2935)
!2946 = distinct !DIAssignID()
!2947 = !DILocation(line: 1020, column: 10, scope: !2897)
!2948 = !DILocation(line: 1021, column: 1, scope: !2897)
!2949 = !DILocation(line: 1020, column: 3, scope: !2897)
!2950 = distinct !DISubprogram(name: "quotearg_custom", scope: !566, file: !566, line: 1024, type: !2951, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !590, retainedNodes: !2953)
!2951 = !DISubroutineType(types: !2952)
!2952 = !{!85, !119, !119, !119}
!2953 = !{!2954, !2955, !2956}
!2954 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2950, file: !566, line: 1024, type: !119)
!2955 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2950, file: !566, line: 1024, type: !119)
!2956 = !DILocalVariable(name: "arg", arg: 3, scope: !2950, file: !566, line: 1025, type: !119)
!2957 = distinct !DIAssignID()
!2958 = !DILocation(line: 0, scope: !2950)
!2959 = !DILocation(line: 0, scope: !2886, inlinedAt: !2960)
!2960 = distinct !DILocation(line: 1027, column: 10, scope: !2950)
!2961 = !DILocation(line: 0, scope: !2897, inlinedAt: !2962)
!2962 = distinct !DILocation(line: 1009, column: 10, scope: !2886, inlinedAt: !2960)
!2963 = !DILocation(line: 1018, column: 3, scope: !2897, inlinedAt: !2962)
!2964 = !DILocation(line: 1018, column: 30, scope: !2897, inlinedAt: !2962)
!2965 = distinct !DIAssignID()
!2966 = distinct !DIAssignID()
!2967 = !DILocation(line: 0, scope: !1805, inlinedAt: !2968)
!2968 = distinct !DILocation(line: 1019, column: 3, scope: !2897, inlinedAt: !2962)
!2969 = !DILocation(line: 174, column: 12, scope: !1805, inlinedAt: !2968)
!2970 = distinct !DIAssignID()
!2971 = !DILocation(line: 175, column: 8, scope: !1818, inlinedAt: !2968)
!2972 = !DILocation(line: 175, column: 19, scope: !1818, inlinedAt: !2968)
!2973 = !DILocation(line: 176, column: 5, scope: !1818, inlinedAt: !2968)
!2974 = !DILocation(line: 177, column: 6, scope: !1805, inlinedAt: !2968)
!2975 = !DILocation(line: 177, column: 17, scope: !1805, inlinedAt: !2968)
!2976 = distinct !DIAssignID()
!2977 = !DILocation(line: 178, column: 6, scope: !1805, inlinedAt: !2968)
!2978 = !DILocation(line: 178, column: 18, scope: !1805, inlinedAt: !2968)
!2979 = distinct !DIAssignID()
!2980 = !DILocation(line: 1020, column: 10, scope: !2897, inlinedAt: !2962)
!2981 = !DILocation(line: 1021, column: 1, scope: !2897, inlinedAt: !2962)
!2982 = !DILocation(line: 1027, column: 3, scope: !2950)
!2983 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !566, file: !566, line: 1031, type: !2984, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !590, retainedNodes: !2986)
!2984 = !DISubroutineType(types: !2985)
!2985 = !{!85, !119, !119, !119, !116}
!2986 = !{!2987, !2988, !2989, !2990}
!2987 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2983, file: !566, line: 1031, type: !119)
!2988 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2983, file: !566, line: 1031, type: !119)
!2989 = !DILocalVariable(name: "arg", arg: 3, scope: !2983, file: !566, line: 1032, type: !119)
!2990 = !DILocalVariable(name: "argsize", arg: 4, scope: !2983, file: !566, line: 1032, type: !116)
!2991 = distinct !DIAssignID()
!2992 = !DILocation(line: 0, scope: !2983)
!2993 = !DILocation(line: 0, scope: !2897, inlinedAt: !2994)
!2994 = distinct !DILocation(line: 1034, column: 10, scope: !2983)
!2995 = !DILocation(line: 1018, column: 3, scope: !2897, inlinedAt: !2994)
!2996 = !DILocation(line: 1018, column: 30, scope: !2897, inlinedAt: !2994)
!2997 = distinct !DIAssignID()
!2998 = distinct !DIAssignID()
!2999 = !DILocation(line: 0, scope: !1805, inlinedAt: !3000)
!3000 = distinct !DILocation(line: 1019, column: 3, scope: !2897, inlinedAt: !2994)
!3001 = !DILocation(line: 174, column: 12, scope: !1805, inlinedAt: !3000)
!3002 = distinct !DIAssignID()
!3003 = !DILocation(line: 175, column: 8, scope: !1818, inlinedAt: !3000)
!3004 = !DILocation(line: 175, column: 19, scope: !1818, inlinedAt: !3000)
!3005 = !DILocation(line: 176, column: 5, scope: !1818, inlinedAt: !3000)
!3006 = !DILocation(line: 177, column: 6, scope: !1805, inlinedAt: !3000)
!3007 = !DILocation(line: 177, column: 17, scope: !1805, inlinedAt: !3000)
!3008 = distinct !DIAssignID()
!3009 = !DILocation(line: 178, column: 6, scope: !1805, inlinedAt: !3000)
!3010 = !DILocation(line: 178, column: 18, scope: !1805, inlinedAt: !3000)
!3011 = distinct !DIAssignID()
!3012 = !DILocation(line: 1020, column: 10, scope: !2897, inlinedAt: !2994)
!3013 = !DILocation(line: 1021, column: 1, scope: !2897, inlinedAt: !2994)
!3014 = !DILocation(line: 1034, column: 3, scope: !2983)
!3015 = distinct !DISubprogram(name: "quote_n_mem", scope: !566, file: !566, line: 1049, type: !3016, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !590, retainedNodes: !3018)
!3016 = !DISubroutineType(types: !3017)
!3017 = !{!119, !83, !119, !116}
!3018 = !{!3019, !3020, !3021}
!3019 = !DILocalVariable(name: "n", arg: 1, scope: !3015, file: !566, line: 1049, type: !83)
!3020 = !DILocalVariable(name: "arg", arg: 2, scope: !3015, file: !566, line: 1049, type: !119)
!3021 = !DILocalVariable(name: "argsize", arg: 3, scope: !3015, file: !566, line: 1049, type: !116)
!3022 = !DILocation(line: 0, scope: !3015)
!3023 = !DILocation(line: 1051, column: 10, scope: !3015)
!3024 = !DILocation(line: 1051, column: 3, scope: !3015)
!3025 = distinct !DISubprogram(name: "quote_mem", scope: !566, file: !566, line: 1055, type: !3026, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !590, retainedNodes: !3028)
!3026 = !DISubroutineType(types: !3027)
!3027 = !{!119, !119, !116}
!3028 = !{!3029, !3030}
!3029 = !DILocalVariable(name: "arg", arg: 1, scope: !3025, file: !566, line: 1055, type: !119)
!3030 = !DILocalVariable(name: "argsize", arg: 2, scope: !3025, file: !566, line: 1055, type: !116)
!3031 = !DILocation(line: 0, scope: !3025)
!3032 = !DILocation(line: 0, scope: !3015, inlinedAt: !3033)
!3033 = distinct !DILocation(line: 1057, column: 10, scope: !3025)
!3034 = !DILocation(line: 1051, column: 10, scope: !3015, inlinedAt: !3033)
!3035 = !DILocation(line: 1057, column: 3, scope: !3025)
!3036 = distinct !DISubprogram(name: "quote_n", scope: !566, file: !566, line: 1061, type: !3037, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !590, retainedNodes: !3039)
!3037 = !DISubroutineType(types: !3038)
!3038 = !{!119, !83, !119}
!3039 = !{!3040, !3041}
!3040 = !DILocalVariable(name: "n", arg: 1, scope: !3036, file: !566, line: 1061, type: !83)
!3041 = !DILocalVariable(name: "arg", arg: 2, scope: !3036, file: !566, line: 1061, type: !119)
!3042 = !DILocation(line: 0, scope: !3036)
!3043 = !DILocation(line: 0, scope: !3015, inlinedAt: !3044)
!3044 = distinct !DILocation(line: 1063, column: 10, scope: !3036)
!3045 = !DILocation(line: 1051, column: 10, scope: !3015, inlinedAt: !3044)
!3046 = !DILocation(line: 1063, column: 3, scope: !3036)
!3047 = distinct !DISubprogram(name: "quote", scope: !566, file: !566, line: 1067, type: !3048, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !590, retainedNodes: !3050)
!3048 = !DISubroutineType(types: !3049)
!3049 = !{!119, !119}
!3050 = !{!3051}
!3051 = !DILocalVariable(name: "arg", arg: 1, scope: !3047, file: !566, line: 1067, type: !119)
!3052 = !DILocation(line: 0, scope: !3047)
!3053 = !DILocation(line: 0, scope: !3036, inlinedAt: !3054)
!3054 = distinct !DILocation(line: 1069, column: 10, scope: !3047)
!3055 = !DILocation(line: 0, scope: !3015, inlinedAt: !3056)
!3056 = distinct !DILocation(line: 1063, column: 10, scope: !3036, inlinedAt: !3054)
!3057 = !DILocation(line: 1051, column: 10, scope: !3015, inlinedAt: !3056)
!3058 = !DILocation(line: 1069, column: 3, scope: !3047)
!3059 = distinct !DISubprogram(name: "version_etc_arn", scope: !682, file: !682, line: 61, type: !3060, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !802, retainedNodes: !3097)
!3060 = !DISubroutineType(types: !3061)
!3061 = !{null, !3062, !119, !119, !119, !3096, !116}
!3062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3063, size: 64)
!3063 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !186, line: 7, baseType: !3064)
!3064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !188, line: 49, size: 1728, elements: !3065)
!3065 = !{!3066, !3067, !3068, !3069, !3070, !3071, !3072, !3073, !3074, !3075, !3076, !3077, !3078, !3079, !3081, !3082, !3083, !3084, !3085, !3086, !3087, !3088, !3089, !3090, !3091, !3092, !3093, !3094, !3095}
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3064, file: !188, line: 51, baseType: !83, size: 32)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3064, file: !188, line: 54, baseType: !85, size: 64, offset: 64)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3064, file: !188, line: 55, baseType: !85, size: 64, offset: 128)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3064, file: !188, line: 56, baseType: !85, size: 64, offset: 192)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3064, file: !188, line: 57, baseType: !85, size: 64, offset: 256)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3064, file: !188, line: 58, baseType: !85, size: 64, offset: 320)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3064, file: !188, line: 59, baseType: !85, size: 64, offset: 384)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3064, file: !188, line: 60, baseType: !85, size: 64, offset: 448)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3064, file: !188, line: 61, baseType: !85, size: 64, offset: 512)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3064, file: !188, line: 64, baseType: !85, size: 64, offset: 576)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3064, file: !188, line: 65, baseType: !85, size: 64, offset: 640)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3064, file: !188, line: 66, baseType: !85, size: 64, offset: 704)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3064, file: !188, line: 68, baseType: !203, size: 64, offset: 768)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3064, file: !188, line: 70, baseType: !3080, size: 64, offset: 832)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3064, file: !188, line: 72, baseType: !83, size: 32, offset: 896)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3064, file: !188, line: 73, baseType: !83, size: 32, offset: 928)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3064, file: !188, line: 74, baseType: !210, size: 64, offset: 960)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3064, file: !188, line: 77, baseType: !115, size: 16, offset: 1024)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3064, file: !188, line: 78, baseType: !215, size: 8, offset: 1040)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3064, file: !188, line: 79, baseType: !126, size: 8, offset: 1048)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3064, file: !188, line: 81, baseType: !218, size: 64, offset: 1088)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3064, file: !188, line: 89, baseType: !221, size: 64, offset: 1152)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3064, file: !188, line: 91, baseType: !223, size: 64, offset: 1216)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3064, file: !188, line: 92, baseType: !226, size: 64, offset: 1280)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3064, file: !188, line: 93, baseType: !3080, size: 64, offset: 1344)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3064, file: !188, line: 94, baseType: !122, size: 64, offset: 1408)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3064, file: !188, line: 95, baseType: !116, size: 64, offset: 1472)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3064, file: !188, line: 96, baseType: !83, size: 32, offset: 1536)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3064, file: !188, line: 98, baseType: !233, size: 160, offset: 1568)
!3096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!3097 = !{!3098, !3099, !3100, !3101, !3102, !3103}
!3098 = !DILocalVariable(name: "stream", arg: 1, scope: !3059, file: !682, line: 61, type: !3062)
!3099 = !DILocalVariable(name: "command_name", arg: 2, scope: !3059, file: !682, line: 62, type: !119)
!3100 = !DILocalVariable(name: "package", arg: 3, scope: !3059, file: !682, line: 62, type: !119)
!3101 = !DILocalVariable(name: "version", arg: 4, scope: !3059, file: !682, line: 63, type: !119)
!3102 = !DILocalVariable(name: "authors", arg: 5, scope: !3059, file: !682, line: 64, type: !3096)
!3103 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3059, file: !682, line: 64, type: !116)
!3104 = !DILocation(line: 0, scope: !3059)
!3105 = !DILocation(line: 66, column: 7, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !3059, file: !682, line: 66, column: 7)
!3107 = !DILocation(line: 66, column: 7, scope: !3059)
!3108 = !DILocation(line: 67, column: 5, scope: !3106)
!3109 = !DILocation(line: 69, column: 5, scope: !3106)
!3110 = !DILocation(line: 83, column: 3, scope: !3059)
!3111 = !DILocation(line: 85, column: 3, scope: !3059)
!3112 = !DILocation(line: 88, column: 3, scope: !3059)
!3113 = !DILocation(line: 95, column: 3, scope: !3059)
!3114 = !DILocation(line: 97, column: 3, scope: !3059)
!3115 = !DILocation(line: 105, column: 7, scope: !3116)
!3116 = distinct !DILexicalBlock(scope: !3059, file: !682, line: 98, column: 5)
!3117 = !DILocation(line: 106, column: 7, scope: !3116)
!3118 = !DILocation(line: 109, column: 7, scope: !3116)
!3119 = !DILocation(line: 110, column: 7, scope: !3116)
!3120 = !DILocation(line: 113, column: 7, scope: !3116)
!3121 = !DILocation(line: 115, column: 7, scope: !3116)
!3122 = !DILocation(line: 120, column: 7, scope: !3116)
!3123 = !DILocation(line: 122, column: 7, scope: !3116)
!3124 = !DILocation(line: 127, column: 7, scope: !3116)
!3125 = !DILocation(line: 129, column: 7, scope: !3116)
!3126 = !DILocation(line: 134, column: 7, scope: !3116)
!3127 = !DILocation(line: 137, column: 7, scope: !3116)
!3128 = !DILocation(line: 142, column: 7, scope: !3116)
!3129 = !DILocation(line: 145, column: 7, scope: !3116)
!3130 = !DILocation(line: 150, column: 7, scope: !3116)
!3131 = !DILocation(line: 154, column: 7, scope: !3116)
!3132 = !DILocation(line: 159, column: 7, scope: !3116)
!3133 = !DILocation(line: 163, column: 7, scope: !3116)
!3134 = !DILocation(line: 170, column: 7, scope: !3116)
!3135 = !DILocation(line: 174, column: 7, scope: !3116)
!3136 = !DILocation(line: 176, column: 1, scope: !3059)
!3137 = distinct !DISubprogram(name: "version_etc_ar", scope: !682, file: !682, line: 183, type: !3138, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !802, retainedNodes: !3140)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{null, !3062, !119, !119, !119, !3096}
!3140 = !{!3141, !3142, !3143, !3144, !3145, !3146}
!3141 = !DILocalVariable(name: "stream", arg: 1, scope: !3137, file: !682, line: 183, type: !3062)
!3142 = !DILocalVariable(name: "command_name", arg: 2, scope: !3137, file: !682, line: 184, type: !119)
!3143 = !DILocalVariable(name: "package", arg: 3, scope: !3137, file: !682, line: 184, type: !119)
!3144 = !DILocalVariable(name: "version", arg: 4, scope: !3137, file: !682, line: 185, type: !119)
!3145 = !DILocalVariable(name: "authors", arg: 5, scope: !3137, file: !682, line: 185, type: !3096)
!3146 = !DILocalVariable(name: "n_authors", scope: !3137, file: !682, line: 187, type: !116)
!3147 = !DILocation(line: 0, scope: !3137)
!3148 = !DILocation(line: 189, column: 8, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !3137, file: !682, line: 189, column: 3)
!3150 = !DILocation(line: 189, scope: !3149)
!3151 = !DILocation(line: 189, column: 23, scope: !3152)
!3152 = distinct !DILexicalBlock(scope: !3149, file: !682, line: 189, column: 3)
!3153 = !DILocation(line: 189, column: 3, scope: !3149)
!3154 = !DILocation(line: 189, column: 52, scope: !3152)
!3155 = distinct !{!3155, !3153, !3156, !1020}
!3156 = !DILocation(line: 190, column: 5, scope: !3149)
!3157 = !DILocation(line: 191, column: 3, scope: !3137)
!3158 = !DILocation(line: 192, column: 1, scope: !3137)
!3159 = distinct !DISubprogram(name: "version_etc_va", scope: !682, file: !682, line: 199, type: !3160, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !802, retainedNodes: !3172)
!3160 = !DISubroutineType(types: !3161)
!3161 = !{null, !3062, !119, !119, !119, !3162}
!3162 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !481, line: 52, baseType: !3163)
!3163 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !483, line: 12, baseType: !3164)
!3164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !682, baseType: !3165)
!3165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !3166)
!3166 = !{!3167, !3168, !3169, !3170, !3171}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3165, file: !682, line: 192, baseType: !122, size: 64)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3165, file: !682, line: 192, baseType: !122, size: 64, offset: 64)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3165, file: !682, line: 192, baseType: !122, size: 64, offset: 128)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3165, file: !682, line: 192, baseType: !83, size: 32, offset: 192)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3165, file: !682, line: 192, baseType: !83, size: 32, offset: 224)
!3172 = !{!3173, !3174, !3175, !3176, !3177, !3178, !3179}
!3173 = !DILocalVariable(name: "stream", arg: 1, scope: !3159, file: !682, line: 199, type: !3062)
!3174 = !DILocalVariable(name: "command_name", arg: 2, scope: !3159, file: !682, line: 200, type: !119)
!3175 = !DILocalVariable(name: "package", arg: 3, scope: !3159, file: !682, line: 200, type: !119)
!3176 = !DILocalVariable(name: "version", arg: 4, scope: !3159, file: !682, line: 201, type: !119)
!3177 = !DILocalVariable(name: "authors", arg: 5, scope: !3159, file: !682, line: 201, type: !3162)
!3178 = !DILocalVariable(name: "n_authors", scope: !3159, file: !682, line: 203, type: !116)
!3179 = !DILocalVariable(name: "authtab", scope: !3159, file: !682, line: 204, type: !3180)
!3180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 640, elements: !132)
!3181 = distinct !DIAssignID()
!3182 = !DILocation(line: 0, scope: !3159)
!3183 = !DILocation(line: 204, column: 3, scope: !3159)
!3184 = !DILocation(line: 208, column: 35, scope: !3185)
!3185 = distinct !DILexicalBlock(scope: !3186, file: !682, line: 206, column: 3)
!3186 = distinct !DILexicalBlock(scope: !3159, file: !682, line: 206, column: 3)
!3187 = !DILocation(line: 208, column: 33, scope: !3185)
!3188 = !DILocation(line: 208, column: 67, scope: !3185)
!3189 = !DILocation(line: 206, column: 3, scope: !3186)
!3190 = !DILocation(line: 208, column: 14, scope: !3185)
!3191 = !DILocation(line: 0, scope: !3186)
!3192 = !DILocation(line: 211, column: 3, scope: !3159)
!3193 = !DILocation(line: 213, column: 1, scope: !3159)
!3194 = distinct !DISubprogram(name: "version_etc", scope: !682, file: !682, line: 230, type: !3195, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !802, retainedNodes: !3197)
!3195 = !DISubroutineType(types: !3196)
!3196 = !{null, !3062, !119, !119, !119, null}
!3197 = !{!3198, !3199, !3200, !3201, !3202}
!3198 = !DILocalVariable(name: "stream", arg: 1, scope: !3194, file: !682, line: 230, type: !3062)
!3199 = !DILocalVariable(name: "command_name", arg: 2, scope: !3194, file: !682, line: 231, type: !119)
!3200 = !DILocalVariable(name: "package", arg: 3, scope: !3194, file: !682, line: 231, type: !119)
!3201 = !DILocalVariable(name: "version", arg: 4, scope: !3194, file: !682, line: 232, type: !119)
!3202 = !DILocalVariable(name: "authors", scope: !3194, file: !682, line: 234, type: !3162)
!3203 = distinct !DIAssignID()
!3204 = !DILocation(line: 0, scope: !3194)
!3205 = !DILocation(line: 234, column: 3, scope: !3194)
!3206 = !DILocation(line: 235, column: 3, scope: !3194)
!3207 = !DILocation(line: 236, column: 3, scope: !3194)
!3208 = !DILocation(line: 237, column: 3, scope: !3194)
!3209 = !DILocation(line: 238, column: 1, scope: !3194)
!3210 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !682, file: !682, line: 241, type: !521, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !802)
!3211 = !DILocation(line: 243, column: 3, scope: !3210)
!3212 = !DILocation(line: 248, column: 3, scope: !3210)
!3213 = !DILocation(line: 254, column: 3, scope: !3210)
!3214 = !DILocation(line: 259, column: 3, scope: !3210)
!3215 = !DILocation(line: 261, column: 1, scope: !3210)
!3216 = distinct !DISubprogram(name: "xnrealloc", scope: !3217, file: !3217, line: 147, type: !3218, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !809, retainedNodes: !3220)
!3217 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3218 = !DISubroutineType(types: !3219)
!3219 = !{!122, !122, !116, !116}
!3220 = !{!3221, !3222, !3223}
!3221 = !DILocalVariable(name: "p", arg: 1, scope: !3216, file: !3217, line: 147, type: !122)
!3222 = !DILocalVariable(name: "n", arg: 2, scope: !3216, file: !3217, line: 147, type: !116)
!3223 = !DILocalVariable(name: "s", arg: 3, scope: !3216, file: !3217, line: 147, type: !116)
!3224 = !DILocation(line: 0, scope: !3216)
!3225 = !DILocalVariable(name: "p", arg: 1, scope: !3226, file: !810, line: 83, type: !122)
!3226 = distinct !DISubprogram(name: "xreallocarray", scope: !810, file: !810, line: 83, type: !3218, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !809, retainedNodes: !3227)
!3227 = !{!3225, !3228, !3229}
!3228 = !DILocalVariable(name: "n", arg: 2, scope: !3226, file: !810, line: 83, type: !116)
!3229 = !DILocalVariable(name: "s", arg: 3, scope: !3226, file: !810, line: 83, type: !116)
!3230 = !DILocation(line: 0, scope: !3226, inlinedAt: !3231)
!3231 = distinct !DILocation(line: 149, column: 10, scope: !3216)
!3232 = !DILocation(line: 85, column: 25, scope: !3226, inlinedAt: !3231)
!3233 = !DILocalVariable(name: "p", arg: 1, scope: !3234, file: !810, line: 37, type: !122)
!3234 = distinct !DISubprogram(name: "check_nonnull", scope: !810, file: !810, line: 37, type: !3235, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !809, retainedNodes: !3237)
!3235 = !DISubroutineType(types: !3236)
!3236 = !{!122, !122}
!3237 = !{!3233}
!3238 = !DILocation(line: 0, scope: !3234, inlinedAt: !3239)
!3239 = distinct !DILocation(line: 85, column: 10, scope: !3226, inlinedAt: !3231)
!3240 = !DILocation(line: 39, column: 8, scope: !3241, inlinedAt: !3239)
!3241 = distinct !DILexicalBlock(scope: !3234, file: !810, line: 39, column: 7)
!3242 = !DILocation(line: 39, column: 7, scope: !3234, inlinedAt: !3239)
!3243 = !DILocation(line: 40, column: 5, scope: !3241, inlinedAt: !3239)
!3244 = !DILocation(line: 149, column: 3, scope: !3216)
!3245 = !DILocation(line: 0, scope: !3226)
!3246 = !DILocation(line: 85, column: 25, scope: !3226)
!3247 = !DILocation(line: 0, scope: !3234, inlinedAt: !3248)
!3248 = distinct !DILocation(line: 85, column: 10, scope: !3226)
!3249 = !DILocation(line: 39, column: 8, scope: !3241, inlinedAt: !3248)
!3250 = !DILocation(line: 39, column: 7, scope: !3234, inlinedAt: !3248)
!3251 = !DILocation(line: 40, column: 5, scope: !3241, inlinedAt: !3248)
!3252 = !DILocation(line: 85, column: 3, scope: !3226)
!3253 = distinct !DISubprogram(name: "xmalloc", scope: !810, file: !810, line: 47, type: !3254, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !809, retainedNodes: !3256)
!3254 = !DISubroutineType(types: !3255)
!3255 = !{!122, !116}
!3256 = !{!3257}
!3257 = !DILocalVariable(name: "s", arg: 1, scope: !3253, file: !810, line: 47, type: !116)
!3258 = !DILocation(line: 0, scope: !3253)
!3259 = !DILocation(line: 49, column: 25, scope: !3253)
!3260 = !DILocation(line: 0, scope: !3234, inlinedAt: !3261)
!3261 = distinct !DILocation(line: 49, column: 10, scope: !3253)
!3262 = !DILocation(line: 39, column: 8, scope: !3241, inlinedAt: !3261)
!3263 = !DILocation(line: 39, column: 7, scope: !3234, inlinedAt: !3261)
!3264 = !DILocation(line: 40, column: 5, scope: !3241, inlinedAt: !3261)
!3265 = !DILocation(line: 49, column: 3, scope: !3253)
!3266 = !DISubprogram(name: "malloc", scope: !1128, file: !1128, line: 540, type: !3254, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3267 = distinct !DISubprogram(name: "ximalloc", scope: !810, file: !810, line: 53, type: !3268, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !809, retainedNodes: !3270)
!3268 = !DISubroutineType(types: !3269)
!3269 = !{!122, !829}
!3270 = !{!3271}
!3271 = !DILocalVariable(name: "s", arg: 1, scope: !3267, file: !810, line: 53, type: !829)
!3272 = !DILocation(line: 0, scope: !3267)
!3273 = !DILocalVariable(name: "s", arg: 1, scope: !3274, file: !3275, line: 55, type: !829)
!3274 = distinct !DISubprogram(name: "imalloc", scope: !3275, file: !3275, line: 55, type: !3268, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !809, retainedNodes: !3276)
!3275 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3276 = !{!3273}
!3277 = !DILocation(line: 0, scope: !3274, inlinedAt: !3278)
!3278 = distinct !DILocation(line: 55, column: 25, scope: !3267)
!3279 = !DILocation(line: 57, column: 26, scope: !3274, inlinedAt: !3278)
!3280 = !DILocation(line: 0, scope: !3234, inlinedAt: !3281)
!3281 = distinct !DILocation(line: 55, column: 10, scope: !3267)
!3282 = !DILocation(line: 39, column: 8, scope: !3241, inlinedAt: !3281)
!3283 = !DILocation(line: 39, column: 7, scope: !3234, inlinedAt: !3281)
!3284 = !DILocation(line: 40, column: 5, scope: !3241, inlinedAt: !3281)
!3285 = !DILocation(line: 55, column: 3, scope: !3267)
!3286 = distinct !DISubprogram(name: "xcharalloc", scope: !810, file: !810, line: 59, type: !3287, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !809, retainedNodes: !3289)
!3287 = !DISubroutineType(types: !3288)
!3288 = !{!85, !116}
!3289 = !{!3290}
!3290 = !DILocalVariable(name: "n", arg: 1, scope: !3286, file: !810, line: 59, type: !116)
!3291 = !DILocation(line: 0, scope: !3286)
!3292 = !DILocation(line: 0, scope: !3253, inlinedAt: !3293)
!3293 = distinct !DILocation(line: 61, column: 10, scope: !3286)
!3294 = !DILocation(line: 49, column: 25, scope: !3253, inlinedAt: !3293)
!3295 = !DILocation(line: 0, scope: !3234, inlinedAt: !3296)
!3296 = distinct !DILocation(line: 49, column: 10, scope: !3253, inlinedAt: !3293)
!3297 = !DILocation(line: 39, column: 8, scope: !3241, inlinedAt: !3296)
!3298 = !DILocation(line: 39, column: 7, scope: !3234, inlinedAt: !3296)
!3299 = !DILocation(line: 40, column: 5, scope: !3241, inlinedAt: !3296)
!3300 = !DILocation(line: 61, column: 3, scope: !3286)
!3301 = distinct !DISubprogram(name: "xrealloc", scope: !810, file: !810, line: 68, type: !3302, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !809, retainedNodes: !3304)
!3302 = !DISubroutineType(types: !3303)
!3303 = !{!122, !122, !116}
!3304 = !{!3305, !3306}
!3305 = !DILocalVariable(name: "p", arg: 1, scope: !3301, file: !810, line: 68, type: !122)
!3306 = !DILocalVariable(name: "s", arg: 2, scope: !3301, file: !810, line: 68, type: !116)
!3307 = !DILocation(line: 0, scope: !3301)
!3308 = !DILocalVariable(name: "ptr", arg: 1, scope: !3309, file: !3310, line: 2057, type: !122)
!3309 = distinct !DISubprogram(name: "rpl_realloc", scope: !3310, file: !3310, line: 2057, type: !3302, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !809, retainedNodes: !3311)
!3310 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3311 = !{!3308, !3312}
!3312 = !DILocalVariable(name: "size", arg: 2, scope: !3309, file: !3310, line: 2057, type: !116)
!3313 = !DILocation(line: 0, scope: !3309, inlinedAt: !3314)
!3314 = distinct !DILocation(line: 70, column: 25, scope: !3301)
!3315 = !DILocation(line: 2059, column: 24, scope: !3309, inlinedAt: !3314)
!3316 = !DILocation(line: 2059, column: 10, scope: !3309, inlinedAt: !3314)
!3317 = !DILocation(line: 0, scope: !3234, inlinedAt: !3318)
!3318 = distinct !DILocation(line: 70, column: 10, scope: !3301)
!3319 = !DILocation(line: 39, column: 8, scope: !3241, inlinedAt: !3318)
!3320 = !DILocation(line: 39, column: 7, scope: !3234, inlinedAt: !3318)
!3321 = !DILocation(line: 40, column: 5, scope: !3241, inlinedAt: !3318)
!3322 = !DILocation(line: 70, column: 3, scope: !3301)
!3323 = !DISubprogram(name: "realloc", scope: !1128, file: !1128, line: 551, type: !3302, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3324 = distinct !DISubprogram(name: "xirealloc", scope: !810, file: !810, line: 74, type: !3325, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !809, retainedNodes: !3327)
!3325 = !DISubroutineType(types: !3326)
!3326 = !{!122, !122, !829}
!3327 = !{!3328, !3329}
!3328 = !DILocalVariable(name: "p", arg: 1, scope: !3324, file: !810, line: 74, type: !122)
!3329 = !DILocalVariable(name: "s", arg: 2, scope: !3324, file: !810, line: 74, type: !829)
!3330 = !DILocation(line: 0, scope: !3324)
!3331 = !DILocalVariable(name: "p", arg: 1, scope: !3332, file: !3275, line: 66, type: !122)
!3332 = distinct !DISubprogram(name: "irealloc", scope: !3275, file: !3275, line: 66, type: !3325, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !809, retainedNodes: !3333)
!3333 = !{!3331, !3334}
!3334 = !DILocalVariable(name: "s", arg: 2, scope: !3332, file: !3275, line: 66, type: !829)
!3335 = !DILocation(line: 0, scope: !3332, inlinedAt: !3336)
!3336 = distinct !DILocation(line: 76, column: 25, scope: !3324)
!3337 = !DILocation(line: 0, scope: !3309, inlinedAt: !3338)
!3338 = distinct !DILocation(line: 68, column: 26, scope: !3332, inlinedAt: !3336)
!3339 = !DILocation(line: 2059, column: 24, scope: !3309, inlinedAt: !3338)
!3340 = !DILocation(line: 2059, column: 10, scope: !3309, inlinedAt: !3338)
!3341 = !DILocation(line: 0, scope: !3234, inlinedAt: !3342)
!3342 = distinct !DILocation(line: 76, column: 10, scope: !3324)
!3343 = !DILocation(line: 39, column: 8, scope: !3241, inlinedAt: !3342)
!3344 = !DILocation(line: 39, column: 7, scope: !3234, inlinedAt: !3342)
!3345 = !DILocation(line: 40, column: 5, scope: !3241, inlinedAt: !3342)
!3346 = !DILocation(line: 76, column: 3, scope: !3324)
!3347 = distinct !DISubprogram(name: "xireallocarray", scope: !810, file: !810, line: 89, type: !3348, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !809, retainedNodes: !3350)
!3348 = !DISubroutineType(types: !3349)
!3349 = !{!122, !122, !829, !829}
!3350 = !{!3351, !3352, !3353}
!3351 = !DILocalVariable(name: "p", arg: 1, scope: !3347, file: !810, line: 89, type: !122)
!3352 = !DILocalVariable(name: "n", arg: 2, scope: !3347, file: !810, line: 89, type: !829)
!3353 = !DILocalVariable(name: "s", arg: 3, scope: !3347, file: !810, line: 89, type: !829)
!3354 = !DILocation(line: 0, scope: !3347)
!3355 = !DILocalVariable(name: "p", arg: 1, scope: !3356, file: !3275, line: 98, type: !122)
!3356 = distinct !DISubprogram(name: "ireallocarray", scope: !3275, file: !3275, line: 98, type: !3348, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !809, retainedNodes: !3357)
!3357 = !{!3355, !3358, !3359}
!3358 = !DILocalVariable(name: "n", arg: 2, scope: !3356, file: !3275, line: 98, type: !829)
!3359 = !DILocalVariable(name: "s", arg: 3, scope: !3356, file: !3275, line: 98, type: !829)
!3360 = !DILocation(line: 0, scope: !3356, inlinedAt: !3361)
!3361 = distinct !DILocation(line: 91, column: 25, scope: !3347)
!3362 = !DILocation(line: 101, column: 13, scope: !3356, inlinedAt: !3361)
!3363 = !DILocation(line: 0, scope: !3234, inlinedAt: !3364)
!3364 = distinct !DILocation(line: 91, column: 10, scope: !3347)
!3365 = !DILocation(line: 39, column: 8, scope: !3241, inlinedAt: !3364)
!3366 = !DILocation(line: 39, column: 7, scope: !3234, inlinedAt: !3364)
!3367 = !DILocation(line: 40, column: 5, scope: !3241, inlinedAt: !3364)
!3368 = !DILocation(line: 91, column: 3, scope: !3347)
!3369 = distinct !DISubprogram(name: "xnmalloc", scope: !810, file: !810, line: 98, type: !3370, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !809, retainedNodes: !3372)
!3370 = !DISubroutineType(types: !3371)
!3371 = !{!122, !116, !116}
!3372 = !{!3373, !3374}
!3373 = !DILocalVariable(name: "n", arg: 1, scope: !3369, file: !810, line: 98, type: !116)
!3374 = !DILocalVariable(name: "s", arg: 2, scope: !3369, file: !810, line: 98, type: !116)
!3375 = !DILocation(line: 0, scope: !3369)
!3376 = !DILocation(line: 0, scope: !3226, inlinedAt: !3377)
!3377 = distinct !DILocation(line: 100, column: 10, scope: !3369)
!3378 = !DILocation(line: 85, column: 25, scope: !3226, inlinedAt: !3377)
!3379 = !DILocation(line: 0, scope: !3234, inlinedAt: !3380)
!3380 = distinct !DILocation(line: 85, column: 10, scope: !3226, inlinedAt: !3377)
!3381 = !DILocation(line: 39, column: 8, scope: !3241, inlinedAt: !3380)
!3382 = !DILocation(line: 39, column: 7, scope: !3234, inlinedAt: !3380)
!3383 = !DILocation(line: 40, column: 5, scope: !3241, inlinedAt: !3380)
!3384 = !DILocation(line: 100, column: 3, scope: !3369)
!3385 = distinct !DISubprogram(name: "xinmalloc", scope: !810, file: !810, line: 104, type: !3386, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !809, retainedNodes: !3388)
!3386 = !DISubroutineType(types: !3387)
!3387 = !{!122, !829, !829}
!3388 = !{!3389, !3390}
!3389 = !DILocalVariable(name: "n", arg: 1, scope: !3385, file: !810, line: 104, type: !829)
!3390 = !DILocalVariable(name: "s", arg: 2, scope: !3385, file: !810, line: 104, type: !829)
!3391 = !DILocation(line: 0, scope: !3385)
!3392 = !DILocation(line: 0, scope: !3347, inlinedAt: !3393)
!3393 = distinct !DILocation(line: 106, column: 10, scope: !3385)
!3394 = !DILocation(line: 0, scope: !3356, inlinedAt: !3395)
!3395 = distinct !DILocation(line: 91, column: 25, scope: !3347, inlinedAt: !3393)
!3396 = !DILocation(line: 101, column: 13, scope: !3356, inlinedAt: !3395)
!3397 = !DILocation(line: 0, scope: !3234, inlinedAt: !3398)
!3398 = distinct !DILocation(line: 91, column: 10, scope: !3347, inlinedAt: !3393)
!3399 = !DILocation(line: 39, column: 8, scope: !3241, inlinedAt: !3398)
!3400 = !DILocation(line: 39, column: 7, scope: !3234, inlinedAt: !3398)
!3401 = !DILocation(line: 40, column: 5, scope: !3241, inlinedAt: !3398)
!3402 = !DILocation(line: 106, column: 3, scope: !3385)
!3403 = distinct !DISubprogram(name: "x2realloc", scope: !810, file: !810, line: 116, type: !3404, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !809, retainedNodes: !3406)
!3404 = !DISubroutineType(types: !3405)
!3405 = !{!122, !122, !816}
!3406 = !{!3407, !3408}
!3407 = !DILocalVariable(name: "p", arg: 1, scope: !3403, file: !810, line: 116, type: !122)
!3408 = !DILocalVariable(name: "ps", arg: 2, scope: !3403, file: !810, line: 116, type: !816)
!3409 = !DILocation(line: 0, scope: !3403)
!3410 = !DILocation(line: 0, scope: !813, inlinedAt: !3411)
!3411 = distinct !DILocation(line: 118, column: 10, scope: !3403)
!3412 = !DILocation(line: 178, column: 14, scope: !813, inlinedAt: !3411)
!3413 = !DILocation(line: 180, column: 9, scope: !3414, inlinedAt: !3411)
!3414 = distinct !DILexicalBlock(scope: !813, file: !810, line: 180, column: 7)
!3415 = !DILocation(line: 180, column: 7, scope: !813, inlinedAt: !3411)
!3416 = !DILocation(line: 182, column: 13, scope: !3417, inlinedAt: !3411)
!3417 = distinct !DILexicalBlock(scope: !3418, file: !810, line: 182, column: 11)
!3418 = distinct !DILexicalBlock(scope: !3414, file: !810, line: 181, column: 5)
!3419 = !DILocation(line: 182, column: 11, scope: !3418, inlinedAt: !3411)
!3420 = !DILocation(line: 197, column: 11, scope: !3421, inlinedAt: !3411)
!3421 = distinct !DILexicalBlock(scope: !3422, file: !810, line: 197, column: 11)
!3422 = distinct !DILexicalBlock(scope: !3414, file: !810, line: 195, column: 5)
!3423 = !DILocation(line: 197, column: 11, scope: !3422, inlinedAt: !3411)
!3424 = !DILocation(line: 198, column: 9, scope: !3421, inlinedAt: !3411)
!3425 = !DILocation(line: 0, scope: !3226, inlinedAt: !3426)
!3426 = distinct !DILocation(line: 201, column: 7, scope: !813, inlinedAt: !3411)
!3427 = !DILocation(line: 85, column: 25, scope: !3226, inlinedAt: !3426)
!3428 = !DILocation(line: 0, scope: !3234, inlinedAt: !3429)
!3429 = distinct !DILocation(line: 85, column: 10, scope: !3226, inlinedAt: !3426)
!3430 = !DILocation(line: 39, column: 8, scope: !3241, inlinedAt: !3429)
!3431 = !DILocation(line: 39, column: 7, scope: !3234, inlinedAt: !3429)
!3432 = !DILocation(line: 40, column: 5, scope: !3241, inlinedAt: !3429)
!3433 = !DILocation(line: 202, column: 7, scope: !813, inlinedAt: !3411)
!3434 = !DILocation(line: 118, column: 3, scope: !3403)
!3435 = !DILocation(line: 0, scope: !813)
!3436 = !DILocation(line: 178, column: 14, scope: !813)
!3437 = !DILocation(line: 180, column: 9, scope: !3414)
!3438 = !DILocation(line: 180, column: 7, scope: !813)
!3439 = !DILocation(line: 182, column: 13, scope: !3417)
!3440 = !DILocation(line: 182, column: 11, scope: !3418)
!3441 = !DILocation(line: 190, column: 30, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3417, file: !810, line: 183, column: 9)
!3443 = !DILocation(line: 191, column: 16, scope: !3442)
!3444 = !DILocation(line: 191, column: 13, scope: !3442)
!3445 = !DILocation(line: 192, column: 9, scope: !3442)
!3446 = !DILocation(line: 197, column: 11, scope: !3421)
!3447 = !DILocation(line: 197, column: 11, scope: !3422)
!3448 = !DILocation(line: 198, column: 9, scope: !3421)
!3449 = !DILocation(line: 0, scope: !3226, inlinedAt: !3450)
!3450 = distinct !DILocation(line: 201, column: 7, scope: !813)
!3451 = !DILocation(line: 85, column: 25, scope: !3226, inlinedAt: !3450)
!3452 = !DILocation(line: 0, scope: !3234, inlinedAt: !3453)
!3453 = distinct !DILocation(line: 85, column: 10, scope: !3226, inlinedAt: !3450)
!3454 = !DILocation(line: 39, column: 8, scope: !3241, inlinedAt: !3453)
!3455 = !DILocation(line: 39, column: 7, scope: !3234, inlinedAt: !3453)
!3456 = !DILocation(line: 40, column: 5, scope: !3241, inlinedAt: !3453)
!3457 = !DILocation(line: 202, column: 7, scope: !813)
!3458 = !DILocation(line: 203, column: 3, scope: !813)
!3459 = !DILocation(line: 0, scope: !825)
!3460 = !DILocation(line: 230, column: 14, scope: !825)
!3461 = !DILocation(line: 238, column: 7, scope: !3462)
!3462 = distinct !DILexicalBlock(scope: !825, file: !810, line: 238, column: 7)
!3463 = !DILocation(line: 238, column: 7, scope: !825)
!3464 = !DILocation(line: 240, column: 9, scope: !3465)
!3465 = distinct !DILexicalBlock(scope: !825, file: !810, line: 240, column: 7)
!3466 = !DILocation(line: 240, column: 18, scope: !3465)
!3467 = !DILocation(line: 253, column: 8, scope: !825)
!3468 = !DILocation(line: 256, column: 7, scope: !3469)
!3469 = distinct !DILexicalBlock(scope: !825, file: !810, line: 256, column: 7)
!3470 = !DILocation(line: 256, column: 7, scope: !825)
!3471 = !DILocation(line: 258, column: 27, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3469, file: !810, line: 257, column: 5)
!3473 = !DILocation(line: 259, column: 32, scope: !3472)
!3474 = !DILocation(line: 260, column: 5, scope: !3472)
!3475 = !DILocation(line: 262, column: 9, scope: !3476)
!3476 = distinct !DILexicalBlock(scope: !825, file: !810, line: 262, column: 7)
!3477 = !DILocation(line: 262, column: 7, scope: !825)
!3478 = !DILocation(line: 263, column: 9, scope: !3476)
!3479 = !DILocation(line: 263, column: 5, scope: !3476)
!3480 = !DILocation(line: 264, column: 9, scope: !3481)
!3481 = distinct !DILexicalBlock(scope: !825, file: !810, line: 264, column: 7)
!3482 = !DILocation(line: 264, column: 14, scope: !3481)
!3483 = !DILocation(line: 265, column: 7, scope: !3481)
!3484 = !DILocation(line: 265, column: 11, scope: !3481)
!3485 = !DILocation(line: 266, column: 11, scope: !3481)
!3486 = !DILocation(line: 267, column: 14, scope: !3481)
!3487 = !DILocation(line: 264, column: 7, scope: !825)
!3488 = !DILocation(line: 268, column: 5, scope: !3481)
!3489 = !DILocation(line: 0, scope: !3301, inlinedAt: !3490)
!3490 = distinct !DILocation(line: 269, column: 8, scope: !825)
!3491 = !DILocation(line: 0, scope: !3309, inlinedAt: !3492)
!3492 = distinct !DILocation(line: 70, column: 25, scope: !3301, inlinedAt: !3490)
!3493 = !DILocation(line: 2059, column: 24, scope: !3309, inlinedAt: !3492)
!3494 = !DILocation(line: 2059, column: 10, scope: !3309, inlinedAt: !3492)
!3495 = !DILocation(line: 0, scope: !3234, inlinedAt: !3496)
!3496 = distinct !DILocation(line: 70, column: 10, scope: !3301, inlinedAt: !3490)
!3497 = !DILocation(line: 39, column: 8, scope: !3241, inlinedAt: !3496)
!3498 = !DILocation(line: 39, column: 7, scope: !3234, inlinedAt: !3496)
!3499 = !DILocation(line: 40, column: 5, scope: !3241, inlinedAt: !3496)
!3500 = !DILocation(line: 270, column: 7, scope: !825)
!3501 = !DILocation(line: 271, column: 3, scope: !825)
!3502 = distinct !DISubprogram(name: "xzalloc", scope: !810, file: !810, line: 279, type: !3254, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !809, retainedNodes: !3503)
!3503 = !{!3504}
!3504 = !DILocalVariable(name: "s", arg: 1, scope: !3502, file: !810, line: 279, type: !116)
!3505 = !DILocation(line: 0, scope: !3502)
!3506 = !DILocalVariable(name: "n", arg: 1, scope: !3507, file: !810, line: 294, type: !116)
!3507 = distinct !DISubprogram(name: "xcalloc", scope: !810, file: !810, line: 294, type: !3370, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !809, retainedNodes: !3508)
!3508 = !{!3506, !3509}
!3509 = !DILocalVariable(name: "s", arg: 2, scope: !3507, file: !810, line: 294, type: !116)
!3510 = !DILocation(line: 0, scope: !3507, inlinedAt: !3511)
!3511 = distinct !DILocation(line: 281, column: 10, scope: !3502)
!3512 = !DILocation(line: 296, column: 25, scope: !3507, inlinedAt: !3511)
!3513 = !DILocation(line: 0, scope: !3234, inlinedAt: !3514)
!3514 = distinct !DILocation(line: 296, column: 10, scope: !3507, inlinedAt: !3511)
!3515 = !DILocation(line: 39, column: 8, scope: !3241, inlinedAt: !3514)
!3516 = !DILocation(line: 39, column: 7, scope: !3234, inlinedAt: !3514)
!3517 = !DILocation(line: 40, column: 5, scope: !3241, inlinedAt: !3514)
!3518 = !DILocation(line: 281, column: 3, scope: !3502)
!3519 = !DISubprogram(name: "calloc", scope: !1128, file: !1128, line: 543, type: !3370, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3520 = !DILocation(line: 0, scope: !3507)
!3521 = !DILocation(line: 296, column: 25, scope: !3507)
!3522 = !DILocation(line: 0, scope: !3234, inlinedAt: !3523)
!3523 = distinct !DILocation(line: 296, column: 10, scope: !3507)
!3524 = !DILocation(line: 39, column: 8, scope: !3241, inlinedAt: !3523)
!3525 = !DILocation(line: 39, column: 7, scope: !3234, inlinedAt: !3523)
!3526 = !DILocation(line: 40, column: 5, scope: !3241, inlinedAt: !3523)
!3527 = !DILocation(line: 296, column: 3, scope: !3507)
!3528 = distinct !DISubprogram(name: "xizalloc", scope: !810, file: !810, line: 285, type: !3268, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !809, retainedNodes: !3529)
!3529 = !{!3530}
!3530 = !DILocalVariable(name: "s", arg: 1, scope: !3528, file: !810, line: 285, type: !829)
!3531 = !DILocation(line: 0, scope: !3528)
!3532 = !DILocalVariable(name: "n", arg: 1, scope: !3533, file: !810, line: 300, type: !829)
!3533 = distinct !DISubprogram(name: "xicalloc", scope: !810, file: !810, line: 300, type: !3386, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !809, retainedNodes: !3534)
!3534 = !{!3532, !3535}
!3535 = !DILocalVariable(name: "s", arg: 2, scope: !3533, file: !810, line: 300, type: !829)
!3536 = !DILocation(line: 0, scope: !3533, inlinedAt: !3537)
!3537 = distinct !DILocation(line: 287, column: 10, scope: !3528)
!3538 = !DILocalVariable(name: "n", arg: 1, scope: !3539, file: !3275, line: 77, type: !829)
!3539 = distinct !DISubprogram(name: "icalloc", scope: !3275, file: !3275, line: 77, type: !3386, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !809, retainedNodes: !3540)
!3540 = !{!3538, !3541}
!3541 = !DILocalVariable(name: "s", arg: 2, scope: !3539, file: !3275, line: 77, type: !829)
!3542 = !DILocation(line: 0, scope: !3539, inlinedAt: !3543)
!3543 = distinct !DILocation(line: 302, column: 25, scope: !3533, inlinedAt: !3537)
!3544 = !DILocation(line: 91, column: 10, scope: !3539, inlinedAt: !3543)
!3545 = !DILocation(line: 0, scope: !3234, inlinedAt: !3546)
!3546 = distinct !DILocation(line: 302, column: 10, scope: !3533, inlinedAt: !3537)
!3547 = !DILocation(line: 39, column: 8, scope: !3241, inlinedAt: !3546)
!3548 = !DILocation(line: 39, column: 7, scope: !3234, inlinedAt: !3546)
!3549 = !DILocation(line: 40, column: 5, scope: !3241, inlinedAt: !3546)
!3550 = !DILocation(line: 287, column: 3, scope: !3528)
!3551 = !DILocation(line: 0, scope: !3533)
!3552 = !DILocation(line: 0, scope: !3539, inlinedAt: !3553)
!3553 = distinct !DILocation(line: 302, column: 25, scope: !3533)
!3554 = !DILocation(line: 91, column: 10, scope: !3539, inlinedAt: !3553)
!3555 = !DILocation(line: 0, scope: !3234, inlinedAt: !3556)
!3556 = distinct !DILocation(line: 302, column: 10, scope: !3533)
!3557 = !DILocation(line: 39, column: 8, scope: !3241, inlinedAt: !3556)
!3558 = !DILocation(line: 39, column: 7, scope: !3234, inlinedAt: !3556)
!3559 = !DILocation(line: 40, column: 5, scope: !3241, inlinedAt: !3556)
!3560 = !DILocation(line: 302, column: 3, scope: !3533)
!3561 = distinct !DISubprogram(name: "xmemdup", scope: !810, file: !810, line: 310, type: !3562, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !809, retainedNodes: !3564)
!3562 = !DISubroutineType(types: !3563)
!3563 = !{!122, !1149, !116}
!3564 = !{!3565, !3566}
!3565 = !DILocalVariable(name: "p", arg: 1, scope: !3561, file: !810, line: 310, type: !1149)
!3566 = !DILocalVariable(name: "s", arg: 2, scope: !3561, file: !810, line: 310, type: !116)
!3567 = !DILocation(line: 0, scope: !3561)
!3568 = !DILocation(line: 0, scope: !3253, inlinedAt: !3569)
!3569 = distinct !DILocation(line: 312, column: 18, scope: !3561)
!3570 = !DILocation(line: 49, column: 25, scope: !3253, inlinedAt: !3569)
!3571 = !DILocation(line: 0, scope: !3234, inlinedAt: !3572)
!3572 = distinct !DILocation(line: 49, column: 10, scope: !3253, inlinedAt: !3569)
!3573 = !DILocation(line: 39, column: 8, scope: !3241, inlinedAt: !3572)
!3574 = !DILocation(line: 39, column: 7, scope: !3234, inlinedAt: !3572)
!3575 = !DILocation(line: 40, column: 5, scope: !3241, inlinedAt: !3572)
!3576 = !DILocalVariable(name: "__dest", arg: 1, scope: !3577, file: !1708, line: 26, type: !3580)
!3577 = distinct !DISubprogram(name: "memcpy", scope: !1708, file: !1708, line: 26, type: !3578, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !809, retainedNodes: !3581)
!3578 = !DISubroutineType(types: !3579)
!3579 = !{!122, !3580, !1148, !116}
!3580 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !122)
!3581 = !{!3576, !3582, !3583}
!3582 = !DILocalVariable(name: "__src", arg: 2, scope: !3577, file: !1708, line: 26, type: !1148)
!3583 = !DILocalVariable(name: "__len", arg: 3, scope: !3577, file: !1708, line: 26, type: !116)
!3584 = !DILocation(line: 0, scope: !3577, inlinedAt: !3585)
!3585 = distinct !DILocation(line: 312, column: 10, scope: !3561)
!3586 = !DILocation(line: 29, column: 10, scope: !3577, inlinedAt: !3585)
!3587 = !DILocation(line: 312, column: 3, scope: !3561)
!3588 = distinct !DISubprogram(name: "ximemdup", scope: !810, file: !810, line: 316, type: !3589, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !809, retainedNodes: !3591)
!3589 = !DISubroutineType(types: !3590)
!3590 = !{!122, !1149, !829}
!3591 = !{!3592, !3593}
!3592 = !DILocalVariable(name: "p", arg: 1, scope: !3588, file: !810, line: 316, type: !1149)
!3593 = !DILocalVariable(name: "s", arg: 2, scope: !3588, file: !810, line: 316, type: !829)
!3594 = !DILocation(line: 0, scope: !3588)
!3595 = !DILocation(line: 0, scope: !3267, inlinedAt: !3596)
!3596 = distinct !DILocation(line: 318, column: 18, scope: !3588)
!3597 = !DILocation(line: 0, scope: !3274, inlinedAt: !3598)
!3598 = distinct !DILocation(line: 55, column: 25, scope: !3267, inlinedAt: !3596)
!3599 = !DILocation(line: 57, column: 26, scope: !3274, inlinedAt: !3598)
!3600 = !DILocation(line: 0, scope: !3234, inlinedAt: !3601)
!3601 = distinct !DILocation(line: 55, column: 10, scope: !3267, inlinedAt: !3596)
!3602 = !DILocation(line: 39, column: 8, scope: !3241, inlinedAt: !3601)
!3603 = !DILocation(line: 39, column: 7, scope: !3234, inlinedAt: !3601)
!3604 = !DILocation(line: 40, column: 5, scope: !3241, inlinedAt: !3601)
!3605 = !DILocation(line: 0, scope: !3577, inlinedAt: !3606)
!3606 = distinct !DILocation(line: 318, column: 10, scope: !3588)
!3607 = !DILocation(line: 29, column: 10, scope: !3577, inlinedAt: !3606)
!3608 = !DILocation(line: 318, column: 3, scope: !3588)
!3609 = distinct !DISubprogram(name: "ximemdup0", scope: !810, file: !810, line: 325, type: !3610, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !809, retainedNodes: !3612)
!3610 = !DISubroutineType(types: !3611)
!3611 = !{!85, !1149, !829}
!3612 = !{!3613, !3614, !3615}
!3613 = !DILocalVariable(name: "p", arg: 1, scope: !3609, file: !810, line: 325, type: !1149)
!3614 = !DILocalVariable(name: "s", arg: 2, scope: !3609, file: !810, line: 325, type: !829)
!3615 = !DILocalVariable(name: "result", scope: !3609, file: !810, line: 327, type: !85)
!3616 = !DILocation(line: 0, scope: !3609)
!3617 = !DILocation(line: 327, column: 30, scope: !3609)
!3618 = !DILocation(line: 0, scope: !3267, inlinedAt: !3619)
!3619 = distinct !DILocation(line: 327, column: 18, scope: !3609)
!3620 = !DILocation(line: 0, scope: !3274, inlinedAt: !3621)
!3621 = distinct !DILocation(line: 55, column: 25, scope: !3267, inlinedAt: !3619)
!3622 = !DILocation(line: 57, column: 26, scope: !3274, inlinedAt: !3621)
!3623 = !DILocation(line: 0, scope: !3234, inlinedAt: !3624)
!3624 = distinct !DILocation(line: 55, column: 10, scope: !3267, inlinedAt: !3619)
!3625 = !DILocation(line: 39, column: 8, scope: !3241, inlinedAt: !3624)
!3626 = !DILocation(line: 39, column: 7, scope: !3234, inlinedAt: !3624)
!3627 = !DILocation(line: 40, column: 5, scope: !3241, inlinedAt: !3624)
!3628 = !DILocation(line: 328, column: 3, scope: !3609)
!3629 = !DILocation(line: 328, column: 13, scope: !3609)
!3630 = !DILocation(line: 0, scope: !3577, inlinedAt: !3631)
!3631 = distinct !DILocation(line: 329, column: 10, scope: !3609)
!3632 = !DILocation(line: 29, column: 10, scope: !3577, inlinedAt: !3631)
!3633 = !DILocation(line: 329, column: 3, scope: !3609)
!3634 = distinct !DISubprogram(name: "xstrdup", scope: !810, file: !810, line: 335, type: !1130, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !809, retainedNodes: !3635)
!3635 = !{!3636}
!3636 = !DILocalVariable(name: "string", arg: 1, scope: !3634, file: !810, line: 335, type: !119)
!3637 = !DILocation(line: 0, scope: !3634)
!3638 = !DILocation(line: 337, column: 27, scope: !3634)
!3639 = !DILocation(line: 337, column: 43, scope: !3634)
!3640 = !DILocation(line: 0, scope: !3561, inlinedAt: !3641)
!3641 = distinct !DILocation(line: 337, column: 10, scope: !3634)
!3642 = !DILocation(line: 0, scope: !3253, inlinedAt: !3643)
!3643 = distinct !DILocation(line: 312, column: 18, scope: !3561, inlinedAt: !3641)
!3644 = !DILocation(line: 49, column: 25, scope: !3253, inlinedAt: !3643)
!3645 = !DILocation(line: 0, scope: !3234, inlinedAt: !3646)
!3646 = distinct !DILocation(line: 49, column: 10, scope: !3253, inlinedAt: !3643)
!3647 = !DILocation(line: 39, column: 8, scope: !3241, inlinedAt: !3646)
!3648 = !DILocation(line: 39, column: 7, scope: !3234, inlinedAt: !3646)
!3649 = !DILocation(line: 40, column: 5, scope: !3241, inlinedAt: !3646)
!3650 = !DILocation(line: 0, scope: !3577, inlinedAt: !3651)
!3651 = distinct !DILocation(line: 312, column: 10, scope: !3561, inlinedAt: !3641)
!3652 = !DILocation(line: 29, column: 10, scope: !3577, inlinedAt: !3651)
!3653 = !DILocation(line: 337, column: 3, scope: !3634)
!3654 = distinct !DISubprogram(name: "xalloc_die", scope: !772, file: !772, line: 32, type: !521, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !844, retainedNodes: !3655)
!3655 = !{!3656}
!3656 = !DILocalVariable(name: "__errstatus", scope: !3657, file: !772, line: 34, type: !3658)
!3657 = distinct !DILexicalBlock(scope: !3654, file: !772, line: 34, column: 3)
!3658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!3659 = !DILocation(line: 34, column: 3, scope: !3657)
!3660 = !DILocation(line: 0, scope: !3657)
!3661 = !DILocation(line: 40, column: 3, scope: !3654)
!3662 = distinct !DISubprogram(name: "close_stream", scope: !847, file: !847, line: 55, type: !3663, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !846, retainedNodes: !3699)
!3663 = !DISubroutineType(types: !3664)
!3664 = !{!83, !3665}
!3665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3666, size: 64)
!3666 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !186, line: 7, baseType: !3667)
!3667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !188, line: 49, size: 1728, elements: !3668)
!3668 = !{!3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698}
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3667, file: !188, line: 51, baseType: !83, size: 32)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3667, file: !188, line: 54, baseType: !85, size: 64, offset: 64)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3667, file: !188, line: 55, baseType: !85, size: 64, offset: 128)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3667, file: !188, line: 56, baseType: !85, size: 64, offset: 192)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3667, file: !188, line: 57, baseType: !85, size: 64, offset: 256)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3667, file: !188, line: 58, baseType: !85, size: 64, offset: 320)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3667, file: !188, line: 59, baseType: !85, size: 64, offset: 384)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3667, file: !188, line: 60, baseType: !85, size: 64, offset: 448)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3667, file: !188, line: 61, baseType: !85, size: 64, offset: 512)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3667, file: !188, line: 64, baseType: !85, size: 64, offset: 576)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3667, file: !188, line: 65, baseType: !85, size: 64, offset: 640)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3667, file: !188, line: 66, baseType: !85, size: 64, offset: 704)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3667, file: !188, line: 68, baseType: !203, size: 64, offset: 768)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3667, file: !188, line: 70, baseType: !3683, size: 64, offset: 832)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3667, file: !188, line: 72, baseType: !83, size: 32, offset: 896)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3667, file: !188, line: 73, baseType: !83, size: 32, offset: 928)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3667, file: !188, line: 74, baseType: !210, size: 64, offset: 960)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3667, file: !188, line: 77, baseType: !115, size: 16, offset: 1024)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3667, file: !188, line: 78, baseType: !215, size: 8, offset: 1040)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3667, file: !188, line: 79, baseType: !126, size: 8, offset: 1048)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3667, file: !188, line: 81, baseType: !218, size: 64, offset: 1088)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3667, file: !188, line: 89, baseType: !221, size: 64, offset: 1152)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3667, file: !188, line: 91, baseType: !223, size: 64, offset: 1216)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3667, file: !188, line: 92, baseType: !226, size: 64, offset: 1280)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3667, file: !188, line: 93, baseType: !3683, size: 64, offset: 1344)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3667, file: !188, line: 94, baseType: !122, size: 64, offset: 1408)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3667, file: !188, line: 95, baseType: !116, size: 64, offset: 1472)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3667, file: !188, line: 96, baseType: !83, size: 32, offset: 1536)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3667, file: !188, line: 98, baseType: !233, size: 160, offset: 1568)
!3699 = !{!3700, !3701, !3703, !3704}
!3700 = !DILocalVariable(name: "stream", arg: 1, scope: !3662, file: !847, line: 55, type: !3665)
!3701 = !DILocalVariable(name: "some_pending", scope: !3662, file: !847, line: 57, type: !3702)
!3702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!3703 = !DILocalVariable(name: "prev_fail", scope: !3662, file: !847, line: 58, type: !3702)
!3704 = !DILocalVariable(name: "fclose_fail", scope: !3662, file: !847, line: 59, type: !3702)
!3705 = !DILocation(line: 0, scope: !3662)
!3706 = !DILocation(line: 57, column: 30, scope: !3662)
!3707 = !DILocalVariable(name: "__stream", arg: 1, scope: !3708, file: !1239, line: 135, type: !3665)
!3708 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1239, file: !1239, line: 135, type: !3663, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !846, retainedNodes: !3709)
!3709 = !{!3707}
!3710 = !DILocation(line: 0, scope: !3708, inlinedAt: !3711)
!3711 = distinct !DILocation(line: 58, column: 27, scope: !3662)
!3712 = !DILocation(line: 137, column: 10, scope: !3708, inlinedAt: !3711)
!3713 = !{!1247, !891, i64 0}
!3714 = !DILocation(line: 58, column: 43, scope: !3662)
!3715 = !DILocation(line: 59, column: 29, scope: !3662)
!3716 = !DILocation(line: 59, column: 45, scope: !3662)
!3717 = !DILocation(line: 69, column: 17, scope: !3718)
!3718 = distinct !DILexicalBlock(scope: !3662, file: !847, line: 69, column: 7)
!3719 = !DILocation(line: 57, column: 50, scope: !3662)
!3720 = !DILocation(line: 69, column: 33, scope: !3718)
!3721 = !DILocation(line: 69, column: 53, scope: !3718)
!3722 = !DILocation(line: 69, column: 59, scope: !3718)
!3723 = !DILocation(line: 69, column: 7, scope: !3662)
!3724 = !DILocation(line: 71, column: 11, scope: !3725)
!3725 = distinct !DILexicalBlock(scope: !3718, file: !847, line: 70, column: 5)
!3726 = !DILocation(line: 72, column: 9, scope: !3727)
!3727 = distinct !DILexicalBlock(scope: !3725, file: !847, line: 71, column: 11)
!3728 = !DILocation(line: 72, column: 15, scope: !3727)
!3729 = !DILocation(line: 77, column: 1, scope: !3662)
!3730 = !DISubprogram(name: "__fpending", scope: !3731, file: !3731, line: 75, type: !3732, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3731 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3732 = !DISubroutineType(types: !3733)
!3733 = !{!116, !3665}
!3734 = distinct !DISubprogram(name: "rpl_fclose", scope: !849, file: !849, line: 58, type: !3735, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !848, retainedNodes: !3771)
!3735 = !DISubroutineType(types: !3736)
!3736 = !{!83, !3737}
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!3738 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !186, line: 7, baseType: !3739)
!3739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !188, line: 49, size: 1728, elements: !3740)
!3740 = !{!3741, !3742, !3743, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770}
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3739, file: !188, line: 51, baseType: !83, size: 32)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3739, file: !188, line: 54, baseType: !85, size: 64, offset: 64)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3739, file: !188, line: 55, baseType: !85, size: 64, offset: 128)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3739, file: !188, line: 56, baseType: !85, size: 64, offset: 192)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3739, file: !188, line: 57, baseType: !85, size: 64, offset: 256)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3739, file: !188, line: 58, baseType: !85, size: 64, offset: 320)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3739, file: !188, line: 59, baseType: !85, size: 64, offset: 384)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3739, file: !188, line: 60, baseType: !85, size: 64, offset: 448)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3739, file: !188, line: 61, baseType: !85, size: 64, offset: 512)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3739, file: !188, line: 64, baseType: !85, size: 64, offset: 576)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3739, file: !188, line: 65, baseType: !85, size: 64, offset: 640)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3739, file: !188, line: 66, baseType: !85, size: 64, offset: 704)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3739, file: !188, line: 68, baseType: !203, size: 64, offset: 768)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3739, file: !188, line: 70, baseType: !3755, size: 64, offset: 832)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3739, file: !188, line: 72, baseType: !83, size: 32, offset: 896)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3739, file: !188, line: 73, baseType: !83, size: 32, offset: 928)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3739, file: !188, line: 74, baseType: !210, size: 64, offset: 960)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3739, file: !188, line: 77, baseType: !115, size: 16, offset: 1024)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3739, file: !188, line: 78, baseType: !215, size: 8, offset: 1040)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3739, file: !188, line: 79, baseType: !126, size: 8, offset: 1048)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3739, file: !188, line: 81, baseType: !218, size: 64, offset: 1088)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3739, file: !188, line: 89, baseType: !221, size: 64, offset: 1152)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3739, file: !188, line: 91, baseType: !223, size: 64, offset: 1216)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3739, file: !188, line: 92, baseType: !226, size: 64, offset: 1280)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3739, file: !188, line: 93, baseType: !3755, size: 64, offset: 1344)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3739, file: !188, line: 94, baseType: !122, size: 64, offset: 1408)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3739, file: !188, line: 95, baseType: !116, size: 64, offset: 1472)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3739, file: !188, line: 96, baseType: !83, size: 32, offset: 1536)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3739, file: !188, line: 98, baseType: !233, size: 160, offset: 1568)
!3771 = !{!3772, !3773, !3774, !3775}
!3772 = !DILocalVariable(name: "fp", arg: 1, scope: !3734, file: !849, line: 58, type: !3737)
!3773 = !DILocalVariable(name: "saved_errno", scope: !3734, file: !849, line: 60, type: !83)
!3774 = !DILocalVariable(name: "fd", scope: !3734, file: !849, line: 63, type: !83)
!3775 = !DILocalVariable(name: "result", scope: !3734, file: !849, line: 74, type: !83)
!3776 = !DILocation(line: 0, scope: !3734)
!3777 = !DILocation(line: 63, column: 12, scope: !3734)
!3778 = !DILocation(line: 64, column: 10, scope: !3779)
!3779 = distinct !DILexicalBlock(scope: !3734, file: !849, line: 64, column: 7)
!3780 = !DILocation(line: 64, column: 7, scope: !3734)
!3781 = !DILocation(line: 65, column: 12, scope: !3779)
!3782 = !DILocation(line: 65, column: 5, scope: !3779)
!3783 = !DILocation(line: 70, column: 9, scope: !3784)
!3784 = distinct !DILexicalBlock(scope: !3734, file: !849, line: 70, column: 7)
!3785 = !DILocation(line: 70, column: 23, scope: !3784)
!3786 = !DILocation(line: 70, column: 33, scope: !3784)
!3787 = !DILocation(line: 70, column: 26, scope: !3784)
!3788 = !DILocation(line: 70, column: 59, scope: !3784)
!3789 = !DILocation(line: 71, column: 7, scope: !3784)
!3790 = !DILocation(line: 71, column: 10, scope: !3784)
!3791 = !DILocation(line: 70, column: 7, scope: !3734)
!3792 = !DILocation(line: 100, column: 12, scope: !3734)
!3793 = !DILocation(line: 105, column: 7, scope: !3734)
!3794 = !DILocation(line: 72, column: 19, scope: !3784)
!3795 = !DILocation(line: 105, column: 19, scope: !3796)
!3796 = distinct !DILexicalBlock(scope: !3734, file: !849, line: 105, column: 7)
!3797 = !DILocation(line: 107, column: 13, scope: !3798)
!3798 = distinct !DILexicalBlock(scope: !3796, file: !849, line: 106, column: 5)
!3799 = !DILocation(line: 109, column: 5, scope: !3798)
!3800 = !DILocation(line: 112, column: 1, scope: !3734)
!3801 = !DISubprogram(name: "fileno", scope: !481, file: !481, line: 809, type: !3735, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3802 = !DISubprogram(name: "fclose", scope: !481, file: !481, line: 178, type: !3735, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3803 = !DISubprogram(name: "__freading", scope: !3731, file: !3731, line: 51, type: !3735, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3804 = !DISubprogram(name: "lseek", scope: !1439, file: !1439, line: 339, type: !3805, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3805 = !DISubroutineType(types: !3806)
!3806 = !{!210, !83, !210, !83}
!3807 = distinct !DISubprogram(name: "rpl_fflush", scope: !851, file: !851, line: 130, type: !3808, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !850, retainedNodes: !3844)
!3808 = !DISubroutineType(types: !3809)
!3809 = !{!83, !3810}
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !186, line: 7, baseType: !3812)
!3812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !188, line: 49, size: 1728, elements: !3813)
!3813 = !{!3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824, !3825, !3826, !3827, !3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3843}
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3812, file: !188, line: 51, baseType: !83, size: 32)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3812, file: !188, line: 54, baseType: !85, size: 64, offset: 64)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3812, file: !188, line: 55, baseType: !85, size: 64, offset: 128)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3812, file: !188, line: 56, baseType: !85, size: 64, offset: 192)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3812, file: !188, line: 57, baseType: !85, size: 64, offset: 256)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3812, file: !188, line: 58, baseType: !85, size: 64, offset: 320)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3812, file: !188, line: 59, baseType: !85, size: 64, offset: 384)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3812, file: !188, line: 60, baseType: !85, size: 64, offset: 448)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3812, file: !188, line: 61, baseType: !85, size: 64, offset: 512)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3812, file: !188, line: 64, baseType: !85, size: 64, offset: 576)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3812, file: !188, line: 65, baseType: !85, size: 64, offset: 640)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3812, file: !188, line: 66, baseType: !85, size: 64, offset: 704)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3812, file: !188, line: 68, baseType: !203, size: 64, offset: 768)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3812, file: !188, line: 70, baseType: !3828, size: 64, offset: 832)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3812, file: !188, line: 72, baseType: !83, size: 32, offset: 896)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3812, file: !188, line: 73, baseType: !83, size: 32, offset: 928)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3812, file: !188, line: 74, baseType: !210, size: 64, offset: 960)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3812, file: !188, line: 77, baseType: !115, size: 16, offset: 1024)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3812, file: !188, line: 78, baseType: !215, size: 8, offset: 1040)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3812, file: !188, line: 79, baseType: !126, size: 8, offset: 1048)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3812, file: !188, line: 81, baseType: !218, size: 64, offset: 1088)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3812, file: !188, line: 89, baseType: !221, size: 64, offset: 1152)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3812, file: !188, line: 91, baseType: !223, size: 64, offset: 1216)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3812, file: !188, line: 92, baseType: !226, size: 64, offset: 1280)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3812, file: !188, line: 93, baseType: !3828, size: 64, offset: 1344)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3812, file: !188, line: 94, baseType: !122, size: 64, offset: 1408)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3812, file: !188, line: 95, baseType: !116, size: 64, offset: 1472)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3812, file: !188, line: 96, baseType: !83, size: 32, offset: 1536)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3812, file: !188, line: 98, baseType: !233, size: 160, offset: 1568)
!3844 = !{!3845}
!3845 = !DILocalVariable(name: "stream", arg: 1, scope: !3807, file: !851, line: 130, type: !3810)
!3846 = !DILocation(line: 0, scope: !3807)
!3847 = !DILocation(line: 151, column: 14, scope: !3848)
!3848 = distinct !DILexicalBlock(scope: !3807, file: !851, line: 151, column: 7)
!3849 = !DILocation(line: 151, column: 22, scope: !3848)
!3850 = !DILocation(line: 151, column: 27, scope: !3848)
!3851 = !DILocation(line: 151, column: 7, scope: !3807)
!3852 = !DILocation(line: 152, column: 12, scope: !3848)
!3853 = !DILocation(line: 152, column: 5, scope: !3848)
!3854 = !DILocalVariable(name: "fp", arg: 1, scope: !3855, file: !851, line: 42, type: !3810)
!3855 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !851, file: !851, line: 42, type: !3856, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !850, retainedNodes: !3858)
!3856 = !DISubroutineType(types: !3857)
!3857 = !{null, !3810}
!3858 = !{!3854}
!3859 = !DILocation(line: 0, scope: !3855, inlinedAt: !3860)
!3860 = distinct !DILocation(line: 157, column: 3, scope: !3807)
!3861 = !DILocation(line: 44, column: 12, scope: !3862, inlinedAt: !3860)
!3862 = distinct !DILexicalBlock(scope: !3855, file: !851, line: 44, column: 7)
!3863 = !DILocation(line: 44, column: 19, scope: !3862, inlinedAt: !3860)
!3864 = !DILocation(line: 44, column: 7, scope: !3855, inlinedAt: !3860)
!3865 = !DILocation(line: 46, column: 5, scope: !3862, inlinedAt: !3860)
!3866 = !DILocation(line: 159, column: 10, scope: !3807)
!3867 = !DILocation(line: 159, column: 3, scope: !3807)
!3868 = !DILocation(line: 236, column: 1, scope: !3807)
!3869 = !DISubprogram(name: "fflush", scope: !481, file: !481, line: 230, type: !3808, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3870 = distinct !DISubprogram(name: "rpl_fseeko", scope: !853, file: !853, line: 28, type: !3871, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !852, retainedNodes: !3908)
!3871 = !DISubroutineType(types: !3872)
!3872 = !{!83, !3873, !3907, !83}
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3874 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !186, line: 7, baseType: !3875)
!3875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !188, line: 49, size: 1728, elements: !3876)
!3876 = !{!3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906}
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3875, file: !188, line: 51, baseType: !83, size: 32)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3875, file: !188, line: 54, baseType: !85, size: 64, offset: 64)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3875, file: !188, line: 55, baseType: !85, size: 64, offset: 128)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3875, file: !188, line: 56, baseType: !85, size: 64, offset: 192)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3875, file: !188, line: 57, baseType: !85, size: 64, offset: 256)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3875, file: !188, line: 58, baseType: !85, size: 64, offset: 320)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3875, file: !188, line: 59, baseType: !85, size: 64, offset: 384)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3875, file: !188, line: 60, baseType: !85, size: 64, offset: 448)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3875, file: !188, line: 61, baseType: !85, size: 64, offset: 512)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3875, file: !188, line: 64, baseType: !85, size: 64, offset: 576)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3875, file: !188, line: 65, baseType: !85, size: 64, offset: 640)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3875, file: !188, line: 66, baseType: !85, size: 64, offset: 704)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3875, file: !188, line: 68, baseType: !203, size: 64, offset: 768)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3875, file: !188, line: 70, baseType: !3891, size: 64, offset: 832)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3875, file: !188, line: 72, baseType: !83, size: 32, offset: 896)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3875, file: !188, line: 73, baseType: !83, size: 32, offset: 928)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3875, file: !188, line: 74, baseType: !210, size: 64, offset: 960)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3875, file: !188, line: 77, baseType: !115, size: 16, offset: 1024)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3875, file: !188, line: 78, baseType: !215, size: 8, offset: 1040)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3875, file: !188, line: 79, baseType: !126, size: 8, offset: 1048)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3875, file: !188, line: 81, baseType: !218, size: 64, offset: 1088)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3875, file: !188, line: 89, baseType: !221, size: 64, offset: 1152)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3875, file: !188, line: 91, baseType: !223, size: 64, offset: 1216)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3875, file: !188, line: 92, baseType: !226, size: 64, offset: 1280)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3875, file: !188, line: 93, baseType: !3891, size: 64, offset: 1344)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3875, file: !188, line: 94, baseType: !122, size: 64, offset: 1408)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3875, file: !188, line: 95, baseType: !116, size: 64, offset: 1472)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3875, file: !188, line: 96, baseType: !83, size: 32, offset: 1536)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3875, file: !188, line: 98, baseType: !233, size: 160, offset: 1568)
!3907 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !481, line: 63, baseType: !210)
!3908 = !{!3909, !3910, !3911, !3912}
!3909 = !DILocalVariable(name: "fp", arg: 1, scope: !3870, file: !853, line: 28, type: !3873)
!3910 = !DILocalVariable(name: "offset", arg: 2, scope: !3870, file: !853, line: 28, type: !3907)
!3911 = !DILocalVariable(name: "whence", arg: 3, scope: !3870, file: !853, line: 28, type: !83)
!3912 = !DILocalVariable(name: "pos", scope: !3913, file: !853, line: 123, type: !3907)
!3913 = distinct !DILexicalBlock(scope: !3914, file: !853, line: 119, column: 5)
!3914 = distinct !DILexicalBlock(scope: !3870, file: !853, line: 55, column: 7)
!3915 = !DILocation(line: 0, scope: !3870)
!3916 = !DILocation(line: 55, column: 12, scope: !3914)
!3917 = !{!1247, !883, i64 16}
!3918 = !DILocation(line: 55, column: 33, scope: !3914)
!3919 = !{!1247, !883, i64 8}
!3920 = !DILocation(line: 55, column: 25, scope: !3914)
!3921 = !DILocation(line: 56, column: 7, scope: !3914)
!3922 = !DILocation(line: 56, column: 15, scope: !3914)
!3923 = !DILocation(line: 56, column: 37, scope: !3914)
!3924 = !{!1247, !883, i64 32}
!3925 = !DILocation(line: 56, column: 29, scope: !3914)
!3926 = !DILocation(line: 57, column: 7, scope: !3914)
!3927 = !DILocation(line: 57, column: 15, scope: !3914)
!3928 = !{!1247, !883, i64 72}
!3929 = !DILocation(line: 57, column: 29, scope: !3914)
!3930 = !DILocation(line: 55, column: 7, scope: !3870)
!3931 = !DILocation(line: 123, column: 26, scope: !3913)
!3932 = !DILocation(line: 123, column: 19, scope: !3913)
!3933 = !DILocation(line: 0, scope: !3913)
!3934 = !DILocation(line: 124, column: 15, scope: !3935)
!3935 = distinct !DILexicalBlock(scope: !3913, file: !853, line: 124, column: 11)
!3936 = !DILocation(line: 124, column: 11, scope: !3913)
!3937 = !DILocation(line: 135, column: 19, scope: !3913)
!3938 = !DILocation(line: 136, column: 12, scope: !3913)
!3939 = !DILocation(line: 136, column: 20, scope: !3913)
!3940 = !{!1247, !1248, i64 144}
!3941 = !DILocation(line: 167, column: 7, scope: !3913)
!3942 = !DILocation(line: 169, column: 10, scope: !3870)
!3943 = !DILocation(line: 169, column: 3, scope: !3870)
!3944 = !DILocation(line: 170, column: 1, scope: !3870)
!3945 = !DISubprogram(name: "fseeko", scope: !481, file: !481, line: 736, type: !3946, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3946 = !DISubroutineType(types: !3947)
!3947 = !{!83, !3873, !210, !83}
!3948 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !779, file: !779, line: 100, type: !3949, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !3952)
!3949 = !DISubroutineType(types: !3950)
!3950 = !{!116, !1726, !119, !116, !3951}
!3951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!3952 = !{!3953, !3954, !3955, !3956, !3957}
!3953 = !DILocalVariable(name: "pwc", arg: 1, scope: !3948, file: !779, line: 100, type: !1726)
!3954 = !DILocalVariable(name: "s", arg: 2, scope: !3948, file: !779, line: 100, type: !119)
!3955 = !DILocalVariable(name: "n", arg: 3, scope: !3948, file: !779, line: 100, type: !116)
!3956 = !DILocalVariable(name: "ps", arg: 4, scope: !3948, file: !779, line: 100, type: !3951)
!3957 = !DILocalVariable(name: "ret", scope: !3948, file: !779, line: 130, type: !116)
!3958 = !DILocation(line: 0, scope: !3948)
!3959 = !DILocation(line: 105, column: 9, scope: !3960)
!3960 = distinct !DILexicalBlock(scope: !3948, file: !779, line: 105, column: 7)
!3961 = !DILocation(line: 105, column: 7, scope: !3948)
!3962 = !DILocation(line: 117, column: 10, scope: !3963)
!3963 = distinct !DILexicalBlock(scope: !3948, file: !779, line: 117, column: 7)
!3964 = !DILocation(line: 117, column: 7, scope: !3948)
!3965 = !DILocation(line: 130, column: 16, scope: !3948)
!3966 = !DILocation(line: 135, column: 11, scope: !3967)
!3967 = distinct !DILexicalBlock(scope: !3948, file: !779, line: 135, column: 7)
!3968 = !DILocation(line: 135, column: 25, scope: !3967)
!3969 = !DILocation(line: 135, column: 30, scope: !3967)
!3970 = !DILocation(line: 135, column: 7, scope: !3948)
!3971 = !DILocalVariable(name: "ps", arg: 1, scope: !3972, file: !1699, line: 1135, type: !3951)
!3972 = distinct !DISubprogram(name: "mbszero", scope: !1699, file: !1699, line: 1135, type: !3973, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !3975)
!3973 = !DISubroutineType(types: !3974)
!3974 = !{null, !3951}
!3975 = !{!3971}
!3976 = !DILocation(line: 0, scope: !3972, inlinedAt: !3977)
!3977 = distinct !DILocation(line: 137, column: 5, scope: !3967)
!3978 = !DILocalVariable(name: "__dest", arg: 1, scope: !3979, file: !1708, line: 57, type: !122)
!3979 = distinct !DISubprogram(name: "memset", scope: !1708, file: !1708, line: 57, type: !1709, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !3980)
!3980 = !{!3978, !3981, !3982}
!3981 = !DILocalVariable(name: "__ch", arg: 2, scope: !3979, file: !1708, line: 57, type: !83)
!3982 = !DILocalVariable(name: "__len", arg: 3, scope: !3979, file: !1708, line: 57, type: !116)
!3983 = !DILocation(line: 0, scope: !3979, inlinedAt: !3984)
!3984 = distinct !DILocation(line: 1137, column: 3, scope: !3972, inlinedAt: !3977)
!3985 = !DILocation(line: 59, column: 10, scope: !3979, inlinedAt: !3984)
!3986 = !DILocation(line: 137, column: 5, scope: !3967)
!3987 = !DILocation(line: 138, column: 11, scope: !3988)
!3988 = distinct !DILexicalBlock(scope: !3948, file: !779, line: 138, column: 7)
!3989 = !DILocation(line: 138, column: 7, scope: !3948)
!3990 = !DILocation(line: 139, column: 5, scope: !3988)
!3991 = !DILocation(line: 143, column: 26, scope: !3992)
!3992 = distinct !DILexicalBlock(scope: !3948, file: !779, line: 143, column: 7)
!3993 = !DILocation(line: 143, column: 41, scope: !3992)
!3994 = !DILocation(line: 143, column: 7, scope: !3948)
!3995 = !DILocation(line: 145, column: 15, scope: !3996)
!3996 = distinct !DILexicalBlock(scope: !3997, file: !779, line: 145, column: 11)
!3997 = distinct !DILexicalBlock(scope: !3992, file: !779, line: 144, column: 5)
!3998 = !DILocation(line: 145, column: 11, scope: !3997)
!3999 = !DILocation(line: 146, column: 32, scope: !3996)
!4000 = !DILocation(line: 146, column: 16, scope: !3996)
!4001 = !DILocation(line: 146, column: 14, scope: !3996)
!4002 = !DILocation(line: 146, column: 9, scope: !3996)
!4003 = !DILocation(line: 286, column: 1, scope: !3948)
!4004 = !DISubprogram(name: "mbsinit", scope: !4005, file: !4005, line: 293, type: !4006, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4005 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4006 = !DISubroutineType(types: !4007)
!4007 = !{!83, !4008}
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4009, size: 64)
!4009 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !785)
!4010 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !855, file: !855, line: 27, type: !3218, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !854, retainedNodes: !4011)
!4011 = !{!4012, !4013, !4014, !4015}
!4012 = !DILocalVariable(name: "ptr", arg: 1, scope: !4010, file: !855, line: 27, type: !122)
!4013 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4010, file: !855, line: 27, type: !116)
!4014 = !DILocalVariable(name: "size", arg: 3, scope: !4010, file: !855, line: 27, type: !116)
!4015 = !DILocalVariable(name: "nbytes", scope: !4010, file: !855, line: 29, type: !116)
!4016 = !DILocation(line: 0, scope: !4010)
!4017 = !DILocation(line: 30, column: 7, scope: !4018)
!4018 = distinct !DILexicalBlock(scope: !4010, file: !855, line: 30, column: 7)
!4019 = !DILocation(line: 30, column: 7, scope: !4010)
!4020 = !DILocation(line: 32, column: 7, scope: !4021)
!4021 = distinct !DILexicalBlock(scope: !4018, file: !855, line: 31, column: 5)
!4022 = !DILocation(line: 32, column: 13, scope: !4021)
!4023 = !DILocation(line: 33, column: 7, scope: !4021)
!4024 = !DILocalVariable(name: "ptr", arg: 1, scope: !4025, file: !3310, line: 2057, type: !122)
!4025 = distinct !DISubprogram(name: "rpl_realloc", scope: !3310, file: !3310, line: 2057, type: !3302, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !854, retainedNodes: !4026)
!4026 = !{!4024, !4027}
!4027 = !DILocalVariable(name: "size", arg: 2, scope: !4025, file: !3310, line: 2057, type: !116)
!4028 = !DILocation(line: 0, scope: !4025, inlinedAt: !4029)
!4029 = distinct !DILocation(line: 37, column: 10, scope: !4010)
!4030 = !DILocation(line: 2059, column: 24, scope: !4025, inlinedAt: !4029)
!4031 = !DILocation(line: 2059, column: 10, scope: !4025, inlinedAt: !4029)
!4032 = !DILocation(line: 37, column: 3, scope: !4010)
!4033 = !DILocation(line: 38, column: 1, scope: !4010)
!4034 = distinct !DISubprogram(name: "hard_locale", scope: !797, file: !797, line: 28, type: !4035, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !856, retainedNodes: !4037)
!4035 = !DISubroutineType(types: !4036)
!4036 = !{!171, !83}
!4037 = !{!4038, !4039}
!4038 = !DILocalVariable(name: "category", arg: 1, scope: !4034, file: !797, line: 28, type: !83)
!4039 = !DILocalVariable(name: "locale", scope: !4034, file: !797, line: 30, type: !4040)
!4040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4041)
!4041 = !{!4042}
!4042 = !DISubrange(count: 257)
!4043 = distinct !DIAssignID()
!4044 = !DILocation(line: 0, scope: !4034)
!4045 = !DILocation(line: 30, column: 3, scope: !4034)
!4046 = !DILocation(line: 32, column: 7, scope: !4047)
!4047 = distinct !DILexicalBlock(scope: !4034, file: !797, line: 32, column: 7)
!4048 = !DILocation(line: 32, column: 7, scope: !4034)
!4049 = !DILocalVariable(name: "__s1", arg: 1, scope: !4050, file: !932, line: 1359, type: !119)
!4050 = distinct !DISubprogram(name: "streq", scope: !932, file: !932, line: 1359, type: !933, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !856, retainedNodes: !4051)
!4051 = !{!4049, !4052}
!4052 = !DILocalVariable(name: "__s2", arg: 2, scope: !4050, file: !932, line: 1359, type: !119)
!4053 = !DILocation(line: 0, scope: !4050, inlinedAt: !4054)
!4054 = distinct !DILocation(line: 35, column: 9, scope: !4055)
!4055 = distinct !DILexicalBlock(scope: !4034, file: !797, line: 35, column: 7)
!4056 = !DILocation(line: 1361, column: 11, scope: !4050, inlinedAt: !4054)
!4057 = !DILocation(line: 1361, column: 10, scope: !4050, inlinedAt: !4054)
!4058 = !DILocation(line: 35, column: 29, scope: !4055)
!4059 = !DILocation(line: 0, scope: !4050, inlinedAt: !4060)
!4060 = distinct !DILocation(line: 35, column: 32, scope: !4055)
!4061 = !DILocation(line: 1361, column: 11, scope: !4050, inlinedAt: !4060)
!4062 = !DILocation(line: 1361, column: 10, scope: !4050, inlinedAt: !4060)
!4063 = !DILocation(line: 35, column: 7, scope: !4034)
!4064 = !DILocation(line: 46, column: 3, scope: !4034)
!4065 = !DILocation(line: 47, column: 1, scope: !4034)
!4066 = distinct !DISubprogram(name: "setlocale_null_r", scope: !859, file: !859, line: 154, type: !4067, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !858, retainedNodes: !4069)
!4067 = !DISubroutineType(types: !4068)
!4068 = !{!83, !83, !85, !116}
!4069 = !{!4070, !4071, !4072}
!4070 = !DILocalVariable(name: "category", arg: 1, scope: !4066, file: !859, line: 154, type: !83)
!4071 = !DILocalVariable(name: "buf", arg: 2, scope: !4066, file: !859, line: 154, type: !85)
!4072 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4066, file: !859, line: 154, type: !116)
!4073 = !DILocation(line: 0, scope: !4066)
!4074 = !DILocation(line: 159, column: 10, scope: !4066)
!4075 = !DILocation(line: 159, column: 3, scope: !4066)
!4076 = distinct !DISubprogram(name: "setlocale_null", scope: !859, file: !859, line: 186, type: !4077, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !858, retainedNodes: !4079)
!4077 = !DISubroutineType(types: !4078)
!4078 = !{!119, !83}
!4079 = !{!4080}
!4080 = !DILocalVariable(name: "category", arg: 1, scope: !4076, file: !859, line: 186, type: !83)
!4081 = !DILocation(line: 0, scope: !4076)
!4082 = !DILocation(line: 189, column: 10, scope: !4076)
!4083 = !DILocation(line: 189, column: 3, scope: !4076)
!4084 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !861, file: !861, line: 35, type: !4077, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !860, retainedNodes: !4085)
!4085 = !{!4086, !4087}
!4086 = !DILocalVariable(name: "category", arg: 1, scope: !4084, file: !861, line: 35, type: !83)
!4087 = !DILocalVariable(name: "result", scope: !4084, file: !861, line: 37, type: !119)
!4088 = !DILocation(line: 0, scope: !4084)
!4089 = !DILocation(line: 37, column: 24, scope: !4084)
!4090 = !DILocation(line: 62, column: 3, scope: !4084)
!4091 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !861, file: !861, line: 66, type: !4067, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !860, retainedNodes: !4092)
!4092 = !{!4093, !4094, !4095, !4096, !4097}
!4093 = !DILocalVariable(name: "category", arg: 1, scope: !4091, file: !861, line: 66, type: !83)
!4094 = !DILocalVariable(name: "buf", arg: 2, scope: !4091, file: !861, line: 66, type: !85)
!4095 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4091, file: !861, line: 66, type: !116)
!4096 = !DILocalVariable(name: "result", scope: !4091, file: !861, line: 111, type: !119)
!4097 = !DILocalVariable(name: "length", scope: !4098, file: !861, line: 125, type: !116)
!4098 = distinct !DILexicalBlock(scope: !4099, file: !861, line: 124, column: 5)
!4099 = distinct !DILexicalBlock(scope: !4091, file: !861, line: 113, column: 7)
!4100 = !DILocation(line: 0, scope: !4091)
!4101 = !DILocation(line: 0, scope: !4084, inlinedAt: !4102)
!4102 = distinct !DILocation(line: 111, column: 24, scope: !4091)
!4103 = !DILocation(line: 37, column: 24, scope: !4084, inlinedAt: !4102)
!4104 = !DILocation(line: 113, column: 14, scope: !4099)
!4105 = !DILocation(line: 113, column: 7, scope: !4091)
!4106 = !DILocation(line: 116, column: 19, scope: !4107)
!4107 = distinct !DILexicalBlock(scope: !4108, file: !861, line: 116, column: 11)
!4108 = distinct !DILexicalBlock(scope: !4099, file: !861, line: 114, column: 5)
!4109 = !DILocation(line: 116, column: 11, scope: !4108)
!4110 = !DILocation(line: 120, column: 16, scope: !4107)
!4111 = !DILocation(line: 120, column: 9, scope: !4107)
!4112 = !DILocation(line: 125, column: 23, scope: !4098)
!4113 = !DILocation(line: 0, scope: !4098)
!4114 = !DILocation(line: 126, column: 18, scope: !4115)
!4115 = distinct !DILexicalBlock(scope: !4098, file: !861, line: 126, column: 11)
!4116 = !DILocation(line: 126, column: 11, scope: !4098)
!4117 = !DILocation(line: 128, column: 39, scope: !4118)
!4118 = distinct !DILexicalBlock(scope: !4115, file: !861, line: 127, column: 9)
!4119 = !DILocalVariable(name: "__dest", arg: 1, scope: !4120, file: !1708, line: 26, type: !3580)
!4120 = distinct !DISubprogram(name: "memcpy", scope: !1708, file: !1708, line: 26, type: !3578, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !860, retainedNodes: !4121)
!4121 = !{!4119, !4122, !4123}
!4122 = !DILocalVariable(name: "__src", arg: 2, scope: !4120, file: !1708, line: 26, type: !1148)
!4123 = !DILocalVariable(name: "__len", arg: 3, scope: !4120, file: !1708, line: 26, type: !116)
!4124 = !DILocation(line: 0, scope: !4120, inlinedAt: !4125)
!4125 = distinct !DILocation(line: 128, column: 11, scope: !4118)
!4126 = !DILocation(line: 29, column: 10, scope: !4120, inlinedAt: !4125)
!4127 = !DILocation(line: 129, column: 11, scope: !4118)
!4128 = !DILocation(line: 133, column: 23, scope: !4129)
!4129 = distinct !DILexicalBlock(scope: !4130, file: !861, line: 133, column: 15)
!4130 = distinct !DILexicalBlock(scope: !4115, file: !861, line: 132, column: 9)
!4131 = !DILocation(line: 133, column: 15, scope: !4130)
!4132 = !DILocation(line: 138, column: 44, scope: !4133)
!4133 = distinct !DILexicalBlock(scope: !4129, file: !861, line: 134, column: 13)
!4134 = !DILocation(line: 0, scope: !4120, inlinedAt: !4135)
!4135 = distinct !DILocation(line: 138, column: 15, scope: !4133)
!4136 = !DILocation(line: 29, column: 10, scope: !4120, inlinedAt: !4135)
!4137 = !DILocation(line: 139, column: 15, scope: !4133)
!4138 = !DILocation(line: 139, column: 32, scope: !4133)
!4139 = !DILocation(line: 140, column: 13, scope: !4133)
!4140 = !DILocation(line: 0, scope: !4099)
!4141 = !DILocation(line: 145, column: 1, scope: !4091)
