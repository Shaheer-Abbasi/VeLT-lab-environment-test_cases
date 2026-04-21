; ModuleID = 'src/uname.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.infomap = type { ptr, ptr }
%struct.option = type { ptr, i32, ptr, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], ptr, ptr }
%struct.slotvec = type { i64, ptr }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

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
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { ptr @.str.31, ptr @.str.54 }, %struct.infomap { ptr @.str.18, ptr @.str.55 }, %struct.infomap { ptr @.str.40, ptr @.str.56 }, %struct.infomap { ptr @.str.41, ptr @.str.56 }, %struct.infomap { ptr @.str.42, ptr @.str.56 }, %struct.infomap { ptr @.str.43, ptr @.str.56 }, %struct.infomap zeroinitializer], align 16
@.str.57 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !332
@.str.58 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !334
@.str.59 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !336
@.str.60 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !341
@.str.61 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !346
@arch_long_options = internal constant [3 x %struct.option] [%struct.option { ptr @.str.67, i32 0, ptr null, i32 -130 }, %struct.option { ptr @.str.68, i32 0, ptr null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !365
@.str.62 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !351
@.str.63 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !353
@.str.64 = private unnamed_addr constant [10 x i8] c"Karel Zak\00", align 1, !dbg !355
@.str.65 = private unnamed_addr constant [10 x i8] c"asnrvmpio\00", align 1, !dbg !357
@uname_long_options = internal constant [14 x %struct.option] [%struct.option { ptr @.str.69, i32 0, ptr null, i32 97 }, %struct.option { ptr @.str.70, i32 0, ptr null, i32 115 }, %struct.option { ptr @.str.71, i32 0, ptr null, i32 115 }, %struct.option { ptr @.str.72, i32 0, ptr null, i32 110 }, %struct.option { ptr @.str.73, i32 0, ptr null, i32 114 }, %struct.option { ptr @.str.74, i32 0, ptr null, i32 114 }, %struct.option { ptr @.str.75, i32 0, ptr null, i32 118 }, %struct.option { ptr @.str.76, i32 0, ptr null, i32 109 }, %struct.option { ptr @.str.77, i32 0, ptr null, i32 112 }, %struct.option { ptr @.str.78, i32 0, ptr null, i32 105 }, %struct.option { ptr @.str.79, i32 0, ptr null, i32 111 }, %struct.option { ptr @.str.67, i32 0, ptr null, i32 -130 }, %struct.option { ptr @.str.68, i32 0, ptr null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !405
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
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !465
@.str.24 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !457
@.str.1.25 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !459
@.str.2.26 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !461
@.str.3.27 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !463
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !467
@stderr = external local_unnamed_addr global ptr, align 8
@.str.80 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !473
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !505
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !475
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !495
@.str.1.86 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !497
@.str.2.88 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !499
@.str.3.87 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !501
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !503
@.str.4.81 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !507
@.str.5.82 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !509
@.str.6.83 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !514
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !519
@.str.97 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !525
@.str.1.98 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !527
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !529
@.str.101 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !560
@.str.1.102 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !563
@.str.2.103 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !565
@.str.3.104 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !570
@.str.4.105 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !572
@.str.5.106 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !574
@.str.6.107 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !576
@.str.7.108 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !578
@.str.8.109 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !580
@.str.9.110 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !582
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.101, ptr @.str.1.102, ptr @.str.2.103, ptr @.str.3.104, ptr @.str.4.105, ptr @.str.5.106, ptr @.str.6.107, ptr @.str.7.108, ptr @.str.8.109, ptr @.str.9.110, ptr null], align 16, !dbg !584
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !609
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !623
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !661
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !668
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !625
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !670
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !613
@.str.10.113 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !630
@.str.11.111 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !632
@.str.12.114 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !634
@.str.13.112 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !636
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !638
@.str.119 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !676
@.str.1.120 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !679
@.str.2.121 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !681
@.str.3.122 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !683
@.str.4.123 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !685
@.str.5.124 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !687
@.str.6.125 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !692
@.str.7.126 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !697
@.str.8.127 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !699
@.str.9.128 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !701
@.str.10.129 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !706
@.str.11.130 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !711
@.str.12.131 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !716
@.str.13.132 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !718
@.str.14.133 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !723
@.str.15.134 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !728
@.str.16.135 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !733
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.140 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !735
@.str.18.141 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !737
@.str.19.142 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !739
@.str.20.143 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !741
@.str.21.144 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !743
@.str.22 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !745
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !747
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !752
@exit_failure = dso_local global i32 1, align 4, !dbg !760
@.str.157 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !766
@.str.1.155 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !769
@.str.2.156 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !771
@.str.168 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !773
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !776
@.str.1.173 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !791

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !865 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !869, metadata !DIExpression()), !dbg !870
  %2 = icmp eq i32 %0, 0, !dbg !871
  br i1 %2, label %8, label %3, !dbg !873

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !874, !tbaa !876
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #36, !dbg !874
  %6 = load ptr, ptr @program_name, align 8, !dbg !874, !tbaa !876
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #36, !dbg !874
  br label %111, !dbg !874

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #36, !dbg !880
  %10 = load ptr, ptr @program_name, align 8, !dbg !880, !tbaa !876
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #36, !dbg !880
  %12 = load i32, ptr @uname_mode, align 4, !dbg !882, !tbaa !884
  %13 = icmp eq i32 %12, 0, !dbg !885
  br i1 %13, label %14, label %54, !dbg !886

14:                                               ; preds = %8
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #36, !dbg !887
  %16 = load ptr, ptr @stdout, align 8, !dbg !887, !tbaa !876
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !887
  %18 = load i32, ptr @uname_mode, align 4, !dbg !889, !tbaa !884
  %19 = icmp eq i32 %18, 0, !dbg !889
  %20 = select i1 %19, ptr @.str.3, ptr @.str.4, !dbg !889
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #36, !dbg !889
  tail call fastcc void @oputs_(ptr noundef nonnull %20, ptr noundef %21), !dbg !889
  %22 = load i32, ptr @uname_mode, align 4, !dbg !890, !tbaa !884
  %23 = icmp eq i32 %22, 0, !dbg !890
  %24 = select i1 %23, ptr @.str.3, ptr @.str.4, !dbg !890
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #36, !dbg !890
  tail call fastcc void @oputs_(ptr noundef nonnull %24, ptr noundef %25), !dbg !890
  %26 = load i32, ptr @uname_mode, align 4, !dbg !891, !tbaa !884
  %27 = icmp eq i32 %26, 0, !dbg !891
  %28 = select i1 %27, ptr @.str.3, ptr @.str.4, !dbg !891
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #36, !dbg !891
  tail call fastcc void @oputs_(ptr noundef nonnull %28, ptr noundef %29), !dbg !891
  %30 = load i32, ptr @uname_mode, align 4, !dbg !892, !tbaa !884
  %31 = icmp eq i32 %30, 0, !dbg !892
  %32 = select i1 %31, ptr @.str.3, ptr @.str.4, !dbg !892
  %33 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #36, !dbg !892
  tail call fastcc void @oputs_(ptr noundef nonnull %32, ptr noundef %33), !dbg !892
  %34 = load i32, ptr @uname_mode, align 4, !dbg !893, !tbaa !884
  %35 = icmp eq i32 %34, 0, !dbg !893
  %36 = select i1 %35, ptr @.str.3, ptr @.str.4, !dbg !893
  %37 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #36, !dbg !893
  tail call fastcc void @oputs_(ptr noundef nonnull %36, ptr noundef %37), !dbg !893
  %38 = load i32, ptr @uname_mode, align 4, !dbg !894, !tbaa !884
  %39 = icmp eq i32 %38, 0, !dbg !894
  %40 = select i1 %39, ptr @.str.3, ptr @.str.4, !dbg !894
  %41 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #36, !dbg !894
  tail call fastcc void @oputs_(ptr noundef nonnull %40, ptr noundef %41), !dbg !894
  %42 = load i32, ptr @uname_mode, align 4, !dbg !895, !tbaa !884
  %43 = icmp eq i32 %42, 0, !dbg !895
  %44 = select i1 %43, ptr @.str.3, ptr @.str.4, !dbg !895
  %45 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #36, !dbg !895
  tail call fastcc void @oputs_(ptr noundef nonnull %44, ptr noundef %45), !dbg !895
  %46 = load i32, ptr @uname_mode, align 4, !dbg !896, !tbaa !884
  %47 = icmp eq i32 %46, 0, !dbg !896
  %48 = select i1 %47, ptr @.str.3, ptr @.str.4, !dbg !896
  %49 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #36, !dbg !896
  tail call fastcc void @oputs_(ptr noundef nonnull %48, ptr noundef %49), !dbg !896
  %50 = load i32, ptr @uname_mode, align 4, !dbg !897, !tbaa !884
  %51 = icmp eq i32 %50, 0, !dbg !897
  %52 = select i1 %51, ptr @.str.3, ptr @.str.4, !dbg !897
  %53 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #36, !dbg !897
  tail call fastcc void @oputs_(ptr noundef nonnull %52, ptr noundef %53), !dbg !897
  br label %58, !dbg !898

54:                                               ; preds = %8
  %55 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #36, !dbg !899
  %56 = load ptr, ptr @stdout, align 8, !dbg !899, !tbaa !876
  %57 = tail call i32 @fputs_unlocked(ptr noundef %55, ptr noundef %56), !dbg !899
  br label %58

58:                                               ; preds = %54, %14
  %59 = load i32, ptr @uname_mode, align 4, !dbg !901, !tbaa !884
  %60 = icmp eq i32 %59, 0, !dbg !901
  %61 = select i1 %60, ptr @.str.3, ptr @.str.4, !dbg !901
  %62 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #36, !dbg !901
  tail call fastcc void @oputs_(ptr noundef nonnull %61, ptr noundef %62), !dbg !901
  %63 = load i32, ptr @uname_mode, align 4, !dbg !902, !tbaa !884
  %64 = icmp eq i32 %63, 0, !dbg !902
  %65 = select i1 %64, ptr @.str.3, ptr @.str.4, !dbg !902
  %66 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #36, !dbg !902
  tail call fastcc void @oputs_(ptr noundef nonnull %65, ptr noundef %66), !dbg !902
  %67 = load i32, ptr @uname_mode, align 4, !dbg !903, !tbaa !884
  %68 = icmp eq i32 %67, 0, !dbg !903
  %69 = select i1 %68, ptr @.str.3, ptr @.str.4, !dbg !903
  call void @llvm.dbg.value(metadata ptr %69, metadata !904, metadata !DIExpression()), !dbg !919
  call void @llvm.dbg.declare(metadata ptr @__const.emit_ancillary_info.infomap, metadata !907, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.value(metadata ptr %69, metadata !914, metadata !DIExpression()), !dbg !919
  call void @llvm.dbg.value(metadata ptr @__const.emit_ancillary_info.infomap, metadata !915, metadata !DIExpression()), !dbg !919
  call void @llvm.dbg.value(metadata ptr @__const.emit_ancillary_info.infomap, metadata !915, metadata !DIExpression()), !dbg !919
  call void @llvm.dbg.value(metadata ptr %69, metadata !922, metadata !DIExpression()), !dbg !929
  call void @llvm.dbg.value(metadata ptr @.str.31, metadata !928, metadata !DIExpression()), !dbg !929
  %70 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %69, ptr noundef nonnull dereferenceable(2) @.str.31, i64 2), !dbg !931
  %71 = icmp eq i32 %70, 0, !dbg !932
  br i1 %71, label %88, label %72, !dbg !933

72:                                               ; preds = %58
  call void @llvm.dbg.value(metadata ptr getelementptr inbounds ([7 x %struct.infomap], ptr @__const.emit_ancillary_info.infomap, i64 0, i64 1), metadata !915, metadata !DIExpression()), !dbg !919
  call void @llvm.dbg.value(metadata ptr getelementptr inbounds ([7 x %struct.infomap], ptr @__const.emit_ancillary_info.infomap, i64 0, i64 1), metadata !915, metadata !DIExpression()), !dbg !919
  call void @llvm.dbg.value(metadata ptr %69, metadata !922, metadata !DIExpression()), !dbg !929
  call void @llvm.dbg.value(metadata ptr @.str.18, metadata !928, metadata !DIExpression()), !dbg !929
  %73 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %69, ptr noundef nonnull dereferenceable(10) @.str.18) #37, !dbg !931
  %74 = icmp eq i32 %73, 0, !dbg !932
  br i1 %74, label %88, label %75, !dbg !933

75:                                               ; preds = %72
  call void @llvm.dbg.value(metadata ptr getelementptr inbounds ([7 x %struct.infomap], ptr @__const.emit_ancillary_info.infomap, i64 0, i64 2), metadata !915, metadata !DIExpression()), !dbg !919
  call void @llvm.dbg.value(metadata ptr getelementptr inbounds ([7 x %struct.infomap], ptr @__const.emit_ancillary_info.infomap, i64 0, i64 2), metadata !915, metadata !DIExpression()), !dbg !919
  call void @llvm.dbg.value(metadata ptr %69, metadata !922, metadata !DIExpression()), !dbg !929
  call void @llvm.dbg.value(metadata ptr @.str.40, metadata !928, metadata !DIExpression()), !dbg !929
  %76 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %69, ptr noundef nonnull dereferenceable(10) @.str.40) #37, !dbg !931
  %77 = icmp eq i32 %76, 0, !dbg !932
  br i1 %77, label %88, label %78, !dbg !933

78:                                               ; preds = %75
  call void @llvm.dbg.value(metadata ptr getelementptr inbounds ([7 x %struct.infomap], ptr @__const.emit_ancillary_info.infomap, i64 0, i64 3), metadata !915, metadata !DIExpression()), !dbg !919
  call void @llvm.dbg.value(metadata ptr getelementptr inbounds ([7 x %struct.infomap], ptr @__const.emit_ancillary_info.infomap, i64 0, i64 3), metadata !915, metadata !DIExpression()), !dbg !919
  call void @llvm.dbg.value(metadata ptr %69, metadata !922, metadata !DIExpression()), !dbg !929
  call void @llvm.dbg.value(metadata ptr @.str.41, metadata !928, metadata !DIExpression()), !dbg !929
  %79 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %69, ptr noundef nonnull dereferenceable(10) @.str.41) #37, !dbg !931
  %80 = icmp eq i32 %79, 0, !dbg !932
  br i1 %80, label %88, label %81, !dbg !933

81:                                               ; preds = %78
  call void @llvm.dbg.value(metadata ptr getelementptr inbounds ([7 x %struct.infomap], ptr @__const.emit_ancillary_info.infomap, i64 0, i64 4), metadata !915, metadata !DIExpression()), !dbg !919
  call void @llvm.dbg.value(metadata ptr getelementptr inbounds ([7 x %struct.infomap], ptr @__const.emit_ancillary_info.infomap, i64 0, i64 4), metadata !915, metadata !DIExpression()), !dbg !919
  call void @llvm.dbg.value(metadata ptr %69, metadata !922, metadata !DIExpression()), !dbg !929
  call void @llvm.dbg.value(metadata ptr @.str.42, metadata !928, metadata !DIExpression()), !dbg !929
  %82 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %69, ptr noundef nonnull dereferenceable(10) @.str.42) #37, !dbg !931
  %83 = icmp eq i32 %82, 0, !dbg !932
  br i1 %83, label %88, label %84, !dbg !933

84:                                               ; preds = %81
  call void @llvm.dbg.value(metadata ptr getelementptr inbounds ([7 x %struct.infomap], ptr @__const.emit_ancillary_info.infomap, i64 0, i64 5), metadata !915, metadata !DIExpression()), !dbg !919
  call void @llvm.dbg.value(metadata ptr getelementptr inbounds ([7 x %struct.infomap], ptr @__const.emit_ancillary_info.infomap, i64 0, i64 5), metadata !915, metadata !DIExpression()), !dbg !919
  call void @llvm.dbg.value(metadata ptr %69, metadata !922, metadata !DIExpression()), !dbg !929
  call void @llvm.dbg.value(metadata ptr @.str.43, metadata !928, metadata !DIExpression()), !dbg !929
  %85 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %69, ptr noundef nonnull dereferenceable(10) @.str.43) #37, !dbg !931
  %86 = icmp eq i32 %85, 0, !dbg !932
  %87 = select i1 %86, ptr getelementptr inbounds ([7 x %struct.infomap], ptr @__const.emit_ancillary_info.infomap, i64 0, i64 5), ptr getelementptr inbounds ([7 x %struct.infomap], ptr @__const.emit_ancillary_info.infomap, i64 0, i64 6, i32 0), !dbg !933
  br label %88, !dbg !933

88:                                               ; preds = %84, %81, %78, %75, %72, %58
  %89 = phi ptr [ @__const.emit_ancillary_info.infomap, %58 ], [ getelementptr inbounds ([7 x %struct.infomap], ptr @__const.emit_ancillary_info.infomap, i64 0, i64 1), %72 ], [ getelementptr inbounds ([7 x %struct.infomap], ptr @__const.emit_ancillary_info.infomap, i64 0, i64 2), %75 ], [ getelementptr inbounds ([7 x %struct.infomap], ptr @__const.emit_ancillary_info.infomap, i64 0, i64 3), %78 ], [ getelementptr inbounds ([7 x %struct.infomap], ptr @__const.emit_ancillary_info.infomap, i64 0, i64 4), %81 ], [ %87, %84 ], !dbg !919
  %90 = getelementptr inbounds %struct.infomap, ptr %89, i64 0, i32 1, !dbg !934
  %91 = load ptr, ptr %90, align 8, !dbg !934, !tbaa !936
  call void @llvm.dbg.value(metadata ptr poison, metadata !914, metadata !DIExpression()), !dbg !919
  tail call void @emit_bug_reporting_address() #36, !dbg !938
  %92 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #36, !dbg !939
  call void @llvm.dbg.value(metadata ptr %92, metadata !917, metadata !DIExpression()), !dbg !919
  %93 = icmp eq ptr %92, null, !dbg !940
  br i1 %93, label %101, label %94, !dbg !942

94:                                               ; preds = %88
  %95 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %92, ptr noundef nonnull dereferenceable(4) @.str.57, i64 noundef 3) #37, !dbg !943
  %96 = icmp eq i32 %95, 0, !dbg !943
  br i1 %96, label %101, label %97, !dbg !944

97:                                               ; preds = %94
  %98 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.58, i32 noundef 5) #36, !dbg !945
  %99 = load ptr, ptr @stdout, align 8, !dbg !945, !tbaa !876
  %100 = tail call i32 @fputs_unlocked(ptr noundef %98, ptr noundef %99), !dbg !945
  br label %101, !dbg !947

101:                                              ; preds = %88, %94, %97
  %102 = icmp eq ptr %91, null, !dbg !948
  %103 = select i1 %102, ptr %69, ptr %91, !dbg !949
  call void @llvm.dbg.value(metadata ptr %103, metadata !914, metadata !DIExpression()), !dbg !919
  call void @llvm.dbg.value(metadata ptr %69, metadata !922, metadata !DIExpression()), !dbg !950
  call void @llvm.dbg.value(metadata ptr @.str.31, metadata !928, metadata !DIExpression()), !dbg !950
  %104 = select i1 %71, ptr @.str.32, ptr %69, !dbg !952
  call void @llvm.dbg.value(metadata ptr %104, metadata !918, metadata !DIExpression()), !dbg !919
  %105 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 5) #36, !dbg !953
  %106 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %105, ptr noundef nonnull @.str.47, ptr noundef nonnull %104) #36, !dbg !953
  %107 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.60, i32 noundef 5) #36, !dbg !954
  %108 = icmp eq ptr %103, %69, !dbg !954
  %109 = select i1 %108, ptr @.str.61, ptr @.str.17, !dbg !954
  %110 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %107, ptr noundef %103, ptr noundef nonnull %109) #36, !dbg !954
  br label %111

111:                                              ; preds = %101, %3
  tail call void @exit(i32 noundef %0) #38, !dbg !955
  unreachable, !dbg !955
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !956 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !961 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !967 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !970 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0, ptr noundef %1) unnamed_addr #5 !dbg !161 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !165, metadata !DIExpression()), !dbg !974
  call void @llvm.dbg.value(metadata ptr %1, metadata !166, metadata !DIExpression()), !dbg !974
  %3 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !975, !tbaa !976
  %4 = icmp eq i32 %3, -1, !dbg !978
  br i1 %4, label %5, label %17, !dbg !979

5:                                                ; preds = %2
  %6 = tail call ptr @getenv(ptr noundef nonnull @.str.27) #36, !dbg !980
  call void @llvm.dbg.value(metadata ptr %6, metadata !167, metadata !DIExpression()), !dbg !981
  %7 = icmp eq ptr %6, null, !dbg !982
  br i1 %7, label %15, label %8, !dbg !983

8:                                                ; preds = %5
  %9 = load i8, ptr %6, align 1, !dbg !984, !tbaa !884
  %10 = icmp eq i8 %9, 0, !dbg !984
  br i1 %10, label %15, label %11, !dbg !985

11:                                               ; preds = %8
  call void @llvm.dbg.value(metadata ptr %6, metadata !922, metadata !DIExpression()), !dbg !986
  call void @llvm.dbg.value(metadata ptr @.str.28, metadata !928, metadata !DIExpression()), !dbg !986
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(5) @.str.28) #37, !dbg !988
  %13 = icmp eq i32 %12, 0, !dbg !989
  %14 = zext i1 %13 to i32, !dbg !985
  br label %15, !dbg !985

15:                                               ; preds = %11, %8, %5
  %16 = phi i32 [ 1, %8 ], [ 1, %5 ], [ %14, %11 ]
  store i32 %16, ptr @oputs_.help_no_sgr, align 4, !dbg !990, !tbaa !976
  br label %17, !dbg !991

17:                                               ; preds = %15, %2
  %18 = phi i32 [ %16, %15 ], [ %3, %2 ], !dbg !992
  %19 = icmp eq i32 %18, 0, !dbg !992
  br i1 %19, label %23, label %20, !dbg !994

20:                                               ; preds = %17
  %21 = load ptr, ptr @stdout, align 8, !dbg !995, !tbaa !876
  %22 = tail call i32 @fputs_unlocked(ptr noundef %1, ptr noundef %21), !dbg !995
  br label %158, !dbg !997

23:                                               ; preds = %17
  call void @llvm.dbg.value(metadata i8 1, metadata !170, metadata !DIExpression()), !dbg !974
  %24 = tail call i64 @strspn(ptr noundef %1, ptr noundef nonnull @.str.29) #37, !dbg !998
  %25 = getelementptr inbounds i8, ptr %1, i64 %24, !dbg !999
  call void @llvm.dbg.value(metadata ptr %25, metadata !172, metadata !DIExpression()), !dbg !974
  %26 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 45) #37, !dbg !1000
  call void @llvm.dbg.value(metadata ptr %26, metadata !173, metadata !DIExpression()), !dbg !974
  %27 = icmp eq ptr %26, null, !dbg !1001
  br i1 %27, label %56, label %28, !dbg !1002

28:                                               ; preds = %23
  %29 = icmp eq ptr %26, %25, !dbg !1003
  br i1 %29, label %56, label %30, !dbg !1004

30:                                               ; preds = %28
  call void @llvm.dbg.value(metadata ptr %25, metadata !174, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.value(metadata i64 0, metadata !178, metadata !DIExpression()), !dbg !1005
  %31 = icmp ult ptr %25, %26, !dbg !1006
  br i1 %31, label %32, label %52, !dbg !1007

32:                                               ; preds = %30
  %33 = tail call ptr @__ctype_b_loc() #39, !dbg !974
  %34 = load ptr, ptr %33, align 8, !tbaa !876
  br label %35, !dbg !1007

35:                                               ; preds = %32, %35
  %36 = phi ptr [ %25, %32 ], [ %38, %35 ]
  %37 = phi i64 [ 0, %32 ], [ %46, %35 ]
  call void @llvm.dbg.value(metadata ptr %36, metadata !174, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.value(metadata i64 %37, metadata !178, metadata !DIExpression()), !dbg !1005
  %38 = getelementptr inbounds i8, ptr %36, i64 1, !dbg !1008
  call void @llvm.dbg.value(metadata ptr %38, metadata !174, metadata !DIExpression()), !dbg !1005
  %39 = load i8, ptr %36, align 1, !dbg !1008, !tbaa !884
  %40 = sext i8 %39 to i64, !dbg !1008
  %41 = getelementptr inbounds i16, ptr %34, i64 %40, !dbg !1008
  %42 = load i16, ptr %41, align 2, !dbg !1008, !tbaa !1009
  %43 = lshr i16 %42, 13, !dbg !1011
  %44 = and i16 %43, 1, !dbg !1011
  %45 = zext i16 %44 to i64
  %46 = add nuw nsw i64 %37, %45, !dbg !1012
  call void @llvm.dbg.value(metadata i64 %46, metadata !178, metadata !DIExpression()), !dbg !1005
  %47 = icmp ult ptr %38, %26, !dbg !1006
  %48 = icmp ult i64 %46, 2, !dbg !1013
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1013
  br i1 %49, label %35, label %50, !dbg !1007, !llvm.loop !1014

50:                                               ; preds = %35
  %51 = icmp ne i64 %46, 2, !dbg !1016
  br label %52, !dbg !1016

52:                                               ; preds = %50, %30
  %53 = phi i1 [ true, %30 ], [ %51, %50 ]
  %54 = select i1 %53, ptr %26, ptr %25, !dbg !1018
  %55 = zext i1 %53 to i8, !dbg !1018
  call void @llvm.dbg.value(metadata i8 %55, metadata !170, metadata !DIExpression()), !dbg !974
  call void @llvm.dbg.value(metadata ptr %54, metadata !173, metadata !DIExpression()), !dbg !974
  br label %56, !dbg !1019

56:                                               ; preds = %23, %28, %52
  %57 = phi ptr [ %54, %52 ], [ %25, %28 ], [ %25, %23 ], !dbg !974
  %58 = phi i8 [ %55, %52 ], [ 1, %28 ], [ 0, %23 ], !dbg !974
  call void @llvm.dbg.value(metadata i8 %58, metadata !170, metadata !DIExpression()), !dbg !974
  call void @llvm.dbg.value(metadata ptr %57, metadata !173, metadata !DIExpression()), !dbg !974
  %59 = tail call i64 @strcspn(ptr noundef %57, ptr noundef nonnull @.str.30) #37, !dbg !1020
  call void @llvm.dbg.value(metadata i64 %59, metadata !179, metadata !DIExpression()), !dbg !974
  %60 = getelementptr inbounds i8, ptr %57, i64 %59, !dbg !1021
  call void @llvm.dbg.value(metadata ptr %60, metadata !180, metadata !DIExpression()), !dbg !974
  br label %61, !dbg !1022

61:                                               ; preds = %94, %56
  %62 = phi ptr [ %60, %56 ], [ %95, %94 ], !dbg !974
  %63 = phi i8 [ %58, %56 ], [ %71, %94 ], !dbg !974
  call void @llvm.dbg.value(metadata i8 %63, metadata !170, metadata !DIExpression()), !dbg !974
  call void @llvm.dbg.value(metadata ptr %62, metadata !180, metadata !DIExpression()), !dbg !974
  %64 = load i8, ptr %62, align 1, !dbg !1023, !tbaa !884
  switch i8 %64, label %70 [
    i8 0, label %96
    i8 10, label %96
    i8 45, label %65
  ], !dbg !1024

65:                                               ; preds = %61
  %66 = getelementptr inbounds i8, ptr %62, i64 1, !dbg !1025
  %67 = load i8, ptr %66, align 1, !dbg !1028, !tbaa !884
  %68 = icmp eq i8 %67, 45, !dbg !1029
  %69 = select i1 %68, i8 0, i8 %63, !dbg !1030
  br label %70, !dbg !1030

70:                                               ; preds = %65, %61
  %71 = phi i8 [ %63, %61 ], [ %69, %65 ], !dbg !974
  call void @llvm.dbg.value(metadata i8 %71, metadata !170, metadata !DIExpression()), !dbg !974
  %72 = tail call ptr @__ctype_b_loc() #39, !dbg !1031
  %73 = load ptr, ptr %72, align 8, !dbg !1031, !tbaa !876
  %74 = sext i8 %64 to i64, !dbg !1031
  %75 = getelementptr inbounds i16, ptr %73, i64 %74, !dbg !1031
  %76 = load i16, ptr %75, align 2, !dbg !1031, !tbaa !1009
  %77 = and i16 %76, 8192, !dbg !1031
  %78 = icmp eq i16 %77, 0, !dbg !1031
  br i1 %78, label %94, label %79, !dbg !1033

79:                                               ; preds = %70
  %80 = icmp eq i8 %64, 9, !dbg !1034
  br i1 %80, label %96, label %81, !dbg !1037

81:                                               ; preds = %79
  %82 = getelementptr inbounds i8, ptr %62, i64 1, !dbg !1038
  %83 = load i8, ptr %82, align 1, !dbg !1038, !tbaa !884
  %84 = sext i8 %83 to i64, !dbg !1038
  %85 = getelementptr inbounds i16, ptr %73, i64 %84, !dbg !1038
  %86 = load i16, ptr %85, align 2, !dbg !1038, !tbaa !1009
  %87 = and i16 %86, 8192, !dbg !1038
  %88 = icmp eq i16 %87, 0, !dbg !1038
  br i1 %88, label %89, label %96, !dbg !1039

89:                                               ; preds = %81
  %90 = and i8 %71, 1, !dbg !1040
  %91 = icmp ne i8 %90, 0, !dbg !1040
  %92 = icmp eq i8 %83, 45
  %93 = select i1 %91, i1 true, i1 %92, !dbg !1042
  br i1 %93, label %94, label %96, !dbg !1042

94:                                               ; preds = %89, %70
  %95 = getelementptr inbounds i8, ptr %62, i64 1, !dbg !1043
  call void @llvm.dbg.value(metadata ptr %95, metadata !180, metadata !DIExpression()), !dbg !974
  br label %61, !dbg !1022, !llvm.loop !1044

96:                                               ; preds = %89, %61, %61, %79, %81
  %97 = ptrtoint ptr %25 to i64, !dbg !1046
  %98 = load ptr, ptr @stdout, align 8, !dbg !1046, !tbaa !876
  %99 = tail call i64 @fwrite_unlocked(ptr noundef %1, i64 noundef 1, i64 noundef %24, ptr noundef %98), !dbg !1046
  call void @llvm.dbg.value(metadata ptr %0, metadata !922, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata ptr @.str.31, metadata !928, metadata !DIExpression()), !dbg !1047
  %100 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.31) #37, !dbg !1049
  %101 = icmp eq i32 %100, 0, !dbg !1050
  br i1 %101, label %130, label %102, !dbg !1051

102:                                              ; preds = %96
  call void @llvm.dbg.value(metadata ptr %0, metadata !922, metadata !DIExpression()), !dbg !1052
  call void @llvm.dbg.value(metadata ptr @.str.33, metadata !928, metadata !DIExpression()), !dbg !1052
  %103 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.33) #37, !dbg !1054
  %104 = icmp eq i32 %103, 0, !dbg !1055
  br i1 %104, label %130, label %105, !dbg !1056

105:                                              ; preds = %102
  call void @llvm.dbg.value(metadata ptr %0, metadata !922, metadata !DIExpression()), !dbg !1057
  call void @llvm.dbg.value(metadata ptr @.str.35, metadata !928, metadata !DIExpression()), !dbg !1057
  %106 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.35) #37, !dbg !1059
  %107 = icmp eq i32 %106, 0, !dbg !1060
  br i1 %107, label %130, label %108, !dbg !1061

108:                                              ; preds = %105
  call void @llvm.dbg.value(metadata ptr %0, metadata !922, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata ptr @.str.36, metadata !928, metadata !DIExpression()), !dbg !1062
  %109 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.36) #37, !dbg !1064
  %110 = icmp eq i32 %109, 0, !dbg !1065
  br i1 %110, label %130, label %111, !dbg !1066

111:                                              ; preds = %108
  call void @llvm.dbg.value(metadata ptr %0, metadata !922, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.value(metadata ptr @.str.38, metadata !928, metadata !DIExpression()), !dbg !1067
  %112 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.38) #37, !dbg !1069
  %113 = icmp eq i32 %112, 0, !dbg !1070
  br i1 %113, label %130, label %114, !dbg !1071

114:                                              ; preds = %111
  call void @llvm.dbg.value(metadata ptr %0, metadata !922, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.value(metadata ptr @.str.39, metadata !928, metadata !DIExpression()), !dbg !1072
  %115 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.39) #37, !dbg !1074
  %116 = icmp eq i32 %115, 0, !dbg !1075
  br i1 %116, label %130, label %117, !dbg !1076

117:                                              ; preds = %114
  call void @llvm.dbg.value(metadata ptr %0, metadata !922, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.value(metadata ptr @.str.40, metadata !928, metadata !DIExpression()), !dbg !1077
  %118 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(10) @.str.40) #37, !dbg !1079
  %119 = icmp eq i32 %118, 0, !dbg !1080
  br i1 %119, label %130, label %120, !dbg !1081

120:                                              ; preds = %117
  call void @llvm.dbg.value(metadata ptr %0, metadata !922, metadata !DIExpression()), !dbg !1082
  call void @llvm.dbg.value(metadata ptr @.str.41, metadata !928, metadata !DIExpression()), !dbg !1082
  %121 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(10) @.str.41) #37, !dbg !1084
  %122 = icmp eq i32 %121, 0, !dbg !1085
  br i1 %122, label %130, label %123, !dbg !1086

123:                                              ; preds = %120
  call void @llvm.dbg.value(metadata ptr %0, metadata !922, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.value(metadata ptr @.str.42, metadata !928, metadata !DIExpression()), !dbg !1087
  %124 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(10) @.str.42) #37, !dbg !1089
  %125 = icmp eq i32 %124, 0, !dbg !1090
  br i1 %125, label %130, label %126, !dbg !1091

126:                                              ; preds = %123
  call void @llvm.dbg.value(metadata ptr %0, metadata !922, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata ptr @.str.43, metadata !928, metadata !DIExpression()), !dbg !1092
  %127 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(10) @.str.43) #37, !dbg !1094
  %128 = icmp eq i32 %127, 0, !dbg !1095
  %129 = select i1 %128, ptr @.str.37, ptr %0, !dbg !1096
  br label %130, !dbg !1091

130:                                              ; preds = %102, %108, %114, %120, %123, %126, %117, %111, %105, %96
  %131 = phi ptr [ @.str.32, %96 ], [ @.str.34, %102 ], [ @.str.34, %105 ], [ @.str.37, %108 ], [ @.str.37, %111 ], [ @.str.37, %114 ], [ @.str.37, %117 ], [ @.str.37, %120 ], [ %129, %126 ], [ @.str.37, %123 ], !dbg !1051
  call void @llvm.dbg.value(metadata ptr %131, metadata !237, metadata !DIExpression()), !dbg !974
  %132 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %57, ptr noundef nonnull dereferenceable(7) @.str.44, i64 noundef 6) #37, !dbg !1097
  %133 = icmp eq i32 %132, 0, !dbg !1097
  br i1 %133, label %137, label %134, !dbg !1099

134:                                              ; preds = %130
  %135 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %57, ptr noundef nonnull dereferenceable(10) @.str.45, i64 noundef 9) #37, !dbg !1100
  %136 = icmp eq i32 %135, 0, !dbg !1100
  br i1 %136, label %137, label %140, !dbg !1101

137:                                              ; preds = %134, %130
  %138 = trunc i64 %59 to i32, !dbg !1102
  %139 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, ptr noundef %131, ptr noundef %131, i32 noundef %138, ptr noundef %57) #36, !dbg !1102
  br label %143, !dbg !1104

140:                                              ; preds = %134
  %141 = trunc i64 %59 to i32, !dbg !1105
  %142 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, ptr noundef %131, i32 noundef %141, ptr noundef %57) #36, !dbg !1105
  br label %143

143:                                              ; preds = %140, %137
  %144 = load ptr, ptr @stdout, align 8, !dbg !1107, !tbaa !876
  %145 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.50, ptr noundef %144), !dbg !1107
  %146 = load ptr, ptr @stdout, align 8, !dbg !1108, !tbaa !876
  %147 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.51, ptr noundef %146), !dbg !1108
  %148 = ptrtoint ptr %62 to i64, !dbg !1109
  %149 = sub i64 %148, %97, !dbg !1109
  %150 = load ptr, ptr @stdout, align 8, !dbg !1109, !tbaa !876
  %151 = tail call i64 @fwrite_unlocked(ptr noundef %25, i64 noundef 1, i64 noundef %149, ptr noundef %150), !dbg !1109
  %152 = load ptr, ptr @stdout, align 8, !dbg !1110, !tbaa !876
  %153 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.52, ptr noundef %152), !dbg !1110
  %154 = load ptr, ptr @stdout, align 8, !dbg !1111, !tbaa !876
  %155 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.53, ptr noundef %154), !dbg !1111
  %156 = load ptr, ptr @stdout, align 8, !dbg !1112, !tbaa !876
  %157 = tail call i32 @fputs_unlocked(ptr noundef nonnull %62, ptr noundef %156), !dbg !1112
  br label %158, !dbg !1113

158:                                              ; preds = %143, %20
  ret void, !dbg !1113
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1114 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !1118 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1122 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: noreturn nounwind
declare !dbg !1125 void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1127 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1130 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1133 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1136 ptr @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1142 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare !dbg !1143 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #11 !dbg !80 {
  %3 = alloca %struct.utsname, align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !416, metadata !DIExpression()), !dbg !1149
  call void @llvm.dbg.value(metadata ptr %1, metadata !417, metadata !DIExpression()), !dbg !1149
  call void @llvm.dbg.value(metadata i32 0, metadata !418, metadata !DIExpression()), !dbg !1149
  %4 = load ptr, ptr %1, align 8, !dbg !1150, !tbaa !876
  tail call void @set_program_name(ptr noundef %4) #36, !dbg !1151
  %5 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.17) #36, !dbg !1152
  %6 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #36, !dbg !1153
  %7 = tail call ptr @textdomain(ptr noundef nonnull @.str.18) #36, !dbg !1154
  %8 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #36, !dbg !1155
  call void @llvm.dbg.value(metadata i32 %0, metadata !1156, metadata !DIExpression()), !dbg !1162
  call void @llvm.dbg.value(metadata ptr %1, metadata !1159, metadata !DIExpression()), !dbg !1162
  call void @llvm.dbg.value(metadata i32 0, metadata !1161, metadata !DIExpression()), !dbg !1162
  %9 = load i32, ptr @uname_mode, align 4, !dbg !1164, !tbaa !884
  %10 = icmp eq i32 %9, 1, !dbg !1166
  br i1 %10, label %11, label %21, !dbg !1167

11:                                               ; preds = %2
  %12 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.17, ptr noundef nonnull @arch_long_options, ptr noundef null) #36, !dbg !1168
  call void @llvm.dbg.value(metadata i32 %12, metadata !1160, metadata !DIExpression()), !dbg !1162
  switch i32 %12, label %20 [
    i32 -1, label %51
    i32 -130, label %13
    i32 -131, label %14
  ], !dbg !1170

13:                                               ; preds = %11
  tail call void @usage(i32 noundef 0) #40, !dbg !1171
  unreachable, !dbg !1171

14:                                               ; preds = %11
  %15 = load ptr, ptr @stdout, align 8, !dbg !1174, !tbaa !876
  %16 = load i32, ptr @uname_mode, align 4, !dbg !1174, !tbaa !884
  %17 = icmp eq i32 %16, 0, !dbg !1174
  %18 = select i1 %17, ptr @.str.3, ptr @.str.4, !dbg !1174
  %19 = load ptr, ptr @Version, align 8, !dbg !1174, !tbaa !876
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %15, ptr noundef nonnull %18, ptr noundef nonnull @.str.62, ptr noundef %19, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64, ptr noundef null) #36, !dbg !1174
  tail call void @exit(i32 noundef 0) #38, !dbg !1174
  unreachable, !dbg !1174

20:                                               ; preds = %11
  tail call void @usage(i32 noundef 1) #40, !dbg !1175
  unreachable, !dbg !1175

21:                                               ; preds = %2, %40
  %22 = phi i32 [ %41, %40 ], [ 0, %2 ], !dbg !1162
  call void @llvm.dbg.value(metadata i32 %22, metadata !1161, metadata !DIExpression()), !dbg !1162
  %23 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.65, ptr noundef nonnull @uname_long_options, ptr noundef null) #36, !dbg !1176
  call void @llvm.dbg.value(metadata i32 %23, metadata !1160, metadata !DIExpression()), !dbg !1162
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
    i32 -130, label %42
    i32 -131, label %43
  ], !dbg !1178

24:                                               ; preds = %21
  %25 = or i32 %22, 1, !dbg !1179
  call void @llvm.dbg.value(metadata i32 %25, metadata !1161, metadata !DIExpression()), !dbg !1162
  br label %40, !dbg !1182

26:                                               ; preds = %21
  %27 = or i32 %22, 2, !dbg !1183
  call void @llvm.dbg.value(metadata i32 %27, metadata !1161, metadata !DIExpression()), !dbg !1162
  br label %40, !dbg !1184

28:                                               ; preds = %21
  %29 = or i32 %22, 4, !dbg !1185
  call void @llvm.dbg.value(metadata i32 %29, metadata !1161, metadata !DIExpression()), !dbg !1162
  br label %40, !dbg !1186

30:                                               ; preds = %21
  %31 = or i32 %22, 8, !dbg !1187
  call void @llvm.dbg.value(metadata i32 %31, metadata !1161, metadata !DIExpression()), !dbg !1162
  br label %40, !dbg !1188

32:                                               ; preds = %21
  %33 = or i32 %22, 16, !dbg !1189
  call void @llvm.dbg.value(metadata i32 %33, metadata !1161, metadata !DIExpression()), !dbg !1162
  br label %40, !dbg !1190

34:                                               ; preds = %21
  %35 = or i32 %22, 32, !dbg !1191
  call void @llvm.dbg.value(metadata i32 %35, metadata !1161, metadata !DIExpression()), !dbg !1162
  br label %40, !dbg !1192

36:                                               ; preds = %21
  %37 = or i32 %22, 64, !dbg !1193
  call void @llvm.dbg.value(metadata i32 %37, metadata !1161, metadata !DIExpression()), !dbg !1162
  br label %40, !dbg !1194

38:                                               ; preds = %21
  %39 = or i32 %22, 128, !dbg !1195
  call void @llvm.dbg.value(metadata i32 %39, metadata !1161, metadata !DIExpression()), !dbg !1162
  br label %40, !dbg !1196

40:                                               ; preds = %38, %36, %34, %32, %30, %28, %26, %24, %21
  %41 = phi i32 [ %39, %38 ], [ %37, %36 ], [ %35, %34 ], [ %33, %32 ], [ %31, %30 ], [ %29, %28 ], [ %27, %26 ], [ %25, %24 ], [ -1, %21 ]
  br label %21, !dbg !1162, !llvm.loop !1197

42:                                               ; preds = %21
  tail call void @usage(i32 noundef 0) #40, !dbg !1199
  unreachable, !dbg !1199

43:                                               ; preds = %21
  %44 = load ptr, ptr @stdout, align 8, !dbg !1200, !tbaa !876
  %45 = load i32, ptr @uname_mode, align 4, !dbg !1200, !tbaa !884
  %46 = icmp eq i32 %45, 0, !dbg !1200
  %47 = select i1 %46, ptr @.str.3, ptr @.str.4, !dbg !1200
  %48 = load ptr, ptr @Version, align 8, !dbg !1200, !tbaa !876
  %49 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.63) #36, !dbg !1200
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %44, ptr noundef nonnull %47, ptr noundef nonnull @.str.62, ptr noundef %48, ptr noundef %49, ptr noundef null) #36, !dbg !1200
  tail call void @exit(i32 noundef 0) #38, !dbg !1200
  unreachable, !dbg !1200

50:                                               ; preds = %21
  tail call void @usage(i32 noundef 1) #40, !dbg !1201
  unreachable, !dbg !1201

51:                                               ; preds = %21, %11
  %52 = phi i32 [ 16, %11 ], [ %22, %21 ], !dbg !1162
  call void @llvm.dbg.value(metadata i32 %52, metadata !1161, metadata !DIExpression()), !dbg !1162
  %53 = load i32, ptr @optind, align 4, !dbg !1202, !tbaa !976
  %54 = icmp eq i32 %53, %0, !dbg !1204
  br i1 %54, label %62, label %55, !dbg !1205

55:                                               ; preds = %51
  %56 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.66, i32 noundef 5) #36, !dbg !1206
  %57 = load i32, ptr @optind, align 4, !dbg !1206, !tbaa !976
  %58 = sext i32 %57 to i64, !dbg !1206
  %59 = getelementptr inbounds ptr, ptr %1, i64 %58, !dbg !1206
  %60 = load ptr, ptr %59, align 8, !dbg !1206, !tbaa !876
  %61 = tail call ptr @quote(ptr noundef %60) #36, !dbg !1206
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %56, ptr noundef %61) #36, !dbg !1206
  tail call void @usage(i32 noundef 1) #40, !dbg !1208
  unreachable, !dbg !1208

62:                                               ; preds = %51
  call void @llvm.dbg.value(metadata i32 %52, metadata !418, metadata !DIExpression()), !dbg !1149
  %63 = icmp eq i32 %52, 0, !dbg !1209
  %64 = select i1 %63, i32 1, i32 %52, !dbg !1211
  call void @llvm.dbg.value(metadata i32 %64, metadata !418, metadata !DIExpression()), !dbg !1149
  %65 = and i32 %64, 31, !dbg !1212
  %66 = icmp eq i32 %65, 0, !dbg !1212
  br i1 %66, label %174, label %67, !dbg !1213

67:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 390, ptr nonnull %3) #36, !dbg !1214
  call void @llvm.dbg.declare(metadata ptr %3, metadata !419, metadata !DIExpression()), !dbg !1215
  %68 = call i32 @uname(ptr noundef nonnull %3) #36, !dbg !1216
  %69 = icmp eq i32 %68, -1, !dbg !1218
  br i1 %69, label %70, label %74, !dbg !1219

70:                                               ; preds = %67
  %71 = tail call ptr @__errno_location() #39, !dbg !1220
  %72 = load i32, ptr %71, align 4, !dbg !1220, !tbaa !976
  %73 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef 5) #36, !dbg !1220
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %72, ptr noundef %73) #36, !dbg !1220
  unreachable, !dbg !1220

74:                                               ; preds = %67
  %75 = and i32 %64, 1, !dbg !1221
  %76 = icmp eq i32 %75, 0, !dbg !1221
  br i1 %76, label %93, label %77, !dbg !1223

77:                                               ; preds = %74
  call void @llvm.dbg.value(metadata ptr %3, metadata !1224, metadata !DIExpression()), !dbg !1228
  call void @llvm.dbg.value(metadata ptr %3, metadata !414, metadata !DIExpression()), !dbg !1230
  %78 = load i1, ptr @print_element.printed, align 1, !dbg !1232
  br i1 %78, label %79, label %90, !dbg !1234

79:                                               ; preds = %77
  call void @llvm.dbg.value(metadata i32 32, metadata !1235, metadata !DIExpression()), !dbg !1241
  %80 = load ptr, ptr @stdout, align 8, !dbg !1243, !tbaa !876
  %81 = getelementptr inbounds %struct._IO_FILE, ptr %80, i64 0, i32 5, !dbg !1243
  %82 = load ptr, ptr %81, align 8, !dbg !1243, !tbaa !1244
  %83 = getelementptr inbounds %struct._IO_FILE, ptr %80, i64 0, i32 6, !dbg !1243
  %84 = load ptr, ptr %83, align 8, !dbg !1243, !tbaa !1247
  %85 = icmp ult ptr %82, %84, !dbg !1243
  br i1 %85, label %88, label %86, !dbg !1243, !prof !1248

86:                                               ; preds = %79
  %87 = tail call i32 @__overflow(ptr noundef nonnull %80, i32 noundef 32) #36, !dbg !1243
  br label %90, !dbg !1243

88:                                               ; preds = %79
  %89 = getelementptr inbounds i8, ptr %82, i64 1, !dbg !1243
  store ptr %89, ptr %81, align 8, !dbg !1243, !tbaa !1244
  store i8 32, ptr %82, align 1, !dbg !1243, !tbaa !884
  br label %90, !dbg !1243

90:                                               ; preds = %77, %86, %88
  store i1 true, ptr @print_element.printed, align 1, !dbg !1249
  %91 = load ptr, ptr @stdout, align 8, !dbg !1250, !tbaa !876
  %92 = call i32 @fputs_unlocked(ptr noundef nonnull %3, ptr noundef %91), !dbg !1250
  br label %93, !dbg !1251

93:                                               ; preds = %90, %74
  %94 = and i32 %64, 2, !dbg !1252
  %95 = icmp eq i32 %94, 0, !dbg !1252
  br i1 %95, label %113, label %96, !dbg !1254

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.utsname, ptr %3, i64 0, i32 1, !dbg !1255
  call void @llvm.dbg.value(metadata ptr %97, metadata !1224, metadata !DIExpression()), !dbg !1256
  call void @llvm.dbg.value(metadata ptr %97, metadata !414, metadata !DIExpression()), !dbg !1258
  %98 = load i1, ptr @print_element.printed, align 1, !dbg !1260
  br i1 %98, label %99, label %110, !dbg !1261

99:                                               ; preds = %96
  call void @llvm.dbg.value(metadata i32 32, metadata !1235, metadata !DIExpression()), !dbg !1262
  %100 = load ptr, ptr @stdout, align 8, !dbg !1264, !tbaa !876
  %101 = getelementptr inbounds %struct._IO_FILE, ptr %100, i64 0, i32 5, !dbg !1264
  %102 = load ptr, ptr %101, align 8, !dbg !1264, !tbaa !1244
  %103 = getelementptr inbounds %struct._IO_FILE, ptr %100, i64 0, i32 6, !dbg !1264
  %104 = load ptr, ptr %103, align 8, !dbg !1264, !tbaa !1247
  %105 = icmp ult ptr %102, %104, !dbg !1264
  br i1 %105, label %108, label %106, !dbg !1264, !prof !1248

106:                                              ; preds = %99
  %107 = tail call i32 @__overflow(ptr noundef nonnull %100, i32 noundef 32) #36, !dbg !1264
  br label %110, !dbg !1264

108:                                              ; preds = %99
  %109 = getelementptr inbounds i8, ptr %102, i64 1, !dbg !1264
  store ptr %109, ptr %101, align 8, !dbg !1264, !tbaa !1244
  store i8 32, ptr %102, align 1, !dbg !1264, !tbaa !884
  br label %110, !dbg !1264

110:                                              ; preds = %96, %106, %108
  store i1 true, ptr @print_element.printed, align 1, !dbg !1265
  %111 = load ptr, ptr @stdout, align 8, !dbg !1266, !tbaa !876
  %112 = call i32 @fputs_unlocked(ptr noundef nonnull %97, ptr noundef %111), !dbg !1266
  br label %113, !dbg !1267

113:                                              ; preds = %110, %93
  %114 = and i32 %64, 4, !dbg !1268
  %115 = icmp eq i32 %114, 0, !dbg !1268
  br i1 %115, label %133, label %116, !dbg !1270

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct.utsname, ptr %3, i64 0, i32 2, !dbg !1271
  call void @llvm.dbg.value(metadata ptr %117, metadata !1224, metadata !DIExpression()), !dbg !1272
  call void @llvm.dbg.value(metadata ptr %117, metadata !414, metadata !DIExpression()), !dbg !1274
  %118 = load i1, ptr @print_element.printed, align 1, !dbg !1276
  br i1 %118, label %119, label %130, !dbg !1277

119:                                              ; preds = %116
  call void @llvm.dbg.value(metadata i32 32, metadata !1235, metadata !DIExpression()), !dbg !1278
  %120 = load ptr, ptr @stdout, align 8, !dbg !1280, !tbaa !876
  %121 = getelementptr inbounds %struct._IO_FILE, ptr %120, i64 0, i32 5, !dbg !1280
  %122 = load ptr, ptr %121, align 8, !dbg !1280, !tbaa !1244
  %123 = getelementptr inbounds %struct._IO_FILE, ptr %120, i64 0, i32 6, !dbg !1280
  %124 = load ptr, ptr %123, align 8, !dbg !1280, !tbaa !1247
  %125 = icmp ult ptr %122, %124, !dbg !1280
  br i1 %125, label %128, label %126, !dbg !1280, !prof !1248

126:                                              ; preds = %119
  %127 = tail call i32 @__overflow(ptr noundef nonnull %120, i32 noundef 32) #36, !dbg !1280
  br label %130, !dbg !1280

128:                                              ; preds = %119
  %129 = getelementptr inbounds i8, ptr %122, i64 1, !dbg !1280
  store ptr %129, ptr %121, align 8, !dbg !1280, !tbaa !1244
  store i8 32, ptr %122, align 1, !dbg !1280, !tbaa !884
  br label %130, !dbg !1280

130:                                              ; preds = %116, %126, %128
  store i1 true, ptr @print_element.printed, align 1, !dbg !1281
  %131 = load ptr, ptr @stdout, align 8, !dbg !1282, !tbaa !876
  %132 = call i32 @fputs_unlocked(ptr noundef nonnull %117, ptr noundef %131), !dbg !1282
  br label %133, !dbg !1283

133:                                              ; preds = %130, %113
  %134 = and i32 %64, 8, !dbg !1284
  %135 = icmp eq i32 %134, 0, !dbg !1284
  br i1 %135, label %153, label %136, !dbg !1286

136:                                              ; preds = %133
  %137 = getelementptr inbounds %struct.utsname, ptr %3, i64 0, i32 3, !dbg !1287
  call void @llvm.dbg.value(metadata ptr %137, metadata !1224, metadata !DIExpression()), !dbg !1288
  call void @llvm.dbg.value(metadata ptr %137, metadata !414, metadata !DIExpression()), !dbg !1290
  %138 = load i1, ptr @print_element.printed, align 1, !dbg !1292
  br i1 %138, label %139, label %150, !dbg !1293

139:                                              ; preds = %136
  call void @llvm.dbg.value(metadata i32 32, metadata !1235, metadata !DIExpression()), !dbg !1294
  %140 = load ptr, ptr @stdout, align 8, !dbg !1296, !tbaa !876
  %141 = getelementptr inbounds %struct._IO_FILE, ptr %140, i64 0, i32 5, !dbg !1296
  %142 = load ptr, ptr %141, align 8, !dbg !1296, !tbaa !1244
  %143 = getelementptr inbounds %struct._IO_FILE, ptr %140, i64 0, i32 6, !dbg !1296
  %144 = load ptr, ptr %143, align 8, !dbg !1296, !tbaa !1247
  %145 = icmp ult ptr %142, %144, !dbg !1296
  br i1 %145, label %148, label %146, !dbg !1296, !prof !1248

146:                                              ; preds = %139
  %147 = tail call i32 @__overflow(ptr noundef nonnull %140, i32 noundef 32) #36, !dbg !1296
  br label %150, !dbg !1296

148:                                              ; preds = %139
  %149 = getelementptr inbounds i8, ptr %142, i64 1, !dbg !1296
  store ptr %149, ptr %141, align 8, !dbg !1296, !tbaa !1244
  store i8 32, ptr %142, align 1, !dbg !1296, !tbaa !884
  br label %150, !dbg !1296

150:                                              ; preds = %136, %146, %148
  store i1 true, ptr @print_element.printed, align 1, !dbg !1297
  %151 = load ptr, ptr @stdout, align 8, !dbg !1298, !tbaa !876
  %152 = call i32 @fputs_unlocked(ptr noundef nonnull %137, ptr noundef %151), !dbg !1298
  br label %153, !dbg !1299

153:                                              ; preds = %150, %133
  %154 = and i32 %64, 16, !dbg !1300
  %155 = icmp eq i32 %154, 0, !dbg !1300
  br i1 %155, label %173, label %156, !dbg !1302

156:                                              ; preds = %153
  %157 = getelementptr inbounds %struct.utsname, ptr %3, i64 0, i32 4, !dbg !1303
  call void @llvm.dbg.value(metadata ptr %157, metadata !1224, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata ptr %157, metadata !414, metadata !DIExpression()), !dbg !1306
  %158 = load i1, ptr @print_element.printed, align 1, !dbg !1308
  br i1 %158, label %159, label %170, !dbg !1309

159:                                              ; preds = %156
  call void @llvm.dbg.value(metadata i32 32, metadata !1235, metadata !DIExpression()), !dbg !1310
  %160 = load ptr, ptr @stdout, align 8, !dbg !1312, !tbaa !876
  %161 = getelementptr inbounds %struct._IO_FILE, ptr %160, i64 0, i32 5, !dbg !1312
  %162 = load ptr, ptr %161, align 8, !dbg !1312, !tbaa !1244
  %163 = getelementptr inbounds %struct._IO_FILE, ptr %160, i64 0, i32 6, !dbg !1312
  %164 = load ptr, ptr %163, align 8, !dbg !1312, !tbaa !1247
  %165 = icmp ult ptr %162, %164, !dbg !1312
  br i1 %165, label %168, label %166, !dbg !1312, !prof !1248

166:                                              ; preds = %159
  %167 = tail call i32 @__overflow(ptr noundef nonnull %160, i32 noundef 32) #36, !dbg !1312
  br label %170, !dbg !1312

168:                                              ; preds = %159
  %169 = getelementptr inbounds i8, ptr %162, i64 1, !dbg !1312
  store ptr %169, ptr %161, align 8, !dbg !1312, !tbaa !1244
  store i8 32, ptr %162, align 1, !dbg !1312, !tbaa !884
  br label %170, !dbg !1312

170:                                              ; preds = %156, %166, %168
  store i1 true, ptr @print_element.printed, align 1, !dbg !1313
  %171 = load ptr, ptr @stdout, align 8, !dbg !1314, !tbaa !876
  %172 = call i32 @fputs_unlocked(ptr noundef nonnull %157, ptr noundef %171), !dbg !1314
  br label %173, !dbg !1315

173:                                              ; preds = %170, %153
  call void @llvm.lifetime.end.p0(i64 390, ptr nonnull %3) #36, !dbg !1316
  br label %174, !dbg !1317

174:                                              ; preds = %173, %62
  %175 = and i32 %64, 32, !dbg !1318
  %176 = icmp eq i32 %175, 0, !dbg !1318
  %177 = icmp eq i32 %64, -1
  %178 = or i1 %177, %176, !dbg !1319
  call void @llvm.dbg.value(metadata ptr @main.unknown, metadata !431, metadata !DIExpression()), !dbg !1320
  br i1 %178, label %195, label %179, !dbg !1319

179:                                              ; preds = %174
  call void @llvm.dbg.value(metadata ptr @main.unknown, metadata !414, metadata !DIExpression()), !dbg !1321
  %180 = load i1, ptr @print_element.printed, align 1, !dbg !1324
  br i1 %180, label %181, label %192, !dbg !1325

181:                                              ; preds = %179
  call void @llvm.dbg.value(metadata i32 32, metadata !1235, metadata !DIExpression()), !dbg !1326
  %182 = load ptr, ptr @stdout, align 8, !dbg !1328, !tbaa !876
  %183 = getelementptr inbounds %struct._IO_FILE, ptr %182, i64 0, i32 5, !dbg !1328
  %184 = load ptr, ptr %183, align 8, !dbg !1328, !tbaa !1244
  %185 = getelementptr inbounds %struct._IO_FILE, ptr %182, i64 0, i32 6, !dbg !1328
  %186 = load ptr, ptr %185, align 8, !dbg !1328, !tbaa !1247
  %187 = icmp ult ptr %184, %186, !dbg !1328
  br i1 %187, label %190, label %188, !dbg !1328, !prof !1248

188:                                              ; preds = %181
  %189 = tail call i32 @__overflow(ptr noundef nonnull %182, i32 noundef 32) #36, !dbg !1328
  br label %192, !dbg !1328

190:                                              ; preds = %181
  %191 = getelementptr inbounds i8, ptr %184, i64 1, !dbg !1328
  store ptr %191, ptr %183, align 8, !dbg !1328, !tbaa !1244
  store i8 32, ptr %184, align 1, !dbg !1328, !tbaa !884
  br label %192, !dbg !1328

192:                                              ; preds = %179, %188, %190
  store i1 true, ptr @print_element.printed, align 1, !dbg !1329
  %193 = load ptr, ptr @stdout, align 8, !dbg !1330, !tbaa !876
  %194 = tail call i32 @fputs_unlocked(ptr noundef nonnull @main.unknown, ptr noundef %193), !dbg !1330
  br label %195, !dbg !1331

195:                                              ; preds = %192, %174
  %196 = and i32 %64, 64, !dbg !1332
  %197 = icmp eq i32 %196, 0, !dbg !1332
  %198 = or i1 %177, %197, !dbg !1333
  call void @llvm.dbg.value(metadata ptr @main.unknown, metadata !434, metadata !DIExpression()), !dbg !1334
  br i1 %198, label %215, label %199, !dbg !1333

199:                                              ; preds = %195
  call void @llvm.dbg.value(metadata ptr @main.unknown, metadata !414, metadata !DIExpression()), !dbg !1335
  %200 = load i1, ptr @print_element.printed, align 1, !dbg !1338
  br i1 %200, label %201, label %212, !dbg !1339

201:                                              ; preds = %199
  call void @llvm.dbg.value(metadata i32 32, metadata !1235, metadata !DIExpression()), !dbg !1340
  %202 = load ptr, ptr @stdout, align 8, !dbg !1342, !tbaa !876
  %203 = getelementptr inbounds %struct._IO_FILE, ptr %202, i64 0, i32 5, !dbg !1342
  %204 = load ptr, ptr %203, align 8, !dbg !1342, !tbaa !1244
  %205 = getelementptr inbounds %struct._IO_FILE, ptr %202, i64 0, i32 6, !dbg !1342
  %206 = load ptr, ptr %205, align 8, !dbg !1342, !tbaa !1247
  %207 = icmp ult ptr %204, %206, !dbg !1342
  br i1 %207, label %210, label %208, !dbg !1342, !prof !1248

208:                                              ; preds = %201
  %209 = tail call i32 @__overflow(ptr noundef nonnull %202, i32 noundef 32) #36, !dbg !1342
  br label %212, !dbg !1342

210:                                              ; preds = %201
  %211 = getelementptr inbounds i8, ptr %204, i64 1, !dbg !1342
  store ptr %211, ptr %203, align 8, !dbg !1342, !tbaa !1244
  store i8 32, ptr %204, align 1, !dbg !1342, !tbaa !884
  br label %212, !dbg !1342

212:                                              ; preds = %199, %208, %210
  store i1 true, ptr @print_element.printed, align 1, !dbg !1343
  %213 = load ptr, ptr @stdout, align 8, !dbg !1344, !tbaa !876
  %214 = tail call i32 @fputs_unlocked(ptr noundef nonnull @main.unknown, ptr noundef %213), !dbg !1344
  br label %215, !dbg !1345

215:                                              ; preds = %212, %195
  %216 = and i32 %64, 128, !dbg !1346
  %217 = icmp eq i32 %216, 0, !dbg !1346
  br i1 %217, label %234, label %218, !dbg !1348

218:                                              ; preds = %215
  call void @llvm.dbg.value(metadata ptr @.str.26, metadata !414, metadata !DIExpression()), !dbg !1349
  %219 = load i1, ptr @print_element.printed, align 1, !dbg !1351
  br i1 %219, label %220, label %231, !dbg !1352

220:                                              ; preds = %218
  call void @llvm.dbg.value(metadata i32 32, metadata !1235, metadata !DIExpression()), !dbg !1353
  %221 = load ptr, ptr @stdout, align 8, !dbg !1355, !tbaa !876
  %222 = getelementptr inbounds %struct._IO_FILE, ptr %221, i64 0, i32 5, !dbg !1355
  %223 = load ptr, ptr %222, align 8, !dbg !1355, !tbaa !1244
  %224 = getelementptr inbounds %struct._IO_FILE, ptr %221, i64 0, i32 6, !dbg !1355
  %225 = load ptr, ptr %224, align 8, !dbg !1355, !tbaa !1247
  %226 = icmp ult ptr %223, %225, !dbg !1355
  br i1 %226, label %229, label %227, !dbg !1355, !prof !1248

227:                                              ; preds = %220
  %228 = tail call i32 @__overflow(ptr noundef nonnull %221, i32 noundef 32) #36, !dbg !1355
  br label %231, !dbg !1355

229:                                              ; preds = %220
  %230 = getelementptr inbounds i8, ptr %223, i64 1, !dbg !1355
  store ptr %230, ptr %222, align 8, !dbg !1355, !tbaa !1244
  store i8 32, ptr %223, align 1, !dbg !1355, !tbaa !884
  br label %231, !dbg !1355

231:                                              ; preds = %218, %227, %229
  store i1 true, ptr @print_element.printed, align 1, !dbg !1356
  %232 = load ptr, ptr @stdout, align 8, !dbg !1357, !tbaa !876
  %233 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.26, ptr noundef %232), !dbg !1357
  br label %234, !dbg !1358

234:                                              ; preds = %231, %215
  call void @llvm.dbg.value(metadata i32 10, metadata !1235, metadata !DIExpression()), !dbg !1359
  %235 = load ptr, ptr @stdout, align 8, !dbg !1361, !tbaa !876
  %236 = getelementptr inbounds %struct._IO_FILE, ptr %235, i64 0, i32 5, !dbg !1361
  %237 = load ptr, ptr %236, align 8, !dbg !1361, !tbaa !1244
  %238 = getelementptr inbounds %struct._IO_FILE, ptr %235, i64 0, i32 6, !dbg !1361
  %239 = load ptr, ptr %238, align 8, !dbg !1361, !tbaa !1247
  %240 = icmp ult ptr %237, %239, !dbg !1361
  br i1 %240, label %243, label %241, !dbg !1361, !prof !1248

241:                                              ; preds = %234
  %242 = tail call i32 @__overflow(ptr noundef nonnull %235, i32 noundef 10) #36, !dbg !1361
  br label %245, !dbg !1361

243:                                              ; preds = %234
  %244 = getelementptr inbounds i8, ptr %237, i64 1, !dbg !1361
  store ptr %244, ptr %236, align 8, !dbg !1361, !tbaa !1244
  store i8 10, ptr %237, align 1, !dbg !1361, !tbaa !884
  br label %245, !dbg !1361

245:                                              ; preds = %241, %243
  ret i32 0, !dbg !1362
}

; Function Attrs: nounwind
declare !dbg !1363 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1366 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1367 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1370 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #12

; Function Attrs: nofree nounwind
declare !dbg !1376 noundef i32 @uname(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1380 ptr @__errno_location() local_unnamed_addr #10

declare !dbg !1384 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #13 !dbg !1387 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1389, metadata !DIExpression()), !dbg !1390
  store ptr %0, ptr @file_name, align 8, !dbg !1391, !tbaa !876
  ret void, !dbg !1392
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #13 !dbg !1393 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1397, metadata !DIExpression()), !dbg !1398
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1399, !tbaa !1400
  ret void, !dbg !1402
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #11 !dbg !1403 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1408, !tbaa !876
  %2 = tail call i32 @close_stream(ptr noundef %1) #36, !dbg !1409
  %3 = icmp eq i32 %2, 0, !dbg !1410
  br i1 %3, label %22, label %4, !dbg !1411

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1412, !tbaa !1400, !range !1413, !noundef !960
  %6 = icmp eq i8 %5, 0, !dbg !1412
  br i1 %6, label %11, label %7, !dbg !1414

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #39, !dbg !1415
  %9 = load i32, ptr %8, align 4, !dbg !1415, !tbaa !976
  %10 = icmp eq i32 %9, 32, !dbg !1416
  br i1 %10, label %22, label %11, !dbg !1417

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1.25, i32 noundef 5) #36, !dbg !1418
  call void @llvm.dbg.value(metadata ptr %12, metadata !1405, metadata !DIExpression()), !dbg !1419
  %13 = load ptr, ptr @file_name, align 8, !dbg !1420, !tbaa !876
  %14 = icmp eq ptr %13, null, !dbg !1420
  %15 = tail call ptr @__errno_location() #39, !dbg !1422
  %16 = load i32, ptr %15, align 4, !dbg !1422, !tbaa !976
  br i1 %14, label %19, label %17, !dbg !1423

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #36, !dbg !1424
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.26, ptr noundef %18, ptr noundef %12) #36, !dbg !1424
  br label %20, !dbg !1424

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.27, ptr noundef %12) #36, !dbg !1425
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1426, !tbaa !976
  tail call void @_exit(i32 noundef %21) #38, !dbg !1427
  unreachable, !dbg !1427

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1428, !tbaa !876
  %24 = tail call i32 @close_stream(ptr noundef %23) #36, !dbg !1430
  %25 = icmp eq i32 %24, 0, !dbg !1431
  br i1 %25, label %28, label %26, !dbg !1432

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1433, !tbaa !976
  tail call void @_exit(i32 noundef %27) #38, !dbg !1434
  unreachable, !dbg !1434

28:                                               ; preds = %22
  ret void, !dbg !1435
}

; Function Attrs: noreturn
declare !dbg !1436 void @_exit(i32 noundef) local_unnamed_addr #14

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #15 !dbg !1438 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1442, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i32 %1, metadata !1443, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata ptr %2, metadata !1444, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata ptr %3, metadata !1445, metadata !DIExpression()), !dbg !1446
  tail call fastcc void @flush_stdout(), !dbg !1447
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1448, !tbaa !876
  %6 = icmp eq ptr %5, null, !dbg !1448
  br i1 %6, label %8, label %7, !dbg !1450

7:                                                ; preds = %4
  tail call void %5() #36, !dbg !1451
  br label %12, !dbg !1451

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1452, !tbaa !876
  %10 = tail call ptr @getprogname() #37, !dbg !1452
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.80, ptr noundef %10) #36, !dbg !1452
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1454
  ret void, !dbg !1455
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #11 !dbg !1456 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1458, metadata !DIExpression()), !dbg !1459
  call void @llvm.dbg.value(metadata i32 1, metadata !1460, metadata !DIExpression()), !dbg !1463
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #36, !dbg !1466
  %2 = icmp slt i32 %1, 0, !dbg !1467
  br i1 %2, label %6, label %3, !dbg !1468

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1469, !tbaa !876
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #36, !dbg !1469
  br label %6, !dbg !1469

6:                                                ; preds = %3, %0
  ret void, !dbg !1470
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #11 !dbg !1471 {
  %5 = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1473, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i32 %1, metadata !1474, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata ptr %2, metadata !1475, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata ptr %3, metadata !1476, metadata !DIExpression()), !dbg !1477
  %6 = load ptr, ptr @stderr, align 8, !dbg !1478, !tbaa !876
  call void @llvm.dbg.value(metadata ptr %6, metadata !1479, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata ptr %2, metadata !1519, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata ptr %3, metadata !1520, metadata !DIExpression()), !dbg !1521
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #36, !dbg !1523
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1524, !tbaa !976
  %9 = add i32 %8, 1, !dbg !1524
  store i32 %9, ptr @error_message_count, align 4, !dbg !1524, !tbaa !976
  %10 = icmp eq i32 %1, 0, !dbg !1525
  br i1 %10, label %20, label %11, !dbg !1527

11:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1528, metadata !DIExpression()), !dbg !1536
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #36, !dbg !1538
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1532, metadata !DIExpression()), !dbg !1539
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #36, !dbg !1540
  call void @llvm.dbg.value(metadata ptr %12, metadata !1531, metadata !DIExpression()), !dbg !1536
  %13 = icmp eq ptr %12, null, !dbg !1541
  br i1 %13, label %14, label %16, !dbg !1543

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.81, ptr noundef nonnull @.str.5.82, i32 noundef 5) #36, !dbg !1544
  call void @llvm.dbg.value(metadata ptr %15, metadata !1531, metadata !DIExpression()), !dbg !1536
  br label %16, !dbg !1545

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1536
  call void @llvm.dbg.value(metadata ptr %17, metadata !1531, metadata !DIExpression()), !dbg !1536
  %18 = load ptr, ptr @stderr, align 8, !dbg !1546, !tbaa !876
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.83, ptr noundef %17) #36, !dbg !1546
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #36, !dbg !1547
  br label %20, !dbg !1548

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !1549, !tbaa !876
  call void @llvm.dbg.value(metadata i32 10, metadata !1550, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata ptr %21, metadata !1555, metadata !DIExpression()), !dbg !1556
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !1558
  %23 = load ptr, ptr %22, align 8, !dbg !1558, !tbaa !1244
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !1558
  %25 = load ptr, ptr %24, align 8, !dbg !1558, !tbaa !1247
  %26 = icmp ult ptr %23, %25, !dbg !1558
  br i1 %26, label %29, label %27, !dbg !1558, !prof !1248

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #36, !dbg !1558
  br label %31, !dbg !1558

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1558
  store ptr %30, ptr %22, align 8, !dbg !1558, !tbaa !1244
  store i8 10, ptr %23, align 1, !dbg !1558, !tbaa !884
  br label %31, !dbg !1558

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !1559, !tbaa !876
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #36, !dbg !1559
  %34 = icmp eq i32 %0, 0, !dbg !1560
  br i1 %34, label %36, label %35, !dbg !1562

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #38, !dbg !1563
  unreachable, !dbg !1563

36:                                               ; preds = %31
  ret void, !dbg !1564
}

declare !dbg !1565 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1568 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1571 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1574 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #11 !dbg !1578 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1582, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.value(metadata i32 %1, metadata !1583, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.value(metadata ptr %2, metadata !1584, metadata !DIExpression()), !dbg !1591
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #36, !dbg !1592
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1585, metadata !DIExpression()), !dbg !1593
  call void @llvm.va_start(ptr nonnull %4), !dbg !1594
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #41, !dbg !1595
  call void @llvm.va_end(ptr nonnull %4), !dbg !1596
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #36, !dbg !1597
  ret void, !dbg !1597
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #15 !dbg !477 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !489, metadata !DIExpression()), !dbg !1598
  call void @llvm.dbg.value(metadata i32 %1, metadata !490, metadata !DIExpression()), !dbg !1598
  call void @llvm.dbg.value(metadata ptr %2, metadata !491, metadata !DIExpression()), !dbg !1598
  call void @llvm.dbg.value(metadata i32 %3, metadata !492, metadata !DIExpression()), !dbg !1598
  call void @llvm.dbg.value(metadata ptr %4, metadata !493, metadata !DIExpression()), !dbg !1598
  call void @llvm.dbg.value(metadata ptr %5, metadata !494, metadata !DIExpression()), !dbg !1598
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !1599, !tbaa !976
  %8 = icmp eq i32 %7, 0, !dbg !1599
  br i1 %8, label %23, label %9, !dbg !1601

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1602, !tbaa !976
  %11 = icmp eq i32 %10, %3, !dbg !1605
  br i1 %11, label %12, label %22, !dbg !1606

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1607, !tbaa !876
  %14 = icmp eq ptr %13, %2, !dbg !1608
  br i1 %14, label %36, label %15, !dbg !1609

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !1610
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !1611
  br i1 %18, label %19, label %22, !dbg !1611

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !1612
  %21 = icmp eq i32 %20, 0, !dbg !1613
  br i1 %21, label %36, label %22, !dbg !1614

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1615, !tbaa !876
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1616, !tbaa !976
  br label %23, !dbg !1617

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !1618
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !1619, !tbaa !876
  %25 = icmp eq ptr %24, null, !dbg !1619
  br i1 %25, label %27, label %26, !dbg !1621

26:                                               ; preds = %23
  tail call void %24() #36, !dbg !1622
  br label %31, !dbg !1622

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !1623, !tbaa !876
  %29 = tail call ptr @getprogname() #37, !dbg !1623
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.86, ptr noundef %29) #36, !dbg !1623
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !1625, !tbaa !876
  %33 = icmp eq ptr %2, null, !dbg !1625
  %34 = select i1 %33, ptr @.str.3.87, ptr @.str.2.88, !dbg !1625
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #36, !dbg !1625
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !1626
  br label %36, !dbg !1627

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !1627
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #11 !dbg !1628 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1632, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i32 %1, metadata !1633, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata ptr %2, metadata !1634, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i32 %3, metadata !1635, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata ptr %4, metadata !1636, metadata !DIExpression()), !dbg !1638
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #36, !dbg !1639
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1637, metadata !DIExpression()), !dbg !1640
  call void @llvm.va_start(ptr nonnull %6), !dbg !1641
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #41, !dbg !1642
  call void @llvm.va_end(ptr nonnull %6), !dbg !1643
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #36, !dbg !1644
  ret void, !dbg !1644
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #17 !dbg !1645 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1648, !tbaa !876
  ret ptr %1, !dbg !1649
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #18 !dbg !1650 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1652, metadata !DIExpression()), !dbg !1655
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #37, !dbg !1656
  call void @llvm.dbg.value(metadata ptr %2, metadata !1653, metadata !DIExpression()), !dbg !1655
  %3 = icmp eq ptr %2, null, !dbg !1657
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1657
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1657
  call void @llvm.dbg.value(metadata ptr %5, metadata !1654, metadata !DIExpression()), !dbg !1655
  %6 = ptrtoint ptr %5 to i64, !dbg !1658
  %7 = ptrtoint ptr %0 to i64, !dbg !1658
  %8 = sub i64 %6, %7, !dbg !1658
  %9 = icmp sgt i64 %8, 6, !dbg !1660
  br i1 %9, label %10, label %19, !dbg !1661

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1662
  call void @llvm.dbg.value(metadata ptr %11, metadata !1663, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata ptr @.str.97, metadata !1668, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i64 7, metadata !1669, metadata !DIExpression()), !dbg !1670
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.97, i64 7), !dbg !1672
  %13 = icmp eq i32 %12, 0, !dbg !1673
  br i1 %13, label %14, label %19, !dbg !1674

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !1652, metadata !DIExpression()), !dbg !1655
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.98, i64 noundef 3) #37, !dbg !1675
  %16 = icmp eq i32 %15, 0, !dbg !1678
  %17 = select i1 %16, i64 3, i64 0, !dbg !1679
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !1679
  br label %19, !dbg !1679

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1655
  call void @llvm.dbg.value(metadata ptr %21, metadata !1654, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata ptr %20, metadata !1652, metadata !DIExpression()), !dbg !1655
  store ptr %20, ptr @program_name, align 8, !dbg !1680, !tbaa !876
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1681, !tbaa !876
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1682, !tbaa !876
  ret void, !dbg !1683
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1684 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #11 !dbg !531 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !538, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata ptr %1, metadata !539, metadata !DIExpression()), !dbg !1685
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #36, !dbg !1686
  call void @llvm.dbg.value(metadata ptr %5, metadata !540, metadata !DIExpression()), !dbg !1685
  %6 = icmp eq ptr %5, %0, !dbg !1687
  br i1 %6, label %7, label %14, !dbg !1689

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #36, !dbg !1690
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #36, !dbg !1691
  call void @llvm.dbg.declare(metadata ptr %4, metadata !546, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata ptr %4, metadata !1693, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata ptr %4, metadata !1702, metadata !DIExpression()), !dbg !1710
  call void @llvm.dbg.value(metadata i32 0, metadata !1708, metadata !DIExpression()), !dbg !1710
  call void @llvm.dbg.value(metadata i64 8, metadata !1709, metadata !DIExpression()), !dbg !1710
  store i64 0, ptr %4, align 8, !dbg !1712
  call void @llvm.dbg.value(metadata ptr %3, metadata !541, metadata !DIExpression(DW_OP_deref)), !dbg !1685
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #36, !dbg !1713
  %9 = icmp eq i64 %8, 2, !dbg !1715
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !541, metadata !DIExpression()), !dbg !1685
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1716
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1685
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #36, !dbg !1717
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #36, !dbg !1717
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1685
  ret ptr %15, !dbg !1717
}

; Function Attrs: nounwind
declare !dbg !1718 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #11 !dbg !1724 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1729, metadata !DIExpression()), !dbg !1732
  %2 = tail call ptr @__errno_location() #39, !dbg !1733
  %3 = load i32, ptr %2, align 4, !dbg !1733, !tbaa !976
  call void @llvm.dbg.value(metadata i32 %3, metadata !1730, metadata !DIExpression()), !dbg !1732
  %4 = icmp eq ptr %0, null, !dbg !1734
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1734
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #42, !dbg !1735
  call void @llvm.dbg.value(metadata ptr %6, metadata !1731, metadata !DIExpression()), !dbg !1732
  store i32 %3, ptr %2, align 4, !dbg !1736, !tbaa !976
  ret ptr %6, !dbg !1737
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #19 !dbg !1738 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1744, metadata !DIExpression()), !dbg !1745
  %2 = icmp eq ptr %0, null, !dbg !1746
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1746
  %4 = load i32, ptr %3, align 8, !dbg !1747, !tbaa !1748
  ret i32 %4, !dbg !1750
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #20 !dbg !1751 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1755, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata i32 %1, metadata !1756, metadata !DIExpression()), !dbg !1757
  %3 = icmp eq ptr %0, null, !dbg !1758
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1758
  store i32 %1, ptr %4, align 8, !dbg !1759, !tbaa !1748
  ret void, !dbg !1760
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #21 !dbg !1761 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1765, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8 %1, metadata !1766, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i32 %2, metadata !1767, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8 %1, metadata !1768, metadata !DIExpression()), !dbg !1773
  %4 = icmp eq ptr %0, null, !dbg !1774
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1774
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1775
  %7 = lshr i8 %1, 5, !dbg !1776
  %8 = zext i8 %7 to i64, !dbg !1776
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1777
  call void @llvm.dbg.value(metadata ptr %9, metadata !1769, metadata !DIExpression()), !dbg !1773
  %10 = and i8 %1, 31, !dbg !1778
  %11 = zext i8 %10 to i32, !dbg !1778
  call void @llvm.dbg.value(metadata i32 %11, metadata !1771, metadata !DIExpression()), !dbg !1773
  %12 = load i32, ptr %9, align 4, !dbg !1779, !tbaa !976
  %13 = lshr i32 %12, %11, !dbg !1780
  %14 = and i32 %13, 1, !dbg !1781
  call void @llvm.dbg.value(metadata i32 %14, metadata !1772, metadata !DIExpression()), !dbg !1773
  %15 = xor i32 %13, %2, !dbg !1782
  %16 = and i32 %15, 1, !dbg !1782
  %17 = shl nuw i32 %16, %11, !dbg !1783
  %18 = xor i32 %17, %12, !dbg !1784
  store i32 %18, ptr %9, align 4, !dbg !1784, !tbaa !976
  ret i32 %14, !dbg !1785
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1786 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1790, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i32 %1, metadata !1791, metadata !DIExpression()), !dbg !1793
  %3 = icmp eq ptr %0, null, !dbg !1794
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1796
  call void @llvm.dbg.value(metadata ptr %4, metadata !1790, metadata !DIExpression()), !dbg !1793
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1797
  %6 = load i32, ptr %5, align 4, !dbg !1797, !tbaa !1798
  call void @llvm.dbg.value(metadata i32 %6, metadata !1792, metadata !DIExpression()), !dbg !1793
  store i32 %1, ptr %5, align 4, !dbg !1799, !tbaa !1798
  ret i32 %6, !dbg !1800
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #11 !dbg !1801 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1805, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata ptr %1, metadata !1806, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata ptr %2, metadata !1807, metadata !DIExpression()), !dbg !1808
  %4 = icmp eq ptr %0, null, !dbg !1809
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1811
  call void @llvm.dbg.value(metadata ptr %5, metadata !1805, metadata !DIExpression()), !dbg !1808
  store i32 10, ptr %5, align 8, !dbg !1812, !tbaa !1748
  %6 = icmp ne ptr %1, null, !dbg !1813
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1815
  br i1 %8, label %10, label %9, !dbg !1815

9:                                                ; preds = %3
  tail call void @abort() #38, !dbg !1816
  unreachable, !dbg !1816

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1817
  store ptr %1, ptr %11, align 8, !dbg !1818, !tbaa !1819
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1820
  store ptr %2, ptr %12, align 8, !dbg !1821, !tbaa !1822
  ret void, !dbg !1823
}

; Function Attrs: noreturn nounwind
declare !dbg !1824 void @abort() local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #11 !dbg !1825 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1829, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i64 %1, metadata !1830, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata ptr %2, metadata !1831, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i64 %3, metadata !1832, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata ptr %4, metadata !1833, metadata !DIExpression()), !dbg !1837
  %6 = icmp eq ptr %4, null, !dbg !1838
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1838
  call void @llvm.dbg.value(metadata ptr %7, metadata !1834, metadata !DIExpression()), !dbg !1837
  %8 = tail call ptr @__errno_location() #39, !dbg !1839
  %9 = load i32, ptr %8, align 4, !dbg !1839, !tbaa !976
  call void @llvm.dbg.value(metadata i32 %9, metadata !1835, metadata !DIExpression()), !dbg !1837
  %10 = load i32, ptr %7, align 8, !dbg !1840, !tbaa !1748
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1841
  %12 = load i32, ptr %11, align 4, !dbg !1841, !tbaa !1798
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1842
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1843
  %15 = load ptr, ptr %14, align 8, !dbg !1843, !tbaa !1819
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1844
  %17 = load ptr, ptr %16, align 8, !dbg !1844, !tbaa !1822
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1845
  call void @llvm.dbg.value(metadata i64 %18, metadata !1836, metadata !DIExpression()), !dbg !1837
  store i32 %9, ptr %8, align 4, !dbg !1846, !tbaa !976
  ret i64 %18, !dbg !1847
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #11 !dbg !1848 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !1854, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i64 %1, metadata !1855, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata ptr %2, metadata !1856, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i64 %3, metadata !1857, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i32 %4, metadata !1858, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i32 %5, metadata !1859, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata ptr %6, metadata !1860, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata ptr %7, metadata !1861, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata ptr %8, metadata !1862, metadata !DIExpression()), !dbg !1916
  %16 = tail call i64 @__ctype_get_mb_cur_max() #36, !dbg !1917
  %17 = icmp eq i64 %16, 1, !dbg !1918
  call void @llvm.dbg.value(metadata i1 %17, metadata !1863, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1916
  call void @llvm.dbg.value(metadata i64 0, metadata !1864, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i64 0, metadata !1865, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata ptr null, metadata !1866, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i64 0, metadata !1867, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 0, metadata !1868, metadata !DIExpression()), !dbg !1916
  %18 = trunc i32 %5 to i8, !dbg !1919
  %19 = lshr i8 %18, 1, !dbg !1919
  %20 = and i8 %19, 1, !dbg !1919
  call void @llvm.dbg.value(metadata i8 %20, metadata !1869, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 0, metadata !1870, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 1, metadata !1871, metadata !DIExpression()), !dbg !1916
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !1920

28:                                               ; preds = %642, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %642 ]
  %30 = phi ptr [ %7, %9 ], [ %117, %642 ]
  %31 = phi ptr [ %8, %9 ], [ %118, %642 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %642 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %642 ], !dbg !1921
  %34 = phi ptr [ null, %9 ], [ %120, %642 ], !dbg !1922
  %35 = phi i64 [ 0, %9 ], [ %121, %642 ], !dbg !1923
  %36 = phi i8 [ 0, %9 ], [ %122, %642 ], !dbg !1924
  %37 = phi i8 [ %20, %9 ], [ %123, %642 ], !dbg !1916
  %38 = phi i8 [ 0, %9 ], [ %142, %642 ], !dbg !1925
  %39 = phi i8 [ 1, %9 ], [ %143, %642 ], !dbg !1926
  %40 = phi i64 [ %1, %9 ], [ %141, %642 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1855, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 %39, metadata !1871, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 %38, metadata !1870, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 %37, metadata !1869, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 %36, metadata !1868, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i64 %35, metadata !1867, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata ptr %34, metadata !1866, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i64 %33, metadata !1865, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i64 0, metadata !1864, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i64 %32, metadata !1857, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata ptr %31, metadata !1862, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata ptr %30, metadata !1861, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i32 %29, metadata !1858, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.label(metadata !1909), !dbg !1927
  call void @llvm.dbg.value(metadata i8 0, metadata !1872, metadata !DIExpression()), !dbg !1916
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
  ], !dbg !1928

41:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !1869, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i32 5, metadata !1858, metadata !DIExpression()), !dbg !1916
  br label %115, !dbg !1929

42:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 %37, metadata !1869, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i32 5, metadata !1858, metadata !DIExpression()), !dbg !1916
  %43 = and i8 %37, 1, !dbg !1930
  %44 = icmp eq i8 %43, 0, !dbg !1930
  br i1 %44, label %45, label %115, !dbg !1929

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1932
  br i1 %46, label %115, label %47, !dbg !1935

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !1932, !tbaa !884
  br label %115, !dbg !1932

48:                                               ; preds = %28, %28
  call void @llvm.dbg.value(metadata ptr @.str.11.111, metadata !644, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i32 %29, metadata !645, metadata !DIExpression()), !dbg !1936
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.112, ptr noundef nonnull @.str.11.111, i32 noundef 5) #36, !dbg !1940
  call void @llvm.dbg.value(metadata ptr %49, metadata !646, metadata !DIExpression()), !dbg !1936
  %50 = icmp eq ptr %49, @.str.11.111, !dbg !1941
  br i1 %50, label %51, label %60, !dbg !1943

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #36, !dbg !1944
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #36, !dbg !1945
  call void @llvm.dbg.declare(metadata ptr %13, metadata !648, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata ptr %13, metadata !1947, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata ptr %13, metadata !1955, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i32 0, metadata !1958, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 8, metadata !1959, metadata !DIExpression()), !dbg !1960
  store i64 0, ptr %13, align 8, !dbg !1962
  call void @llvm.dbg.value(metadata ptr %12, metadata !647, metadata !DIExpression(DW_OP_deref)), !dbg !1936
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #36, !dbg !1963
  %53 = icmp eq i64 %52, 3, !dbg !1965
  %54 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %54, metadata !647, metadata !DIExpression()), !dbg !1936
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !1966
  %57 = icmp eq i32 %29, 9, !dbg !1966
  %58 = select i1 %57, ptr @.str.10.113, ptr @.str.12.114, !dbg !1966
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !1966
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #36, !dbg !1967
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #36, !dbg !1967
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !1936
  call void @llvm.dbg.value(metadata ptr %61, metadata !1861, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata ptr @.str.12.114, metadata !644, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i32 %29, metadata !645, metadata !DIExpression()), !dbg !1968
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.112, ptr noundef nonnull @.str.12.114, i32 noundef 5) #36, !dbg !1970
  call void @llvm.dbg.value(metadata ptr %62, metadata !646, metadata !DIExpression()), !dbg !1968
  %63 = icmp eq ptr %62, @.str.12.114, !dbg !1971
  br i1 %63, label %64, label %73, !dbg !1972

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #36, !dbg !1973
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #36, !dbg !1974
  call void @llvm.dbg.declare(metadata ptr %11, metadata !648, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata ptr %11, metadata !1947, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata ptr %11, metadata !1955, metadata !DIExpression()), !dbg !1978
  call void @llvm.dbg.value(metadata i32 0, metadata !1958, metadata !DIExpression()), !dbg !1978
  call void @llvm.dbg.value(metadata i64 8, metadata !1959, metadata !DIExpression()), !dbg !1978
  store i64 0, ptr %11, align 8, !dbg !1980
  call void @llvm.dbg.value(metadata ptr %10, metadata !647, metadata !DIExpression(DW_OP_deref)), !dbg !1968
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #36, !dbg !1981
  %66 = icmp eq i64 %65, 3, !dbg !1982
  %67 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %67, metadata !647, metadata !DIExpression()), !dbg !1968
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !1983
  %70 = icmp eq i32 %29, 9, !dbg !1983
  %71 = select i1 %70, ptr @.str.10.113, ptr @.str.12.114, !dbg !1983
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !1983
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #36, !dbg !1984
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #36, !dbg !1984
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  call void @llvm.dbg.value(metadata ptr %75, metadata !1862, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata ptr %74, metadata !1861, metadata !DIExpression()), !dbg !1916
  %76 = and i8 %37, 1, !dbg !1985
  %77 = icmp eq i8 %76, 0, !dbg !1985
  br i1 %77, label %78, label %93, !dbg !1986

78:                                               ; preds = %73
  call void @llvm.dbg.value(metadata ptr %74, metadata !1873, metadata !DIExpression()), !dbg !1987
  call void @llvm.dbg.value(metadata i64 0, metadata !1864, metadata !DIExpression()), !dbg !1916
  %79 = load i8, ptr %74, align 1, !dbg !1988, !tbaa !884
  %80 = icmp eq i8 %79, 0, !dbg !1990
  br i1 %80, label %93, label %81, !dbg !1990

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  call void @llvm.dbg.value(metadata ptr %83, metadata !1873, metadata !DIExpression()), !dbg !1987
  call void @llvm.dbg.value(metadata i64 %84, metadata !1864, metadata !DIExpression()), !dbg !1916
  %85 = icmp ult i64 %84, %40, !dbg !1991
  br i1 %85, label %86, label %88, !dbg !1994

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !1991
  store i8 %82, ptr %87, align 1, !dbg !1991, !tbaa !884
  br label %88, !dbg !1991

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !1994
  call void @llvm.dbg.value(metadata i64 %89, metadata !1864, metadata !DIExpression()), !dbg !1916
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !1995
  call void @llvm.dbg.value(metadata ptr %90, metadata !1873, metadata !DIExpression()), !dbg !1987
  %91 = load i8, ptr %90, align 1, !dbg !1988, !tbaa !884
  %92 = icmp eq i8 %91, 0, !dbg !1990
  br i1 %92, label %93, label %81, !dbg !1990, !llvm.loop !1996

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !1998
  call void @llvm.dbg.value(metadata i64 %94, metadata !1864, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 1, metadata !1868, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata ptr %75, metadata !1866, metadata !DIExpression()), !dbg !1916
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #37, !dbg !1999
  call void @llvm.dbg.value(metadata i64 %95, metadata !1867, metadata !DIExpression()), !dbg !1916
  br label %115, !dbg !2000

96:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !1868, metadata !DIExpression()), !dbg !1916
  br label %97, !dbg !2001

97:                                               ; preds = %28, %96
  %98 = phi i8 [ %36, %28 ], [ 1, %96 ], !dbg !1916
  call void @llvm.dbg.value(metadata i8 %98, metadata !1868, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 1, metadata !1869, metadata !DIExpression()), !dbg !1916
  br label %99, !dbg !2002

99:                                               ; preds = %28, %97
  %100 = phi i8 [ %36, %28 ], [ %98, %97 ], !dbg !1924
  %101 = phi i8 [ %37, %28 ], [ 1, %97 ], !dbg !1916
  call void @llvm.dbg.value(metadata i8 %101, metadata !1869, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 %100, metadata !1868, metadata !DIExpression()), !dbg !1916
  %102 = and i8 %101, 1, !dbg !2003
  %103 = icmp eq i8 %102, 0, !dbg !2003
  %104 = select i1 %103, i8 1, i8 %100, !dbg !2005
  br label %105, !dbg !2005

105:                                              ; preds = %99, %28
  %106 = phi i8 [ %36, %28 ], [ %104, %99 ], !dbg !1916
  %107 = phi i8 [ %37, %28 ], [ %101, %99 ], !dbg !1919
  call void @llvm.dbg.value(metadata i8 %107, metadata !1869, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 %106, metadata !1868, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i32 2, metadata !1858, metadata !DIExpression()), !dbg !1916
  %108 = and i8 %107, 1, !dbg !2006
  %109 = icmp eq i8 %108, 0, !dbg !2006
  br i1 %109, label %110, label %115, !dbg !2008

110:                                              ; preds = %105
  %111 = icmp eq i64 %40, 0, !dbg !2009
  br i1 %111, label %115, label %112, !dbg !2012

112:                                              ; preds = %110
  store i8 39, ptr %0, align 1, !dbg !2009, !tbaa !884
  br label %115, !dbg !2009

113:                                              ; preds = %28
  call void @llvm.dbg.value(metadata i8 0, metadata !1869, metadata !DIExpression()), !dbg !1916
  br label %115, !dbg !2013

114:                                              ; preds = %28
  call void @abort() #38, !dbg !2014
  unreachable, !dbg !2014

115:                                              ; preds = %41, %105, %112, %110, %28, %42, %47, %45, %113, %93
  %116 = phi i32 [ 0, %113 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %110 ], [ 2, %112 ], [ 2, %105 ], [ 5, %41 ]
  %117 = phi ptr [ %30, %113 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %110 ], [ %30, %112 ], [ %30, %105 ], [ %30, %41 ]
  %118 = phi ptr [ %31, %113 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %110 ], [ %31, %112 ], [ %31, %105 ], [ %31, %41 ]
  %119 = phi i64 [ 0, %113 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %110 ], [ 1, %112 ], [ 0, %105 ], [ 0, %41 ], !dbg !1998
  %120 = phi ptr [ %34, %113 ], [ %75, %93 ], [ @.str.10.113, %45 ], [ @.str.10.113, %47 ], [ @.str.10.113, %42 ], [ %34, %28 ], [ @.str.12.114, %110 ], [ @.str.12.114, %112 ], [ @.str.12.114, %105 ], [ @.str.10.113, %41 ], !dbg !1916
  %121 = phi i64 [ %35, %113 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %110 ], [ 1, %112 ], [ 1, %105 ], [ 1, %41 ], !dbg !1916
  %122 = phi i8 [ %36, %113 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %106, %110 ], [ %106, %112 ], [ %106, %105 ], [ 1, %41 ], !dbg !1916
  %123 = phi i8 [ 0, %113 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %107, %110 ], [ %107, %112 ], [ %107, %105 ], [ 1, %41 ], !dbg !1916
  call void @llvm.dbg.value(metadata i8 %123, metadata !1869, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 %122, metadata !1868, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i64 %121, metadata !1867, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata ptr %120, metadata !1866, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i64 %119, metadata !1864, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata ptr %118, metadata !1862, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata ptr %117, metadata !1861, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i32 %116, metadata !1858, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i64 0, metadata !1878, metadata !DIExpression()), !dbg !2015
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
  br label %138, !dbg !2016

138:                                              ; preds = %617, %115
  %139 = phi i64 [ %32, %115 ], [ %618, %617 ]
  %140 = phi i64 [ %119, %115 ], [ %619, %617 ], !dbg !1998
  %141 = phi i64 [ %33, %115 ], [ %620, %617 ], !dbg !1921
  %142 = phi i8 [ %38, %115 ], [ %621, %617 ], !dbg !1925
  %143 = phi i8 [ %39, %115 ], [ %622, %617 ], !dbg !1926
  %144 = phi i8 [ 0, %115 ], [ %623, %617 ], !dbg !2017
  %145 = phi i64 [ 0, %115 ], [ %626, %617 ], !dbg !2018
  %146 = phi i64 [ %40, %115 ], [ %625, %617 ]
  call void @llvm.dbg.value(metadata i64 %146, metadata !1855, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i64 %145, metadata !1878, metadata !DIExpression()), !dbg !2015
  call void @llvm.dbg.value(metadata i8 %144, metadata !1872, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 %143, metadata !1871, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 %142, metadata !1870, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i64 %141, metadata !1865, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i64 %140, metadata !1864, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i64 %139, metadata !1857, metadata !DIExpression()), !dbg !1916
  %147 = icmp eq i64 %139, -1, !dbg !2019
  br i1 %147, label %148, label %152, !dbg !2020

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2021
  %150 = load i8, ptr %149, align 1, !dbg !2021, !tbaa !884
  %151 = icmp eq i8 %150, 0, !dbg !2022
  br i1 %151, label %627, label %154, !dbg !2023

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !2024
  br i1 %153, label %627, label %154, !dbg !2023

154:                                              ; preds = %148, %152
  call void @llvm.dbg.value(metadata i8 0, metadata !1880, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 0, metadata !1883, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 0, metadata !1884, metadata !DIExpression()), !dbg !2025
  br i1 %129, label %155, label %170, !dbg !2026

155:                                              ; preds = %154
  %156 = add i64 %145, %121, !dbg !2028
  %157 = select i1 %147, i1 %130, i1 false, !dbg !2029
  br i1 %157, label %158, label %160, !dbg !2029

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !2030
  call void @llvm.dbg.value(metadata i64 %159, metadata !1857, metadata !DIExpression()), !dbg !1916
  br label %160, !dbg !2031

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !2031
  call void @llvm.dbg.value(metadata i64 %161, metadata !1857, metadata !DIExpression()), !dbg !1916
  %162 = icmp ugt i64 %156, %161, !dbg !2032
  br i1 %162, label %170, label %163, !dbg !2033

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2034
  call void @llvm.dbg.value(metadata ptr %164, metadata !2035, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata ptr %120, metadata !2038, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i64 %121, metadata !2039, metadata !DIExpression()), !dbg !2040
  %165 = call i32 @bcmp(ptr %164, ptr %120, i64 %121), !dbg !2042
  %166 = icmp ne i32 %165, 0, !dbg !2043
  %167 = select i1 %166, i1 true, i1 %132, !dbg !2044
  %168 = xor i1 %166, true, !dbg !2044
  %169 = zext i1 %168 to i8, !dbg !2044
  br i1 %167, label %170, label %688, !dbg !2044

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !2025
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !2025
  call void @llvm.dbg.value(metadata i8 %173, metadata !1880, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %171, metadata !1857, metadata !DIExpression()), !dbg !1916
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2045
  %175 = load i8, ptr %174, align 1, !dbg !2045, !tbaa !884
  call void @llvm.dbg.value(metadata i8 %175, metadata !1885, metadata !DIExpression()), !dbg !2025
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
  ], !dbg !2046

176:                                              ; preds = %170
  br i1 %125, label %177, label %225, !dbg !2047

177:                                              ; preds = %176
  br i1 %132, label %178, label %674, !dbg !2048

178:                                              ; preds = %177
  call void @llvm.dbg.value(metadata i8 1, metadata !1883, metadata !DIExpression()), !dbg !2025
  %179 = and i8 %144, 1, !dbg !2052
  %180 = icmp eq i8 %179, 0, !dbg !2052
  %181 = select i1 %133, i1 %180, i1 false, !dbg !2052
  br i1 %181, label %182, label %198, !dbg !2052

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !2054
  br i1 %183, label %184, label %186, !dbg !2058

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2054
  store i8 39, ptr %185, align 1, !dbg !2054, !tbaa !884
  br label %186, !dbg !2054

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !2058
  call void @llvm.dbg.value(metadata i64 %187, metadata !1864, metadata !DIExpression()), !dbg !1916
  %188 = icmp ult i64 %187, %146, !dbg !2059
  br i1 %188, label %189, label %191, !dbg !2062

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !2059
  store i8 36, ptr %190, align 1, !dbg !2059, !tbaa !884
  br label %191, !dbg !2059

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !2062
  call void @llvm.dbg.value(metadata i64 %192, metadata !1864, metadata !DIExpression()), !dbg !1916
  %193 = icmp ult i64 %192, %146, !dbg !2063
  br i1 %193, label %194, label %196, !dbg !2066

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !2063
  store i8 39, ptr %195, align 1, !dbg !2063, !tbaa !884
  br label %196, !dbg !2063

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !2066
  call void @llvm.dbg.value(metadata i64 %197, metadata !1864, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 1, metadata !1872, metadata !DIExpression()), !dbg !1916
  br label %198, !dbg !2067

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !1916
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !1916
  call void @llvm.dbg.value(metadata i8 %200, metadata !1872, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i64 %199, metadata !1864, metadata !DIExpression()), !dbg !1916
  %201 = icmp ult i64 %199, %146, !dbg !2068
  br i1 %201, label %202, label %204, !dbg !2071

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !2068
  store i8 92, ptr %203, align 1, !dbg !2068, !tbaa !884
  br label %204, !dbg !2068

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !2071
  call void @llvm.dbg.value(metadata i64 %205, metadata !1864, metadata !DIExpression()), !dbg !1916
  br i1 %126, label %206, label %491, !dbg !2072

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !2074
  %208 = icmp ult i64 %207, %171, !dbg !2075
  br i1 %208, label %209, label %480, !dbg !2076

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !2077
  %211 = load i8, ptr %210, align 1, !dbg !2077, !tbaa !884
  %212 = add i8 %211, -48, !dbg !2078
  %213 = icmp ult i8 %212, 10, !dbg !2078
  br i1 %213, label %214, label %480, !dbg !2078

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !2079
  br i1 %215, label %216, label %218, !dbg !2083

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !2079
  store i8 48, ptr %217, align 1, !dbg !2079, !tbaa !884
  br label %218, !dbg !2079

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !2083
  call void @llvm.dbg.value(metadata i64 %219, metadata !1864, metadata !DIExpression()), !dbg !1916
  %220 = icmp ult i64 %219, %146, !dbg !2084
  br i1 %220, label %221, label %223, !dbg !2087

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !2084
  store i8 48, ptr %222, align 1, !dbg !2084, !tbaa !884
  br label %223, !dbg !2084

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !2087
  call void @llvm.dbg.value(metadata i64 %224, metadata !1864, metadata !DIExpression()), !dbg !1916
  br label %480, !dbg !2088

225:                                              ; preds = %176
  br i1 %25, label %491, label %617, !dbg !2089

226:                                              ; preds = %170
  switch i32 %116, label %480 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !2090

227:                                              ; preds = %226
  br i1 %132, label %480, label %670, !dbg !2091

228:                                              ; preds = %226
  br i1 %23, label %480, label %229, !dbg !2093

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !2095
  %231 = icmp ult i64 %230, %171, !dbg !2096
  br i1 %231, label %232, label %480, !dbg !2097

232:                                              ; preds = %229
  %233 = add i64 %145, 1, !dbg !2098
  %234 = getelementptr inbounds i8, ptr %2, i64 %233, !dbg !2099
  %235 = load i8, ptr %234, align 1, !dbg !2099, !tbaa !884
  %236 = icmp eq i8 %235, 63, !dbg !2100
  br i1 %236, label %237, label %480, !dbg !2101

237:                                              ; preds = %232
  %238 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !2102
  %239 = load i8, ptr %238, align 1, !dbg !2102, !tbaa !884
  %240 = sext i8 %239 to i32, !dbg !2102
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
  ], !dbg !2103

241:                                              ; preds = %237, %237, %237, %237, %237, %237, %237, %237, %237
  br i1 %132, label %242, label %688, !dbg !2104

242:                                              ; preds = %241
  call void @llvm.dbg.value(metadata i8 %239, metadata !1885, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %230, metadata !1878, metadata !DIExpression()), !dbg !2015
  %243 = icmp ult i64 %140, %146, !dbg !2106
  br i1 %243, label %244, label %246, !dbg !2109

244:                                              ; preds = %242
  %245 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2106
  store i8 63, ptr %245, align 1, !dbg !2106, !tbaa !884
  br label %246, !dbg !2106

246:                                              ; preds = %244, %242
  %247 = add i64 %140, 1, !dbg !2109
  call void @llvm.dbg.value(metadata i64 %247, metadata !1864, metadata !DIExpression()), !dbg !1916
  %248 = icmp ult i64 %247, %146, !dbg !2110
  br i1 %248, label %249, label %251, !dbg !2113

249:                                              ; preds = %246
  %250 = getelementptr inbounds i8, ptr %0, i64 %247, !dbg !2110
  store i8 34, ptr %250, align 1, !dbg !2110, !tbaa !884
  br label %251, !dbg !2110

251:                                              ; preds = %249, %246
  %252 = add i64 %140, 2, !dbg !2113
  call void @llvm.dbg.value(metadata i64 %252, metadata !1864, metadata !DIExpression()), !dbg !1916
  %253 = icmp ult i64 %252, %146, !dbg !2114
  br i1 %253, label %254, label %256, !dbg !2117

254:                                              ; preds = %251
  %255 = getelementptr inbounds i8, ptr %0, i64 %252, !dbg !2114
  store i8 34, ptr %255, align 1, !dbg !2114, !tbaa !884
  br label %256, !dbg !2114

256:                                              ; preds = %254, %251
  %257 = add i64 %140, 3, !dbg !2117
  call void @llvm.dbg.value(metadata i64 %257, metadata !1864, metadata !DIExpression()), !dbg !1916
  %258 = icmp ult i64 %257, %146, !dbg !2118
  br i1 %258, label %259, label %261, !dbg !2121

259:                                              ; preds = %256
  %260 = getelementptr inbounds i8, ptr %0, i64 %257, !dbg !2118
  store i8 63, ptr %260, align 1, !dbg !2118, !tbaa !884
  br label %261, !dbg !2118

261:                                              ; preds = %259, %256
  %262 = add i64 %140, 4, !dbg !2121
  call void @llvm.dbg.value(metadata i64 %262, metadata !1864, metadata !DIExpression()), !dbg !1916
  br label %480, !dbg !2122

263:                                              ; preds = %170
  br label %274, !dbg !2123

264:                                              ; preds = %170
  br label %274, !dbg !2124

265:                                              ; preds = %170
  br label %272, !dbg !2125

266:                                              ; preds = %170
  br label %272, !dbg !2126

267:                                              ; preds = %170
  br label %274, !dbg !2127

268:                                              ; preds = %170
  br i1 %133, label %269, label %270, !dbg !2128

269:                                              ; preds = %268
  br i1 %132, label %573, label %670, !dbg !2129

270:                                              ; preds = %268
  br i1 %125, label %271, label %491, !dbg !2132

271:                                              ; preds = %270
  br i1 %136, label %573, label %535, !dbg !2134

272:                                              ; preds = %170, %266, %265
  %273 = phi i8 [ 116, %266 ], [ 114, %265 ], [ 110, %170 ], !dbg !2135
  call void @llvm.dbg.label(metadata !1910), !dbg !2136
  br i1 %134, label %274, label %670, !dbg !2137

274:                                              ; preds = %170, %272, %267, %264, %263
  %275 = phi i8 [ %273, %272 ], [ 118, %267 ], [ 102, %264 ], [ 98, %263 ], [ 97, %170 ], !dbg !2135
  call void @llvm.dbg.label(metadata !1912), !dbg !2139
  br i1 %125, label %535, label %491, !dbg !2140

276:                                              ; preds = %170, %170
  switch i64 %171, label %480 [
    i64 -1, label %277
    i64 1, label %280
  ], !dbg !2141

277:                                              ; preds = %276
  %278 = load i8, ptr %21, align 1, !dbg !2142, !tbaa !884
  %279 = icmp eq i8 %278, 0, !dbg !2144
  br i1 %279, label %280, label %480, !dbg !2145

280:                                              ; preds = %276, %277, %170, %170
  %281 = icmp eq i64 %145, 0, !dbg !2146
  br i1 %281, label %282, label %480, !dbg !2148

282:                                              ; preds = %280, %170
  call void @llvm.dbg.value(metadata i8 1, metadata !1884, metadata !DIExpression()), !dbg !2025
  br label %283, !dbg !2149

283:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %282
  %284 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %282 ], !dbg !2025
  call void @llvm.dbg.value(metadata i8 %284, metadata !1884, metadata !DIExpression()), !dbg !2025
  br i1 %134, label %480, label %670, !dbg !2150

285:                                              ; preds = %170
  call void @llvm.dbg.value(metadata i8 1, metadata !1870, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 1, metadata !1884, metadata !DIExpression()), !dbg !2025
  br i1 %133, label %286, label %480, !dbg !2152

286:                                              ; preds = %285
  br i1 %132, label %287, label %670, !dbg !2153

287:                                              ; preds = %286
  %288 = icmp eq i64 %146, 0, !dbg !2156
  %289 = icmp ne i64 %141, 0
  %290 = select i1 %288, i1 true, i1 %289, !dbg !2158
  %291 = select i1 %290, i64 %141, i64 %146, !dbg !2158
  %292 = select i1 %290, i64 %146, i64 0, !dbg !2158
  call void @llvm.dbg.value(metadata i64 %292, metadata !1855, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i64 %291, metadata !1865, metadata !DIExpression()), !dbg !1916
  %293 = icmp ult i64 %140, %292, !dbg !2159
  br i1 %293, label %294, label %296, !dbg !2162

294:                                              ; preds = %287
  %295 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2159
  store i8 39, ptr %295, align 1, !dbg !2159, !tbaa !884
  br label %296, !dbg !2159

296:                                              ; preds = %294, %287
  %297 = add i64 %140, 1, !dbg !2162
  call void @llvm.dbg.value(metadata i64 %297, metadata !1864, metadata !DIExpression()), !dbg !1916
  %298 = icmp ult i64 %297, %292, !dbg !2163
  br i1 %298, label %299, label %301, !dbg !2166

299:                                              ; preds = %296
  %300 = getelementptr inbounds i8, ptr %0, i64 %297, !dbg !2163
  store i8 92, ptr %300, align 1, !dbg !2163, !tbaa !884
  br label %301, !dbg !2163

301:                                              ; preds = %299, %296
  %302 = add i64 %140, 2, !dbg !2166
  call void @llvm.dbg.value(metadata i64 %302, metadata !1864, metadata !DIExpression()), !dbg !1916
  %303 = icmp ult i64 %302, %292, !dbg !2167
  br i1 %303, label %304, label %306, !dbg !2170

304:                                              ; preds = %301
  %305 = getelementptr inbounds i8, ptr %0, i64 %302, !dbg !2167
  store i8 39, ptr %305, align 1, !dbg !2167, !tbaa !884
  br label %306, !dbg !2167

306:                                              ; preds = %304, %301
  %307 = add i64 %140, 3, !dbg !2170
  call void @llvm.dbg.value(metadata i64 %307, metadata !1864, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 0, metadata !1872, metadata !DIExpression()), !dbg !1916
  br label %480, !dbg !2171

308:                                              ; preds = %170
  br i1 %17, label %309, label %319, !dbg !2172

309:                                              ; preds = %308
  call void @llvm.dbg.value(metadata i64 1, metadata !1886, metadata !DIExpression()), !dbg !2173
  %310 = tail call ptr @__ctype_b_loc() #39, !dbg !2174
  %311 = load ptr, ptr %310, align 8, !dbg !2174, !tbaa !876
  %312 = zext i8 %175 to i64
  %313 = getelementptr inbounds i16, ptr %311, i64 %312, !dbg !2174
  %314 = load i16, ptr %313, align 2, !dbg !2174, !tbaa !1009
  %315 = lshr i16 %314, 14, !dbg !2176
  %316 = trunc i16 %315 to i8, !dbg !2176
  %317 = and i8 %316, 1, !dbg !2176
  call void @llvm.dbg.value(metadata i8 %317, metadata !1889, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i64 %171, metadata !1857, metadata !DIExpression()), !dbg !1916
  %318 = icmp eq i8 %317, 0, !dbg !2177
  call void @llvm.dbg.value(metadata i1 %318, metadata !1884, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2025
  br label %368, !dbg !2178

319:                                              ; preds = %308
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #36, !dbg !2179
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1890, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata ptr %14, metadata !1947, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata ptr %14, metadata !1955, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata i32 0, metadata !1958, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata i64 8, metadata !1959, metadata !DIExpression()), !dbg !2183
  store i64 0, ptr %14, align 8, !dbg !2185
  call void @llvm.dbg.value(metadata i64 0, metadata !1886, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i8 1, metadata !1889, metadata !DIExpression()), !dbg !2173
  %320 = icmp eq i64 %171, -1, !dbg !2186
  br i1 %320, label %321, label %323, !dbg !2188

321:                                              ; preds = %319
  %322 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !2189
  call void @llvm.dbg.value(metadata i64 %322, metadata !1857, metadata !DIExpression()), !dbg !1916
  br label %323, !dbg !2190

323:                                              ; preds = %319, %321
  %324 = phi i64 [ %322, %321 ], [ %171, %319 ], !dbg !2025
  call void @llvm.dbg.value(metadata i64 %324, metadata !1857, metadata !DIExpression()), !dbg !1916
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #36, !dbg !2191
  %325 = sub i64 %324, %145, !dbg !2192
  call void @llvm.dbg.value(metadata ptr %15, metadata !1893, metadata !DIExpression(DW_OP_deref)), !dbg !2193
  %326 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %325, ptr noundef nonnull %14) #36, !dbg !2194
  call void @llvm.dbg.value(metadata i64 %326, metadata !1897, metadata !DIExpression()), !dbg !2193
  switch i64 %326, label %341 [
    i64 0, label %360
    i64 -1, label %330
    i64 -2, label %327
  ], !dbg !2195

327:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i64 0, metadata !1886, metadata !DIExpression()), !dbg !2173
  %328 = icmp ugt i64 %324, %145, !dbg !2196
  br i1 %328, label %331, label %329, !dbg !2198

329:                                              ; preds = %327
  call void @llvm.dbg.value(metadata i8 0, metadata !1889, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i64 0, metadata !1886, metadata !DIExpression()), !dbg !2173
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !2199
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !2200
  call void @llvm.dbg.value(metadata i64 %324, metadata !1857, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i1 true, metadata !1884, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2025
  br label %368, !dbg !2178

330:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i8 0, metadata !1889, metadata !DIExpression()), !dbg !2173
  br label %360, !dbg !2201

331:                                              ; preds = %327, %337
  %332 = phi i64 [ %339, %337 ], [ %145, %327 ]
  %333 = phi i64 [ %338, %337 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !1886, metadata !DIExpression()), !dbg !2173
  %334 = getelementptr inbounds i8, ptr %2, i64 %332, !dbg !2203
  %335 = load i8, ptr %334, align 1, !dbg !2203, !tbaa !884
  %336 = icmp eq i8 %335, 0, !dbg !2198
  br i1 %336, label %363, label %337, !dbg !2204

337:                                              ; preds = %331
  %338 = add i64 %333, 1, !dbg !2205
  call void @llvm.dbg.value(metadata i64 %338, metadata !1886, metadata !DIExpression()), !dbg !2173
  %339 = add i64 %338, %145, !dbg !2206
  %340 = icmp eq i64 %338, %325, !dbg !2196
  br i1 %340, label %363, label %331, !dbg !2198, !llvm.loop !2207

341:                                              ; preds = %323
  %342 = icmp ugt i64 %326, 1
  %343 = and i1 %135, %342, !dbg !2208
  %344 = and i1 %343, %133, !dbg !2208
  call void @llvm.dbg.value(metadata i64 1, metadata !1898, metadata !DIExpression()), !dbg !2209
  br i1 %344, label %345, label %354, !dbg !2208

345:                                              ; preds = %341, %351
  %346 = phi i64 [ %352, %351 ], [ 1, %341 ]
  call void @llvm.dbg.value(metadata i64 %346, metadata !1898, metadata !DIExpression()), !dbg !2209
  %347 = add i64 %346, %145, !dbg !2210
  %348 = getelementptr inbounds i8, ptr %2, i64 %347, !dbg !2212
  %349 = load i8, ptr %348, align 1, !dbg !2212, !tbaa !884
  %350 = sext i8 %349 to i32, !dbg !2212
  switch i32 %350, label %351 [
    i32 91, label %359
    i32 92, label %359
    i32 94, label %359
    i32 96, label %359
    i32 124, label %359
  ], !dbg !2213

351:                                              ; preds = %345
  %352 = add nuw i64 %346, 1, !dbg !2214
  call void @llvm.dbg.value(metadata i64 %352, metadata !1898, metadata !DIExpression()), !dbg !2209
  %353 = icmp eq i64 %352, %326, !dbg !2215
  br i1 %353, label %354, label %345, !dbg !2216, !llvm.loop !2217

354:                                              ; preds = %351, %341
  %355 = load i32, ptr %15, align 4, !dbg !2219, !tbaa !976
  call void @llvm.dbg.value(metadata i32 %355, metadata !1893, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i32 %355, metadata !2221, metadata !DIExpression()), !dbg !2229
  %356 = call i32 @iswprint(i32 noundef %355) #36, !dbg !2231
  %357 = icmp ne i32 %356, 0, !dbg !2232
  %358 = zext i1 %357 to i8, !dbg !2233
  call void @llvm.dbg.value(metadata i8 %358, metadata !1889, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i64 %326, metadata !1886, metadata !DIExpression()), !dbg !2173
  br label %363, !dbg !2234

359:                                              ; preds = %345, %345, %345, %345, %345
  call void @llvm.dbg.value(metadata i8 1, metadata !1889, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i64 0, metadata !1886, metadata !DIExpression()), !dbg !2173
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !2199
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !2200
  br label %670

360:                                              ; preds = %323, %330
  %361 = phi i1 [ false, %323 ], [ true, %330 ]
  %362 = phi i8 [ 1, %323 ], [ 0, %330 ]
  call void @llvm.dbg.value(metadata i8 %362, metadata !1889, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i64 0, metadata !1886, metadata !DIExpression()), !dbg !2173
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !2199
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !2200
  call void @llvm.dbg.value(metadata i64 %324, metadata !1857, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i1 %361, metadata !1884, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2025
  br label %368, !dbg !2178

363:                                              ; preds = %331, %337, %354
  %364 = phi i64 [ %326, %354 ], [ %333, %331 ], [ %325, %337 ]
  %365 = phi i8 [ %358, %354 ], [ 0, %337 ], [ 0, %331 ]
  call void @llvm.dbg.value(metadata i8 %365, metadata !1889, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i64 %364, metadata !1886, metadata !DIExpression()), !dbg !2173
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !2199
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !2200
  call void @llvm.dbg.value(metadata i64 %324, metadata !1857, metadata !DIExpression()), !dbg !1916
  %366 = icmp eq i8 %365, 0, !dbg !2177
  call void @llvm.dbg.value(metadata i1 %366, metadata !1884, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2025
  %367 = icmp ugt i64 %364, 1, !dbg !2235
  br i1 %367, label %374, label %368, !dbg !2178

368:                                              ; preds = %329, %360, %309, %363
  %369 = phi i1 [ %318, %309 ], [ %366, %363 ], [ %361, %360 ], [ true, %329 ]
  %370 = phi i8 [ %317, %309 ], [ %365, %363 ], [ %362, %360 ], [ 0, %329 ]
  %371 = phi i64 [ 1, %309 ], [ %364, %363 ], [ 0, %360 ], [ 0, %329 ]
  %372 = phi i64 [ %171, %309 ], [ %324, %363 ], [ %324, %360 ], [ %324, %329 ]
  %373 = select i1 %125, i1 %369, i1 false, !dbg !2236
  br i1 %373, label %374, label %480, !dbg !2236

374:                                              ; preds = %368, %363
  %375 = phi i1 [ true, %368 ], [ %366, %363 ]
  %376 = phi i8 [ %370, %368 ], [ %365, %363 ]
  %377 = phi i64 [ %371, %368 ], [ %364, %363 ]
  %378 = phi i64 [ %372, %368 ], [ %324, %363 ]
  %379 = add i64 %377, %145, !dbg !2237
  call void @llvm.dbg.value(metadata i64 %379, metadata !1906, metadata !DIExpression()), !dbg !2238
  %380 = select i1 %125, i1 %375, i1 false
  br label %381, !dbg !2239

381:                                              ; preds = %474, %374
  %382 = phi i64 [ %140, %374 ], [ %475, %474 ], !dbg !1916
  %383 = phi i8 [ %144, %374 ], [ %470, %474 ], !dbg !2017
  %384 = phi i64 [ %145, %374 ], [ %449, %474 ], !dbg !2015
  %385 = phi i8 [ %173, %374 ], [ %446, %474 ], !dbg !2025
  %386 = phi i8 [ 0, %374 ], [ %447, %474 ], !dbg !2240
  %387 = phi i8 [ %175, %374 ], [ %477, %474 ], !dbg !2025
  call void @llvm.dbg.value(metadata i8 %387, metadata !1885, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 %386, metadata !1883, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 %385, metadata !1880, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %384, metadata !1878, metadata !DIExpression()), !dbg !2015
  call void @llvm.dbg.value(metadata i8 %383, metadata !1872, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i64 %382, metadata !1864, metadata !DIExpression()), !dbg !1916
  br i1 %380, label %388, label %434, !dbg !2241

388:                                              ; preds = %381
  br i1 %132, label %389, label %679, !dbg !2246

389:                                              ; preds = %388
  call void @llvm.dbg.value(metadata i8 1, metadata !1883, metadata !DIExpression()), !dbg !2025
  %390 = and i8 %383, 1, !dbg !2249
  %391 = icmp eq i8 %390, 0, !dbg !2249
  %392 = select i1 %133, i1 %391, i1 false, !dbg !2249
  br i1 %392, label %393, label %409, !dbg !2249

393:                                              ; preds = %389
  %394 = icmp ult i64 %382, %146, !dbg !2251
  br i1 %394, label %395, label %397, !dbg !2255

395:                                              ; preds = %393
  %396 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !2251
  store i8 39, ptr %396, align 1, !dbg !2251, !tbaa !884
  br label %397, !dbg !2251

397:                                              ; preds = %395, %393
  %398 = add i64 %382, 1, !dbg !2255
  call void @llvm.dbg.value(metadata i64 %398, metadata !1864, metadata !DIExpression()), !dbg !1916
  %399 = icmp ult i64 %398, %146, !dbg !2256
  br i1 %399, label %400, label %402, !dbg !2259

400:                                              ; preds = %397
  %401 = getelementptr inbounds i8, ptr %0, i64 %398, !dbg !2256
  store i8 36, ptr %401, align 1, !dbg !2256, !tbaa !884
  br label %402, !dbg !2256

402:                                              ; preds = %400, %397
  %403 = add i64 %382, 2, !dbg !2259
  call void @llvm.dbg.value(metadata i64 %403, metadata !1864, metadata !DIExpression()), !dbg !1916
  %404 = icmp ult i64 %403, %146, !dbg !2260
  br i1 %404, label %405, label %407, !dbg !2263

405:                                              ; preds = %402
  %406 = getelementptr inbounds i8, ptr %0, i64 %403, !dbg !2260
  store i8 39, ptr %406, align 1, !dbg !2260, !tbaa !884
  br label %407, !dbg !2260

407:                                              ; preds = %405, %402
  %408 = add i64 %382, 3, !dbg !2263
  call void @llvm.dbg.value(metadata i64 %408, metadata !1864, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 1, metadata !1872, metadata !DIExpression()), !dbg !1916
  br label %409, !dbg !2264

409:                                              ; preds = %389, %407
  %410 = phi i64 [ %408, %407 ], [ %382, %389 ], !dbg !1916
  %411 = phi i8 [ 1, %407 ], [ %383, %389 ], !dbg !1916
  call void @llvm.dbg.value(metadata i8 %411, metadata !1872, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i64 %410, metadata !1864, metadata !DIExpression()), !dbg !1916
  %412 = icmp ult i64 %410, %146, !dbg !2265
  br i1 %412, label %413, label %415, !dbg !2268

413:                                              ; preds = %409
  %414 = getelementptr inbounds i8, ptr %0, i64 %410, !dbg !2265
  store i8 92, ptr %414, align 1, !dbg !2265, !tbaa !884
  br label %415, !dbg !2265

415:                                              ; preds = %413, %409
  %416 = add i64 %410, 1, !dbg !2268
  call void @llvm.dbg.value(metadata i64 %416, metadata !1864, metadata !DIExpression()), !dbg !1916
  %417 = icmp ult i64 %416, %146, !dbg !2269
  br i1 %417, label %418, label %422, !dbg !2272

418:                                              ; preds = %415
  %419 = lshr i8 %387, 6
  %420 = or i8 %419, 48, !dbg !2269
  %421 = getelementptr inbounds i8, ptr %0, i64 %416, !dbg !2269
  store i8 %420, ptr %421, align 1, !dbg !2269, !tbaa !884
  br label %422, !dbg !2269

422:                                              ; preds = %418, %415
  %423 = add i64 %410, 2, !dbg !2272
  call void @llvm.dbg.value(metadata i64 %423, metadata !1864, metadata !DIExpression()), !dbg !1916
  %424 = icmp ult i64 %423, %146, !dbg !2273
  br i1 %424, label %425, label %430, !dbg !2276

425:                                              ; preds = %422
  %426 = lshr i8 %387, 3
  %427 = and i8 %426, 7, !dbg !2273
  %428 = or i8 %427, 48, !dbg !2273
  %429 = getelementptr inbounds i8, ptr %0, i64 %423, !dbg !2273
  store i8 %428, ptr %429, align 1, !dbg !2273, !tbaa !884
  br label %430, !dbg !2273

430:                                              ; preds = %425, %422
  %431 = add i64 %410, 3, !dbg !2276
  call void @llvm.dbg.value(metadata i64 %431, metadata !1864, metadata !DIExpression()), !dbg !1916
  %432 = and i8 %387, 7, !dbg !2277
  %433 = or i8 %432, 48, !dbg !2278
  call void @llvm.dbg.value(metadata i8 %433, metadata !1885, metadata !DIExpression()), !dbg !2025
  br label %443, !dbg !2279

434:                                              ; preds = %381
  %435 = and i8 %385, 1, !dbg !2280
  %436 = icmp eq i8 %435, 0, !dbg !2280
  br i1 %436, label %443, label %437, !dbg !2282

437:                                              ; preds = %434
  %438 = icmp ult i64 %382, %146, !dbg !2283
  br i1 %438, label %439, label %441, !dbg !2287

439:                                              ; preds = %437
  %440 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !2283
  store i8 92, ptr %440, align 1, !dbg !2283, !tbaa !884
  br label %441, !dbg !2283

441:                                              ; preds = %439, %437
  %442 = add i64 %382, 1, !dbg !2287
  call void @llvm.dbg.value(metadata i64 %442, metadata !1864, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 0, metadata !1880, metadata !DIExpression()), !dbg !2025
  br label %443, !dbg !2288

443:                                              ; preds = %434, %441, %430
  %444 = phi i64 [ %442, %441 ], [ %382, %434 ], [ %431, %430 ], !dbg !1916
  %445 = phi i8 [ %383, %441 ], [ %383, %434 ], [ %411, %430 ], !dbg !2017
  %446 = phi i8 [ 0, %441 ], [ %385, %434 ], [ %385, %430 ], !dbg !2025
  %447 = phi i8 [ %386, %441 ], [ %386, %434 ], [ 1, %430 ], !dbg !2025
  %448 = phi i8 [ %387, %441 ], [ %387, %434 ], [ %433, %430 ], !dbg !2025
  call void @llvm.dbg.value(metadata i8 %448, metadata !1885, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 %447, metadata !1883, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 %446, metadata !1880, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 %445, metadata !1872, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i64 %444, metadata !1864, metadata !DIExpression()), !dbg !1916
  %449 = add i64 %384, 1, !dbg !2289
  %450 = icmp ugt i64 %379, %449, !dbg !2291
  br i1 %450, label %451, label %478, !dbg !2292

451:                                              ; preds = %443
  %452 = and i8 %445, 1, !dbg !2293
  %453 = icmp ne i8 %452, 0, !dbg !2293
  %454 = and i8 %447, 1, !dbg !2293
  %455 = icmp eq i8 %454, 0, !dbg !2293
  %456 = select i1 %453, i1 %455, i1 false, !dbg !2293
  br i1 %456, label %457, label %468, !dbg !2293

457:                                              ; preds = %451
  %458 = icmp ult i64 %444, %146, !dbg !2296
  br i1 %458, label %459, label %461, !dbg !2300

459:                                              ; preds = %457
  %460 = getelementptr inbounds i8, ptr %0, i64 %444, !dbg !2296
  store i8 39, ptr %460, align 1, !dbg !2296, !tbaa !884
  br label %461, !dbg !2296

461:                                              ; preds = %459, %457
  %462 = add i64 %444, 1, !dbg !2300
  call void @llvm.dbg.value(metadata i64 %462, metadata !1864, metadata !DIExpression()), !dbg !1916
  %463 = icmp ult i64 %462, %146, !dbg !2301
  br i1 %463, label %464, label %466, !dbg !2304

464:                                              ; preds = %461
  %465 = getelementptr inbounds i8, ptr %0, i64 %462, !dbg !2301
  store i8 39, ptr %465, align 1, !dbg !2301, !tbaa !884
  br label %466, !dbg !2301

466:                                              ; preds = %464, %461
  %467 = add i64 %444, 2, !dbg !2304
  call void @llvm.dbg.value(metadata i64 %467, metadata !1864, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 0, metadata !1872, metadata !DIExpression()), !dbg !1916
  br label %468, !dbg !2305

468:                                              ; preds = %451, %466
  %469 = phi i64 [ %467, %466 ], [ %444, %451 ], !dbg !2306
  %470 = phi i8 [ 0, %466 ], [ %445, %451 ], !dbg !1916
  call void @llvm.dbg.value(metadata i8 %470, metadata !1872, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i64 %469, metadata !1864, metadata !DIExpression()), !dbg !1916
  %471 = icmp ult i64 %469, %146, !dbg !2307
  br i1 %471, label %472, label %474, !dbg !2310

472:                                              ; preds = %468
  %473 = getelementptr inbounds i8, ptr %0, i64 %469, !dbg !2307
  store i8 %448, ptr %473, align 1, !dbg !2307, !tbaa !884
  br label %474, !dbg !2307

474:                                              ; preds = %472, %468
  %475 = add i64 %469, 1, !dbg !2310
  call void @llvm.dbg.value(metadata i64 %475, metadata !1864, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i64 %449, metadata !1878, metadata !DIExpression()), !dbg !2015
  %476 = getelementptr inbounds i8, ptr %2, i64 %449, !dbg !2311
  %477 = load i8, ptr %476, align 1, !dbg !2311, !tbaa !884
  call void @llvm.dbg.value(metadata i8 %477, metadata !1885, metadata !DIExpression()), !dbg !2025
  br label %381, !dbg !2312, !llvm.loop !2313

478:                                              ; preds = %443
  %479 = and i8 %376, 1, !dbg !2025
  call void @llvm.dbg.value(metadata i8 %448, metadata !1885, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 %479, metadata !1884, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 %447, metadata !1883, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 %446, metadata !1880, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %384, metadata !1878, metadata !DIExpression()), !dbg !2015
  call void @llvm.dbg.value(metadata i8 %445, metadata !1872, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i64 %444, metadata !1864, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i64 %378, metadata !1857, metadata !DIExpression()), !dbg !1916
  br label %573

480:                                              ; preds = %368, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %276, %206, %209, %223, %285, %306, %283, %280, %277, %226, %227, %261, %237, %232, %229, %228
  %481 = phi i64 [ %171, %306 ], [ %171, %285 ], [ %171, %283 ], [ %171, %280 ], [ -1, %277 ], [ %171, %226 ], [ %171, %237 ], [ %171, %261 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %276 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %372, %368 ], !dbg !2316
  %482 = phi i64 [ %307, %306 ], [ %140, %285 ], [ %140, %283 ], [ %140, %280 ], [ %140, %277 ], [ %140, %226 ], [ %140, %237 ], [ %262, %261 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %276 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %368 ], !dbg !1916
  %483 = phi i64 [ %291, %306 ], [ %141, %285 ], [ %141, %283 ], [ %141, %280 ], [ %141, %277 ], [ %141, %226 ], [ %141, %237 ], [ %141, %261 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %276 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %368 ], !dbg !1921
  %484 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %142, %283 ], [ %142, %280 ], [ %142, %277 ], [ %142, %226 ], [ %142, %237 ], [ %142, %261 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %276 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %368 ], !dbg !1916
  %485 = phi i8 [ 0, %306 ], [ %144, %285 ], [ %144, %283 ], [ %144, %280 ], [ %144, %277 ], [ %144, %226 ], [ %144, %237 ], [ %144, %261 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %276 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %368 ], !dbg !1916
  %486 = phi i64 [ %145, %306 ], [ %145, %285 ], [ %145, %283 ], [ %145, %280 ], [ %145, %277 ], [ %145, %226 ], [ %145, %237 ], [ %230, %261 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %276 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %368 ], !dbg !2015
  %487 = phi i8 [ 0, %306 ], [ 0, %285 ], [ 0, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %276 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %368 ], !dbg !2025
  %488 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %284, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %276 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %370, %368 ], !dbg !2025
  %489 = phi i8 [ 39, %306 ], [ 39, %285 ], [ %175, %283 ], [ %175, %280 ], [ %175, %277 ], [ 63, %226 ], [ 63, %237 ], [ %239, %261 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %276 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %368 ], !dbg !2025
  %490 = phi i64 [ %292, %306 ], [ %146, %285 ], [ %146, %283 ], [ %146, %280 ], [ %146, %277 ], [ %146, %226 ], [ %146, %237 ], [ %146, %261 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %276 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %368 ]
  call void @llvm.dbg.value(metadata i64 %490, metadata !1855, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 %489, metadata !1885, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 %488, metadata !1884, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 %487, metadata !1883, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 %173, metadata !1880, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %486, metadata !1878, metadata !DIExpression()), !dbg !2015
  call void @llvm.dbg.value(metadata i8 %485, metadata !1872, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 %484, metadata !1870, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i64 %483, metadata !1865, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i64 %482, metadata !1864, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i64 %481, metadata !1857, metadata !DIExpression()), !dbg !1916
  br i1 %127, label %502, label %491, !dbg !2317

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
  br i1 %137, label %503, label %524, !dbg !2319

502:                                              ; preds = %480
  br i1 %27, label %524, label %503, !dbg !2320

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
  %514 = lshr i8 %505, 5, !dbg !2321
  %515 = zext i8 %514 to i64, !dbg !2321
  %516 = getelementptr inbounds i32, ptr %6, i64 %515, !dbg !2322
  %517 = load i32, ptr %516, align 4, !dbg !2322, !tbaa !976
  %518 = and i8 %505, 31, !dbg !2323
  %519 = zext i8 %518 to i32, !dbg !2323
  %520 = shl nuw i32 1, %519, !dbg !2324
  %521 = and i32 %517, %520, !dbg !2324
  %522 = icmp eq i32 %521, 0, !dbg !2324
  %523 = and i1 %172, %522, !dbg !2325
  br i1 %523, label %573, label %535, !dbg !2325

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
  br i1 %172, label %573, label %535, !dbg !2326

535:                                              ; preds = %271, %274, %524, %503
  %536 = phi i64 [ %513, %503 ], [ %534, %524 ], [ %171, %274 ], [ %171, %271 ], !dbg !2316
  %537 = phi i64 [ %512, %503 ], [ %533, %524 ], [ %140, %274 ], [ %140, %271 ], !dbg !1916
  %538 = phi i64 [ %511, %503 ], [ %532, %524 ], [ %141, %274 ], [ %141, %271 ], !dbg !1921
  %539 = phi i8 [ %510, %503 ], [ %531, %524 ], [ %142, %274 ], [ %142, %271 ], !dbg !1925
  %540 = phi i8 [ %509, %503 ], [ %530, %524 ], [ %144, %274 ], [ %144, %271 ], !dbg !2017
  %541 = phi i64 [ %508, %503 ], [ %529, %524 ], [ %145, %274 ], [ %145, %271 ], !dbg !2327
  %542 = phi i8 [ %506, %503 ], [ %527, %524 ], [ 0, %274 ], [ 0, %271 ], !dbg !2025
  %543 = phi i8 [ %505, %503 ], [ %526, %524 ], [ %275, %274 ], [ 92, %271 ], !dbg !2025
  %544 = phi i64 [ %504, %503 ], [ %525, %524 ], [ %146, %274 ], [ %146, %271 ]
  call void @llvm.dbg.value(metadata i64 %544, metadata !1855, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 %543, metadata !1885, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 %542, metadata !1884, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %541, metadata !1878, metadata !DIExpression()), !dbg !2015
  call void @llvm.dbg.value(metadata i8 %540, metadata !1872, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 %539, metadata !1870, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i64 %538, metadata !1865, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i64 %537, metadata !1864, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i64 %536, metadata !1857, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.label(metadata !1913), !dbg !2328
  br i1 %132, label %545, label %674, !dbg !2329

545:                                              ; preds = %535
  call void @llvm.dbg.value(metadata i8 1, metadata !1883, metadata !DIExpression()), !dbg !2025
  %546 = and i8 %540, 1, !dbg !2331
  %547 = icmp eq i8 %546, 0, !dbg !2331
  %548 = select i1 %133, i1 %547, i1 false, !dbg !2331
  br i1 %548, label %549, label %565, !dbg !2331

549:                                              ; preds = %545
  %550 = icmp ult i64 %537, %544, !dbg !2333
  br i1 %550, label %551, label %553, !dbg !2337

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, ptr %0, i64 %537, !dbg !2333
  store i8 39, ptr %552, align 1, !dbg !2333, !tbaa !884
  br label %553, !dbg !2333

553:                                              ; preds = %551, %549
  %554 = add i64 %537, 1, !dbg !2337
  call void @llvm.dbg.value(metadata i64 %554, metadata !1864, metadata !DIExpression()), !dbg !1916
  %555 = icmp ult i64 %554, %544, !dbg !2338
  br i1 %555, label %556, label %558, !dbg !2341

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, ptr %0, i64 %554, !dbg !2338
  store i8 36, ptr %557, align 1, !dbg !2338, !tbaa !884
  br label %558, !dbg !2338

558:                                              ; preds = %556, %553
  %559 = add i64 %537, 2, !dbg !2341
  call void @llvm.dbg.value(metadata i64 %559, metadata !1864, metadata !DIExpression()), !dbg !1916
  %560 = icmp ult i64 %559, %544, !dbg !2342
  br i1 %560, label %561, label %563, !dbg !2345

561:                                              ; preds = %558
  %562 = getelementptr inbounds i8, ptr %0, i64 %559, !dbg !2342
  store i8 39, ptr %562, align 1, !dbg !2342, !tbaa !884
  br label %563, !dbg !2342

563:                                              ; preds = %561, %558
  %564 = add i64 %537, 3, !dbg !2345
  call void @llvm.dbg.value(metadata i64 %564, metadata !1864, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 1, metadata !1872, metadata !DIExpression()), !dbg !1916
  br label %565, !dbg !2346

565:                                              ; preds = %545, %563
  %566 = phi i64 [ %564, %563 ], [ %537, %545 ], !dbg !2025
  %567 = phi i8 [ 1, %563 ], [ %540, %545 ], !dbg !1916
  call void @llvm.dbg.value(metadata i8 %567, metadata !1872, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i64 %566, metadata !1864, metadata !DIExpression()), !dbg !1916
  %568 = icmp ult i64 %566, %544, !dbg !2347
  br i1 %568, label %569, label %571, !dbg !2350

569:                                              ; preds = %565
  %570 = getelementptr inbounds i8, ptr %0, i64 %566, !dbg !2347
  store i8 92, ptr %570, align 1, !dbg !2347, !tbaa !884
  br label %571, !dbg !2347

571:                                              ; preds = %565, %569
  %572 = add i64 %566, 1, !dbg !2350
  call void @llvm.dbg.value(metadata i64 %544, metadata !1855, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 %543, metadata !1885, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 %542, metadata !1884, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 1, metadata !1883, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %541, metadata !1878, metadata !DIExpression()), !dbg !2015
  call void @llvm.dbg.value(metadata i8 %567, metadata !1872, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 %539, metadata !1870, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i64 %538, metadata !1865, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i64 %572, metadata !1864, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i64 %536, metadata !1857, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.label(metadata !1914), !dbg !2351
  br label %600, !dbg !2352

573:                                              ; preds = %478, %503, %269, %271, %524
  %574 = phi i64 [ %378, %478 ], [ %534, %524 ], [ %171, %269 ], [ %171, %271 ], [ %513, %503 ], !dbg !2316
  %575 = phi i64 [ %444, %478 ], [ %533, %524 ], [ %140, %269 ], [ %140, %271 ], [ %512, %503 ], !dbg !1916
  %576 = phi i64 [ %141, %478 ], [ %532, %524 ], [ %141, %269 ], [ %141, %271 ], [ %511, %503 ], !dbg !1921
  %577 = phi i8 [ %142, %478 ], [ %531, %524 ], [ %142, %269 ], [ %142, %271 ], [ %510, %503 ], !dbg !1925
  %578 = phi i8 [ %445, %478 ], [ %530, %524 ], [ %144, %269 ], [ %144, %271 ], [ %509, %503 ], !dbg !2017
  %579 = phi i64 [ %384, %478 ], [ %529, %524 ], [ %145, %269 ], [ %145, %271 ], [ %508, %503 ], !dbg !2327
  %580 = phi i8 [ %447, %478 ], [ %528, %524 ], [ 0, %269 ], [ 0, %271 ], [ %507, %503 ], !dbg !2025
  %581 = phi i8 [ %479, %478 ], [ %527, %524 ], [ 0, %269 ], [ 0, %271 ], [ %506, %503 ], !dbg !2025
  %582 = phi i8 [ %448, %478 ], [ %526, %524 ], [ 92, %269 ], [ 92, %271 ], [ %505, %503 ], !dbg !2355
  %583 = phi i64 [ %146, %478 ], [ %525, %524 ], [ %146, %269 ], [ %146, %271 ], [ %504, %503 ]
  call void @llvm.dbg.value(metadata i64 %583, metadata !1855, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 %582, metadata !1885, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 %581, metadata !1884, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 %580, metadata !1883, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %579, metadata !1878, metadata !DIExpression()), !dbg !2015
  call void @llvm.dbg.value(metadata i8 %578, metadata !1872, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 %577, metadata !1870, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i64 %576, metadata !1865, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i64 %575, metadata !1864, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i64 %574, metadata !1857, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.label(metadata !1914), !dbg !2351
  %584 = and i8 %578, 1, !dbg !2352
  %585 = icmp ne i8 %584, 0, !dbg !2352
  %586 = and i8 %580, 1, !dbg !2352
  %587 = icmp eq i8 %586, 0, !dbg !2352
  %588 = select i1 %585, i1 %587, i1 false, !dbg !2352
  br i1 %588, label %589, label %600, !dbg !2352

589:                                              ; preds = %573
  %590 = icmp ult i64 %575, %583, !dbg !2356
  br i1 %590, label %591, label %593, !dbg !2360

591:                                              ; preds = %589
  %592 = getelementptr inbounds i8, ptr %0, i64 %575, !dbg !2356
  store i8 39, ptr %592, align 1, !dbg !2356, !tbaa !884
  br label %593, !dbg !2356

593:                                              ; preds = %591, %589
  %594 = add i64 %575, 1, !dbg !2360
  call void @llvm.dbg.value(metadata i64 %594, metadata !1864, metadata !DIExpression()), !dbg !1916
  %595 = icmp ult i64 %594, %583, !dbg !2361
  br i1 %595, label %596, label %598, !dbg !2364

596:                                              ; preds = %593
  %597 = getelementptr inbounds i8, ptr %0, i64 %594, !dbg !2361
  store i8 39, ptr %597, align 1, !dbg !2361, !tbaa !884
  br label %598, !dbg !2361

598:                                              ; preds = %596, %593
  %599 = add i64 %575, 2, !dbg !2364
  call void @llvm.dbg.value(metadata i64 %599, metadata !1864, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 0, metadata !1872, metadata !DIExpression()), !dbg !1916
  br label %600, !dbg !2365

600:                                              ; preds = %571, %573, %598
  %601 = phi i64 [ %583, %598 ], [ %583, %573 ], [ %544, %571 ]
  %602 = phi i8 [ %582, %598 ], [ %582, %573 ], [ %543, %571 ]
  %603 = phi i8 [ %581, %598 ], [ %581, %573 ], [ %542, %571 ]
  %604 = phi i64 [ %579, %598 ], [ %579, %573 ], [ %541, %571 ]
  %605 = phi i8 [ %577, %598 ], [ %577, %573 ], [ %539, %571 ]
  %606 = phi i64 [ %576, %598 ], [ %576, %573 ], [ %538, %571 ]
  %607 = phi i64 [ %574, %598 ], [ %574, %573 ], [ %536, %571 ]
  %608 = phi i64 [ %599, %598 ], [ %575, %573 ], [ %572, %571 ], !dbg !2025
  %609 = phi i8 [ 0, %598 ], [ %578, %573 ], [ %567, %571 ], !dbg !1916
  call void @llvm.dbg.value(metadata i8 %609, metadata !1872, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i64 %608, metadata !1864, metadata !DIExpression()), !dbg !1916
  %610 = icmp ult i64 %608, %601, !dbg !2366
  br i1 %610, label %611, label %613, !dbg !2369

611:                                              ; preds = %600
  %612 = getelementptr inbounds i8, ptr %0, i64 %608, !dbg !2366
  store i8 %602, ptr %612, align 1, !dbg !2366, !tbaa !884
  br label %613, !dbg !2366

613:                                              ; preds = %611, %600
  %614 = add i64 %608, 1, !dbg !2369
  call void @llvm.dbg.value(metadata i64 %614, metadata !1864, metadata !DIExpression()), !dbg !1916
  %615 = icmp eq i8 %603, 0, !dbg !2370
  %616 = select i1 %615, i8 0, i8 %143, !dbg !2372
  call void @llvm.dbg.value(metadata i8 %616, metadata !1871, metadata !DIExpression()), !dbg !1916
  br label %617, !dbg !2373

617:                                              ; preds = %225, %613
  %618 = phi i64 [ %607, %613 ], [ %171, %225 ], !dbg !2316
  %619 = phi i64 [ %614, %613 ], [ %140, %225 ], !dbg !1916
  %620 = phi i64 [ %606, %613 ], [ %141, %225 ], !dbg !1921
  %621 = phi i8 [ %605, %613 ], [ %142, %225 ], !dbg !1925
  %622 = phi i8 [ %616, %613 ], [ %143, %225 ], !dbg !1926
  %623 = phi i8 [ %609, %613 ], [ %144, %225 ], !dbg !2017
  %624 = phi i64 [ %604, %613 ], [ %145, %225 ], !dbg !2327
  %625 = phi i64 [ %601, %613 ], [ %146, %225 ]
  call void @llvm.dbg.value(metadata i64 %625, metadata !1855, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i64 %624, metadata !1878, metadata !DIExpression()), !dbg !2015
  call void @llvm.dbg.value(metadata i8 %623, metadata !1872, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 %622, metadata !1871, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 %621, metadata !1870, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i64 %620, metadata !1865, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i64 %619, metadata !1864, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i64 %618, metadata !1857, metadata !DIExpression()), !dbg !1916
  %626 = add i64 %624, 1, !dbg !2374
  call void @llvm.dbg.value(metadata i64 %626, metadata !1878, metadata !DIExpression()), !dbg !2015
  br label %138, !dbg !2375, !llvm.loop !2376

627:                                              ; preds = %152, %148
  call void @llvm.dbg.value(metadata i64 %146, metadata !1855, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 %143, metadata !1871, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 %142, metadata !1870, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i64 %141, metadata !1865, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i64 %140, metadata !1864, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i64 %139, metadata !1857, metadata !DIExpression()), !dbg !1916
  %628 = icmp eq i64 %140, 0, !dbg !2378
  %629 = and i1 %133, %628, !dbg !2380
  %630 = xor i1 %629, true, !dbg !2380
  %631 = select i1 %630, i1 true, i1 %132, !dbg !2380
  br i1 %631, label %632, label %670, !dbg !2380

632:                                              ; preds = %627
  %633 = select i1 %133, i1 %132, i1 false, !dbg !2381
  %634 = and i8 %142, 1
  %635 = icmp ne i8 %634, 0
  %636 = select i1 %633, i1 %635, i1 false, !dbg !2381
  br i1 %636, label %637, label %646, !dbg !2381

637:                                              ; preds = %632
  %638 = and i8 %143, 1, !dbg !2383
  %639 = icmp eq i8 %638, 0, !dbg !2383
  br i1 %639, label %642, label %640, !dbg !2386

640:                                              ; preds = %637
  %641 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %117, ptr noundef %118), !dbg !2387
  br label %694, !dbg !2388

642:                                              ; preds = %637
  %643 = icmp eq i64 %146, 0, !dbg !2389
  %644 = icmp ne i64 %141, 0
  %645 = select i1 %643, i1 %644, i1 false, !dbg !2391
  br i1 %645, label %28, label %646, !dbg !2391

646:                                              ; preds = %642, %632
  %647 = phi i1 [ true, %642 ], [ %132, %632 ]
  %648 = icmp ne ptr %120, null, !dbg !2392
  %649 = select i1 %648, i1 %647, i1 false, !dbg !2394
  br i1 %649, label %650, label %665, !dbg !2394

650:                                              ; preds = %646
  call void @llvm.dbg.value(metadata ptr %120, metadata !1866, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i64 %140, metadata !1864, metadata !DIExpression()), !dbg !1916
  %651 = load i8, ptr %120, align 1, !dbg !2395, !tbaa !884
  %652 = icmp eq i8 %651, 0, !dbg !2398
  br i1 %652, label %665, label %653, !dbg !2398

653:                                              ; preds = %650, %660
  %654 = phi i8 [ %663, %660 ], [ %651, %650 ]
  %655 = phi ptr [ %662, %660 ], [ %120, %650 ]
  %656 = phi i64 [ %661, %660 ], [ %140, %650 ]
  call void @llvm.dbg.value(metadata ptr %655, metadata !1866, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i64 %656, metadata !1864, metadata !DIExpression()), !dbg !1916
  %657 = icmp ult i64 %656, %146, !dbg !2399
  br i1 %657, label %658, label %660, !dbg !2402

658:                                              ; preds = %653
  %659 = getelementptr inbounds i8, ptr %0, i64 %656, !dbg !2399
  store i8 %654, ptr %659, align 1, !dbg !2399, !tbaa !884
  br label %660, !dbg !2399

660:                                              ; preds = %658, %653
  %661 = add i64 %656, 1, !dbg !2402
  call void @llvm.dbg.value(metadata i64 %661, metadata !1864, metadata !DIExpression()), !dbg !1916
  %662 = getelementptr inbounds i8, ptr %655, i64 1, !dbg !2403
  call void @llvm.dbg.value(metadata ptr %662, metadata !1866, metadata !DIExpression()), !dbg !1916
  %663 = load i8, ptr %662, align 1, !dbg !2395, !tbaa !884
  %664 = icmp eq i8 %663, 0, !dbg !2398
  br i1 %664, label %665, label %653, !dbg !2398, !llvm.loop !2404

665:                                              ; preds = %660, %650, %646
  %666 = phi i64 [ %140, %646 ], [ %140, %650 ], [ %661, %660 ], !dbg !1998
  call void @llvm.dbg.value(metadata i64 %666, metadata !1864, metadata !DIExpression()), !dbg !1916
  %667 = icmp ult i64 %666, %146, !dbg !2406
  br i1 %667, label %668, label %694, !dbg !2408

668:                                              ; preds = %665
  %669 = getelementptr inbounds i8, ptr %0, i64 %666, !dbg !2409
  store i8 0, ptr %669, align 1, !dbg !2410, !tbaa !884
  br label %694, !dbg !2409

670:                                              ; preds = %627, %227, %269, %272, %283, %286, %359
  %671 = phi i64 [ %324, %359 ], [ %171, %286 ], [ %171, %283 ], [ %171, %272 ], [ %171, %269 ], [ %171, %227 ], [ %139, %627 ]
  call void @llvm.dbg.label(metadata !1915), !dbg !2411
  %672 = icmp eq i8 %124, 0, !dbg !2412
  %673 = select i1 %672, i32 2, i32 4, !dbg !2412
  br label %684, !dbg !2412

674:                                              ; preds = %177, %535
  %675 = phi i64 [ %146, %177 ], [ %544, %535 ]
  %676 = phi i64 [ %171, %177 ], [ %536, %535 ]
  %677 = icmp eq i8 %124, 0, !dbg !2412
  %678 = select i1 %677, i32 2, i32 4, !dbg !2412
  br label %679, !dbg !2414

679:                                              ; preds = %388, %674
  %680 = phi i32 [ %678, %674 ], [ 4, %388 ]
  %681 = phi i64 [ %675, %674 ], [ %146, %388 ]
  %682 = phi i64 [ %676, %674 ], [ %378, %388 ]
  call void @llvm.dbg.label(metadata !1915), !dbg !2411
  %683 = icmp eq i32 %116, 2, !dbg !2414
  br i1 %683, label %684, label %688, !dbg !2412

684:                                              ; preds = %670, %679
  %685 = phi i32 [ %673, %670 ], [ %680, %679 ]
  %686 = phi i64 [ %671, %670 ], [ %682, %679 ]
  %687 = phi i64 [ %146, %670 ], [ %681, %679 ]
  br label %688, !dbg !2412

688:                                              ; preds = %241, %163, %679, %684
  %689 = phi i64 [ %686, %684 ], [ %682, %679 ], [ %161, %163 ], [ %171, %241 ]
  %690 = phi i64 [ %687, %684 ], [ %681, %679 ], [ %146, %163 ], [ %146, %241 ]
  %691 = phi i32 [ %685, %684 ], [ %116, %679 ], [ %116, %163 ], [ 5, %241 ]
  call void @llvm.dbg.value(metadata i32 %691, metadata !1858, metadata !DIExpression()), !dbg !1916
  %692 = and i32 %5, -3, !dbg !2415
  %693 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %690, ptr noundef %2, i64 noundef %689, i32 noundef %691, i32 noundef %692, ptr noundef null, ptr noundef %117, ptr noundef %118), !dbg !2416
  br label %694, !dbg !2417

694:                                              ; preds = %665, %668, %688, %640
  %695 = phi i64 [ %693, %688 ], [ %641, %640 ], [ %666, %668 ], [ %666, %665 ]
  ret i64 %695, !dbg !2418
}

; Function Attrs: nounwind
declare !dbg !2419 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2422 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !2425 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #11 !dbg !2427 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2431, metadata !DIExpression()), !dbg !2434
  call void @llvm.dbg.value(metadata i64 %1, metadata !2432, metadata !DIExpression()), !dbg !2434
  call void @llvm.dbg.value(metadata ptr %2, metadata !2433, metadata !DIExpression()), !dbg !2434
  call void @llvm.dbg.value(metadata ptr %0, metadata !2435, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %1, metadata !2440, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata ptr null, metadata !2441, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata ptr %2, metadata !2442, metadata !DIExpression()), !dbg !2448
  %4 = icmp eq ptr %2, null, !dbg !2450
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2450
  call void @llvm.dbg.value(metadata ptr %5, metadata !2443, metadata !DIExpression()), !dbg !2448
  %6 = tail call ptr @__errno_location() #39, !dbg !2451
  %7 = load i32, ptr %6, align 4, !dbg !2451, !tbaa !976
  call void @llvm.dbg.value(metadata i32 %7, metadata !2444, metadata !DIExpression()), !dbg !2448
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2452
  %9 = load i32, ptr %8, align 4, !dbg !2452, !tbaa !1798
  %10 = or i32 %9, 1, !dbg !2453
  call void @llvm.dbg.value(metadata i32 %10, metadata !2445, metadata !DIExpression()), !dbg !2448
  %11 = load i32, ptr %5, align 8, !dbg !2454, !tbaa !1748
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2455
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2456
  %14 = load ptr, ptr %13, align 8, !dbg !2456, !tbaa !1819
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2457
  %16 = load ptr, ptr %15, align 8, !dbg !2457, !tbaa !1822
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2458
  %18 = add i64 %17, 1, !dbg !2459
  call void @llvm.dbg.value(metadata i64 %18, metadata !2446, metadata !DIExpression()), !dbg !2448
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #43, !dbg !2460
  call void @llvm.dbg.value(metadata ptr %19, metadata !2447, metadata !DIExpression()), !dbg !2448
  %20 = load i32, ptr %5, align 8, !dbg !2461, !tbaa !1748
  %21 = load ptr, ptr %13, align 8, !dbg !2462, !tbaa !1819
  %22 = load ptr, ptr %15, align 8, !dbg !2463, !tbaa !1822
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2464
  store i32 %7, ptr %6, align 4, !dbg !2465, !tbaa !976
  ret ptr %19, !dbg !2466
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #11 !dbg !2436 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2435, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i64 %1, metadata !2440, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata ptr %2, metadata !2441, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata ptr %3, metadata !2442, metadata !DIExpression()), !dbg !2467
  %5 = icmp eq ptr %3, null, !dbg !2468
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2468
  call void @llvm.dbg.value(metadata ptr %6, metadata !2443, metadata !DIExpression()), !dbg !2467
  %7 = tail call ptr @__errno_location() #39, !dbg !2469
  %8 = load i32, ptr %7, align 4, !dbg !2469, !tbaa !976
  call void @llvm.dbg.value(metadata i32 %8, metadata !2444, metadata !DIExpression()), !dbg !2467
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2470
  %10 = load i32, ptr %9, align 4, !dbg !2470, !tbaa !1798
  %11 = icmp eq ptr %2, null, !dbg !2471
  %12 = zext i1 %11 to i32, !dbg !2471
  %13 = or i32 %10, %12, !dbg !2472
  call void @llvm.dbg.value(metadata i32 %13, metadata !2445, metadata !DIExpression()), !dbg !2467
  %14 = load i32, ptr %6, align 8, !dbg !2473, !tbaa !1748
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2474
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2475
  %17 = load ptr, ptr %16, align 8, !dbg !2475, !tbaa !1819
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2476
  %19 = load ptr, ptr %18, align 8, !dbg !2476, !tbaa !1822
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2477
  %21 = add i64 %20, 1, !dbg !2478
  call void @llvm.dbg.value(metadata i64 %21, metadata !2446, metadata !DIExpression()), !dbg !2467
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #43, !dbg !2479
  call void @llvm.dbg.value(metadata ptr %22, metadata !2447, metadata !DIExpression()), !dbg !2467
  %23 = load i32, ptr %6, align 8, !dbg !2480, !tbaa !1748
  %24 = load ptr, ptr %16, align 8, !dbg !2481, !tbaa !1819
  %25 = load ptr, ptr %18, align 8, !dbg !2482, !tbaa !1822
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2483
  store i32 %8, ptr %7, align 4, !dbg !2484, !tbaa !976
  br i1 %11, label %28, label %27, !dbg !2485

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2486, !tbaa !2488
  br label %28, !dbg !2489

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2490
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #11 !dbg !2491 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2496, !tbaa !876
  call void @llvm.dbg.value(metadata ptr %1, metadata !2493, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata i32 1, metadata !2494, metadata !DIExpression()), !dbg !2498
  %2 = load i32, ptr @nslots, align 4, !tbaa !976
  call void @llvm.dbg.value(metadata i32 1, metadata !2494, metadata !DIExpression()), !dbg !2498
  %3 = icmp sgt i32 %2, 1, !dbg !2499
  br i1 %3, label %4, label %6, !dbg !2501

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2499
  br label %10, !dbg !2501

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2502
  %8 = load ptr, ptr %7, align 8, !dbg !2502, !tbaa !2504
  %9 = icmp eq ptr %8, @slot0, !dbg !2506
  br i1 %9, label %17, label %16, !dbg !2507

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2494, metadata !DIExpression()), !dbg !2498
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2508
  %13 = load ptr, ptr %12, align 8, !dbg !2508, !tbaa !2504
  tail call void @free(ptr noundef %13) #36, !dbg !2509
  %14 = add nuw nsw i64 %11, 1, !dbg !2510
  call void @llvm.dbg.value(metadata i64 %14, metadata !2494, metadata !DIExpression()), !dbg !2498
  %15 = icmp eq i64 %14, %5, !dbg !2499
  br i1 %15, label %6, label %10, !dbg !2501, !llvm.loop !2511

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #36, !dbg !2513
  store i64 256, ptr @slotvec0, align 8, !dbg !2515, !tbaa !2516
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2517, !tbaa !2504
  br label %17, !dbg !2518

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2519
  br i1 %18, label %20, label %19, !dbg !2521

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #36, !dbg !2522
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2524, !tbaa !876
  br label %20, !dbg !2525

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2526, !tbaa !976
  ret void, !dbg !2527
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2528 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #11 !dbg !2531 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2533, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata ptr %1, metadata !2534, metadata !DIExpression()), !dbg !2535
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2536
  ret ptr %3, !dbg !2537
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #11 !dbg !2538 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2542, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata ptr %1, metadata !2543, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata i64 %2, metadata !2544, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata ptr %3, metadata !2545, metadata !DIExpression()), !dbg !2558
  %6 = tail call ptr @__errno_location() #39, !dbg !2559
  %7 = load i32, ptr %6, align 4, !dbg !2559, !tbaa !976
  call void @llvm.dbg.value(metadata i32 %7, metadata !2546, metadata !DIExpression()), !dbg !2558
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2560, !tbaa !876
  call void @llvm.dbg.value(metadata ptr %8, metadata !2547, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2548, metadata !DIExpression()), !dbg !2558
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2561
  br i1 %9, label %10, label %11, !dbg !2561

10:                                               ; preds = %4
  tail call void @abort() #38, !dbg !2563
  unreachable, !dbg !2563

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2564, !tbaa !976
  %13 = icmp sgt i32 %12, %0, !dbg !2565
  br i1 %13, label %32, label %14, !dbg !2566

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2567
  call void @llvm.dbg.value(metadata i1 %15, metadata !2549, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2568
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #36, !dbg !2569
  %16 = sext i32 %12 to i64, !dbg !2570
  call void @llvm.dbg.value(metadata i64 %16, metadata !2552, metadata !DIExpression()), !dbg !2568
  store i64 %16, ptr %5, align 8, !dbg !2571, !tbaa !2488
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2572
  %18 = add nuw nsw i32 %0, 1, !dbg !2573
  %19 = sub i32 %18, %12, !dbg !2574
  %20 = sext i32 %19 to i64, !dbg !2575
  call void @llvm.dbg.value(metadata ptr %5, metadata !2552, metadata !DIExpression(DW_OP_deref)), !dbg !2568
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #36, !dbg !2576
  call void @llvm.dbg.value(metadata ptr %21, metadata !2547, metadata !DIExpression()), !dbg !2558
  store ptr %21, ptr @slotvec, align 8, !dbg !2577, !tbaa !876
  br i1 %15, label %22, label %23, !dbg !2578

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2579, !tbaa.struct !2581
  br label %23, !dbg !2582

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2583, !tbaa !976
  %25 = sext i32 %24 to i64, !dbg !2584
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2584
  %27 = load i64, ptr %5, align 8, !dbg !2585, !tbaa !2488
  call void @llvm.dbg.value(metadata i64 %27, metadata !2552, metadata !DIExpression()), !dbg !2568
  %28 = sub nsw i64 %27, %25, !dbg !2586
  %29 = shl i64 %28, 4, !dbg !2587
  call void @llvm.dbg.value(metadata ptr %26, metadata !1955, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i32 0, metadata !1958, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i64 %29, metadata !1959, metadata !DIExpression()), !dbg !2588
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #36, !dbg !2590
  %30 = load i64, ptr %5, align 8, !dbg !2591, !tbaa !2488
  call void @llvm.dbg.value(metadata i64 %30, metadata !2552, metadata !DIExpression()), !dbg !2568
  %31 = trunc i64 %30 to i32, !dbg !2591
  store i32 %31, ptr @nslots, align 4, !dbg !2592, !tbaa !976
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #36, !dbg !2593
  br label %32, !dbg !2594

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2558
  call void @llvm.dbg.value(metadata ptr %33, metadata !2547, metadata !DIExpression()), !dbg !2558
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2595
  %36 = load i64, ptr %35, align 8, !dbg !2596, !tbaa !2516
  call void @llvm.dbg.value(metadata i64 %36, metadata !2553, metadata !DIExpression()), !dbg !2597
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2598
  %38 = load ptr, ptr %37, align 8, !dbg !2598, !tbaa !2504
  call void @llvm.dbg.value(metadata ptr %38, metadata !2555, metadata !DIExpression()), !dbg !2597
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2599
  %40 = load i32, ptr %39, align 4, !dbg !2599, !tbaa !1798
  %41 = or i32 %40, 1, !dbg !2600
  call void @llvm.dbg.value(metadata i32 %41, metadata !2556, metadata !DIExpression()), !dbg !2597
  %42 = load i32, ptr %3, align 8, !dbg !2601, !tbaa !1748
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2602
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2603
  %45 = load ptr, ptr %44, align 8, !dbg !2603, !tbaa !1819
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2604
  %47 = load ptr, ptr %46, align 8, !dbg !2604, !tbaa !1822
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2605
  call void @llvm.dbg.value(metadata i64 %48, metadata !2557, metadata !DIExpression()), !dbg !2597
  %49 = icmp ugt i64 %36, %48, !dbg !2606
  br i1 %49, label %60, label %50, !dbg !2608

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2609
  call void @llvm.dbg.value(metadata i64 %51, metadata !2553, metadata !DIExpression()), !dbg !2597
  store i64 %51, ptr %35, align 8, !dbg !2611, !tbaa !2516
  %52 = icmp eq ptr %38, @slot0, !dbg !2612
  br i1 %52, label %54, label %53, !dbg !2614

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #36, !dbg !2615
  br label %54, !dbg !2615

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #43, !dbg !2616
  call void @llvm.dbg.value(metadata ptr %55, metadata !2555, metadata !DIExpression()), !dbg !2597
  store ptr %55, ptr %37, align 8, !dbg !2617, !tbaa !2504
  %56 = load i32, ptr %3, align 8, !dbg !2618, !tbaa !1748
  %57 = load ptr, ptr %44, align 8, !dbg !2619, !tbaa !1819
  %58 = load ptr, ptr %46, align 8, !dbg !2620, !tbaa !1822
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2621
  br label %60, !dbg !2622

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2597
  call void @llvm.dbg.value(metadata ptr %61, metadata !2555, metadata !DIExpression()), !dbg !2597
  store i32 %7, ptr %6, align 4, !dbg !2623, !tbaa !976
  ret ptr %61, !dbg !2624
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #23

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #11 !dbg !2625 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2629, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata ptr %1, metadata !2630, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i64 %2, metadata !2631, metadata !DIExpression()), !dbg !2632
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2633
  ret ptr %4, !dbg !2634
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #11 !dbg !2635 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2637, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.value(metadata i32 0, metadata !2533, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.value(metadata ptr %0, metadata !2534, metadata !DIExpression()), !dbg !2639
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2641
  ret ptr %2, !dbg !2642
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #11 !dbg !2643 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2647, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata i64 %1, metadata !2648, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata i32 0, metadata !2629, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata ptr %0, metadata !2630, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata i64 %1, metadata !2631, metadata !DIExpression()), !dbg !2650
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2652
  ret ptr %3, !dbg !2653
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #11 !dbg !2654 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2658, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata i32 %1, metadata !2659, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata ptr %2, metadata !2660, metadata !DIExpression()), !dbg !2662
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2663
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2661, metadata !DIExpression()), !dbg !2664
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2665), !dbg !2668
  call void @llvm.dbg.value(metadata i32 %1, metadata !2669, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2674, metadata !DIExpression()), !dbg !2677
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2677, !alias.scope !2665
  %5 = icmp eq i32 %1, 10, !dbg !2678
  br i1 %5, label %6, label %7, !dbg !2680

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2681, !noalias !2665
  unreachable, !dbg !2681

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2682, !tbaa !1748, !alias.scope !2665
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2683
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2684
  ret ptr %8, !dbg !2685
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #11 !dbg !2686 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2690, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i32 %1, metadata !2691, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata ptr %2, metadata !2692, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i64 %3, metadata !2693, metadata !DIExpression()), !dbg !2695
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2696
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2694, metadata !DIExpression()), !dbg !2697
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2698), !dbg !2701
  call void @llvm.dbg.value(metadata i32 %1, metadata !2669, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2674, metadata !DIExpression()), !dbg !2704
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2704, !alias.scope !2698
  %6 = icmp eq i32 %1, 10, !dbg !2705
  br i1 %6, label %7, label %8, !dbg !2706

7:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2707, !noalias !2698
  unreachable, !dbg !2707

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2708, !tbaa !1748, !alias.scope !2698
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2709
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2710
  ret ptr %9, !dbg !2711
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #11 !dbg !2712 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2716, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata ptr %1, metadata !2717, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i32 0, metadata !2658, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i32 %0, metadata !2659, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata ptr %1, metadata !2660, metadata !DIExpression()), !dbg !2719
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2721
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2661, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2723), !dbg !2726
  call void @llvm.dbg.value(metadata i32 %0, metadata !2669, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2674, metadata !DIExpression()), !dbg !2729
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2729, !alias.scope !2723
  %4 = icmp eq i32 %0, 10, !dbg !2730
  br i1 %4, label %5, label %6, !dbg !2731

5:                                                ; preds = %2
  tail call void @abort() #38, !dbg !2732, !noalias !2723
  unreachable, !dbg !2732

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2733, !tbaa !1748, !alias.scope !2723
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2734
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2735
  ret ptr %7, !dbg !2736
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #11 !dbg !2737 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2741, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.value(metadata ptr %1, metadata !2742, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.value(metadata i64 %2, metadata !2743, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.value(metadata i32 0, metadata !2690, metadata !DIExpression()), !dbg !2745
  call void @llvm.dbg.value(metadata i32 %0, metadata !2691, metadata !DIExpression()), !dbg !2745
  call void @llvm.dbg.value(metadata ptr %1, metadata !2692, metadata !DIExpression()), !dbg !2745
  call void @llvm.dbg.value(metadata i64 %2, metadata !2693, metadata !DIExpression()), !dbg !2745
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2747
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2694, metadata !DIExpression()), !dbg !2748
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2749), !dbg !2752
  call void @llvm.dbg.value(metadata i32 %0, metadata !2669, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2674, metadata !DIExpression()), !dbg !2755
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2755, !alias.scope !2749
  %5 = icmp eq i32 %0, 10, !dbg !2756
  br i1 %5, label %6, label %7, !dbg !2757

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2758, !noalias !2749
  unreachable, !dbg !2758

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2759, !tbaa !1748, !alias.scope !2749
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2760
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2761
  ret ptr %8, !dbg !2762
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #11 !dbg !2763 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2767, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i64 %1, metadata !2768, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i8 %2, metadata !2769, metadata !DIExpression()), !dbg !2771
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2772
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2770, metadata !DIExpression()), !dbg !2773
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2774, !tbaa.struct !2775
  call void @llvm.dbg.value(metadata ptr %4, metadata !1765, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.value(metadata i8 %2, metadata !1766, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.value(metadata i32 1, metadata !1767, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.value(metadata i8 %2, metadata !1768, metadata !DIExpression()), !dbg !2776
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2778
  %6 = lshr i8 %2, 5, !dbg !2779
  %7 = zext i8 %6 to i64, !dbg !2779
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2780
  call void @llvm.dbg.value(metadata ptr %8, metadata !1769, metadata !DIExpression()), !dbg !2776
  %9 = and i8 %2, 31, !dbg !2781
  %10 = zext i8 %9 to i32, !dbg !2781
  call void @llvm.dbg.value(metadata i32 %10, metadata !1771, metadata !DIExpression()), !dbg !2776
  %11 = load i32, ptr %8, align 4, !dbg !2782, !tbaa !976
  %12 = lshr i32 %11, %10, !dbg !2783
  call void @llvm.dbg.value(metadata i32 %12, metadata !1772, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2776
  %13 = and i32 %12, 1, !dbg !2784
  %14 = xor i32 %13, 1, !dbg !2784
  %15 = shl nuw i32 %14, %10, !dbg !2785
  %16 = xor i32 %15, %11, !dbg !2786
  store i32 %16, ptr %8, align 4, !dbg !2786, !tbaa !976
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2787
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2788
  ret ptr %17, !dbg !2789
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #11 !dbg !2790 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2794, metadata !DIExpression()), !dbg !2796
  call void @llvm.dbg.value(metadata i8 %1, metadata !2795, metadata !DIExpression()), !dbg !2796
  call void @llvm.dbg.value(metadata ptr %0, metadata !2767, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata i64 -1, metadata !2768, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata i8 %1, metadata !2769, metadata !DIExpression()), !dbg !2797
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2799
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2770, metadata !DIExpression()), !dbg !2800
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2801, !tbaa.struct !2775
  call void @llvm.dbg.value(metadata ptr %3, metadata !1765, metadata !DIExpression()), !dbg !2802
  call void @llvm.dbg.value(metadata i8 %1, metadata !1766, metadata !DIExpression()), !dbg !2802
  call void @llvm.dbg.value(metadata i32 1, metadata !1767, metadata !DIExpression()), !dbg !2802
  call void @llvm.dbg.value(metadata i8 %1, metadata !1768, metadata !DIExpression()), !dbg !2802
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2804
  %5 = lshr i8 %1, 5, !dbg !2805
  %6 = zext i8 %5 to i64, !dbg !2805
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2806
  call void @llvm.dbg.value(metadata ptr %7, metadata !1769, metadata !DIExpression()), !dbg !2802
  %8 = and i8 %1, 31, !dbg !2807
  %9 = zext i8 %8 to i32, !dbg !2807
  call void @llvm.dbg.value(metadata i32 %9, metadata !1771, metadata !DIExpression()), !dbg !2802
  %10 = load i32, ptr %7, align 4, !dbg !2808, !tbaa !976
  %11 = lshr i32 %10, %9, !dbg !2809
  call void @llvm.dbg.value(metadata i32 %11, metadata !1772, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2802
  %12 = and i32 %11, 1, !dbg !2810
  %13 = xor i32 %12, 1, !dbg !2810
  %14 = shl nuw i32 %13, %9, !dbg !2811
  %15 = xor i32 %14, %10, !dbg !2812
  store i32 %15, ptr %7, align 4, !dbg !2812, !tbaa !976
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2813
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2814
  ret ptr %16, !dbg !2815
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #11 !dbg !2816 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2818, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.value(metadata ptr %0, metadata !2794, metadata !DIExpression()), !dbg !2820
  call void @llvm.dbg.value(metadata i8 58, metadata !2795, metadata !DIExpression()), !dbg !2820
  call void @llvm.dbg.value(metadata ptr %0, metadata !2767, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.value(metadata i64 -1, metadata !2768, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.value(metadata i8 58, metadata !2769, metadata !DIExpression()), !dbg !2822
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #36, !dbg !2824
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2770, metadata !DIExpression()), !dbg !2825
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2826, !tbaa.struct !2775
  call void @llvm.dbg.value(metadata ptr %2, metadata !1765, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.value(metadata i8 58, metadata !1766, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.value(metadata i32 1, metadata !1767, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.value(metadata i8 58, metadata !1768, metadata !DIExpression()), !dbg !2827
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2829
  call void @llvm.dbg.value(metadata ptr %3, metadata !1769, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.value(metadata i32 26, metadata !1771, metadata !DIExpression()), !dbg !2827
  %4 = load i32, ptr %3, align 4, !dbg !2830, !tbaa !976
  call void @llvm.dbg.value(metadata i32 %4, metadata !1772, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2827
  %5 = or i32 %4, 67108864, !dbg !2831
  store i32 %5, ptr %3, align 4, !dbg !2831, !tbaa !976
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2832
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #36, !dbg !2833
  ret ptr %6, !dbg !2834
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #11 !dbg !2835 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2837, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata i64 %1, metadata !2838, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata ptr %0, metadata !2767, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i64 %1, metadata !2768, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i8 58, metadata !2769, metadata !DIExpression()), !dbg !2840
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2842
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2770, metadata !DIExpression()), !dbg !2843
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2844, !tbaa.struct !2775
  call void @llvm.dbg.value(metadata ptr %3, metadata !1765, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i8 58, metadata !1766, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i32 1, metadata !1767, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i8 58, metadata !1768, metadata !DIExpression()), !dbg !2845
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2847
  call void @llvm.dbg.value(metadata ptr %4, metadata !1769, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i32 26, metadata !1771, metadata !DIExpression()), !dbg !2845
  %5 = load i32, ptr %4, align 4, !dbg !2848, !tbaa !976
  call void @llvm.dbg.value(metadata i32 %5, metadata !1772, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2845
  %6 = or i32 %5, 67108864, !dbg !2849
  store i32 %6, ptr %4, align 4, !dbg !2849, !tbaa !976
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2850
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2851
  ret ptr %7, !dbg !2852
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #11 !dbg !2853 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2674, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2859
  call void @llvm.dbg.value(metadata i32 %0, metadata !2855, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata i32 %1, metadata !2856, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata ptr %2, metadata !2857, metadata !DIExpression()), !dbg !2861
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2862
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2858, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata i32 %1, metadata !2669, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i32 0, metadata !2674, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2864
  %5 = icmp eq i32 %1, 10, !dbg !2865
  br i1 %5, label %6, label %7, !dbg !2866

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2867, !noalias !2868
  unreachable, !dbg !2867

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2674, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2864
  store i32 %1, ptr %4, align 8, !dbg !2871, !tbaa.struct !2775
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2871
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2871
  call void @llvm.dbg.value(metadata ptr %4, metadata !1765, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata i8 58, metadata !1766, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata i32 1, metadata !1767, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata i8 58, metadata !1768, metadata !DIExpression()), !dbg !2872
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2874
  call void @llvm.dbg.value(metadata ptr %9, metadata !1769, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata i32 26, metadata !1771, metadata !DIExpression()), !dbg !2872
  %10 = load i32, ptr %9, align 4, !dbg !2875, !tbaa !976
  call void @llvm.dbg.value(metadata i32 %10, metadata !1772, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2872
  %11 = or i32 %10, 67108864, !dbg !2876
  store i32 %11, ptr %9, align 4, !dbg !2876, !tbaa !976
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2877
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2878
  ret ptr %12, !dbg !2879
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #11 !dbg !2880 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2884, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata ptr %1, metadata !2885, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata ptr %2, metadata !2886, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata ptr %3, metadata !2887, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i32 %0, metadata !2889, metadata !DIExpression()), !dbg !2899
  call void @llvm.dbg.value(metadata ptr %1, metadata !2894, metadata !DIExpression()), !dbg !2899
  call void @llvm.dbg.value(metadata ptr %2, metadata !2895, metadata !DIExpression()), !dbg !2899
  call void @llvm.dbg.value(metadata ptr %3, metadata !2896, metadata !DIExpression()), !dbg !2899
  call void @llvm.dbg.value(metadata i64 -1, metadata !2897, metadata !DIExpression()), !dbg !2899
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2901
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2898, metadata !DIExpression()), !dbg !2902
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2903, !tbaa.struct !2775
  call void @llvm.dbg.value(metadata ptr %5, metadata !1805, metadata !DIExpression()), !dbg !2904
  call void @llvm.dbg.value(metadata ptr %1, metadata !1806, metadata !DIExpression()), !dbg !2904
  call void @llvm.dbg.value(metadata ptr %2, metadata !1807, metadata !DIExpression()), !dbg !2904
  call void @llvm.dbg.value(metadata ptr %5, metadata !1805, metadata !DIExpression()), !dbg !2904
  store i32 10, ptr %5, align 8, !dbg !2906, !tbaa !1748
  %6 = icmp ne ptr %1, null, !dbg !2907
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2908
  br i1 %8, label %10, label %9, !dbg !2908

9:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2909
  unreachable, !dbg !2909

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2910
  store ptr %1, ptr %11, align 8, !dbg !2911, !tbaa !1819
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2912
  store ptr %2, ptr %12, align 8, !dbg !2913, !tbaa !1822
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2914
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2915
  ret ptr %13, !dbg !2916
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #11 !dbg !2890 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2889, metadata !DIExpression()), !dbg !2917
  call void @llvm.dbg.value(metadata ptr %1, metadata !2894, metadata !DIExpression()), !dbg !2917
  call void @llvm.dbg.value(metadata ptr %2, metadata !2895, metadata !DIExpression()), !dbg !2917
  call void @llvm.dbg.value(metadata ptr %3, metadata !2896, metadata !DIExpression()), !dbg !2917
  call void @llvm.dbg.value(metadata i64 %4, metadata !2897, metadata !DIExpression()), !dbg !2917
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #36, !dbg !2918
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2898, metadata !DIExpression()), !dbg !2919
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2920, !tbaa.struct !2775
  call void @llvm.dbg.value(metadata ptr %6, metadata !1805, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata ptr %1, metadata !1806, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata ptr %2, metadata !1807, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata ptr %6, metadata !1805, metadata !DIExpression()), !dbg !2921
  store i32 10, ptr %6, align 8, !dbg !2923, !tbaa !1748
  %7 = icmp ne ptr %1, null, !dbg !2924
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2925
  br i1 %9, label %11, label %10, !dbg !2925

10:                                               ; preds = %5
  tail call void @abort() #38, !dbg !2926
  unreachable, !dbg !2926

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2927
  store ptr %1, ptr %12, align 8, !dbg !2928, !tbaa !1819
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2929
  store ptr %2, ptr %13, align 8, !dbg !2930, !tbaa !1822
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2931
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #36, !dbg !2932
  ret ptr %14, !dbg !2933
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #11 !dbg !2934 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2938, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata ptr %1, metadata !2939, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata ptr %2, metadata !2940, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i32 0, metadata !2884, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.value(metadata ptr %0, metadata !2885, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.value(metadata ptr %1, metadata !2886, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.value(metadata ptr %2, metadata !2887, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.value(metadata i32 0, metadata !2889, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata ptr %0, metadata !2894, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata ptr %1, metadata !2895, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata ptr %2, metadata !2896, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata i64 -1, metadata !2897, metadata !DIExpression()), !dbg !2944
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2946
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2898, metadata !DIExpression()), !dbg !2947
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2948, !tbaa.struct !2775
  call void @llvm.dbg.value(metadata ptr %4, metadata !1805, metadata !DIExpression()), !dbg !2949
  call void @llvm.dbg.value(metadata ptr %0, metadata !1806, metadata !DIExpression()), !dbg !2949
  call void @llvm.dbg.value(metadata ptr %1, metadata !1807, metadata !DIExpression()), !dbg !2949
  call void @llvm.dbg.value(metadata ptr %4, metadata !1805, metadata !DIExpression()), !dbg !2949
  store i32 10, ptr %4, align 8, !dbg !2951, !tbaa !1748
  %5 = icmp ne ptr %0, null, !dbg !2952
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2953
  br i1 %7, label %9, label %8, !dbg !2953

8:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2954
  unreachable, !dbg !2954

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2955
  store ptr %0, ptr %10, align 8, !dbg !2956, !tbaa !1819
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2957
  store ptr %1, ptr %11, align 8, !dbg !2958, !tbaa !1822
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2959
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2960
  ret ptr %12, !dbg !2961
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #11 !dbg !2962 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2966, metadata !DIExpression()), !dbg !2970
  call void @llvm.dbg.value(metadata ptr %1, metadata !2967, metadata !DIExpression()), !dbg !2970
  call void @llvm.dbg.value(metadata ptr %2, metadata !2968, metadata !DIExpression()), !dbg !2970
  call void @llvm.dbg.value(metadata i64 %3, metadata !2969, metadata !DIExpression()), !dbg !2970
  call void @llvm.dbg.value(metadata i32 0, metadata !2889, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.value(metadata ptr %0, metadata !2894, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.value(metadata ptr %1, metadata !2895, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.value(metadata ptr %2, metadata !2896, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.value(metadata i64 %3, metadata !2897, metadata !DIExpression()), !dbg !2971
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2973
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2898, metadata !DIExpression()), !dbg !2974
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2975, !tbaa.struct !2775
  call void @llvm.dbg.value(metadata ptr %5, metadata !1805, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata ptr %0, metadata !1806, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata ptr %1, metadata !1807, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata ptr %5, metadata !1805, metadata !DIExpression()), !dbg !2976
  store i32 10, ptr %5, align 8, !dbg !2978, !tbaa !1748
  %6 = icmp ne ptr %0, null, !dbg !2979
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2980
  br i1 %8, label %10, label %9, !dbg !2980

9:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2981
  unreachable, !dbg !2981

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2982
  store ptr %0, ptr %11, align 8, !dbg !2983, !tbaa !1819
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2984
  store ptr %1, ptr %12, align 8, !dbg !2985, !tbaa !1822
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2986
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2987
  ret ptr %13, !dbg !2988
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #11 !dbg !2989 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2993, metadata !DIExpression()), !dbg !2996
  call void @llvm.dbg.value(metadata ptr %1, metadata !2994, metadata !DIExpression()), !dbg !2996
  call void @llvm.dbg.value(metadata i64 %2, metadata !2995, metadata !DIExpression()), !dbg !2996
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2997
  ret ptr %4, !dbg !2998
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #11 !dbg !2999 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3003, metadata !DIExpression()), !dbg !3005
  call void @llvm.dbg.value(metadata i64 %1, metadata !3004, metadata !DIExpression()), !dbg !3005
  call void @llvm.dbg.value(metadata i32 0, metadata !2993, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata ptr %0, metadata !2994, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i64 %1, metadata !2995, metadata !DIExpression()), !dbg !3006
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3008
  ret ptr %3, !dbg !3009
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #11 !dbg !3010 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3014, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata ptr %1, metadata !3015, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata i32 %0, metadata !2993, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata ptr %1, metadata !2994, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata i64 -1, metadata !2995, metadata !DIExpression()), !dbg !3017
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3019
  ret ptr %3, !dbg !3020
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #11 !dbg !3021 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3025, metadata !DIExpression()), !dbg !3026
  call void @llvm.dbg.value(metadata i32 0, metadata !3014, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata ptr %0, metadata !3015, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata i32 0, metadata !2993, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata ptr %0, metadata !2994, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata i64 -1, metadata !2995, metadata !DIExpression()), !dbg !3029
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3031
  ret ptr %2, !dbg !3032
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #11 !dbg !3033 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3072, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata ptr %1, metadata !3073, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata ptr %2, metadata !3074, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata ptr %3, metadata !3075, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata ptr %4, metadata !3076, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata i64 %5, metadata !3077, metadata !DIExpression()), !dbg !3078
  %7 = icmp eq ptr %1, null, !dbg !3079
  br i1 %7, label %10, label %8, !dbg !3081

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.119, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #36, !dbg !3082
  br label %12, !dbg !3082

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.120, ptr noundef %2, ptr noundef %3) #36, !dbg !3083
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.3.122, i32 noundef 5) #36, !dbg !3084
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #36, !dbg !3084
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.123, ptr noundef %0), !dbg !3085
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.5.124, i32 noundef 5) #36, !dbg !3086
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.125) #36, !dbg !3086
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.123, ptr noundef %0), !dbg !3087
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
  ], !dbg !3088

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.7.126, i32 noundef 5) #36, !dbg !3089
  %21 = load ptr, ptr %4, align 8, !dbg !3089, !tbaa !876
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #36, !dbg !3089
  br label %147, !dbg !3091

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.8.127, i32 noundef 5) #36, !dbg !3092
  %25 = load ptr, ptr %4, align 8, !dbg !3092, !tbaa !876
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3092
  %27 = load ptr, ptr %26, align 8, !dbg !3092, !tbaa !876
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #36, !dbg !3092
  br label %147, !dbg !3093

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.9.128, i32 noundef 5) #36, !dbg !3094
  %31 = load ptr, ptr %4, align 8, !dbg !3094, !tbaa !876
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3094
  %33 = load ptr, ptr %32, align 8, !dbg !3094, !tbaa !876
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3094
  %35 = load ptr, ptr %34, align 8, !dbg !3094, !tbaa !876
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #36, !dbg !3094
  br label %147, !dbg !3095

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.10.129, i32 noundef 5) #36, !dbg !3096
  %39 = load ptr, ptr %4, align 8, !dbg !3096, !tbaa !876
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3096
  %41 = load ptr, ptr %40, align 8, !dbg !3096, !tbaa !876
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3096
  %43 = load ptr, ptr %42, align 8, !dbg !3096, !tbaa !876
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3096
  %45 = load ptr, ptr %44, align 8, !dbg !3096, !tbaa !876
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #36, !dbg !3096
  br label %147, !dbg !3097

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.11.130, i32 noundef 5) #36, !dbg !3098
  %49 = load ptr, ptr %4, align 8, !dbg !3098, !tbaa !876
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3098
  %51 = load ptr, ptr %50, align 8, !dbg !3098, !tbaa !876
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3098
  %53 = load ptr, ptr %52, align 8, !dbg !3098, !tbaa !876
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3098
  %55 = load ptr, ptr %54, align 8, !dbg !3098, !tbaa !876
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3098
  %57 = load ptr, ptr %56, align 8, !dbg !3098, !tbaa !876
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #36, !dbg !3098
  br label %147, !dbg !3099

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.12.131, i32 noundef 5) #36, !dbg !3100
  %61 = load ptr, ptr %4, align 8, !dbg !3100, !tbaa !876
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3100
  %63 = load ptr, ptr %62, align 8, !dbg !3100, !tbaa !876
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3100
  %65 = load ptr, ptr %64, align 8, !dbg !3100, !tbaa !876
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3100
  %67 = load ptr, ptr %66, align 8, !dbg !3100, !tbaa !876
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3100
  %69 = load ptr, ptr %68, align 8, !dbg !3100, !tbaa !876
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3100
  %71 = load ptr, ptr %70, align 8, !dbg !3100, !tbaa !876
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #36, !dbg !3100
  br label %147, !dbg !3101

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.13.132, i32 noundef 5) #36, !dbg !3102
  %75 = load ptr, ptr %4, align 8, !dbg !3102, !tbaa !876
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3102
  %77 = load ptr, ptr %76, align 8, !dbg !3102, !tbaa !876
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3102
  %79 = load ptr, ptr %78, align 8, !dbg !3102, !tbaa !876
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3102
  %81 = load ptr, ptr %80, align 8, !dbg !3102, !tbaa !876
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3102
  %83 = load ptr, ptr %82, align 8, !dbg !3102, !tbaa !876
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3102
  %85 = load ptr, ptr %84, align 8, !dbg !3102, !tbaa !876
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3102
  %87 = load ptr, ptr %86, align 8, !dbg !3102, !tbaa !876
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #36, !dbg !3102
  br label %147, !dbg !3103

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.14.133, i32 noundef 5) #36, !dbg !3104
  %91 = load ptr, ptr %4, align 8, !dbg !3104, !tbaa !876
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3104
  %93 = load ptr, ptr %92, align 8, !dbg !3104, !tbaa !876
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3104
  %95 = load ptr, ptr %94, align 8, !dbg !3104, !tbaa !876
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3104
  %97 = load ptr, ptr %96, align 8, !dbg !3104, !tbaa !876
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3104
  %99 = load ptr, ptr %98, align 8, !dbg !3104, !tbaa !876
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3104
  %101 = load ptr, ptr %100, align 8, !dbg !3104, !tbaa !876
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3104
  %103 = load ptr, ptr %102, align 8, !dbg !3104, !tbaa !876
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3104
  %105 = load ptr, ptr %104, align 8, !dbg !3104, !tbaa !876
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #36, !dbg !3104
  br label %147, !dbg !3105

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.15.134, i32 noundef 5) #36, !dbg !3106
  %109 = load ptr, ptr %4, align 8, !dbg !3106, !tbaa !876
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3106
  %111 = load ptr, ptr %110, align 8, !dbg !3106, !tbaa !876
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3106
  %113 = load ptr, ptr %112, align 8, !dbg !3106, !tbaa !876
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3106
  %115 = load ptr, ptr %114, align 8, !dbg !3106, !tbaa !876
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3106
  %117 = load ptr, ptr %116, align 8, !dbg !3106, !tbaa !876
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3106
  %119 = load ptr, ptr %118, align 8, !dbg !3106, !tbaa !876
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3106
  %121 = load ptr, ptr %120, align 8, !dbg !3106, !tbaa !876
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3106
  %123 = load ptr, ptr %122, align 8, !dbg !3106, !tbaa !876
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3106
  %125 = load ptr, ptr %124, align 8, !dbg !3106, !tbaa !876
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #36, !dbg !3106
  br label %147, !dbg !3107

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.16.135, i32 noundef 5) #36, !dbg !3108
  %129 = load ptr, ptr %4, align 8, !dbg !3108, !tbaa !876
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3108
  %131 = load ptr, ptr %130, align 8, !dbg !3108, !tbaa !876
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3108
  %133 = load ptr, ptr %132, align 8, !dbg !3108, !tbaa !876
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3108
  %135 = load ptr, ptr %134, align 8, !dbg !3108, !tbaa !876
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3108
  %137 = load ptr, ptr %136, align 8, !dbg !3108, !tbaa !876
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3108
  %139 = load ptr, ptr %138, align 8, !dbg !3108, !tbaa !876
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3108
  %141 = load ptr, ptr %140, align 8, !dbg !3108, !tbaa !876
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3108
  %143 = load ptr, ptr %142, align 8, !dbg !3108, !tbaa !876
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3108
  %145 = load ptr, ptr %144, align 8, !dbg !3108, !tbaa !876
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #36, !dbg !3108
  br label %147, !dbg !3109

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3110
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #11 !dbg !3111 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3115, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata ptr %1, metadata !3116, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata ptr %2, metadata !3117, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata ptr %3, metadata !3118, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata ptr %4, metadata !3119, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i64 0, metadata !3120, metadata !DIExpression()), !dbg !3121
  br label %6, !dbg !3122

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3124
  call void @llvm.dbg.value(metadata i64 %7, metadata !3120, metadata !DIExpression()), !dbg !3121
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3125
  %9 = load ptr, ptr %8, align 8, !dbg !3125, !tbaa !876
  %10 = icmp eq ptr %9, null, !dbg !3127
  %11 = add i64 %7, 1, !dbg !3128
  call void @llvm.dbg.value(metadata i64 %11, metadata !3120, metadata !DIExpression()), !dbg !3121
  br i1 %10, label %12, label %6, !dbg !3127, !llvm.loop !3129

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !3131
  ret void, !dbg !3132
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #11 !dbg !3133 {
  %6 = alloca [10 x ptr], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !3145, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata ptr %1, metadata !3146, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata ptr %2, metadata !3147, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata ptr %3, metadata !3148, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata ptr %4, metadata !3149, metadata !DIExpression()), !dbg !3153
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #36, !dbg !3154
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3151, metadata !DIExpression()), !dbg !3155
  call void @llvm.dbg.value(metadata i64 0, metadata !3150, metadata !DIExpression()), !dbg !3153
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !3150, metadata !DIExpression()), !dbg !3153
  %10 = icmp ult i32 %9, 41, !dbg !3156
  br i1 %10, label %11, label %16, !dbg !3156

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !3156
  %13 = zext i32 %9 to i64, !dbg !3156
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !3156
  %15 = add nuw nsw i32 %9, 8, !dbg !3156
  store i32 %15, ptr %4, align 8, !dbg !3156
  br label %19, !dbg !3156

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !3156
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !3156
  store ptr %18, ptr %7, align 8, !dbg !3156
  br label %19, !dbg !3156

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !3156
  %22 = load ptr, ptr %21, align 8, !dbg !3156
  store ptr %22, ptr %6, align 16, !dbg !3159, !tbaa !876
  %23 = icmp eq ptr %22, null, !dbg !3160
  br i1 %23, label %128, label %24, !dbg !3161

24:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i64 1, metadata !3150, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 1, metadata !3150, metadata !DIExpression()), !dbg !3153
  %25 = icmp ult i32 %20, 41, !dbg !3156
  br i1 %25, label %29, label %26, !dbg !3156

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !3156
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !3156
  store ptr %28, ptr %7, align 8, !dbg !3156
  br label %34, !dbg !3156

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !3156
  %31 = zext i32 %20 to i64, !dbg !3156
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !3156
  %33 = add nuw nsw i32 %20, 8, !dbg !3156
  store i32 %33, ptr %4, align 8, !dbg !3156
  br label %34, !dbg !3156

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !3156
  %37 = load ptr, ptr %36, align 8, !dbg !3156
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3162
  store ptr %37, ptr %38, align 8, !dbg !3159, !tbaa !876
  %39 = icmp eq ptr %37, null, !dbg !3160
  br i1 %39, label %128, label %40, !dbg !3161

40:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 2, metadata !3150, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 2, metadata !3150, metadata !DIExpression()), !dbg !3153
  %41 = icmp ult i32 %35, 41, !dbg !3156
  br i1 %41, label %45, label %42, !dbg !3156

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !3156
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !3156
  store ptr %44, ptr %7, align 8, !dbg !3156
  br label %50, !dbg !3156

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !3156
  %47 = zext i32 %35 to i64, !dbg !3156
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !3156
  %49 = add nuw nsw i32 %35, 8, !dbg !3156
  store i32 %49, ptr %4, align 8, !dbg !3156
  br label %50, !dbg !3156

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !3156
  %53 = load ptr, ptr %52, align 8, !dbg !3156
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3162
  store ptr %53, ptr %54, align 16, !dbg !3159, !tbaa !876
  %55 = icmp eq ptr %53, null, !dbg !3160
  br i1 %55, label %128, label %56, !dbg !3161

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 3, metadata !3150, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 3, metadata !3150, metadata !DIExpression()), !dbg !3153
  %57 = icmp ult i32 %51, 41, !dbg !3156
  br i1 %57, label %61, label %58, !dbg !3156

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !3156
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !3156
  store ptr %60, ptr %7, align 8, !dbg !3156
  br label %66, !dbg !3156

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !3156
  %63 = zext i32 %51 to i64, !dbg !3156
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !3156
  %65 = add nuw nsw i32 %51, 8, !dbg !3156
  store i32 %65, ptr %4, align 8, !dbg !3156
  br label %66, !dbg !3156

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !3156
  %69 = load ptr, ptr %68, align 8, !dbg !3156
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3162
  store ptr %69, ptr %70, align 8, !dbg !3159, !tbaa !876
  %71 = icmp eq ptr %69, null, !dbg !3160
  br i1 %71, label %128, label %72, !dbg !3161

72:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i64 4, metadata !3150, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 4, metadata !3150, metadata !DIExpression()), !dbg !3153
  %73 = icmp ult i32 %67, 41, !dbg !3156
  br i1 %73, label %77, label %74, !dbg !3156

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !3156
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !3156
  store ptr %76, ptr %7, align 8, !dbg !3156
  br label %82, !dbg !3156

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !3156
  %79 = zext i32 %67 to i64, !dbg !3156
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !3156
  %81 = add nuw nsw i32 %67, 8, !dbg !3156
  store i32 %81, ptr %4, align 8, !dbg !3156
  br label %82, !dbg !3156

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !3156
  %85 = load ptr, ptr %84, align 8, !dbg !3156
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3162
  store ptr %85, ptr %86, align 16, !dbg !3159, !tbaa !876
  %87 = icmp eq ptr %85, null, !dbg !3160
  br i1 %87, label %128, label %88, !dbg !3161

88:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i64 5, metadata !3150, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 5, metadata !3150, metadata !DIExpression()), !dbg !3153
  %89 = icmp ult i32 %83, 41, !dbg !3156
  br i1 %89, label %93, label %90, !dbg !3156

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !3156
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !3156
  store ptr %92, ptr %7, align 8, !dbg !3156
  br label %98, !dbg !3156

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !3156
  %95 = zext i32 %83 to i64, !dbg !3156
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !3156
  %97 = add nuw nsw i32 %83, 8, !dbg !3156
  store i32 %97, ptr %4, align 8, !dbg !3156
  br label %98, !dbg !3156

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !3156
  %100 = load ptr, ptr %99, align 8, !dbg !3156
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3162
  store ptr %100, ptr %101, align 8, !dbg !3159, !tbaa !876
  %102 = icmp eq ptr %100, null, !dbg !3160
  br i1 %102, label %128, label %103, !dbg !3161

103:                                              ; preds = %98
  call void @llvm.dbg.value(metadata i64 6, metadata !3150, metadata !DIExpression()), !dbg !3153
  %104 = load ptr, ptr %7, align 8, !dbg !3156
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !3156
  store ptr %105, ptr %7, align 8, !dbg !3156
  %106 = load ptr, ptr %104, align 8, !dbg !3156
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3162
  store ptr %106, ptr %107, align 16, !dbg !3159, !tbaa !876
  %108 = icmp eq ptr %106, null, !dbg !3160
  br i1 %108, label %128, label %109, !dbg !3161

109:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i64 7, metadata !3150, metadata !DIExpression()), !dbg !3153
  %110 = load ptr, ptr %7, align 8, !dbg !3156
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !3156
  store ptr %111, ptr %7, align 8, !dbg !3156
  %112 = load ptr, ptr %110, align 8, !dbg !3156
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3162
  store ptr %112, ptr %113, align 8, !dbg !3159, !tbaa !876
  %114 = icmp eq ptr %112, null, !dbg !3160
  br i1 %114, label %128, label %115, !dbg !3161

115:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i64 8, metadata !3150, metadata !DIExpression()), !dbg !3153
  %116 = load ptr, ptr %7, align 8, !dbg !3156
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !3156
  store ptr %117, ptr %7, align 8, !dbg !3156
  %118 = load ptr, ptr %116, align 8, !dbg !3156
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3162
  store ptr %118, ptr %119, align 16, !dbg !3159, !tbaa !876
  %120 = icmp eq ptr %118, null, !dbg !3160
  br i1 %120, label %128, label %121, !dbg !3161

121:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i64 9, metadata !3150, metadata !DIExpression()), !dbg !3153
  %122 = load ptr, ptr %7, align 8, !dbg !3156
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !3156
  store ptr %123, ptr %7, align 8, !dbg !3156
  %124 = load ptr, ptr %122, align 8, !dbg !3156
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3162
  store ptr %124, ptr %125, align 8, !dbg !3159, !tbaa !876
  %126 = icmp eq ptr %124, null, !dbg !3160
  %127 = select i1 %126, i64 9, i64 10, !dbg !3161
  br label %128, !dbg !3161

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !3163
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !3164
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #36, !dbg !3165
  ret void, !dbg !3165
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #11 !dbg !3166 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !3170, metadata !DIExpression()), !dbg !3179
  call void @llvm.dbg.value(metadata ptr %1, metadata !3171, metadata !DIExpression()), !dbg !3179
  call void @llvm.dbg.value(metadata ptr %2, metadata !3172, metadata !DIExpression()), !dbg !3179
  call void @llvm.dbg.value(metadata ptr %3, metadata !3173, metadata !DIExpression()), !dbg !3179
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #36, !dbg !3180
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3174, metadata !DIExpression()), !dbg !3181
  call void @llvm.va_start(ptr nonnull %5), !dbg !3182
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !3183
  call void @llvm.va_end(ptr nonnull %5), !dbg !3184
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #36, !dbg !3185
  ret void, !dbg !3185
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #11 !dbg !3186 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3187, !tbaa !876
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.123, ptr noundef %1), !dbg !3187
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.17.140, i32 noundef 5) #36, !dbg !3188
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.141) #36, !dbg !3188
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.19.142, i32 noundef 5) #36, !dbg !3189
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.143, ptr noundef nonnull @.str.21.144) #36, !dbg !3189
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.22, i32 noundef 5) #36, !dbg !3190
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23) #36, !dbg !3190
  ret void, !dbg !3191
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !3192 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3197, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i64 %1, metadata !3198, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i64 %2, metadata !3199, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata ptr %0, metadata !3201, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i64 %1, metadata !3204, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i64 %2, metadata !3205, metadata !DIExpression()), !dbg !3206
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !3208
  call void @llvm.dbg.value(metadata ptr %4, metadata !3209, metadata !DIExpression()), !dbg !3214
  %5 = icmp eq ptr %4, null, !dbg !3216
  br i1 %5, label %6, label %7, !dbg !3218

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !3219
  unreachable, !dbg !3219

7:                                                ; preds = %3
  ret ptr %4, !dbg !3220
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3202 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3201, metadata !DIExpression()), !dbg !3221
  call void @llvm.dbg.value(metadata i64 %1, metadata !3204, metadata !DIExpression()), !dbg !3221
  call void @llvm.dbg.value(metadata i64 %2, metadata !3205, metadata !DIExpression()), !dbg !3221
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !3222
  call void @llvm.dbg.value(metadata ptr %4, metadata !3209, metadata !DIExpression()), !dbg !3223
  %5 = icmp eq ptr %4, null, !dbg !3225
  br i1 %5, label %6, label %7, !dbg !3226

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !3227
  unreachable, !dbg !3227

7:                                                ; preds = %3
  ret ptr %4, !dbg !3228
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3229 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3233, metadata !DIExpression()), !dbg !3234
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !3235
  call void @llvm.dbg.value(metadata ptr %2, metadata !3209, metadata !DIExpression()), !dbg !3236
  %3 = icmp eq ptr %2, null, !dbg !3238
  br i1 %3, label %4, label %5, !dbg !3239

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3240
  unreachable, !dbg !3240

5:                                                ; preds = %1
  ret ptr %2, !dbg !3241
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3242 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3243 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3247, metadata !DIExpression()), !dbg !3248
  call void @llvm.dbg.value(metadata i64 %0, metadata !3249, metadata !DIExpression()), !dbg !3253
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !3255
  call void @llvm.dbg.value(metadata ptr %2, metadata !3209, metadata !DIExpression()), !dbg !3256
  %3 = icmp eq ptr %2, null, !dbg !3258
  br i1 %3, label %4, label %5, !dbg !3259

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3260
  unreachable, !dbg !3260

5:                                                ; preds = %1
  ret ptr %2, !dbg !3261
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3262 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3266, metadata !DIExpression()), !dbg !3267
  call void @llvm.dbg.value(metadata i64 %0, metadata !3233, metadata !DIExpression()), !dbg !3268
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !3270
  call void @llvm.dbg.value(metadata ptr %2, metadata !3209, metadata !DIExpression()), !dbg !3271
  %3 = icmp eq ptr %2, null, !dbg !3273
  br i1 %3, label %4, label %5, !dbg !3274

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3275
  unreachable, !dbg !3275

5:                                                ; preds = %1
  ret ptr %2, !dbg !3276
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3277 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3281, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata i64 %1, metadata !3282, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata ptr %0, metadata !3284, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i64 %1, metadata !3288, metadata !DIExpression()), !dbg !3289
  %3 = icmp eq i64 %1, 0, !dbg !3291
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3291
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #42, !dbg !3292
  call void @llvm.dbg.value(metadata ptr %5, metadata !3209, metadata !DIExpression()), !dbg !3293
  %6 = icmp eq ptr %5, null, !dbg !3295
  br i1 %6, label %7, label %8, !dbg !3296

7:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3297
  unreachable, !dbg !3297

8:                                                ; preds = %2
  ret ptr %5, !dbg !3298
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3299 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3300 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3304, metadata !DIExpression()), !dbg !3306
  call void @llvm.dbg.value(metadata i64 %1, metadata !3305, metadata !DIExpression()), !dbg !3306
  call void @llvm.dbg.value(metadata ptr %0, metadata !3307, metadata !DIExpression()), !dbg !3311
  call void @llvm.dbg.value(metadata i64 %1, metadata !3310, metadata !DIExpression()), !dbg !3311
  call void @llvm.dbg.value(metadata ptr %0, metadata !3284, metadata !DIExpression()), !dbg !3313
  call void @llvm.dbg.value(metadata i64 %1, metadata !3288, metadata !DIExpression()), !dbg !3313
  %3 = icmp eq i64 %1, 0, !dbg !3315
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3315
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #42, !dbg !3316
  call void @llvm.dbg.value(metadata ptr %5, metadata !3209, metadata !DIExpression()), !dbg !3317
  %6 = icmp eq ptr %5, null, !dbg !3319
  br i1 %6, label %7, label %8, !dbg !3320

7:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3321
  unreachable, !dbg !3321

8:                                                ; preds = %2
  ret ptr %5, !dbg !3322
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3323 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3327, metadata !DIExpression()), !dbg !3330
  call void @llvm.dbg.value(metadata i64 %1, metadata !3328, metadata !DIExpression()), !dbg !3330
  call void @llvm.dbg.value(metadata i64 %2, metadata !3329, metadata !DIExpression()), !dbg !3330
  call void @llvm.dbg.value(metadata ptr %0, metadata !3331, metadata !DIExpression()), !dbg !3336
  call void @llvm.dbg.value(metadata i64 %1, metadata !3334, metadata !DIExpression()), !dbg !3336
  call void @llvm.dbg.value(metadata i64 %2, metadata !3335, metadata !DIExpression()), !dbg !3336
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !3338
  call void @llvm.dbg.value(metadata ptr %4, metadata !3209, metadata !DIExpression()), !dbg !3339
  %5 = icmp eq ptr %4, null, !dbg !3341
  br i1 %5, label %6, label %7, !dbg !3342

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !3343
  unreachable, !dbg !3343

7:                                                ; preds = %3
  ret ptr %4, !dbg !3344
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3345 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3349, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.value(metadata i64 %1, metadata !3350, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.value(metadata ptr null, metadata !3201, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata i64 %0, metadata !3204, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata i64 %1, metadata !3205, metadata !DIExpression()), !dbg !3352
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #36, !dbg !3354
  call void @llvm.dbg.value(metadata ptr %3, metadata !3209, metadata !DIExpression()), !dbg !3355
  %4 = icmp eq ptr %3, null, !dbg !3357
  br i1 %4, label %5, label %6, !dbg !3358

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3359
  unreachable, !dbg !3359

6:                                                ; preds = %2
  ret ptr %3, !dbg !3360
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3361 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3365, metadata !DIExpression()), !dbg !3367
  call void @llvm.dbg.value(metadata i64 %1, metadata !3366, metadata !DIExpression()), !dbg !3367
  call void @llvm.dbg.value(metadata ptr null, metadata !3327, metadata !DIExpression()), !dbg !3368
  call void @llvm.dbg.value(metadata i64 %0, metadata !3328, metadata !DIExpression()), !dbg !3368
  call void @llvm.dbg.value(metadata i64 %1, metadata !3329, metadata !DIExpression()), !dbg !3368
  call void @llvm.dbg.value(metadata ptr null, metadata !3331, metadata !DIExpression()), !dbg !3370
  call void @llvm.dbg.value(metadata i64 %0, metadata !3334, metadata !DIExpression()), !dbg !3370
  call void @llvm.dbg.value(metadata i64 %1, metadata !3335, metadata !DIExpression()), !dbg !3370
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #36, !dbg !3372
  call void @llvm.dbg.value(metadata ptr %3, metadata !3209, metadata !DIExpression()), !dbg !3373
  %4 = icmp eq ptr %3, null, !dbg !3375
  br i1 %4, label %5, label %6, !dbg !3376

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3377
  unreachable, !dbg !3377

6:                                                ; preds = %2
  ret ptr %3, !dbg !3378
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #11 !dbg !3379 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3383, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.value(metadata ptr %1, metadata !3384, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.value(metadata ptr %0, metadata !812, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata ptr %1, metadata !813, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i64 1, metadata !814, metadata !DIExpression()), !dbg !3386
  %3 = load i64, ptr %1, align 8, !dbg !3388, !tbaa !2488
  call void @llvm.dbg.value(metadata i64 %3, metadata !815, metadata !DIExpression()), !dbg !3386
  %4 = icmp eq ptr %0, null, !dbg !3389
  br i1 %4, label %5, label %8, !dbg !3391

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3392
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3395
  br label %15, !dbg !3395

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3396
  %10 = add nuw i64 %9, 1, !dbg !3396
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3396
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3396
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3396
  call void @llvm.dbg.value(metadata i64 %13, metadata !815, metadata !DIExpression()), !dbg !3386
  br i1 %12, label %14, label %15, !dbg !3399

14:                                               ; preds = %8
  tail call void @xalloc_die() #38, !dbg !3400
  unreachable, !dbg !3400

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3386
  call void @llvm.dbg.value(metadata i64 %16, metadata !815, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata ptr %0, metadata !3201, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.value(metadata i64 %16, metadata !3204, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.value(metadata i64 1, metadata !3205, metadata !DIExpression()), !dbg !3401
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #36, !dbg !3403
  call void @llvm.dbg.value(metadata ptr %17, metadata !3209, metadata !DIExpression()), !dbg !3404
  %18 = icmp eq ptr %17, null, !dbg !3406
  br i1 %18, label %19, label %20, !dbg !3407

19:                                               ; preds = %15
  tail call void @xalloc_die() #38, !dbg !3408
  unreachable, !dbg !3408

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !812, metadata !DIExpression()), !dbg !3386
  store i64 %16, ptr %1, align 8, !dbg !3409, !tbaa !2488
  ret ptr %17, !dbg !3410
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #11 !dbg !807 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !812, metadata !DIExpression()), !dbg !3411
  call void @llvm.dbg.value(metadata ptr %1, metadata !813, metadata !DIExpression()), !dbg !3411
  call void @llvm.dbg.value(metadata i64 %2, metadata !814, metadata !DIExpression()), !dbg !3411
  %4 = load i64, ptr %1, align 8, !dbg !3412, !tbaa !2488
  call void @llvm.dbg.value(metadata i64 %4, metadata !815, metadata !DIExpression()), !dbg !3411
  %5 = icmp eq ptr %0, null, !dbg !3413
  br i1 %5, label %6, label %13, !dbg !3414

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3415
  br i1 %7, label %8, label %20, !dbg !3416

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3417
  call void @llvm.dbg.value(metadata i64 %9, metadata !815, metadata !DIExpression()), !dbg !3411
  %10 = icmp ugt i64 %2, 128, !dbg !3419
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3420
  call void @llvm.dbg.value(metadata i64 %12, metadata !815, metadata !DIExpression()), !dbg !3411
  br label %20, !dbg !3421

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3422
  %15 = add nuw i64 %14, 1, !dbg !3422
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3422
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3422
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3422
  call void @llvm.dbg.value(metadata i64 %18, metadata !815, metadata !DIExpression()), !dbg !3411
  br i1 %17, label %19, label %20, !dbg !3423

19:                                               ; preds = %13
  tail call void @xalloc_die() #38, !dbg !3424
  unreachable, !dbg !3424

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3411
  call void @llvm.dbg.value(metadata i64 %21, metadata !815, metadata !DIExpression()), !dbg !3411
  call void @llvm.dbg.value(metadata ptr %0, metadata !3201, metadata !DIExpression()), !dbg !3425
  call void @llvm.dbg.value(metadata i64 %21, metadata !3204, metadata !DIExpression()), !dbg !3425
  call void @llvm.dbg.value(metadata i64 %2, metadata !3205, metadata !DIExpression()), !dbg !3425
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #36, !dbg !3427
  call void @llvm.dbg.value(metadata ptr %22, metadata !3209, metadata !DIExpression()), !dbg !3428
  %23 = icmp eq ptr %22, null, !dbg !3430
  br i1 %23, label %24, label %25, !dbg !3431

24:                                               ; preds = %20
  tail call void @xalloc_die() #38, !dbg !3432
  unreachable, !dbg !3432

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !812, metadata !DIExpression()), !dbg !3411
  store i64 %21, ptr %1, align 8, !dbg !3433, !tbaa !2488
  ret ptr %22, !dbg !3434
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #11 !dbg !819 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !827, metadata !DIExpression()), !dbg !3435
  call void @llvm.dbg.value(metadata ptr %1, metadata !828, metadata !DIExpression()), !dbg !3435
  call void @llvm.dbg.value(metadata i64 %2, metadata !829, metadata !DIExpression()), !dbg !3435
  call void @llvm.dbg.value(metadata i64 %3, metadata !830, metadata !DIExpression()), !dbg !3435
  call void @llvm.dbg.value(metadata i64 %4, metadata !831, metadata !DIExpression()), !dbg !3435
  %6 = load i64, ptr %1, align 8, !dbg !3436, !tbaa !2488
  call void @llvm.dbg.value(metadata i64 %6, metadata !832, metadata !DIExpression()), !dbg !3435
  %7 = ashr i64 %6, 1, !dbg !3437
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3437
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3437
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3437
  call void @llvm.dbg.value(metadata i64 %10, metadata !833, metadata !DIExpression()), !dbg !3435
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3439
  call void @llvm.dbg.value(metadata i64 %11, metadata !833, metadata !DIExpression()), !dbg !3435
  %12 = icmp sgt i64 %3, -1, !dbg !3440
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3442
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3442
  call void @llvm.dbg.value(metadata i64 %15, metadata !833, metadata !DIExpression()), !dbg !3435
  %16 = icmp slt i64 %4, 0, !dbg !3443
  br i1 %16, label %17, label %30, !dbg !3443

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3443
  br i1 %18, label %19, label %24, !dbg !3443

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3443
  %21 = udiv i64 9223372036854775807, %20, !dbg !3443
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3443
  br i1 %23, label %46, label %43, !dbg !3443

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3443
  br i1 %25, label %43, label %26, !dbg !3443

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3443
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3443
  %29 = icmp ult i64 %28, %15, !dbg !3443
  br i1 %29, label %46, label %43, !dbg !3443

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3443
  br i1 %31, label %43, label %32, !dbg !3443

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3443
  br i1 %33, label %34, label %40, !dbg !3443

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3443
  br i1 %35, label %43, label %36, !dbg !3443

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3443
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3443
  %39 = icmp ult i64 %38, %4, !dbg !3443
  br i1 %39, label %46, label %43, !dbg !3443

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !3443
  br i1 %42, label %46, label %43, !dbg !3443

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !834, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3435
  %44 = mul i64 %15, %4, !dbg !3443
  call void @llvm.dbg.value(metadata i64 %44, metadata !834, metadata !DIExpression()), !dbg !3435
  %45 = icmp slt i64 %44, 128, !dbg !3443
  br i1 %45, label %46, label %51, !dbg !3443

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !835, metadata !DIExpression()), !dbg !3435
  %48 = sdiv i64 %47, %4, !dbg !3444
  call void @llvm.dbg.value(metadata i64 %48, metadata !833, metadata !DIExpression()), !dbg !3435
  %49 = srem i64 %47, %4, !dbg !3447
  %50 = sub nsw i64 %47, %49, !dbg !3448
  call void @llvm.dbg.value(metadata i64 %50, metadata !834, metadata !DIExpression()), !dbg !3435
  br label %51, !dbg !3449

51:                                               ; preds = %43, %46
  %52 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3435
  %53 = phi i64 [ %50, %46 ], [ %44, %43 ], !dbg !3435
  call void @llvm.dbg.value(metadata i64 %53, metadata !834, metadata !DIExpression()), !dbg !3435
  call void @llvm.dbg.value(metadata i64 %52, metadata !833, metadata !DIExpression()), !dbg !3435
  %54 = icmp eq ptr %0, null, !dbg !3450
  br i1 %54, label %55, label %56, !dbg !3452

55:                                               ; preds = %51
  store i64 0, ptr %1, align 8, !dbg !3453, !tbaa !2488
  br label %56, !dbg !3454

56:                                               ; preds = %55, %51
  %57 = sub nsw i64 %52, %6, !dbg !3455
  %58 = icmp slt i64 %57, %2, !dbg !3457
  br i1 %58, label %59, label %96, !dbg !3458

59:                                               ; preds = %56
  %60 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3459
  %61 = extractvalue { i64, i1 } %60, 1, !dbg !3459
  %62 = extractvalue { i64, i1 } %60, 0, !dbg !3459
  call void @llvm.dbg.value(metadata i64 %62, metadata !833, metadata !DIExpression()), !dbg !3435
  %63 = icmp sgt i64 %62, %3
  %64 = select i1 %12, i1 %63, i1 false
  %65 = or i1 %61, %64, !dbg !3460
  br i1 %65, label %95, label %66, !dbg !3460

66:                                               ; preds = %59
  br i1 %16, label %67, label %80, !dbg !3461

67:                                               ; preds = %66
  %68 = icmp slt i64 %62, 0, !dbg !3461
  br i1 %68, label %69, label %74, !dbg !3461

69:                                               ; preds = %67
  %70 = sub i64 0, %4, !dbg !3461
  %71 = udiv i64 9223372036854775807, %70, !dbg !3461
  %72 = sub nsw i64 0, %71
  %73 = icmp slt i64 %62, %72, !dbg !3461
  br i1 %73, label %95, label %93, !dbg !3461

74:                                               ; preds = %67
  %75 = icmp eq i64 %4, -1, !dbg !3461
  br i1 %75, label %93, label %76, !dbg !3461

76:                                               ; preds = %74
  %77 = sub i64 0, %4, !dbg !3461
  %78 = udiv i64 -9223372036854775808, %77, !dbg !3461
  %79 = icmp ult i64 %78, %62, !dbg !3461
  br i1 %79, label %95, label %93, !dbg !3461

80:                                               ; preds = %66
  %81 = icmp eq i64 %4, 0, !dbg !3461
  br i1 %81, label %93, label %82, !dbg !3461

82:                                               ; preds = %80
  %83 = icmp slt i64 %62, 0, !dbg !3461
  br i1 %83, label %84, label %90, !dbg !3461

84:                                               ; preds = %82
  %85 = icmp eq i64 %62, -1, !dbg !3461
  br i1 %85, label %93, label %86, !dbg !3461

86:                                               ; preds = %84
  %87 = sub i64 0, %62, !dbg !3461
  %88 = udiv i64 -9223372036854775808, %87, !dbg !3461
  %89 = icmp ult i64 %88, %4, !dbg !3461
  br i1 %89, label %95, label %93, !dbg !3461

90:                                               ; preds = %82
  %91 = udiv i64 9223372036854775807, %4
  %92 = icmp ult i64 %91, %62, !dbg !3461
  br i1 %92, label %95, label %93, !dbg !3461

93:                                               ; preds = %69, %76, %86, %90, %80, %74, %84
  call void @llvm.dbg.value(metadata !DIArgList(i64 %62, i64 %4), metadata !834, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3435
  %94 = mul i64 %62, %4, !dbg !3461
  call void @llvm.dbg.value(metadata i64 %94, metadata !834, metadata !DIExpression()), !dbg !3435
  br label %96, !dbg !3462

95:                                               ; preds = %69, %76, %86, %90, %59
  tail call void @xalloc_die() #38, !dbg !3463
  unreachable, !dbg !3463

96:                                               ; preds = %93, %56
  %97 = phi i64 [ %62, %93 ], [ %52, %56 ], !dbg !3435
  %98 = phi i64 [ %94, %93 ], [ %53, %56 ], !dbg !3435
  call void @llvm.dbg.value(metadata i64 %98, metadata !834, metadata !DIExpression()), !dbg !3435
  call void @llvm.dbg.value(metadata i64 %97, metadata !833, metadata !DIExpression()), !dbg !3435
  call void @llvm.dbg.value(metadata ptr %0, metadata !3281, metadata !DIExpression()), !dbg !3464
  call void @llvm.dbg.value(metadata i64 %98, metadata !3282, metadata !DIExpression()), !dbg !3464
  call void @llvm.dbg.value(metadata ptr %0, metadata !3284, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i64 %98, metadata !3288, metadata !DIExpression()), !dbg !3466
  %99 = icmp eq i64 %98, 0, !dbg !3468
  %100 = select i1 %99, i64 1, i64 %98, !dbg !3468
  %101 = tail call ptr @realloc(ptr noundef %0, i64 noundef %100) #42, !dbg !3469
  call void @llvm.dbg.value(metadata ptr %101, metadata !3209, metadata !DIExpression()), !dbg !3470
  %102 = icmp eq ptr %101, null, !dbg !3472
  br i1 %102, label %103, label %104, !dbg !3473

103:                                              ; preds = %96
  tail call void @xalloc_die() #38, !dbg !3474
  unreachable, !dbg !3474

104:                                              ; preds = %96
  call void @llvm.dbg.value(metadata ptr %101, metadata !827, metadata !DIExpression()), !dbg !3435
  store i64 %97, ptr %1, align 8, !dbg !3475, !tbaa !2488
  ret ptr %101, !dbg !3476
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3477 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3479, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i64 %0, metadata !3481, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i64 1, metadata !3484, metadata !DIExpression()), !dbg !3485
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !3487
  call void @llvm.dbg.value(metadata ptr %2, metadata !3209, metadata !DIExpression()), !dbg !3488
  %3 = icmp eq ptr %2, null, !dbg !3490
  br i1 %3, label %4, label %5, !dbg !3491

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3492
  unreachable, !dbg !3492

5:                                                ; preds = %1
  ret ptr %2, !dbg !3493
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3494 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3482 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3481, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.value(metadata i64 %1, metadata !3484, metadata !DIExpression()), !dbg !3495
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !3496
  call void @llvm.dbg.value(metadata ptr %3, metadata !3209, metadata !DIExpression()), !dbg !3497
  %4 = icmp eq ptr %3, null, !dbg !3499
  br i1 %4, label %5, label %6, !dbg !3500

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3501
  unreachable, !dbg !3501

6:                                                ; preds = %2
  ret ptr %3, !dbg !3502
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3503 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3505, metadata !DIExpression()), !dbg !3506
  call void @llvm.dbg.value(metadata i64 %0, metadata !3507, metadata !DIExpression()), !dbg !3511
  call void @llvm.dbg.value(metadata i64 1, metadata !3510, metadata !DIExpression()), !dbg !3511
  call void @llvm.dbg.value(metadata i64 %0, metadata !3513, metadata !DIExpression()), !dbg !3517
  call void @llvm.dbg.value(metadata i64 1, metadata !3516, metadata !DIExpression()), !dbg !3517
  call void @llvm.dbg.value(metadata i64 %0, metadata !3513, metadata !DIExpression()), !dbg !3517
  call void @llvm.dbg.value(metadata i64 1, metadata !3516, metadata !DIExpression()), !dbg !3517
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !3519
  call void @llvm.dbg.value(metadata ptr %2, metadata !3209, metadata !DIExpression()), !dbg !3520
  %3 = icmp eq ptr %2, null, !dbg !3522
  br i1 %3, label %4, label %5, !dbg !3523

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3524
  unreachable, !dbg !3524

5:                                                ; preds = %1
  ret ptr %2, !dbg !3525
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3508 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3507, metadata !DIExpression()), !dbg !3526
  call void @llvm.dbg.value(metadata i64 %1, metadata !3510, metadata !DIExpression()), !dbg !3526
  call void @llvm.dbg.value(metadata i64 %0, metadata !3513, metadata !DIExpression()), !dbg !3527
  call void @llvm.dbg.value(metadata i64 %1, metadata !3516, metadata !DIExpression()), !dbg !3527
  call void @llvm.dbg.value(metadata i64 %0, metadata !3513, metadata !DIExpression()), !dbg !3527
  call void @llvm.dbg.value(metadata i64 %1, metadata !3516, metadata !DIExpression()), !dbg !3527
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !3529
  call void @llvm.dbg.value(metadata ptr %3, metadata !3209, metadata !DIExpression()), !dbg !3530
  %4 = icmp eq ptr %3, null, !dbg !3532
  br i1 %4, label %5, label %6, !dbg !3533

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3534
  unreachable, !dbg !3534

6:                                                ; preds = %2
  ret ptr %3, !dbg !3535
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3536 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3540, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.value(metadata i64 %1, metadata !3541, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.value(metadata i64 %1, metadata !3233, metadata !DIExpression()), !dbg !3543
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3545
  call void @llvm.dbg.value(metadata ptr %3, metadata !3209, metadata !DIExpression()), !dbg !3546
  %4 = icmp eq ptr %3, null, !dbg !3548
  br i1 %4, label %5, label %6, !dbg !3549

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3550
  unreachable, !dbg !3550

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3551, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.value(metadata ptr %0, metadata !3557, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.value(metadata i64 %1, metadata !3558, metadata !DIExpression()), !dbg !3559
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3561
  ret ptr %3, !dbg !3562
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3563 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3567, metadata !DIExpression()), !dbg !3569
  call void @llvm.dbg.value(metadata i64 %1, metadata !3568, metadata !DIExpression()), !dbg !3569
  call void @llvm.dbg.value(metadata i64 %1, metadata !3247, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata i64 %1, metadata !3249, metadata !DIExpression()), !dbg !3572
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3574
  call void @llvm.dbg.value(metadata ptr %3, metadata !3209, metadata !DIExpression()), !dbg !3575
  %4 = icmp eq ptr %3, null, !dbg !3577
  br i1 %4, label %5, label %6, !dbg !3578

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3579
  unreachable, !dbg !3579

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3551, metadata !DIExpression()), !dbg !3580
  call void @llvm.dbg.value(metadata ptr %0, metadata !3557, metadata !DIExpression()), !dbg !3580
  call void @llvm.dbg.value(metadata i64 %1, metadata !3558, metadata !DIExpression()), !dbg !3580
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3582
  ret ptr %3, !dbg !3583
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #11 !dbg !3584 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3588, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i64 %1, metadata !3589, metadata !DIExpression()), !dbg !3591
  %3 = add nsw i64 %1, 1, !dbg !3592
  call void @llvm.dbg.value(metadata i64 %3, metadata !3247, metadata !DIExpression()), !dbg !3593
  call void @llvm.dbg.value(metadata i64 %3, metadata !3249, metadata !DIExpression()), !dbg !3595
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3597
  call void @llvm.dbg.value(metadata ptr %4, metadata !3209, metadata !DIExpression()), !dbg !3598
  %5 = icmp eq ptr %4, null, !dbg !3600
  br i1 %5, label %6, label %7, !dbg !3601

6:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3602
  unreachable, !dbg !3602

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !3590, metadata !DIExpression()), !dbg !3591
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3603
  store i8 0, ptr %8, align 1, !dbg !3604, !tbaa !884
  call void @llvm.dbg.value(metadata ptr %4, metadata !3551, metadata !DIExpression()), !dbg !3605
  call void @llvm.dbg.value(metadata ptr %0, metadata !3557, metadata !DIExpression()), !dbg !3605
  call void @llvm.dbg.value(metadata i64 %1, metadata !3558, metadata !DIExpression()), !dbg !3605
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3607
  ret ptr %4, !dbg !3608
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #11 !dbg !3609 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3611, metadata !DIExpression()), !dbg !3612
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #37, !dbg !3613
  %3 = add i64 %2, 1, !dbg !3614
  call void @llvm.dbg.value(metadata ptr %0, metadata !3540, metadata !DIExpression()), !dbg !3615
  call void @llvm.dbg.value(metadata i64 %3, metadata !3541, metadata !DIExpression()), !dbg !3615
  call void @llvm.dbg.value(metadata i64 %3, metadata !3233, metadata !DIExpression()), !dbg !3617
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3619
  call void @llvm.dbg.value(metadata ptr %4, metadata !3209, metadata !DIExpression()), !dbg !3620
  %5 = icmp eq ptr %4, null, !dbg !3622
  br i1 %5, label %6, label %7, !dbg !3623

6:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3624
  unreachable, !dbg !3624

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3551, metadata !DIExpression()), !dbg !3625
  call void @llvm.dbg.value(metadata ptr %0, metadata !3557, metadata !DIExpression()), !dbg !3625
  call void @llvm.dbg.value(metadata i64 %3, metadata !3558, metadata !DIExpression()), !dbg !3625
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #36, !dbg !3627
  ret ptr %4, !dbg !3628
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3629 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3634, !tbaa !976
  call void @llvm.dbg.value(metadata i32 %1, metadata !3631, metadata !DIExpression()), !dbg !3635
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.155, ptr noundef nonnull @.str.2.156, i32 noundef 5) #36, !dbg !3634
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.157, ptr noundef %2) #36, !dbg !3634
  %3 = icmp eq i32 %1, 0, !dbg !3634
  tail call void @llvm.assume(i1 %3), !dbg !3634
  tail call void @abort() #38, !dbg !3636
  unreachable, !dbg !3636
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #11 !dbg !3637 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3675, metadata !DIExpression()), !dbg !3680
  %2 = tail call i64 @__fpending(ptr noundef %0) #36, !dbg !3681
  call void @llvm.dbg.value(metadata i1 poison, metadata !3676, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3680
  call void @llvm.dbg.value(metadata ptr %0, metadata !3682, metadata !DIExpression()), !dbg !3685
  %3 = load i32, ptr %0, align 8, !dbg !3687, !tbaa !3688
  %4 = and i32 %3, 32, !dbg !3689
  %5 = icmp eq i32 %4, 0, !dbg !3689
  call void @llvm.dbg.value(metadata i1 %5, metadata !3678, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3680
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #36, !dbg !3690
  %7 = icmp eq i32 %6, 0, !dbg !3691
  call void @llvm.dbg.value(metadata i1 %7, metadata !3679, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3680
  br i1 %5, label %8, label %18, !dbg !3692

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3694
  call void @llvm.dbg.value(metadata i1 %9, metadata !3676, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3680
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3695
  %11 = xor i1 %7, true, !dbg !3695
  %12 = sext i1 %11 to i32, !dbg !3695
  br i1 %10, label %21, label %13, !dbg !3695

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #39, !dbg !3696
  %15 = load i32, ptr %14, align 4, !dbg !3696, !tbaa !976
  %16 = icmp ne i32 %15, 9, !dbg !3697
  %17 = sext i1 %16 to i32, !dbg !3698
  br label %21, !dbg !3698

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3699

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #39, !dbg !3701
  store i32 0, ptr %20, align 4, !dbg !3703, !tbaa !976
  br label %21, !dbg !3701

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3680
  ret i32 %22, !dbg !3704
}

; Function Attrs: nounwind
declare !dbg !3705 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #11 !dbg !3709 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3747, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata i32 0, metadata !3748, metadata !DIExpression()), !dbg !3751
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3752
  call void @llvm.dbg.value(metadata i32 %2, metadata !3749, metadata !DIExpression()), !dbg !3751
  %3 = icmp slt i32 %2, 0, !dbg !3753
  br i1 %3, label %4, label %6, !dbg !3755

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3756
  br label %24, !dbg !3757

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #36, !dbg !3758
  %8 = icmp eq i32 %7, 0, !dbg !3758
  br i1 %8, label %13, label %9, !dbg !3760

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3761
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #36, !dbg !3762
  %12 = icmp eq i64 %11, -1, !dbg !3763
  br i1 %12, label %16, label %13, !dbg !3764

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #36, !dbg !3765
  %15 = icmp eq i32 %14, 0, !dbg !3765
  br i1 %15, label %16, label %18, !dbg !3766

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !3748, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata i32 0, metadata !3750, metadata !DIExpression()), !dbg !3751
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3767
  call void @llvm.dbg.value(metadata i32 %17, metadata !3750, metadata !DIExpression()), !dbg !3751
  br label %24, !dbg !3768

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #39, !dbg !3769
  %20 = load i32, ptr %19, align 4, !dbg !3769, !tbaa !976
  call void @llvm.dbg.value(metadata i32 %20, metadata !3748, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata i32 0, metadata !3750, metadata !DIExpression()), !dbg !3751
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3767
  call void @llvm.dbg.value(metadata i32 %21, metadata !3750, metadata !DIExpression()), !dbg !3751
  %22 = icmp eq i32 %20, 0, !dbg !3770
  br i1 %22, label %24, label %23, !dbg !3768

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3772, !tbaa !976
  call void @llvm.dbg.value(metadata i32 -1, metadata !3750, metadata !DIExpression()), !dbg !3751
  br label %24, !dbg !3774

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3751
  ret i32 %25, !dbg !3775
}

; Function Attrs: nofree nounwind
declare !dbg !3776 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3777 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !3778 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3779 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #11 !dbg !3782 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3820, metadata !DIExpression()), !dbg !3821
  %2 = icmp eq ptr %0, null, !dbg !3822
  br i1 %2, label %6, label %3, !dbg !3824

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #36, !dbg !3825
  %5 = icmp eq i32 %4, 0, !dbg !3825
  br i1 %5, label %6, label %8, !dbg !3826

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3827
  br label %16, !dbg !3828

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3829, metadata !DIExpression()), !dbg !3834
  %9 = load i32, ptr %0, align 8, !dbg !3836, !tbaa !3688
  %10 = and i32 %9, 256, !dbg !3838
  %11 = icmp eq i32 %10, 0, !dbg !3838
  br i1 %11, label %14, label %12, !dbg !3839

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #36, !dbg !3840
  br label %14, !dbg !3840

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3841
  br label %16, !dbg !3842

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3821
  ret i32 %17, !dbg !3843
}

; Function Attrs: nofree nounwind
declare !dbg !3844 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #11 !dbg !3845 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3884, metadata !DIExpression()), !dbg !3890
  call void @llvm.dbg.value(metadata i64 %1, metadata !3885, metadata !DIExpression()), !dbg !3890
  call void @llvm.dbg.value(metadata i32 %2, metadata !3886, metadata !DIExpression()), !dbg !3890
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3891
  %5 = load ptr, ptr %4, align 8, !dbg !3891, !tbaa !3892
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3893
  %7 = load ptr, ptr %6, align 8, !dbg !3893, !tbaa !3894
  %8 = icmp eq ptr %5, %7, !dbg !3895
  br i1 %8, label %9, label %27, !dbg !3896

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3897
  %11 = load ptr, ptr %10, align 8, !dbg !3897, !tbaa !1244
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3898
  %13 = load ptr, ptr %12, align 8, !dbg !3898, !tbaa !3899
  %14 = icmp eq ptr %11, %13, !dbg !3900
  br i1 %14, label %15, label %27, !dbg !3901

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3902
  %17 = load ptr, ptr %16, align 8, !dbg !3902, !tbaa !3903
  %18 = icmp eq ptr %17, null, !dbg !3904
  br i1 %18, label %19, label %27, !dbg !3905

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3906
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #36, !dbg !3907
  call void @llvm.dbg.value(metadata i64 %21, metadata !3887, metadata !DIExpression()), !dbg !3908
  %22 = icmp eq i64 %21, -1, !dbg !3909
  br i1 %22, label %29, label %23, !dbg !3911

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3912, !tbaa !3688
  %25 = and i32 %24, -17, !dbg !3912
  store i32 %25, ptr %0, align 8, !dbg !3912, !tbaa !3688
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3913
  store i64 %21, ptr %26, align 8, !dbg !3914, !tbaa !3915
  br label %29, !dbg !3916

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3917
  br label %29, !dbg !3918

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3890
  ret i32 %30, !dbg !3919
}

; Function Attrs: nofree nounwind
declare !dbg !3920 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #11 !dbg !3923 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3928, metadata !DIExpression()), !dbg !3933
  call void @llvm.dbg.value(metadata ptr %1, metadata !3929, metadata !DIExpression()), !dbg !3933
  call void @llvm.dbg.value(metadata i64 %2, metadata !3930, metadata !DIExpression()), !dbg !3933
  call void @llvm.dbg.value(metadata ptr %3, metadata !3931, metadata !DIExpression()), !dbg !3933
  %5 = icmp eq ptr %1, null, !dbg !3934
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3936
  %7 = select i1 %5, ptr @.str.168, ptr %1, !dbg !3936
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3936
  call void @llvm.dbg.value(metadata i64 %8, metadata !3930, metadata !DIExpression()), !dbg !3933
  call void @llvm.dbg.value(metadata ptr %7, metadata !3929, metadata !DIExpression()), !dbg !3933
  call void @llvm.dbg.value(metadata ptr %6, metadata !3928, metadata !DIExpression()), !dbg !3933
  %9 = icmp eq ptr %3, null, !dbg !3937
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !3939
  call void @llvm.dbg.value(metadata ptr %10, metadata !3931, metadata !DIExpression()), !dbg !3933
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #36, !dbg !3940
  call void @llvm.dbg.value(metadata i64 %11, metadata !3932, metadata !DIExpression()), !dbg !3933
  %12 = icmp ult i64 %11, -3, !dbg !3941
  br i1 %12, label %13, label %17, !dbg !3943

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #37, !dbg !3944
  %15 = icmp eq i32 %14, 0, !dbg !3944
  br i1 %15, label %16, label %29, !dbg !3945

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !3946, metadata !DIExpression()), !dbg !3951
  call void @llvm.dbg.value(metadata ptr %10, metadata !3953, metadata !DIExpression()), !dbg !3958
  call void @llvm.dbg.value(metadata i32 0, metadata !3956, metadata !DIExpression()), !dbg !3958
  call void @llvm.dbg.value(metadata i64 8, metadata !3957, metadata !DIExpression()), !dbg !3958
  store i64 0, ptr %10, align 1, !dbg !3960
  br label %29, !dbg !3961

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !3962
  br i1 %18, label %19, label %20, !dbg !3964

19:                                               ; preds = %17
  tail call void @abort() #38, !dbg !3965
  unreachable, !dbg !3965

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !3966

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #36, !dbg !3968
  br i1 %23, label %29, label %24, !dbg !3969

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !3970
  br i1 %25, label %29, label %26, !dbg !3973

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !3974, !tbaa !884
  %28 = zext i8 %27 to i32, !dbg !3975
  store i32 %28, ptr %6, align 4, !dbg !3976, !tbaa !976
  br label %29, !dbg !3977

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3933
  ret i64 %30, !dbg !3978
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !3979 i32 @mbsinit(ptr noundef) local_unnamed_addr #34

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #35 !dbg !3985 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3987, metadata !DIExpression()), !dbg !3991
  call void @llvm.dbg.value(metadata i64 %1, metadata !3988, metadata !DIExpression()), !dbg !3991
  call void @llvm.dbg.value(metadata i64 %2, metadata !3989, metadata !DIExpression()), !dbg !3991
  %4 = icmp eq i64 %2, 0, !dbg !3992
  br i1 %4, label %8, label %5, !dbg !3992

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !3992
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3992
  br i1 %7, label %13, label %8, !dbg !3992

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3990, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3991
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3990, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3991
  %9 = mul i64 %2, %1, !dbg !3992
  call void @llvm.dbg.value(metadata i64 %9, metadata !3990, metadata !DIExpression()), !dbg !3991
  call void @llvm.dbg.value(metadata ptr %0, metadata !3994, metadata !DIExpression()), !dbg !3998
  call void @llvm.dbg.value(metadata i64 %9, metadata !3997, metadata !DIExpression()), !dbg !3998
  %10 = icmp eq i64 %9, 0, !dbg !4000
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4000
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #42, !dbg !4001
  br label %15, !dbg !4002

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3990, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3991
  %14 = tail call ptr @__errno_location() #39, !dbg !4003
  store i32 12, ptr %14, align 4, !dbg !4005, !tbaa !976
  br label %15, !dbg !4006

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !3991
  ret ptr %16, !dbg !4007
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #11 !dbg !4008 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4012, metadata !DIExpression()), !dbg !4017
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #36, !dbg !4018
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4013, metadata !DIExpression()), !dbg !4019
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #36, !dbg !4020
  %4 = icmp eq i32 %3, 0, !dbg !4020
  br i1 %4, label %5, label %12, !dbg !4022

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4023, metadata !DIExpression()), !dbg !4027
  %6 = load i16, ptr %2, align 16, !dbg !4030
  %7 = icmp eq i16 %6, 67, !dbg !4030
  br i1 %7, label %11, label %8, !dbg !4031

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4023, metadata !DIExpression()), !dbg !4032
  call void @llvm.dbg.value(metadata ptr @.str.1.173, metadata !4026, metadata !DIExpression()), !dbg !4032
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.173, i64 6), !dbg !4034
  %10 = icmp eq i32 %9, 0, !dbg !4035
  br i1 %10, label %11, label %12, !dbg !4036

11:                                               ; preds = %8, %5
  br label %12, !dbg !4037

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4017
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #36, !dbg !4038
  ret i1 %13, !dbg !4038
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #11 !dbg !4039 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4043, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata ptr %1, metadata !4044, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata i64 %2, metadata !4045, metadata !DIExpression()), !dbg !4046
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #36, !dbg !4047
  ret i32 %4, !dbg !4048
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #11 !dbg !4049 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4053, metadata !DIExpression()), !dbg !4054
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #36, !dbg !4055
  ret ptr %2, !dbg !4056
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #11 !dbg !4057 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4059, metadata !DIExpression()), !dbg !4061
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #36, !dbg !4062
  call void @llvm.dbg.value(metadata ptr %2, metadata !4060, metadata !DIExpression()), !dbg !4061
  ret ptr %2, !dbg !4063
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #11 !dbg !4064 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4066, metadata !DIExpression()), !dbg !4073
  call void @llvm.dbg.value(metadata ptr %1, metadata !4067, metadata !DIExpression()), !dbg !4073
  call void @llvm.dbg.value(metadata i64 %2, metadata !4068, metadata !DIExpression()), !dbg !4073
  call void @llvm.dbg.value(metadata i32 %0, metadata !4059, metadata !DIExpression()), !dbg !4074
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #36, !dbg !4076
  call void @llvm.dbg.value(metadata ptr %4, metadata !4060, metadata !DIExpression()), !dbg !4074
  call void @llvm.dbg.value(metadata ptr %4, metadata !4069, metadata !DIExpression()), !dbg !4073
  %5 = icmp eq ptr %4, null, !dbg !4077
  br i1 %5, label %6, label %9, !dbg !4078

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4079
  br i1 %7, label %19, label %8, !dbg !4082

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4083, !tbaa !884
  br label %19, !dbg !4084

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #37, !dbg !4085
  call void @llvm.dbg.value(metadata i64 %10, metadata !4070, metadata !DIExpression()), !dbg !4086
  %11 = icmp ult i64 %10, %2, !dbg !4087
  br i1 %11, label %12, label %14, !dbg !4089

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4090
  call void @llvm.dbg.value(metadata ptr %1, metadata !4092, metadata !DIExpression()), !dbg !4097
  call void @llvm.dbg.value(metadata ptr %4, metadata !4095, metadata !DIExpression()), !dbg !4097
  call void @llvm.dbg.value(metadata i64 %13, metadata !4096, metadata !DIExpression()), !dbg !4097
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #36, !dbg !4099
  br label %19, !dbg !4100

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4101
  br i1 %15, label %19, label %16, !dbg !4104

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4105
  call void @llvm.dbg.value(metadata ptr %1, metadata !4092, metadata !DIExpression()), !dbg !4107
  call void @llvm.dbg.value(metadata ptr %4, metadata !4095, metadata !DIExpression()), !dbg !4107
  call void @llvm.dbg.value(metadata i64 %17, metadata !4096, metadata !DIExpression()), !dbg !4107
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #36, !dbg !4109
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4110
  store i8 0, ptr %18, align 1, !dbg !4111, !tbaa !884
  br label %19, !dbg !4112

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4113
  ret i32 %20, !dbg !4114
}

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind willreturn memory(argmem: read) }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
attributes #42 = { nounwind allocsize(1) }
attributes #43 = { nounwind allocsize(0) }
attributes #44 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!86, !441, !450, !454, !469, !762, !794, !521, !535, !586, !796, !754, !803, !837, !839, !841, !843, !845, !778, !847, !850, !854, !856}
!llvm.ident = !{!858, !858, !858, !858, !858, !858, !858, !858, !858, !858, !858, !858, !858, !858, !858, !858, !858, !858, !858, !858, !858, !858, !858}
!llvm.module.flags = !{!859, !860, !861, !862, !863, !864}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 111, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/uname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f5faf8ba4adefe8131536a9e79ed0bb1")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
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
!112 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -130)
!113 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -131)
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
!186 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !188, line: 49, size: 1728, elements: !189)
!188 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
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
!211 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
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
!370 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
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
!423 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/utsname.h", directory: "", checksumkind: CSK_MD5, checksum: "025e6c1b1c47580289242d1d03561cee")
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
!468 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !469, file: !470, line: 66, type: !516, isLocal: false, isDefinition: true)
!469 = distinct !DICompileUnit(language: DW_LANG_C11, file: !470, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !471, globals: !472, splitDebugInlining: false, nameTableKind: None)
!470 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!471 = !{!122, !121}
!472 = !{!473, !475, !495, !497, !499, !501, !467, !503, !505, !507, !509, !514}
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(scope: null, file: !470, line: 272, type: !24, isLocal: true, isDefinition: true)
!475 = !DIGlobalVariableExpression(var: !476, expr: !DIExpression())
!476 = distinct !DIGlobalVariable(name: "old_file_name", scope: !477, file: !470, line: 304, type: !119, isLocal: true, isDefinition: true)
!477 = distinct !DISubprogram(name: "verror_at_line", scope: !470, file: !470, line: 298, type: !478, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !469, retainedNodes: !488)
!478 = !DISubroutineType(types: !479)
!479 = !{null, !83, !83, !119, !90, !119, !480}
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !482)
!482 = !{!483, !485, !486, !487}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !481, file: !484, baseType: !90, size: 32)
!484 = !DIFile(filename: "lib/error.c", directory: "/src")
!485 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !481, file: !484, baseType: !90, size: 32, offset: 32)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !481, file: !484, baseType: !122, size: 64, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !481, file: !484, baseType: !122, size: 64, offset: 128)
!488 = !{!489, !490, !491, !492, !493, !494}
!489 = !DILocalVariable(name: "status", arg: 1, scope: !477, file: !470, line: 298, type: !83)
!490 = !DILocalVariable(name: "errnum", arg: 2, scope: !477, file: !470, line: 298, type: !83)
!491 = !DILocalVariable(name: "file_name", arg: 3, scope: !477, file: !470, line: 298, type: !119)
!492 = !DILocalVariable(name: "line_number", arg: 4, scope: !477, file: !470, line: 298, type: !90)
!493 = !DILocalVariable(name: "message", arg: 5, scope: !477, file: !470, line: 298, type: !119)
!494 = !DILocalVariable(name: "args", arg: 6, scope: !477, file: !470, line: 298, type: !480)
!495 = !DIGlobalVariableExpression(var: !496, expr: !DIExpression())
!496 = distinct !DIGlobalVariable(name: "old_line_number", scope: !477, file: !470, line: 305, type: !90, isLocal: true, isDefinition: true)
!497 = !DIGlobalVariableExpression(var: !498, expr: !DIExpression())
!498 = distinct !DIGlobalVariable(scope: null, file: !470, line: 338, type: !248, isLocal: true, isDefinition: true)
!499 = !DIGlobalVariableExpression(var: !500, expr: !DIExpression())
!500 = distinct !DIGlobalVariable(scope: null, file: !470, line: 346, type: !280, isLocal: true, isDefinition: true)
!501 = !DIGlobalVariableExpression(var: !502, expr: !DIExpression())
!502 = distinct !DIGlobalVariable(scope: null, file: !470, line: 346, type: !255, isLocal: true, isDefinition: true)
!503 = !DIGlobalVariableExpression(var: !504, expr: !DIExpression())
!504 = distinct !DIGlobalVariable(name: "error_message_count", scope: !469, file: !470, line: 69, type: !90, isLocal: false, isDefinition: true)
!505 = !DIGlobalVariableExpression(var: !506, expr: !DIExpression())
!506 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !469, file: !470, line: 295, type: !83, isLocal: false, isDefinition: true)
!507 = !DIGlobalVariableExpression(var: !508, expr: !DIExpression())
!508 = distinct !DIGlobalVariable(scope: null, file: !470, line: 208, type: !275, isLocal: true, isDefinition: true)
!509 = !DIGlobalVariableExpression(var: !510, expr: !DIExpression())
!510 = distinct !DIGlobalVariable(scope: null, file: !470, line: 208, type: !511, isLocal: true, isDefinition: true)
!511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !512)
!512 = !{!513}
!513 = !DISubrange(count: 21)
!514 = !DIGlobalVariableExpression(var: !515, expr: !DIExpression())
!515 = distinct !DIGlobalVariable(scope: null, file: !470, line: 214, type: !24, isLocal: true, isDefinition: true)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DISubroutineType(types: !518)
!518 = !{null}
!519 = !DIGlobalVariableExpression(var: !520, expr: !DIExpression())
!520 = distinct !DIGlobalVariable(name: "program_name", scope: !521, file: !522, line: 31, type: !119, isLocal: false, isDefinition: true)
!521 = distinct !DICompileUnit(language: DW_LANG_C11, file: !522, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !523, globals: !524, splitDebugInlining: false, nameTableKind: None)
!522 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!523 = !{!85}
!524 = !{!519, !525, !527}
!525 = !DIGlobalVariableExpression(var: !526, expr: !DIExpression())
!526 = distinct !DIGlobalVariable(scope: null, file: !522, line: 46, type: !280, isLocal: true, isDefinition: true)
!527 = !DIGlobalVariableExpression(var: !528, expr: !DIExpression())
!528 = distinct !DIGlobalVariable(scope: null, file: !522, line: 49, type: !248, isLocal: true, isDefinition: true)
!529 = !DIGlobalVariableExpression(var: !530, expr: !DIExpression())
!530 = distinct !DIGlobalVariable(name: "utf07FF", scope: !531, file: !532, line: 46, type: !559, isLocal: true, isDefinition: true)
!531 = distinct !DISubprogram(name: "proper_name_lite", scope: !532, file: !532, line: 38, type: !533, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !535, retainedNodes: !537)
!532 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!533 = !DISubroutineType(types: !534)
!534 = !{!119, !119, !119}
!535 = distinct !DICompileUnit(language: DW_LANG_C11, file: !532, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !536, splitDebugInlining: false, nameTableKind: None)
!536 = !{!529}
!537 = !{!538, !539, !540, !541, !546}
!538 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !531, file: !532, line: 38, type: !119)
!539 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !531, file: !532, line: 38, type: !119)
!540 = !DILocalVariable(name: "translation", scope: !531, file: !532, line: 40, type: !119)
!541 = !DILocalVariable(name: "w", scope: !531, file: !532, line: 47, type: !542)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !543, line: 37, baseType: !544)
!543 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !211, line: 57, baseType: !545)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !211, line: 42, baseType: !90)
!546 = !DILocalVariable(name: "mbs", scope: !531, file: !532, line: 48, type: !547)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !548, line: 6, baseType: !549)
!548 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !550, line: 21, baseType: !551)
!550 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !550, line: 13, size: 64, elements: !552)
!552 = !{!553, !554}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !551, file: !550, line: 15, baseType: !83, size: 32)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !551, file: !550, line: 20, baseType: !555, size: 32, offset: 32)
!555 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !551, file: !550, line: 16, size: 32, elements: !556)
!556 = !{!557, !558}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !555, file: !550, line: 18, baseType: !90, size: 32)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !555, file: !550, line: 19, baseType: !248, size: 32)
!559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 16, elements: !256)
!560 = !DIGlobalVariableExpression(var: !561, expr: !DIExpression())
!561 = distinct !DIGlobalVariable(scope: null, file: !562, line: 78, type: !280, isLocal: true, isDefinition: true)
!562 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!563 = !DIGlobalVariableExpression(var: !564, expr: !DIExpression())
!564 = distinct !DIGlobalVariable(scope: null, file: !562, line: 79, type: !19, isLocal: true, isDefinition: true)
!565 = !DIGlobalVariableExpression(var: !566, expr: !DIExpression())
!566 = distinct !DIGlobalVariable(scope: null, file: !562, line: 80, type: !567, isLocal: true, isDefinition: true)
!567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !568)
!568 = !{!569}
!569 = !DISubrange(count: 13)
!570 = !DIGlobalVariableExpression(var: !571, expr: !DIExpression())
!571 = distinct !DIGlobalVariable(scope: null, file: !562, line: 81, type: !567, isLocal: true, isDefinition: true)
!572 = !DIGlobalVariableExpression(var: !573, expr: !DIExpression())
!573 = distinct !DIGlobalVariable(scope: null, file: !562, line: 82, type: !233, isLocal: true, isDefinition: true)
!574 = !DIGlobalVariableExpression(var: !575, expr: !DIExpression())
!575 = distinct !DIGlobalVariable(scope: null, file: !562, line: 83, type: !255, isLocal: true, isDefinition: true)
!576 = !DIGlobalVariableExpression(var: !577, expr: !DIExpression())
!577 = distinct !DIGlobalVariable(scope: null, file: !562, line: 84, type: !280, isLocal: true, isDefinition: true)
!578 = !DIGlobalVariableExpression(var: !579, expr: !DIExpression())
!579 = distinct !DIGlobalVariable(scope: null, file: !562, line: 85, type: !275, isLocal: true, isDefinition: true)
!580 = !DIGlobalVariableExpression(var: !581, expr: !DIExpression())
!581 = distinct !DIGlobalVariable(scope: null, file: !562, line: 86, type: !275, isLocal: true, isDefinition: true)
!582 = !DIGlobalVariableExpression(var: !583, expr: !DIExpression())
!583 = distinct !DIGlobalVariable(scope: null, file: !562, line: 87, type: !280, isLocal: true, isDefinition: true)
!584 = !DIGlobalVariableExpression(var: !585, expr: !DIExpression())
!585 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !586, file: !562, line: 76, type: !672, isLocal: false, isDefinition: true)
!586 = distinct !DICompileUnit(language: DW_LANG_C11, file: !562, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !587, retainedTypes: !607, globals: !608, splitDebugInlining: false, nameTableKind: None)
!587 = !{!588, !602, !94}
!588 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !589, line: 42, baseType: !90, size: 32, elements: !590)
!589 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!590 = !{!591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601}
!591 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!592 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!593 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!594 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!595 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!596 = !DIEnumerator(name: "c_quoting_style", value: 5)
!597 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!598 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!599 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!600 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!601 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!602 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !589, line: 254, baseType: !90, size: 32, elements: !603)
!603 = !{!604, !605, !606}
!604 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!605 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!606 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!607 = !{!83, !115, !116}
!608 = !{!560, !563, !565, !570, !572, !574, !576, !578, !580, !582, !584, !609, !613, !623, !625, !630, !632, !634, !636, !638, !661, !668, !670}
!609 = !DIGlobalVariableExpression(var: !610, expr: !DIExpression())
!610 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !586, file: !562, line: 92, type: !611, isLocal: false, isDefinition: true)
!611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !612, size: 320, elements: !132)
!612 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !588)
!613 = !DIGlobalVariableExpression(var: !614, expr: !DIExpression())
!614 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !586, file: !562, line: 1040, type: !615, isLocal: false, isDefinition: true)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !562, line: 56, size: 448, elements: !616)
!616 = !{!617, !618, !619, !621, !622}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !615, file: !562, line: 59, baseType: !588, size: 32)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !615, file: !562, line: 62, baseType: !83, size: 32, offset: 32)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !615, file: !562, line: 66, baseType: !620, size: 256, offset: 64)
!620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 256, elements: !281)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !615, file: !562, line: 69, baseType: !119, size: 64, offset: 320)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !615, file: !562, line: 72, baseType: !119, size: 64, offset: 384)
!623 = !DIGlobalVariableExpression(var: !624, expr: !DIExpression())
!624 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !586, file: !562, line: 107, type: !615, isLocal: true, isDefinition: true)
!625 = !DIGlobalVariableExpression(var: !626, expr: !DIExpression())
!626 = distinct !DIGlobalVariable(name: "slot0", scope: !586, file: !562, line: 831, type: !627, isLocal: true, isDefinition: true)
!627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !628)
!628 = !{!629}
!629 = !DISubrange(count: 256)
!630 = !DIGlobalVariableExpression(var: !631, expr: !DIExpression())
!631 = distinct !DIGlobalVariable(scope: null, file: !562, line: 321, type: !255, isLocal: true, isDefinition: true)
!632 = !DIGlobalVariableExpression(var: !633, expr: !DIExpression())
!633 = distinct !DIGlobalVariable(scope: null, file: !562, line: 357, type: !255, isLocal: true, isDefinition: true)
!634 = !DIGlobalVariableExpression(var: !635, expr: !DIExpression())
!635 = distinct !DIGlobalVariable(scope: null, file: !562, line: 358, type: !255, isLocal: true, isDefinition: true)
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(scope: null, file: !562, line: 199, type: !275, isLocal: true, isDefinition: true)
!638 = !DIGlobalVariableExpression(var: !639, expr: !DIExpression())
!639 = distinct !DIGlobalVariable(name: "quote", scope: !640, file: !562, line: 228, type: !659, isLocal: true, isDefinition: true)
!640 = distinct !DISubprogram(name: "gettext_quote", scope: !562, file: !562, line: 197, type: !641, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !586, retainedNodes: !643)
!641 = !DISubroutineType(types: !642)
!642 = !{!119, !119, !588}
!643 = !{!644, !645, !646, !647, !648}
!644 = !DILocalVariable(name: "msgid", arg: 1, scope: !640, file: !562, line: 197, type: !119)
!645 = !DILocalVariable(name: "s", arg: 2, scope: !640, file: !562, line: 197, type: !588)
!646 = !DILocalVariable(name: "translation", scope: !640, file: !562, line: 199, type: !119)
!647 = !DILocalVariable(name: "w", scope: !640, file: !562, line: 229, type: !542)
!648 = !DILocalVariable(name: "mbs", scope: !640, file: !562, line: 230, type: !649)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !548, line: 6, baseType: !650)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !550, line: 21, baseType: !651)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !550, line: 13, size: 64, elements: !652)
!652 = !{!653, !654}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !651, file: !550, line: 15, baseType: !83, size: 32)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !651, file: !550, line: 20, baseType: !655, size: 32, offset: 32)
!655 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !651, file: !550, line: 16, size: 32, elements: !656)
!656 = !{!657, !658}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !655, file: !550, line: 18, baseType: !90, size: 32)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !655, file: !550, line: 19, baseType: !248, size: 32)
!659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 64, elements: !660)
!660 = !{!257, !250}
!661 = !DIGlobalVariableExpression(var: !662, expr: !DIExpression())
!662 = distinct !DIGlobalVariable(name: "slotvec", scope: !586, file: !562, line: 834, type: !663, isLocal: true, isDefinition: true)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !562, line: 823, size: 128, elements: !665)
!665 = !{!666, !667}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !664, file: !562, line: 825, baseType: !116, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !664, file: !562, line: 826, baseType: !85, size: 64, offset: 64)
!668 = !DIGlobalVariableExpression(var: !669, expr: !DIExpression())
!669 = distinct !DIGlobalVariable(name: "nslots", scope: !586, file: !562, line: 832, type: !83, isLocal: true, isDefinition: true)
!670 = !DIGlobalVariableExpression(var: !671, expr: !DIExpression())
!671 = distinct !DIGlobalVariable(name: "slotvec0", scope: !586, file: !562, line: 833, type: !664, isLocal: true, isDefinition: true)
!672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !673, size: 704, elements: !674)
!673 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!674 = !{!675}
!675 = !DISubrange(count: 11)
!676 = !DIGlobalVariableExpression(var: !677, expr: !DIExpression())
!677 = distinct !DIGlobalVariable(scope: null, file: !678, line: 67, type: !348, isLocal: true, isDefinition: true)
!678 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!679 = !DIGlobalVariableExpression(var: !680, expr: !DIExpression())
!680 = distinct !DIGlobalVariable(scope: null, file: !678, line: 69, type: !275, isLocal: true, isDefinition: true)
!681 = !DIGlobalVariableExpression(var: !682, expr: !DIExpression())
!682 = distinct !DIGlobalVariable(scope: null, file: !678, line: 83, type: !275, isLocal: true, isDefinition: true)
!683 = !DIGlobalVariableExpression(var: !684, expr: !DIExpression())
!684 = distinct !DIGlobalVariable(scope: null, file: !678, line: 83, type: !248, isLocal: true, isDefinition: true)
!685 = !DIGlobalVariableExpression(var: !686, expr: !DIExpression())
!686 = distinct !DIGlobalVariable(scope: null, file: !678, line: 85, type: !255, isLocal: true, isDefinition: true)
!687 = !DIGlobalVariableExpression(var: !688, expr: !DIExpression())
!688 = distinct !DIGlobalVariable(scope: null, file: !678, line: 88, type: !689, isLocal: true, isDefinition: true)
!689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !690)
!690 = !{!691}
!691 = !DISubrange(count: 171)
!692 = !DIGlobalVariableExpression(var: !693, expr: !DIExpression())
!693 = distinct !DIGlobalVariable(scope: null, file: !678, line: 88, type: !694, isLocal: true, isDefinition: true)
!694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !695)
!695 = !{!696}
!696 = !DISubrange(count: 34)
!697 = !DIGlobalVariableExpression(var: !698, expr: !DIExpression())
!698 = distinct !DIGlobalVariable(scope: null, file: !678, line: 105, type: !322, isLocal: true, isDefinition: true)
!699 = !DIGlobalVariableExpression(var: !700, expr: !DIExpression())
!700 = distinct !DIGlobalVariable(scope: null, file: !678, line: 109, type: !9, isLocal: true, isDefinition: true)
!701 = !DIGlobalVariableExpression(var: !702, expr: !DIExpression())
!702 = distinct !DIGlobalVariable(scope: null, file: !678, line: 113, type: !703, isLocal: true, isDefinition: true)
!703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !704)
!704 = !{!705}
!705 = !DISubrange(count: 28)
!706 = !DIGlobalVariableExpression(var: !707, expr: !DIExpression())
!707 = distinct !DIGlobalVariable(scope: null, file: !678, line: 120, type: !708, isLocal: true, isDefinition: true)
!708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !709)
!709 = !{!710}
!710 = !DISubrange(count: 32)
!711 = !DIGlobalVariableExpression(var: !712, expr: !DIExpression())
!712 = distinct !DIGlobalVariable(scope: null, file: !678, line: 127, type: !713, isLocal: true, isDefinition: true)
!713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !714)
!714 = !{!715}
!715 = !DISubrange(count: 36)
!716 = !DIGlobalVariableExpression(var: !717, expr: !DIExpression())
!717 = distinct !DIGlobalVariable(scope: null, file: !678, line: 134, type: !302, isLocal: true, isDefinition: true)
!718 = !DIGlobalVariableExpression(var: !719, expr: !DIExpression())
!719 = distinct !DIGlobalVariable(scope: null, file: !678, line: 142, type: !720, isLocal: true, isDefinition: true)
!720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !721)
!721 = !{!722}
!722 = !DISubrange(count: 44)
!723 = !DIGlobalVariableExpression(var: !724, expr: !DIExpression())
!724 = distinct !DIGlobalVariable(scope: null, file: !678, line: 150, type: !725, isLocal: true, isDefinition: true)
!725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !726)
!726 = !{!727}
!727 = !DISubrange(count: 48)
!728 = !DIGlobalVariableExpression(var: !729, expr: !DIExpression())
!729 = distinct !DIGlobalVariable(scope: null, file: !678, line: 159, type: !730, isLocal: true, isDefinition: true)
!730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !731)
!731 = !{!732}
!732 = !DISubrange(count: 52)
!733 = !DIGlobalVariableExpression(var: !734, expr: !DIExpression())
!734 = distinct !DIGlobalVariable(scope: null, file: !678, line: 170, type: !39, isLocal: true, isDefinition: true)
!735 = !DIGlobalVariableExpression(var: !736, expr: !DIExpression())
!736 = distinct !DIGlobalVariable(scope: null, file: !678, line: 248, type: !233, isLocal: true, isDefinition: true)
!737 = !DIGlobalVariableExpression(var: !738, expr: !DIExpression())
!738 = distinct !DIGlobalVariable(scope: null, file: !678, line: 248, type: !327, isLocal: true, isDefinition: true)
!739 = !DIGlobalVariableExpression(var: !740, expr: !DIExpression())
!740 = distinct !DIGlobalVariable(scope: null, file: !678, line: 254, type: !233, isLocal: true, isDefinition: true)
!741 = !DIGlobalVariableExpression(var: !742, expr: !DIExpression())
!742 = distinct !DIGlobalVariable(scope: null, file: !678, line: 254, type: !143, isLocal: true, isDefinition: true)
!743 = !DIGlobalVariableExpression(var: !744, expr: !DIExpression())
!744 = distinct !DIGlobalVariable(scope: null, file: !678, line: 254, type: !302, isLocal: true, isDefinition: true)
!745 = !DIGlobalVariableExpression(var: !746, expr: !DIExpression())
!746 = distinct !DIGlobalVariable(scope: null, file: !678, line: 259, type: !3, isLocal: true, isDefinition: true)
!747 = !DIGlobalVariableExpression(var: !748, expr: !DIExpression())
!748 = distinct !DIGlobalVariable(scope: null, file: !678, line: 259, type: !749, isLocal: true, isDefinition: true)
!749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !750)
!750 = !{!751}
!751 = !DISubrange(count: 29)
!752 = !DIGlobalVariableExpression(var: !753, expr: !DIExpression())
!753 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !754, file: !755, line: 26, type: !757, isLocal: false, isDefinition: true)
!754 = distinct !DICompileUnit(language: DW_LANG_C11, file: !755, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !756, splitDebugInlining: false, nameTableKind: None)
!755 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!756 = !{!752}
!757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 376, elements: !758)
!758 = !{!759}
!759 = !DISubrange(count: 47)
!760 = !DIGlobalVariableExpression(var: !761, expr: !DIExpression())
!761 = distinct !DIGlobalVariable(name: "exit_failure", scope: !762, file: !763, line: 24, type: !765, isLocal: false, isDefinition: true)
!762 = distinct !DICompileUnit(language: DW_LANG_C11, file: !763, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !764, splitDebugInlining: false, nameTableKind: None)
!763 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!764 = !{!760}
!765 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !83)
!766 = !DIGlobalVariableExpression(var: !767, expr: !DIExpression())
!767 = distinct !DIGlobalVariable(scope: null, file: !768, line: 34, type: !264, isLocal: true, isDefinition: true)
!768 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!769 = !DIGlobalVariableExpression(var: !770, expr: !DIExpression())
!770 = distinct !DIGlobalVariable(scope: null, file: !768, line: 34, type: !275, isLocal: true, isDefinition: true)
!771 = !DIGlobalVariableExpression(var: !772, expr: !DIExpression())
!772 = distinct !DIGlobalVariable(scope: null, file: !768, line: 34, type: !297, isLocal: true, isDefinition: true)
!773 = !DIGlobalVariableExpression(var: !774, expr: !DIExpression())
!774 = distinct !DIGlobalVariable(scope: null, file: !775, line: 108, type: !126, isLocal: true, isDefinition: true)
!775 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!776 = !DIGlobalVariableExpression(var: !777, expr: !DIExpression())
!777 = distinct !DIGlobalVariable(name: "internal_state", scope: !778, file: !775, line: 97, type: !781, isLocal: true, isDefinition: true)
!778 = distinct !DICompileUnit(language: DW_LANG_C11, file: !775, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !779, globals: !780, splitDebugInlining: false, nameTableKind: None)
!779 = !{!122, !116, !121}
!780 = !{!773, !776}
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !548, line: 6, baseType: !782)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !550, line: 21, baseType: !783)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !550, line: 13, size: 64, elements: !784)
!784 = !{!785, !786}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !783, file: !550, line: 15, baseType: !83, size: 32)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !783, file: !550, line: 20, baseType: !787, size: 32, offset: 32)
!787 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !783, file: !550, line: 16, size: 32, elements: !788)
!788 = !{!789, !790}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !787, file: !550, line: 18, baseType: !90, size: 32)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !787, file: !550, line: 19, baseType: !248, size: 32)
!791 = !DIGlobalVariableExpression(var: !792, expr: !DIExpression())
!792 = distinct !DIGlobalVariable(scope: null, file: !793, line: 35, type: !19, isLocal: true, isDefinition: true)
!793 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!794 = distinct !DICompileUnit(language: DW_LANG_C11, file: !795, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!795 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!796 = distinct !DICompileUnit(language: DW_LANG_C11, file: !678, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !797, retainedTypes: !801, globals: !802, splitDebugInlining: false, nameTableKind: None)
!797 = !{!798}
!798 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !678, line: 40, baseType: !90, size: 32, elements: !799)
!799 = !{!800}
!800 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!801 = !{!122}
!802 = !{!676, !679, !681, !683, !685, !687, !692, !697, !699, !701, !706, !711, !716, !718, !723, !728, !733, !735, !737, !739, !741, !743, !745, !747}
!803 = distinct !DICompileUnit(language: DW_LANG_C11, file: !804, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !805, retainedTypes: !836, splitDebugInlining: false, nameTableKind: None)
!804 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!805 = !{!806, !818}
!806 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !807, file: !804, line: 188, baseType: !90, size: 32, elements: !816)
!807 = distinct !DISubprogram(name: "x2nrealloc", scope: !804, file: !804, line: 176, type: !808, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !811)
!808 = !DISubroutineType(types: !809)
!809 = !{!122, !122, !810, !116}
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!811 = !{!812, !813, !814, !815}
!812 = !DILocalVariable(name: "p", arg: 1, scope: !807, file: !804, line: 176, type: !122)
!813 = !DILocalVariable(name: "pn", arg: 2, scope: !807, file: !804, line: 176, type: !810)
!814 = !DILocalVariable(name: "s", arg: 3, scope: !807, file: !804, line: 176, type: !116)
!815 = !DILocalVariable(name: "n", scope: !807, file: !804, line: 178, type: !116)
!816 = !{!817}
!817 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!818 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !819, file: !804, line: 228, baseType: !90, size: 32, elements: !816)
!819 = distinct !DISubprogram(name: "xpalloc", scope: !804, file: !804, line: 223, type: !820, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !826)
!820 = !DISubroutineType(types: !821)
!821 = !{!122, !122, !822, !823, !825, !823}
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !824, line: 130, baseType: !825)
!824 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !117, line: 35, baseType: !212)
!826 = !{!827, !828, !829, !830, !831, !832, !833, !834, !835}
!827 = !DILocalVariable(name: "pa", arg: 1, scope: !819, file: !804, line: 223, type: !122)
!828 = !DILocalVariable(name: "pn", arg: 2, scope: !819, file: !804, line: 223, type: !822)
!829 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !819, file: !804, line: 223, type: !823)
!830 = !DILocalVariable(name: "n_max", arg: 4, scope: !819, file: !804, line: 223, type: !825)
!831 = !DILocalVariable(name: "s", arg: 5, scope: !819, file: !804, line: 223, type: !823)
!832 = !DILocalVariable(name: "n0", scope: !819, file: !804, line: 230, type: !823)
!833 = !DILocalVariable(name: "n", scope: !819, file: !804, line: 237, type: !823)
!834 = !DILocalVariable(name: "nbytes", scope: !819, file: !804, line: 248, type: !823)
!835 = !DILocalVariable(name: "adjusted_nbytes", scope: !819, file: !804, line: 252, type: !823)
!836 = !{!85, !122, !171, !212, !118}
!837 = distinct !DICompileUnit(language: DW_LANG_C11, file: !768, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !838, splitDebugInlining: false, nameTableKind: None)
!838 = !{!766, !769, !771}
!839 = distinct !DICompileUnit(language: DW_LANG_C11, file: !840, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!840 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!841 = distinct !DICompileUnit(language: DW_LANG_C11, file: !842, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!842 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!843 = distinct !DICompileUnit(language: DW_LANG_C11, file: !844, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !801, splitDebugInlining: false, nameTableKind: None)
!844 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!845 = distinct !DICompileUnit(language: DW_LANG_C11, file: !846, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !801, splitDebugInlining: false, nameTableKind: None)
!846 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!847 = distinct !DICompileUnit(language: DW_LANG_C11, file: !848, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !849, splitDebugInlining: false, nameTableKind: None)
!848 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!849 = !{!171, !118, !122}
!850 = distinct !DICompileUnit(language: DW_LANG_C11, file: !793, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !851, splitDebugInlining: false, nameTableKind: None)
!851 = !{!852, !791}
!852 = !DIGlobalVariableExpression(var: !853, expr: !DIExpression())
!853 = distinct !DIGlobalVariable(scope: null, file: !793, line: 35, type: !255, isLocal: true, isDefinition: true)
!854 = distinct !DICompileUnit(language: DW_LANG_C11, file: !855, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!855 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!856 = distinct !DICompileUnit(language: DW_LANG_C11, file: !857, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !801, splitDebugInlining: false, nameTableKind: None)
!857 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!858 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!859 = !{i32 7, !"Dwarf Version", i32 5}
!860 = !{i32 2, !"Debug Info Version", i32 3}
!861 = !{i32 1, !"wchar_size", i32 4}
!862 = !{i32 8, !"PIC Level", i32 2}
!863 = !{i32 7, !"PIE Level", i32 2}
!864 = !{i32 7, !"uwtable", i32 2}
!865 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 108, type: !866, scopeLine: 109, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !86, retainedNodes: !868)
!866 = !DISubroutineType(types: !867)
!867 = !{null, !83}
!868 = !{!869}
!869 = !DILocalVariable(name: "status", arg: 1, scope: !865, file: !2, line: 108, type: !83)
!870 = !DILocation(line: 0, scope: !865)
!871 = !DILocation(line: 110, column: 14, scope: !872)
!872 = distinct !DILexicalBlock(scope: !865, file: !2, line: 110, column: 7)
!873 = !DILocation(line: 110, column: 7, scope: !865)
!874 = !DILocation(line: 111, column: 5, scope: !875)
!875 = distinct !DILexicalBlock(scope: !872, file: !2, line: 111, column: 5)
!876 = !{!877, !877, i64 0}
!877 = !{!"any pointer", !878, i64 0}
!878 = !{!"omnipotent char", !879, i64 0}
!879 = !{!"Simple C/C++ TBAA"}
!880 = !DILocation(line: 114, column: 7, scope: !881)
!881 = distinct !DILexicalBlock(scope: !872, file: !2, line: 113, column: 5)
!882 = !DILocation(line: 116, column: 11, scope: !883)
!883 = distinct !DILexicalBlock(scope: !881, file: !2, line: 116, column: 11)
!884 = !{!878, !878, i64 0}
!885 = !DILocation(line: 116, column: 22, scope: !883)
!886 = !DILocation(line: 116, column: 11, scope: !881)
!887 = !DILocation(line: 118, column: 11, scope: !888)
!888 = distinct !DILexicalBlock(scope: !883, file: !2, line: 117, column: 9)
!889 = !DILocation(line: 122, column: 11, scope: !888)
!890 = !DILocation(line: 126, column: 11, scope: !888)
!891 = !DILocation(line: 129, column: 11, scope: !888)
!892 = !DILocation(line: 132, column: 11, scope: !888)
!893 = !DILocation(line: 135, column: 11, scope: !888)
!894 = !DILocation(line: 138, column: 11, scope: !888)
!895 = !DILocation(line: 141, column: 11, scope: !888)
!896 = !DILocation(line: 144, column: 11, scope: !888)
!897 = !DILocation(line: 147, column: 11, scope: !888)
!898 = !DILocation(line: 150, column: 9, scope: !888)
!899 = !DILocation(line: 153, column: 11, scope: !900)
!900 = distinct !DILexicalBlock(scope: !883, file: !2, line: 152, column: 9)
!901 = !DILocation(line: 159, column: 7, scope: !881)
!902 = !DILocation(line: 160, column: 7, scope: !881)
!903 = !DILocation(line: 161, column: 28, scope: !881)
!904 = !DILocalVariable(name: "program", arg: 1, scope: !905, file: !110, line: 836, type: !119)
!905 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !110, file: !110, line: 836, type: !411, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !86, retainedNodes: !906)
!906 = !{!904, !907, !914, !915, !917, !918}
!907 = !DILocalVariable(name: "infomap", scope: !905, file: !110, line: 838, type: !908)
!908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !909, size: 896, elements: !276)
!909 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !910)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !905, file: !110, line: 838, size: 128, elements: !911)
!911 = !{!912, !913}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !910, file: !110, line: 838, baseType: !119, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !910, file: !110, line: 838, baseType: !119, size: 64, offset: 64)
!914 = !DILocalVariable(name: "node", scope: !905, file: !110, line: 848, type: !119)
!915 = !DILocalVariable(name: "map_prog", scope: !905, file: !110, line: 849, type: !916)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!917 = !DILocalVariable(name: "lc_messages", scope: !905, file: !110, line: 861, type: !119)
!918 = !DILocalVariable(name: "url_program", scope: !905, file: !110, line: 874, type: !119)
!919 = !DILocation(line: 0, scope: !905, inlinedAt: !920)
!920 = distinct !DILocation(line: 161, column: 7, scope: !881)
!921 = !DILocation(line: 838, column: 67, scope: !905, inlinedAt: !920)
!922 = !DILocalVariable(name: "__s1", arg: 1, scope: !923, file: !924, line: 1359, type: !119)
!923 = distinct !DISubprogram(name: "streq", scope: !924, file: !924, line: 1359, type: !925, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !86, retainedNodes: !927)
!924 = !DIFile(filename: "./lib/string.h", directory: "/src")
!925 = !DISubroutineType(types: !926)
!926 = !{!171, !119, !119}
!927 = !{!922, !928}
!928 = !DILocalVariable(name: "__s2", arg: 2, scope: !923, file: !924, line: 1359, type: !119)
!929 = !DILocation(line: 0, scope: !923, inlinedAt: !930)
!930 = distinct !DILocation(line: 851, column: 33, scope: !905, inlinedAt: !920)
!931 = !DILocation(line: 1361, column: 11, scope: !923, inlinedAt: !930)
!932 = !DILocation(line: 1361, column: 10, scope: !923, inlinedAt: !930)
!933 = !DILocation(line: 851, column: 3, scope: !905, inlinedAt: !920)
!934 = !DILocation(line: 854, column: 17, scope: !935, inlinedAt: !920)
!935 = distinct !DILexicalBlock(scope: !905, file: !110, line: 854, column: 7)
!936 = !{!937, !877, i64 8}
!937 = !{!"infomap", !877, i64 0, !877, i64 8}
!938 = !DILocation(line: 857, column: 3, scope: !905, inlinedAt: !920)
!939 = !DILocation(line: 861, column: 29, scope: !905, inlinedAt: !920)
!940 = !DILocation(line: 862, column: 7, scope: !941, inlinedAt: !920)
!941 = distinct !DILexicalBlock(scope: !905, file: !110, line: 862, column: 7)
!942 = !DILocation(line: 862, column: 19, scope: !941, inlinedAt: !920)
!943 = !DILocation(line: 862, column: 22, scope: !941, inlinedAt: !920)
!944 = !DILocation(line: 862, column: 7, scope: !905, inlinedAt: !920)
!945 = !DILocation(line: 868, column: 7, scope: !946, inlinedAt: !920)
!946 = distinct !DILexicalBlock(scope: !941, file: !110, line: 863, column: 5)
!947 = !DILocation(line: 870, column: 5, scope: !946, inlinedAt: !920)
!948 = !DILocation(line: 854, column: 7, scope: !935, inlinedAt: !920)
!949 = !DILocation(line: 854, column: 7, scope: !905, inlinedAt: !920)
!950 = !DILocation(line: 0, scope: !923, inlinedAt: !951)
!951 = distinct !DILocation(line: 874, column: 29, scope: !905, inlinedAt: !920)
!952 = !DILocation(line: 874, column: 29, scope: !905, inlinedAt: !920)
!953 = !DILocation(line: 875, column: 3, scope: !905, inlinedAt: !920)
!954 = !DILocation(line: 877, column: 3, scope: !905, inlinedAt: !920)
!955 = !DILocation(line: 163, column: 3, scope: !865)
!956 = !DISubprogram(name: "dcgettext", scope: !957, file: !957, line: 51, type: !958, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !960)
!957 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!958 = !DISubroutineType(types: !959)
!959 = !{!85, !119, !119, !83}
!960 = !{}
!961 = !DISubprogram(name: "__fprintf_chk", scope: !962, file: !962, line: 93, type: !963, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !960)
!962 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!963 = !DISubroutineType(types: !964)
!964 = !{!83, !965, !83, !966, null}
!965 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !184)
!966 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !119)
!967 = !DISubprogram(name: "__printf_chk", scope: !962, file: !962, line: 95, type: !968, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !960)
!968 = !DISubroutineType(types: !969)
!969 = !{!83, !83, !966, null}
!970 = !DISubprogram(name: "fputs_unlocked", scope: !971, file: !971, line: 691, type: !972, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !960)
!971 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!972 = !DISubroutineType(types: !973)
!973 = !{!83, !966, !965}
!974 = !DILocation(line: 0, scope: !161)
!975 = !DILocation(line: 581, column: 7, scope: !169)
!976 = !{!977, !977, i64 0}
!977 = !{!"int", !878, i64 0}
!978 = !DILocation(line: 581, column: 19, scope: !169)
!979 = !DILocation(line: 581, column: 7, scope: !161)
!980 = !DILocation(line: 585, column: 26, scope: !168)
!981 = !DILocation(line: 0, scope: !168)
!982 = !DILocation(line: 586, column: 23, scope: !168)
!983 = !DILocation(line: 586, column: 28, scope: !168)
!984 = !DILocation(line: 586, column: 32, scope: !168)
!985 = !DILocation(line: 586, column: 38, scope: !168)
!986 = !DILocation(line: 0, scope: !923, inlinedAt: !987)
!987 = distinct !DILocation(line: 586, column: 41, scope: !168)
!988 = !DILocation(line: 1361, column: 11, scope: !923, inlinedAt: !987)
!989 = !DILocation(line: 1361, column: 10, scope: !923, inlinedAt: !987)
!990 = !DILocation(line: 586, column: 19, scope: !168)
!991 = !DILocation(line: 587, column: 5, scope: !168)
!992 = !DILocation(line: 588, column: 7, scope: !993)
!993 = distinct !DILexicalBlock(scope: !161, file: !110, line: 588, column: 7)
!994 = !DILocation(line: 588, column: 7, scope: !161)
!995 = !DILocation(line: 590, column: 7, scope: !996)
!996 = distinct !DILexicalBlock(scope: !993, file: !110, line: 589, column: 5)
!997 = !DILocation(line: 591, column: 7, scope: !996)
!998 = !DILocation(line: 595, column: 37, scope: !161)
!999 = !DILocation(line: 595, column: 35, scope: !161)
!1000 = !DILocation(line: 596, column: 29, scope: !161)
!1001 = !DILocation(line: 597, column: 8, scope: !177)
!1002 = !DILocation(line: 597, column: 7, scope: !161)
!1003 = !DILocation(line: 604, column: 24, scope: !176)
!1004 = !DILocation(line: 604, column: 12, scope: !177)
!1005 = !DILocation(line: 0, scope: !175)
!1006 = !DILocation(line: 610, column: 16, scope: !175)
!1007 = !DILocation(line: 610, column: 7, scope: !175)
!1008 = !DILocation(line: 611, column: 21, scope: !175)
!1009 = !{!1010, !1010, i64 0}
!1010 = !{!"short", !878, i64 0}
!1011 = !DILocation(line: 611, column: 19, scope: !175)
!1012 = !DILocation(line: 611, column: 16, scope: !175)
!1013 = !DILocation(line: 610, column: 30, scope: !175)
!1014 = distinct !{!1014, !1007, !1008, !1015}
!1015 = !{!"llvm.loop.mustprogress"}
!1016 = !DILocation(line: 612, column: 18, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !175, file: !110, line: 612, column: 11)
!1018 = !DILocation(line: 612, column: 11, scope: !175)
!1019 = !DILocation(line: 618, column: 5, scope: !175)
!1020 = !DILocation(line: 620, column: 23, scope: !161)
!1021 = !DILocation(line: 625, column: 39, scope: !161)
!1022 = !DILocation(line: 626, column: 3, scope: !161)
!1023 = !DILocation(line: 626, column: 10, scope: !161)
!1024 = !DILocation(line: 626, column: 21, scope: !161)
!1025 = !DILocation(line: 628, column: 44, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1027, file: !110, line: 628, column: 11)
!1027 = distinct !DILexicalBlock(scope: !161, file: !110, line: 627, column: 5)
!1028 = !DILocation(line: 628, column: 32, scope: !1026)
!1029 = !DILocation(line: 628, column: 49, scope: !1026)
!1030 = !DILocation(line: 628, column: 11, scope: !1027)
!1031 = !DILocation(line: 630, column: 11, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1027, file: !110, line: 630, column: 11)
!1033 = !DILocation(line: 630, column: 11, scope: !1027)
!1034 = !DILocation(line: 632, column: 26, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1036, file: !110, line: 632, column: 15)
!1036 = distinct !DILexicalBlock(scope: !1032, file: !110, line: 631, column: 9)
!1037 = !DILocation(line: 632, column: 34, scope: !1035)
!1038 = !DILocation(line: 632, column: 37, scope: !1035)
!1039 = !DILocation(line: 632, column: 15, scope: !1036)
!1040 = !DILocation(line: 636, column: 16, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1036, file: !110, line: 636, column: 15)
!1042 = !DILocation(line: 636, column: 29, scope: !1041)
!1043 = !DILocation(line: 640, column: 16, scope: !1027)
!1044 = distinct !{!1044, !1022, !1045, !1015}
!1045 = !DILocation(line: 641, column: 5, scope: !161)
!1046 = !DILocation(line: 644, column: 3, scope: !161)
!1047 = !DILocation(line: 0, scope: !923, inlinedAt: !1048)
!1048 = distinct !DILocation(line: 648, column: 31, scope: !161)
!1049 = !DILocation(line: 1361, column: 11, scope: !923, inlinedAt: !1048)
!1050 = !DILocation(line: 1361, column: 10, scope: !923, inlinedAt: !1048)
!1051 = !DILocation(line: 648, column: 31, scope: !161)
!1052 = !DILocation(line: 0, scope: !923, inlinedAt: !1053)
!1053 = distinct !DILocation(line: 649, column: 31, scope: !161)
!1054 = !DILocation(line: 1361, column: 11, scope: !923, inlinedAt: !1053)
!1055 = !DILocation(line: 1361, column: 10, scope: !923, inlinedAt: !1053)
!1056 = !DILocation(line: 649, column: 31, scope: !161)
!1057 = !DILocation(line: 0, scope: !923, inlinedAt: !1058)
!1058 = distinct !DILocation(line: 650, column: 31, scope: !161)
!1059 = !DILocation(line: 1361, column: 11, scope: !923, inlinedAt: !1058)
!1060 = !DILocation(line: 1361, column: 10, scope: !923, inlinedAt: !1058)
!1061 = !DILocation(line: 650, column: 31, scope: !161)
!1062 = !DILocation(line: 0, scope: !923, inlinedAt: !1063)
!1063 = distinct !DILocation(line: 651, column: 31, scope: !161)
!1064 = !DILocation(line: 1361, column: 11, scope: !923, inlinedAt: !1063)
!1065 = !DILocation(line: 1361, column: 10, scope: !923, inlinedAt: !1063)
!1066 = !DILocation(line: 651, column: 31, scope: !161)
!1067 = !DILocation(line: 0, scope: !923, inlinedAt: !1068)
!1068 = distinct !DILocation(line: 652, column: 31, scope: !161)
!1069 = !DILocation(line: 1361, column: 11, scope: !923, inlinedAt: !1068)
!1070 = !DILocation(line: 1361, column: 10, scope: !923, inlinedAt: !1068)
!1071 = !DILocation(line: 652, column: 31, scope: !161)
!1072 = !DILocation(line: 0, scope: !923, inlinedAt: !1073)
!1073 = distinct !DILocation(line: 653, column: 31, scope: !161)
!1074 = !DILocation(line: 1361, column: 11, scope: !923, inlinedAt: !1073)
!1075 = !DILocation(line: 1361, column: 10, scope: !923, inlinedAt: !1073)
!1076 = !DILocation(line: 653, column: 31, scope: !161)
!1077 = !DILocation(line: 0, scope: !923, inlinedAt: !1078)
!1078 = distinct !DILocation(line: 654, column: 31, scope: !161)
!1079 = !DILocation(line: 1361, column: 11, scope: !923, inlinedAt: !1078)
!1080 = !DILocation(line: 1361, column: 10, scope: !923, inlinedAt: !1078)
!1081 = !DILocation(line: 654, column: 31, scope: !161)
!1082 = !DILocation(line: 0, scope: !923, inlinedAt: !1083)
!1083 = distinct !DILocation(line: 655, column: 31, scope: !161)
!1084 = !DILocation(line: 1361, column: 11, scope: !923, inlinedAt: !1083)
!1085 = !DILocation(line: 1361, column: 10, scope: !923, inlinedAt: !1083)
!1086 = !DILocation(line: 655, column: 31, scope: !161)
!1087 = !DILocation(line: 0, scope: !923, inlinedAt: !1088)
!1088 = distinct !DILocation(line: 656, column: 31, scope: !161)
!1089 = !DILocation(line: 1361, column: 11, scope: !923, inlinedAt: !1088)
!1090 = !DILocation(line: 1361, column: 10, scope: !923, inlinedAt: !1088)
!1091 = !DILocation(line: 656, column: 31, scope: !161)
!1092 = !DILocation(line: 0, scope: !923, inlinedAt: !1093)
!1093 = distinct !DILocation(line: 657, column: 31, scope: !161)
!1094 = !DILocation(line: 1361, column: 11, scope: !923, inlinedAt: !1093)
!1095 = !DILocation(line: 1361, column: 10, scope: !923, inlinedAt: !1093)
!1096 = !DILocation(line: 657, column: 31, scope: !161)
!1097 = !DILocation(line: 663, column: 7, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !161, file: !110, line: 663, column: 7)
!1099 = !DILocation(line: 664, column: 7, scope: !1098)
!1100 = !DILocation(line: 664, column: 10, scope: !1098)
!1101 = !DILocation(line: 663, column: 7, scope: !161)
!1102 = !DILocation(line: 669, column: 7, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1098, file: !110, line: 665, column: 5)
!1104 = !DILocation(line: 671, column: 5, scope: !1103)
!1105 = !DILocation(line: 676, column: 7, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1098, file: !110, line: 673, column: 5)
!1107 = !DILocation(line: 679, column: 3, scope: !161)
!1108 = !DILocation(line: 683, column: 3, scope: !161)
!1109 = !DILocation(line: 686, column: 3, scope: !161)
!1110 = !DILocation(line: 688, column: 3, scope: !161)
!1111 = !DILocation(line: 691, column: 3, scope: !161)
!1112 = !DILocation(line: 695, column: 3, scope: !161)
!1113 = !DILocation(line: 696, column: 1, scope: !161)
!1114 = !DISubprogram(name: "strcmp", scope: !1115, file: !1115, line: 156, type: !1116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !960)
!1115 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!83, !119, !119}
!1118 = !DISubprogram(name: "setlocale", scope: !1119, file: !1119, line: 122, type: !1120, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !960)
!1119 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!85, !83, !119}
!1122 = !DISubprogram(name: "strncmp", scope: !1115, file: !1115, line: 159, type: !1123, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !960)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{!83, !119, !119, !116}
!1125 = !DISubprogram(name: "exit", scope: !1126, file: !1126, line: 624, type: !866, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !960)
!1126 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1127 = !DISubprogram(name: "getenv", scope: !1126, file: !1126, line: 641, type: !1128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !960)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{!85, !119}
!1130 = !DISubprogram(name: "strspn", scope: !1115, file: !1115, line: 297, type: !1131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !960)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!118, !119, !119}
!1133 = !DISubprogram(name: "strchr", scope: !1115, file: !1115, line: 246, type: !1134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !960)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{!85, !119, !83}
!1136 = !DISubprogram(name: "__ctype_b_loc", scope: !95, file: !95, line: 79, type: !1137, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !960)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!1139}
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!1142 = !DISubprogram(name: "strcspn", scope: !1115, file: !1115, line: 293, type: !1131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !960)
!1143 = !DISubprogram(name: "fwrite_unlocked", scope: !971, file: !971, line: 704, type: !1144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !960)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!116, !1146, !116, !116, !965}
!1146 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1147)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1149 = !DILocation(line: 0, scope: !80)
!1150 = !DILocation(line: 297, column: 21, scope: !80)
!1151 = !DILocation(line: 297, column: 3, scope: !80)
!1152 = !DILocation(line: 298, column: 3, scope: !80)
!1153 = !DILocation(line: 299, column: 3, scope: !80)
!1154 = !DILocation(line: 300, column: 3, scope: !80)
!1155 = !DILocation(line: 302, column: 3, scope: !80)
!1156 = !DILocalVariable(name: "argc", arg: 1, scope: !1157, file: !2, line: 202, type: !83)
!1157 = distinct !DISubprogram(name: "decode_switches", scope: !2, file: !2, line: 202, type: !81, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !86, retainedNodes: !1158)
!1158 = !{!1156, !1159, !1160, !1161}
!1159 = !DILocalVariable(name: "argv", arg: 2, scope: !1157, file: !2, line: 202, type: !84)
!1160 = !DILocalVariable(name: "c", scope: !1157, file: !2, line: 204, type: !83)
!1161 = !DILocalVariable(name: "toprint", scope: !1157, file: !2, line: 205, type: !90)
!1162 = !DILocation(line: 0, scope: !1157, inlinedAt: !1163)
!1163 = distinct !DILocation(line: 304, column: 13, scope: !80)
!1164 = !DILocation(line: 207, column: 7, scope: !1165, inlinedAt: !1163)
!1165 = distinct !DILexicalBlock(scope: !1157, file: !2, line: 207, column: 7)
!1166 = !DILocation(line: 207, column: 18, scope: !1165, inlinedAt: !1163)
!1167 = !DILocation(line: 207, column: 7, scope: !1157, inlinedAt: !1163)
!1168 = !DILocation(line: 209, column: 19, scope: !1169, inlinedAt: !1163)
!1169 = distinct !DILexicalBlock(scope: !1165, file: !2, line: 208, column: 5)
!1170 = !DILocation(line: 209, column: 7, scope: !1169, inlinedAt: !1163)
!1171 = !DILocation(line: 215, column: 13, scope: !1172, inlinedAt: !1163)
!1172 = distinct !DILexicalBlock(scope: !1173, file: !2, line: 214, column: 13)
!1173 = distinct !DILexicalBlock(scope: !1169, file: !2, line: 212, column: 9)
!1174 = !DILocation(line: 217, column: 13, scope: !1172, inlinedAt: !1163)
!1175 = !DILocation(line: 220, column: 15, scope: !1172, inlinedAt: !1163)
!1176 = !DILocation(line: 227, column: 19, scope: !1177, inlinedAt: !1163)
!1177 = distinct !DILexicalBlock(scope: !1165, file: !2, line: 226, column: 5)
!1178 = !DILocation(line: 227, column: 7, scope: !1177, inlinedAt: !1163)
!1179 = !DILocation(line: 238, column: 23, scope: !1180, inlinedAt: !1163)
!1180 = distinct !DILexicalBlock(scope: !1181, file: !2, line: 232, column: 13)
!1181 = distinct !DILexicalBlock(scope: !1177, file: !2, line: 230, column: 9)
!1182 = !DILocation(line: 239, column: 15, scope: !1180, inlinedAt: !1163)
!1183 = !DILocation(line: 242, column: 23, scope: !1180, inlinedAt: !1163)
!1184 = !DILocation(line: 243, column: 15, scope: !1180, inlinedAt: !1163)
!1185 = !DILocation(line: 246, column: 23, scope: !1180, inlinedAt: !1163)
!1186 = !DILocation(line: 247, column: 15, scope: !1180, inlinedAt: !1163)
!1187 = !DILocation(line: 250, column: 23, scope: !1180, inlinedAt: !1163)
!1188 = !DILocation(line: 251, column: 15, scope: !1180, inlinedAt: !1163)
!1189 = !DILocation(line: 254, column: 23, scope: !1180, inlinedAt: !1163)
!1190 = !DILocation(line: 255, column: 15, scope: !1180, inlinedAt: !1163)
!1191 = !DILocation(line: 258, column: 23, scope: !1180, inlinedAt: !1163)
!1192 = !DILocation(line: 259, column: 15, scope: !1180, inlinedAt: !1163)
!1193 = !DILocation(line: 262, column: 23, scope: !1180, inlinedAt: !1163)
!1194 = !DILocation(line: 263, column: 15, scope: !1180, inlinedAt: !1163)
!1195 = !DILocation(line: 266, column: 23, scope: !1180, inlinedAt: !1163)
!1196 = !DILocation(line: 267, column: 15, scope: !1180, inlinedAt: !1163)
!1197 = distinct !{!1197, !1178, !1198, !1015}
!1198 = !DILocation(line: 276, column: 9, scope: !1177, inlinedAt: !1163)
!1199 = !DILocation(line: 269, column: 13, scope: !1180, inlinedAt: !1163)
!1200 = !DILocation(line: 271, column: 13, scope: !1180, inlinedAt: !1163)
!1201 = !DILocation(line: 274, column: 15, scope: !1180, inlinedAt: !1163)
!1202 = !DILocation(line: 279, column: 15, scope: !1203, inlinedAt: !1163)
!1203 = distinct !DILexicalBlock(scope: !1157, file: !2, line: 279, column: 7)
!1204 = !DILocation(line: 279, column: 12, scope: !1203, inlinedAt: !1163)
!1205 = !DILocation(line: 279, column: 7, scope: !1157, inlinedAt: !1163)
!1206 = !DILocation(line: 281, column: 7, scope: !1207, inlinedAt: !1163)
!1207 = distinct !DILexicalBlock(scope: !1203, file: !2, line: 280, column: 5)
!1208 = !DILocation(line: 282, column: 7, scope: !1207, inlinedAt: !1163)
!1209 = !DILocation(line: 306, column: 15, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !80, file: !2, line: 306, column: 7)
!1211 = !DILocation(line: 306, column: 7, scope: !80)
!1212 = !DILocation(line: 310, column: 8, scope: !421)
!1213 = !DILocation(line: 309, column: 7, scope: !80)
!1214 = !DILocation(line: 313, column: 7, scope: !420)
!1215 = !DILocation(line: 313, column: 22, scope: !420)
!1216 = !DILocation(line: 315, column: 11, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !420, file: !2, line: 315, column: 11)
!1218 = !DILocation(line: 315, column: 25, scope: !1217)
!1219 = !DILocation(line: 315, column: 11, scope: !420)
!1220 = !DILocation(line: 316, column: 9, scope: !1217)
!1221 = !DILocation(line: 318, column: 19, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !420, file: !2, line: 318, column: 11)
!1223 = !DILocation(line: 318, column: 11, scope: !420)
!1224 = !DILocalVariable(name: "element", arg: 1, scope: !1225, file: !2, line: 184, type: !119)
!1225 = distinct !DISubprogram(name: "print_element_env", scope: !2, file: !2, line: 184, type: !162, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !86, retainedNodes: !1226)
!1226 = !{!1224, !1227}
!1227 = !DILocalVariable(name: "envvar", arg: 2, scope: !1225, file: !2, line: 184, type: !119)
!1228 = !DILocation(line: 0, scope: !1225, inlinedAt: !1229)
!1229 = distinct !DILocation(line: 319, column: 9, scope: !1222)
!1230 = !DILocation(line: 0, scope: !410, inlinedAt: !1231)
!1231 = distinct !DILocation(line: 194, column: 3, scope: !1225, inlinedAt: !1229)
!1232 = !DILocation(line: 173, column: 7, scope: !1233, inlinedAt: !1231)
!1233 = distinct !DILexicalBlock(scope: !410, file: !2, line: 173, column: 7)
!1234 = !DILocation(line: 173, column: 7, scope: !410, inlinedAt: !1231)
!1235 = !DILocalVariable(name: "__c", arg: 1, scope: !1236, file: !1237, line: 108, type: !83)
!1236 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1237, file: !1237, line: 108, type: !1238, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !86, retainedNodes: !1240)
!1237 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1238 = !DISubroutineType(types: !1239)
!1239 = !{!83, !83}
!1240 = !{!1235}
!1241 = !DILocation(line: 0, scope: !1236, inlinedAt: !1242)
!1242 = distinct !DILocation(line: 174, column: 5, scope: !1233, inlinedAt: !1231)
!1243 = !DILocation(line: 110, column: 10, scope: !1236, inlinedAt: !1242)
!1244 = !{!1245, !877, i64 40}
!1245 = !{!"_IO_FILE", !977, i64 0, !877, i64 8, !877, i64 16, !877, i64 24, !877, i64 32, !877, i64 40, !877, i64 48, !877, i64 56, !877, i64 64, !877, i64 72, !877, i64 80, !877, i64 88, !877, i64 96, !877, i64 104, !977, i64 112, !977, i64 116, !1246, i64 120, !1010, i64 128, !878, i64 130, !878, i64 131, !877, i64 136, !1246, i64 144, !877, i64 152, !877, i64 160, !877, i64 168, !877, i64 176, !1246, i64 184, !977, i64 192, !878, i64 196}
!1246 = !{!"long", !878, i64 0}
!1247 = !{!1245, !877, i64 48}
!1248 = !{!"branch_weights", i32 2000, i32 1}
!1249 = !DILocation(line: 175, column: 11, scope: !410, inlinedAt: !1231)
!1250 = !DILocation(line: 176, column: 3, scope: !410, inlinedAt: !1231)
!1251 = !DILocation(line: 319, column: 9, scope: !1222)
!1252 = !DILocation(line: 320, column: 19, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !420, file: !2, line: 320, column: 11)
!1254 = !DILocation(line: 320, column: 11, scope: !420)
!1255 = !DILocation(line: 321, column: 33, scope: !1253)
!1256 = !DILocation(line: 0, scope: !1225, inlinedAt: !1257)
!1257 = distinct !DILocation(line: 321, column: 9, scope: !1253)
!1258 = !DILocation(line: 0, scope: !410, inlinedAt: !1259)
!1259 = distinct !DILocation(line: 194, column: 3, scope: !1225, inlinedAt: !1257)
!1260 = !DILocation(line: 173, column: 7, scope: !1233, inlinedAt: !1259)
!1261 = !DILocation(line: 173, column: 7, scope: !410, inlinedAt: !1259)
!1262 = !DILocation(line: 0, scope: !1236, inlinedAt: !1263)
!1263 = distinct !DILocation(line: 174, column: 5, scope: !1233, inlinedAt: !1259)
!1264 = !DILocation(line: 110, column: 10, scope: !1236, inlinedAt: !1263)
!1265 = !DILocation(line: 175, column: 11, scope: !410, inlinedAt: !1259)
!1266 = !DILocation(line: 176, column: 3, scope: !410, inlinedAt: !1259)
!1267 = !DILocation(line: 321, column: 9, scope: !1253)
!1268 = !DILocation(line: 322, column: 19, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !420, file: !2, line: 322, column: 11)
!1270 = !DILocation(line: 322, column: 11, scope: !420)
!1271 = !DILocation(line: 323, column: 33, scope: !1269)
!1272 = !DILocation(line: 0, scope: !1225, inlinedAt: !1273)
!1273 = distinct !DILocation(line: 323, column: 9, scope: !1269)
!1274 = !DILocation(line: 0, scope: !410, inlinedAt: !1275)
!1275 = distinct !DILocation(line: 194, column: 3, scope: !1225, inlinedAt: !1273)
!1276 = !DILocation(line: 173, column: 7, scope: !1233, inlinedAt: !1275)
!1277 = !DILocation(line: 173, column: 7, scope: !410, inlinedAt: !1275)
!1278 = !DILocation(line: 0, scope: !1236, inlinedAt: !1279)
!1279 = distinct !DILocation(line: 174, column: 5, scope: !1233, inlinedAt: !1275)
!1280 = !DILocation(line: 110, column: 10, scope: !1236, inlinedAt: !1279)
!1281 = !DILocation(line: 175, column: 11, scope: !410, inlinedAt: !1275)
!1282 = !DILocation(line: 176, column: 3, scope: !410, inlinedAt: !1275)
!1283 = !DILocation(line: 323, column: 9, scope: !1269)
!1284 = !DILocation(line: 324, column: 19, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !420, file: !2, line: 324, column: 11)
!1286 = !DILocation(line: 324, column: 11, scope: !420)
!1287 = !DILocation(line: 325, column: 33, scope: !1285)
!1288 = !DILocation(line: 0, scope: !1225, inlinedAt: !1289)
!1289 = distinct !DILocation(line: 325, column: 9, scope: !1285)
!1290 = !DILocation(line: 0, scope: !410, inlinedAt: !1291)
!1291 = distinct !DILocation(line: 194, column: 3, scope: !1225, inlinedAt: !1289)
!1292 = !DILocation(line: 173, column: 7, scope: !1233, inlinedAt: !1291)
!1293 = !DILocation(line: 173, column: 7, scope: !410, inlinedAt: !1291)
!1294 = !DILocation(line: 0, scope: !1236, inlinedAt: !1295)
!1295 = distinct !DILocation(line: 174, column: 5, scope: !1233, inlinedAt: !1291)
!1296 = !DILocation(line: 110, column: 10, scope: !1236, inlinedAt: !1295)
!1297 = !DILocation(line: 175, column: 11, scope: !410, inlinedAt: !1291)
!1298 = !DILocation(line: 176, column: 3, scope: !410, inlinedAt: !1291)
!1299 = !DILocation(line: 325, column: 9, scope: !1285)
!1300 = !DILocation(line: 326, column: 19, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !420, file: !2, line: 326, column: 11)
!1302 = !DILocation(line: 326, column: 11, scope: !420)
!1303 = !DILocation(line: 327, column: 33, scope: !1301)
!1304 = !DILocation(line: 0, scope: !1225, inlinedAt: !1305)
!1305 = distinct !DILocation(line: 327, column: 9, scope: !1301)
!1306 = !DILocation(line: 0, scope: !410, inlinedAt: !1307)
!1307 = distinct !DILocation(line: 194, column: 3, scope: !1225, inlinedAt: !1305)
!1308 = !DILocation(line: 173, column: 7, scope: !1233, inlinedAt: !1307)
!1309 = !DILocation(line: 173, column: 7, scope: !410, inlinedAt: !1307)
!1310 = !DILocation(line: 0, scope: !1236, inlinedAt: !1311)
!1311 = distinct !DILocation(line: 174, column: 5, scope: !1233, inlinedAt: !1307)
!1312 = !DILocation(line: 110, column: 10, scope: !1236, inlinedAt: !1311)
!1313 = !DILocation(line: 175, column: 11, scope: !410, inlinedAt: !1307)
!1314 = !DILocation(line: 176, column: 3, scope: !410, inlinedAt: !1307)
!1315 = !DILocation(line: 327, column: 9, scope: !1301)
!1316 = !DILocation(line: 328, column: 5, scope: !421)
!1317 = !DILocation(line: 328, column: 5, scope: !420)
!1318 = !DILocation(line: 330, column: 15, scope: !433)
!1319 = !DILocation(line: 330, column: 7, scope: !80)
!1320 = !DILocation(line: 0, scope: !432)
!1321 = !DILocation(line: 0, scope: !410, inlinedAt: !1322)
!1322 = distinct !DILocation(line: 361, column: 9, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !432, file: !2, line: 360, column: 11)
!1324 = !DILocation(line: 173, column: 7, scope: !1233, inlinedAt: !1322)
!1325 = !DILocation(line: 173, column: 7, scope: !410, inlinedAt: !1322)
!1326 = !DILocation(line: 0, scope: !1236, inlinedAt: !1327)
!1327 = distinct !DILocation(line: 174, column: 5, scope: !1233, inlinedAt: !1322)
!1328 = !DILocation(line: 110, column: 10, scope: !1236, inlinedAt: !1327)
!1329 = !DILocation(line: 175, column: 11, scope: !410, inlinedAt: !1322)
!1330 = !DILocation(line: 176, column: 3, scope: !410, inlinedAt: !1322)
!1331 = !DILocation(line: 361, column: 9, scope: !1323)
!1332 = !DILocation(line: 364, column: 15, scope: !436)
!1333 = !DILocation(line: 364, column: 7, scope: !80)
!1334 = !DILocation(line: 0, scope: !435)
!1335 = !DILocation(line: 0, scope: !410, inlinedAt: !1336)
!1336 = distinct !DILocation(line: 386, column: 9, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !435, file: !2, line: 385, column: 11)
!1338 = !DILocation(line: 173, column: 7, scope: !1233, inlinedAt: !1336)
!1339 = !DILocation(line: 173, column: 7, scope: !410, inlinedAt: !1336)
!1340 = !DILocation(line: 0, scope: !1236, inlinedAt: !1341)
!1341 = distinct !DILocation(line: 174, column: 5, scope: !1233, inlinedAt: !1336)
!1342 = !DILocation(line: 110, column: 10, scope: !1236, inlinedAt: !1341)
!1343 = !DILocation(line: 175, column: 11, scope: !410, inlinedAt: !1336)
!1344 = !DILocation(line: 176, column: 3, scope: !410, inlinedAt: !1336)
!1345 = !DILocation(line: 386, column: 9, scope: !1337)
!1346 = !DILocation(line: 389, column: 15, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !80, file: !2, line: 389, column: 7)
!1348 = !DILocation(line: 389, column: 7, scope: !80)
!1349 = !DILocation(line: 0, scope: !410, inlinedAt: !1350)
!1350 = distinct !DILocation(line: 390, column: 5, scope: !1347)
!1351 = !DILocation(line: 173, column: 7, scope: !1233, inlinedAt: !1350)
!1352 = !DILocation(line: 173, column: 7, scope: !410, inlinedAt: !1350)
!1353 = !DILocation(line: 0, scope: !1236, inlinedAt: !1354)
!1354 = distinct !DILocation(line: 174, column: 5, scope: !1233, inlinedAt: !1350)
!1355 = !DILocation(line: 110, column: 10, scope: !1236, inlinedAt: !1354)
!1356 = !DILocation(line: 175, column: 11, scope: !410, inlinedAt: !1350)
!1357 = !DILocation(line: 176, column: 3, scope: !410, inlinedAt: !1350)
!1358 = !DILocation(line: 390, column: 5, scope: !1347)
!1359 = !DILocation(line: 0, scope: !1236, inlinedAt: !1360)
!1360 = distinct !DILocation(line: 392, column: 3, scope: !80)
!1361 = !DILocation(line: 110, column: 10, scope: !1236, inlinedAt: !1360)
!1362 = !DILocation(line: 394, column: 3, scope: !80)
!1363 = !DISubprogram(name: "bindtextdomain", scope: !957, file: !957, line: 86, type: !1364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !960)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!85, !119, !119}
!1366 = !DISubprogram(name: "textdomain", scope: !957, file: !957, line: 82, type: !1128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !960)
!1367 = !DISubprogram(name: "atexit", scope: !1126, file: !1126, line: 602, type: !1368, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !960)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{!83, !516}
!1370 = !DISubprogram(name: "getopt_long", scope: !370, file: !370, line: 66, type: !1371, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !960)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{!83, !83, !1373, !119, !1375, !375}
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!1376 = !DISubprogram(name: "uname", scope: !423, file: !423, line: 81, type: !1377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !960)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!83, !1379}
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!1380 = !DISubprogram(name: "__errno_location", scope: !1381, file: !1381, line: 37, type: !1382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !960)
!1381 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1382 = !DISubroutineType(types: !1383)
!1383 = !{!375}
!1384 = !DISubprogram(name: "__overflow", scope: !971, file: !971, line: 886, type: !1385, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !960)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{!83, !184, !83}
!1387 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !455, file: !455, line: 50, type: !411, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !1388)
!1388 = !{!1389}
!1389 = !DILocalVariable(name: "file", arg: 1, scope: !1387, file: !455, line: 50, type: !119)
!1390 = !DILocation(line: 0, scope: !1387)
!1391 = !DILocation(line: 52, column: 13, scope: !1387)
!1392 = !DILocation(line: 53, column: 1, scope: !1387)
!1393 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !455, file: !455, line: 87, type: !1394, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !1396)
!1394 = !DISubroutineType(types: !1395)
!1395 = !{null, !171}
!1396 = !{!1397}
!1397 = !DILocalVariable(name: "ignore", arg: 1, scope: !1393, file: !455, line: 87, type: !171)
!1398 = !DILocation(line: 0, scope: !1393)
!1399 = !DILocation(line: 89, column: 16, scope: !1393)
!1400 = !{!1401, !1401, i64 0}
!1401 = !{!"_Bool", !878, i64 0}
!1402 = !DILocation(line: 90, column: 1, scope: !1393)
!1403 = distinct !DISubprogram(name: "close_stdout", scope: !455, file: !455, line: 116, type: !517, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !1404)
!1404 = !{!1405}
!1405 = !DILocalVariable(name: "write_error", scope: !1406, file: !455, line: 121, type: !119)
!1406 = distinct !DILexicalBlock(scope: !1407, file: !455, line: 120, column: 5)
!1407 = distinct !DILexicalBlock(scope: !1403, file: !455, line: 118, column: 7)
!1408 = !DILocation(line: 118, column: 21, scope: !1407)
!1409 = !DILocation(line: 118, column: 7, scope: !1407)
!1410 = !DILocation(line: 118, column: 29, scope: !1407)
!1411 = !DILocation(line: 119, column: 7, scope: !1407)
!1412 = !DILocation(line: 119, column: 12, scope: !1407)
!1413 = !{i8 0, i8 2}
!1414 = !DILocation(line: 119, column: 25, scope: !1407)
!1415 = !DILocation(line: 119, column: 28, scope: !1407)
!1416 = !DILocation(line: 119, column: 34, scope: !1407)
!1417 = !DILocation(line: 118, column: 7, scope: !1403)
!1418 = !DILocation(line: 121, column: 33, scope: !1406)
!1419 = !DILocation(line: 0, scope: !1406)
!1420 = !DILocation(line: 122, column: 11, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1406, file: !455, line: 122, column: 11)
!1422 = !DILocation(line: 0, scope: !1421)
!1423 = !DILocation(line: 122, column: 11, scope: !1406)
!1424 = !DILocation(line: 123, column: 9, scope: !1421)
!1425 = !DILocation(line: 126, column: 9, scope: !1421)
!1426 = !DILocation(line: 128, column: 14, scope: !1406)
!1427 = !DILocation(line: 128, column: 7, scope: !1406)
!1428 = !DILocation(line: 133, column: 42, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1403, file: !455, line: 133, column: 7)
!1430 = !DILocation(line: 133, column: 28, scope: !1429)
!1431 = !DILocation(line: 133, column: 50, scope: !1429)
!1432 = !DILocation(line: 133, column: 7, scope: !1403)
!1433 = !DILocation(line: 134, column: 12, scope: !1429)
!1434 = !DILocation(line: 134, column: 5, scope: !1429)
!1435 = !DILocation(line: 135, column: 1, scope: !1403)
!1436 = !DISubprogram(name: "_exit", scope: !1437, file: !1437, line: 624, type: !866, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !960)
!1437 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1438 = distinct !DISubprogram(name: "verror", scope: !470, file: !470, line: 251, type: !1439, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !469, retainedNodes: !1441)
!1439 = !DISubroutineType(types: !1440)
!1440 = !{null, !83, !83, !119, !480}
!1441 = !{!1442, !1443, !1444, !1445}
!1442 = !DILocalVariable(name: "status", arg: 1, scope: !1438, file: !470, line: 251, type: !83)
!1443 = !DILocalVariable(name: "errnum", arg: 2, scope: !1438, file: !470, line: 251, type: !83)
!1444 = !DILocalVariable(name: "message", arg: 3, scope: !1438, file: !470, line: 251, type: !119)
!1445 = !DILocalVariable(name: "args", arg: 4, scope: !1438, file: !470, line: 251, type: !480)
!1446 = !DILocation(line: 0, scope: !1438)
!1447 = !DILocation(line: 261, column: 3, scope: !1438)
!1448 = !DILocation(line: 265, column: 7, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1438, file: !470, line: 265, column: 7)
!1450 = !DILocation(line: 265, column: 7, scope: !1438)
!1451 = !DILocation(line: 266, column: 5, scope: !1449)
!1452 = !DILocation(line: 272, column: 7, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1449, file: !470, line: 268, column: 5)
!1454 = !DILocation(line: 276, column: 3, scope: !1438)
!1455 = !DILocation(line: 282, column: 1, scope: !1438)
!1456 = distinct !DISubprogram(name: "flush_stdout", scope: !470, file: !470, line: 163, type: !517, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !469, retainedNodes: !1457)
!1457 = !{!1458}
!1458 = !DILocalVariable(name: "stdout_fd", scope: !1456, file: !470, line: 166, type: !83)
!1459 = !DILocation(line: 0, scope: !1456)
!1460 = !DILocalVariable(name: "fd", arg: 1, scope: !1461, file: !470, line: 145, type: !83)
!1461 = distinct !DISubprogram(name: "is_open", scope: !470, file: !470, line: 145, type: !1238, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !469, retainedNodes: !1462)
!1462 = !{!1460}
!1463 = !DILocation(line: 0, scope: !1461, inlinedAt: !1464)
!1464 = distinct !DILocation(line: 182, column: 25, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1456, file: !470, line: 182, column: 7)
!1466 = !DILocation(line: 157, column: 15, scope: !1461, inlinedAt: !1464)
!1467 = !DILocation(line: 157, column: 12, scope: !1461, inlinedAt: !1464)
!1468 = !DILocation(line: 182, column: 7, scope: !1456)
!1469 = !DILocation(line: 184, column: 5, scope: !1465)
!1470 = !DILocation(line: 185, column: 1, scope: !1456)
!1471 = distinct !DISubprogram(name: "error_tail", scope: !470, file: !470, line: 219, type: !1439, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !469, retainedNodes: !1472)
!1472 = !{!1473, !1474, !1475, !1476}
!1473 = !DILocalVariable(name: "status", arg: 1, scope: !1471, file: !470, line: 219, type: !83)
!1474 = !DILocalVariable(name: "errnum", arg: 2, scope: !1471, file: !470, line: 219, type: !83)
!1475 = !DILocalVariable(name: "message", arg: 3, scope: !1471, file: !470, line: 219, type: !119)
!1476 = !DILocalVariable(name: "args", arg: 4, scope: !1471, file: !470, line: 219, type: !480)
!1477 = !DILocation(line: 0, scope: !1471)
!1478 = !DILocation(line: 229, column: 13, scope: !1471)
!1479 = !DILocalVariable(name: "__stream", arg: 1, scope: !1480, file: !962, line: 132, type: !1483)
!1480 = distinct !DISubprogram(name: "vfprintf", scope: !962, file: !962, line: 132, type: !1481, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !469, retainedNodes: !1518)
!1481 = !DISubroutineType(types: !1482)
!1482 = !{!83, !1483, !966, !480}
!1483 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1484)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !186, line: 7, baseType: !1486)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !188, line: 49, size: 1728, elements: !1487)
!1487 = !{!1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1486, file: !188, line: 51, baseType: !83, size: 32)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1486, file: !188, line: 54, baseType: !85, size: 64, offset: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1486, file: !188, line: 55, baseType: !85, size: 64, offset: 128)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1486, file: !188, line: 56, baseType: !85, size: 64, offset: 192)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1486, file: !188, line: 57, baseType: !85, size: 64, offset: 256)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1486, file: !188, line: 58, baseType: !85, size: 64, offset: 320)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1486, file: !188, line: 59, baseType: !85, size: 64, offset: 384)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1486, file: !188, line: 60, baseType: !85, size: 64, offset: 448)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1486, file: !188, line: 61, baseType: !85, size: 64, offset: 512)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1486, file: !188, line: 64, baseType: !85, size: 64, offset: 576)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1486, file: !188, line: 65, baseType: !85, size: 64, offset: 640)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1486, file: !188, line: 66, baseType: !85, size: 64, offset: 704)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1486, file: !188, line: 68, baseType: !203, size: 64, offset: 768)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1486, file: !188, line: 70, baseType: !1502, size: 64, offset: 832)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1486, file: !188, line: 72, baseType: !83, size: 32, offset: 896)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1486, file: !188, line: 73, baseType: !83, size: 32, offset: 928)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1486, file: !188, line: 74, baseType: !210, size: 64, offset: 960)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1486, file: !188, line: 77, baseType: !115, size: 16, offset: 1024)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1486, file: !188, line: 78, baseType: !215, size: 8, offset: 1040)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1486, file: !188, line: 79, baseType: !126, size: 8, offset: 1048)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1486, file: !188, line: 81, baseType: !218, size: 64, offset: 1088)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1486, file: !188, line: 89, baseType: !221, size: 64, offset: 1152)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1486, file: !188, line: 91, baseType: !223, size: 64, offset: 1216)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1486, file: !188, line: 92, baseType: !226, size: 64, offset: 1280)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1486, file: !188, line: 93, baseType: !1502, size: 64, offset: 1344)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1486, file: !188, line: 94, baseType: !122, size: 64, offset: 1408)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1486, file: !188, line: 95, baseType: !116, size: 64, offset: 1472)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1486, file: !188, line: 96, baseType: !83, size: 32, offset: 1536)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1486, file: !188, line: 98, baseType: !233, size: 160, offset: 1568)
!1518 = !{!1479, !1519, !1520}
!1519 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1480, file: !962, line: 133, type: !966)
!1520 = !DILocalVariable(name: "__ap", arg: 3, scope: !1480, file: !962, line: 133, type: !480)
!1521 = !DILocation(line: 0, scope: !1480, inlinedAt: !1522)
!1522 = distinct !DILocation(line: 229, column: 3, scope: !1471)
!1523 = !DILocation(line: 135, column: 10, scope: !1480, inlinedAt: !1522)
!1524 = !DILocation(line: 232, column: 3, scope: !1471)
!1525 = !DILocation(line: 233, column: 7, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1471, file: !470, line: 233, column: 7)
!1527 = !DILocation(line: 233, column: 7, scope: !1471)
!1528 = !DILocalVariable(name: "errnum", arg: 1, scope: !1529, file: !470, line: 188, type: !83)
!1529 = distinct !DISubprogram(name: "print_errno_message", scope: !470, file: !470, line: 188, type: !866, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !469, retainedNodes: !1530)
!1530 = !{!1528, !1531, !1532}
!1531 = !DILocalVariable(name: "s", scope: !1529, file: !470, line: 190, type: !119)
!1532 = !DILocalVariable(name: "errbuf", scope: !1529, file: !470, line: 193, type: !1533)
!1533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1534)
!1534 = !{!1535}
!1535 = !DISubrange(count: 1024)
!1536 = !DILocation(line: 0, scope: !1529, inlinedAt: !1537)
!1537 = distinct !DILocation(line: 234, column: 5, scope: !1526)
!1538 = !DILocation(line: 193, column: 3, scope: !1529, inlinedAt: !1537)
!1539 = !DILocation(line: 193, column: 8, scope: !1529, inlinedAt: !1537)
!1540 = !DILocation(line: 195, column: 7, scope: !1529, inlinedAt: !1537)
!1541 = !DILocation(line: 207, column: 9, scope: !1542, inlinedAt: !1537)
!1542 = distinct !DILexicalBlock(scope: !1529, file: !470, line: 207, column: 7)
!1543 = !DILocation(line: 207, column: 7, scope: !1529, inlinedAt: !1537)
!1544 = !DILocation(line: 208, column: 9, scope: !1542, inlinedAt: !1537)
!1545 = !DILocation(line: 208, column: 5, scope: !1542, inlinedAt: !1537)
!1546 = !DILocation(line: 214, column: 3, scope: !1529, inlinedAt: !1537)
!1547 = !DILocation(line: 216, column: 1, scope: !1529, inlinedAt: !1537)
!1548 = !DILocation(line: 234, column: 5, scope: !1526)
!1549 = !DILocation(line: 238, column: 3, scope: !1471)
!1550 = !DILocalVariable(name: "__c", arg: 1, scope: !1551, file: !1237, line: 101, type: !83)
!1551 = distinct !DISubprogram(name: "putc_unlocked", scope: !1237, file: !1237, line: 101, type: !1552, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !469, retainedNodes: !1554)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{!83, !83, !1484}
!1554 = !{!1550, !1555}
!1555 = !DILocalVariable(name: "__stream", arg: 2, scope: !1551, file: !1237, line: 101, type: !1484)
!1556 = !DILocation(line: 0, scope: !1551, inlinedAt: !1557)
!1557 = distinct !DILocation(line: 238, column: 3, scope: !1471)
!1558 = !DILocation(line: 103, column: 10, scope: !1551, inlinedAt: !1557)
!1559 = !DILocation(line: 240, column: 3, scope: !1471)
!1560 = !DILocation(line: 241, column: 7, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1471, file: !470, line: 241, column: 7)
!1562 = !DILocation(line: 241, column: 7, scope: !1471)
!1563 = !DILocation(line: 242, column: 5, scope: !1561)
!1564 = !DILocation(line: 243, column: 1, scope: !1471)
!1565 = !DISubprogram(name: "__vfprintf_chk", scope: !962, file: !962, line: 96, type: !1566, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !960)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{!83, !1483, !83, !966, !480}
!1568 = !DISubprogram(name: "strerror_r", scope: !1115, file: !1115, line: 444, type: !1569, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !960)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!85, !83, !85, !116}
!1571 = !DISubprogram(name: "fflush_unlocked", scope: !971, file: !971, line: 239, type: !1572, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !960)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!83, !1484}
!1574 = !DISubprogram(name: "fcntl", scope: !1575, file: !1575, line: 149, type: !1576, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !960)
!1575 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1576 = !DISubroutineType(types: !1577)
!1577 = !{!83, !83, !83, null}
!1578 = distinct !DISubprogram(name: "error", scope: !470, file: !470, line: 285, type: !1579, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !469, retainedNodes: !1581)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{null, !83, !83, !119, null}
!1581 = !{!1582, !1583, !1584, !1585}
!1582 = !DILocalVariable(name: "status", arg: 1, scope: !1578, file: !470, line: 285, type: !83)
!1583 = !DILocalVariable(name: "errnum", arg: 2, scope: !1578, file: !470, line: 285, type: !83)
!1584 = !DILocalVariable(name: "message", arg: 3, scope: !1578, file: !470, line: 285, type: !119)
!1585 = !DILocalVariable(name: "ap", scope: !1578, file: !470, line: 287, type: !1586)
!1586 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !971, line: 52, baseType: !1587)
!1587 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1588, line: 14, baseType: !1589)
!1588 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!1589 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !484, baseType: !1590)
!1590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !481, size: 192, elements: !127)
!1591 = !DILocation(line: 0, scope: !1578)
!1592 = !DILocation(line: 287, column: 3, scope: !1578)
!1593 = !DILocation(line: 287, column: 11, scope: !1578)
!1594 = !DILocation(line: 288, column: 3, scope: !1578)
!1595 = !DILocation(line: 289, column: 3, scope: !1578)
!1596 = !DILocation(line: 290, column: 3, scope: !1578)
!1597 = !DILocation(line: 291, column: 1, scope: !1578)
!1598 = !DILocation(line: 0, scope: !477)
!1599 = !DILocation(line: 302, column: 7, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !477, file: !470, line: 302, column: 7)
!1601 = !DILocation(line: 302, column: 7, scope: !477)
!1602 = !DILocation(line: 307, column: 11, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1604, file: !470, line: 307, column: 11)
!1604 = distinct !DILexicalBlock(scope: !1600, file: !470, line: 303, column: 5)
!1605 = !DILocation(line: 307, column: 27, scope: !1603)
!1606 = !DILocation(line: 308, column: 11, scope: !1603)
!1607 = !DILocation(line: 308, column: 28, scope: !1603)
!1608 = !DILocation(line: 308, column: 25, scope: !1603)
!1609 = !DILocation(line: 309, column: 15, scope: !1603)
!1610 = !DILocation(line: 309, column: 33, scope: !1603)
!1611 = !DILocation(line: 310, column: 19, scope: !1603)
!1612 = !DILocation(line: 311, column: 22, scope: !1603)
!1613 = !DILocation(line: 311, column: 56, scope: !1603)
!1614 = !DILocation(line: 307, column: 11, scope: !1604)
!1615 = !DILocation(line: 316, column: 21, scope: !1604)
!1616 = !DILocation(line: 317, column: 23, scope: !1604)
!1617 = !DILocation(line: 318, column: 5, scope: !1604)
!1618 = !DILocation(line: 327, column: 3, scope: !477)
!1619 = !DILocation(line: 331, column: 7, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !477, file: !470, line: 331, column: 7)
!1621 = !DILocation(line: 331, column: 7, scope: !477)
!1622 = !DILocation(line: 332, column: 5, scope: !1620)
!1623 = !DILocation(line: 338, column: 7, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1620, file: !470, line: 334, column: 5)
!1625 = !DILocation(line: 346, column: 3, scope: !477)
!1626 = !DILocation(line: 350, column: 3, scope: !477)
!1627 = !DILocation(line: 356, column: 1, scope: !477)
!1628 = distinct !DISubprogram(name: "error_at_line", scope: !470, file: !470, line: 359, type: !1629, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !469, retainedNodes: !1631)
!1629 = !DISubroutineType(types: !1630)
!1630 = !{null, !83, !83, !119, !90, !119, null}
!1631 = !{!1632, !1633, !1634, !1635, !1636, !1637}
!1632 = !DILocalVariable(name: "status", arg: 1, scope: !1628, file: !470, line: 359, type: !83)
!1633 = !DILocalVariable(name: "errnum", arg: 2, scope: !1628, file: !470, line: 359, type: !83)
!1634 = !DILocalVariable(name: "file_name", arg: 3, scope: !1628, file: !470, line: 359, type: !119)
!1635 = !DILocalVariable(name: "line_number", arg: 4, scope: !1628, file: !470, line: 360, type: !90)
!1636 = !DILocalVariable(name: "message", arg: 5, scope: !1628, file: !470, line: 360, type: !119)
!1637 = !DILocalVariable(name: "ap", scope: !1628, file: !470, line: 362, type: !1586)
!1638 = !DILocation(line: 0, scope: !1628)
!1639 = !DILocation(line: 362, column: 3, scope: !1628)
!1640 = !DILocation(line: 362, column: 11, scope: !1628)
!1641 = !DILocation(line: 363, column: 3, scope: !1628)
!1642 = !DILocation(line: 364, column: 3, scope: !1628)
!1643 = !DILocation(line: 366, column: 3, scope: !1628)
!1644 = !DILocation(line: 367, column: 1, scope: !1628)
!1645 = distinct !DISubprogram(name: "getprogname", scope: !795, file: !795, line: 54, type: !1646, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !794, retainedNodes: !960)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!119}
!1648 = !DILocation(line: 58, column: 10, scope: !1645)
!1649 = !DILocation(line: 58, column: 3, scope: !1645)
!1650 = distinct !DISubprogram(name: "set_program_name", scope: !522, file: !522, line: 37, type: !411, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !521, retainedNodes: !1651)
!1651 = !{!1652, !1653, !1654}
!1652 = !DILocalVariable(name: "argv0", arg: 1, scope: !1650, file: !522, line: 37, type: !119)
!1653 = !DILocalVariable(name: "slash", scope: !1650, file: !522, line: 44, type: !119)
!1654 = !DILocalVariable(name: "base", scope: !1650, file: !522, line: 45, type: !119)
!1655 = !DILocation(line: 0, scope: !1650)
!1656 = !DILocation(line: 44, column: 23, scope: !1650)
!1657 = !DILocation(line: 45, column: 22, scope: !1650)
!1658 = !DILocation(line: 46, column: 17, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1650, file: !522, line: 46, column: 7)
!1660 = !DILocation(line: 46, column: 9, scope: !1659)
!1661 = !DILocation(line: 46, column: 25, scope: !1659)
!1662 = !DILocation(line: 46, column: 40, scope: !1659)
!1663 = !DILocalVariable(name: "__s1", arg: 1, scope: !1664, file: !924, line: 974, type: !1147)
!1664 = distinct !DISubprogram(name: "memeq", scope: !924, file: !924, line: 974, type: !1665, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !521, retainedNodes: !1667)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!171, !1147, !1147, !116}
!1667 = !{!1663, !1668, !1669}
!1668 = !DILocalVariable(name: "__s2", arg: 2, scope: !1664, file: !924, line: 974, type: !1147)
!1669 = !DILocalVariable(name: "__n", arg: 3, scope: !1664, file: !924, line: 974, type: !116)
!1670 = !DILocation(line: 0, scope: !1664, inlinedAt: !1671)
!1671 = distinct !DILocation(line: 46, column: 28, scope: !1659)
!1672 = !DILocation(line: 976, column: 11, scope: !1664, inlinedAt: !1671)
!1673 = !DILocation(line: 976, column: 10, scope: !1664, inlinedAt: !1671)
!1674 = !DILocation(line: 46, column: 7, scope: !1650)
!1675 = !DILocation(line: 49, column: 11, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1677, file: !522, line: 49, column: 11)
!1677 = distinct !DILexicalBlock(scope: !1659, file: !522, line: 47, column: 5)
!1678 = !DILocation(line: 49, column: 36, scope: !1676)
!1679 = !DILocation(line: 49, column: 11, scope: !1677)
!1680 = !DILocation(line: 65, column: 16, scope: !1650)
!1681 = !DILocation(line: 71, column: 27, scope: !1650)
!1682 = !DILocation(line: 74, column: 33, scope: !1650)
!1683 = !DILocation(line: 76, column: 1, scope: !1650)
!1684 = !DISubprogram(name: "strrchr", scope: !1115, file: !1115, line: 273, type: !1134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !960)
!1685 = !DILocation(line: 0, scope: !531)
!1686 = !DILocation(line: 40, column: 29, scope: !531)
!1687 = !DILocation(line: 41, column: 19, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !531, file: !532, line: 41, column: 7)
!1689 = !DILocation(line: 41, column: 7, scope: !531)
!1690 = !DILocation(line: 47, column: 3, scope: !531)
!1691 = !DILocation(line: 48, column: 3, scope: !531)
!1692 = !DILocation(line: 48, column: 13, scope: !531)
!1693 = !DILocalVariable(name: "ps", arg: 1, scope: !1694, file: !1695, line: 1135, type: !1698)
!1694 = distinct !DISubprogram(name: "mbszero", scope: !1695, file: !1695, line: 1135, type: !1696, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !535, retainedNodes: !1699)
!1695 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1696 = !DISubroutineType(types: !1697)
!1697 = !{null, !1698}
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!1699 = !{!1693}
!1700 = !DILocation(line: 0, scope: !1694, inlinedAt: !1701)
!1701 = distinct !DILocation(line: 48, column: 18, scope: !531)
!1702 = !DILocalVariable(name: "__dest", arg: 1, scope: !1703, file: !1704, line: 57, type: !122)
!1703 = distinct !DISubprogram(name: "memset", scope: !1704, file: !1704, line: 57, type: !1705, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, retainedNodes: !1707)
!1704 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1705 = !DISubroutineType(types: !1706)
!1706 = !{!122, !122, !83, !116}
!1707 = !{!1702, !1708, !1709}
!1708 = !DILocalVariable(name: "__ch", arg: 2, scope: !1703, file: !1704, line: 57, type: !83)
!1709 = !DILocalVariable(name: "__len", arg: 3, scope: !1703, file: !1704, line: 57, type: !116)
!1710 = !DILocation(line: 0, scope: !1703, inlinedAt: !1711)
!1711 = distinct !DILocation(line: 1137, column: 3, scope: !1694, inlinedAt: !1701)
!1712 = !DILocation(line: 59, column: 10, scope: !1703, inlinedAt: !1711)
!1713 = !DILocation(line: 49, column: 7, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !531, file: !532, line: 49, column: 7)
!1715 = !DILocation(line: 49, column: 39, scope: !1714)
!1716 = !DILocation(line: 49, column: 44, scope: !1714)
!1717 = !DILocation(line: 54, column: 1, scope: !531)
!1718 = !DISubprogram(name: "mbrtoc32", scope: !543, file: !543, line: 57, type: !1719, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !960)
!1719 = !DISubroutineType(types: !1720)
!1720 = !{!116, !1721, !966, !116, !1723}
!1721 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1722)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!1723 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1698)
!1724 = distinct !DISubprogram(name: "clone_quoting_options", scope: !562, file: !562, line: 113, type: !1725, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !586, retainedNodes: !1728)
!1725 = !DISubroutineType(types: !1726)
!1726 = !{!1727, !1727}
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!1728 = !{!1729, !1730, !1731}
!1729 = !DILocalVariable(name: "o", arg: 1, scope: !1724, file: !562, line: 113, type: !1727)
!1730 = !DILocalVariable(name: "saved_errno", scope: !1724, file: !562, line: 115, type: !83)
!1731 = !DILocalVariable(name: "p", scope: !1724, file: !562, line: 116, type: !1727)
!1732 = !DILocation(line: 0, scope: !1724)
!1733 = !DILocation(line: 115, column: 21, scope: !1724)
!1734 = !DILocation(line: 116, column: 40, scope: !1724)
!1735 = !DILocation(line: 116, column: 31, scope: !1724)
!1736 = !DILocation(line: 118, column: 9, scope: !1724)
!1737 = !DILocation(line: 119, column: 3, scope: !1724)
!1738 = distinct !DISubprogram(name: "get_quoting_style", scope: !562, file: !562, line: 124, type: !1739, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !586, retainedNodes: !1743)
!1739 = !DISubroutineType(types: !1740)
!1740 = !{!588, !1741}
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !615)
!1743 = !{!1744}
!1744 = !DILocalVariable(name: "o", arg: 1, scope: !1738, file: !562, line: 124, type: !1741)
!1745 = !DILocation(line: 0, scope: !1738)
!1746 = !DILocation(line: 126, column: 11, scope: !1738)
!1747 = !DILocation(line: 126, column: 46, scope: !1738)
!1748 = !{!1749, !878, i64 0}
!1749 = !{!"quoting_options", !878, i64 0, !977, i64 4, !878, i64 8, !877, i64 40, !877, i64 48}
!1750 = !DILocation(line: 126, column: 3, scope: !1738)
!1751 = distinct !DISubprogram(name: "set_quoting_style", scope: !562, file: !562, line: 132, type: !1752, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !586, retainedNodes: !1754)
!1752 = !DISubroutineType(types: !1753)
!1753 = !{null, !1727, !588}
!1754 = !{!1755, !1756}
!1755 = !DILocalVariable(name: "o", arg: 1, scope: !1751, file: !562, line: 132, type: !1727)
!1756 = !DILocalVariable(name: "s", arg: 2, scope: !1751, file: !562, line: 132, type: !588)
!1757 = !DILocation(line: 0, scope: !1751)
!1758 = !DILocation(line: 134, column: 4, scope: !1751)
!1759 = !DILocation(line: 134, column: 45, scope: !1751)
!1760 = !DILocation(line: 135, column: 1, scope: !1751)
!1761 = distinct !DISubprogram(name: "set_char_quoting", scope: !562, file: !562, line: 143, type: !1762, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !586, retainedNodes: !1764)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{!83, !1727, !4, !83}
!1764 = !{!1765, !1766, !1767, !1768, !1769, !1771, !1772}
!1765 = !DILocalVariable(name: "o", arg: 1, scope: !1761, file: !562, line: 143, type: !1727)
!1766 = !DILocalVariable(name: "c", arg: 2, scope: !1761, file: !562, line: 143, type: !4)
!1767 = !DILocalVariable(name: "i", arg: 3, scope: !1761, file: !562, line: 143, type: !83)
!1768 = !DILocalVariable(name: "uc", scope: !1761, file: !562, line: 145, type: !121)
!1769 = !DILocalVariable(name: "p", scope: !1761, file: !562, line: 146, type: !1770)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!1771 = !DILocalVariable(name: "shift", scope: !1761, file: !562, line: 148, type: !83)
!1772 = !DILocalVariable(name: "r", scope: !1761, file: !562, line: 149, type: !90)
!1773 = !DILocation(line: 0, scope: !1761)
!1774 = !DILocation(line: 147, column: 6, scope: !1761)
!1775 = !DILocation(line: 147, column: 41, scope: !1761)
!1776 = !DILocation(line: 147, column: 62, scope: !1761)
!1777 = !DILocation(line: 147, column: 57, scope: !1761)
!1778 = !DILocation(line: 148, column: 15, scope: !1761)
!1779 = !DILocation(line: 149, column: 21, scope: !1761)
!1780 = !DILocation(line: 149, column: 24, scope: !1761)
!1781 = !DILocation(line: 149, column: 34, scope: !1761)
!1782 = !DILocation(line: 150, column: 19, scope: !1761)
!1783 = !DILocation(line: 150, column: 24, scope: !1761)
!1784 = !DILocation(line: 150, column: 6, scope: !1761)
!1785 = !DILocation(line: 151, column: 3, scope: !1761)
!1786 = distinct !DISubprogram(name: "set_quoting_flags", scope: !562, file: !562, line: 159, type: !1787, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !586, retainedNodes: !1789)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{!83, !1727, !83}
!1789 = !{!1790, !1791, !1792}
!1790 = !DILocalVariable(name: "o", arg: 1, scope: !1786, file: !562, line: 159, type: !1727)
!1791 = !DILocalVariable(name: "i", arg: 2, scope: !1786, file: !562, line: 159, type: !83)
!1792 = !DILocalVariable(name: "r", scope: !1786, file: !562, line: 163, type: !83)
!1793 = !DILocation(line: 0, scope: !1786)
!1794 = !DILocation(line: 161, column: 8, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1786, file: !562, line: 161, column: 7)
!1796 = !DILocation(line: 161, column: 7, scope: !1786)
!1797 = !DILocation(line: 163, column: 14, scope: !1786)
!1798 = !{!1749, !977, i64 4}
!1799 = !DILocation(line: 164, column: 12, scope: !1786)
!1800 = !DILocation(line: 165, column: 3, scope: !1786)
!1801 = distinct !DISubprogram(name: "set_custom_quoting", scope: !562, file: !562, line: 169, type: !1802, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !586, retainedNodes: !1804)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{null, !1727, !119, !119}
!1804 = !{!1805, !1806, !1807}
!1805 = !DILocalVariable(name: "o", arg: 1, scope: !1801, file: !562, line: 169, type: !1727)
!1806 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1801, file: !562, line: 170, type: !119)
!1807 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1801, file: !562, line: 170, type: !119)
!1808 = !DILocation(line: 0, scope: !1801)
!1809 = !DILocation(line: 172, column: 8, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1801, file: !562, line: 172, column: 7)
!1811 = !DILocation(line: 172, column: 7, scope: !1801)
!1812 = !DILocation(line: 174, column: 12, scope: !1801)
!1813 = !DILocation(line: 175, column: 8, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1801, file: !562, line: 175, column: 7)
!1815 = !DILocation(line: 175, column: 19, scope: !1814)
!1816 = !DILocation(line: 176, column: 5, scope: !1814)
!1817 = !DILocation(line: 177, column: 6, scope: !1801)
!1818 = !DILocation(line: 177, column: 17, scope: !1801)
!1819 = !{!1749, !877, i64 40}
!1820 = !DILocation(line: 178, column: 6, scope: !1801)
!1821 = !DILocation(line: 178, column: 18, scope: !1801)
!1822 = !{!1749, !877, i64 48}
!1823 = !DILocation(line: 179, column: 1, scope: !1801)
!1824 = !DISubprogram(name: "abort", scope: !1126, file: !1126, line: 598, type: !517, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !960)
!1825 = distinct !DISubprogram(name: "quotearg_buffer", scope: !562, file: !562, line: 774, type: !1826, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !586, retainedNodes: !1828)
!1826 = !DISubroutineType(types: !1827)
!1827 = !{!116, !85, !116, !119, !116, !1741}
!1828 = !{!1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836}
!1829 = !DILocalVariable(name: "buffer", arg: 1, scope: !1825, file: !562, line: 774, type: !85)
!1830 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1825, file: !562, line: 774, type: !116)
!1831 = !DILocalVariable(name: "arg", arg: 3, scope: !1825, file: !562, line: 775, type: !119)
!1832 = !DILocalVariable(name: "argsize", arg: 4, scope: !1825, file: !562, line: 775, type: !116)
!1833 = !DILocalVariable(name: "o", arg: 5, scope: !1825, file: !562, line: 776, type: !1741)
!1834 = !DILocalVariable(name: "p", scope: !1825, file: !562, line: 778, type: !1741)
!1835 = !DILocalVariable(name: "saved_errno", scope: !1825, file: !562, line: 779, type: !83)
!1836 = !DILocalVariable(name: "r", scope: !1825, file: !562, line: 780, type: !116)
!1837 = !DILocation(line: 0, scope: !1825)
!1838 = !DILocation(line: 778, column: 37, scope: !1825)
!1839 = !DILocation(line: 779, column: 21, scope: !1825)
!1840 = !DILocation(line: 781, column: 43, scope: !1825)
!1841 = !DILocation(line: 781, column: 53, scope: !1825)
!1842 = !DILocation(line: 781, column: 63, scope: !1825)
!1843 = !DILocation(line: 782, column: 43, scope: !1825)
!1844 = !DILocation(line: 782, column: 58, scope: !1825)
!1845 = !DILocation(line: 780, column: 14, scope: !1825)
!1846 = !DILocation(line: 783, column: 9, scope: !1825)
!1847 = !DILocation(line: 784, column: 3, scope: !1825)
!1848 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !562, file: !562, line: 251, type: !1849, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !586, retainedNodes: !1853)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{!116, !85, !116, !119, !116, !588, !83, !1851, !119, !119}
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!1853 = !{!1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1878, !1880, !1883, !1884, !1885, !1886, !1889, !1890, !1893, !1897, !1898, !1906, !1909, !1910, !1912, !1913, !1914, !1915}
!1854 = !DILocalVariable(name: "buffer", arg: 1, scope: !1848, file: !562, line: 251, type: !85)
!1855 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1848, file: !562, line: 251, type: !116)
!1856 = !DILocalVariable(name: "arg", arg: 3, scope: !1848, file: !562, line: 252, type: !119)
!1857 = !DILocalVariable(name: "argsize", arg: 4, scope: !1848, file: !562, line: 252, type: !116)
!1858 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1848, file: !562, line: 253, type: !588)
!1859 = !DILocalVariable(name: "flags", arg: 6, scope: !1848, file: !562, line: 253, type: !83)
!1860 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1848, file: !562, line: 254, type: !1851)
!1861 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1848, file: !562, line: 255, type: !119)
!1862 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1848, file: !562, line: 256, type: !119)
!1863 = !DILocalVariable(name: "unibyte_locale", scope: !1848, file: !562, line: 258, type: !171)
!1864 = !DILocalVariable(name: "len", scope: !1848, file: !562, line: 260, type: !116)
!1865 = !DILocalVariable(name: "orig_buffersize", scope: !1848, file: !562, line: 261, type: !116)
!1866 = !DILocalVariable(name: "quote_string", scope: !1848, file: !562, line: 262, type: !119)
!1867 = !DILocalVariable(name: "quote_string_len", scope: !1848, file: !562, line: 263, type: !116)
!1868 = !DILocalVariable(name: "backslash_escapes", scope: !1848, file: !562, line: 264, type: !171)
!1869 = !DILocalVariable(name: "elide_outer_quotes", scope: !1848, file: !562, line: 265, type: !171)
!1870 = !DILocalVariable(name: "encountered_single_quote", scope: !1848, file: !562, line: 266, type: !171)
!1871 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1848, file: !562, line: 267, type: !171)
!1872 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1848, file: !562, line: 309, type: !171)
!1873 = !DILocalVariable(name: "lq", scope: !1874, file: !562, line: 361, type: !119)
!1874 = distinct !DILexicalBlock(scope: !1875, file: !562, line: 361, column: 11)
!1875 = distinct !DILexicalBlock(scope: !1876, file: !562, line: 360, column: 13)
!1876 = distinct !DILexicalBlock(scope: !1877, file: !562, line: 333, column: 7)
!1877 = distinct !DILexicalBlock(scope: !1848, file: !562, line: 312, column: 5)
!1878 = !DILocalVariable(name: "i", scope: !1879, file: !562, line: 395, type: !116)
!1879 = distinct !DILexicalBlock(scope: !1848, file: !562, line: 395, column: 3)
!1880 = !DILocalVariable(name: "is_right_quote", scope: !1881, file: !562, line: 397, type: !171)
!1881 = distinct !DILexicalBlock(scope: !1882, file: !562, line: 396, column: 5)
!1882 = distinct !DILexicalBlock(scope: !1879, file: !562, line: 395, column: 3)
!1883 = !DILocalVariable(name: "escaping", scope: !1881, file: !562, line: 398, type: !171)
!1884 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1881, file: !562, line: 399, type: !171)
!1885 = !DILocalVariable(name: "c", scope: !1881, file: !562, line: 417, type: !121)
!1886 = !DILocalVariable(name: "m", scope: !1887, file: !562, line: 598, type: !116)
!1887 = distinct !DILexicalBlock(scope: !1888, file: !562, line: 596, column: 11)
!1888 = distinct !DILexicalBlock(scope: !1881, file: !562, line: 419, column: 9)
!1889 = !DILocalVariable(name: "printable", scope: !1887, file: !562, line: 600, type: !171)
!1890 = !DILocalVariable(name: "mbs", scope: !1891, file: !562, line: 609, type: !649)
!1891 = distinct !DILexicalBlock(scope: !1892, file: !562, line: 608, column: 15)
!1892 = distinct !DILexicalBlock(scope: !1887, file: !562, line: 602, column: 17)
!1893 = !DILocalVariable(name: "w", scope: !1894, file: !562, line: 618, type: !542)
!1894 = distinct !DILexicalBlock(scope: !1895, file: !562, line: 617, column: 19)
!1895 = distinct !DILexicalBlock(scope: !1896, file: !562, line: 616, column: 17)
!1896 = distinct !DILexicalBlock(scope: !1891, file: !562, line: 616, column: 17)
!1897 = !DILocalVariable(name: "bytes", scope: !1894, file: !562, line: 619, type: !116)
!1898 = !DILocalVariable(name: "j", scope: !1899, file: !562, line: 648, type: !116)
!1899 = distinct !DILexicalBlock(scope: !1900, file: !562, line: 648, column: 29)
!1900 = distinct !DILexicalBlock(scope: !1901, file: !562, line: 647, column: 27)
!1901 = distinct !DILexicalBlock(scope: !1902, file: !562, line: 645, column: 29)
!1902 = distinct !DILexicalBlock(scope: !1903, file: !562, line: 636, column: 23)
!1903 = distinct !DILexicalBlock(scope: !1904, file: !562, line: 628, column: 30)
!1904 = distinct !DILexicalBlock(scope: !1905, file: !562, line: 623, column: 30)
!1905 = distinct !DILexicalBlock(scope: !1894, file: !562, line: 621, column: 25)
!1906 = !DILocalVariable(name: "ilim", scope: !1907, file: !562, line: 674, type: !116)
!1907 = distinct !DILexicalBlock(scope: !1908, file: !562, line: 671, column: 15)
!1908 = distinct !DILexicalBlock(scope: !1887, file: !562, line: 670, column: 17)
!1909 = !DILabel(scope: !1848, name: "process_input", file: !562, line: 308)
!1910 = !DILabel(scope: !1911, name: "c_and_shell_escape", file: !562, line: 502)
!1911 = distinct !DILexicalBlock(scope: !1888, file: !562, line: 478, column: 9)
!1912 = !DILabel(scope: !1911, name: "c_escape", file: !562, line: 507)
!1913 = !DILabel(scope: !1881, name: "store_escape", file: !562, line: 709)
!1914 = !DILabel(scope: !1881, name: "store_c", file: !562, line: 712)
!1915 = !DILabel(scope: !1848, name: "force_outer_quoting_style", file: !562, line: 753)
!1916 = !DILocation(line: 0, scope: !1848)
!1917 = !DILocation(line: 258, column: 25, scope: !1848)
!1918 = !DILocation(line: 258, column: 36, scope: !1848)
!1919 = !DILocation(line: 265, column: 8, scope: !1848)
!1920 = !DILocation(line: 267, column: 3, scope: !1848)
!1921 = !DILocation(line: 261, column: 10, scope: !1848)
!1922 = !DILocation(line: 262, column: 15, scope: !1848)
!1923 = !DILocation(line: 263, column: 10, scope: !1848)
!1924 = !DILocation(line: 264, column: 8, scope: !1848)
!1925 = !DILocation(line: 266, column: 8, scope: !1848)
!1926 = !DILocation(line: 267, column: 8, scope: !1848)
!1927 = !DILocation(line: 308, column: 2, scope: !1848)
!1928 = !DILocation(line: 311, column: 3, scope: !1848)
!1929 = !DILocation(line: 318, column: 11, scope: !1877)
!1930 = !DILocation(line: 318, column: 12, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1877, file: !562, line: 318, column: 11)
!1932 = !DILocation(line: 319, column: 9, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1934, file: !562, line: 319, column: 9)
!1934 = distinct !DILexicalBlock(scope: !1931, file: !562, line: 319, column: 9)
!1935 = !DILocation(line: 319, column: 9, scope: !1934)
!1936 = !DILocation(line: 0, scope: !640, inlinedAt: !1937)
!1937 = distinct !DILocation(line: 357, column: 26, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1939, file: !562, line: 335, column: 11)
!1939 = distinct !DILexicalBlock(scope: !1876, file: !562, line: 334, column: 13)
!1940 = !DILocation(line: 199, column: 29, scope: !640, inlinedAt: !1937)
!1941 = !DILocation(line: 201, column: 19, scope: !1942, inlinedAt: !1937)
!1942 = distinct !DILexicalBlock(scope: !640, file: !562, line: 201, column: 7)
!1943 = !DILocation(line: 201, column: 7, scope: !640, inlinedAt: !1937)
!1944 = !DILocation(line: 229, column: 3, scope: !640, inlinedAt: !1937)
!1945 = !DILocation(line: 230, column: 3, scope: !640, inlinedAt: !1937)
!1946 = !DILocation(line: 230, column: 13, scope: !640, inlinedAt: !1937)
!1947 = !DILocalVariable(name: "ps", arg: 1, scope: !1948, file: !1695, line: 1135, type: !1951)
!1948 = distinct !DISubprogram(name: "mbszero", scope: !1695, file: !1695, line: 1135, type: !1949, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !586, retainedNodes: !1952)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{null, !1951}
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!1952 = !{!1947}
!1953 = !DILocation(line: 0, scope: !1948, inlinedAt: !1954)
!1954 = distinct !DILocation(line: 230, column: 18, scope: !640, inlinedAt: !1937)
!1955 = !DILocalVariable(name: "__dest", arg: 1, scope: !1956, file: !1704, line: 57, type: !122)
!1956 = distinct !DISubprogram(name: "memset", scope: !1704, file: !1704, line: 57, type: !1705, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !586, retainedNodes: !1957)
!1957 = !{!1955, !1958, !1959}
!1958 = !DILocalVariable(name: "__ch", arg: 2, scope: !1956, file: !1704, line: 57, type: !83)
!1959 = !DILocalVariable(name: "__len", arg: 3, scope: !1956, file: !1704, line: 57, type: !116)
!1960 = !DILocation(line: 0, scope: !1956, inlinedAt: !1961)
!1961 = distinct !DILocation(line: 1137, column: 3, scope: !1948, inlinedAt: !1954)
!1962 = !DILocation(line: 59, column: 10, scope: !1956, inlinedAt: !1961)
!1963 = !DILocation(line: 231, column: 7, scope: !1964, inlinedAt: !1937)
!1964 = distinct !DILexicalBlock(scope: !640, file: !562, line: 231, column: 7)
!1965 = !DILocation(line: 231, column: 40, scope: !1964, inlinedAt: !1937)
!1966 = !DILocation(line: 231, column: 45, scope: !1964, inlinedAt: !1937)
!1967 = !DILocation(line: 235, column: 1, scope: !640, inlinedAt: !1937)
!1968 = !DILocation(line: 0, scope: !640, inlinedAt: !1969)
!1969 = distinct !DILocation(line: 358, column: 27, scope: !1938)
!1970 = !DILocation(line: 199, column: 29, scope: !640, inlinedAt: !1969)
!1971 = !DILocation(line: 201, column: 19, scope: !1942, inlinedAt: !1969)
!1972 = !DILocation(line: 201, column: 7, scope: !640, inlinedAt: !1969)
!1973 = !DILocation(line: 229, column: 3, scope: !640, inlinedAt: !1969)
!1974 = !DILocation(line: 230, column: 3, scope: !640, inlinedAt: !1969)
!1975 = !DILocation(line: 230, column: 13, scope: !640, inlinedAt: !1969)
!1976 = !DILocation(line: 0, scope: !1948, inlinedAt: !1977)
!1977 = distinct !DILocation(line: 230, column: 18, scope: !640, inlinedAt: !1969)
!1978 = !DILocation(line: 0, scope: !1956, inlinedAt: !1979)
!1979 = distinct !DILocation(line: 1137, column: 3, scope: !1948, inlinedAt: !1977)
!1980 = !DILocation(line: 59, column: 10, scope: !1956, inlinedAt: !1979)
!1981 = !DILocation(line: 231, column: 7, scope: !1964, inlinedAt: !1969)
!1982 = !DILocation(line: 231, column: 40, scope: !1964, inlinedAt: !1969)
!1983 = !DILocation(line: 231, column: 45, scope: !1964, inlinedAt: !1969)
!1984 = !DILocation(line: 235, column: 1, scope: !640, inlinedAt: !1969)
!1985 = !DILocation(line: 360, column: 14, scope: !1875)
!1986 = !DILocation(line: 360, column: 13, scope: !1876)
!1987 = !DILocation(line: 0, scope: !1874)
!1988 = !DILocation(line: 361, column: 45, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1874, file: !562, line: 361, column: 11)
!1990 = !DILocation(line: 361, column: 11, scope: !1874)
!1991 = !DILocation(line: 362, column: 13, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !562, line: 362, column: 13)
!1993 = distinct !DILexicalBlock(scope: !1989, file: !562, line: 362, column: 13)
!1994 = !DILocation(line: 362, column: 13, scope: !1993)
!1995 = !DILocation(line: 361, column: 52, scope: !1989)
!1996 = distinct !{!1996, !1990, !1997, !1015}
!1997 = !DILocation(line: 362, column: 13, scope: !1874)
!1998 = !DILocation(line: 260, column: 10, scope: !1848)
!1999 = !DILocation(line: 365, column: 28, scope: !1876)
!2000 = !DILocation(line: 367, column: 7, scope: !1877)
!2001 = !DILocation(line: 370, column: 7, scope: !1877)
!2002 = !DILocation(line: 373, column: 7, scope: !1877)
!2003 = !DILocation(line: 376, column: 12, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !1877, file: !562, line: 376, column: 11)
!2005 = !DILocation(line: 376, column: 11, scope: !1877)
!2006 = !DILocation(line: 381, column: 12, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !1877, file: !562, line: 381, column: 11)
!2008 = !DILocation(line: 381, column: 11, scope: !1877)
!2009 = !DILocation(line: 382, column: 9, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !562, line: 382, column: 9)
!2011 = distinct !DILexicalBlock(scope: !2007, file: !562, line: 382, column: 9)
!2012 = !DILocation(line: 382, column: 9, scope: !2011)
!2013 = !DILocation(line: 389, column: 7, scope: !1877)
!2014 = !DILocation(line: 392, column: 7, scope: !1877)
!2015 = !DILocation(line: 0, scope: !1879)
!2016 = !DILocation(line: 395, column: 8, scope: !1879)
!2017 = !DILocation(line: 309, column: 8, scope: !1848)
!2018 = !DILocation(line: 395, scope: !1879)
!2019 = !DILocation(line: 395, column: 34, scope: !1882)
!2020 = !DILocation(line: 395, column: 26, scope: !1882)
!2021 = !DILocation(line: 395, column: 48, scope: !1882)
!2022 = !DILocation(line: 395, column: 55, scope: !1882)
!2023 = !DILocation(line: 395, column: 3, scope: !1879)
!2024 = !DILocation(line: 395, column: 67, scope: !1882)
!2025 = !DILocation(line: 0, scope: !1881)
!2026 = !DILocation(line: 402, column: 11, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !1881, file: !562, line: 401, column: 11)
!2028 = !DILocation(line: 404, column: 17, scope: !2027)
!2029 = !DILocation(line: 405, column: 39, scope: !2027)
!2030 = !DILocation(line: 409, column: 32, scope: !2027)
!2031 = !DILocation(line: 405, column: 19, scope: !2027)
!2032 = !DILocation(line: 405, column: 15, scope: !2027)
!2033 = !DILocation(line: 410, column: 11, scope: !2027)
!2034 = !DILocation(line: 410, column: 25, scope: !2027)
!2035 = !DILocalVariable(name: "__s1", arg: 1, scope: !2036, file: !924, line: 974, type: !1147)
!2036 = distinct !DISubprogram(name: "memeq", scope: !924, file: !924, line: 974, type: !1665, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !586, retainedNodes: !2037)
!2037 = !{!2035, !2038, !2039}
!2038 = !DILocalVariable(name: "__s2", arg: 2, scope: !2036, file: !924, line: 974, type: !1147)
!2039 = !DILocalVariable(name: "__n", arg: 3, scope: !2036, file: !924, line: 974, type: !116)
!2040 = !DILocation(line: 0, scope: !2036, inlinedAt: !2041)
!2041 = distinct !DILocation(line: 410, column: 14, scope: !2027)
!2042 = !DILocation(line: 976, column: 11, scope: !2036, inlinedAt: !2041)
!2043 = !DILocation(line: 976, column: 10, scope: !2036, inlinedAt: !2041)
!2044 = !DILocation(line: 401, column: 11, scope: !1881)
!2045 = !DILocation(line: 417, column: 25, scope: !1881)
!2046 = !DILocation(line: 418, column: 7, scope: !1881)
!2047 = !DILocation(line: 421, column: 15, scope: !1888)
!2048 = !DILocation(line: 423, column: 15, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2050, file: !562, line: 423, column: 15)
!2050 = distinct !DILexicalBlock(scope: !2051, file: !562, line: 422, column: 13)
!2051 = distinct !DILexicalBlock(scope: !1888, file: !562, line: 421, column: 15)
!2052 = !DILocation(line: 423, column: 15, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2049, file: !562, line: 423, column: 15)
!2054 = !DILocation(line: 423, column: 15, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2056, file: !562, line: 423, column: 15)
!2056 = distinct !DILexicalBlock(scope: !2057, file: !562, line: 423, column: 15)
!2057 = distinct !DILexicalBlock(scope: !2053, file: !562, line: 423, column: 15)
!2058 = !DILocation(line: 423, column: 15, scope: !2056)
!2059 = !DILocation(line: 423, column: 15, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2061, file: !562, line: 423, column: 15)
!2061 = distinct !DILexicalBlock(scope: !2057, file: !562, line: 423, column: 15)
!2062 = !DILocation(line: 423, column: 15, scope: !2061)
!2063 = !DILocation(line: 423, column: 15, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !2065, file: !562, line: 423, column: 15)
!2065 = distinct !DILexicalBlock(scope: !2057, file: !562, line: 423, column: 15)
!2066 = !DILocation(line: 423, column: 15, scope: !2065)
!2067 = !DILocation(line: 423, column: 15, scope: !2057)
!2068 = !DILocation(line: 423, column: 15, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2070, file: !562, line: 423, column: 15)
!2070 = distinct !DILexicalBlock(scope: !2049, file: !562, line: 423, column: 15)
!2071 = !DILocation(line: 423, column: 15, scope: !2070)
!2072 = !DILocation(line: 431, column: 19, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2050, file: !562, line: 430, column: 19)
!2074 = !DILocation(line: 431, column: 24, scope: !2073)
!2075 = !DILocation(line: 431, column: 28, scope: !2073)
!2076 = !DILocation(line: 431, column: 38, scope: !2073)
!2077 = !DILocation(line: 431, column: 48, scope: !2073)
!2078 = !DILocation(line: 431, column: 59, scope: !2073)
!2079 = !DILocation(line: 433, column: 19, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2081, file: !562, line: 433, column: 19)
!2081 = distinct !DILexicalBlock(scope: !2082, file: !562, line: 433, column: 19)
!2082 = distinct !DILexicalBlock(scope: !2073, file: !562, line: 432, column: 17)
!2083 = !DILocation(line: 433, column: 19, scope: !2081)
!2084 = !DILocation(line: 434, column: 19, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2086, file: !562, line: 434, column: 19)
!2086 = distinct !DILexicalBlock(scope: !2082, file: !562, line: 434, column: 19)
!2087 = !DILocation(line: 434, column: 19, scope: !2086)
!2088 = !DILocation(line: 435, column: 17, scope: !2082)
!2089 = !DILocation(line: 442, column: 20, scope: !2051)
!2090 = !DILocation(line: 447, column: 11, scope: !1888)
!2091 = !DILocation(line: 450, column: 19, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !1888, file: !562, line: 448, column: 13)
!2093 = !DILocation(line: 456, column: 19, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2092, file: !562, line: 455, column: 19)
!2095 = !DILocation(line: 456, column: 24, scope: !2094)
!2096 = !DILocation(line: 456, column: 28, scope: !2094)
!2097 = !DILocation(line: 456, column: 38, scope: !2094)
!2098 = !DILocation(line: 456, column: 47, scope: !2094)
!2099 = !DILocation(line: 456, column: 41, scope: !2094)
!2100 = !DILocation(line: 456, column: 52, scope: !2094)
!2101 = !DILocation(line: 455, column: 19, scope: !2092)
!2102 = !DILocation(line: 457, column: 25, scope: !2094)
!2103 = !DILocation(line: 457, column: 17, scope: !2094)
!2104 = !DILocation(line: 464, column: 25, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2094, file: !562, line: 458, column: 19)
!2106 = !DILocation(line: 468, column: 21, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2108, file: !562, line: 468, column: 21)
!2108 = distinct !DILexicalBlock(scope: !2105, file: !562, line: 468, column: 21)
!2109 = !DILocation(line: 468, column: 21, scope: !2108)
!2110 = !DILocation(line: 469, column: 21, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2112, file: !562, line: 469, column: 21)
!2112 = distinct !DILexicalBlock(scope: !2105, file: !562, line: 469, column: 21)
!2113 = !DILocation(line: 469, column: 21, scope: !2112)
!2114 = !DILocation(line: 470, column: 21, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2116, file: !562, line: 470, column: 21)
!2116 = distinct !DILexicalBlock(scope: !2105, file: !562, line: 470, column: 21)
!2117 = !DILocation(line: 470, column: 21, scope: !2116)
!2118 = !DILocation(line: 471, column: 21, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2120, file: !562, line: 471, column: 21)
!2120 = distinct !DILexicalBlock(scope: !2105, file: !562, line: 471, column: 21)
!2121 = !DILocation(line: 471, column: 21, scope: !2120)
!2122 = !DILocation(line: 472, column: 21, scope: !2105)
!2123 = !DILocation(line: 482, column: 33, scope: !1911)
!2124 = !DILocation(line: 483, column: 33, scope: !1911)
!2125 = !DILocation(line: 485, column: 33, scope: !1911)
!2126 = !DILocation(line: 486, column: 33, scope: !1911)
!2127 = !DILocation(line: 487, column: 33, scope: !1911)
!2128 = !DILocation(line: 490, column: 17, scope: !1911)
!2129 = !DILocation(line: 492, column: 21, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2131, file: !562, line: 491, column: 15)
!2131 = distinct !DILexicalBlock(scope: !1911, file: !562, line: 490, column: 17)
!2132 = !DILocation(line: 499, column: 35, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !1911, file: !562, line: 499, column: 17)
!2134 = !DILocation(line: 499, column: 57, scope: !2133)
!2135 = !DILocation(line: 0, scope: !1911)
!2136 = !DILocation(line: 502, column: 11, scope: !1911)
!2137 = !DILocation(line: 504, column: 17, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !1911, file: !562, line: 503, column: 17)
!2139 = !DILocation(line: 507, column: 11, scope: !1911)
!2140 = !DILocation(line: 508, column: 17, scope: !1911)
!2141 = !DILocation(line: 517, column: 15, scope: !1888)
!2142 = !DILocation(line: 517, column: 40, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !1888, file: !562, line: 517, column: 15)
!2144 = !DILocation(line: 517, column: 47, scope: !2143)
!2145 = !DILocation(line: 517, column: 18, scope: !2143)
!2146 = !DILocation(line: 521, column: 17, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !1888, file: !562, line: 521, column: 15)
!2148 = !DILocation(line: 521, column: 15, scope: !1888)
!2149 = !DILocation(line: 525, column: 11, scope: !1888)
!2150 = !DILocation(line: 537, column: 15, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !1888, file: !562, line: 536, column: 15)
!2152 = !DILocation(line: 544, column: 15, scope: !1888)
!2153 = !DILocation(line: 546, column: 19, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2155, file: !562, line: 545, column: 13)
!2155 = distinct !DILexicalBlock(scope: !1888, file: !562, line: 544, column: 15)
!2156 = !DILocation(line: 549, column: 19, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2154, file: !562, line: 549, column: 19)
!2158 = !DILocation(line: 549, column: 30, scope: !2157)
!2159 = !DILocation(line: 558, column: 15, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2161, file: !562, line: 558, column: 15)
!2161 = distinct !DILexicalBlock(scope: !2154, file: !562, line: 558, column: 15)
!2162 = !DILocation(line: 558, column: 15, scope: !2161)
!2163 = !DILocation(line: 559, column: 15, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2165, file: !562, line: 559, column: 15)
!2165 = distinct !DILexicalBlock(scope: !2154, file: !562, line: 559, column: 15)
!2166 = !DILocation(line: 559, column: 15, scope: !2165)
!2167 = !DILocation(line: 560, column: 15, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2169, file: !562, line: 560, column: 15)
!2169 = distinct !DILexicalBlock(scope: !2154, file: !562, line: 560, column: 15)
!2170 = !DILocation(line: 560, column: 15, scope: !2169)
!2171 = !DILocation(line: 562, column: 13, scope: !2154)
!2172 = !DILocation(line: 602, column: 17, scope: !1887)
!2173 = !DILocation(line: 0, scope: !1887)
!2174 = !DILocation(line: 605, column: 29, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !1892, file: !562, line: 603, column: 15)
!2176 = !DILocation(line: 605, column: 27, scope: !2175)
!2177 = !DILocation(line: 668, column: 40, scope: !1887)
!2178 = !DILocation(line: 670, column: 23, scope: !1908)
!2179 = !DILocation(line: 609, column: 17, scope: !1891)
!2180 = !DILocation(line: 609, column: 27, scope: !1891)
!2181 = !DILocation(line: 0, scope: !1948, inlinedAt: !2182)
!2182 = distinct !DILocation(line: 609, column: 32, scope: !1891)
!2183 = !DILocation(line: 0, scope: !1956, inlinedAt: !2184)
!2184 = distinct !DILocation(line: 1137, column: 3, scope: !1948, inlinedAt: !2182)
!2185 = !DILocation(line: 59, column: 10, scope: !1956, inlinedAt: !2184)
!2186 = !DILocation(line: 613, column: 29, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !1891, file: !562, line: 613, column: 21)
!2188 = !DILocation(line: 613, column: 21, scope: !1891)
!2189 = !DILocation(line: 614, column: 29, scope: !2187)
!2190 = !DILocation(line: 614, column: 19, scope: !2187)
!2191 = !DILocation(line: 618, column: 21, scope: !1894)
!2192 = !DILocation(line: 620, column: 54, scope: !1894)
!2193 = !DILocation(line: 0, scope: !1894)
!2194 = !DILocation(line: 619, column: 36, scope: !1894)
!2195 = !DILocation(line: 621, column: 25, scope: !1894)
!2196 = !DILocation(line: 631, column: 38, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !1903, file: !562, line: 629, column: 23)
!2198 = !DILocation(line: 631, column: 48, scope: !2197)
!2199 = !DILocation(line: 665, column: 19, scope: !1895)
!2200 = !DILocation(line: 666, column: 15, scope: !1892)
!2201 = !DILocation(line: 626, column: 25, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !1904, file: !562, line: 624, column: 23)
!2203 = !DILocation(line: 631, column: 51, scope: !2197)
!2204 = !DILocation(line: 631, column: 25, scope: !2197)
!2205 = !DILocation(line: 632, column: 28, scope: !2197)
!2206 = !DILocation(line: 631, column: 34, scope: !2197)
!2207 = distinct !{!2207, !2204, !2205, !1015}
!2208 = !DILocation(line: 646, column: 29, scope: !1901)
!2209 = !DILocation(line: 0, scope: !1899)
!2210 = !DILocation(line: 649, column: 49, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !1899, file: !562, line: 648, column: 29)
!2212 = !DILocation(line: 649, column: 39, scope: !2211)
!2213 = !DILocation(line: 649, column: 31, scope: !2211)
!2214 = !DILocation(line: 648, column: 60, scope: !2211)
!2215 = !DILocation(line: 648, column: 50, scope: !2211)
!2216 = !DILocation(line: 648, column: 29, scope: !1899)
!2217 = distinct !{!2217, !2216, !2218, !1015}
!2218 = !DILocation(line: 654, column: 33, scope: !1899)
!2219 = !DILocation(line: 657, column: 43, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !1902, file: !562, line: 657, column: 29)
!2221 = !DILocalVariable(name: "wc", arg: 1, scope: !2222, file: !2223, line: 865, type: !2226)
!2222 = distinct !DISubprogram(name: "c32isprint", scope: !2223, file: !2223, line: 865, type: !2224, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !586, retainedNodes: !2228)
!2223 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2224 = !DISubroutineType(types: !2225)
!2225 = !{!83, !2226}
!2226 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2227, line: 20, baseType: !90)
!2227 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2228 = !{!2221}
!2229 = !DILocation(line: 0, scope: !2222, inlinedAt: !2230)
!2230 = distinct !DILocation(line: 657, column: 31, scope: !2220)
!2231 = !DILocation(line: 871, column: 10, scope: !2222, inlinedAt: !2230)
!2232 = !DILocation(line: 657, column: 31, scope: !2220)
!2233 = !DILocation(line: 657, column: 29, scope: !1902)
!2234 = !DILocation(line: 664, column: 23, scope: !1894)
!2235 = !DILocation(line: 670, column: 19, scope: !1908)
!2236 = !DILocation(line: 670, column: 45, scope: !1908)
!2237 = !DILocation(line: 674, column: 33, scope: !1907)
!2238 = !DILocation(line: 0, scope: !1907)
!2239 = !DILocation(line: 676, column: 17, scope: !1907)
!2240 = !DILocation(line: 398, column: 12, scope: !1881)
!2241 = !DILocation(line: 678, column: 43, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2243, file: !562, line: 678, column: 25)
!2243 = distinct !DILexicalBlock(scope: !2244, file: !562, line: 677, column: 19)
!2244 = distinct !DILexicalBlock(scope: !2245, file: !562, line: 676, column: 17)
!2245 = distinct !DILexicalBlock(scope: !1907, file: !562, line: 676, column: 17)
!2246 = !DILocation(line: 680, column: 25, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2248, file: !562, line: 680, column: 25)
!2248 = distinct !DILexicalBlock(scope: !2242, file: !562, line: 679, column: 23)
!2249 = !DILocation(line: 680, column: 25, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2247, file: !562, line: 680, column: 25)
!2251 = !DILocation(line: 680, column: 25, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2253, file: !562, line: 680, column: 25)
!2253 = distinct !DILexicalBlock(scope: !2254, file: !562, line: 680, column: 25)
!2254 = distinct !DILexicalBlock(scope: !2250, file: !562, line: 680, column: 25)
!2255 = !DILocation(line: 680, column: 25, scope: !2253)
!2256 = !DILocation(line: 680, column: 25, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2258, file: !562, line: 680, column: 25)
!2258 = distinct !DILexicalBlock(scope: !2254, file: !562, line: 680, column: 25)
!2259 = !DILocation(line: 680, column: 25, scope: !2258)
!2260 = !DILocation(line: 680, column: 25, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2262, file: !562, line: 680, column: 25)
!2262 = distinct !DILexicalBlock(scope: !2254, file: !562, line: 680, column: 25)
!2263 = !DILocation(line: 680, column: 25, scope: !2262)
!2264 = !DILocation(line: 680, column: 25, scope: !2254)
!2265 = !DILocation(line: 680, column: 25, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2267, file: !562, line: 680, column: 25)
!2267 = distinct !DILexicalBlock(scope: !2247, file: !562, line: 680, column: 25)
!2268 = !DILocation(line: 680, column: 25, scope: !2267)
!2269 = !DILocation(line: 681, column: 25, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2271, file: !562, line: 681, column: 25)
!2271 = distinct !DILexicalBlock(scope: !2248, file: !562, line: 681, column: 25)
!2272 = !DILocation(line: 681, column: 25, scope: !2271)
!2273 = !DILocation(line: 682, column: 25, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2275, file: !562, line: 682, column: 25)
!2275 = distinct !DILexicalBlock(scope: !2248, file: !562, line: 682, column: 25)
!2276 = !DILocation(line: 682, column: 25, scope: !2275)
!2277 = !DILocation(line: 683, column: 38, scope: !2248)
!2278 = !DILocation(line: 683, column: 33, scope: !2248)
!2279 = !DILocation(line: 684, column: 23, scope: !2248)
!2280 = !DILocation(line: 685, column: 30, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2242, file: !562, line: 685, column: 30)
!2282 = !DILocation(line: 685, column: 30, scope: !2242)
!2283 = !DILocation(line: 687, column: 25, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2285, file: !562, line: 687, column: 25)
!2285 = distinct !DILexicalBlock(scope: !2286, file: !562, line: 687, column: 25)
!2286 = distinct !DILexicalBlock(scope: !2281, file: !562, line: 686, column: 23)
!2287 = !DILocation(line: 687, column: 25, scope: !2285)
!2288 = !DILocation(line: 689, column: 23, scope: !2286)
!2289 = !DILocation(line: 690, column: 35, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2243, file: !562, line: 690, column: 25)
!2291 = !DILocation(line: 690, column: 30, scope: !2290)
!2292 = !DILocation(line: 690, column: 25, scope: !2243)
!2293 = !DILocation(line: 692, column: 21, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2295, file: !562, line: 692, column: 21)
!2295 = distinct !DILexicalBlock(scope: !2243, file: !562, line: 692, column: 21)
!2296 = !DILocation(line: 692, column: 21, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2298, file: !562, line: 692, column: 21)
!2298 = distinct !DILexicalBlock(scope: !2299, file: !562, line: 692, column: 21)
!2299 = distinct !DILexicalBlock(scope: !2294, file: !562, line: 692, column: 21)
!2300 = !DILocation(line: 692, column: 21, scope: !2298)
!2301 = !DILocation(line: 692, column: 21, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2303, file: !562, line: 692, column: 21)
!2303 = distinct !DILexicalBlock(scope: !2299, file: !562, line: 692, column: 21)
!2304 = !DILocation(line: 692, column: 21, scope: !2303)
!2305 = !DILocation(line: 692, column: 21, scope: !2299)
!2306 = !DILocation(line: 0, scope: !2243)
!2307 = !DILocation(line: 693, column: 21, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2309, file: !562, line: 693, column: 21)
!2309 = distinct !DILexicalBlock(scope: !2243, file: !562, line: 693, column: 21)
!2310 = !DILocation(line: 693, column: 21, scope: !2309)
!2311 = !DILocation(line: 694, column: 25, scope: !2243)
!2312 = !DILocation(line: 676, column: 17, scope: !2244)
!2313 = distinct !{!2313, !2314, !2315}
!2314 = !DILocation(line: 676, column: 17, scope: !2245)
!2315 = !DILocation(line: 695, column: 19, scope: !2245)
!2316 = !DILocation(line: 409, column: 30, scope: !2027)
!2317 = !DILocation(line: 702, column: 34, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !1881, file: !562, line: 702, column: 11)
!2319 = !DILocation(line: 704, column: 14, scope: !2318)
!2320 = !DILocation(line: 705, column: 14, scope: !2318)
!2321 = !DILocation(line: 705, column: 35, scope: !2318)
!2322 = !DILocation(line: 705, column: 17, scope: !2318)
!2323 = !DILocation(line: 705, column: 47, scope: !2318)
!2324 = !DILocation(line: 705, column: 65, scope: !2318)
!2325 = !DILocation(line: 706, column: 11, scope: !2318)
!2326 = !DILocation(line: 702, column: 11, scope: !1881)
!2327 = !DILocation(line: 395, column: 15, scope: !1879)
!2328 = !DILocation(line: 709, column: 5, scope: !1881)
!2329 = !DILocation(line: 710, column: 7, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !1881, file: !562, line: 710, column: 7)
!2331 = !DILocation(line: 710, column: 7, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2330, file: !562, line: 710, column: 7)
!2333 = !DILocation(line: 710, column: 7, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2335, file: !562, line: 710, column: 7)
!2335 = distinct !DILexicalBlock(scope: !2336, file: !562, line: 710, column: 7)
!2336 = distinct !DILexicalBlock(scope: !2332, file: !562, line: 710, column: 7)
!2337 = !DILocation(line: 710, column: 7, scope: !2335)
!2338 = !DILocation(line: 710, column: 7, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2340, file: !562, line: 710, column: 7)
!2340 = distinct !DILexicalBlock(scope: !2336, file: !562, line: 710, column: 7)
!2341 = !DILocation(line: 710, column: 7, scope: !2340)
!2342 = !DILocation(line: 710, column: 7, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2344, file: !562, line: 710, column: 7)
!2344 = distinct !DILexicalBlock(scope: !2336, file: !562, line: 710, column: 7)
!2345 = !DILocation(line: 710, column: 7, scope: !2344)
!2346 = !DILocation(line: 710, column: 7, scope: !2336)
!2347 = !DILocation(line: 710, column: 7, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2349, file: !562, line: 710, column: 7)
!2349 = distinct !DILexicalBlock(scope: !2330, file: !562, line: 710, column: 7)
!2350 = !DILocation(line: 710, column: 7, scope: !2349)
!2351 = !DILocation(line: 712, column: 5, scope: !1881)
!2352 = !DILocation(line: 713, column: 7, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2354, file: !562, line: 713, column: 7)
!2354 = distinct !DILexicalBlock(scope: !1881, file: !562, line: 713, column: 7)
!2355 = !DILocation(line: 417, column: 21, scope: !1881)
!2356 = !DILocation(line: 713, column: 7, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2358, file: !562, line: 713, column: 7)
!2358 = distinct !DILexicalBlock(scope: !2359, file: !562, line: 713, column: 7)
!2359 = distinct !DILexicalBlock(scope: !2353, file: !562, line: 713, column: 7)
!2360 = !DILocation(line: 713, column: 7, scope: !2358)
!2361 = !DILocation(line: 713, column: 7, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2363, file: !562, line: 713, column: 7)
!2363 = distinct !DILexicalBlock(scope: !2359, file: !562, line: 713, column: 7)
!2364 = !DILocation(line: 713, column: 7, scope: !2363)
!2365 = !DILocation(line: 713, column: 7, scope: !2359)
!2366 = !DILocation(line: 714, column: 7, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2368, file: !562, line: 714, column: 7)
!2368 = distinct !DILexicalBlock(scope: !1881, file: !562, line: 714, column: 7)
!2369 = !DILocation(line: 714, column: 7, scope: !2368)
!2370 = !DILocation(line: 716, column: 13, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !1881, file: !562, line: 716, column: 11)
!2372 = !DILocation(line: 716, column: 11, scope: !1881)
!2373 = !DILocation(line: 718, column: 5, scope: !1882)
!2374 = !DILocation(line: 395, column: 82, scope: !1882)
!2375 = !DILocation(line: 395, column: 3, scope: !1882)
!2376 = distinct !{!2376, !2023, !2377, !1015}
!2377 = !DILocation(line: 718, column: 5, scope: !1879)
!2378 = !DILocation(line: 720, column: 11, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !1848, file: !562, line: 720, column: 7)
!2380 = !DILocation(line: 720, column: 16, scope: !2379)
!2381 = !DILocation(line: 728, column: 51, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !1848, file: !562, line: 728, column: 7)
!2383 = !DILocation(line: 731, column: 11, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2385, file: !562, line: 731, column: 11)
!2385 = distinct !DILexicalBlock(scope: !2382, file: !562, line: 730, column: 5)
!2386 = !DILocation(line: 731, column: 11, scope: !2385)
!2387 = !DILocation(line: 732, column: 16, scope: !2384)
!2388 = !DILocation(line: 732, column: 9, scope: !2384)
!2389 = !DILocation(line: 736, column: 18, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2384, file: !562, line: 736, column: 16)
!2391 = !DILocation(line: 736, column: 29, scope: !2390)
!2392 = !DILocation(line: 745, column: 7, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !1848, file: !562, line: 745, column: 7)
!2394 = !DILocation(line: 745, column: 20, scope: !2393)
!2395 = !DILocation(line: 746, column: 12, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2397, file: !562, line: 746, column: 5)
!2397 = distinct !DILexicalBlock(scope: !2393, file: !562, line: 746, column: 5)
!2398 = !DILocation(line: 746, column: 5, scope: !2397)
!2399 = !DILocation(line: 747, column: 7, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2401, file: !562, line: 747, column: 7)
!2401 = distinct !DILexicalBlock(scope: !2396, file: !562, line: 747, column: 7)
!2402 = !DILocation(line: 747, column: 7, scope: !2401)
!2403 = !DILocation(line: 746, column: 39, scope: !2396)
!2404 = distinct !{!2404, !2398, !2405, !1015}
!2405 = !DILocation(line: 747, column: 7, scope: !2397)
!2406 = !DILocation(line: 749, column: 11, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !1848, file: !562, line: 749, column: 7)
!2408 = !DILocation(line: 749, column: 7, scope: !1848)
!2409 = !DILocation(line: 750, column: 5, scope: !2407)
!2410 = !DILocation(line: 750, column: 17, scope: !2407)
!2411 = !DILocation(line: 753, column: 2, scope: !1848)
!2412 = !DILocation(line: 756, column: 51, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !1848, file: !562, line: 756, column: 7)
!2414 = !DILocation(line: 756, column: 21, scope: !2413)
!2415 = !DILocation(line: 760, column: 42, scope: !1848)
!2416 = !DILocation(line: 758, column: 10, scope: !1848)
!2417 = !DILocation(line: 758, column: 3, scope: !1848)
!2418 = !DILocation(line: 762, column: 1, scope: !1848)
!2419 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1126, file: !1126, line: 98, type: !2420, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !960)
!2420 = !DISubroutineType(types: !2421)
!2421 = !{!116}
!2422 = !DISubprogram(name: "strlen", scope: !1115, file: !1115, line: 407, type: !2423, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !960)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{!118, !119}
!2425 = !DISubprogram(name: "iswprint", scope: !2426, file: !2426, line: 120, type: !2224, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !960)
!2426 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2427 = distinct !DISubprogram(name: "quotearg_alloc", scope: !562, file: !562, line: 788, type: !2428, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !586, retainedNodes: !2430)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{!85, !119, !116, !1741}
!2430 = !{!2431, !2432, !2433}
!2431 = !DILocalVariable(name: "arg", arg: 1, scope: !2427, file: !562, line: 788, type: !119)
!2432 = !DILocalVariable(name: "argsize", arg: 2, scope: !2427, file: !562, line: 788, type: !116)
!2433 = !DILocalVariable(name: "o", arg: 3, scope: !2427, file: !562, line: 789, type: !1741)
!2434 = !DILocation(line: 0, scope: !2427)
!2435 = !DILocalVariable(name: "arg", arg: 1, scope: !2436, file: !562, line: 801, type: !119)
!2436 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !562, file: !562, line: 801, type: !2437, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !586, retainedNodes: !2439)
!2437 = !DISubroutineType(types: !2438)
!2438 = !{!85, !119, !116, !810, !1741}
!2439 = !{!2435, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447}
!2440 = !DILocalVariable(name: "argsize", arg: 2, scope: !2436, file: !562, line: 801, type: !116)
!2441 = !DILocalVariable(name: "size", arg: 3, scope: !2436, file: !562, line: 801, type: !810)
!2442 = !DILocalVariable(name: "o", arg: 4, scope: !2436, file: !562, line: 802, type: !1741)
!2443 = !DILocalVariable(name: "p", scope: !2436, file: !562, line: 804, type: !1741)
!2444 = !DILocalVariable(name: "saved_errno", scope: !2436, file: !562, line: 805, type: !83)
!2445 = !DILocalVariable(name: "flags", scope: !2436, file: !562, line: 807, type: !83)
!2446 = !DILocalVariable(name: "bufsize", scope: !2436, file: !562, line: 808, type: !116)
!2447 = !DILocalVariable(name: "buf", scope: !2436, file: !562, line: 812, type: !85)
!2448 = !DILocation(line: 0, scope: !2436, inlinedAt: !2449)
!2449 = distinct !DILocation(line: 791, column: 10, scope: !2427)
!2450 = !DILocation(line: 804, column: 37, scope: !2436, inlinedAt: !2449)
!2451 = !DILocation(line: 805, column: 21, scope: !2436, inlinedAt: !2449)
!2452 = !DILocation(line: 807, column: 18, scope: !2436, inlinedAt: !2449)
!2453 = !DILocation(line: 807, column: 24, scope: !2436, inlinedAt: !2449)
!2454 = !DILocation(line: 808, column: 72, scope: !2436, inlinedAt: !2449)
!2455 = !DILocation(line: 809, column: 56, scope: !2436, inlinedAt: !2449)
!2456 = !DILocation(line: 810, column: 49, scope: !2436, inlinedAt: !2449)
!2457 = !DILocation(line: 811, column: 49, scope: !2436, inlinedAt: !2449)
!2458 = !DILocation(line: 808, column: 20, scope: !2436, inlinedAt: !2449)
!2459 = !DILocation(line: 811, column: 62, scope: !2436, inlinedAt: !2449)
!2460 = !DILocation(line: 812, column: 15, scope: !2436, inlinedAt: !2449)
!2461 = !DILocation(line: 813, column: 60, scope: !2436, inlinedAt: !2449)
!2462 = !DILocation(line: 815, column: 32, scope: !2436, inlinedAt: !2449)
!2463 = !DILocation(line: 815, column: 47, scope: !2436, inlinedAt: !2449)
!2464 = !DILocation(line: 813, column: 3, scope: !2436, inlinedAt: !2449)
!2465 = !DILocation(line: 816, column: 9, scope: !2436, inlinedAt: !2449)
!2466 = !DILocation(line: 791, column: 3, scope: !2427)
!2467 = !DILocation(line: 0, scope: !2436)
!2468 = !DILocation(line: 804, column: 37, scope: !2436)
!2469 = !DILocation(line: 805, column: 21, scope: !2436)
!2470 = !DILocation(line: 807, column: 18, scope: !2436)
!2471 = !DILocation(line: 807, column: 27, scope: !2436)
!2472 = !DILocation(line: 807, column: 24, scope: !2436)
!2473 = !DILocation(line: 808, column: 72, scope: !2436)
!2474 = !DILocation(line: 809, column: 56, scope: !2436)
!2475 = !DILocation(line: 810, column: 49, scope: !2436)
!2476 = !DILocation(line: 811, column: 49, scope: !2436)
!2477 = !DILocation(line: 808, column: 20, scope: !2436)
!2478 = !DILocation(line: 811, column: 62, scope: !2436)
!2479 = !DILocation(line: 812, column: 15, scope: !2436)
!2480 = !DILocation(line: 813, column: 60, scope: !2436)
!2481 = !DILocation(line: 815, column: 32, scope: !2436)
!2482 = !DILocation(line: 815, column: 47, scope: !2436)
!2483 = !DILocation(line: 813, column: 3, scope: !2436)
!2484 = !DILocation(line: 816, column: 9, scope: !2436)
!2485 = !DILocation(line: 817, column: 7, scope: !2436)
!2486 = !DILocation(line: 818, column: 11, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2436, file: !562, line: 817, column: 7)
!2488 = !{!1246, !1246, i64 0}
!2489 = !DILocation(line: 818, column: 5, scope: !2487)
!2490 = !DILocation(line: 819, column: 3, scope: !2436)
!2491 = distinct !DISubprogram(name: "quotearg_free", scope: !562, file: !562, line: 837, type: !517, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !586, retainedNodes: !2492)
!2492 = !{!2493, !2494}
!2493 = !DILocalVariable(name: "sv", scope: !2491, file: !562, line: 839, type: !663)
!2494 = !DILocalVariable(name: "i", scope: !2495, file: !562, line: 840, type: !83)
!2495 = distinct !DILexicalBlock(scope: !2491, file: !562, line: 840, column: 3)
!2496 = !DILocation(line: 839, column: 24, scope: !2491)
!2497 = !DILocation(line: 0, scope: !2491)
!2498 = !DILocation(line: 0, scope: !2495)
!2499 = !DILocation(line: 840, column: 21, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2495, file: !562, line: 840, column: 3)
!2501 = !DILocation(line: 840, column: 3, scope: !2495)
!2502 = !DILocation(line: 842, column: 13, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2491, file: !562, line: 842, column: 7)
!2504 = !{!2505, !877, i64 8}
!2505 = !{!"slotvec", !1246, i64 0, !877, i64 8}
!2506 = !DILocation(line: 842, column: 17, scope: !2503)
!2507 = !DILocation(line: 842, column: 7, scope: !2491)
!2508 = !DILocation(line: 841, column: 17, scope: !2500)
!2509 = !DILocation(line: 841, column: 5, scope: !2500)
!2510 = !DILocation(line: 840, column: 32, scope: !2500)
!2511 = distinct !{!2511, !2501, !2512, !1015}
!2512 = !DILocation(line: 841, column: 20, scope: !2495)
!2513 = !DILocation(line: 844, column: 7, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2503, file: !562, line: 843, column: 5)
!2515 = !DILocation(line: 845, column: 21, scope: !2514)
!2516 = !{!2505, !1246, i64 0}
!2517 = !DILocation(line: 846, column: 20, scope: !2514)
!2518 = !DILocation(line: 847, column: 5, scope: !2514)
!2519 = !DILocation(line: 848, column: 10, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2491, file: !562, line: 848, column: 7)
!2521 = !DILocation(line: 848, column: 7, scope: !2491)
!2522 = !DILocation(line: 850, column: 7, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2520, file: !562, line: 849, column: 5)
!2524 = !DILocation(line: 851, column: 15, scope: !2523)
!2525 = !DILocation(line: 852, column: 5, scope: !2523)
!2526 = !DILocation(line: 853, column: 10, scope: !2491)
!2527 = !DILocation(line: 854, column: 1, scope: !2491)
!2528 = !DISubprogram(name: "free", scope: !1695, file: !1695, line: 786, type: !2529, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !960)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{null, !122}
!2531 = distinct !DISubprogram(name: "quotearg_n", scope: !562, file: !562, line: 919, type: !1120, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !586, retainedNodes: !2532)
!2532 = !{!2533, !2534}
!2533 = !DILocalVariable(name: "n", arg: 1, scope: !2531, file: !562, line: 919, type: !83)
!2534 = !DILocalVariable(name: "arg", arg: 2, scope: !2531, file: !562, line: 919, type: !119)
!2535 = !DILocation(line: 0, scope: !2531)
!2536 = !DILocation(line: 921, column: 10, scope: !2531)
!2537 = !DILocation(line: 921, column: 3, scope: !2531)
!2538 = distinct !DISubprogram(name: "quotearg_n_options", scope: !562, file: !562, line: 866, type: !2539, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !586, retainedNodes: !2541)
!2539 = !DISubroutineType(types: !2540)
!2540 = !{!85, !83, !119, !116, !1741}
!2541 = !{!2542, !2543, !2544, !2545, !2546, !2547, !2548, !2549, !2552, !2553, !2555, !2556, !2557}
!2542 = !DILocalVariable(name: "n", arg: 1, scope: !2538, file: !562, line: 866, type: !83)
!2543 = !DILocalVariable(name: "arg", arg: 2, scope: !2538, file: !562, line: 866, type: !119)
!2544 = !DILocalVariable(name: "argsize", arg: 3, scope: !2538, file: !562, line: 866, type: !116)
!2545 = !DILocalVariable(name: "options", arg: 4, scope: !2538, file: !562, line: 867, type: !1741)
!2546 = !DILocalVariable(name: "saved_errno", scope: !2538, file: !562, line: 869, type: !83)
!2547 = !DILocalVariable(name: "sv", scope: !2538, file: !562, line: 871, type: !663)
!2548 = !DILocalVariable(name: "nslots_max", scope: !2538, file: !562, line: 873, type: !83)
!2549 = !DILocalVariable(name: "preallocated", scope: !2550, file: !562, line: 879, type: !171)
!2550 = distinct !DILexicalBlock(scope: !2551, file: !562, line: 878, column: 5)
!2551 = distinct !DILexicalBlock(scope: !2538, file: !562, line: 877, column: 7)
!2552 = !DILocalVariable(name: "new_nslots", scope: !2550, file: !562, line: 880, type: !823)
!2553 = !DILocalVariable(name: "size", scope: !2554, file: !562, line: 891, type: !116)
!2554 = distinct !DILexicalBlock(scope: !2538, file: !562, line: 890, column: 3)
!2555 = !DILocalVariable(name: "val", scope: !2554, file: !562, line: 892, type: !85)
!2556 = !DILocalVariable(name: "flags", scope: !2554, file: !562, line: 894, type: !83)
!2557 = !DILocalVariable(name: "qsize", scope: !2554, file: !562, line: 895, type: !116)
!2558 = !DILocation(line: 0, scope: !2538)
!2559 = !DILocation(line: 869, column: 21, scope: !2538)
!2560 = !DILocation(line: 871, column: 24, scope: !2538)
!2561 = !DILocation(line: 874, column: 17, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2538, file: !562, line: 874, column: 7)
!2563 = !DILocation(line: 875, column: 5, scope: !2562)
!2564 = !DILocation(line: 877, column: 7, scope: !2551)
!2565 = !DILocation(line: 877, column: 14, scope: !2551)
!2566 = !DILocation(line: 877, column: 7, scope: !2538)
!2567 = !DILocation(line: 879, column: 31, scope: !2550)
!2568 = !DILocation(line: 0, scope: !2550)
!2569 = !DILocation(line: 880, column: 7, scope: !2550)
!2570 = !DILocation(line: 880, column: 26, scope: !2550)
!2571 = !DILocation(line: 880, column: 13, scope: !2550)
!2572 = !DILocation(line: 882, column: 31, scope: !2550)
!2573 = !DILocation(line: 883, column: 33, scope: !2550)
!2574 = !DILocation(line: 883, column: 42, scope: !2550)
!2575 = !DILocation(line: 883, column: 31, scope: !2550)
!2576 = !DILocation(line: 882, column: 22, scope: !2550)
!2577 = !DILocation(line: 882, column: 15, scope: !2550)
!2578 = !DILocation(line: 884, column: 11, scope: !2550)
!2579 = !DILocation(line: 885, column: 15, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2550, file: !562, line: 884, column: 11)
!2581 = !{i64 0, i64 8, !2488, i64 8, i64 8, !876}
!2582 = !DILocation(line: 885, column: 9, scope: !2580)
!2583 = !DILocation(line: 886, column: 20, scope: !2550)
!2584 = !DILocation(line: 886, column: 18, scope: !2550)
!2585 = !DILocation(line: 886, column: 32, scope: !2550)
!2586 = !DILocation(line: 886, column: 43, scope: !2550)
!2587 = !DILocation(line: 886, column: 53, scope: !2550)
!2588 = !DILocation(line: 0, scope: !1956, inlinedAt: !2589)
!2589 = distinct !DILocation(line: 886, column: 7, scope: !2550)
!2590 = !DILocation(line: 59, column: 10, scope: !1956, inlinedAt: !2589)
!2591 = !DILocation(line: 887, column: 16, scope: !2550)
!2592 = !DILocation(line: 887, column: 14, scope: !2550)
!2593 = !DILocation(line: 888, column: 5, scope: !2551)
!2594 = !DILocation(line: 888, column: 5, scope: !2550)
!2595 = !DILocation(line: 891, column: 19, scope: !2554)
!2596 = !DILocation(line: 891, column: 25, scope: !2554)
!2597 = !DILocation(line: 0, scope: !2554)
!2598 = !DILocation(line: 892, column: 23, scope: !2554)
!2599 = !DILocation(line: 894, column: 26, scope: !2554)
!2600 = !DILocation(line: 894, column: 32, scope: !2554)
!2601 = !DILocation(line: 896, column: 55, scope: !2554)
!2602 = !DILocation(line: 897, column: 55, scope: !2554)
!2603 = !DILocation(line: 898, column: 55, scope: !2554)
!2604 = !DILocation(line: 899, column: 55, scope: !2554)
!2605 = !DILocation(line: 895, column: 20, scope: !2554)
!2606 = !DILocation(line: 901, column: 14, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2554, file: !562, line: 901, column: 9)
!2608 = !DILocation(line: 901, column: 9, scope: !2554)
!2609 = !DILocation(line: 903, column: 35, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2607, file: !562, line: 902, column: 7)
!2611 = !DILocation(line: 903, column: 20, scope: !2610)
!2612 = !DILocation(line: 904, column: 17, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2610, file: !562, line: 904, column: 13)
!2614 = !DILocation(line: 904, column: 13, scope: !2610)
!2615 = !DILocation(line: 905, column: 11, scope: !2613)
!2616 = !DILocation(line: 906, column: 27, scope: !2610)
!2617 = !DILocation(line: 906, column: 19, scope: !2610)
!2618 = !DILocation(line: 907, column: 69, scope: !2610)
!2619 = !DILocation(line: 909, column: 44, scope: !2610)
!2620 = !DILocation(line: 910, column: 44, scope: !2610)
!2621 = !DILocation(line: 907, column: 9, scope: !2610)
!2622 = !DILocation(line: 911, column: 7, scope: !2610)
!2623 = !DILocation(line: 913, column: 11, scope: !2554)
!2624 = !DILocation(line: 914, column: 5, scope: !2554)
!2625 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !562, file: !562, line: 925, type: !2626, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !586, retainedNodes: !2628)
!2626 = !DISubroutineType(types: !2627)
!2627 = !{!85, !83, !119, !116}
!2628 = !{!2629, !2630, !2631}
!2629 = !DILocalVariable(name: "n", arg: 1, scope: !2625, file: !562, line: 925, type: !83)
!2630 = !DILocalVariable(name: "arg", arg: 2, scope: !2625, file: !562, line: 925, type: !119)
!2631 = !DILocalVariable(name: "argsize", arg: 3, scope: !2625, file: !562, line: 925, type: !116)
!2632 = !DILocation(line: 0, scope: !2625)
!2633 = !DILocation(line: 927, column: 10, scope: !2625)
!2634 = !DILocation(line: 927, column: 3, scope: !2625)
!2635 = distinct !DISubprogram(name: "quotearg", scope: !562, file: !562, line: 931, type: !1128, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !586, retainedNodes: !2636)
!2636 = !{!2637}
!2637 = !DILocalVariable(name: "arg", arg: 1, scope: !2635, file: !562, line: 931, type: !119)
!2638 = !DILocation(line: 0, scope: !2635)
!2639 = !DILocation(line: 0, scope: !2531, inlinedAt: !2640)
!2640 = distinct !DILocation(line: 933, column: 10, scope: !2635)
!2641 = !DILocation(line: 921, column: 10, scope: !2531, inlinedAt: !2640)
!2642 = !DILocation(line: 933, column: 3, scope: !2635)
!2643 = distinct !DISubprogram(name: "quotearg_mem", scope: !562, file: !562, line: 937, type: !2644, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !586, retainedNodes: !2646)
!2644 = !DISubroutineType(types: !2645)
!2645 = !{!85, !119, !116}
!2646 = !{!2647, !2648}
!2647 = !DILocalVariable(name: "arg", arg: 1, scope: !2643, file: !562, line: 937, type: !119)
!2648 = !DILocalVariable(name: "argsize", arg: 2, scope: !2643, file: !562, line: 937, type: !116)
!2649 = !DILocation(line: 0, scope: !2643)
!2650 = !DILocation(line: 0, scope: !2625, inlinedAt: !2651)
!2651 = distinct !DILocation(line: 939, column: 10, scope: !2643)
!2652 = !DILocation(line: 927, column: 10, scope: !2625, inlinedAt: !2651)
!2653 = !DILocation(line: 939, column: 3, scope: !2643)
!2654 = distinct !DISubprogram(name: "quotearg_n_style", scope: !562, file: !562, line: 943, type: !2655, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !586, retainedNodes: !2657)
!2655 = !DISubroutineType(types: !2656)
!2656 = !{!85, !83, !588, !119}
!2657 = !{!2658, !2659, !2660, !2661}
!2658 = !DILocalVariable(name: "n", arg: 1, scope: !2654, file: !562, line: 943, type: !83)
!2659 = !DILocalVariable(name: "s", arg: 2, scope: !2654, file: !562, line: 943, type: !588)
!2660 = !DILocalVariable(name: "arg", arg: 3, scope: !2654, file: !562, line: 943, type: !119)
!2661 = !DILocalVariable(name: "o", scope: !2654, file: !562, line: 945, type: !1742)
!2662 = !DILocation(line: 0, scope: !2654)
!2663 = !DILocation(line: 945, column: 3, scope: !2654)
!2664 = !DILocation(line: 945, column: 32, scope: !2654)
!2665 = !{!2666}
!2666 = distinct !{!2666, !2667, !"quoting_options_from_style: argument 0"}
!2667 = distinct !{!2667, !"quoting_options_from_style"}
!2668 = !DILocation(line: 945, column: 36, scope: !2654)
!2669 = !DILocalVariable(name: "style", arg: 1, scope: !2670, file: !562, line: 183, type: !588)
!2670 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !562, file: !562, line: 183, type: !2671, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !586, retainedNodes: !2673)
!2671 = !DISubroutineType(types: !2672)
!2672 = !{!615, !588}
!2673 = !{!2669, !2674}
!2674 = !DILocalVariable(name: "o", scope: !2670, file: !562, line: 185, type: !615)
!2675 = !DILocation(line: 0, scope: !2670, inlinedAt: !2676)
!2676 = distinct !DILocation(line: 945, column: 36, scope: !2654)
!2677 = !DILocation(line: 185, column: 26, scope: !2670, inlinedAt: !2676)
!2678 = !DILocation(line: 186, column: 13, scope: !2679, inlinedAt: !2676)
!2679 = distinct !DILexicalBlock(scope: !2670, file: !562, line: 186, column: 7)
!2680 = !DILocation(line: 186, column: 7, scope: !2670, inlinedAt: !2676)
!2681 = !DILocation(line: 187, column: 5, scope: !2679, inlinedAt: !2676)
!2682 = !DILocation(line: 188, column: 11, scope: !2670, inlinedAt: !2676)
!2683 = !DILocation(line: 946, column: 10, scope: !2654)
!2684 = !DILocation(line: 947, column: 1, scope: !2654)
!2685 = !DILocation(line: 946, column: 3, scope: !2654)
!2686 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !562, file: !562, line: 950, type: !2687, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !586, retainedNodes: !2689)
!2687 = !DISubroutineType(types: !2688)
!2688 = !{!85, !83, !588, !119, !116}
!2689 = !{!2690, !2691, !2692, !2693, !2694}
!2690 = !DILocalVariable(name: "n", arg: 1, scope: !2686, file: !562, line: 950, type: !83)
!2691 = !DILocalVariable(name: "s", arg: 2, scope: !2686, file: !562, line: 950, type: !588)
!2692 = !DILocalVariable(name: "arg", arg: 3, scope: !2686, file: !562, line: 951, type: !119)
!2693 = !DILocalVariable(name: "argsize", arg: 4, scope: !2686, file: !562, line: 951, type: !116)
!2694 = !DILocalVariable(name: "o", scope: !2686, file: !562, line: 953, type: !1742)
!2695 = !DILocation(line: 0, scope: !2686)
!2696 = !DILocation(line: 953, column: 3, scope: !2686)
!2697 = !DILocation(line: 953, column: 32, scope: !2686)
!2698 = !{!2699}
!2699 = distinct !{!2699, !2700, !"quoting_options_from_style: argument 0"}
!2700 = distinct !{!2700, !"quoting_options_from_style"}
!2701 = !DILocation(line: 953, column: 36, scope: !2686)
!2702 = !DILocation(line: 0, scope: !2670, inlinedAt: !2703)
!2703 = distinct !DILocation(line: 953, column: 36, scope: !2686)
!2704 = !DILocation(line: 185, column: 26, scope: !2670, inlinedAt: !2703)
!2705 = !DILocation(line: 186, column: 13, scope: !2679, inlinedAt: !2703)
!2706 = !DILocation(line: 186, column: 7, scope: !2670, inlinedAt: !2703)
!2707 = !DILocation(line: 187, column: 5, scope: !2679, inlinedAt: !2703)
!2708 = !DILocation(line: 188, column: 11, scope: !2670, inlinedAt: !2703)
!2709 = !DILocation(line: 954, column: 10, scope: !2686)
!2710 = !DILocation(line: 955, column: 1, scope: !2686)
!2711 = !DILocation(line: 954, column: 3, scope: !2686)
!2712 = distinct !DISubprogram(name: "quotearg_style", scope: !562, file: !562, line: 958, type: !2713, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !586, retainedNodes: !2715)
!2713 = !DISubroutineType(types: !2714)
!2714 = !{!85, !588, !119}
!2715 = !{!2716, !2717}
!2716 = !DILocalVariable(name: "s", arg: 1, scope: !2712, file: !562, line: 958, type: !588)
!2717 = !DILocalVariable(name: "arg", arg: 2, scope: !2712, file: !562, line: 958, type: !119)
!2718 = !DILocation(line: 0, scope: !2712)
!2719 = !DILocation(line: 0, scope: !2654, inlinedAt: !2720)
!2720 = distinct !DILocation(line: 960, column: 10, scope: !2712)
!2721 = !DILocation(line: 945, column: 3, scope: !2654, inlinedAt: !2720)
!2722 = !DILocation(line: 945, column: 32, scope: !2654, inlinedAt: !2720)
!2723 = !{!2724}
!2724 = distinct !{!2724, !2725, !"quoting_options_from_style: argument 0"}
!2725 = distinct !{!2725, !"quoting_options_from_style"}
!2726 = !DILocation(line: 945, column: 36, scope: !2654, inlinedAt: !2720)
!2727 = !DILocation(line: 0, scope: !2670, inlinedAt: !2728)
!2728 = distinct !DILocation(line: 945, column: 36, scope: !2654, inlinedAt: !2720)
!2729 = !DILocation(line: 185, column: 26, scope: !2670, inlinedAt: !2728)
!2730 = !DILocation(line: 186, column: 13, scope: !2679, inlinedAt: !2728)
!2731 = !DILocation(line: 186, column: 7, scope: !2670, inlinedAt: !2728)
!2732 = !DILocation(line: 187, column: 5, scope: !2679, inlinedAt: !2728)
!2733 = !DILocation(line: 188, column: 11, scope: !2670, inlinedAt: !2728)
!2734 = !DILocation(line: 946, column: 10, scope: !2654, inlinedAt: !2720)
!2735 = !DILocation(line: 947, column: 1, scope: !2654, inlinedAt: !2720)
!2736 = !DILocation(line: 960, column: 3, scope: !2712)
!2737 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !562, file: !562, line: 964, type: !2738, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !586, retainedNodes: !2740)
!2738 = !DISubroutineType(types: !2739)
!2739 = !{!85, !588, !119, !116}
!2740 = !{!2741, !2742, !2743}
!2741 = !DILocalVariable(name: "s", arg: 1, scope: !2737, file: !562, line: 964, type: !588)
!2742 = !DILocalVariable(name: "arg", arg: 2, scope: !2737, file: !562, line: 964, type: !119)
!2743 = !DILocalVariable(name: "argsize", arg: 3, scope: !2737, file: !562, line: 964, type: !116)
!2744 = !DILocation(line: 0, scope: !2737)
!2745 = !DILocation(line: 0, scope: !2686, inlinedAt: !2746)
!2746 = distinct !DILocation(line: 966, column: 10, scope: !2737)
!2747 = !DILocation(line: 953, column: 3, scope: !2686, inlinedAt: !2746)
!2748 = !DILocation(line: 953, column: 32, scope: !2686, inlinedAt: !2746)
!2749 = !{!2750}
!2750 = distinct !{!2750, !2751, !"quoting_options_from_style: argument 0"}
!2751 = distinct !{!2751, !"quoting_options_from_style"}
!2752 = !DILocation(line: 953, column: 36, scope: !2686, inlinedAt: !2746)
!2753 = !DILocation(line: 0, scope: !2670, inlinedAt: !2754)
!2754 = distinct !DILocation(line: 953, column: 36, scope: !2686, inlinedAt: !2746)
!2755 = !DILocation(line: 185, column: 26, scope: !2670, inlinedAt: !2754)
!2756 = !DILocation(line: 186, column: 13, scope: !2679, inlinedAt: !2754)
!2757 = !DILocation(line: 186, column: 7, scope: !2670, inlinedAt: !2754)
!2758 = !DILocation(line: 187, column: 5, scope: !2679, inlinedAt: !2754)
!2759 = !DILocation(line: 188, column: 11, scope: !2670, inlinedAt: !2754)
!2760 = !DILocation(line: 954, column: 10, scope: !2686, inlinedAt: !2746)
!2761 = !DILocation(line: 955, column: 1, scope: !2686, inlinedAt: !2746)
!2762 = !DILocation(line: 966, column: 3, scope: !2737)
!2763 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !562, file: !562, line: 970, type: !2764, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !586, retainedNodes: !2766)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{!85, !119, !116, !4}
!2766 = !{!2767, !2768, !2769, !2770}
!2767 = !DILocalVariable(name: "arg", arg: 1, scope: !2763, file: !562, line: 970, type: !119)
!2768 = !DILocalVariable(name: "argsize", arg: 2, scope: !2763, file: !562, line: 970, type: !116)
!2769 = !DILocalVariable(name: "ch", arg: 3, scope: !2763, file: !562, line: 970, type: !4)
!2770 = !DILocalVariable(name: "options", scope: !2763, file: !562, line: 972, type: !615)
!2771 = !DILocation(line: 0, scope: !2763)
!2772 = !DILocation(line: 972, column: 3, scope: !2763)
!2773 = !DILocation(line: 972, column: 26, scope: !2763)
!2774 = !DILocation(line: 973, column: 13, scope: !2763)
!2775 = !{i64 0, i64 4, !884, i64 4, i64 4, !976, i64 8, i64 32, !884, i64 40, i64 8, !876, i64 48, i64 8, !876}
!2776 = !DILocation(line: 0, scope: !1761, inlinedAt: !2777)
!2777 = distinct !DILocation(line: 974, column: 3, scope: !2763)
!2778 = !DILocation(line: 147, column: 41, scope: !1761, inlinedAt: !2777)
!2779 = !DILocation(line: 147, column: 62, scope: !1761, inlinedAt: !2777)
!2780 = !DILocation(line: 147, column: 57, scope: !1761, inlinedAt: !2777)
!2781 = !DILocation(line: 148, column: 15, scope: !1761, inlinedAt: !2777)
!2782 = !DILocation(line: 149, column: 21, scope: !1761, inlinedAt: !2777)
!2783 = !DILocation(line: 149, column: 24, scope: !1761, inlinedAt: !2777)
!2784 = !DILocation(line: 150, column: 19, scope: !1761, inlinedAt: !2777)
!2785 = !DILocation(line: 150, column: 24, scope: !1761, inlinedAt: !2777)
!2786 = !DILocation(line: 150, column: 6, scope: !1761, inlinedAt: !2777)
!2787 = !DILocation(line: 975, column: 10, scope: !2763)
!2788 = !DILocation(line: 976, column: 1, scope: !2763)
!2789 = !DILocation(line: 975, column: 3, scope: !2763)
!2790 = distinct !DISubprogram(name: "quotearg_char", scope: !562, file: !562, line: 979, type: !2791, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !586, retainedNodes: !2793)
!2791 = !DISubroutineType(types: !2792)
!2792 = !{!85, !119, !4}
!2793 = !{!2794, !2795}
!2794 = !DILocalVariable(name: "arg", arg: 1, scope: !2790, file: !562, line: 979, type: !119)
!2795 = !DILocalVariable(name: "ch", arg: 2, scope: !2790, file: !562, line: 979, type: !4)
!2796 = !DILocation(line: 0, scope: !2790)
!2797 = !DILocation(line: 0, scope: !2763, inlinedAt: !2798)
!2798 = distinct !DILocation(line: 981, column: 10, scope: !2790)
!2799 = !DILocation(line: 972, column: 3, scope: !2763, inlinedAt: !2798)
!2800 = !DILocation(line: 972, column: 26, scope: !2763, inlinedAt: !2798)
!2801 = !DILocation(line: 973, column: 13, scope: !2763, inlinedAt: !2798)
!2802 = !DILocation(line: 0, scope: !1761, inlinedAt: !2803)
!2803 = distinct !DILocation(line: 974, column: 3, scope: !2763, inlinedAt: !2798)
!2804 = !DILocation(line: 147, column: 41, scope: !1761, inlinedAt: !2803)
!2805 = !DILocation(line: 147, column: 62, scope: !1761, inlinedAt: !2803)
!2806 = !DILocation(line: 147, column: 57, scope: !1761, inlinedAt: !2803)
!2807 = !DILocation(line: 148, column: 15, scope: !1761, inlinedAt: !2803)
!2808 = !DILocation(line: 149, column: 21, scope: !1761, inlinedAt: !2803)
!2809 = !DILocation(line: 149, column: 24, scope: !1761, inlinedAt: !2803)
!2810 = !DILocation(line: 150, column: 19, scope: !1761, inlinedAt: !2803)
!2811 = !DILocation(line: 150, column: 24, scope: !1761, inlinedAt: !2803)
!2812 = !DILocation(line: 150, column: 6, scope: !1761, inlinedAt: !2803)
!2813 = !DILocation(line: 975, column: 10, scope: !2763, inlinedAt: !2798)
!2814 = !DILocation(line: 976, column: 1, scope: !2763, inlinedAt: !2798)
!2815 = !DILocation(line: 981, column: 3, scope: !2790)
!2816 = distinct !DISubprogram(name: "quotearg_colon", scope: !562, file: !562, line: 985, type: !1128, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !586, retainedNodes: !2817)
!2817 = !{!2818}
!2818 = !DILocalVariable(name: "arg", arg: 1, scope: !2816, file: !562, line: 985, type: !119)
!2819 = !DILocation(line: 0, scope: !2816)
!2820 = !DILocation(line: 0, scope: !2790, inlinedAt: !2821)
!2821 = distinct !DILocation(line: 987, column: 10, scope: !2816)
!2822 = !DILocation(line: 0, scope: !2763, inlinedAt: !2823)
!2823 = distinct !DILocation(line: 981, column: 10, scope: !2790, inlinedAt: !2821)
!2824 = !DILocation(line: 972, column: 3, scope: !2763, inlinedAt: !2823)
!2825 = !DILocation(line: 972, column: 26, scope: !2763, inlinedAt: !2823)
!2826 = !DILocation(line: 973, column: 13, scope: !2763, inlinedAt: !2823)
!2827 = !DILocation(line: 0, scope: !1761, inlinedAt: !2828)
!2828 = distinct !DILocation(line: 974, column: 3, scope: !2763, inlinedAt: !2823)
!2829 = !DILocation(line: 147, column: 57, scope: !1761, inlinedAt: !2828)
!2830 = !DILocation(line: 149, column: 21, scope: !1761, inlinedAt: !2828)
!2831 = !DILocation(line: 150, column: 6, scope: !1761, inlinedAt: !2828)
!2832 = !DILocation(line: 975, column: 10, scope: !2763, inlinedAt: !2823)
!2833 = !DILocation(line: 976, column: 1, scope: !2763, inlinedAt: !2823)
!2834 = !DILocation(line: 987, column: 3, scope: !2816)
!2835 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !562, file: !562, line: 991, type: !2644, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !586, retainedNodes: !2836)
!2836 = !{!2837, !2838}
!2837 = !DILocalVariable(name: "arg", arg: 1, scope: !2835, file: !562, line: 991, type: !119)
!2838 = !DILocalVariable(name: "argsize", arg: 2, scope: !2835, file: !562, line: 991, type: !116)
!2839 = !DILocation(line: 0, scope: !2835)
!2840 = !DILocation(line: 0, scope: !2763, inlinedAt: !2841)
!2841 = distinct !DILocation(line: 993, column: 10, scope: !2835)
!2842 = !DILocation(line: 972, column: 3, scope: !2763, inlinedAt: !2841)
!2843 = !DILocation(line: 972, column: 26, scope: !2763, inlinedAt: !2841)
!2844 = !DILocation(line: 973, column: 13, scope: !2763, inlinedAt: !2841)
!2845 = !DILocation(line: 0, scope: !1761, inlinedAt: !2846)
!2846 = distinct !DILocation(line: 974, column: 3, scope: !2763, inlinedAt: !2841)
!2847 = !DILocation(line: 147, column: 57, scope: !1761, inlinedAt: !2846)
!2848 = !DILocation(line: 149, column: 21, scope: !1761, inlinedAt: !2846)
!2849 = !DILocation(line: 150, column: 6, scope: !1761, inlinedAt: !2846)
!2850 = !DILocation(line: 975, column: 10, scope: !2763, inlinedAt: !2841)
!2851 = !DILocation(line: 976, column: 1, scope: !2763, inlinedAt: !2841)
!2852 = !DILocation(line: 993, column: 3, scope: !2835)
!2853 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !562, file: !562, line: 997, type: !2655, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !586, retainedNodes: !2854)
!2854 = !{!2855, !2856, !2857, !2858}
!2855 = !DILocalVariable(name: "n", arg: 1, scope: !2853, file: !562, line: 997, type: !83)
!2856 = !DILocalVariable(name: "s", arg: 2, scope: !2853, file: !562, line: 997, type: !588)
!2857 = !DILocalVariable(name: "arg", arg: 3, scope: !2853, file: !562, line: 997, type: !119)
!2858 = !DILocalVariable(name: "options", scope: !2853, file: !562, line: 999, type: !615)
!2859 = !DILocation(line: 185, column: 26, scope: !2670, inlinedAt: !2860)
!2860 = distinct !DILocation(line: 1000, column: 13, scope: !2853)
!2861 = !DILocation(line: 0, scope: !2853)
!2862 = !DILocation(line: 999, column: 3, scope: !2853)
!2863 = !DILocation(line: 999, column: 26, scope: !2853)
!2864 = !DILocation(line: 0, scope: !2670, inlinedAt: !2860)
!2865 = !DILocation(line: 186, column: 13, scope: !2679, inlinedAt: !2860)
!2866 = !DILocation(line: 186, column: 7, scope: !2670, inlinedAt: !2860)
!2867 = !DILocation(line: 187, column: 5, scope: !2679, inlinedAt: !2860)
!2868 = !{!2869}
!2869 = distinct !{!2869, !2870, !"quoting_options_from_style: argument 0"}
!2870 = distinct !{!2870, !"quoting_options_from_style"}
!2871 = !DILocation(line: 1000, column: 13, scope: !2853)
!2872 = !DILocation(line: 0, scope: !1761, inlinedAt: !2873)
!2873 = distinct !DILocation(line: 1001, column: 3, scope: !2853)
!2874 = !DILocation(line: 147, column: 57, scope: !1761, inlinedAt: !2873)
!2875 = !DILocation(line: 149, column: 21, scope: !1761, inlinedAt: !2873)
!2876 = !DILocation(line: 150, column: 6, scope: !1761, inlinedAt: !2873)
!2877 = !DILocation(line: 1002, column: 10, scope: !2853)
!2878 = !DILocation(line: 1003, column: 1, scope: !2853)
!2879 = !DILocation(line: 1002, column: 3, scope: !2853)
!2880 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !562, file: !562, line: 1006, type: !2881, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !586, retainedNodes: !2883)
!2881 = !DISubroutineType(types: !2882)
!2882 = !{!85, !83, !119, !119, !119}
!2883 = !{!2884, !2885, !2886, !2887}
!2884 = !DILocalVariable(name: "n", arg: 1, scope: !2880, file: !562, line: 1006, type: !83)
!2885 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2880, file: !562, line: 1006, type: !119)
!2886 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2880, file: !562, line: 1007, type: !119)
!2887 = !DILocalVariable(name: "arg", arg: 4, scope: !2880, file: !562, line: 1007, type: !119)
!2888 = !DILocation(line: 0, scope: !2880)
!2889 = !DILocalVariable(name: "n", arg: 1, scope: !2890, file: !562, line: 1014, type: !83)
!2890 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !562, file: !562, line: 1014, type: !2891, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !586, retainedNodes: !2893)
!2891 = !DISubroutineType(types: !2892)
!2892 = !{!85, !83, !119, !119, !119, !116}
!2893 = !{!2889, !2894, !2895, !2896, !2897, !2898}
!2894 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2890, file: !562, line: 1014, type: !119)
!2895 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2890, file: !562, line: 1015, type: !119)
!2896 = !DILocalVariable(name: "arg", arg: 4, scope: !2890, file: !562, line: 1016, type: !119)
!2897 = !DILocalVariable(name: "argsize", arg: 5, scope: !2890, file: !562, line: 1016, type: !116)
!2898 = !DILocalVariable(name: "o", scope: !2890, file: !562, line: 1018, type: !615)
!2899 = !DILocation(line: 0, scope: !2890, inlinedAt: !2900)
!2900 = distinct !DILocation(line: 1009, column: 10, scope: !2880)
!2901 = !DILocation(line: 1018, column: 3, scope: !2890, inlinedAt: !2900)
!2902 = !DILocation(line: 1018, column: 26, scope: !2890, inlinedAt: !2900)
!2903 = !DILocation(line: 1018, column: 30, scope: !2890, inlinedAt: !2900)
!2904 = !DILocation(line: 0, scope: !1801, inlinedAt: !2905)
!2905 = distinct !DILocation(line: 1019, column: 3, scope: !2890, inlinedAt: !2900)
!2906 = !DILocation(line: 174, column: 12, scope: !1801, inlinedAt: !2905)
!2907 = !DILocation(line: 175, column: 8, scope: !1814, inlinedAt: !2905)
!2908 = !DILocation(line: 175, column: 19, scope: !1814, inlinedAt: !2905)
!2909 = !DILocation(line: 176, column: 5, scope: !1814, inlinedAt: !2905)
!2910 = !DILocation(line: 177, column: 6, scope: !1801, inlinedAt: !2905)
!2911 = !DILocation(line: 177, column: 17, scope: !1801, inlinedAt: !2905)
!2912 = !DILocation(line: 178, column: 6, scope: !1801, inlinedAt: !2905)
!2913 = !DILocation(line: 178, column: 18, scope: !1801, inlinedAt: !2905)
!2914 = !DILocation(line: 1020, column: 10, scope: !2890, inlinedAt: !2900)
!2915 = !DILocation(line: 1021, column: 1, scope: !2890, inlinedAt: !2900)
!2916 = !DILocation(line: 1009, column: 3, scope: !2880)
!2917 = !DILocation(line: 0, scope: !2890)
!2918 = !DILocation(line: 1018, column: 3, scope: !2890)
!2919 = !DILocation(line: 1018, column: 26, scope: !2890)
!2920 = !DILocation(line: 1018, column: 30, scope: !2890)
!2921 = !DILocation(line: 0, scope: !1801, inlinedAt: !2922)
!2922 = distinct !DILocation(line: 1019, column: 3, scope: !2890)
!2923 = !DILocation(line: 174, column: 12, scope: !1801, inlinedAt: !2922)
!2924 = !DILocation(line: 175, column: 8, scope: !1814, inlinedAt: !2922)
!2925 = !DILocation(line: 175, column: 19, scope: !1814, inlinedAt: !2922)
!2926 = !DILocation(line: 176, column: 5, scope: !1814, inlinedAt: !2922)
!2927 = !DILocation(line: 177, column: 6, scope: !1801, inlinedAt: !2922)
!2928 = !DILocation(line: 177, column: 17, scope: !1801, inlinedAt: !2922)
!2929 = !DILocation(line: 178, column: 6, scope: !1801, inlinedAt: !2922)
!2930 = !DILocation(line: 178, column: 18, scope: !1801, inlinedAt: !2922)
!2931 = !DILocation(line: 1020, column: 10, scope: !2890)
!2932 = !DILocation(line: 1021, column: 1, scope: !2890)
!2933 = !DILocation(line: 1020, column: 3, scope: !2890)
!2934 = distinct !DISubprogram(name: "quotearg_custom", scope: !562, file: !562, line: 1024, type: !2935, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !586, retainedNodes: !2937)
!2935 = !DISubroutineType(types: !2936)
!2936 = !{!85, !119, !119, !119}
!2937 = !{!2938, !2939, !2940}
!2938 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2934, file: !562, line: 1024, type: !119)
!2939 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2934, file: !562, line: 1024, type: !119)
!2940 = !DILocalVariable(name: "arg", arg: 3, scope: !2934, file: !562, line: 1025, type: !119)
!2941 = !DILocation(line: 0, scope: !2934)
!2942 = !DILocation(line: 0, scope: !2880, inlinedAt: !2943)
!2943 = distinct !DILocation(line: 1027, column: 10, scope: !2934)
!2944 = !DILocation(line: 0, scope: !2890, inlinedAt: !2945)
!2945 = distinct !DILocation(line: 1009, column: 10, scope: !2880, inlinedAt: !2943)
!2946 = !DILocation(line: 1018, column: 3, scope: !2890, inlinedAt: !2945)
!2947 = !DILocation(line: 1018, column: 26, scope: !2890, inlinedAt: !2945)
!2948 = !DILocation(line: 1018, column: 30, scope: !2890, inlinedAt: !2945)
!2949 = !DILocation(line: 0, scope: !1801, inlinedAt: !2950)
!2950 = distinct !DILocation(line: 1019, column: 3, scope: !2890, inlinedAt: !2945)
!2951 = !DILocation(line: 174, column: 12, scope: !1801, inlinedAt: !2950)
!2952 = !DILocation(line: 175, column: 8, scope: !1814, inlinedAt: !2950)
!2953 = !DILocation(line: 175, column: 19, scope: !1814, inlinedAt: !2950)
!2954 = !DILocation(line: 176, column: 5, scope: !1814, inlinedAt: !2950)
!2955 = !DILocation(line: 177, column: 6, scope: !1801, inlinedAt: !2950)
!2956 = !DILocation(line: 177, column: 17, scope: !1801, inlinedAt: !2950)
!2957 = !DILocation(line: 178, column: 6, scope: !1801, inlinedAt: !2950)
!2958 = !DILocation(line: 178, column: 18, scope: !1801, inlinedAt: !2950)
!2959 = !DILocation(line: 1020, column: 10, scope: !2890, inlinedAt: !2945)
!2960 = !DILocation(line: 1021, column: 1, scope: !2890, inlinedAt: !2945)
!2961 = !DILocation(line: 1027, column: 3, scope: !2934)
!2962 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !562, file: !562, line: 1031, type: !2963, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !586, retainedNodes: !2965)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{!85, !119, !119, !119, !116}
!2965 = !{!2966, !2967, !2968, !2969}
!2966 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2962, file: !562, line: 1031, type: !119)
!2967 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2962, file: !562, line: 1031, type: !119)
!2968 = !DILocalVariable(name: "arg", arg: 3, scope: !2962, file: !562, line: 1032, type: !119)
!2969 = !DILocalVariable(name: "argsize", arg: 4, scope: !2962, file: !562, line: 1032, type: !116)
!2970 = !DILocation(line: 0, scope: !2962)
!2971 = !DILocation(line: 0, scope: !2890, inlinedAt: !2972)
!2972 = distinct !DILocation(line: 1034, column: 10, scope: !2962)
!2973 = !DILocation(line: 1018, column: 3, scope: !2890, inlinedAt: !2972)
!2974 = !DILocation(line: 1018, column: 26, scope: !2890, inlinedAt: !2972)
!2975 = !DILocation(line: 1018, column: 30, scope: !2890, inlinedAt: !2972)
!2976 = !DILocation(line: 0, scope: !1801, inlinedAt: !2977)
!2977 = distinct !DILocation(line: 1019, column: 3, scope: !2890, inlinedAt: !2972)
!2978 = !DILocation(line: 174, column: 12, scope: !1801, inlinedAt: !2977)
!2979 = !DILocation(line: 175, column: 8, scope: !1814, inlinedAt: !2977)
!2980 = !DILocation(line: 175, column: 19, scope: !1814, inlinedAt: !2977)
!2981 = !DILocation(line: 176, column: 5, scope: !1814, inlinedAt: !2977)
!2982 = !DILocation(line: 177, column: 6, scope: !1801, inlinedAt: !2977)
!2983 = !DILocation(line: 177, column: 17, scope: !1801, inlinedAt: !2977)
!2984 = !DILocation(line: 178, column: 6, scope: !1801, inlinedAt: !2977)
!2985 = !DILocation(line: 178, column: 18, scope: !1801, inlinedAt: !2977)
!2986 = !DILocation(line: 1020, column: 10, scope: !2890, inlinedAt: !2972)
!2987 = !DILocation(line: 1021, column: 1, scope: !2890, inlinedAt: !2972)
!2988 = !DILocation(line: 1034, column: 3, scope: !2962)
!2989 = distinct !DISubprogram(name: "quote_n_mem", scope: !562, file: !562, line: 1049, type: !2990, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !586, retainedNodes: !2992)
!2990 = !DISubroutineType(types: !2991)
!2991 = !{!119, !83, !119, !116}
!2992 = !{!2993, !2994, !2995}
!2993 = !DILocalVariable(name: "n", arg: 1, scope: !2989, file: !562, line: 1049, type: !83)
!2994 = !DILocalVariable(name: "arg", arg: 2, scope: !2989, file: !562, line: 1049, type: !119)
!2995 = !DILocalVariable(name: "argsize", arg: 3, scope: !2989, file: !562, line: 1049, type: !116)
!2996 = !DILocation(line: 0, scope: !2989)
!2997 = !DILocation(line: 1051, column: 10, scope: !2989)
!2998 = !DILocation(line: 1051, column: 3, scope: !2989)
!2999 = distinct !DISubprogram(name: "quote_mem", scope: !562, file: !562, line: 1055, type: !3000, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !586, retainedNodes: !3002)
!3000 = !DISubroutineType(types: !3001)
!3001 = !{!119, !119, !116}
!3002 = !{!3003, !3004}
!3003 = !DILocalVariable(name: "arg", arg: 1, scope: !2999, file: !562, line: 1055, type: !119)
!3004 = !DILocalVariable(name: "argsize", arg: 2, scope: !2999, file: !562, line: 1055, type: !116)
!3005 = !DILocation(line: 0, scope: !2999)
!3006 = !DILocation(line: 0, scope: !2989, inlinedAt: !3007)
!3007 = distinct !DILocation(line: 1057, column: 10, scope: !2999)
!3008 = !DILocation(line: 1051, column: 10, scope: !2989, inlinedAt: !3007)
!3009 = !DILocation(line: 1057, column: 3, scope: !2999)
!3010 = distinct !DISubprogram(name: "quote_n", scope: !562, file: !562, line: 1061, type: !3011, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !586, retainedNodes: !3013)
!3011 = !DISubroutineType(types: !3012)
!3012 = !{!119, !83, !119}
!3013 = !{!3014, !3015}
!3014 = !DILocalVariable(name: "n", arg: 1, scope: !3010, file: !562, line: 1061, type: !83)
!3015 = !DILocalVariable(name: "arg", arg: 2, scope: !3010, file: !562, line: 1061, type: !119)
!3016 = !DILocation(line: 0, scope: !3010)
!3017 = !DILocation(line: 0, scope: !2989, inlinedAt: !3018)
!3018 = distinct !DILocation(line: 1063, column: 10, scope: !3010)
!3019 = !DILocation(line: 1051, column: 10, scope: !2989, inlinedAt: !3018)
!3020 = !DILocation(line: 1063, column: 3, scope: !3010)
!3021 = distinct !DISubprogram(name: "quote", scope: !562, file: !562, line: 1067, type: !3022, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !586, retainedNodes: !3024)
!3022 = !DISubroutineType(types: !3023)
!3023 = !{!119, !119}
!3024 = !{!3025}
!3025 = !DILocalVariable(name: "arg", arg: 1, scope: !3021, file: !562, line: 1067, type: !119)
!3026 = !DILocation(line: 0, scope: !3021)
!3027 = !DILocation(line: 0, scope: !3010, inlinedAt: !3028)
!3028 = distinct !DILocation(line: 1069, column: 10, scope: !3021)
!3029 = !DILocation(line: 0, scope: !2989, inlinedAt: !3030)
!3030 = distinct !DILocation(line: 1063, column: 10, scope: !3010, inlinedAt: !3028)
!3031 = !DILocation(line: 1051, column: 10, scope: !2989, inlinedAt: !3030)
!3032 = !DILocation(line: 1069, column: 3, scope: !3021)
!3033 = distinct !DISubprogram(name: "version_etc_arn", scope: !678, file: !678, line: 61, type: !3034, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !3071)
!3034 = !DISubroutineType(types: !3035)
!3035 = !{null, !3036, !119, !119, !119, !3070, !116}
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !186, line: 7, baseType: !3038)
!3038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !188, line: 49, size: 1728, elements: !3039)
!3039 = !{!3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3052, !3053, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3068, !3069}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3038, file: !188, line: 51, baseType: !83, size: 32)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3038, file: !188, line: 54, baseType: !85, size: 64, offset: 64)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3038, file: !188, line: 55, baseType: !85, size: 64, offset: 128)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3038, file: !188, line: 56, baseType: !85, size: 64, offset: 192)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3038, file: !188, line: 57, baseType: !85, size: 64, offset: 256)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3038, file: !188, line: 58, baseType: !85, size: 64, offset: 320)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3038, file: !188, line: 59, baseType: !85, size: 64, offset: 384)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3038, file: !188, line: 60, baseType: !85, size: 64, offset: 448)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3038, file: !188, line: 61, baseType: !85, size: 64, offset: 512)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3038, file: !188, line: 64, baseType: !85, size: 64, offset: 576)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3038, file: !188, line: 65, baseType: !85, size: 64, offset: 640)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3038, file: !188, line: 66, baseType: !85, size: 64, offset: 704)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3038, file: !188, line: 68, baseType: !203, size: 64, offset: 768)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3038, file: !188, line: 70, baseType: !3054, size: 64, offset: 832)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3038, file: !188, line: 72, baseType: !83, size: 32, offset: 896)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3038, file: !188, line: 73, baseType: !83, size: 32, offset: 928)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3038, file: !188, line: 74, baseType: !210, size: 64, offset: 960)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3038, file: !188, line: 77, baseType: !115, size: 16, offset: 1024)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3038, file: !188, line: 78, baseType: !215, size: 8, offset: 1040)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3038, file: !188, line: 79, baseType: !126, size: 8, offset: 1048)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3038, file: !188, line: 81, baseType: !218, size: 64, offset: 1088)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3038, file: !188, line: 89, baseType: !221, size: 64, offset: 1152)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3038, file: !188, line: 91, baseType: !223, size: 64, offset: 1216)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3038, file: !188, line: 92, baseType: !226, size: 64, offset: 1280)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3038, file: !188, line: 93, baseType: !3054, size: 64, offset: 1344)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3038, file: !188, line: 94, baseType: !122, size: 64, offset: 1408)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3038, file: !188, line: 95, baseType: !116, size: 64, offset: 1472)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3038, file: !188, line: 96, baseType: !83, size: 32, offset: 1536)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3038, file: !188, line: 98, baseType: !233, size: 160, offset: 1568)
!3070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!3071 = !{!3072, !3073, !3074, !3075, !3076, !3077}
!3072 = !DILocalVariable(name: "stream", arg: 1, scope: !3033, file: !678, line: 61, type: !3036)
!3073 = !DILocalVariable(name: "command_name", arg: 2, scope: !3033, file: !678, line: 62, type: !119)
!3074 = !DILocalVariable(name: "package", arg: 3, scope: !3033, file: !678, line: 62, type: !119)
!3075 = !DILocalVariable(name: "version", arg: 4, scope: !3033, file: !678, line: 63, type: !119)
!3076 = !DILocalVariable(name: "authors", arg: 5, scope: !3033, file: !678, line: 64, type: !3070)
!3077 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3033, file: !678, line: 64, type: !116)
!3078 = !DILocation(line: 0, scope: !3033)
!3079 = !DILocation(line: 66, column: 7, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !3033, file: !678, line: 66, column: 7)
!3081 = !DILocation(line: 66, column: 7, scope: !3033)
!3082 = !DILocation(line: 67, column: 5, scope: !3080)
!3083 = !DILocation(line: 69, column: 5, scope: !3080)
!3084 = !DILocation(line: 83, column: 3, scope: !3033)
!3085 = !DILocation(line: 85, column: 3, scope: !3033)
!3086 = !DILocation(line: 88, column: 3, scope: !3033)
!3087 = !DILocation(line: 95, column: 3, scope: !3033)
!3088 = !DILocation(line: 97, column: 3, scope: !3033)
!3089 = !DILocation(line: 105, column: 7, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3033, file: !678, line: 98, column: 5)
!3091 = !DILocation(line: 106, column: 7, scope: !3090)
!3092 = !DILocation(line: 109, column: 7, scope: !3090)
!3093 = !DILocation(line: 110, column: 7, scope: !3090)
!3094 = !DILocation(line: 113, column: 7, scope: !3090)
!3095 = !DILocation(line: 115, column: 7, scope: !3090)
!3096 = !DILocation(line: 120, column: 7, scope: !3090)
!3097 = !DILocation(line: 122, column: 7, scope: !3090)
!3098 = !DILocation(line: 127, column: 7, scope: !3090)
!3099 = !DILocation(line: 129, column: 7, scope: !3090)
!3100 = !DILocation(line: 134, column: 7, scope: !3090)
!3101 = !DILocation(line: 137, column: 7, scope: !3090)
!3102 = !DILocation(line: 142, column: 7, scope: !3090)
!3103 = !DILocation(line: 145, column: 7, scope: !3090)
!3104 = !DILocation(line: 150, column: 7, scope: !3090)
!3105 = !DILocation(line: 154, column: 7, scope: !3090)
!3106 = !DILocation(line: 159, column: 7, scope: !3090)
!3107 = !DILocation(line: 163, column: 7, scope: !3090)
!3108 = !DILocation(line: 170, column: 7, scope: !3090)
!3109 = !DILocation(line: 174, column: 7, scope: !3090)
!3110 = !DILocation(line: 176, column: 1, scope: !3033)
!3111 = distinct !DISubprogram(name: "version_etc_ar", scope: !678, file: !678, line: 183, type: !3112, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !3114)
!3112 = !DISubroutineType(types: !3113)
!3113 = !{null, !3036, !119, !119, !119, !3070}
!3114 = !{!3115, !3116, !3117, !3118, !3119, !3120}
!3115 = !DILocalVariable(name: "stream", arg: 1, scope: !3111, file: !678, line: 183, type: !3036)
!3116 = !DILocalVariable(name: "command_name", arg: 2, scope: !3111, file: !678, line: 184, type: !119)
!3117 = !DILocalVariable(name: "package", arg: 3, scope: !3111, file: !678, line: 184, type: !119)
!3118 = !DILocalVariable(name: "version", arg: 4, scope: !3111, file: !678, line: 185, type: !119)
!3119 = !DILocalVariable(name: "authors", arg: 5, scope: !3111, file: !678, line: 185, type: !3070)
!3120 = !DILocalVariable(name: "n_authors", scope: !3111, file: !678, line: 187, type: !116)
!3121 = !DILocation(line: 0, scope: !3111)
!3122 = !DILocation(line: 189, column: 8, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3111, file: !678, line: 189, column: 3)
!3124 = !DILocation(line: 189, scope: !3123)
!3125 = !DILocation(line: 189, column: 23, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !3123, file: !678, line: 189, column: 3)
!3127 = !DILocation(line: 189, column: 3, scope: !3123)
!3128 = !DILocation(line: 189, column: 52, scope: !3126)
!3129 = distinct !{!3129, !3127, !3130, !1015}
!3130 = !DILocation(line: 190, column: 5, scope: !3123)
!3131 = !DILocation(line: 191, column: 3, scope: !3111)
!3132 = !DILocation(line: 192, column: 1, scope: !3111)
!3133 = distinct !DISubprogram(name: "version_etc_va", scope: !678, file: !678, line: 199, type: !3134, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !3144)
!3134 = !DISubroutineType(types: !3135)
!3135 = !{null, !3036, !119, !119, !119, !3136}
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3138)
!3138 = !{!3139, !3141, !3142, !3143}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3137, file: !3140, line: 192, baseType: !90, size: 32)
!3140 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3137, file: !3140, line: 192, baseType: !90, size: 32, offset: 32)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3137, file: !3140, line: 192, baseType: !122, size: 64, offset: 64)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3137, file: !3140, line: 192, baseType: !122, size: 64, offset: 128)
!3144 = !{!3145, !3146, !3147, !3148, !3149, !3150, !3151}
!3145 = !DILocalVariable(name: "stream", arg: 1, scope: !3133, file: !678, line: 199, type: !3036)
!3146 = !DILocalVariable(name: "command_name", arg: 2, scope: !3133, file: !678, line: 200, type: !119)
!3147 = !DILocalVariable(name: "package", arg: 3, scope: !3133, file: !678, line: 200, type: !119)
!3148 = !DILocalVariable(name: "version", arg: 4, scope: !3133, file: !678, line: 201, type: !119)
!3149 = !DILocalVariable(name: "authors", arg: 5, scope: !3133, file: !678, line: 201, type: !3136)
!3150 = !DILocalVariable(name: "n_authors", scope: !3133, file: !678, line: 203, type: !116)
!3151 = !DILocalVariable(name: "authtab", scope: !3133, file: !678, line: 204, type: !3152)
!3152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 640, elements: !132)
!3153 = !DILocation(line: 0, scope: !3133)
!3154 = !DILocation(line: 204, column: 3, scope: !3133)
!3155 = !DILocation(line: 204, column: 15, scope: !3133)
!3156 = !DILocation(line: 208, column: 35, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !3158, file: !678, line: 206, column: 3)
!3158 = distinct !DILexicalBlock(scope: !3133, file: !678, line: 206, column: 3)
!3159 = !DILocation(line: 208, column: 33, scope: !3157)
!3160 = !DILocation(line: 208, column: 67, scope: !3157)
!3161 = !DILocation(line: 206, column: 3, scope: !3158)
!3162 = !DILocation(line: 208, column: 14, scope: !3157)
!3163 = !DILocation(line: 0, scope: !3158)
!3164 = !DILocation(line: 211, column: 3, scope: !3133)
!3165 = !DILocation(line: 213, column: 1, scope: !3133)
!3166 = distinct !DISubprogram(name: "version_etc", scope: !678, file: !678, line: 230, type: !3167, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !3169)
!3167 = !DISubroutineType(types: !3168)
!3168 = !{null, !3036, !119, !119, !119, null}
!3169 = !{!3170, !3171, !3172, !3173, !3174}
!3170 = !DILocalVariable(name: "stream", arg: 1, scope: !3166, file: !678, line: 230, type: !3036)
!3171 = !DILocalVariable(name: "command_name", arg: 2, scope: !3166, file: !678, line: 231, type: !119)
!3172 = !DILocalVariable(name: "package", arg: 3, scope: !3166, file: !678, line: 231, type: !119)
!3173 = !DILocalVariable(name: "version", arg: 4, scope: !3166, file: !678, line: 232, type: !119)
!3174 = !DILocalVariable(name: "authors", scope: !3166, file: !678, line: 234, type: !3175)
!3175 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !971, line: 52, baseType: !3176)
!3176 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1588, line: 14, baseType: !3177)
!3177 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3140, baseType: !3178)
!3178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3137, size: 192, elements: !127)
!3179 = !DILocation(line: 0, scope: !3166)
!3180 = !DILocation(line: 234, column: 3, scope: !3166)
!3181 = !DILocation(line: 234, column: 11, scope: !3166)
!3182 = !DILocation(line: 235, column: 3, scope: !3166)
!3183 = !DILocation(line: 236, column: 3, scope: !3166)
!3184 = !DILocation(line: 237, column: 3, scope: !3166)
!3185 = !DILocation(line: 238, column: 1, scope: !3166)
!3186 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !678, file: !678, line: 241, type: !517, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !960)
!3187 = !DILocation(line: 243, column: 3, scope: !3186)
!3188 = !DILocation(line: 248, column: 3, scope: !3186)
!3189 = !DILocation(line: 254, column: 3, scope: !3186)
!3190 = !DILocation(line: 259, column: 3, scope: !3186)
!3191 = !DILocation(line: 261, column: 1, scope: !3186)
!3192 = distinct !DISubprogram(name: "xnrealloc", scope: !3193, file: !3193, line: 147, type: !3194, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !3196)
!3193 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3194 = !DISubroutineType(types: !3195)
!3195 = !{!122, !122, !116, !116}
!3196 = !{!3197, !3198, !3199}
!3197 = !DILocalVariable(name: "p", arg: 1, scope: !3192, file: !3193, line: 147, type: !122)
!3198 = !DILocalVariable(name: "n", arg: 2, scope: !3192, file: !3193, line: 147, type: !116)
!3199 = !DILocalVariable(name: "s", arg: 3, scope: !3192, file: !3193, line: 147, type: !116)
!3200 = !DILocation(line: 0, scope: !3192)
!3201 = !DILocalVariable(name: "p", arg: 1, scope: !3202, file: !804, line: 83, type: !122)
!3202 = distinct !DISubprogram(name: "xreallocarray", scope: !804, file: !804, line: 83, type: !3194, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !3203)
!3203 = !{!3201, !3204, !3205}
!3204 = !DILocalVariable(name: "n", arg: 2, scope: !3202, file: !804, line: 83, type: !116)
!3205 = !DILocalVariable(name: "s", arg: 3, scope: !3202, file: !804, line: 83, type: !116)
!3206 = !DILocation(line: 0, scope: !3202, inlinedAt: !3207)
!3207 = distinct !DILocation(line: 149, column: 10, scope: !3192)
!3208 = !DILocation(line: 85, column: 25, scope: !3202, inlinedAt: !3207)
!3209 = !DILocalVariable(name: "p", arg: 1, scope: !3210, file: !804, line: 37, type: !122)
!3210 = distinct !DISubprogram(name: "check_nonnull", scope: !804, file: !804, line: 37, type: !3211, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !3213)
!3211 = !DISubroutineType(types: !3212)
!3212 = !{!122, !122}
!3213 = !{!3209}
!3214 = !DILocation(line: 0, scope: !3210, inlinedAt: !3215)
!3215 = distinct !DILocation(line: 85, column: 10, scope: !3202, inlinedAt: !3207)
!3216 = !DILocation(line: 39, column: 8, scope: !3217, inlinedAt: !3215)
!3217 = distinct !DILexicalBlock(scope: !3210, file: !804, line: 39, column: 7)
!3218 = !DILocation(line: 39, column: 7, scope: !3210, inlinedAt: !3215)
!3219 = !DILocation(line: 40, column: 5, scope: !3217, inlinedAt: !3215)
!3220 = !DILocation(line: 149, column: 3, scope: !3192)
!3221 = !DILocation(line: 0, scope: !3202)
!3222 = !DILocation(line: 85, column: 25, scope: !3202)
!3223 = !DILocation(line: 0, scope: !3210, inlinedAt: !3224)
!3224 = distinct !DILocation(line: 85, column: 10, scope: !3202)
!3225 = !DILocation(line: 39, column: 8, scope: !3217, inlinedAt: !3224)
!3226 = !DILocation(line: 39, column: 7, scope: !3210, inlinedAt: !3224)
!3227 = !DILocation(line: 40, column: 5, scope: !3217, inlinedAt: !3224)
!3228 = !DILocation(line: 85, column: 3, scope: !3202)
!3229 = distinct !DISubprogram(name: "xmalloc", scope: !804, file: !804, line: 47, type: !3230, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !3232)
!3230 = !DISubroutineType(types: !3231)
!3231 = !{!122, !116}
!3232 = !{!3233}
!3233 = !DILocalVariable(name: "s", arg: 1, scope: !3229, file: !804, line: 47, type: !116)
!3234 = !DILocation(line: 0, scope: !3229)
!3235 = !DILocation(line: 49, column: 25, scope: !3229)
!3236 = !DILocation(line: 0, scope: !3210, inlinedAt: !3237)
!3237 = distinct !DILocation(line: 49, column: 10, scope: !3229)
!3238 = !DILocation(line: 39, column: 8, scope: !3217, inlinedAt: !3237)
!3239 = !DILocation(line: 39, column: 7, scope: !3210, inlinedAt: !3237)
!3240 = !DILocation(line: 40, column: 5, scope: !3217, inlinedAt: !3237)
!3241 = !DILocation(line: 49, column: 3, scope: !3229)
!3242 = !DISubprogram(name: "malloc", scope: !1126, file: !1126, line: 540, type: !3230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !960)
!3243 = distinct !DISubprogram(name: "ximalloc", scope: !804, file: !804, line: 53, type: !3244, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !3246)
!3244 = !DISubroutineType(types: !3245)
!3245 = !{!122, !823}
!3246 = !{!3247}
!3247 = !DILocalVariable(name: "s", arg: 1, scope: !3243, file: !804, line: 53, type: !823)
!3248 = !DILocation(line: 0, scope: !3243)
!3249 = !DILocalVariable(name: "s", arg: 1, scope: !3250, file: !3251, line: 55, type: !823)
!3250 = distinct !DISubprogram(name: "imalloc", scope: !3251, file: !3251, line: 55, type: !3244, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !3252)
!3251 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3252 = !{!3249}
!3253 = !DILocation(line: 0, scope: !3250, inlinedAt: !3254)
!3254 = distinct !DILocation(line: 55, column: 25, scope: !3243)
!3255 = !DILocation(line: 57, column: 26, scope: !3250, inlinedAt: !3254)
!3256 = !DILocation(line: 0, scope: !3210, inlinedAt: !3257)
!3257 = distinct !DILocation(line: 55, column: 10, scope: !3243)
!3258 = !DILocation(line: 39, column: 8, scope: !3217, inlinedAt: !3257)
!3259 = !DILocation(line: 39, column: 7, scope: !3210, inlinedAt: !3257)
!3260 = !DILocation(line: 40, column: 5, scope: !3217, inlinedAt: !3257)
!3261 = !DILocation(line: 55, column: 3, scope: !3243)
!3262 = distinct !DISubprogram(name: "xcharalloc", scope: !804, file: !804, line: 59, type: !3263, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !3265)
!3263 = !DISubroutineType(types: !3264)
!3264 = !{!85, !116}
!3265 = !{!3266}
!3266 = !DILocalVariable(name: "n", arg: 1, scope: !3262, file: !804, line: 59, type: !116)
!3267 = !DILocation(line: 0, scope: !3262)
!3268 = !DILocation(line: 0, scope: !3229, inlinedAt: !3269)
!3269 = distinct !DILocation(line: 61, column: 10, scope: !3262)
!3270 = !DILocation(line: 49, column: 25, scope: !3229, inlinedAt: !3269)
!3271 = !DILocation(line: 0, scope: !3210, inlinedAt: !3272)
!3272 = distinct !DILocation(line: 49, column: 10, scope: !3229, inlinedAt: !3269)
!3273 = !DILocation(line: 39, column: 8, scope: !3217, inlinedAt: !3272)
!3274 = !DILocation(line: 39, column: 7, scope: !3210, inlinedAt: !3272)
!3275 = !DILocation(line: 40, column: 5, scope: !3217, inlinedAt: !3272)
!3276 = !DILocation(line: 61, column: 3, scope: !3262)
!3277 = distinct !DISubprogram(name: "xrealloc", scope: !804, file: !804, line: 68, type: !3278, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !3280)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{!122, !122, !116}
!3280 = !{!3281, !3282}
!3281 = !DILocalVariable(name: "p", arg: 1, scope: !3277, file: !804, line: 68, type: !122)
!3282 = !DILocalVariable(name: "s", arg: 2, scope: !3277, file: !804, line: 68, type: !116)
!3283 = !DILocation(line: 0, scope: !3277)
!3284 = !DILocalVariable(name: "ptr", arg: 1, scope: !3285, file: !3286, line: 2057, type: !122)
!3285 = distinct !DISubprogram(name: "rpl_realloc", scope: !3286, file: !3286, line: 2057, type: !3278, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !3287)
!3286 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3287 = !{!3284, !3288}
!3288 = !DILocalVariable(name: "size", arg: 2, scope: !3285, file: !3286, line: 2057, type: !116)
!3289 = !DILocation(line: 0, scope: !3285, inlinedAt: !3290)
!3290 = distinct !DILocation(line: 70, column: 25, scope: !3277)
!3291 = !DILocation(line: 2059, column: 24, scope: !3285, inlinedAt: !3290)
!3292 = !DILocation(line: 2059, column: 10, scope: !3285, inlinedAt: !3290)
!3293 = !DILocation(line: 0, scope: !3210, inlinedAt: !3294)
!3294 = distinct !DILocation(line: 70, column: 10, scope: !3277)
!3295 = !DILocation(line: 39, column: 8, scope: !3217, inlinedAt: !3294)
!3296 = !DILocation(line: 39, column: 7, scope: !3210, inlinedAt: !3294)
!3297 = !DILocation(line: 40, column: 5, scope: !3217, inlinedAt: !3294)
!3298 = !DILocation(line: 70, column: 3, scope: !3277)
!3299 = !DISubprogram(name: "realloc", scope: !1126, file: !1126, line: 551, type: !3278, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !960)
!3300 = distinct !DISubprogram(name: "xirealloc", scope: !804, file: !804, line: 74, type: !3301, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !3303)
!3301 = !DISubroutineType(types: !3302)
!3302 = !{!122, !122, !823}
!3303 = !{!3304, !3305}
!3304 = !DILocalVariable(name: "p", arg: 1, scope: !3300, file: !804, line: 74, type: !122)
!3305 = !DILocalVariable(name: "s", arg: 2, scope: !3300, file: !804, line: 74, type: !823)
!3306 = !DILocation(line: 0, scope: !3300)
!3307 = !DILocalVariable(name: "p", arg: 1, scope: !3308, file: !3251, line: 66, type: !122)
!3308 = distinct !DISubprogram(name: "irealloc", scope: !3251, file: !3251, line: 66, type: !3301, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !3309)
!3309 = !{!3307, !3310}
!3310 = !DILocalVariable(name: "s", arg: 2, scope: !3308, file: !3251, line: 66, type: !823)
!3311 = !DILocation(line: 0, scope: !3308, inlinedAt: !3312)
!3312 = distinct !DILocation(line: 76, column: 25, scope: !3300)
!3313 = !DILocation(line: 0, scope: !3285, inlinedAt: !3314)
!3314 = distinct !DILocation(line: 68, column: 26, scope: !3308, inlinedAt: !3312)
!3315 = !DILocation(line: 2059, column: 24, scope: !3285, inlinedAt: !3314)
!3316 = !DILocation(line: 2059, column: 10, scope: !3285, inlinedAt: !3314)
!3317 = !DILocation(line: 0, scope: !3210, inlinedAt: !3318)
!3318 = distinct !DILocation(line: 76, column: 10, scope: !3300)
!3319 = !DILocation(line: 39, column: 8, scope: !3217, inlinedAt: !3318)
!3320 = !DILocation(line: 39, column: 7, scope: !3210, inlinedAt: !3318)
!3321 = !DILocation(line: 40, column: 5, scope: !3217, inlinedAt: !3318)
!3322 = !DILocation(line: 76, column: 3, scope: !3300)
!3323 = distinct !DISubprogram(name: "xireallocarray", scope: !804, file: !804, line: 89, type: !3324, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !3326)
!3324 = !DISubroutineType(types: !3325)
!3325 = !{!122, !122, !823, !823}
!3326 = !{!3327, !3328, !3329}
!3327 = !DILocalVariable(name: "p", arg: 1, scope: !3323, file: !804, line: 89, type: !122)
!3328 = !DILocalVariable(name: "n", arg: 2, scope: !3323, file: !804, line: 89, type: !823)
!3329 = !DILocalVariable(name: "s", arg: 3, scope: !3323, file: !804, line: 89, type: !823)
!3330 = !DILocation(line: 0, scope: !3323)
!3331 = !DILocalVariable(name: "p", arg: 1, scope: !3332, file: !3251, line: 98, type: !122)
!3332 = distinct !DISubprogram(name: "ireallocarray", scope: !3251, file: !3251, line: 98, type: !3324, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !3333)
!3333 = !{!3331, !3334, !3335}
!3334 = !DILocalVariable(name: "n", arg: 2, scope: !3332, file: !3251, line: 98, type: !823)
!3335 = !DILocalVariable(name: "s", arg: 3, scope: !3332, file: !3251, line: 98, type: !823)
!3336 = !DILocation(line: 0, scope: !3332, inlinedAt: !3337)
!3337 = distinct !DILocation(line: 91, column: 25, scope: !3323)
!3338 = !DILocation(line: 101, column: 13, scope: !3332, inlinedAt: !3337)
!3339 = !DILocation(line: 0, scope: !3210, inlinedAt: !3340)
!3340 = distinct !DILocation(line: 91, column: 10, scope: !3323)
!3341 = !DILocation(line: 39, column: 8, scope: !3217, inlinedAt: !3340)
!3342 = !DILocation(line: 39, column: 7, scope: !3210, inlinedAt: !3340)
!3343 = !DILocation(line: 40, column: 5, scope: !3217, inlinedAt: !3340)
!3344 = !DILocation(line: 91, column: 3, scope: !3323)
!3345 = distinct !DISubprogram(name: "xnmalloc", scope: !804, file: !804, line: 98, type: !3346, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !3348)
!3346 = !DISubroutineType(types: !3347)
!3347 = !{!122, !116, !116}
!3348 = !{!3349, !3350}
!3349 = !DILocalVariable(name: "n", arg: 1, scope: !3345, file: !804, line: 98, type: !116)
!3350 = !DILocalVariable(name: "s", arg: 2, scope: !3345, file: !804, line: 98, type: !116)
!3351 = !DILocation(line: 0, scope: !3345)
!3352 = !DILocation(line: 0, scope: !3202, inlinedAt: !3353)
!3353 = distinct !DILocation(line: 100, column: 10, scope: !3345)
!3354 = !DILocation(line: 85, column: 25, scope: !3202, inlinedAt: !3353)
!3355 = !DILocation(line: 0, scope: !3210, inlinedAt: !3356)
!3356 = distinct !DILocation(line: 85, column: 10, scope: !3202, inlinedAt: !3353)
!3357 = !DILocation(line: 39, column: 8, scope: !3217, inlinedAt: !3356)
!3358 = !DILocation(line: 39, column: 7, scope: !3210, inlinedAt: !3356)
!3359 = !DILocation(line: 40, column: 5, scope: !3217, inlinedAt: !3356)
!3360 = !DILocation(line: 100, column: 3, scope: !3345)
!3361 = distinct !DISubprogram(name: "xinmalloc", scope: !804, file: !804, line: 104, type: !3362, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !3364)
!3362 = !DISubroutineType(types: !3363)
!3363 = !{!122, !823, !823}
!3364 = !{!3365, !3366}
!3365 = !DILocalVariable(name: "n", arg: 1, scope: !3361, file: !804, line: 104, type: !823)
!3366 = !DILocalVariable(name: "s", arg: 2, scope: !3361, file: !804, line: 104, type: !823)
!3367 = !DILocation(line: 0, scope: !3361)
!3368 = !DILocation(line: 0, scope: !3323, inlinedAt: !3369)
!3369 = distinct !DILocation(line: 106, column: 10, scope: !3361)
!3370 = !DILocation(line: 0, scope: !3332, inlinedAt: !3371)
!3371 = distinct !DILocation(line: 91, column: 25, scope: !3323, inlinedAt: !3369)
!3372 = !DILocation(line: 101, column: 13, scope: !3332, inlinedAt: !3371)
!3373 = !DILocation(line: 0, scope: !3210, inlinedAt: !3374)
!3374 = distinct !DILocation(line: 91, column: 10, scope: !3323, inlinedAt: !3369)
!3375 = !DILocation(line: 39, column: 8, scope: !3217, inlinedAt: !3374)
!3376 = !DILocation(line: 39, column: 7, scope: !3210, inlinedAt: !3374)
!3377 = !DILocation(line: 40, column: 5, scope: !3217, inlinedAt: !3374)
!3378 = !DILocation(line: 106, column: 3, scope: !3361)
!3379 = distinct !DISubprogram(name: "x2realloc", scope: !804, file: !804, line: 116, type: !3380, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !3382)
!3380 = !DISubroutineType(types: !3381)
!3381 = !{!122, !122, !810}
!3382 = !{!3383, !3384}
!3383 = !DILocalVariable(name: "p", arg: 1, scope: !3379, file: !804, line: 116, type: !122)
!3384 = !DILocalVariable(name: "ps", arg: 2, scope: !3379, file: !804, line: 116, type: !810)
!3385 = !DILocation(line: 0, scope: !3379)
!3386 = !DILocation(line: 0, scope: !807, inlinedAt: !3387)
!3387 = distinct !DILocation(line: 118, column: 10, scope: !3379)
!3388 = !DILocation(line: 178, column: 14, scope: !807, inlinedAt: !3387)
!3389 = !DILocation(line: 180, column: 9, scope: !3390, inlinedAt: !3387)
!3390 = distinct !DILexicalBlock(scope: !807, file: !804, line: 180, column: 7)
!3391 = !DILocation(line: 180, column: 7, scope: !807, inlinedAt: !3387)
!3392 = !DILocation(line: 182, column: 13, scope: !3393, inlinedAt: !3387)
!3393 = distinct !DILexicalBlock(scope: !3394, file: !804, line: 182, column: 11)
!3394 = distinct !DILexicalBlock(scope: !3390, file: !804, line: 181, column: 5)
!3395 = !DILocation(line: 182, column: 11, scope: !3394, inlinedAt: !3387)
!3396 = !DILocation(line: 197, column: 11, scope: !3397, inlinedAt: !3387)
!3397 = distinct !DILexicalBlock(scope: !3398, file: !804, line: 197, column: 11)
!3398 = distinct !DILexicalBlock(scope: !3390, file: !804, line: 195, column: 5)
!3399 = !DILocation(line: 197, column: 11, scope: !3398, inlinedAt: !3387)
!3400 = !DILocation(line: 198, column: 9, scope: !3397, inlinedAt: !3387)
!3401 = !DILocation(line: 0, scope: !3202, inlinedAt: !3402)
!3402 = distinct !DILocation(line: 201, column: 7, scope: !807, inlinedAt: !3387)
!3403 = !DILocation(line: 85, column: 25, scope: !3202, inlinedAt: !3402)
!3404 = !DILocation(line: 0, scope: !3210, inlinedAt: !3405)
!3405 = distinct !DILocation(line: 85, column: 10, scope: !3202, inlinedAt: !3402)
!3406 = !DILocation(line: 39, column: 8, scope: !3217, inlinedAt: !3405)
!3407 = !DILocation(line: 39, column: 7, scope: !3210, inlinedAt: !3405)
!3408 = !DILocation(line: 40, column: 5, scope: !3217, inlinedAt: !3405)
!3409 = !DILocation(line: 202, column: 7, scope: !807, inlinedAt: !3387)
!3410 = !DILocation(line: 118, column: 3, scope: !3379)
!3411 = !DILocation(line: 0, scope: !807)
!3412 = !DILocation(line: 178, column: 14, scope: !807)
!3413 = !DILocation(line: 180, column: 9, scope: !3390)
!3414 = !DILocation(line: 180, column: 7, scope: !807)
!3415 = !DILocation(line: 182, column: 13, scope: !3393)
!3416 = !DILocation(line: 182, column: 11, scope: !3394)
!3417 = !DILocation(line: 190, column: 30, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !3393, file: !804, line: 183, column: 9)
!3419 = !DILocation(line: 191, column: 16, scope: !3418)
!3420 = !DILocation(line: 191, column: 13, scope: !3418)
!3421 = !DILocation(line: 192, column: 9, scope: !3418)
!3422 = !DILocation(line: 197, column: 11, scope: !3397)
!3423 = !DILocation(line: 197, column: 11, scope: !3398)
!3424 = !DILocation(line: 198, column: 9, scope: !3397)
!3425 = !DILocation(line: 0, scope: !3202, inlinedAt: !3426)
!3426 = distinct !DILocation(line: 201, column: 7, scope: !807)
!3427 = !DILocation(line: 85, column: 25, scope: !3202, inlinedAt: !3426)
!3428 = !DILocation(line: 0, scope: !3210, inlinedAt: !3429)
!3429 = distinct !DILocation(line: 85, column: 10, scope: !3202, inlinedAt: !3426)
!3430 = !DILocation(line: 39, column: 8, scope: !3217, inlinedAt: !3429)
!3431 = !DILocation(line: 39, column: 7, scope: !3210, inlinedAt: !3429)
!3432 = !DILocation(line: 40, column: 5, scope: !3217, inlinedAt: !3429)
!3433 = !DILocation(line: 202, column: 7, scope: !807)
!3434 = !DILocation(line: 203, column: 3, scope: !807)
!3435 = !DILocation(line: 0, scope: !819)
!3436 = !DILocation(line: 230, column: 14, scope: !819)
!3437 = !DILocation(line: 238, column: 7, scope: !3438)
!3438 = distinct !DILexicalBlock(scope: !819, file: !804, line: 238, column: 7)
!3439 = !DILocation(line: 238, column: 7, scope: !819)
!3440 = !DILocation(line: 240, column: 9, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !819, file: !804, line: 240, column: 7)
!3442 = !DILocation(line: 240, column: 18, scope: !3441)
!3443 = !DILocation(line: 253, column: 8, scope: !819)
!3444 = !DILocation(line: 258, column: 27, scope: !3445)
!3445 = distinct !DILexicalBlock(scope: !3446, file: !804, line: 257, column: 5)
!3446 = distinct !DILexicalBlock(scope: !819, file: !804, line: 256, column: 7)
!3447 = !DILocation(line: 259, column: 50, scope: !3445)
!3448 = !DILocation(line: 259, column: 32, scope: !3445)
!3449 = !DILocation(line: 260, column: 5, scope: !3445)
!3450 = !DILocation(line: 262, column: 9, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !819, file: !804, line: 262, column: 7)
!3452 = !DILocation(line: 262, column: 7, scope: !819)
!3453 = !DILocation(line: 263, column: 9, scope: !3451)
!3454 = !DILocation(line: 263, column: 5, scope: !3451)
!3455 = !DILocation(line: 264, column: 9, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !819, file: !804, line: 264, column: 7)
!3457 = !DILocation(line: 264, column: 14, scope: !3456)
!3458 = !DILocation(line: 265, column: 7, scope: !3456)
!3459 = !DILocation(line: 265, column: 11, scope: !3456)
!3460 = !DILocation(line: 266, column: 11, scope: !3456)
!3461 = !DILocation(line: 267, column: 14, scope: !3456)
!3462 = !DILocation(line: 264, column: 7, scope: !819)
!3463 = !DILocation(line: 268, column: 5, scope: !3456)
!3464 = !DILocation(line: 0, scope: !3277, inlinedAt: !3465)
!3465 = distinct !DILocation(line: 269, column: 8, scope: !819)
!3466 = !DILocation(line: 0, scope: !3285, inlinedAt: !3467)
!3467 = distinct !DILocation(line: 70, column: 25, scope: !3277, inlinedAt: !3465)
!3468 = !DILocation(line: 2059, column: 24, scope: !3285, inlinedAt: !3467)
!3469 = !DILocation(line: 2059, column: 10, scope: !3285, inlinedAt: !3467)
!3470 = !DILocation(line: 0, scope: !3210, inlinedAt: !3471)
!3471 = distinct !DILocation(line: 70, column: 10, scope: !3277, inlinedAt: !3465)
!3472 = !DILocation(line: 39, column: 8, scope: !3217, inlinedAt: !3471)
!3473 = !DILocation(line: 39, column: 7, scope: !3210, inlinedAt: !3471)
!3474 = !DILocation(line: 40, column: 5, scope: !3217, inlinedAt: !3471)
!3475 = !DILocation(line: 270, column: 7, scope: !819)
!3476 = !DILocation(line: 271, column: 3, scope: !819)
!3477 = distinct !DISubprogram(name: "xzalloc", scope: !804, file: !804, line: 279, type: !3230, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !3478)
!3478 = !{!3479}
!3479 = !DILocalVariable(name: "s", arg: 1, scope: !3477, file: !804, line: 279, type: !116)
!3480 = !DILocation(line: 0, scope: !3477)
!3481 = !DILocalVariable(name: "n", arg: 1, scope: !3482, file: !804, line: 294, type: !116)
!3482 = distinct !DISubprogram(name: "xcalloc", scope: !804, file: !804, line: 294, type: !3346, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !3483)
!3483 = !{!3481, !3484}
!3484 = !DILocalVariable(name: "s", arg: 2, scope: !3482, file: !804, line: 294, type: !116)
!3485 = !DILocation(line: 0, scope: !3482, inlinedAt: !3486)
!3486 = distinct !DILocation(line: 281, column: 10, scope: !3477)
!3487 = !DILocation(line: 296, column: 25, scope: !3482, inlinedAt: !3486)
!3488 = !DILocation(line: 0, scope: !3210, inlinedAt: !3489)
!3489 = distinct !DILocation(line: 296, column: 10, scope: !3482, inlinedAt: !3486)
!3490 = !DILocation(line: 39, column: 8, scope: !3217, inlinedAt: !3489)
!3491 = !DILocation(line: 39, column: 7, scope: !3210, inlinedAt: !3489)
!3492 = !DILocation(line: 40, column: 5, scope: !3217, inlinedAt: !3489)
!3493 = !DILocation(line: 281, column: 3, scope: !3477)
!3494 = !DISubprogram(name: "calloc", scope: !1126, file: !1126, line: 543, type: !3346, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !960)
!3495 = !DILocation(line: 0, scope: !3482)
!3496 = !DILocation(line: 296, column: 25, scope: !3482)
!3497 = !DILocation(line: 0, scope: !3210, inlinedAt: !3498)
!3498 = distinct !DILocation(line: 296, column: 10, scope: !3482)
!3499 = !DILocation(line: 39, column: 8, scope: !3217, inlinedAt: !3498)
!3500 = !DILocation(line: 39, column: 7, scope: !3210, inlinedAt: !3498)
!3501 = !DILocation(line: 40, column: 5, scope: !3217, inlinedAt: !3498)
!3502 = !DILocation(line: 296, column: 3, scope: !3482)
!3503 = distinct !DISubprogram(name: "xizalloc", scope: !804, file: !804, line: 285, type: !3244, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !3504)
!3504 = !{!3505}
!3505 = !DILocalVariable(name: "s", arg: 1, scope: !3503, file: !804, line: 285, type: !823)
!3506 = !DILocation(line: 0, scope: !3503)
!3507 = !DILocalVariable(name: "n", arg: 1, scope: !3508, file: !804, line: 300, type: !823)
!3508 = distinct !DISubprogram(name: "xicalloc", scope: !804, file: !804, line: 300, type: !3362, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !3509)
!3509 = !{!3507, !3510}
!3510 = !DILocalVariable(name: "s", arg: 2, scope: !3508, file: !804, line: 300, type: !823)
!3511 = !DILocation(line: 0, scope: !3508, inlinedAt: !3512)
!3512 = distinct !DILocation(line: 287, column: 10, scope: !3503)
!3513 = !DILocalVariable(name: "n", arg: 1, scope: !3514, file: !3251, line: 77, type: !823)
!3514 = distinct !DISubprogram(name: "icalloc", scope: !3251, file: !3251, line: 77, type: !3362, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !3515)
!3515 = !{!3513, !3516}
!3516 = !DILocalVariable(name: "s", arg: 2, scope: !3514, file: !3251, line: 77, type: !823)
!3517 = !DILocation(line: 0, scope: !3514, inlinedAt: !3518)
!3518 = distinct !DILocation(line: 302, column: 25, scope: !3508, inlinedAt: !3512)
!3519 = !DILocation(line: 91, column: 10, scope: !3514, inlinedAt: !3518)
!3520 = !DILocation(line: 0, scope: !3210, inlinedAt: !3521)
!3521 = distinct !DILocation(line: 302, column: 10, scope: !3508, inlinedAt: !3512)
!3522 = !DILocation(line: 39, column: 8, scope: !3217, inlinedAt: !3521)
!3523 = !DILocation(line: 39, column: 7, scope: !3210, inlinedAt: !3521)
!3524 = !DILocation(line: 40, column: 5, scope: !3217, inlinedAt: !3521)
!3525 = !DILocation(line: 287, column: 3, scope: !3503)
!3526 = !DILocation(line: 0, scope: !3508)
!3527 = !DILocation(line: 0, scope: !3514, inlinedAt: !3528)
!3528 = distinct !DILocation(line: 302, column: 25, scope: !3508)
!3529 = !DILocation(line: 91, column: 10, scope: !3514, inlinedAt: !3528)
!3530 = !DILocation(line: 0, scope: !3210, inlinedAt: !3531)
!3531 = distinct !DILocation(line: 302, column: 10, scope: !3508)
!3532 = !DILocation(line: 39, column: 8, scope: !3217, inlinedAt: !3531)
!3533 = !DILocation(line: 39, column: 7, scope: !3210, inlinedAt: !3531)
!3534 = !DILocation(line: 40, column: 5, scope: !3217, inlinedAt: !3531)
!3535 = !DILocation(line: 302, column: 3, scope: !3508)
!3536 = distinct !DISubprogram(name: "xmemdup", scope: !804, file: !804, line: 310, type: !3537, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !3539)
!3537 = !DISubroutineType(types: !3538)
!3538 = !{!122, !1147, !116}
!3539 = !{!3540, !3541}
!3540 = !DILocalVariable(name: "p", arg: 1, scope: !3536, file: !804, line: 310, type: !1147)
!3541 = !DILocalVariable(name: "s", arg: 2, scope: !3536, file: !804, line: 310, type: !116)
!3542 = !DILocation(line: 0, scope: !3536)
!3543 = !DILocation(line: 0, scope: !3229, inlinedAt: !3544)
!3544 = distinct !DILocation(line: 312, column: 18, scope: !3536)
!3545 = !DILocation(line: 49, column: 25, scope: !3229, inlinedAt: !3544)
!3546 = !DILocation(line: 0, scope: !3210, inlinedAt: !3547)
!3547 = distinct !DILocation(line: 49, column: 10, scope: !3229, inlinedAt: !3544)
!3548 = !DILocation(line: 39, column: 8, scope: !3217, inlinedAt: !3547)
!3549 = !DILocation(line: 39, column: 7, scope: !3210, inlinedAt: !3547)
!3550 = !DILocation(line: 40, column: 5, scope: !3217, inlinedAt: !3547)
!3551 = !DILocalVariable(name: "__dest", arg: 1, scope: !3552, file: !1704, line: 26, type: !3555)
!3552 = distinct !DISubprogram(name: "memcpy", scope: !1704, file: !1704, line: 26, type: !3553, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !3556)
!3553 = !DISubroutineType(types: !3554)
!3554 = !{!122, !3555, !1146, !116}
!3555 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !122)
!3556 = !{!3551, !3557, !3558}
!3557 = !DILocalVariable(name: "__src", arg: 2, scope: !3552, file: !1704, line: 26, type: !1146)
!3558 = !DILocalVariable(name: "__len", arg: 3, scope: !3552, file: !1704, line: 26, type: !116)
!3559 = !DILocation(line: 0, scope: !3552, inlinedAt: !3560)
!3560 = distinct !DILocation(line: 312, column: 10, scope: !3536)
!3561 = !DILocation(line: 29, column: 10, scope: !3552, inlinedAt: !3560)
!3562 = !DILocation(line: 312, column: 3, scope: !3536)
!3563 = distinct !DISubprogram(name: "ximemdup", scope: !804, file: !804, line: 316, type: !3564, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !3566)
!3564 = !DISubroutineType(types: !3565)
!3565 = !{!122, !1147, !823}
!3566 = !{!3567, !3568}
!3567 = !DILocalVariable(name: "p", arg: 1, scope: !3563, file: !804, line: 316, type: !1147)
!3568 = !DILocalVariable(name: "s", arg: 2, scope: !3563, file: !804, line: 316, type: !823)
!3569 = !DILocation(line: 0, scope: !3563)
!3570 = !DILocation(line: 0, scope: !3243, inlinedAt: !3571)
!3571 = distinct !DILocation(line: 318, column: 18, scope: !3563)
!3572 = !DILocation(line: 0, scope: !3250, inlinedAt: !3573)
!3573 = distinct !DILocation(line: 55, column: 25, scope: !3243, inlinedAt: !3571)
!3574 = !DILocation(line: 57, column: 26, scope: !3250, inlinedAt: !3573)
!3575 = !DILocation(line: 0, scope: !3210, inlinedAt: !3576)
!3576 = distinct !DILocation(line: 55, column: 10, scope: !3243, inlinedAt: !3571)
!3577 = !DILocation(line: 39, column: 8, scope: !3217, inlinedAt: !3576)
!3578 = !DILocation(line: 39, column: 7, scope: !3210, inlinedAt: !3576)
!3579 = !DILocation(line: 40, column: 5, scope: !3217, inlinedAt: !3576)
!3580 = !DILocation(line: 0, scope: !3552, inlinedAt: !3581)
!3581 = distinct !DILocation(line: 318, column: 10, scope: !3563)
!3582 = !DILocation(line: 29, column: 10, scope: !3552, inlinedAt: !3581)
!3583 = !DILocation(line: 318, column: 3, scope: !3563)
!3584 = distinct !DISubprogram(name: "ximemdup0", scope: !804, file: !804, line: 325, type: !3585, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !3587)
!3585 = !DISubroutineType(types: !3586)
!3586 = !{!85, !1147, !823}
!3587 = !{!3588, !3589, !3590}
!3588 = !DILocalVariable(name: "p", arg: 1, scope: !3584, file: !804, line: 325, type: !1147)
!3589 = !DILocalVariable(name: "s", arg: 2, scope: !3584, file: !804, line: 325, type: !823)
!3590 = !DILocalVariable(name: "result", scope: !3584, file: !804, line: 327, type: !85)
!3591 = !DILocation(line: 0, scope: !3584)
!3592 = !DILocation(line: 327, column: 30, scope: !3584)
!3593 = !DILocation(line: 0, scope: !3243, inlinedAt: !3594)
!3594 = distinct !DILocation(line: 327, column: 18, scope: !3584)
!3595 = !DILocation(line: 0, scope: !3250, inlinedAt: !3596)
!3596 = distinct !DILocation(line: 55, column: 25, scope: !3243, inlinedAt: !3594)
!3597 = !DILocation(line: 57, column: 26, scope: !3250, inlinedAt: !3596)
!3598 = !DILocation(line: 0, scope: !3210, inlinedAt: !3599)
!3599 = distinct !DILocation(line: 55, column: 10, scope: !3243, inlinedAt: !3594)
!3600 = !DILocation(line: 39, column: 8, scope: !3217, inlinedAt: !3599)
!3601 = !DILocation(line: 39, column: 7, scope: !3210, inlinedAt: !3599)
!3602 = !DILocation(line: 40, column: 5, scope: !3217, inlinedAt: !3599)
!3603 = !DILocation(line: 328, column: 3, scope: !3584)
!3604 = !DILocation(line: 328, column: 13, scope: !3584)
!3605 = !DILocation(line: 0, scope: !3552, inlinedAt: !3606)
!3606 = distinct !DILocation(line: 329, column: 10, scope: !3584)
!3607 = !DILocation(line: 29, column: 10, scope: !3552, inlinedAt: !3606)
!3608 = !DILocation(line: 329, column: 3, scope: !3584)
!3609 = distinct !DISubprogram(name: "xstrdup", scope: !804, file: !804, line: 335, type: !1128, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !3610)
!3610 = !{!3611}
!3611 = !DILocalVariable(name: "string", arg: 1, scope: !3609, file: !804, line: 335, type: !119)
!3612 = !DILocation(line: 0, scope: !3609)
!3613 = !DILocation(line: 337, column: 27, scope: !3609)
!3614 = !DILocation(line: 337, column: 43, scope: !3609)
!3615 = !DILocation(line: 0, scope: !3536, inlinedAt: !3616)
!3616 = distinct !DILocation(line: 337, column: 10, scope: !3609)
!3617 = !DILocation(line: 0, scope: !3229, inlinedAt: !3618)
!3618 = distinct !DILocation(line: 312, column: 18, scope: !3536, inlinedAt: !3616)
!3619 = !DILocation(line: 49, column: 25, scope: !3229, inlinedAt: !3618)
!3620 = !DILocation(line: 0, scope: !3210, inlinedAt: !3621)
!3621 = distinct !DILocation(line: 49, column: 10, scope: !3229, inlinedAt: !3618)
!3622 = !DILocation(line: 39, column: 8, scope: !3217, inlinedAt: !3621)
!3623 = !DILocation(line: 39, column: 7, scope: !3210, inlinedAt: !3621)
!3624 = !DILocation(line: 40, column: 5, scope: !3217, inlinedAt: !3621)
!3625 = !DILocation(line: 0, scope: !3552, inlinedAt: !3626)
!3626 = distinct !DILocation(line: 312, column: 10, scope: !3536, inlinedAt: !3616)
!3627 = !DILocation(line: 29, column: 10, scope: !3552, inlinedAt: !3626)
!3628 = !DILocation(line: 337, column: 3, scope: !3609)
!3629 = distinct !DISubprogram(name: "xalloc_die", scope: !768, file: !768, line: 32, type: !517, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !837, retainedNodes: !3630)
!3630 = !{!3631}
!3631 = !DILocalVariable(name: "__errstatus", scope: !3632, file: !768, line: 34, type: !3633)
!3632 = distinct !DILexicalBlock(scope: !3629, file: !768, line: 34, column: 3)
!3633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!3634 = !DILocation(line: 34, column: 3, scope: !3632)
!3635 = !DILocation(line: 0, scope: !3632)
!3636 = !DILocation(line: 40, column: 3, scope: !3629)
!3637 = distinct !DISubprogram(name: "close_stream", scope: !840, file: !840, line: 55, type: !3638, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !839, retainedNodes: !3674)
!3638 = !DISubroutineType(types: !3639)
!3639 = !{!83, !3640}
!3640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3641, size: 64)
!3641 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !186, line: 7, baseType: !3642)
!3642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !188, line: 49, size: 1728, elements: !3643)
!3643 = !{!3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673}
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3642, file: !188, line: 51, baseType: !83, size: 32)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3642, file: !188, line: 54, baseType: !85, size: 64, offset: 64)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3642, file: !188, line: 55, baseType: !85, size: 64, offset: 128)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3642, file: !188, line: 56, baseType: !85, size: 64, offset: 192)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3642, file: !188, line: 57, baseType: !85, size: 64, offset: 256)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3642, file: !188, line: 58, baseType: !85, size: 64, offset: 320)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3642, file: !188, line: 59, baseType: !85, size: 64, offset: 384)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3642, file: !188, line: 60, baseType: !85, size: 64, offset: 448)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3642, file: !188, line: 61, baseType: !85, size: 64, offset: 512)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3642, file: !188, line: 64, baseType: !85, size: 64, offset: 576)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3642, file: !188, line: 65, baseType: !85, size: 64, offset: 640)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3642, file: !188, line: 66, baseType: !85, size: 64, offset: 704)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3642, file: !188, line: 68, baseType: !203, size: 64, offset: 768)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3642, file: !188, line: 70, baseType: !3658, size: 64, offset: 832)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3642, file: !188, line: 72, baseType: !83, size: 32, offset: 896)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3642, file: !188, line: 73, baseType: !83, size: 32, offset: 928)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3642, file: !188, line: 74, baseType: !210, size: 64, offset: 960)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3642, file: !188, line: 77, baseType: !115, size: 16, offset: 1024)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3642, file: !188, line: 78, baseType: !215, size: 8, offset: 1040)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3642, file: !188, line: 79, baseType: !126, size: 8, offset: 1048)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3642, file: !188, line: 81, baseType: !218, size: 64, offset: 1088)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3642, file: !188, line: 89, baseType: !221, size: 64, offset: 1152)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3642, file: !188, line: 91, baseType: !223, size: 64, offset: 1216)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3642, file: !188, line: 92, baseType: !226, size: 64, offset: 1280)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3642, file: !188, line: 93, baseType: !3658, size: 64, offset: 1344)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3642, file: !188, line: 94, baseType: !122, size: 64, offset: 1408)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3642, file: !188, line: 95, baseType: !116, size: 64, offset: 1472)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3642, file: !188, line: 96, baseType: !83, size: 32, offset: 1536)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3642, file: !188, line: 98, baseType: !233, size: 160, offset: 1568)
!3674 = !{!3675, !3676, !3678, !3679}
!3675 = !DILocalVariable(name: "stream", arg: 1, scope: !3637, file: !840, line: 55, type: !3640)
!3676 = !DILocalVariable(name: "some_pending", scope: !3637, file: !840, line: 57, type: !3677)
!3677 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!3678 = !DILocalVariable(name: "prev_fail", scope: !3637, file: !840, line: 58, type: !3677)
!3679 = !DILocalVariable(name: "fclose_fail", scope: !3637, file: !840, line: 59, type: !3677)
!3680 = !DILocation(line: 0, scope: !3637)
!3681 = !DILocation(line: 57, column: 30, scope: !3637)
!3682 = !DILocalVariable(name: "__stream", arg: 1, scope: !3683, file: !1237, line: 135, type: !3640)
!3683 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1237, file: !1237, line: 135, type: !3638, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !839, retainedNodes: !3684)
!3684 = !{!3682}
!3685 = !DILocation(line: 0, scope: !3683, inlinedAt: !3686)
!3686 = distinct !DILocation(line: 58, column: 27, scope: !3637)
!3687 = !DILocation(line: 137, column: 10, scope: !3683, inlinedAt: !3686)
!3688 = !{!1245, !977, i64 0}
!3689 = !DILocation(line: 58, column: 43, scope: !3637)
!3690 = !DILocation(line: 59, column: 29, scope: !3637)
!3691 = !DILocation(line: 59, column: 45, scope: !3637)
!3692 = !DILocation(line: 69, column: 17, scope: !3693)
!3693 = distinct !DILexicalBlock(scope: !3637, file: !840, line: 69, column: 7)
!3694 = !DILocation(line: 57, column: 50, scope: !3637)
!3695 = !DILocation(line: 69, column: 33, scope: !3693)
!3696 = !DILocation(line: 69, column: 53, scope: !3693)
!3697 = !DILocation(line: 69, column: 59, scope: !3693)
!3698 = !DILocation(line: 69, column: 7, scope: !3637)
!3699 = !DILocation(line: 71, column: 11, scope: !3700)
!3700 = distinct !DILexicalBlock(scope: !3693, file: !840, line: 70, column: 5)
!3701 = !DILocation(line: 72, column: 9, scope: !3702)
!3702 = distinct !DILexicalBlock(scope: !3700, file: !840, line: 71, column: 11)
!3703 = !DILocation(line: 72, column: 15, scope: !3702)
!3704 = !DILocation(line: 77, column: 1, scope: !3637)
!3705 = !DISubprogram(name: "__fpending", scope: !3706, file: !3706, line: 75, type: !3707, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !960)
!3706 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3707 = !DISubroutineType(types: !3708)
!3708 = !{!116, !3640}
!3709 = distinct !DISubprogram(name: "rpl_fclose", scope: !842, file: !842, line: 58, type: !3710, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !841, retainedNodes: !3746)
!3710 = !DISubroutineType(types: !3711)
!3711 = !{!83, !3712}
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3713, size: 64)
!3713 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !186, line: 7, baseType: !3714)
!3714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !188, line: 49, size: 1728, elements: !3715)
!3715 = !{!3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3714, file: !188, line: 51, baseType: !83, size: 32)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3714, file: !188, line: 54, baseType: !85, size: 64, offset: 64)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3714, file: !188, line: 55, baseType: !85, size: 64, offset: 128)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3714, file: !188, line: 56, baseType: !85, size: 64, offset: 192)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3714, file: !188, line: 57, baseType: !85, size: 64, offset: 256)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3714, file: !188, line: 58, baseType: !85, size: 64, offset: 320)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3714, file: !188, line: 59, baseType: !85, size: 64, offset: 384)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3714, file: !188, line: 60, baseType: !85, size: 64, offset: 448)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3714, file: !188, line: 61, baseType: !85, size: 64, offset: 512)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3714, file: !188, line: 64, baseType: !85, size: 64, offset: 576)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3714, file: !188, line: 65, baseType: !85, size: 64, offset: 640)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3714, file: !188, line: 66, baseType: !85, size: 64, offset: 704)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3714, file: !188, line: 68, baseType: !203, size: 64, offset: 768)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3714, file: !188, line: 70, baseType: !3730, size: 64, offset: 832)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3714, file: !188, line: 72, baseType: !83, size: 32, offset: 896)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3714, file: !188, line: 73, baseType: !83, size: 32, offset: 928)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3714, file: !188, line: 74, baseType: !210, size: 64, offset: 960)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3714, file: !188, line: 77, baseType: !115, size: 16, offset: 1024)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3714, file: !188, line: 78, baseType: !215, size: 8, offset: 1040)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3714, file: !188, line: 79, baseType: !126, size: 8, offset: 1048)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3714, file: !188, line: 81, baseType: !218, size: 64, offset: 1088)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3714, file: !188, line: 89, baseType: !221, size: 64, offset: 1152)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3714, file: !188, line: 91, baseType: !223, size: 64, offset: 1216)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3714, file: !188, line: 92, baseType: !226, size: 64, offset: 1280)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3714, file: !188, line: 93, baseType: !3730, size: 64, offset: 1344)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3714, file: !188, line: 94, baseType: !122, size: 64, offset: 1408)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3714, file: !188, line: 95, baseType: !116, size: 64, offset: 1472)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3714, file: !188, line: 96, baseType: !83, size: 32, offset: 1536)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3714, file: !188, line: 98, baseType: !233, size: 160, offset: 1568)
!3746 = !{!3747, !3748, !3749, !3750}
!3747 = !DILocalVariable(name: "fp", arg: 1, scope: !3709, file: !842, line: 58, type: !3712)
!3748 = !DILocalVariable(name: "saved_errno", scope: !3709, file: !842, line: 60, type: !83)
!3749 = !DILocalVariable(name: "fd", scope: !3709, file: !842, line: 63, type: !83)
!3750 = !DILocalVariable(name: "result", scope: !3709, file: !842, line: 74, type: !83)
!3751 = !DILocation(line: 0, scope: !3709)
!3752 = !DILocation(line: 63, column: 12, scope: !3709)
!3753 = !DILocation(line: 64, column: 10, scope: !3754)
!3754 = distinct !DILexicalBlock(scope: !3709, file: !842, line: 64, column: 7)
!3755 = !DILocation(line: 64, column: 7, scope: !3709)
!3756 = !DILocation(line: 65, column: 12, scope: !3754)
!3757 = !DILocation(line: 65, column: 5, scope: !3754)
!3758 = !DILocation(line: 70, column: 9, scope: !3759)
!3759 = distinct !DILexicalBlock(scope: !3709, file: !842, line: 70, column: 7)
!3760 = !DILocation(line: 70, column: 23, scope: !3759)
!3761 = !DILocation(line: 70, column: 33, scope: !3759)
!3762 = !DILocation(line: 70, column: 26, scope: !3759)
!3763 = !DILocation(line: 70, column: 59, scope: !3759)
!3764 = !DILocation(line: 71, column: 7, scope: !3759)
!3765 = !DILocation(line: 71, column: 10, scope: !3759)
!3766 = !DILocation(line: 70, column: 7, scope: !3709)
!3767 = !DILocation(line: 100, column: 12, scope: !3709)
!3768 = !DILocation(line: 105, column: 7, scope: !3709)
!3769 = !DILocation(line: 72, column: 19, scope: !3759)
!3770 = !DILocation(line: 105, column: 19, scope: !3771)
!3771 = distinct !DILexicalBlock(scope: !3709, file: !842, line: 105, column: 7)
!3772 = !DILocation(line: 107, column: 13, scope: !3773)
!3773 = distinct !DILexicalBlock(scope: !3771, file: !842, line: 106, column: 5)
!3774 = !DILocation(line: 109, column: 5, scope: !3773)
!3775 = !DILocation(line: 112, column: 1, scope: !3709)
!3776 = !DISubprogram(name: "fileno", scope: !971, file: !971, line: 809, type: !3710, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !960)
!3777 = !DISubprogram(name: "fclose", scope: !971, file: !971, line: 178, type: !3710, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !960)
!3778 = !DISubprogram(name: "__freading", scope: !3706, file: !3706, line: 51, type: !3710, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !960)
!3779 = !DISubprogram(name: "lseek", scope: !1437, file: !1437, line: 339, type: !3780, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !960)
!3780 = !DISubroutineType(types: !3781)
!3781 = !{!210, !83, !210, !83}
!3782 = distinct !DISubprogram(name: "rpl_fflush", scope: !844, file: !844, line: 130, type: !3783, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !843, retainedNodes: !3819)
!3783 = !DISubroutineType(types: !3784)
!3784 = !{!83, !3785}
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !186, line: 7, baseType: !3787)
!3787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !188, line: 49, size: 1728, elements: !3788)
!3788 = !{!3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3817, !3818}
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3787, file: !188, line: 51, baseType: !83, size: 32)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3787, file: !188, line: 54, baseType: !85, size: 64, offset: 64)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3787, file: !188, line: 55, baseType: !85, size: 64, offset: 128)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3787, file: !188, line: 56, baseType: !85, size: 64, offset: 192)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3787, file: !188, line: 57, baseType: !85, size: 64, offset: 256)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3787, file: !188, line: 58, baseType: !85, size: 64, offset: 320)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3787, file: !188, line: 59, baseType: !85, size: 64, offset: 384)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3787, file: !188, line: 60, baseType: !85, size: 64, offset: 448)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3787, file: !188, line: 61, baseType: !85, size: 64, offset: 512)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3787, file: !188, line: 64, baseType: !85, size: 64, offset: 576)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3787, file: !188, line: 65, baseType: !85, size: 64, offset: 640)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3787, file: !188, line: 66, baseType: !85, size: 64, offset: 704)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3787, file: !188, line: 68, baseType: !203, size: 64, offset: 768)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3787, file: !188, line: 70, baseType: !3803, size: 64, offset: 832)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3787, file: !188, line: 72, baseType: !83, size: 32, offset: 896)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3787, file: !188, line: 73, baseType: !83, size: 32, offset: 928)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3787, file: !188, line: 74, baseType: !210, size: 64, offset: 960)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3787, file: !188, line: 77, baseType: !115, size: 16, offset: 1024)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3787, file: !188, line: 78, baseType: !215, size: 8, offset: 1040)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3787, file: !188, line: 79, baseType: !126, size: 8, offset: 1048)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3787, file: !188, line: 81, baseType: !218, size: 64, offset: 1088)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3787, file: !188, line: 89, baseType: !221, size: 64, offset: 1152)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3787, file: !188, line: 91, baseType: !223, size: 64, offset: 1216)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3787, file: !188, line: 92, baseType: !226, size: 64, offset: 1280)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3787, file: !188, line: 93, baseType: !3803, size: 64, offset: 1344)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3787, file: !188, line: 94, baseType: !122, size: 64, offset: 1408)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3787, file: !188, line: 95, baseType: !116, size: 64, offset: 1472)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3787, file: !188, line: 96, baseType: !83, size: 32, offset: 1536)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3787, file: !188, line: 98, baseType: !233, size: 160, offset: 1568)
!3819 = !{!3820}
!3820 = !DILocalVariable(name: "stream", arg: 1, scope: !3782, file: !844, line: 130, type: !3785)
!3821 = !DILocation(line: 0, scope: !3782)
!3822 = !DILocation(line: 151, column: 14, scope: !3823)
!3823 = distinct !DILexicalBlock(scope: !3782, file: !844, line: 151, column: 7)
!3824 = !DILocation(line: 151, column: 22, scope: !3823)
!3825 = !DILocation(line: 151, column: 27, scope: !3823)
!3826 = !DILocation(line: 151, column: 7, scope: !3782)
!3827 = !DILocation(line: 152, column: 12, scope: !3823)
!3828 = !DILocation(line: 152, column: 5, scope: !3823)
!3829 = !DILocalVariable(name: "fp", arg: 1, scope: !3830, file: !844, line: 42, type: !3785)
!3830 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !844, file: !844, line: 42, type: !3831, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !843, retainedNodes: !3833)
!3831 = !DISubroutineType(types: !3832)
!3832 = !{null, !3785}
!3833 = !{!3829}
!3834 = !DILocation(line: 0, scope: !3830, inlinedAt: !3835)
!3835 = distinct !DILocation(line: 157, column: 3, scope: !3782)
!3836 = !DILocation(line: 44, column: 12, scope: !3837, inlinedAt: !3835)
!3837 = distinct !DILexicalBlock(scope: !3830, file: !844, line: 44, column: 7)
!3838 = !DILocation(line: 44, column: 19, scope: !3837, inlinedAt: !3835)
!3839 = !DILocation(line: 44, column: 7, scope: !3830, inlinedAt: !3835)
!3840 = !DILocation(line: 46, column: 5, scope: !3837, inlinedAt: !3835)
!3841 = !DILocation(line: 159, column: 10, scope: !3782)
!3842 = !DILocation(line: 159, column: 3, scope: !3782)
!3843 = !DILocation(line: 236, column: 1, scope: !3782)
!3844 = !DISubprogram(name: "fflush", scope: !971, file: !971, line: 230, type: !3783, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !960)
!3845 = distinct !DISubprogram(name: "rpl_fseeko", scope: !846, file: !846, line: 28, type: !3846, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !845, retainedNodes: !3883)
!3846 = !DISubroutineType(types: !3847)
!3847 = !{!83, !3848, !3882, !83}
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3849, size: 64)
!3849 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !186, line: 7, baseType: !3850)
!3850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !188, line: 49, size: 1728, elements: !3851)
!3851 = !{!3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3850, file: !188, line: 51, baseType: !83, size: 32)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3850, file: !188, line: 54, baseType: !85, size: 64, offset: 64)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3850, file: !188, line: 55, baseType: !85, size: 64, offset: 128)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3850, file: !188, line: 56, baseType: !85, size: 64, offset: 192)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3850, file: !188, line: 57, baseType: !85, size: 64, offset: 256)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3850, file: !188, line: 58, baseType: !85, size: 64, offset: 320)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3850, file: !188, line: 59, baseType: !85, size: 64, offset: 384)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3850, file: !188, line: 60, baseType: !85, size: 64, offset: 448)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3850, file: !188, line: 61, baseType: !85, size: 64, offset: 512)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3850, file: !188, line: 64, baseType: !85, size: 64, offset: 576)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3850, file: !188, line: 65, baseType: !85, size: 64, offset: 640)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3850, file: !188, line: 66, baseType: !85, size: 64, offset: 704)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3850, file: !188, line: 68, baseType: !203, size: 64, offset: 768)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3850, file: !188, line: 70, baseType: !3866, size: 64, offset: 832)
!3866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3850, file: !188, line: 72, baseType: !83, size: 32, offset: 896)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3850, file: !188, line: 73, baseType: !83, size: 32, offset: 928)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3850, file: !188, line: 74, baseType: !210, size: 64, offset: 960)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3850, file: !188, line: 77, baseType: !115, size: 16, offset: 1024)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3850, file: !188, line: 78, baseType: !215, size: 8, offset: 1040)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3850, file: !188, line: 79, baseType: !126, size: 8, offset: 1048)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3850, file: !188, line: 81, baseType: !218, size: 64, offset: 1088)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3850, file: !188, line: 89, baseType: !221, size: 64, offset: 1152)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3850, file: !188, line: 91, baseType: !223, size: 64, offset: 1216)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3850, file: !188, line: 92, baseType: !226, size: 64, offset: 1280)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3850, file: !188, line: 93, baseType: !3866, size: 64, offset: 1344)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3850, file: !188, line: 94, baseType: !122, size: 64, offset: 1408)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3850, file: !188, line: 95, baseType: !116, size: 64, offset: 1472)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3850, file: !188, line: 96, baseType: !83, size: 32, offset: 1536)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3850, file: !188, line: 98, baseType: !233, size: 160, offset: 1568)
!3882 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !971, line: 63, baseType: !210)
!3883 = !{!3884, !3885, !3886, !3887}
!3884 = !DILocalVariable(name: "fp", arg: 1, scope: !3845, file: !846, line: 28, type: !3848)
!3885 = !DILocalVariable(name: "offset", arg: 2, scope: !3845, file: !846, line: 28, type: !3882)
!3886 = !DILocalVariable(name: "whence", arg: 3, scope: !3845, file: !846, line: 28, type: !83)
!3887 = !DILocalVariable(name: "pos", scope: !3888, file: !846, line: 123, type: !3882)
!3888 = distinct !DILexicalBlock(scope: !3889, file: !846, line: 119, column: 5)
!3889 = distinct !DILexicalBlock(scope: !3845, file: !846, line: 55, column: 7)
!3890 = !DILocation(line: 0, scope: !3845)
!3891 = !DILocation(line: 55, column: 12, scope: !3889)
!3892 = !{!1245, !877, i64 16}
!3893 = !DILocation(line: 55, column: 33, scope: !3889)
!3894 = !{!1245, !877, i64 8}
!3895 = !DILocation(line: 55, column: 25, scope: !3889)
!3896 = !DILocation(line: 56, column: 7, scope: !3889)
!3897 = !DILocation(line: 56, column: 15, scope: !3889)
!3898 = !DILocation(line: 56, column: 37, scope: !3889)
!3899 = !{!1245, !877, i64 32}
!3900 = !DILocation(line: 56, column: 29, scope: !3889)
!3901 = !DILocation(line: 57, column: 7, scope: !3889)
!3902 = !DILocation(line: 57, column: 15, scope: !3889)
!3903 = !{!1245, !877, i64 72}
!3904 = !DILocation(line: 57, column: 29, scope: !3889)
!3905 = !DILocation(line: 55, column: 7, scope: !3845)
!3906 = !DILocation(line: 123, column: 26, scope: !3888)
!3907 = !DILocation(line: 123, column: 19, scope: !3888)
!3908 = !DILocation(line: 0, scope: !3888)
!3909 = !DILocation(line: 124, column: 15, scope: !3910)
!3910 = distinct !DILexicalBlock(scope: !3888, file: !846, line: 124, column: 11)
!3911 = !DILocation(line: 124, column: 11, scope: !3888)
!3912 = !DILocation(line: 135, column: 19, scope: !3888)
!3913 = !DILocation(line: 136, column: 12, scope: !3888)
!3914 = !DILocation(line: 136, column: 20, scope: !3888)
!3915 = !{!1245, !1246, i64 144}
!3916 = !DILocation(line: 167, column: 7, scope: !3888)
!3917 = !DILocation(line: 169, column: 10, scope: !3845)
!3918 = !DILocation(line: 169, column: 3, scope: !3845)
!3919 = !DILocation(line: 170, column: 1, scope: !3845)
!3920 = !DISubprogram(name: "fseeko", scope: !971, file: !971, line: 736, type: !3921, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !960)
!3921 = !DISubroutineType(types: !3922)
!3922 = !{!83, !3848, !210, !83}
!3923 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !775, file: !775, line: 100, type: !3924, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !778, retainedNodes: !3927)
!3924 = !DISubroutineType(types: !3925)
!3925 = !{!116, !1722, !119, !116, !3926}
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!3927 = !{!3928, !3929, !3930, !3931, !3932}
!3928 = !DILocalVariable(name: "pwc", arg: 1, scope: !3923, file: !775, line: 100, type: !1722)
!3929 = !DILocalVariable(name: "s", arg: 2, scope: !3923, file: !775, line: 100, type: !119)
!3930 = !DILocalVariable(name: "n", arg: 3, scope: !3923, file: !775, line: 100, type: !116)
!3931 = !DILocalVariable(name: "ps", arg: 4, scope: !3923, file: !775, line: 100, type: !3926)
!3932 = !DILocalVariable(name: "ret", scope: !3923, file: !775, line: 130, type: !116)
!3933 = !DILocation(line: 0, scope: !3923)
!3934 = !DILocation(line: 105, column: 9, scope: !3935)
!3935 = distinct !DILexicalBlock(scope: !3923, file: !775, line: 105, column: 7)
!3936 = !DILocation(line: 105, column: 7, scope: !3923)
!3937 = !DILocation(line: 117, column: 10, scope: !3938)
!3938 = distinct !DILexicalBlock(scope: !3923, file: !775, line: 117, column: 7)
!3939 = !DILocation(line: 117, column: 7, scope: !3923)
!3940 = !DILocation(line: 130, column: 16, scope: !3923)
!3941 = !DILocation(line: 135, column: 11, scope: !3942)
!3942 = distinct !DILexicalBlock(scope: !3923, file: !775, line: 135, column: 7)
!3943 = !DILocation(line: 135, column: 25, scope: !3942)
!3944 = !DILocation(line: 135, column: 30, scope: !3942)
!3945 = !DILocation(line: 135, column: 7, scope: !3923)
!3946 = !DILocalVariable(name: "ps", arg: 1, scope: !3947, file: !1695, line: 1135, type: !3926)
!3947 = distinct !DISubprogram(name: "mbszero", scope: !1695, file: !1695, line: 1135, type: !3948, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !778, retainedNodes: !3950)
!3948 = !DISubroutineType(types: !3949)
!3949 = !{null, !3926}
!3950 = !{!3946}
!3951 = !DILocation(line: 0, scope: !3947, inlinedAt: !3952)
!3952 = distinct !DILocation(line: 137, column: 5, scope: !3942)
!3953 = !DILocalVariable(name: "__dest", arg: 1, scope: !3954, file: !1704, line: 57, type: !122)
!3954 = distinct !DISubprogram(name: "memset", scope: !1704, file: !1704, line: 57, type: !1705, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !778, retainedNodes: !3955)
!3955 = !{!3953, !3956, !3957}
!3956 = !DILocalVariable(name: "__ch", arg: 2, scope: !3954, file: !1704, line: 57, type: !83)
!3957 = !DILocalVariable(name: "__len", arg: 3, scope: !3954, file: !1704, line: 57, type: !116)
!3958 = !DILocation(line: 0, scope: !3954, inlinedAt: !3959)
!3959 = distinct !DILocation(line: 1137, column: 3, scope: !3947, inlinedAt: !3952)
!3960 = !DILocation(line: 59, column: 10, scope: !3954, inlinedAt: !3959)
!3961 = !DILocation(line: 137, column: 5, scope: !3942)
!3962 = !DILocation(line: 138, column: 11, scope: !3963)
!3963 = distinct !DILexicalBlock(scope: !3923, file: !775, line: 138, column: 7)
!3964 = !DILocation(line: 138, column: 7, scope: !3923)
!3965 = !DILocation(line: 139, column: 5, scope: !3963)
!3966 = !DILocation(line: 143, column: 26, scope: !3967)
!3967 = distinct !DILexicalBlock(scope: !3923, file: !775, line: 143, column: 7)
!3968 = !DILocation(line: 143, column: 41, scope: !3967)
!3969 = !DILocation(line: 143, column: 7, scope: !3923)
!3970 = !DILocation(line: 145, column: 15, scope: !3971)
!3971 = distinct !DILexicalBlock(scope: !3972, file: !775, line: 145, column: 11)
!3972 = distinct !DILexicalBlock(scope: !3967, file: !775, line: 144, column: 5)
!3973 = !DILocation(line: 145, column: 11, scope: !3972)
!3974 = !DILocation(line: 146, column: 32, scope: !3971)
!3975 = !DILocation(line: 146, column: 16, scope: !3971)
!3976 = !DILocation(line: 146, column: 14, scope: !3971)
!3977 = !DILocation(line: 146, column: 9, scope: !3971)
!3978 = !DILocation(line: 286, column: 1, scope: !3923)
!3979 = !DISubprogram(name: "mbsinit", scope: !3980, file: !3980, line: 293, type: !3981, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !960)
!3980 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3981 = !DISubroutineType(types: !3982)
!3982 = !{!83, !3983}
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!3984 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !781)
!3985 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !848, file: !848, line: 27, type: !3194, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !847, retainedNodes: !3986)
!3986 = !{!3987, !3988, !3989, !3990}
!3987 = !DILocalVariable(name: "ptr", arg: 1, scope: !3985, file: !848, line: 27, type: !122)
!3988 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3985, file: !848, line: 27, type: !116)
!3989 = !DILocalVariable(name: "size", arg: 3, scope: !3985, file: !848, line: 27, type: !116)
!3990 = !DILocalVariable(name: "nbytes", scope: !3985, file: !848, line: 29, type: !116)
!3991 = !DILocation(line: 0, scope: !3985)
!3992 = !DILocation(line: 30, column: 7, scope: !3993)
!3993 = distinct !DILexicalBlock(scope: !3985, file: !848, line: 30, column: 7)
!3994 = !DILocalVariable(name: "ptr", arg: 1, scope: !3995, file: !3286, line: 2057, type: !122)
!3995 = distinct !DISubprogram(name: "rpl_realloc", scope: !3286, file: !3286, line: 2057, type: !3278, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !847, retainedNodes: !3996)
!3996 = !{!3994, !3997}
!3997 = !DILocalVariable(name: "size", arg: 2, scope: !3995, file: !3286, line: 2057, type: !116)
!3998 = !DILocation(line: 0, scope: !3995, inlinedAt: !3999)
!3999 = distinct !DILocation(line: 37, column: 10, scope: !3985)
!4000 = !DILocation(line: 2059, column: 24, scope: !3995, inlinedAt: !3999)
!4001 = !DILocation(line: 2059, column: 10, scope: !3995, inlinedAt: !3999)
!4002 = !DILocation(line: 37, column: 3, scope: !3985)
!4003 = !DILocation(line: 32, column: 7, scope: !4004)
!4004 = distinct !DILexicalBlock(scope: !3993, file: !848, line: 31, column: 5)
!4005 = !DILocation(line: 32, column: 13, scope: !4004)
!4006 = !DILocation(line: 33, column: 7, scope: !4004)
!4007 = !DILocation(line: 38, column: 1, scope: !3985)
!4008 = distinct !DISubprogram(name: "hard_locale", scope: !793, file: !793, line: 28, type: !4009, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !850, retainedNodes: !4011)
!4009 = !DISubroutineType(types: !4010)
!4010 = !{!171, !83}
!4011 = !{!4012, !4013}
!4012 = !DILocalVariable(name: "category", arg: 1, scope: !4008, file: !793, line: 28, type: !83)
!4013 = !DILocalVariable(name: "locale", scope: !4008, file: !793, line: 30, type: !4014)
!4014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4015)
!4015 = !{!4016}
!4016 = !DISubrange(count: 257)
!4017 = !DILocation(line: 0, scope: !4008)
!4018 = !DILocation(line: 30, column: 3, scope: !4008)
!4019 = !DILocation(line: 30, column: 8, scope: !4008)
!4020 = !DILocation(line: 32, column: 7, scope: !4021)
!4021 = distinct !DILexicalBlock(scope: !4008, file: !793, line: 32, column: 7)
!4022 = !DILocation(line: 32, column: 7, scope: !4008)
!4023 = !DILocalVariable(name: "__s1", arg: 1, scope: !4024, file: !924, line: 1359, type: !119)
!4024 = distinct !DISubprogram(name: "streq", scope: !924, file: !924, line: 1359, type: !925, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !850, retainedNodes: !4025)
!4025 = !{!4023, !4026}
!4026 = !DILocalVariable(name: "__s2", arg: 2, scope: !4024, file: !924, line: 1359, type: !119)
!4027 = !DILocation(line: 0, scope: !4024, inlinedAt: !4028)
!4028 = distinct !DILocation(line: 35, column: 9, scope: !4029)
!4029 = distinct !DILexicalBlock(scope: !4008, file: !793, line: 35, column: 7)
!4030 = !DILocation(line: 1361, column: 11, scope: !4024, inlinedAt: !4028)
!4031 = !DILocation(line: 35, column: 29, scope: !4029)
!4032 = !DILocation(line: 0, scope: !4024, inlinedAt: !4033)
!4033 = distinct !DILocation(line: 35, column: 32, scope: !4029)
!4034 = !DILocation(line: 1361, column: 11, scope: !4024, inlinedAt: !4033)
!4035 = !DILocation(line: 1361, column: 10, scope: !4024, inlinedAt: !4033)
!4036 = !DILocation(line: 35, column: 7, scope: !4008)
!4037 = !DILocation(line: 46, column: 3, scope: !4008)
!4038 = !DILocation(line: 47, column: 1, scope: !4008)
!4039 = distinct !DISubprogram(name: "setlocale_null_r", scope: !855, file: !855, line: 154, type: !4040, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !854, retainedNodes: !4042)
!4040 = !DISubroutineType(types: !4041)
!4041 = !{!83, !83, !85, !116}
!4042 = !{!4043, !4044, !4045}
!4043 = !DILocalVariable(name: "category", arg: 1, scope: !4039, file: !855, line: 154, type: !83)
!4044 = !DILocalVariable(name: "buf", arg: 2, scope: !4039, file: !855, line: 154, type: !85)
!4045 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4039, file: !855, line: 154, type: !116)
!4046 = !DILocation(line: 0, scope: !4039)
!4047 = !DILocation(line: 159, column: 10, scope: !4039)
!4048 = !DILocation(line: 159, column: 3, scope: !4039)
!4049 = distinct !DISubprogram(name: "setlocale_null", scope: !855, file: !855, line: 186, type: !4050, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !854, retainedNodes: !4052)
!4050 = !DISubroutineType(types: !4051)
!4051 = !{!119, !83}
!4052 = !{!4053}
!4053 = !DILocalVariable(name: "category", arg: 1, scope: !4049, file: !855, line: 186, type: !83)
!4054 = !DILocation(line: 0, scope: !4049)
!4055 = !DILocation(line: 189, column: 10, scope: !4049)
!4056 = !DILocation(line: 189, column: 3, scope: !4049)
!4057 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !857, file: !857, line: 35, type: !4050, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !856, retainedNodes: !4058)
!4058 = !{!4059, !4060}
!4059 = !DILocalVariable(name: "category", arg: 1, scope: !4057, file: !857, line: 35, type: !83)
!4060 = !DILocalVariable(name: "result", scope: !4057, file: !857, line: 37, type: !119)
!4061 = !DILocation(line: 0, scope: !4057)
!4062 = !DILocation(line: 37, column: 24, scope: !4057)
!4063 = !DILocation(line: 62, column: 3, scope: !4057)
!4064 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !857, file: !857, line: 66, type: !4040, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !856, retainedNodes: !4065)
!4065 = !{!4066, !4067, !4068, !4069, !4070}
!4066 = !DILocalVariable(name: "category", arg: 1, scope: !4064, file: !857, line: 66, type: !83)
!4067 = !DILocalVariable(name: "buf", arg: 2, scope: !4064, file: !857, line: 66, type: !85)
!4068 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4064, file: !857, line: 66, type: !116)
!4069 = !DILocalVariable(name: "result", scope: !4064, file: !857, line: 111, type: !119)
!4070 = !DILocalVariable(name: "length", scope: !4071, file: !857, line: 125, type: !116)
!4071 = distinct !DILexicalBlock(scope: !4072, file: !857, line: 124, column: 5)
!4072 = distinct !DILexicalBlock(scope: !4064, file: !857, line: 113, column: 7)
!4073 = !DILocation(line: 0, scope: !4064)
!4074 = !DILocation(line: 0, scope: !4057, inlinedAt: !4075)
!4075 = distinct !DILocation(line: 111, column: 24, scope: !4064)
!4076 = !DILocation(line: 37, column: 24, scope: !4057, inlinedAt: !4075)
!4077 = !DILocation(line: 113, column: 14, scope: !4072)
!4078 = !DILocation(line: 113, column: 7, scope: !4064)
!4079 = !DILocation(line: 116, column: 19, scope: !4080)
!4080 = distinct !DILexicalBlock(scope: !4081, file: !857, line: 116, column: 11)
!4081 = distinct !DILexicalBlock(scope: !4072, file: !857, line: 114, column: 5)
!4082 = !DILocation(line: 116, column: 11, scope: !4081)
!4083 = !DILocation(line: 120, column: 16, scope: !4080)
!4084 = !DILocation(line: 120, column: 9, scope: !4080)
!4085 = !DILocation(line: 125, column: 23, scope: !4071)
!4086 = !DILocation(line: 0, scope: !4071)
!4087 = !DILocation(line: 126, column: 18, scope: !4088)
!4088 = distinct !DILexicalBlock(scope: !4071, file: !857, line: 126, column: 11)
!4089 = !DILocation(line: 126, column: 11, scope: !4071)
!4090 = !DILocation(line: 128, column: 39, scope: !4091)
!4091 = distinct !DILexicalBlock(scope: !4088, file: !857, line: 127, column: 9)
!4092 = !DILocalVariable(name: "__dest", arg: 1, scope: !4093, file: !1704, line: 26, type: !3555)
!4093 = distinct !DISubprogram(name: "memcpy", scope: !1704, file: !1704, line: 26, type: !3553, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !856, retainedNodes: !4094)
!4094 = !{!4092, !4095, !4096}
!4095 = !DILocalVariable(name: "__src", arg: 2, scope: !4093, file: !1704, line: 26, type: !1146)
!4096 = !DILocalVariable(name: "__len", arg: 3, scope: !4093, file: !1704, line: 26, type: !116)
!4097 = !DILocation(line: 0, scope: !4093, inlinedAt: !4098)
!4098 = distinct !DILocation(line: 128, column: 11, scope: !4091)
!4099 = !DILocation(line: 29, column: 10, scope: !4093, inlinedAt: !4098)
!4100 = !DILocation(line: 129, column: 11, scope: !4091)
!4101 = !DILocation(line: 133, column: 23, scope: !4102)
!4102 = distinct !DILexicalBlock(scope: !4103, file: !857, line: 133, column: 15)
!4103 = distinct !DILexicalBlock(scope: !4088, file: !857, line: 132, column: 9)
!4104 = !DILocation(line: 133, column: 15, scope: !4103)
!4105 = !DILocation(line: 138, column: 44, scope: !4106)
!4106 = distinct !DILexicalBlock(scope: !4102, file: !857, line: 134, column: 13)
!4107 = !DILocation(line: 0, scope: !4093, inlinedAt: !4108)
!4108 = distinct !DILocation(line: 138, column: 15, scope: !4106)
!4109 = !DILocation(line: 29, column: 10, scope: !4093, inlinedAt: !4108)
!4110 = !DILocation(line: 139, column: 15, scope: !4106)
!4111 = !DILocation(line: 139, column: 32, scope: !4106)
!4112 = !DILocation(line: 140, column: 13, scope: !4106)
!4113 = !DILocation(line: 0, scope: !4072)
!4114 = !DILocation(line: 145, column: 1, scope: !4064)
