; ModuleID = 'src/uname.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !504
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !475
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !494
@.str.1.86 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !496
@.str.2.88 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !498
@.str.3.87 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !500
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !502
@.str.4.81 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !506
@.str.5.82 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !508
@.str.6.83 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !513
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !518
@.str.97 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !524
@.str.1.98 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !526
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !528
@.str.101 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !559
@.str.1.102 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !562
@.str.2.103 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !564
@.str.3.104 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !569
@.str.4.105 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !571
@.str.5.106 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !573
@.str.6.107 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !575
@.str.7.108 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !577
@.str.8.109 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !579
@.str.9.110 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !581
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.101, ptr @.str.1.102, ptr @.str.2.103, ptr @.str.3.104, ptr @.str.4.105, ptr @.str.5.106, ptr @.str.6.107, ptr @.str.7.108, ptr @.str.8.109, ptr @.str.9.110, ptr null], align 16, !dbg !583
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !608
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !622
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !660
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !667
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !624
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !669
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !612
@.str.10.113 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !629
@.str.11.111 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !631
@.str.12.114 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !633
@.str.13.112 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !635
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !637
@.str.119 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !675
@.str.1.120 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !678
@.str.2.121 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !680
@.str.3.122 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !682
@.str.4.123 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !684
@.str.5.124 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !686
@.str.6.125 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !691
@.str.7.126 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !696
@.str.8.127 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !698
@.str.9.128 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !700
@.str.10.129 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !705
@.str.11.130 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !710
@.str.12.131 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !715
@.str.13.132 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !717
@.str.14.133 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !722
@.str.15.134 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !727
@.str.16.135 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !732
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.140 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !734
@.str.18.141 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !736
@.str.19.142 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !738
@.str.20.143 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !740
@.str.21.144 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !742
@.str.22 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !744
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !746
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !751
@exit_failure = dso_local global i32 1, align 4, !dbg !759
@.str.157 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !765
@.str.1.155 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !768
@.str.2.156 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !770
@.str.168 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !772
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !775
@.str.1.173 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !790

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !865 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !869, metadata !DIExpression()), !dbg !870
  %2 = icmp eq i32 %0, 0, !dbg !871
  br i1 %2, label %8, label %3, !dbg !873

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !874, !tbaa !876
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #37, !dbg !874
  %6 = load ptr, ptr @program_name, align 8, !dbg !874, !tbaa !876
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #37, !dbg !874
  br label %111, !dbg !874

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #37, !dbg !880
  %10 = load ptr, ptr @program_name, align 8, !dbg !880, !tbaa !876
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #37, !dbg !880
  %12 = load i32, ptr @uname_mode, align 4, !dbg !882, !tbaa !884
  %13 = icmp eq i32 %12, 0, !dbg !886
  br i1 %13, label %14, label %54, !dbg !887

14:                                               ; preds = %8
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #37, !dbg !888
  %16 = load ptr, ptr @stdout, align 8, !dbg !888, !tbaa !876
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !888
  %18 = load i32, ptr @uname_mode, align 4, !dbg !890, !tbaa !884
  %19 = icmp eq i32 %18, 0, !dbg !890
  %20 = select i1 %19, ptr @.str.3, ptr @.str.4, !dbg !890
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #37, !dbg !890
  tail call fastcc void @oputs_(ptr noundef nonnull %20, ptr noundef %21), !dbg !890
  %22 = load i32, ptr @uname_mode, align 4, !dbg !891, !tbaa !884
  %23 = icmp eq i32 %22, 0, !dbg !891
  %24 = select i1 %23, ptr @.str.3, ptr @.str.4, !dbg !891
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #37, !dbg !891
  tail call fastcc void @oputs_(ptr noundef nonnull %24, ptr noundef %25), !dbg !891
  %26 = load i32, ptr @uname_mode, align 4, !dbg !892, !tbaa !884
  %27 = icmp eq i32 %26, 0, !dbg !892
  %28 = select i1 %27, ptr @.str.3, ptr @.str.4, !dbg !892
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #37, !dbg !892
  tail call fastcc void @oputs_(ptr noundef nonnull %28, ptr noundef %29), !dbg !892
  %30 = load i32, ptr @uname_mode, align 4, !dbg !893, !tbaa !884
  %31 = icmp eq i32 %30, 0, !dbg !893
  %32 = select i1 %31, ptr @.str.3, ptr @.str.4, !dbg !893
  %33 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #37, !dbg !893
  tail call fastcc void @oputs_(ptr noundef nonnull %32, ptr noundef %33), !dbg !893
  %34 = load i32, ptr @uname_mode, align 4, !dbg !894, !tbaa !884
  %35 = icmp eq i32 %34, 0, !dbg !894
  %36 = select i1 %35, ptr @.str.3, ptr @.str.4, !dbg !894
  %37 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #37, !dbg !894
  tail call fastcc void @oputs_(ptr noundef nonnull %36, ptr noundef %37), !dbg !894
  %38 = load i32, ptr @uname_mode, align 4, !dbg !895, !tbaa !884
  %39 = icmp eq i32 %38, 0, !dbg !895
  %40 = select i1 %39, ptr @.str.3, ptr @.str.4, !dbg !895
  %41 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #37, !dbg !895
  tail call fastcc void @oputs_(ptr noundef nonnull %40, ptr noundef %41), !dbg !895
  %42 = load i32, ptr @uname_mode, align 4, !dbg !896, !tbaa !884
  %43 = icmp eq i32 %42, 0, !dbg !896
  %44 = select i1 %43, ptr @.str.3, ptr @.str.4, !dbg !896
  %45 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #37, !dbg !896
  tail call fastcc void @oputs_(ptr noundef nonnull %44, ptr noundef %45), !dbg !896
  %46 = load i32, ptr @uname_mode, align 4, !dbg !897, !tbaa !884
  %47 = icmp eq i32 %46, 0, !dbg !897
  %48 = select i1 %47, ptr @.str.3, ptr @.str.4, !dbg !897
  %49 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #37, !dbg !897
  tail call fastcc void @oputs_(ptr noundef nonnull %48, ptr noundef %49), !dbg !897
  %50 = load i32, ptr @uname_mode, align 4, !dbg !898, !tbaa !884
  %51 = icmp eq i32 %50, 0, !dbg !898
  %52 = select i1 %51, ptr @.str.3, ptr @.str.4, !dbg !898
  %53 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #37, !dbg !898
  tail call fastcc void @oputs_(ptr noundef nonnull %52, ptr noundef %53), !dbg !898
  br label %58, !dbg !899

54:                                               ; preds = %8
  %55 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #37, !dbg !900
  %56 = load ptr, ptr @stdout, align 8, !dbg !900, !tbaa !876
  %57 = tail call i32 @fputs_unlocked(ptr noundef %55, ptr noundef %56), !dbg !900
  br label %58

58:                                               ; preds = %54, %14
  %59 = load i32, ptr @uname_mode, align 4, !dbg !902, !tbaa !884
  %60 = icmp eq i32 %59, 0, !dbg !902
  %61 = select i1 %60, ptr @.str.3, ptr @.str.4, !dbg !902
  %62 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #37, !dbg !902
  tail call fastcc void @oputs_(ptr noundef nonnull %61, ptr noundef %62), !dbg !902
  %63 = load i32, ptr @uname_mode, align 4, !dbg !903, !tbaa !884
  %64 = icmp eq i32 %63, 0, !dbg !903
  %65 = select i1 %64, ptr @.str.3, ptr @.str.4, !dbg !903
  %66 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #37, !dbg !903
  tail call fastcc void @oputs_(ptr noundef nonnull %65, ptr noundef %66), !dbg !903
  %67 = load i32, ptr @uname_mode, align 4, !dbg !904, !tbaa !884
  %68 = icmp eq i32 %67, 0, !dbg !904
  %69 = select i1 %68, ptr @.str.3, ptr @.str.4, !dbg !904
  call void @llvm.dbg.assign(metadata i1 undef, metadata !905, metadata !DIExpression(), metadata !920, metadata ptr @__const.emit_ancillary_info.infomap, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.value(metadata ptr %69, metadata !908, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.assign(metadata i1 undef, metadata !905, metadata !DIExpression(), metadata !923, metadata ptr @__const.emit_ancillary_info.infomap, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.value(metadata ptr %69, metadata !909, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.value(metadata ptr @__const.emit_ancillary_info.infomap, metadata !910, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.value(metadata ptr @__const.emit_ancillary_info.infomap, metadata !910, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.value(metadata ptr %69, metadata !924, metadata !DIExpression()), !dbg !931
  call void @llvm.dbg.value(metadata ptr @.str.31, metadata !930, metadata !DIExpression()), !dbg !931
  %70 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %69, ptr noundef nonnull dereferenceable(2) @.str.31, i64 2), !dbg !933
  %71 = icmp eq i32 %70, 0, !dbg !934
  br i1 %71, label %88, label %72, !dbg !935

72:                                               ; preds = %58
  call void @llvm.dbg.value(metadata ptr getelementptr inbounds ([7 x %struct.infomap], ptr @__const.emit_ancillary_info.infomap, i64 0, i64 1), metadata !910, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.value(metadata ptr getelementptr inbounds ([7 x %struct.infomap], ptr @__const.emit_ancillary_info.infomap, i64 0, i64 1), metadata !910, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.value(metadata ptr %69, metadata !924, metadata !DIExpression()), !dbg !931
  call void @llvm.dbg.value(metadata ptr @.str.18, metadata !930, metadata !DIExpression()), !dbg !931
  %73 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %69, ptr noundef nonnull dereferenceable(10) @.str.18) #38, !dbg !933
  %74 = icmp eq i32 %73, 0, !dbg !934
  br i1 %74, label %88, label %75, !dbg !935

75:                                               ; preds = %72
  call void @llvm.dbg.value(metadata ptr getelementptr inbounds ([7 x %struct.infomap], ptr @__const.emit_ancillary_info.infomap, i64 0, i64 2), metadata !910, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.value(metadata ptr getelementptr inbounds ([7 x %struct.infomap], ptr @__const.emit_ancillary_info.infomap, i64 0, i64 2), metadata !910, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.value(metadata ptr %69, metadata !924, metadata !DIExpression()), !dbg !931
  call void @llvm.dbg.value(metadata ptr @.str.40, metadata !930, metadata !DIExpression()), !dbg !931
  %76 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %69, ptr noundef nonnull dereferenceable(10) @.str.40) #38, !dbg !933
  %77 = icmp eq i32 %76, 0, !dbg !934
  br i1 %77, label %88, label %78, !dbg !935

78:                                               ; preds = %75
  call void @llvm.dbg.value(metadata ptr getelementptr inbounds ([7 x %struct.infomap], ptr @__const.emit_ancillary_info.infomap, i64 0, i64 3), metadata !910, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.value(metadata ptr getelementptr inbounds ([7 x %struct.infomap], ptr @__const.emit_ancillary_info.infomap, i64 0, i64 3), metadata !910, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.value(metadata ptr %69, metadata !924, metadata !DIExpression()), !dbg !931
  call void @llvm.dbg.value(metadata ptr @.str.41, metadata !930, metadata !DIExpression()), !dbg !931
  %79 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %69, ptr noundef nonnull dereferenceable(10) @.str.41) #38, !dbg !933
  %80 = icmp eq i32 %79, 0, !dbg !934
  br i1 %80, label %88, label %81, !dbg !935

81:                                               ; preds = %78
  call void @llvm.dbg.value(metadata ptr getelementptr inbounds ([7 x %struct.infomap], ptr @__const.emit_ancillary_info.infomap, i64 0, i64 4), metadata !910, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.value(metadata ptr getelementptr inbounds ([7 x %struct.infomap], ptr @__const.emit_ancillary_info.infomap, i64 0, i64 4), metadata !910, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.value(metadata ptr %69, metadata !924, metadata !DIExpression()), !dbg !931
  call void @llvm.dbg.value(metadata ptr @.str.42, metadata !930, metadata !DIExpression()), !dbg !931
  %82 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %69, ptr noundef nonnull dereferenceable(10) @.str.42) #38, !dbg !933
  %83 = icmp eq i32 %82, 0, !dbg !934
  br i1 %83, label %88, label %84, !dbg !935

84:                                               ; preds = %81
  call void @llvm.dbg.value(metadata ptr getelementptr inbounds ([7 x %struct.infomap], ptr @__const.emit_ancillary_info.infomap, i64 0, i64 5), metadata !910, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.value(metadata ptr getelementptr inbounds ([7 x %struct.infomap], ptr @__const.emit_ancillary_info.infomap, i64 0, i64 5), metadata !910, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.value(metadata ptr %69, metadata !924, metadata !DIExpression()), !dbg !931
  call void @llvm.dbg.value(metadata ptr @.str.43, metadata !930, metadata !DIExpression()), !dbg !931
  %85 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %69, ptr noundef nonnull dereferenceable(10) @.str.43) #38, !dbg !933
  %86 = icmp eq i32 %85, 0, !dbg !934
  %87 = select i1 %86, ptr getelementptr inbounds ([7 x %struct.infomap], ptr @__const.emit_ancillary_info.infomap, i64 0, i64 5), ptr getelementptr inbounds ([7 x %struct.infomap], ptr @__const.emit_ancillary_info.infomap, i64 0, i64 6, i32 0), !dbg !935
  br label %88, !dbg !935

88:                                               ; preds = %84, %81, %78, %75, %72, %58
  %89 = phi ptr [ @__const.emit_ancillary_info.infomap, %58 ], [ getelementptr inbounds ([7 x %struct.infomap], ptr @__const.emit_ancillary_info.infomap, i64 0, i64 1), %72 ], [ getelementptr inbounds ([7 x %struct.infomap], ptr @__const.emit_ancillary_info.infomap, i64 0, i64 2), %75 ], [ getelementptr inbounds ([7 x %struct.infomap], ptr @__const.emit_ancillary_info.infomap, i64 0, i64 3), %78 ], [ getelementptr inbounds ([7 x %struct.infomap], ptr @__const.emit_ancillary_info.infomap, i64 0, i64 4), %81 ], [ %87, %84 ], !dbg !921
  %90 = getelementptr inbounds %struct.infomap, ptr %89, i64 0, i32 1, !dbg !936
  %91 = load ptr, ptr %90, align 8, !dbg !936, !tbaa !938
  call void @llvm.dbg.value(metadata ptr poison, metadata !909, metadata !DIExpression()), !dbg !921
  tail call void @emit_bug_reporting_address() #37, !dbg !940
  %92 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #37, !dbg !941
  call void @llvm.dbg.value(metadata ptr %92, metadata !917, metadata !DIExpression()), !dbg !921
  %93 = icmp eq ptr %92, null, !dbg !942
  br i1 %93, label %101, label %94, !dbg !944

94:                                               ; preds = %88
  %95 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %92, ptr noundef nonnull dereferenceable(4) @.str.57, i64 noundef 3) #38, !dbg !945
  %96 = icmp eq i32 %95, 0, !dbg !945
  br i1 %96, label %101, label %97, !dbg !946

97:                                               ; preds = %94
  %98 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.58, i32 noundef 5) #37, !dbg !947
  %99 = load ptr, ptr @stdout, align 8, !dbg !947, !tbaa !876
  %100 = tail call i32 @fputs_unlocked(ptr noundef %98, ptr noundef %99), !dbg !947
  br label %101, !dbg !949

101:                                              ; preds = %88, %94, %97
  %102 = icmp eq ptr %91, null, !dbg !950
  %103 = select i1 %102, ptr %69, ptr %91, !dbg !951
  call void @llvm.dbg.value(metadata ptr %103, metadata !909, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.value(metadata ptr %69, metadata !924, metadata !DIExpression()), !dbg !952
  call void @llvm.dbg.value(metadata ptr @.str.31, metadata !930, metadata !DIExpression()), !dbg !952
  %104 = select i1 %71, ptr @.str.32, ptr %69, !dbg !954
  call void @llvm.dbg.value(metadata ptr %104, metadata !918, metadata !DIExpression()), !dbg !921
  %105 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 5) #37, !dbg !955
  %106 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %105, ptr noundef nonnull @.str.47, ptr noundef nonnull %104) #37, !dbg !955
  %107 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.60, i32 noundef 5) #37, !dbg !956
  %108 = icmp eq ptr %103, %69, !dbg !956
  %109 = select i1 %108, ptr @.str.61, ptr @.str.17, !dbg !956
  %110 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %107, ptr noundef nonnull %103, ptr noundef nonnull %109) #37, !dbg !956
  br label %111

111:                                              ; preds = %101, %3
  tail call void @exit(i32 noundef %0) #39, !dbg !957
  unreachable, !dbg !957
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !958 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !962 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !968 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !971 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0, ptr noundef %1) unnamed_addr #5 !dbg !161 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !165, metadata !DIExpression()), !dbg !975
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !166, metadata !DIExpression()), !dbg !975
  %3 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !976, !tbaa !884
  %4 = icmp eq i32 %3, -1, !dbg !977
  br i1 %4, label %5, label %17, !dbg !978

5:                                                ; preds = %2
  %6 = tail call ptr @getenv(ptr noundef nonnull @.str.27) #37, !dbg !979
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !167, metadata !DIExpression()), !dbg !980
  %7 = icmp eq ptr %6, null, !dbg !981
  br i1 %7, label %15, label %8, !dbg !982

8:                                                ; preds = %5
  %9 = load i8, ptr %6, align 1, !dbg !983, !tbaa !984
  %10 = icmp eq i8 %9, 0, !dbg !983
  br i1 %10, label %15, label %11, !dbg !985

11:                                               ; preds = %8
  call void @llvm.dbg.value(metadata ptr %6, metadata !924, metadata !DIExpression()), !dbg !986
  call void @llvm.dbg.value(metadata ptr @.str.28, metadata !930, metadata !DIExpression()), !dbg !986
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(5) @.str.28) #38, !dbg !988
  %13 = icmp eq i32 %12, 0, !dbg !989
  %14 = zext i1 %13 to i32, !dbg !985
  br label %15, !dbg !985

15:                                               ; preds = %11, %8, %5
  %16 = phi i32 [ 1, %8 ], [ 1, %5 ], [ %14, %11 ]
  store i32 %16, ptr @oputs_.help_no_sgr, align 4, !dbg !990, !tbaa !884
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
  tail call void @llvm.dbg.value(metadata i8 1, metadata !170, metadata !DIExpression()), !dbg !975
  %24 = tail call i64 @strspn(ptr noundef %1, ptr noundef nonnull @.str.29) #38, !dbg !998
  %25 = getelementptr inbounds i8, ptr %1, i64 %24, !dbg !999
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !172, metadata !DIExpression()), !dbg !975
  %26 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 45) #38, !dbg !1000
  tail call void @llvm.dbg.value(metadata ptr %26, metadata !173, metadata !DIExpression()), !dbg !975
  %27 = icmp eq ptr %26, null, !dbg !1001
  br i1 %27, label %56, label %28, !dbg !1002

28:                                               ; preds = %23
  %29 = icmp eq ptr %26, %25, !dbg !1003
  br i1 %29, label %56, label %30, !dbg !1004

30:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !174, metadata !DIExpression()), !dbg !1005
  tail call void @llvm.dbg.value(metadata i64 0, metadata !178, metadata !DIExpression()), !dbg !1005
  %31 = icmp ult ptr %25, %26, !dbg !1006
  br i1 %31, label %32, label %52, !dbg !1007

32:                                               ; preds = %30
  %33 = tail call ptr @__ctype_b_loc() #40, !dbg !975
  %34 = load ptr, ptr %33, align 8, !tbaa !876
  br label %35, !dbg !1007

35:                                               ; preds = %32, %35
  %36 = phi ptr [ %25, %32 ], [ %38, %35 ]
  %37 = phi i64 [ 0, %32 ], [ %46, %35 ]
  tail call void @llvm.dbg.value(metadata ptr %36, metadata !174, metadata !DIExpression()), !dbg !1005
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !178, metadata !DIExpression()), !dbg !1005
  %38 = getelementptr inbounds i8, ptr %36, i64 1, !dbg !1008
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !174, metadata !DIExpression()), !dbg !1005
  %39 = load i8, ptr %36, align 1, !dbg !1008, !tbaa !984
  %40 = sext i8 %39 to i64, !dbg !1008
  %41 = getelementptr inbounds i16, ptr %34, i64 %40, !dbg !1008
  %42 = load i16, ptr %41, align 2, !dbg !1008, !tbaa !1009
  %43 = lshr i16 %42, 13, !dbg !1011
  %44 = and i16 %43, 1, !dbg !1011
  %45 = zext nneg i16 %44 to i64
  %46 = add nuw nsw i64 %37, %45, !dbg !1012
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !178, metadata !DIExpression()), !dbg !1005
  %47 = icmp ult ptr %38, %26, !dbg !1006
  %48 = icmp ult i64 %46, 2, !dbg !1013
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1013
  br i1 %49, label %35, label %50, !dbg !1007, !llvm.loop !1014

50:                                               ; preds = %35
  %51 = icmp ne i64 %46, 2, !dbg !1016
  br label %52, !dbg !1016

52:                                               ; preds = %50, %30
  %53 = phi i1 [ true, %30 ], [ %51, %50 ], !dbg !1005
  %54 = select i1 %53, ptr %26, ptr %25, !dbg !1018
  %55 = zext i1 %53 to i8, !dbg !1018
  tail call void @llvm.dbg.value(metadata i8 %55, metadata !170, metadata !DIExpression()), !dbg !975
  tail call void @llvm.dbg.value(metadata ptr %54, metadata !173, metadata !DIExpression()), !dbg !975
  br label %56, !dbg !1019

56:                                               ; preds = %23, %28, %52
  %57 = phi ptr [ %54, %52 ], [ %25, %28 ], [ %25, %23 ], !dbg !975
  %58 = phi i8 [ %55, %52 ], [ 1, %28 ], [ 0, %23 ], !dbg !975
  tail call void @llvm.dbg.value(metadata i8 %58, metadata !170, metadata !DIExpression()), !dbg !975
  tail call void @llvm.dbg.value(metadata ptr %57, metadata !173, metadata !DIExpression()), !dbg !975
  %59 = tail call i64 @strcspn(ptr noundef %57, ptr noundef nonnull @.str.30) #38, !dbg !1020
  tail call void @llvm.dbg.value(metadata i64 %59, metadata !179, metadata !DIExpression()), !dbg !975
  %60 = getelementptr inbounds i8, ptr %57, i64 %59, !dbg !1021
  tail call void @llvm.dbg.value(metadata ptr %60, metadata !180, metadata !DIExpression()), !dbg !975
  br label %61, !dbg !1022

61:                                               ; preds = %94, %56
  %62 = phi ptr [ %60, %56 ], [ %95, %94 ], !dbg !975
  %63 = phi i8 [ %58, %56 ], [ %71, %94 ], !dbg !975
  tail call void @llvm.dbg.value(metadata i8 %63, metadata !170, metadata !DIExpression()), !dbg !975
  tail call void @llvm.dbg.value(metadata ptr %62, metadata !180, metadata !DIExpression()), !dbg !975
  %64 = load i8, ptr %62, align 1, !dbg !1023, !tbaa !984
  switch i8 %64, label %70 [
    i8 0, label %96
    i8 10, label %96
    i8 45, label %65
  ], !dbg !1024

65:                                               ; preds = %61
  %66 = getelementptr inbounds i8, ptr %62, i64 1, !dbg !1025
  %67 = load i8, ptr %66, align 1, !dbg !1028, !tbaa !984
  %68 = icmp eq i8 %67, 45, !dbg !1029
  %69 = select i1 %68, i8 0, i8 %63, !dbg !1030
  br label %70, !dbg !1030

70:                                               ; preds = %65, %61
  %71 = phi i8 [ %63, %61 ], [ %69, %65 ], !dbg !975
  tail call void @llvm.dbg.value(metadata i8 %71, metadata !170, metadata !DIExpression()), !dbg !975
  %72 = tail call ptr @__ctype_b_loc() #40, !dbg !1031
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
  %83 = load i8, ptr %82, align 1, !dbg !1038, !tbaa !984
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
  %93 = or i1 %91, %92, !dbg !1042
  br i1 %93, label %94, label %96, !dbg !1042

94:                                               ; preds = %89, %70
  %95 = getelementptr inbounds i8, ptr %62, i64 1, !dbg !1043
  tail call void @llvm.dbg.value(metadata ptr %95, metadata !180, metadata !DIExpression()), !dbg !975
  br label %61, !dbg !1022, !llvm.loop !1044

96:                                               ; preds = %89, %61, %61, %79, %81
  %97 = ptrtoint ptr %25 to i64, !dbg !1046
  %98 = load ptr, ptr @stdout, align 8, !dbg !1046, !tbaa !876
  %99 = tail call i64 @fwrite_unlocked(ptr noundef %1, i64 noundef 1, i64 noundef %24, ptr noundef %98), !dbg !1046
  call void @llvm.dbg.value(metadata ptr %0, metadata !924, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata ptr @.str.31, metadata !930, metadata !DIExpression()), !dbg !1047
  %100 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.31) #38, !dbg !1049
  %101 = icmp eq i32 %100, 0, !dbg !1050
  br i1 %101, label %130, label %102, !dbg !1051

102:                                              ; preds = %96
  call void @llvm.dbg.value(metadata ptr %0, metadata !924, metadata !DIExpression()), !dbg !1052
  call void @llvm.dbg.value(metadata ptr @.str.33, metadata !930, metadata !DIExpression()), !dbg !1052
  %103 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.33) #38, !dbg !1054
  %104 = icmp eq i32 %103, 0, !dbg !1055
  br i1 %104, label %130, label %105, !dbg !1056

105:                                              ; preds = %102
  call void @llvm.dbg.value(metadata ptr %0, metadata !924, metadata !DIExpression()), !dbg !1057
  call void @llvm.dbg.value(metadata ptr @.str.35, metadata !930, metadata !DIExpression()), !dbg !1057
  %106 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.35) #38, !dbg !1059
  %107 = icmp eq i32 %106, 0, !dbg !1060
  br i1 %107, label %130, label %108, !dbg !1061

108:                                              ; preds = %105
  call void @llvm.dbg.value(metadata ptr %0, metadata !924, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata ptr @.str.36, metadata !930, metadata !DIExpression()), !dbg !1062
  %109 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.36) #38, !dbg !1064
  %110 = icmp eq i32 %109, 0, !dbg !1065
  br i1 %110, label %130, label %111, !dbg !1066

111:                                              ; preds = %108
  call void @llvm.dbg.value(metadata ptr %0, metadata !924, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.value(metadata ptr @.str.38, metadata !930, metadata !DIExpression()), !dbg !1067
  %112 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.38) #38, !dbg !1069
  %113 = icmp eq i32 %112, 0, !dbg !1070
  br i1 %113, label %130, label %114, !dbg !1071

114:                                              ; preds = %111
  call void @llvm.dbg.value(metadata ptr %0, metadata !924, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.value(metadata ptr @.str.39, metadata !930, metadata !DIExpression()), !dbg !1072
  %115 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.39) #38, !dbg !1074
  %116 = icmp eq i32 %115, 0, !dbg !1075
  br i1 %116, label %130, label %117, !dbg !1076

117:                                              ; preds = %114
  call void @llvm.dbg.value(metadata ptr %0, metadata !924, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.value(metadata ptr @.str.40, metadata !930, metadata !DIExpression()), !dbg !1077
  %118 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(10) @.str.40) #38, !dbg !1079
  %119 = icmp eq i32 %118, 0, !dbg !1080
  br i1 %119, label %130, label %120, !dbg !1081

120:                                              ; preds = %117
  call void @llvm.dbg.value(metadata ptr %0, metadata !924, metadata !DIExpression()), !dbg !1082
  call void @llvm.dbg.value(metadata ptr @.str.41, metadata !930, metadata !DIExpression()), !dbg !1082
  %121 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(10) @.str.41) #38, !dbg !1084
  %122 = icmp eq i32 %121, 0, !dbg !1085
  br i1 %122, label %130, label %123, !dbg !1086

123:                                              ; preds = %120
  call void @llvm.dbg.value(metadata ptr %0, metadata !924, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.value(metadata ptr @.str.42, metadata !930, metadata !DIExpression()), !dbg !1087
  %124 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(10) @.str.42) #38, !dbg !1089
  %125 = icmp eq i32 %124, 0, !dbg !1090
  br i1 %125, label %130, label %126, !dbg !1091

126:                                              ; preds = %123
  call void @llvm.dbg.value(metadata ptr %0, metadata !924, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata ptr @.str.43, metadata !930, metadata !DIExpression()), !dbg !1092
  %127 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(10) @.str.43) #38, !dbg !1094
  %128 = icmp eq i32 %127, 0, !dbg !1095
  %129 = select i1 %128, ptr @.str.37, ptr %0, !dbg !1096
  br label %130, !dbg !1091

130:                                              ; preds = %102, %108, %114, %120, %123, %126, %117, %111, %105, %96
  %131 = phi ptr [ @.str.32, %96 ], [ @.str.34, %102 ], [ @.str.34, %105 ], [ @.str.37, %108 ], [ @.str.37, %111 ], [ @.str.37, %114 ], [ @.str.37, %117 ], [ @.str.37, %120 ], [ %129, %126 ], [ @.str.37, %123 ], !dbg !1051
  tail call void @llvm.dbg.value(metadata ptr %131, metadata !237, metadata !DIExpression()), !dbg !975
  %132 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %57, ptr noundef nonnull dereferenceable(7) @.str.44, i64 noundef 6) #38, !dbg !1097
  %133 = icmp eq i32 %132, 0, !dbg !1097
  br i1 %133, label %137, label %134, !dbg !1099

134:                                              ; preds = %130
  %135 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %57, ptr noundef nonnull dereferenceable(10) @.str.45, i64 noundef 9) #38, !dbg !1100
  %136 = icmp eq i32 %135, 0, !dbg !1100
  br i1 %136, label %137, label %140, !dbg !1101

137:                                              ; preds = %134, %130
  %138 = trunc i64 %59 to i32, !dbg !1102
  %139 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, ptr noundef %131, ptr noundef %131, i32 noundef %138, ptr noundef %57) #37, !dbg !1102
  br label %143, !dbg !1104

140:                                              ; preds = %134
  %141 = trunc i64 %59 to i32, !dbg !1105
  %142 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, ptr noundef %131, i32 noundef %141, ptr noundef %57) #37, !dbg !1105
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
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

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
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #11 !dbg !80 {
  %3 = alloca %struct.utsname, align 1, !DIAssignID !1149
  call void @llvm.dbg.assign(metadata i1 undef, metadata !419, metadata !DIExpression(), metadata !1149, metadata ptr %3, metadata !DIExpression()), !dbg !1150
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !416, metadata !DIExpression()), !dbg !1151
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !417, metadata !DIExpression()), !dbg !1151
  tail call void @llvm.dbg.value(metadata i32 0, metadata !418, metadata !DIExpression()), !dbg !1151
  %4 = load ptr, ptr %1, align 8, !dbg !1152, !tbaa !876
  tail call void @set_program_name(ptr noundef %4) #37, !dbg !1153
  %5 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.17) #37, !dbg !1154
  %6 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #37, !dbg !1155
  %7 = tail call ptr @textdomain(ptr noundef nonnull @.str.18) #37, !dbg !1156
  %8 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #37, !dbg !1157
  call void @llvm.dbg.value(metadata i32 %0, metadata !1158, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata ptr %1, metadata !1161, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata i32 0, metadata !1163, metadata !DIExpression()), !dbg !1164
  %9 = load i32, ptr @uname_mode, align 4, !dbg !1166, !tbaa !884
  %10 = icmp eq i32 %9, 1, !dbg !1168
  br i1 %10, label %11, label %21, !dbg !1169

11:                                               ; preds = %2
  %12 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.17, ptr noundef nonnull @arch_long_options, ptr noundef null) #37, !dbg !1170
  call void @llvm.dbg.value(metadata i32 %12, metadata !1162, metadata !DIExpression()), !dbg !1164
  switch i32 %12, label %20 [
    i32 -1, label %51
    i32 -130, label %13
    i32 -131, label %14
  ], !dbg !1172

13:                                               ; preds = %11
  tail call void @usage(i32 noundef 0) #41, !dbg !1173
  unreachable, !dbg !1173

14:                                               ; preds = %11
  %15 = load ptr, ptr @stdout, align 8, !dbg !1176, !tbaa !876
  %16 = load i32, ptr @uname_mode, align 4, !dbg !1176, !tbaa !884
  %17 = icmp eq i32 %16, 0, !dbg !1176
  %18 = select i1 %17, ptr @.str.3, ptr @.str.4, !dbg !1176
  %19 = load ptr, ptr @Version, align 8, !dbg !1176, !tbaa !876
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %15, ptr noundef nonnull %18, ptr noundef nonnull @.str.62, ptr noundef %19, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64, ptr noundef null) #37, !dbg !1176
  tail call void @exit(i32 noundef 0) #39, !dbg !1176
  unreachable, !dbg !1176

20:                                               ; preds = %11
  tail call void @usage(i32 noundef 1) #41, !dbg !1177
  unreachable, !dbg !1177

21:                                               ; preds = %2, %40
  %22 = phi i32 [ %41, %40 ], [ 0, %2 ], !dbg !1164
  call void @llvm.dbg.value(metadata i32 %22, metadata !1163, metadata !DIExpression()), !dbg !1164
  %23 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.65, ptr noundef nonnull @uname_long_options, ptr noundef null) #37, !dbg !1178
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
    i32 -130, label %42
    i32 -131, label %43
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
  tail call void @usage(i32 noundef 0) #41, !dbg !1201
  unreachable, !dbg !1201

43:                                               ; preds = %21
  %44 = load ptr, ptr @stdout, align 8, !dbg !1202, !tbaa !876
  %45 = load i32, ptr @uname_mode, align 4, !dbg !1202, !tbaa !884
  %46 = icmp eq i32 %45, 0, !dbg !1202
  %47 = select i1 %46, ptr @.str.3, ptr @.str.4, !dbg !1202
  %48 = load ptr, ptr @Version, align 8, !dbg !1202, !tbaa !876
  %49 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.63) #37, !dbg !1202
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %44, ptr noundef nonnull %47, ptr noundef nonnull @.str.62, ptr noundef %48, ptr noundef %49, ptr noundef null) #37, !dbg !1202
  tail call void @exit(i32 noundef 0) #39, !dbg !1202
  unreachable, !dbg !1202

50:                                               ; preds = %21
  tail call void @usage(i32 noundef 1) #41, !dbg !1203
  unreachable, !dbg !1203

51:                                               ; preds = %21, %11
  %52 = phi i32 [ 16, %11 ], [ %22, %21 ], !dbg !1164
  call void @llvm.dbg.value(metadata i32 %52, metadata !1163, metadata !DIExpression()), !dbg !1164
  %53 = load i32, ptr @optind, align 4, !dbg !1204, !tbaa !884
  %54 = icmp eq i32 %53, %0, !dbg !1206
  br i1 %54, label %62, label %55, !dbg !1207

55:                                               ; preds = %51
  %56 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.66, i32 noundef 5) #37, !dbg !1208
  %57 = load i32, ptr @optind, align 4, !dbg !1208, !tbaa !884
  %58 = sext i32 %57 to i64, !dbg !1208
  %59 = getelementptr inbounds ptr, ptr %1, i64 %58, !dbg !1208
  %60 = load ptr, ptr %59, align 8, !dbg !1208, !tbaa !876
  %61 = tail call ptr @quote(ptr noundef %60) #37, !dbg !1208
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %56, ptr noundef %61) #37, !dbg !1208
  tail call void @usage(i32 noundef 1) #41, !dbg !1210
  unreachable, !dbg !1210

62:                                               ; preds = %51
  tail call void @llvm.dbg.value(metadata i32 %52, metadata !418, metadata !DIExpression()), !dbg !1151
  %63 = tail call i32 @llvm.umax.i32(i32 %52, i32 1), !dbg !1211
  tail call void @llvm.dbg.value(metadata i32 %63, metadata !418, metadata !DIExpression()), !dbg !1151
  %64 = and i32 %63, 31, !dbg !1212
  %65 = icmp eq i32 %64, 0, !dbg !1212
  br i1 %65, label %173, label %66, !dbg !1213

66:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 390, ptr nonnull %3) #37, !dbg !1214
  %67 = call i32 @uname(ptr noundef nonnull %3) #37, !dbg !1215
  %68 = icmp eq i32 %67, -1, !dbg !1217
  br i1 %68, label %69, label %73, !dbg !1218

69:                                               ; preds = %66
  %70 = tail call ptr @__errno_location() #40, !dbg !1219
  %71 = load i32, ptr %70, align 4, !dbg !1219, !tbaa !884
  %72 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef 5) #37, !dbg !1219
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %71, ptr noundef %72) #37, !dbg !1219
  unreachable, !dbg !1219

73:                                               ; preds = %66
  %74 = and i32 %63, 1, !dbg !1220
  %75 = icmp eq i32 %74, 0, !dbg !1220
  br i1 %75, label %92, label %76, !dbg !1222

76:                                               ; preds = %73
  call void @llvm.dbg.value(metadata ptr %3, metadata !1223, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata !1229, metadata !1226, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata ptr %3, metadata !414, metadata !DIExpression()), !dbg !1230
  %77 = load i1, ptr @print_element.printed, align 1, !dbg !1232
  br i1 %77, label %78, label %89, !dbg !1234

78:                                               ; preds = %76
  call void @llvm.dbg.value(metadata i32 32, metadata !1235, metadata !DIExpression()), !dbg !1241
  %79 = load ptr, ptr @stdout, align 8, !dbg !1243, !tbaa !876
  %80 = getelementptr inbounds %struct._IO_FILE, ptr %79, i64 0, i32 5, !dbg !1243
  %81 = load ptr, ptr %80, align 8, !dbg !1243, !tbaa !1244
  %82 = getelementptr inbounds %struct._IO_FILE, ptr %79, i64 0, i32 6, !dbg !1243
  %83 = load ptr, ptr %82, align 8, !dbg !1243, !tbaa !1247
  %84 = icmp ult ptr %81, %83, !dbg !1243
  br i1 %84, label %87, label %85, !dbg !1243, !prof !1248

85:                                               ; preds = %78
  %86 = tail call i32 @__overflow(ptr noundef nonnull %79, i32 noundef 32) #37, !dbg !1243
  br label %89, !dbg !1243

87:                                               ; preds = %78
  %88 = getelementptr inbounds i8, ptr %81, i64 1, !dbg !1243
  store ptr %88, ptr %80, align 8, !dbg !1243, !tbaa !1244
  store i8 32, ptr %81, align 1, !dbg !1243, !tbaa !984
  br label %89, !dbg !1243

89:                                               ; preds = %76, %85, %87
  store i1 true, ptr @print_element.printed, align 1, !dbg !1249
  %90 = load ptr, ptr @stdout, align 8, !dbg !1250, !tbaa !876
  %91 = call i32 @fputs_unlocked(ptr noundef nonnull %3, ptr noundef %90), !dbg !1250
  br label %92, !dbg !1251

92:                                               ; preds = %89, %73
  %93 = and i32 %63, 2, !dbg !1252
  %94 = icmp eq i32 %93, 0, !dbg !1252
  br i1 %94, label %112, label %95, !dbg !1254

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.utsname, ptr %3, i64 0, i32 1, !dbg !1255
  call void @llvm.dbg.value(metadata ptr %96, metadata !1223, metadata !DIExpression()), !dbg !1256
  call void @llvm.dbg.value(metadata !1229, metadata !1226, metadata !DIExpression()), !dbg !1256
  call void @llvm.dbg.value(metadata ptr %96, metadata !414, metadata !DIExpression()), !dbg !1258
  %97 = load i1, ptr @print_element.printed, align 1, !dbg !1260
  br i1 %97, label %98, label %109, !dbg !1261

98:                                               ; preds = %95
  call void @llvm.dbg.value(metadata i32 32, metadata !1235, metadata !DIExpression()), !dbg !1262
  %99 = load ptr, ptr @stdout, align 8, !dbg !1264, !tbaa !876
  %100 = getelementptr inbounds %struct._IO_FILE, ptr %99, i64 0, i32 5, !dbg !1264
  %101 = load ptr, ptr %100, align 8, !dbg !1264, !tbaa !1244
  %102 = getelementptr inbounds %struct._IO_FILE, ptr %99, i64 0, i32 6, !dbg !1264
  %103 = load ptr, ptr %102, align 8, !dbg !1264, !tbaa !1247
  %104 = icmp ult ptr %101, %103, !dbg !1264
  br i1 %104, label %107, label %105, !dbg !1264, !prof !1248

105:                                              ; preds = %98
  %106 = tail call i32 @__overflow(ptr noundef nonnull %99, i32 noundef 32) #37, !dbg !1264
  br label %109, !dbg !1264

107:                                              ; preds = %98
  %108 = getelementptr inbounds i8, ptr %101, i64 1, !dbg !1264
  store ptr %108, ptr %100, align 8, !dbg !1264, !tbaa !1244
  store i8 32, ptr %101, align 1, !dbg !1264, !tbaa !984
  br label %109, !dbg !1264

109:                                              ; preds = %95, %105, %107
  store i1 true, ptr @print_element.printed, align 1, !dbg !1265
  %110 = load ptr, ptr @stdout, align 8, !dbg !1266, !tbaa !876
  %111 = call i32 @fputs_unlocked(ptr noundef nonnull %96, ptr noundef %110), !dbg !1266
  br label %112, !dbg !1267

112:                                              ; preds = %109, %92
  %113 = and i32 %63, 4, !dbg !1268
  %114 = icmp eq i32 %113, 0, !dbg !1268
  br i1 %114, label %132, label %115, !dbg !1270

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.utsname, ptr %3, i64 0, i32 2, !dbg !1271
  call void @llvm.dbg.value(metadata ptr %116, metadata !1223, metadata !DIExpression()), !dbg !1272
  call void @llvm.dbg.value(metadata !1229, metadata !1226, metadata !DIExpression()), !dbg !1272
  call void @llvm.dbg.value(metadata ptr %116, metadata !414, metadata !DIExpression()), !dbg !1274
  %117 = load i1, ptr @print_element.printed, align 1, !dbg !1276
  br i1 %117, label %118, label %129, !dbg !1277

118:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i32 32, metadata !1235, metadata !DIExpression()), !dbg !1278
  %119 = load ptr, ptr @stdout, align 8, !dbg !1280, !tbaa !876
  %120 = getelementptr inbounds %struct._IO_FILE, ptr %119, i64 0, i32 5, !dbg !1280
  %121 = load ptr, ptr %120, align 8, !dbg !1280, !tbaa !1244
  %122 = getelementptr inbounds %struct._IO_FILE, ptr %119, i64 0, i32 6, !dbg !1280
  %123 = load ptr, ptr %122, align 8, !dbg !1280, !tbaa !1247
  %124 = icmp ult ptr %121, %123, !dbg !1280
  br i1 %124, label %127, label %125, !dbg !1280, !prof !1248

125:                                              ; preds = %118
  %126 = tail call i32 @__overflow(ptr noundef nonnull %119, i32 noundef 32) #37, !dbg !1280
  br label %129, !dbg !1280

127:                                              ; preds = %118
  %128 = getelementptr inbounds i8, ptr %121, i64 1, !dbg !1280
  store ptr %128, ptr %120, align 8, !dbg !1280, !tbaa !1244
  store i8 32, ptr %121, align 1, !dbg !1280, !tbaa !984
  br label %129, !dbg !1280

129:                                              ; preds = %115, %125, %127
  store i1 true, ptr @print_element.printed, align 1, !dbg !1281
  %130 = load ptr, ptr @stdout, align 8, !dbg !1282, !tbaa !876
  %131 = call i32 @fputs_unlocked(ptr noundef nonnull %116, ptr noundef %130), !dbg !1282
  br label %132, !dbg !1283

132:                                              ; preds = %129, %112
  %133 = and i32 %63, 8, !dbg !1284
  %134 = icmp eq i32 %133, 0, !dbg !1284
  br i1 %134, label %152, label %135, !dbg !1286

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct.utsname, ptr %3, i64 0, i32 3, !dbg !1287
  call void @llvm.dbg.value(metadata ptr %136, metadata !1223, metadata !DIExpression()), !dbg !1288
  call void @llvm.dbg.value(metadata !1229, metadata !1226, metadata !DIExpression()), !dbg !1288
  call void @llvm.dbg.value(metadata ptr %136, metadata !414, metadata !DIExpression()), !dbg !1290
  %137 = load i1, ptr @print_element.printed, align 1, !dbg !1292
  br i1 %137, label %138, label %149, !dbg !1293

138:                                              ; preds = %135
  call void @llvm.dbg.value(metadata i32 32, metadata !1235, metadata !DIExpression()), !dbg !1294
  %139 = load ptr, ptr @stdout, align 8, !dbg !1296, !tbaa !876
  %140 = getelementptr inbounds %struct._IO_FILE, ptr %139, i64 0, i32 5, !dbg !1296
  %141 = load ptr, ptr %140, align 8, !dbg !1296, !tbaa !1244
  %142 = getelementptr inbounds %struct._IO_FILE, ptr %139, i64 0, i32 6, !dbg !1296
  %143 = load ptr, ptr %142, align 8, !dbg !1296, !tbaa !1247
  %144 = icmp ult ptr %141, %143, !dbg !1296
  br i1 %144, label %147, label %145, !dbg !1296, !prof !1248

145:                                              ; preds = %138
  %146 = tail call i32 @__overflow(ptr noundef nonnull %139, i32 noundef 32) #37, !dbg !1296
  br label %149, !dbg !1296

147:                                              ; preds = %138
  %148 = getelementptr inbounds i8, ptr %141, i64 1, !dbg !1296
  store ptr %148, ptr %140, align 8, !dbg !1296, !tbaa !1244
  store i8 32, ptr %141, align 1, !dbg !1296, !tbaa !984
  br label %149, !dbg !1296

149:                                              ; preds = %135, %145, %147
  store i1 true, ptr @print_element.printed, align 1, !dbg !1297
  %150 = load ptr, ptr @stdout, align 8, !dbg !1298, !tbaa !876
  %151 = call i32 @fputs_unlocked(ptr noundef nonnull %136, ptr noundef %150), !dbg !1298
  br label %152, !dbg !1299

152:                                              ; preds = %149, %132
  %153 = and i32 %63, 16, !dbg !1300
  %154 = icmp eq i32 %153, 0, !dbg !1300
  br i1 %154, label %172, label %155, !dbg !1302

155:                                              ; preds = %152
  %156 = getelementptr inbounds %struct.utsname, ptr %3, i64 0, i32 4, !dbg !1303
  call void @llvm.dbg.value(metadata ptr %156, metadata !1223, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata !1229, metadata !1226, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata ptr %156, metadata !414, metadata !DIExpression()), !dbg !1306
  %157 = load i1, ptr @print_element.printed, align 1, !dbg !1308
  br i1 %157, label %158, label %169, !dbg !1309

158:                                              ; preds = %155
  call void @llvm.dbg.value(metadata i32 32, metadata !1235, metadata !DIExpression()), !dbg !1310
  %159 = load ptr, ptr @stdout, align 8, !dbg !1312, !tbaa !876
  %160 = getelementptr inbounds %struct._IO_FILE, ptr %159, i64 0, i32 5, !dbg !1312
  %161 = load ptr, ptr %160, align 8, !dbg !1312, !tbaa !1244
  %162 = getelementptr inbounds %struct._IO_FILE, ptr %159, i64 0, i32 6, !dbg !1312
  %163 = load ptr, ptr %162, align 8, !dbg !1312, !tbaa !1247
  %164 = icmp ult ptr %161, %163, !dbg !1312
  br i1 %164, label %167, label %165, !dbg !1312, !prof !1248

165:                                              ; preds = %158
  %166 = tail call i32 @__overflow(ptr noundef nonnull %159, i32 noundef 32) #37, !dbg !1312
  br label %169, !dbg !1312

167:                                              ; preds = %158
  %168 = getelementptr inbounds i8, ptr %161, i64 1, !dbg !1312
  store ptr %168, ptr %160, align 8, !dbg !1312, !tbaa !1244
  store i8 32, ptr %161, align 1, !dbg !1312, !tbaa !984
  br label %169, !dbg !1312

169:                                              ; preds = %155, %165, %167
  store i1 true, ptr @print_element.printed, align 1, !dbg !1313
  %170 = load ptr, ptr @stdout, align 8, !dbg !1314, !tbaa !876
  %171 = call i32 @fputs_unlocked(ptr noundef nonnull %156, ptr noundef %170), !dbg !1314
  br label %172, !dbg !1315

172:                                              ; preds = %169, %152
  call void @llvm.lifetime.end.p0(i64 390, ptr nonnull %3) #37, !dbg !1316
  br label %173, !dbg !1317

173:                                              ; preds = %172, %62
  %174 = and i32 %63, 32, !dbg !1318
  %175 = icmp eq i32 %174, 0, !dbg !1318
  tail call void @llvm.dbg.value(metadata ptr @main.unknown, metadata !431, metadata !DIExpression()), !dbg !1319
  %176 = icmp eq i32 %52, -1
  %177 = select i1 %175, i1 true, i1 %176, !dbg !1320
  br i1 %177, label %194, label %178, !dbg !1320

178:                                              ; preds = %173
  call void @llvm.dbg.value(metadata ptr @main.unknown, metadata !414, metadata !DIExpression()), !dbg !1321
  %179 = load i1, ptr @print_element.printed, align 1, !dbg !1324
  br i1 %179, label %180, label %191, !dbg !1325

180:                                              ; preds = %178
  call void @llvm.dbg.value(metadata i32 32, metadata !1235, metadata !DIExpression()), !dbg !1326
  %181 = load ptr, ptr @stdout, align 8, !dbg !1328, !tbaa !876
  %182 = getelementptr inbounds %struct._IO_FILE, ptr %181, i64 0, i32 5, !dbg !1328
  %183 = load ptr, ptr %182, align 8, !dbg !1328, !tbaa !1244
  %184 = getelementptr inbounds %struct._IO_FILE, ptr %181, i64 0, i32 6, !dbg !1328
  %185 = load ptr, ptr %184, align 8, !dbg !1328, !tbaa !1247
  %186 = icmp ult ptr %183, %185, !dbg !1328
  br i1 %186, label %189, label %187, !dbg !1328, !prof !1248

187:                                              ; preds = %180
  %188 = tail call i32 @__overflow(ptr noundef nonnull %181, i32 noundef 32) #37, !dbg !1328
  br label %191, !dbg !1328

189:                                              ; preds = %180
  %190 = getelementptr inbounds i8, ptr %183, i64 1, !dbg !1328
  store ptr %190, ptr %182, align 8, !dbg !1328, !tbaa !1244
  store i8 32, ptr %183, align 1, !dbg !1328, !tbaa !984
  br label %191, !dbg !1328

191:                                              ; preds = %178, %187, %189
  store i1 true, ptr @print_element.printed, align 1, !dbg !1329
  %192 = load ptr, ptr @stdout, align 8, !dbg !1330, !tbaa !876
  %193 = tail call i32 @fputs_unlocked(ptr noundef nonnull @main.unknown, ptr noundef %192), !dbg !1330
  br label %194, !dbg !1331

194:                                              ; preds = %191, %173
  %195 = and i32 %63, 64, !dbg !1332
  %196 = icmp eq i32 %195, 0, !dbg !1332
  tail call void @llvm.dbg.value(metadata ptr @main.unknown, metadata !434, metadata !DIExpression()), !dbg !1333
  %197 = select i1 %196, i1 true, i1 %176, !dbg !1334
  br i1 %197, label %214, label %198, !dbg !1334

198:                                              ; preds = %194
  call void @llvm.dbg.value(metadata ptr @main.unknown, metadata !414, metadata !DIExpression()), !dbg !1335
  %199 = load i1, ptr @print_element.printed, align 1, !dbg !1338
  br i1 %199, label %200, label %211, !dbg !1339

200:                                              ; preds = %198
  call void @llvm.dbg.value(metadata i32 32, metadata !1235, metadata !DIExpression()), !dbg !1340
  %201 = load ptr, ptr @stdout, align 8, !dbg !1342, !tbaa !876
  %202 = getelementptr inbounds %struct._IO_FILE, ptr %201, i64 0, i32 5, !dbg !1342
  %203 = load ptr, ptr %202, align 8, !dbg !1342, !tbaa !1244
  %204 = getelementptr inbounds %struct._IO_FILE, ptr %201, i64 0, i32 6, !dbg !1342
  %205 = load ptr, ptr %204, align 8, !dbg !1342, !tbaa !1247
  %206 = icmp ult ptr %203, %205, !dbg !1342
  br i1 %206, label %209, label %207, !dbg !1342, !prof !1248

207:                                              ; preds = %200
  %208 = tail call i32 @__overflow(ptr noundef nonnull %201, i32 noundef 32) #37, !dbg !1342
  br label %211, !dbg !1342

209:                                              ; preds = %200
  %210 = getelementptr inbounds i8, ptr %203, i64 1, !dbg !1342
  store ptr %210, ptr %202, align 8, !dbg !1342, !tbaa !1244
  store i8 32, ptr %203, align 1, !dbg !1342, !tbaa !984
  br label %211, !dbg !1342

211:                                              ; preds = %198, %207, %209
  store i1 true, ptr @print_element.printed, align 1, !dbg !1343
  %212 = load ptr, ptr @stdout, align 8, !dbg !1344, !tbaa !876
  %213 = tail call i32 @fputs_unlocked(ptr noundef nonnull @main.unknown, ptr noundef %212), !dbg !1344
  br label %214, !dbg !1345

214:                                              ; preds = %211, %194
  %215 = and i32 %63, 128, !dbg !1346
  %216 = icmp eq i32 %215, 0, !dbg !1346
  br i1 %216, label %233, label %217, !dbg !1348

217:                                              ; preds = %214
  call void @llvm.dbg.value(metadata ptr @.str.26, metadata !414, metadata !DIExpression()), !dbg !1349
  %218 = load i1, ptr @print_element.printed, align 1, !dbg !1351
  br i1 %218, label %219, label %230, !dbg !1352

219:                                              ; preds = %217
  call void @llvm.dbg.value(metadata i32 32, metadata !1235, metadata !DIExpression()), !dbg !1353
  %220 = load ptr, ptr @stdout, align 8, !dbg !1355, !tbaa !876
  %221 = getelementptr inbounds %struct._IO_FILE, ptr %220, i64 0, i32 5, !dbg !1355
  %222 = load ptr, ptr %221, align 8, !dbg !1355, !tbaa !1244
  %223 = getelementptr inbounds %struct._IO_FILE, ptr %220, i64 0, i32 6, !dbg !1355
  %224 = load ptr, ptr %223, align 8, !dbg !1355, !tbaa !1247
  %225 = icmp ult ptr %222, %224, !dbg !1355
  br i1 %225, label %228, label %226, !dbg !1355, !prof !1248

226:                                              ; preds = %219
  %227 = tail call i32 @__overflow(ptr noundef nonnull %220, i32 noundef 32) #37, !dbg !1355
  br label %230, !dbg !1355

228:                                              ; preds = %219
  %229 = getelementptr inbounds i8, ptr %222, i64 1, !dbg !1355
  store ptr %229, ptr %221, align 8, !dbg !1355, !tbaa !1244
  store i8 32, ptr %222, align 1, !dbg !1355, !tbaa !984
  br label %230, !dbg !1355

230:                                              ; preds = %217, %226, %228
  store i1 true, ptr @print_element.printed, align 1, !dbg !1356
  %231 = load ptr, ptr @stdout, align 8, !dbg !1357, !tbaa !876
  %232 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.26, ptr noundef %231), !dbg !1357
  br label %233, !dbg !1358

233:                                              ; preds = %230, %214
  call void @llvm.dbg.value(metadata i32 10, metadata !1235, metadata !DIExpression()), !dbg !1359
  %234 = load ptr, ptr @stdout, align 8, !dbg !1361, !tbaa !876
  %235 = getelementptr inbounds %struct._IO_FILE, ptr %234, i64 0, i32 5, !dbg !1361
  %236 = load ptr, ptr %235, align 8, !dbg !1361, !tbaa !1244
  %237 = getelementptr inbounds %struct._IO_FILE, ptr %234, i64 0, i32 6, !dbg !1361
  %238 = load ptr, ptr %237, align 8, !dbg !1361, !tbaa !1247
  %239 = icmp ult ptr %236, %238, !dbg !1361
  br i1 %239, label %242, label %240, !dbg !1361, !prof !1248

240:                                              ; preds = %233
  %241 = tail call i32 @__overflow(ptr noundef nonnull %234, i32 noundef 10) #37, !dbg !1361
  br label %244, !dbg !1361

242:                                              ; preds = %233
  %243 = getelementptr inbounds i8, ptr %236, i64 1, !dbg !1361
  store ptr %243, ptr %235, align 8, !dbg !1361, !tbaa !1244
  store i8 10, ptr %236, align 1, !dbg !1361, !tbaa !984
  br label %244, !dbg !1361

244:                                              ; preds = %240, %242
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #1

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
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1389, metadata !DIExpression()), !dbg !1390
  store ptr %0, ptr @file_name, align 8, !dbg !1391, !tbaa !876
  ret void, !dbg !1392
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #13 !dbg !1393 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1397, metadata !DIExpression()), !dbg !1398
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1399, !tbaa !1400
  ret void, !dbg !1402
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #11 !dbg !1403 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1408, !tbaa !876
  %2 = tail call i32 @close_stream(ptr noundef %1) #37, !dbg !1409
  %3 = icmp eq i32 %2, 0, !dbg !1410
  br i1 %3, label %22, label %4, !dbg !1411

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1412, !tbaa !1400, !range !1413, !noundef !1229
  %6 = icmp eq i8 %5, 0, !dbg !1412
  br i1 %6, label %11, label %7, !dbg !1414

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #40, !dbg !1415
  %9 = load i32, ptr %8, align 4, !dbg !1415, !tbaa !884
  %10 = icmp eq i32 %9, 32, !dbg !1416
  br i1 %10, label %22, label %11, !dbg !1417

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1.25, i32 noundef 5) #37, !dbg !1418
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1405, metadata !DIExpression()), !dbg !1419
  %13 = load ptr, ptr @file_name, align 8, !dbg !1420, !tbaa !876
  %14 = icmp eq ptr %13, null, !dbg !1420
  %15 = tail call ptr @__errno_location() #40, !dbg !1422
  %16 = load i32, ptr %15, align 4, !dbg !1422, !tbaa !884
  br i1 %14, label %19, label %17, !dbg !1423

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #37, !dbg !1424
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.26, ptr noundef %18, ptr noundef %12) #37, !dbg !1424
  br label %20, !dbg !1424

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.27, ptr noundef %12) #37, !dbg !1425
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1426, !tbaa !884
  tail call void @_exit(i32 noundef %21) #39, !dbg !1427
  unreachable, !dbg !1427

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1428, !tbaa !876
  %24 = tail call i32 @close_stream(ptr noundef %23) #37, !dbg !1430
  %25 = icmp eq i32 %24, 0, !dbg !1431
  br i1 %25, label %28, label %26, !dbg !1432

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1433, !tbaa !884
  tail call void @_exit(i32 noundef %27) #39, !dbg !1434
  unreachable, !dbg !1434

28:                                               ; preds = %22
  ret void, !dbg !1435
}

; Function Attrs: noreturn
declare !dbg !1436 void @_exit(i32 noundef) local_unnamed_addr #14

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #15 !dbg !1438 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1442, metadata !DIExpression()), !dbg !1446
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1443, metadata !DIExpression()), !dbg !1446
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1444, metadata !DIExpression()), !dbg !1446
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1445, metadata !DIExpression()), !dbg !1446
  tail call fastcc void @flush_stdout(), !dbg !1447
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1448, !tbaa !876
  %6 = icmp eq ptr %5, null, !dbg !1448
  br i1 %6, label %8, label %7, !dbg !1450

7:                                                ; preds = %4
  tail call void %5() #37, !dbg !1451
  br label %12, !dbg !1451

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1452, !tbaa !876
  %10 = tail call ptr @getprogname() #38, !dbg !1452
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.80, ptr noundef %10) #37, !dbg !1452
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1454
  ret void, !dbg !1455
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #11 !dbg !1456 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1458, metadata !DIExpression()), !dbg !1459
  call void @llvm.dbg.value(metadata i32 1, metadata !1460, metadata !DIExpression()), !dbg !1463
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #37, !dbg !1466
  %2 = icmp slt i32 %1, 0, !dbg !1467
  br i1 %2, label %6, label %3, !dbg !1468

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1469, !tbaa !876
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #37, !dbg !1469
  br label %6, !dbg !1469

6:                                                ; preds = %3, %0
  ret void, !dbg !1470
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #11 !dbg !1471 {
  %5 = alloca [1024 x i8], align 16, !DIAssignID !1477
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1473, metadata !DIExpression()), !dbg !1478
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1474, metadata !DIExpression()), !dbg !1478
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1475, metadata !DIExpression()), !dbg !1478
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1476, metadata !DIExpression()), !dbg !1478
  %6 = load ptr, ptr @stderr, align 8, !dbg !1479, !tbaa !876
  call void @llvm.dbg.value(metadata ptr %6, metadata !1480, metadata !DIExpression()), !dbg !1522
  call void @llvm.dbg.value(metadata ptr %2, metadata !1520, metadata !DIExpression()), !dbg !1522
  call void @llvm.dbg.value(metadata ptr %3, metadata !1521, metadata !DIExpression()), !dbg !1522
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #37, !dbg !1524
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1525, !tbaa !884
  %9 = add i32 %8, 1, !dbg !1525
  store i32 %9, ptr @error_message_count, align 4, !dbg !1525, !tbaa !884
  %10 = icmp eq i32 %1, 0, !dbg !1526
  br i1 %10, label %20, label %11, !dbg !1528

11:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1529, metadata !DIExpression(), metadata !1477, metadata ptr %5, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.value(metadata i32 %1, metadata !1532, metadata !DIExpression()), !dbg !1537
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #37, !dbg !1539
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #37, !dbg !1540
  call void @llvm.dbg.value(metadata ptr %12, metadata !1533, metadata !DIExpression()), !dbg !1537
  %13 = icmp eq ptr %12, null, !dbg !1541
  br i1 %13, label %14, label %16, !dbg !1543

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.81, ptr noundef nonnull @.str.5.82, i32 noundef 5) #37, !dbg !1544
  call void @llvm.dbg.value(metadata ptr %15, metadata !1533, metadata !DIExpression()), !dbg !1537
  br label %16, !dbg !1545

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1537
  call void @llvm.dbg.value(metadata ptr %17, metadata !1533, metadata !DIExpression()), !dbg !1537
  %18 = load ptr, ptr @stderr, align 8, !dbg !1546, !tbaa !876
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.83, ptr noundef %17) #37, !dbg !1546
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #37, !dbg !1547
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
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #37, !dbg !1558
  br label %31, !dbg !1558

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1558
  store ptr %30, ptr %22, align 8, !dbg !1558, !tbaa !1244
  store i8 10, ptr %23, align 1, !dbg !1558, !tbaa !984
  br label %31, !dbg !1558

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !1559, !tbaa !876
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #37, !dbg !1559
  %34 = icmp eq i32 %0, 0, !dbg !1560
  br i1 %34, label %36, label %35, !dbg !1562

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #39, !dbg !1563
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
  %4 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1591
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1585, metadata !DIExpression(), metadata !1591, metadata ptr %4, metadata !DIExpression()), !dbg !1592
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1582, metadata !DIExpression()), !dbg !1592
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1583, metadata !DIExpression()), !dbg !1592
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1584, metadata !DIExpression()), !dbg !1592
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #37, !dbg !1593
  call void @llvm.va_start(ptr nonnull %4), !dbg !1594
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #42, !dbg !1595
  call void @llvm.va_end(ptr nonnull %4), !dbg !1596
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #37, !dbg !1597
  ret void, !dbg !1597
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #15 !dbg !477 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !488, metadata !DIExpression()), !dbg !1598
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !489, metadata !DIExpression()), !dbg !1598
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !490, metadata !DIExpression()), !dbg !1598
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !491, metadata !DIExpression()), !dbg !1598
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !492, metadata !DIExpression()), !dbg !1598
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !493, metadata !DIExpression()), !dbg !1598
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !1599, !tbaa !884
  %8 = icmp eq i32 %7, 0, !dbg !1599
  br i1 %8, label %23, label %9, !dbg !1601

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1602, !tbaa !884
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
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1612
  %21 = icmp eq i32 %20, 0, !dbg !1613
  br i1 %21, label %36, label %22, !dbg !1614

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1615, !tbaa !876
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1616, !tbaa !884
  br label %23, !dbg !1617

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !1618
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !1619, !tbaa !876
  %25 = icmp eq ptr %24, null, !dbg !1619
  br i1 %25, label %27, label %26, !dbg !1621

26:                                               ; preds = %23
  tail call void %24() #37, !dbg !1622
  br label %31, !dbg !1622

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !1623, !tbaa !876
  %29 = tail call ptr @getprogname() #38, !dbg !1623
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.86, ptr noundef %29) #37, !dbg !1623
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !1625, !tbaa !876
  %33 = icmp eq ptr %2, null, !dbg !1625
  %34 = select i1 %33, ptr @.str.3.87, ptr @.str.2.88, !dbg !1625
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #37, !dbg !1625
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !1626
  br label %36, !dbg !1627

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !1627
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #11 !dbg !1628 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1638
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1637, metadata !DIExpression(), metadata !1638, metadata ptr %6, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1632, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1633, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1634, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1635, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1636, metadata !DIExpression()), !dbg !1639
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #37, !dbg !1640
  call void @llvm.va_start(ptr nonnull %6), !dbg !1641
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #42, !dbg !1642
  call void @llvm.va_end(ptr nonnull %6), !dbg !1643
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #37, !dbg !1644
  ret void, !dbg !1644
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #17 !dbg !1645 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1648, !tbaa !876
  ret ptr %1, !dbg !1649
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #18 !dbg !1650 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1652, metadata !DIExpression()), !dbg !1655
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #38, !dbg !1656
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1653, metadata !DIExpression()), !dbg !1655
  %3 = icmp eq ptr %2, null, !dbg !1657
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1657
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1657
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1654, metadata !DIExpression()), !dbg !1655
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
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1652, metadata !DIExpression()), !dbg !1655
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.98, i64 noundef 3) #38, !dbg !1675
  %16 = icmp eq i32 %15, 0, !dbg !1678
  %17 = select i1 %16, i64 3, i64 0, !dbg !1679
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !1679
  br label %19, !dbg !1679

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1655
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1654, metadata !DIExpression()), !dbg !1655
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !1652, metadata !DIExpression()), !dbg !1655
  store ptr %20, ptr @program_name, align 8, !dbg !1680, !tbaa !876
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1681, !tbaa !876
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1682, !tbaa !876
  ret void, !dbg !1683
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1684 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #11 !dbg !530 {
  %3 = alloca i32, align 4, !DIAssignID !1685
  call void @llvm.dbg.assign(metadata i1 undef, metadata !540, metadata !DIExpression(), metadata !1685, metadata ptr %3, metadata !DIExpression()), !dbg !1686
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1687
  call void @llvm.dbg.assign(metadata i1 undef, metadata !545, metadata !DIExpression(), metadata !1687, metadata ptr %4, metadata !DIExpression()), !dbg !1686
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !537, metadata !DIExpression()), !dbg !1686
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !538, metadata !DIExpression()), !dbg !1686
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #37, !dbg !1688
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !539, metadata !DIExpression()), !dbg !1686
  %6 = icmp eq ptr %5, %0, !dbg !1689
  br i1 %6, label %7, label %14, !dbg !1691

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #37, !dbg !1692
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #37, !dbg !1693
  call void @llvm.dbg.value(metadata ptr %4, metadata !1694, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata ptr %4, metadata !1703, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.value(metadata i32 0, metadata !1709, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.value(metadata i64 8, metadata !1710, metadata !DIExpression()), !dbg !1711
  store i64 0, ptr %4, align 8, !dbg !1713
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #37, !dbg !1714
  %9 = icmp eq i64 %8, 2, !dbg !1716
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1717
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1686
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #37, !dbg !1718
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #37, !dbg !1718
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1686
  ret ptr %15, !dbg !1718
}

; Function Attrs: nounwind
declare !dbg !1719 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #11 !dbg !1725 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1730, metadata !DIExpression()), !dbg !1733
  %2 = tail call ptr @__errno_location() #40, !dbg !1734
  %3 = load i32, ptr %2, align 4, !dbg !1734, !tbaa !884
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1731, metadata !DIExpression()), !dbg !1733
  %4 = icmp eq ptr %0, null, !dbg !1735
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1735
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #43, !dbg !1736
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1732, metadata !DIExpression()), !dbg !1733
  store i32 %3, ptr %2, align 4, !dbg !1737, !tbaa !884
  ret ptr %6, !dbg !1738
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #19 !dbg !1739 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1745, metadata !DIExpression()), !dbg !1746
  %2 = icmp eq ptr %0, null, !dbg !1747
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1747
  %4 = load i32, ptr %3, align 8, !dbg !1748, !tbaa !1749
  ret i32 %4, !dbg !1751
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #20 !dbg !1752 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1756, metadata !DIExpression()), !dbg !1758
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1757, metadata !DIExpression()), !dbg !1758
  %3 = icmp eq ptr %0, null, !dbg !1759
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1759
  store i32 %1, ptr %4, align 8, !dbg !1760, !tbaa !1749
  ret void, !dbg !1761
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #21 !dbg !1762 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1766, metadata !DIExpression()), !dbg !1774
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1767, metadata !DIExpression()), !dbg !1774
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1768, metadata !DIExpression()), !dbg !1774
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1769, metadata !DIExpression()), !dbg !1774
  %4 = icmp eq ptr %0, null, !dbg !1775
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1775
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1776
  %7 = lshr i8 %1, 5, !dbg !1777
  %8 = zext nneg i8 %7 to i64, !dbg !1777
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1778
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1770, metadata !DIExpression()), !dbg !1774
  %10 = and i8 %1, 31, !dbg !1779
  %11 = zext nneg i8 %10 to i32, !dbg !1779
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1772, metadata !DIExpression()), !dbg !1774
  %12 = load i32, ptr %9, align 4, !dbg !1780, !tbaa !884
  %13 = lshr i32 %12, %11, !dbg !1781
  %14 = and i32 %13, 1, !dbg !1782
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !1773, metadata !DIExpression()), !dbg !1774
  %15 = xor i32 %13, %2, !dbg !1783
  %16 = and i32 %15, 1, !dbg !1783
  %17 = shl nuw i32 %16, %11, !dbg !1784
  %18 = xor i32 %17, %12, !dbg !1785
  store i32 %18, ptr %9, align 4, !dbg !1785, !tbaa !884
  ret i32 %14, !dbg !1786
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1787 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1791, metadata !DIExpression()), !dbg !1794
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1792, metadata !DIExpression()), !dbg !1794
  %3 = icmp eq ptr %0, null, !dbg !1795
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1797
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1791, metadata !DIExpression()), !dbg !1794
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1798
  %6 = load i32, ptr %5, align 4, !dbg !1798, !tbaa !1799
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1793, metadata !DIExpression()), !dbg !1794
  store i32 %1, ptr %5, align 4, !dbg !1800, !tbaa !1799
  ret i32 %6, !dbg !1801
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #11 !dbg !1802 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1806, metadata !DIExpression()), !dbg !1809
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1807, metadata !DIExpression()), !dbg !1809
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1808, metadata !DIExpression()), !dbg !1809
  %4 = icmp eq ptr %0, null, !dbg !1810
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1812
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1806, metadata !DIExpression()), !dbg !1809
  store i32 10, ptr %5, align 8, !dbg !1813, !tbaa !1749
  %6 = icmp ne ptr %1, null, !dbg !1814
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1816
  br i1 %8, label %10, label %9, !dbg !1816

9:                                                ; preds = %3
  tail call void @abort() #39, !dbg !1817
  unreachable, !dbg !1817

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1818
  store ptr %1, ptr %11, align 8, !dbg !1819, !tbaa !1820
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1821
  store ptr %2, ptr %12, align 8, !dbg !1822, !tbaa !1823
  ret void, !dbg !1824
}

; Function Attrs: noreturn nounwind
declare !dbg !1825 void @abort() local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #11 !dbg !1826 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1830, metadata !DIExpression()), !dbg !1838
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1831, metadata !DIExpression()), !dbg !1838
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1832, metadata !DIExpression()), !dbg !1838
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1833, metadata !DIExpression()), !dbg !1838
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1834, metadata !DIExpression()), !dbg !1838
  %6 = icmp eq ptr %4, null, !dbg !1839
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1839
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1835, metadata !DIExpression()), !dbg !1838
  %8 = tail call ptr @__errno_location() #40, !dbg !1840
  %9 = load i32, ptr %8, align 4, !dbg !1840, !tbaa !884
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1836, metadata !DIExpression()), !dbg !1838
  %10 = load i32, ptr %7, align 8, !dbg !1841, !tbaa !1749
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1842
  %12 = load i32, ptr %11, align 4, !dbg !1842, !tbaa !1799
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1843
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1844
  %15 = load ptr, ptr %14, align 8, !dbg !1844, !tbaa !1820
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1845
  %17 = load ptr, ptr %16, align 8, !dbg !1845, !tbaa !1823
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1846
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !1837, metadata !DIExpression()), !dbg !1838
  store i32 %9, ptr %8, align 4, !dbg !1847, !tbaa !884
  ret i64 %18, !dbg !1848
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #11 !dbg !1849 {
  %10 = alloca i32, align 4, !DIAssignID !1917
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1918
  %12 = alloca i32, align 4, !DIAssignID !1919
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1920
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1921
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1895, metadata !DIExpression(), metadata !1921, metadata ptr %14, metadata !DIExpression()), !dbg !1922
  %15 = alloca i32, align 4, !DIAssignID !1923
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1898, metadata !DIExpression(), metadata !1923, metadata ptr %15, metadata !DIExpression()), !dbg !1924
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1855, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1856, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1857, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1858, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1859, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1860, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1861, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1862, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1863, metadata !DIExpression()), !dbg !1925
  %16 = tail call i64 @__ctype_get_mb_cur_max() #37, !dbg !1926
  %17 = icmp eq i64 %16, 1, !dbg !1927
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !1864, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1925
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1865, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1866, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1867, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1868, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1869, metadata !DIExpression()), !dbg !1925
  %18 = trunc i32 %5 to i8, !dbg !1928
  %19 = lshr i8 %18, 1, !dbg !1928
  %20 = and i8 %19, 1, !dbg !1928
  tail call void @llvm.dbg.value(metadata i8 %20, metadata !1870, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1871, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1872, metadata !DIExpression()), !dbg !1925
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !1929

28:                                               ; preds = %627, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %627 ]
  %30 = phi ptr [ %7, %9 ], [ %116, %627 ]
  %31 = phi ptr [ %8, %9 ], [ %117, %627 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %627 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %627 ], !dbg !1930
  %34 = phi ptr [ null, %9 ], [ %119, %627 ], !dbg !1931
  %35 = phi i64 [ 0, %9 ], [ %120, %627 ], !dbg !1932
  %36 = phi i8 [ 0, %9 ], [ %121, %627 ], !dbg !1933
  %37 = phi i8 [ %20, %9 ], [ %122, %627 ], !dbg !1925
  %38 = phi i8 [ 0, %9 ], [ %142, %627 ], !dbg !1934
  %39 = phi i8 [ 1, %9 ], [ %143, %627 ], !dbg !1935
  %40 = phi i64 [ %1, %9 ], [ %141, %627 ]
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !1856, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i8 %39, metadata !1872, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i8 %38, metadata !1871, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !1870, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i8 %36, metadata !1869, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !1868, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata ptr %34, metadata !1867, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !1866, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1865, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !1858, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !1863, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !1862, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !1859, metadata !DIExpression()), !dbg !1925
  call void @llvm.dbg.label(metadata !1873), !dbg !1936
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1874, metadata !DIExpression()), !dbg !1925
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
  ], !dbg !1937

41:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1870, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1859, metadata !DIExpression()), !dbg !1925
  br label %114, !dbg !1938

42:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !1870, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1859, metadata !DIExpression()), !dbg !1925
  %43 = and i8 %37, 1, !dbg !1939
  %44 = icmp eq i8 %43, 0, !dbg !1939
  br i1 %44, label %45, label %114, !dbg !1938

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1941
  br i1 %46, label %114, label %47, !dbg !1944

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !1941, !tbaa !984
  br label %114, !dbg !1941

48:                                               ; preds = %28, %28
  call void @llvm.dbg.assign(metadata i1 undef, metadata !646, metadata !DIExpression(), metadata !1919, metadata ptr %12, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.assign(metadata i1 undef, metadata !647, metadata !DIExpression(), metadata !1920, metadata ptr %13, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata ptr @.str.11.111, metadata !643, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i32 %29, metadata !644, metadata !DIExpression()), !dbg !1945
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.112, ptr noundef nonnull @.str.11.111, i32 noundef 5) #37, !dbg !1949
  call void @llvm.dbg.value(metadata ptr %49, metadata !645, metadata !DIExpression()), !dbg !1945
  %50 = icmp eq ptr %49, @.str.11.111, !dbg !1950
  br i1 %50, label %51, label %60, !dbg !1952

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #37, !dbg !1953
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #37, !dbg !1954
  call void @llvm.dbg.value(metadata ptr %13, metadata !1955, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata ptr %13, metadata !1963, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i32 0, metadata !1966, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 8, metadata !1967, metadata !DIExpression()), !dbg !1968
  store i64 0, ptr %13, align 8, !dbg !1970
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #37, !dbg !1971
  %53 = icmp eq i64 %52, 3, !dbg !1973
  %54 = load i32, ptr %12, align 4
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !1974
  %57 = icmp eq i32 %29, 9, !dbg !1974
  %58 = select i1 %57, ptr @.str.10.113, ptr @.str.12.114, !dbg !1974
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !1974
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #37, !dbg !1975
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #37, !dbg !1975
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !1945
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !1862, metadata !DIExpression()), !dbg !1925
  call void @llvm.dbg.assign(metadata i1 undef, metadata !646, metadata !DIExpression(), metadata !1917, metadata ptr %10, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.assign(metadata i1 undef, metadata !647, metadata !DIExpression(), metadata !1918, metadata ptr %11, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata ptr @.str.12.114, metadata !643, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i32 %29, metadata !644, metadata !DIExpression()), !dbg !1976
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.112, ptr noundef nonnull @.str.12.114, i32 noundef 5) #37, !dbg !1978
  call void @llvm.dbg.value(metadata ptr %62, metadata !645, metadata !DIExpression()), !dbg !1976
  %63 = icmp eq ptr %62, @.str.12.114, !dbg !1979
  br i1 %63, label %64, label %73, !dbg !1980

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #37, !dbg !1981
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #37, !dbg !1982
  call void @llvm.dbg.value(metadata ptr %11, metadata !1955, metadata !DIExpression()), !dbg !1983
  call void @llvm.dbg.value(metadata ptr %11, metadata !1963, metadata !DIExpression()), !dbg !1985
  call void @llvm.dbg.value(metadata i32 0, metadata !1966, metadata !DIExpression()), !dbg !1985
  call void @llvm.dbg.value(metadata i64 8, metadata !1967, metadata !DIExpression()), !dbg !1985
  store i64 0, ptr %11, align 8, !dbg !1987
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #37, !dbg !1988
  %66 = icmp eq i64 %65, 3, !dbg !1989
  %67 = load i32, ptr %10, align 4
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !1990
  %70 = icmp eq i32 %29, 9, !dbg !1990
  %71 = select i1 %70, ptr @.str.10.113, ptr @.str.12.114, !dbg !1990
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !1990
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #37, !dbg !1991
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #37, !dbg !1991
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !1863, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !1862, metadata !DIExpression()), !dbg !1925
  %76 = and i8 %37, 1, !dbg !1992
  %77 = icmp eq i8 %76, 0, !dbg !1992
  br i1 %77, label %78, label %93, !dbg !1993

78:                                               ; preds = %73
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !1875, metadata !DIExpression()), !dbg !1994
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1865, metadata !DIExpression()), !dbg !1925
  %79 = load i8, ptr %74, align 1, !dbg !1995, !tbaa !984
  %80 = icmp eq i8 %79, 0, !dbg !1997
  br i1 %80, label %93, label %81, !dbg !1997

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  tail call void @llvm.dbg.value(metadata ptr %83, metadata !1875, metadata !DIExpression()), !dbg !1994
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !1865, metadata !DIExpression()), !dbg !1925
  %85 = icmp ult i64 %84, %40, !dbg !1998
  br i1 %85, label %86, label %88, !dbg !2001

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !1998
  store i8 %82, ptr %87, align 1, !dbg !1998, !tbaa !984
  br label %88, !dbg !1998

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !2001
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !1865, metadata !DIExpression()), !dbg !1925
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !2002
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !1875, metadata !DIExpression()), !dbg !1994
  %91 = load i8, ptr %90, align 1, !dbg !1995, !tbaa !984
  %92 = icmp eq i8 %91, 0, !dbg !1997
  br i1 %92, label %93, label %81, !dbg !1997, !llvm.loop !2003

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !2005
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !1865, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1869, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !1867, metadata !DIExpression()), !dbg !1925
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #38, !dbg !2006
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !1868, metadata !DIExpression()), !dbg !1925
  br label %114, !dbg !2007

96:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1869, metadata !DIExpression()), !dbg !1925
  br label %98, !dbg !2008

97:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 undef, metadata !1869, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1870, metadata !DIExpression()), !dbg !1925
  br label %98, !dbg !2009

98:                                               ; preds = %96, %28, %97
  %99 = phi i8 [ %36, %28 ], [ 1, %96 ], [ %36, %97 ], !dbg !1933
  %100 = phi i8 [ %37, %28 ], [ 1, %96 ], [ 1, %97 ], !dbg !1925
  tail call void @llvm.dbg.value(metadata i8 %100, metadata !1870, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i8 %99, metadata !1869, metadata !DIExpression()), !dbg !1925
  %101 = and i8 %100, 1, !dbg !2010
  %102 = icmp eq i8 %101, 0, !dbg !2010
  %103 = select i1 %102, i8 1, i8 %99, !dbg !2012
  br label %104, !dbg !2012

104:                                              ; preds = %98, %28
  %105 = phi i8 [ %36, %28 ], [ %103, %98 ], !dbg !1925
  %106 = phi i8 [ %37, %28 ], [ %100, %98 ], !dbg !1928
  tail call void @llvm.dbg.value(metadata i8 %106, metadata !1870, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i8 %105, metadata !1869, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1859, metadata !DIExpression()), !dbg !1925
  %107 = and i8 %106, 1, !dbg !2013
  %108 = icmp eq i8 %107, 0, !dbg !2013
  br i1 %108, label %109, label %114, !dbg !2015

109:                                              ; preds = %104
  %110 = icmp eq i64 %40, 0, !dbg !2016
  br i1 %110, label %114, label %111, !dbg !2019

111:                                              ; preds = %109
  store i8 39, ptr %0, align 1, !dbg !2016, !tbaa !984
  br label %114, !dbg !2016

112:                                              ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1870, metadata !DIExpression()), !dbg !1925
  br label %114, !dbg !2020

113:                                              ; preds = %28
  call void @abort() #39, !dbg !2021
  unreachable, !dbg !2021

114:                                              ; preds = %41, %104, %111, %109, %28, %42, %47, %45, %112, %93
  %115 = phi i32 [ 0, %112 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %109 ], [ 2, %111 ], [ 2, %104 ], [ 5, %41 ]
  %116 = phi ptr [ %30, %112 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %109 ], [ %30, %111 ], [ %30, %104 ], [ %30, %41 ]
  %117 = phi ptr [ %31, %112 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %109 ], [ %31, %111 ], [ %31, %104 ], [ %31, %41 ]
  %118 = phi i64 [ 0, %112 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %109 ], [ 1, %111 ], [ 0, %104 ], [ 0, %41 ], !dbg !2005
  %119 = phi ptr [ %34, %112 ], [ %75, %93 ], [ @.str.10.113, %45 ], [ @.str.10.113, %47 ], [ @.str.10.113, %42 ], [ %34, %28 ], [ @.str.12.114, %109 ], [ @.str.12.114, %111 ], [ @.str.12.114, %104 ], [ @.str.10.113, %41 ], !dbg !1925
  %120 = phi i64 [ %35, %112 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %109 ], [ 1, %111 ], [ 1, %104 ], [ 1, %41 ], !dbg !1925
  %121 = phi i8 [ %36, %112 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %105, %109 ], [ %105, %111 ], [ %105, %104 ], [ 1, %41 ], !dbg !1925
  %122 = phi i8 [ 0, %112 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %106, %109 ], [ %106, %111 ], [ %106, %104 ], [ 1, %41 ], !dbg !1925
  tail call void @llvm.dbg.value(metadata i8 %122, metadata !1870, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i8 %121, metadata !1869, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i64 %120, metadata !1868, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !1867, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !1865, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata ptr %117, metadata !1863, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata ptr %116, metadata !1862, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i32 %115, metadata !1859, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1880, metadata !DIExpression()), !dbg !2022
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
  br label %138, !dbg !2023

138:                                              ; preds = %602, %114
  %139 = phi i64 [ %32, %114 ], [ %603, %602 ]
  %140 = phi i64 [ %118, %114 ], [ %604, %602 ], !dbg !2005
  %141 = phi i64 [ %33, %114 ], [ %605, %602 ], !dbg !1930
  %142 = phi i8 [ %38, %114 ], [ %606, %602 ], !dbg !1934
  %143 = phi i8 [ %39, %114 ], [ %607, %602 ], !dbg !1935
  %144 = phi i8 [ 0, %114 ], [ %608, %602 ], !dbg !2024
  %145 = phi i64 [ 0, %114 ], [ %611, %602 ], !dbg !2025
  %146 = phi i64 [ %40, %114 ], [ %610, %602 ]
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !1856, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !1880, metadata !DIExpression()), !dbg !2022
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !1874, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !1872, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !1871, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !1866, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1865, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !1858, metadata !DIExpression()), !dbg !1925
  %147 = icmp eq i64 %139, -1, !dbg !2026
  br i1 %147, label %148, label %152, !dbg !2027

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2028
  %150 = load i8, ptr %149, align 1, !dbg !2028, !tbaa !984
  %151 = icmp eq i8 %150, 0, !dbg !2029
  br i1 %151, label %612, label %154, !dbg !2030

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !2031
  br i1 %153, label %612, label %154, !dbg !2030

154:                                              ; preds = %148, %152
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1882, metadata !DIExpression()), !dbg !2032
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1885, metadata !DIExpression()), !dbg !2032
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1886, metadata !DIExpression()), !dbg !2032
  br i1 %128, label %155, label %170, !dbg !2033

155:                                              ; preds = %154
  %156 = add i64 %145, %120, !dbg !2035
  %157 = select i1 %147, i1 %129, i1 false, !dbg !2036
  br i1 %157, label %158, label %160, !dbg !2036

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !2037
  tail call void @llvm.dbg.value(metadata i64 %159, metadata !1858, metadata !DIExpression()), !dbg !1925
  br label %160, !dbg !2038

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !2038
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !1858, metadata !DIExpression()), !dbg !1925
  %162 = icmp ugt i64 %156, %161, !dbg !2039
  br i1 %162, label %170, label %163, !dbg !2040

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2041
  call void @llvm.dbg.value(metadata ptr %164, metadata !2042, metadata !DIExpression()), !dbg !2047
  call void @llvm.dbg.value(metadata ptr %119, metadata !2045, metadata !DIExpression()), !dbg !2047
  call void @llvm.dbg.value(metadata i64 %120, metadata !2046, metadata !DIExpression()), !dbg !2047
  %165 = call i32 @bcmp(ptr %164, ptr %119, i64 %120), !dbg !2049
  %166 = icmp ne i32 %165, 0, !dbg !2050
  %167 = select i1 %166, i1 true, i1 %131, !dbg !2051
  %168 = xor i1 %166, true, !dbg !2051
  %169 = zext i1 %168 to i8, !dbg !2051
  br i1 %167, label %170, label %666, !dbg !2051

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !2032
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !2032
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !1882, metadata !DIExpression()), !dbg !2032
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !1858, metadata !DIExpression()), !dbg !1925
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2052
  %175 = load i8, ptr %174, align 1, !dbg !2052, !tbaa !984
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !1887, metadata !DIExpression()), !dbg !2032
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
  ], !dbg !2053

176:                                              ; preds = %170
  br i1 %124, label %177, label %225, !dbg !2054

177:                                              ; preds = %176
  br i1 %131, label %178, label %659, !dbg !2055

178:                                              ; preds = %177
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1885, metadata !DIExpression()), !dbg !2032
  %179 = and i8 %144, 1, !dbg !2059
  %180 = icmp eq i8 %179, 0, !dbg !2059
  %181 = select i1 %132, i1 %180, i1 false, !dbg !2059
  br i1 %181, label %182, label %198, !dbg !2059

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !2061
  br i1 %183, label %184, label %186, !dbg !2065

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2061
  store i8 39, ptr %185, align 1, !dbg !2061, !tbaa !984
  br label %186, !dbg !2061

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !2065
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !1865, metadata !DIExpression()), !dbg !1925
  %188 = icmp ult i64 %187, %146, !dbg !2066
  br i1 %188, label %189, label %191, !dbg !2069

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !2066
  store i8 36, ptr %190, align 1, !dbg !2066, !tbaa !984
  br label %191, !dbg !2066

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !2069
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !1865, metadata !DIExpression()), !dbg !1925
  %193 = icmp ult i64 %192, %146, !dbg !2070
  br i1 %193, label %194, label %196, !dbg !2073

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !2070
  store i8 39, ptr %195, align 1, !dbg !2070, !tbaa !984
  br label %196, !dbg !2070

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !2073
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !1865, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1874, metadata !DIExpression()), !dbg !1925
  br label %198, !dbg !2074

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !1925
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !1925
  tail call void @llvm.dbg.value(metadata i8 %200, metadata !1874, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i64 %199, metadata !1865, metadata !DIExpression()), !dbg !1925
  %201 = icmp ult i64 %199, %146, !dbg !2075
  br i1 %201, label %202, label %204, !dbg !2078

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !2075
  store i8 92, ptr %203, align 1, !dbg !2075, !tbaa !984
  br label %204, !dbg !2075

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !2078
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !1865, metadata !DIExpression()), !dbg !1925
  br i1 %125, label %206, label %476, !dbg !2079

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !2081
  %208 = icmp ult i64 %207, %171, !dbg !2082
  br i1 %208, label %209, label %465, !dbg !2083

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !2084
  %211 = load i8, ptr %210, align 1, !dbg !2084, !tbaa !984
  %212 = add i8 %211, -48, !dbg !2085
  %213 = icmp ult i8 %212, 10, !dbg !2085
  br i1 %213, label %214, label %465, !dbg !2085

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !2086
  br i1 %215, label %216, label %218, !dbg !2090

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !2086
  store i8 48, ptr %217, align 1, !dbg !2086, !tbaa !984
  br label %218, !dbg !2086

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !2090
  tail call void @llvm.dbg.value(metadata i64 %219, metadata !1865, metadata !DIExpression()), !dbg !1925
  %220 = icmp ult i64 %219, %146, !dbg !2091
  br i1 %220, label %221, label %223, !dbg !2094

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !2091
  store i8 48, ptr %222, align 1, !dbg !2091, !tbaa !984
  br label %223, !dbg !2091

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !2094
  tail call void @llvm.dbg.value(metadata i64 %224, metadata !1865, metadata !DIExpression()), !dbg !1925
  br label %465, !dbg !2095

225:                                              ; preds = %176
  br i1 %25, label %476, label %602, !dbg !2096

226:                                              ; preds = %170
  switch i32 %115, label %465 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !2097

227:                                              ; preds = %226
  br i1 %131, label %465, label %655, !dbg !2098

228:                                              ; preds = %226
  br i1 %23, label %465, label %229, !dbg !2100

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !2102
  %231 = icmp ult i64 %230, %171, !dbg !2103
  br i1 %231, label %232, label %465, !dbg !2104

232:                                              ; preds = %229
  %233 = getelementptr i8, ptr %174, i64 1, !dbg !2105
  %234 = load i8, ptr %233, align 1, !dbg !2105, !tbaa !984
  %235 = icmp eq i8 %234, 63, !dbg !2106
  br i1 %235, label %236, label %465, !dbg !2107

236:                                              ; preds = %232
  %237 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !2108
  %238 = load i8, ptr %237, align 1, !dbg !2108, !tbaa !984
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
  ], !dbg !2109

239:                                              ; preds = %236, %236, %236, %236, %236, %236, %236, %236, %236
  br i1 %131, label %240, label %666, !dbg !2110

240:                                              ; preds = %239
  tail call void @llvm.dbg.value(metadata i8 %238, metadata !1887, metadata !DIExpression()), !dbg !2032
  tail call void @llvm.dbg.value(metadata i64 %230, metadata !1880, metadata !DIExpression()), !dbg !2022
  %241 = icmp ult i64 %140, %146, !dbg !2112
  br i1 %241, label %242, label %244, !dbg !2115

242:                                              ; preds = %240
  %243 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2112
  store i8 63, ptr %243, align 1, !dbg !2112, !tbaa !984
  br label %244, !dbg !2112

244:                                              ; preds = %242, %240
  %245 = add i64 %140, 1, !dbg !2115
  tail call void @llvm.dbg.value(metadata i64 %245, metadata !1865, metadata !DIExpression()), !dbg !1925
  %246 = icmp ult i64 %245, %146, !dbg !2116
  br i1 %246, label %247, label %249, !dbg !2119

247:                                              ; preds = %244
  %248 = getelementptr inbounds i8, ptr %0, i64 %245, !dbg !2116
  store i8 34, ptr %248, align 1, !dbg !2116, !tbaa !984
  br label %249, !dbg !2116

249:                                              ; preds = %247, %244
  %250 = add i64 %140, 2, !dbg !2119
  tail call void @llvm.dbg.value(metadata i64 %250, metadata !1865, metadata !DIExpression()), !dbg !1925
  %251 = icmp ult i64 %250, %146, !dbg !2120
  br i1 %251, label %252, label %254, !dbg !2123

252:                                              ; preds = %249
  %253 = getelementptr inbounds i8, ptr %0, i64 %250, !dbg !2120
  store i8 34, ptr %253, align 1, !dbg !2120, !tbaa !984
  br label %254, !dbg !2120

254:                                              ; preds = %252, %249
  %255 = add i64 %140, 3, !dbg !2123
  tail call void @llvm.dbg.value(metadata i64 %255, metadata !1865, metadata !DIExpression()), !dbg !1925
  %256 = icmp ult i64 %255, %146, !dbg !2124
  br i1 %256, label %257, label %259, !dbg !2127

257:                                              ; preds = %254
  %258 = getelementptr inbounds i8, ptr %0, i64 %255, !dbg !2124
  store i8 63, ptr %258, align 1, !dbg !2124, !tbaa !984
  br label %259, !dbg !2124

259:                                              ; preds = %257, %254
  %260 = add i64 %140, 4, !dbg !2127
  tail call void @llvm.dbg.value(metadata i64 %260, metadata !1865, metadata !DIExpression()), !dbg !1925
  br label %465, !dbg !2128

261:                                              ; preds = %170
  br label %272, !dbg !2129

262:                                              ; preds = %170
  br label %272, !dbg !2130

263:                                              ; preds = %170
  br label %270, !dbg !2131

264:                                              ; preds = %170
  br label %270, !dbg !2132

265:                                              ; preds = %170
  br label %272, !dbg !2133

266:                                              ; preds = %170
  br i1 %132, label %267, label %268, !dbg !2134

267:                                              ; preds = %266
  br i1 %131, label %558, label %655, !dbg !2135

268:                                              ; preds = %266
  br i1 %124, label %269, label %476, !dbg !2138

269:                                              ; preds = %268
  br i1 %135, label %558, label %520, !dbg !2140

270:                                              ; preds = %170, %264, %263
  %271 = phi i8 [ 116, %264 ], [ 114, %263 ], [ 110, %170 ], !dbg !2141
  call void @llvm.dbg.label(metadata !1888), !dbg !2142
  br i1 %133, label %272, label %655, !dbg !2143

272:                                              ; preds = %170, %270, %265, %262, %261
  %273 = phi i8 [ %271, %270 ], [ 118, %265 ], [ 102, %262 ], [ 98, %261 ], [ 97, %170 ], !dbg !2141
  call void @llvm.dbg.label(metadata !1891), !dbg !2145
  br i1 %124, label %520, label %476, !dbg !2146

274:                                              ; preds = %170, %170
  switch i64 %171, label %465 [
    i64 -1, label %275
    i64 1, label %278
  ], !dbg !2147

275:                                              ; preds = %274
  %276 = load i8, ptr %21, align 1, !dbg !2148, !tbaa !984
  %277 = icmp eq i8 %276, 0, !dbg !2150
  br i1 %277, label %278, label %465, !dbg !2151

278:                                              ; preds = %274, %275, %170, %170
  %279 = icmp eq i64 %145, 0, !dbg !2152
  br i1 %279, label %280, label %465, !dbg !2154

280:                                              ; preds = %278, %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1886, metadata !DIExpression()), !dbg !2032
  br label %281, !dbg !2155

281:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %280
  %282 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %280 ], !dbg !2032
  tail call void @llvm.dbg.value(metadata i8 %282, metadata !1886, metadata !DIExpression()), !dbg !2032
  br i1 %133, label %465, label %655, !dbg !2156

283:                                              ; preds = %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1871, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1886, metadata !DIExpression()), !dbg !2032
  br i1 %132, label %284, label %465, !dbg !2158

284:                                              ; preds = %283
  br i1 %131, label %285, label %655, !dbg !2159

285:                                              ; preds = %284
  %286 = icmp eq i64 %146, 0, !dbg !2162
  %287 = icmp ne i64 %141, 0
  %288 = select i1 %286, i1 true, i1 %287, !dbg !2164
  %289 = select i1 %288, i64 %141, i64 %146, !dbg !2164
  %290 = select i1 %288, i64 %146, i64 0, !dbg !2164
  tail call void @llvm.dbg.value(metadata i64 %290, metadata !1856, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i64 %289, metadata !1866, metadata !DIExpression()), !dbg !1925
  %291 = icmp ult i64 %140, %290, !dbg !2165
  br i1 %291, label %292, label %294, !dbg !2168

292:                                              ; preds = %285
  %293 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2165
  store i8 39, ptr %293, align 1, !dbg !2165, !tbaa !984
  br label %294, !dbg !2165

294:                                              ; preds = %292, %285
  %295 = add i64 %140, 1, !dbg !2168
  tail call void @llvm.dbg.value(metadata i64 %295, metadata !1865, metadata !DIExpression()), !dbg !1925
  %296 = icmp ult i64 %295, %290, !dbg !2169
  br i1 %296, label %297, label %299, !dbg !2172

297:                                              ; preds = %294
  %298 = getelementptr inbounds i8, ptr %0, i64 %295, !dbg !2169
  store i8 92, ptr %298, align 1, !dbg !2169, !tbaa !984
  br label %299, !dbg !2169

299:                                              ; preds = %297, %294
  %300 = add i64 %140, 2, !dbg !2172
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !1865, metadata !DIExpression()), !dbg !1925
  %301 = icmp ult i64 %300, %290, !dbg !2173
  br i1 %301, label %302, label %304, !dbg !2176

302:                                              ; preds = %299
  %303 = getelementptr inbounds i8, ptr %0, i64 %300, !dbg !2173
  store i8 39, ptr %303, align 1, !dbg !2173, !tbaa !984
  br label %304, !dbg !2173

304:                                              ; preds = %302, %299
  %305 = add i64 %140, 3, !dbg !2176
  tail call void @llvm.dbg.value(metadata i64 %305, metadata !1865, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1874, metadata !DIExpression()), !dbg !1925
  br label %465, !dbg !2177

306:                                              ; preds = %170
  br i1 %17, label %307, label %315, !dbg !2178

307:                                              ; preds = %306
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1892, metadata !DIExpression()), !dbg !2179
  %308 = tail call ptr @__ctype_b_loc() #40, !dbg !2180
  %309 = load ptr, ptr %308, align 8, !dbg !2180, !tbaa !876
  %310 = zext i8 %175 to i64
  %311 = getelementptr inbounds i16, ptr %309, i64 %310, !dbg !2180
  %312 = load i16, ptr %311, align 2, !dbg !2180, !tbaa !1009
  %313 = and i16 %312, 16384, !dbg !2182
  %314 = icmp ne i16 %313, 0, !dbg !2182
  tail call void @llvm.dbg.value(metadata i16 %312, metadata !1894, metadata !DIExpression(DW_OP_constu, 14, DW_OP_shr, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2179
  br label %355, !dbg !2183

315:                                              ; preds = %306
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #37, !dbg !2184
  call void @llvm.dbg.value(metadata ptr %14, metadata !1955, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.value(metadata ptr %14, metadata !1963, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i32 0, metadata !1966, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i64 8, metadata !1967, metadata !DIExpression()), !dbg !2187
  store i64 0, ptr %14, align 8, !dbg !2189
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1892, metadata !DIExpression()), !dbg !2179
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1894, metadata !DIExpression()), !dbg !2179
  %316 = icmp eq i64 %171, -1, !dbg !2190
  br i1 %316, label %317, label %319, !dbg !2192

317:                                              ; preds = %315
  %318 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !2193
  tail call void @llvm.dbg.value(metadata i64 %318, metadata !1858, metadata !DIExpression()), !dbg !1925
  br label %319, !dbg !2194

319:                                              ; preds = %315, %317
  %320 = phi i64 [ %318, %317 ], [ %171, %315 ], !dbg !2032
  tail call void @llvm.dbg.value(metadata i64 %320, metadata !1858, metadata !DIExpression()), !dbg !1925
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #37, !dbg !2195
  %321 = sub i64 %320, %145, !dbg !2196
  %322 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %321, ptr noundef nonnull %14) #37, !dbg !2197
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !1902, metadata !DIExpression()), !dbg !1924
  switch i64 %322, label %336 [
    i64 0, label %351
    i64 -1, label %325
    i64 -2, label %323
  ], !dbg !2198

323:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1892, metadata !DIExpression()), !dbg !2179
  %324 = icmp ult i64 %145, %320, !dbg !2199
  br i1 %324, label %326, label %351, !dbg !2201

325:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1894, metadata !DIExpression()), !dbg !2179
  br label %351, !dbg !2202

326:                                              ; preds = %323, %332
  %327 = phi i64 [ %334, %332 ], [ %145, %323 ]
  %328 = phi i64 [ %333, %332 ], [ 0, %323 ]
  tail call void @llvm.dbg.value(metadata i64 %328, metadata !1892, metadata !DIExpression()), !dbg !2179
  %329 = getelementptr inbounds i8, ptr %2, i64 %327, !dbg !2204
  %330 = load i8, ptr %329, align 1, !dbg !2204, !tbaa !984
  %331 = icmp eq i8 %330, 0, !dbg !2201
  br i1 %331, label %351, label %332, !dbg !2205

332:                                              ; preds = %326
  %333 = add i64 %328, 1, !dbg !2206
  tail call void @llvm.dbg.value(metadata i64 %333, metadata !1892, metadata !DIExpression()), !dbg !2179
  %334 = add i64 %333, %145, !dbg !2207
  %335 = icmp eq i64 %333, %321, !dbg !2199
  br i1 %335, label %351, label %326, !dbg !2201, !llvm.loop !2208

336:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1903, metadata !DIExpression()), !dbg !2209
  %337 = icmp ugt i64 %322, 1
  %338 = and i1 %134, %337, !dbg !2210
  %339 = and i1 %338, %132, !dbg !2210
  br i1 %339, label %340, label %347, !dbg !2210

340:                                              ; preds = %336, %344
  %341 = phi i64 [ %345, %344 ], [ 1, %336 ]
  tail call void @llvm.dbg.value(metadata i64 %341, metadata !1903, metadata !DIExpression()), !dbg !2209
  %342 = getelementptr i8, ptr %174, i64 %341, !dbg !2211
  %343 = load i8, ptr %342, align 1, !dbg !2211, !tbaa !984
  switch i8 %343, label %344 [
    i8 91, label %354
    i8 92, label %354
    i8 94, label %354
    i8 96, label %354
    i8 124, label %354
  ], !dbg !2213

344:                                              ; preds = %340
  %345 = add nuw i64 %341, 1, !dbg !2214
  tail call void @llvm.dbg.value(metadata i64 %345, metadata !1903, metadata !DIExpression()), !dbg !2209
  %346 = icmp eq i64 %345, %322, !dbg !2215
  br i1 %346, label %347, label %340, !dbg !2216, !llvm.loop !2217

347:                                              ; preds = %344, %336
  %348 = load i32, ptr %15, align 4, !dbg !2219, !tbaa !884
  call void @llvm.dbg.value(metadata i32 %348, metadata !2221, metadata !DIExpression()), !dbg !2229
  %349 = call i32 @iswprint(i32 noundef %348) #37, !dbg !2231
  %350 = icmp ne i32 %349, 0, !dbg !2232
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1894, metadata !DIExpression()), !dbg !2179
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !1892, metadata !DIExpression()), !dbg !2179
  br label %351, !dbg !2233

351:                                              ; preds = %326, %332, %323, %325, %347, %319
  %352 = phi i64 [ %322, %319 ], [ %322, %347 ], [ 0, %325 ], [ 0, %323 ], [ %328, %326 ], [ %321, %332 ]
  %353 = phi i1 [ true, %319 ], [ %350, %347 ], [ false, %325 ], [ false, %323 ], [ false, %332 ], [ false, %326 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1894, metadata !DIExpression()), !dbg !2179
  tail call void @llvm.dbg.value(metadata i64 %352, metadata !1892, metadata !DIExpression()), !dbg !2179
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !2234
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !2235
  br label %355

354:                                              ; preds = %340, %340, %340, %340, %340
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1894, metadata !DIExpression()), !dbg !2179
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1892, metadata !DIExpression()), !dbg !2179
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !2234
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !2235
  br label %655

355:                                              ; preds = %351, %307
  %356 = phi i64 [ %171, %307 ], [ %320, %351 ], !dbg !2032
  %357 = phi i64 [ 1, %307 ], [ %352, %351 ], !dbg !2236
  %358 = phi i1 [ %314, %307 ], [ %353, %351 ], !dbg !2236
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1894, metadata !DIExpression()), !dbg !2179
  tail call void @llvm.dbg.value(metadata i64 %357, metadata !1892, metadata !DIExpression()), !dbg !2179
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1858, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i1 %358, metadata !1886, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2032
  %359 = icmp ult i64 %357, 2, !dbg !2237
  %360 = select i1 %136, i1 true, i1 %358
  %361 = select i1 %359, i1 %360, i1 false, !dbg !2238
  br i1 %361, label %461, label %362, !dbg !2238

362:                                              ; preds = %355
  %363 = add i64 %357, %145, !dbg !2239
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !1911, metadata !DIExpression()), !dbg !2240
  br label %364, !dbg !2241

364:                                              ; preds = %457, %362
  %365 = phi i64 [ %140, %362 ], [ %458, %457 ], !dbg !1925
  %366 = phi i8 [ %144, %362 ], [ %453, %457 ], !dbg !2024
  %367 = phi i64 [ %145, %362 ], [ %432, %457 ], !dbg !2022
  %368 = phi i8 [ %173, %362 ], [ %429, %457 ], !dbg !2032
  %369 = phi i8 [ 0, %362 ], [ %430, %457 ], !dbg !2242
  %370 = phi i8 [ %175, %362 ], [ %460, %457 ], !dbg !2032
  tail call void @llvm.dbg.value(metadata i8 %370, metadata !1887, metadata !DIExpression()), !dbg !2032
  tail call void @llvm.dbg.value(metadata i8 %369, metadata !1885, metadata !DIExpression()), !dbg !2032
  tail call void @llvm.dbg.value(metadata i8 %368, metadata !1882, metadata !DIExpression()), !dbg !2032
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !1880, metadata !DIExpression()), !dbg !2022
  tail call void @llvm.dbg.value(metadata i8 %366, metadata !1874, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i64 %365, metadata !1865, metadata !DIExpression()), !dbg !1925
  br i1 %360, label %417, label %371, !dbg !2243

371:                                              ; preds = %364
  br i1 %131, label %372, label %659, !dbg !2248

372:                                              ; preds = %371
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1885, metadata !DIExpression()), !dbg !2032
  %373 = and i8 %366, 1, !dbg !2251
  %374 = icmp eq i8 %373, 0, !dbg !2251
  %375 = select i1 %132, i1 %374, i1 false, !dbg !2251
  br i1 %375, label %376, label %392, !dbg !2251

376:                                              ; preds = %372
  %377 = icmp ult i64 %365, %146, !dbg !2253
  br i1 %377, label %378, label %380, !dbg !2257

378:                                              ; preds = %376
  %379 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !2253
  store i8 39, ptr %379, align 1, !dbg !2253, !tbaa !984
  br label %380, !dbg !2253

380:                                              ; preds = %378, %376
  %381 = add i64 %365, 1, !dbg !2257
  tail call void @llvm.dbg.value(metadata i64 %381, metadata !1865, metadata !DIExpression()), !dbg !1925
  %382 = icmp ult i64 %381, %146, !dbg !2258
  br i1 %382, label %383, label %385, !dbg !2261

383:                                              ; preds = %380
  %384 = getelementptr inbounds i8, ptr %0, i64 %381, !dbg !2258
  store i8 36, ptr %384, align 1, !dbg !2258, !tbaa !984
  br label %385, !dbg !2258

385:                                              ; preds = %383, %380
  %386 = add i64 %365, 2, !dbg !2261
  tail call void @llvm.dbg.value(metadata i64 %386, metadata !1865, metadata !DIExpression()), !dbg !1925
  %387 = icmp ult i64 %386, %146, !dbg !2262
  br i1 %387, label %388, label %390, !dbg !2265

388:                                              ; preds = %385
  %389 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !2262
  store i8 39, ptr %389, align 1, !dbg !2262, !tbaa !984
  br label %390, !dbg !2262

390:                                              ; preds = %388, %385
  %391 = add i64 %365, 3, !dbg !2265
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !1865, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1874, metadata !DIExpression()), !dbg !1925
  br label %392, !dbg !2266

392:                                              ; preds = %372, %390
  %393 = phi i64 [ %391, %390 ], [ %365, %372 ], !dbg !1925
  %394 = phi i8 [ 1, %390 ], [ %366, %372 ], !dbg !1925
  tail call void @llvm.dbg.value(metadata i8 %394, metadata !1874, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i64 %393, metadata !1865, metadata !DIExpression()), !dbg !1925
  %395 = icmp ult i64 %393, %146, !dbg !2267
  br i1 %395, label %396, label %398, !dbg !2270

396:                                              ; preds = %392
  %397 = getelementptr inbounds i8, ptr %0, i64 %393, !dbg !2267
  store i8 92, ptr %397, align 1, !dbg !2267, !tbaa !984
  br label %398, !dbg !2267

398:                                              ; preds = %396, %392
  %399 = add i64 %393, 1, !dbg !2270
  tail call void @llvm.dbg.value(metadata i64 %399, metadata !1865, metadata !DIExpression()), !dbg !1925
  %400 = icmp ult i64 %399, %146, !dbg !2271
  br i1 %400, label %401, label %405, !dbg !2274

401:                                              ; preds = %398
  %402 = lshr i8 %370, 6
  %403 = or disjoint i8 %402, 48, !dbg !2271
  %404 = getelementptr inbounds i8, ptr %0, i64 %399, !dbg !2271
  store i8 %403, ptr %404, align 1, !dbg !2271, !tbaa !984
  br label %405, !dbg !2271

405:                                              ; preds = %401, %398
  %406 = add i64 %393, 2, !dbg !2274
  tail call void @llvm.dbg.value(metadata i64 %406, metadata !1865, metadata !DIExpression()), !dbg !1925
  %407 = icmp ult i64 %406, %146, !dbg !2275
  br i1 %407, label %408, label %413, !dbg !2278

408:                                              ; preds = %405
  %409 = lshr i8 %370, 3
  %410 = and i8 %409, 7, !dbg !2275
  %411 = or disjoint i8 %410, 48, !dbg !2275
  %412 = getelementptr inbounds i8, ptr %0, i64 %406, !dbg !2275
  store i8 %411, ptr %412, align 1, !dbg !2275, !tbaa !984
  br label %413, !dbg !2275

413:                                              ; preds = %408, %405
  %414 = add i64 %393, 3, !dbg !2278
  tail call void @llvm.dbg.value(metadata i64 %414, metadata !1865, metadata !DIExpression()), !dbg !1925
  %415 = and i8 %370, 7, !dbg !2279
  %416 = or disjoint i8 %415, 48, !dbg !2280
  tail call void @llvm.dbg.value(metadata i8 %416, metadata !1887, metadata !DIExpression()), !dbg !2032
  br label %426, !dbg !2281

417:                                              ; preds = %364
  %418 = and i8 %368, 1, !dbg !2282
  %419 = icmp eq i8 %418, 0, !dbg !2282
  br i1 %419, label %426, label %420, !dbg !2284

420:                                              ; preds = %417
  %421 = icmp ult i64 %365, %146, !dbg !2285
  br i1 %421, label %422, label %424, !dbg !2289

422:                                              ; preds = %420
  %423 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !2285
  store i8 92, ptr %423, align 1, !dbg !2285, !tbaa !984
  br label %424, !dbg !2285

424:                                              ; preds = %422, %420
  %425 = add i64 %365, 1, !dbg !2289
  tail call void @llvm.dbg.value(metadata i64 %425, metadata !1865, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1882, metadata !DIExpression()), !dbg !2032
  br label %426, !dbg !2290

426:                                              ; preds = %417, %424, %413
  %427 = phi i64 [ %425, %424 ], [ %365, %417 ], [ %414, %413 ], !dbg !1925
  %428 = phi i8 [ %366, %424 ], [ %366, %417 ], [ %394, %413 ], !dbg !2024
  %429 = phi i8 [ 0, %424 ], [ %368, %417 ], [ %368, %413 ], !dbg !2032
  %430 = phi i8 [ %369, %424 ], [ %369, %417 ], [ 1, %413 ], !dbg !2032
  %431 = phi i8 [ %370, %424 ], [ %370, %417 ], [ %416, %413 ], !dbg !2032
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !1887, metadata !DIExpression()), !dbg !2032
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !1885, metadata !DIExpression()), !dbg !2032
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !1882, metadata !DIExpression()), !dbg !2032
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !1874, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !1865, metadata !DIExpression()), !dbg !1925
  %432 = add i64 %367, 1, !dbg !2291
  %433 = icmp ugt i64 %363, %432, !dbg !2293
  br i1 %433, label %434, label %463, !dbg !2294

434:                                              ; preds = %426
  %435 = and i8 %428, 1, !dbg !2295
  %436 = icmp ne i8 %435, 0, !dbg !2295
  %437 = and i8 %430, 1, !dbg !2295
  %438 = icmp eq i8 %437, 0, !dbg !2295
  %439 = select i1 %436, i1 %438, i1 false, !dbg !2295
  br i1 %439, label %440, label %451, !dbg !2295

440:                                              ; preds = %434
  %441 = icmp ult i64 %427, %146, !dbg !2298
  br i1 %441, label %442, label %444, !dbg !2302

442:                                              ; preds = %440
  %443 = getelementptr inbounds i8, ptr %0, i64 %427, !dbg !2298
  store i8 39, ptr %443, align 1, !dbg !2298, !tbaa !984
  br label %444, !dbg !2298

444:                                              ; preds = %442, %440
  %445 = add i64 %427, 1, !dbg !2302
  tail call void @llvm.dbg.value(metadata i64 %445, metadata !1865, metadata !DIExpression()), !dbg !1925
  %446 = icmp ult i64 %445, %146, !dbg !2303
  br i1 %446, label %447, label %449, !dbg !2306

447:                                              ; preds = %444
  %448 = getelementptr inbounds i8, ptr %0, i64 %445, !dbg !2303
  store i8 39, ptr %448, align 1, !dbg !2303, !tbaa !984
  br label %449, !dbg !2303

449:                                              ; preds = %447, %444
  %450 = add i64 %427, 2, !dbg !2306
  tail call void @llvm.dbg.value(metadata i64 %450, metadata !1865, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1874, metadata !DIExpression()), !dbg !1925
  br label %451, !dbg !2307

451:                                              ; preds = %434, %449
  %452 = phi i64 [ %450, %449 ], [ %427, %434 ], !dbg !2308
  %453 = phi i8 [ 0, %449 ], [ %428, %434 ], !dbg !1925
  tail call void @llvm.dbg.value(metadata i8 %453, metadata !1874, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i64 %452, metadata !1865, metadata !DIExpression()), !dbg !1925
  %454 = icmp ult i64 %452, %146, !dbg !2309
  br i1 %454, label %455, label %457, !dbg !2312

455:                                              ; preds = %451
  %456 = getelementptr inbounds i8, ptr %0, i64 %452, !dbg !2309
  store i8 %431, ptr %456, align 1, !dbg !2309, !tbaa !984
  br label %457, !dbg !2309

457:                                              ; preds = %455, %451
  %458 = add i64 %452, 1, !dbg !2312
  tail call void @llvm.dbg.value(metadata i64 %458, metadata !1865, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i64 %432, metadata !1880, metadata !DIExpression()), !dbg !2022
  %459 = getelementptr inbounds i8, ptr %2, i64 %432, !dbg !2313
  %460 = load i8, ptr %459, align 1, !dbg !2313, !tbaa !984
  tail call void @llvm.dbg.value(metadata i8 %460, metadata !1887, metadata !DIExpression()), !dbg !2032
  br label %364, !dbg !2314, !llvm.loop !2315

461:                                              ; preds = %355
  %462 = zext i1 %358 to i8, !dbg !2032
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !1887, metadata !DIExpression()), !dbg !2032
  tail call void @llvm.dbg.value(metadata i8 %462, metadata !1886, metadata !DIExpression()), !dbg !2032
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1885, metadata !DIExpression()), !dbg !2032
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !1882, metadata !DIExpression()), !dbg !2032
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !1880, metadata !DIExpression()), !dbg !2022
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !1874, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1865, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1858, metadata !DIExpression()), !dbg !1925
  br label %465

463:                                              ; preds = %426
  %464 = zext i1 %358 to i8, !dbg !2032
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !1887, metadata !DIExpression()), !dbg !2032
  tail call void @llvm.dbg.value(metadata i8 %464, metadata !1886, metadata !DIExpression()), !dbg !2032
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !1885, metadata !DIExpression()), !dbg !2032
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !1882, metadata !DIExpression()), !dbg !2032
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !1880, metadata !DIExpression()), !dbg !2022
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !1874, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !1865, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1858, metadata !DIExpression()), !dbg !1925
  br label %558

465:                                              ; preds = %461, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %274, %206, %209, %223, %283, %304, %281, %278, %275, %226, %227, %259, %236, %232, %229, %228
  %466 = phi i64 [ %171, %304 ], [ %171, %283 ], [ %171, %281 ], [ %171, %278 ], [ -1, %275 ], [ %171, %226 ], [ %171, %236 ], [ %171, %259 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %274 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %356, %461 ], !dbg !2318
  %467 = phi i64 [ %305, %304 ], [ %140, %283 ], [ %140, %281 ], [ %140, %278 ], [ %140, %275 ], [ %140, %226 ], [ %140, %236 ], [ %260, %259 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %274 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %461 ], !dbg !1925
  %468 = phi i64 [ %289, %304 ], [ %141, %283 ], [ %141, %281 ], [ %141, %278 ], [ %141, %275 ], [ %141, %226 ], [ %141, %236 ], [ %141, %259 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %274 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %461 ], !dbg !1930
  %469 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %142, %281 ], [ %142, %278 ], [ %142, %275 ], [ %142, %226 ], [ %142, %236 ], [ %142, %259 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %274 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %461 ], !dbg !1925
  %470 = phi i8 [ 0, %304 ], [ %144, %283 ], [ %144, %281 ], [ %144, %278 ], [ %144, %275 ], [ %144, %226 ], [ %144, %236 ], [ %144, %259 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %274 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %461 ], !dbg !1925
  %471 = phi i64 [ %145, %304 ], [ %145, %283 ], [ %145, %281 ], [ %145, %278 ], [ %145, %275 ], [ %145, %226 ], [ %145, %236 ], [ %230, %259 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %274 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %461 ], !dbg !2022
  %472 = phi i8 [ 0, %304 ], [ 0, %283 ], [ 0, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %274 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %461 ], !dbg !2032
  %473 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %282, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %274 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %462, %461 ], !dbg !2032
  %474 = phi i8 [ 39, %304 ], [ 39, %283 ], [ %175, %281 ], [ %175, %278 ], [ %175, %275 ], [ 63, %226 ], [ 63, %236 ], [ %238, %259 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %274 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %461 ], !dbg !2032
  %475 = phi i64 [ %290, %304 ], [ %146, %283 ], [ %146, %281 ], [ %146, %278 ], [ %146, %275 ], [ %146, %226 ], [ %146, %236 ], [ %146, %259 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %274 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %461 ]
  tail call void @llvm.dbg.value(metadata i64 %475, metadata !1856, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i8 %474, metadata !1887, metadata !DIExpression()), !dbg !2032
  tail call void @llvm.dbg.value(metadata i8 %473, metadata !1886, metadata !DIExpression()), !dbg !2032
  tail call void @llvm.dbg.value(metadata i8 %472, metadata !1885, metadata !DIExpression()), !dbg !2032
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !1882, metadata !DIExpression()), !dbg !2032
  tail call void @llvm.dbg.value(metadata i64 %471, metadata !1880, metadata !DIExpression()), !dbg !2022
  tail call void @llvm.dbg.value(metadata i8 %470, metadata !1874, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i8 %469, metadata !1871, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i64 %468, metadata !1866, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i64 %467, metadata !1865, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i64 %466, metadata !1858, metadata !DIExpression()), !dbg !1925
  br i1 %126, label %487, label %476, !dbg !2319

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
  br i1 %137, label %488, label %509, !dbg !2321

487:                                              ; preds = %465
  br i1 %27, label %509, label %488, !dbg !2322

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
  %499 = lshr i8 %490, 5, !dbg !2323
  %500 = zext nneg i8 %499 to i64, !dbg !2323
  %501 = getelementptr inbounds i32, ptr %6, i64 %500, !dbg !2324
  %502 = load i32, ptr %501, align 4, !dbg !2324, !tbaa !884
  %503 = and i8 %490, 31, !dbg !2325
  %504 = zext nneg i8 %503 to i32, !dbg !2325
  %505 = shl nuw i32 1, %504, !dbg !2326
  %506 = and i32 %502, %505, !dbg !2326
  %507 = icmp eq i32 %506, 0, !dbg !2326
  %508 = and i1 %172, %507, !dbg !2327
  br i1 %508, label %558, label %520, !dbg !2327

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
  br i1 %172, label %558, label %520, !dbg !2328

520:                                              ; preds = %269, %272, %509, %488
  %521 = phi i64 [ %498, %488 ], [ %519, %509 ], [ %171, %272 ], [ %171, %269 ], !dbg !2318
  %522 = phi i64 [ %497, %488 ], [ %518, %509 ], [ %140, %272 ], [ %140, %269 ], !dbg !1925
  %523 = phi i64 [ %496, %488 ], [ %517, %509 ], [ %141, %272 ], [ %141, %269 ], !dbg !1930
  %524 = phi i8 [ %495, %488 ], [ %516, %509 ], [ %142, %272 ], [ %142, %269 ], !dbg !1934
  %525 = phi i8 [ %494, %488 ], [ %515, %509 ], [ %144, %272 ], [ %144, %269 ], !dbg !2024
  %526 = phi i64 [ %493, %488 ], [ %514, %509 ], [ %145, %272 ], [ %145, %269 ], !dbg !2329
  %527 = phi i8 [ %491, %488 ], [ %512, %509 ], [ 0, %272 ], [ 0, %269 ], !dbg !2032
  %528 = phi i8 [ %490, %488 ], [ %511, %509 ], [ %273, %272 ], [ 92, %269 ], !dbg !2032
  %529 = phi i64 [ %489, %488 ], [ %510, %509 ], [ %146, %272 ], [ %146, %269 ]
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1856, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !1887, metadata !DIExpression()), !dbg !2032
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !1886, metadata !DIExpression()), !dbg !2032
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1880, metadata !DIExpression()), !dbg !2022
  tail call void @llvm.dbg.value(metadata i8 %525, metadata !1874, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !1871, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !1866, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !1865, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !1858, metadata !DIExpression()), !dbg !1925
  call void @llvm.dbg.label(metadata !1914), !dbg !2330
  br i1 %131, label %530, label %659, !dbg !2331

530:                                              ; preds = %520
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1885, metadata !DIExpression()), !dbg !2032
  %531 = and i8 %525, 1, !dbg !2333
  %532 = icmp eq i8 %531, 0, !dbg !2333
  %533 = select i1 %132, i1 %532, i1 false, !dbg !2333
  br i1 %533, label %534, label %550, !dbg !2333

534:                                              ; preds = %530
  %535 = icmp ult i64 %522, %529, !dbg !2335
  br i1 %535, label %536, label %538, !dbg !2339

536:                                              ; preds = %534
  %537 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !2335
  store i8 39, ptr %537, align 1, !dbg !2335, !tbaa !984
  br label %538, !dbg !2335

538:                                              ; preds = %536, %534
  %539 = add i64 %522, 1, !dbg !2339
  tail call void @llvm.dbg.value(metadata i64 %539, metadata !1865, metadata !DIExpression()), !dbg !1925
  %540 = icmp ult i64 %539, %529, !dbg !2340
  br i1 %540, label %541, label %543, !dbg !2343

541:                                              ; preds = %538
  %542 = getelementptr inbounds i8, ptr %0, i64 %539, !dbg !2340
  store i8 36, ptr %542, align 1, !dbg !2340, !tbaa !984
  br label %543, !dbg !2340

543:                                              ; preds = %541, %538
  %544 = add i64 %522, 2, !dbg !2343
  tail call void @llvm.dbg.value(metadata i64 %544, metadata !1865, metadata !DIExpression()), !dbg !1925
  %545 = icmp ult i64 %544, %529, !dbg !2344
  br i1 %545, label %546, label %548, !dbg !2347

546:                                              ; preds = %543
  %547 = getelementptr inbounds i8, ptr %0, i64 %544, !dbg !2344
  store i8 39, ptr %547, align 1, !dbg !2344, !tbaa !984
  br label %548, !dbg !2344

548:                                              ; preds = %546, %543
  %549 = add i64 %522, 3, !dbg !2347
  tail call void @llvm.dbg.value(metadata i64 %549, metadata !1865, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1874, metadata !DIExpression()), !dbg !1925
  br label %550, !dbg !2348

550:                                              ; preds = %530, %548
  %551 = phi i64 [ %549, %548 ], [ %522, %530 ], !dbg !2032
  %552 = phi i8 [ 1, %548 ], [ %525, %530 ], !dbg !1925
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !1874, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i64 %551, metadata !1865, metadata !DIExpression()), !dbg !1925
  %553 = icmp ult i64 %551, %529, !dbg !2349
  br i1 %553, label %554, label %556, !dbg !2352

554:                                              ; preds = %550
  %555 = getelementptr inbounds i8, ptr %0, i64 %551, !dbg !2349
  store i8 92, ptr %555, align 1, !dbg !2349, !tbaa !984
  br label %556, !dbg !2349

556:                                              ; preds = %550, %554
  %557 = add i64 %551, 1, !dbg !2352
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1856, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !1887, metadata !DIExpression()), !dbg !2032
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !1886, metadata !DIExpression()), !dbg !2032
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1885, metadata !DIExpression()), !dbg !2032
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1880, metadata !DIExpression()), !dbg !2022
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !1874, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !1871, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !1866, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i64 %557, metadata !1865, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !1858, metadata !DIExpression()), !dbg !1925
  call void @llvm.dbg.label(metadata !1915), !dbg !2353
  br label %585, !dbg !2354

558:                                              ; preds = %463, %488, %267, %269, %509
  %559 = phi i64 [ %356, %463 ], [ %519, %509 ], [ %171, %267 ], [ %171, %269 ], [ %498, %488 ], !dbg !2318
  %560 = phi i64 [ %427, %463 ], [ %518, %509 ], [ %140, %267 ], [ %140, %269 ], [ %497, %488 ], !dbg !1925
  %561 = phi i64 [ %141, %463 ], [ %517, %509 ], [ %141, %267 ], [ %141, %269 ], [ %496, %488 ], !dbg !1930
  %562 = phi i8 [ %142, %463 ], [ %516, %509 ], [ %142, %267 ], [ %142, %269 ], [ %495, %488 ], !dbg !1934
  %563 = phi i8 [ %428, %463 ], [ %515, %509 ], [ %144, %267 ], [ %144, %269 ], [ %494, %488 ], !dbg !2024
  %564 = phi i64 [ %367, %463 ], [ %514, %509 ], [ %145, %267 ], [ %145, %269 ], [ %493, %488 ], !dbg !2329
  %565 = phi i8 [ %430, %463 ], [ %513, %509 ], [ 0, %267 ], [ 0, %269 ], [ %492, %488 ], !dbg !2032
  %566 = phi i8 [ %464, %463 ], [ %512, %509 ], [ 0, %267 ], [ 0, %269 ], [ %491, %488 ], !dbg !2032
  %567 = phi i8 [ %431, %463 ], [ %511, %509 ], [ 92, %267 ], [ 92, %269 ], [ %490, %488 ], !dbg !2357
  %568 = phi i64 [ %146, %463 ], [ %510, %509 ], [ %146, %267 ], [ %146, %269 ], [ %489, %488 ]
  tail call void @llvm.dbg.value(metadata i64 %568, metadata !1856, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i8 %567, metadata !1887, metadata !DIExpression()), !dbg !2032
  tail call void @llvm.dbg.value(metadata i8 %566, metadata !1886, metadata !DIExpression()), !dbg !2032
  tail call void @llvm.dbg.value(metadata i8 %565, metadata !1885, metadata !DIExpression()), !dbg !2032
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !1880, metadata !DIExpression()), !dbg !2022
  tail call void @llvm.dbg.value(metadata i8 %563, metadata !1874, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i8 %562, metadata !1871, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !1866, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i64 %560, metadata !1865, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i64 %559, metadata !1858, metadata !DIExpression()), !dbg !1925
  call void @llvm.dbg.label(metadata !1915), !dbg !2353
  %569 = and i8 %563, 1, !dbg !2354
  %570 = icmp ne i8 %569, 0, !dbg !2354
  %571 = and i8 %565, 1, !dbg !2354
  %572 = icmp eq i8 %571, 0, !dbg !2354
  %573 = select i1 %570, i1 %572, i1 false, !dbg !2354
  br i1 %573, label %574, label %585, !dbg !2354

574:                                              ; preds = %558
  %575 = icmp ult i64 %560, %568, !dbg !2358
  br i1 %575, label %576, label %578, !dbg !2362

576:                                              ; preds = %574
  %577 = getelementptr inbounds i8, ptr %0, i64 %560, !dbg !2358
  store i8 39, ptr %577, align 1, !dbg !2358, !tbaa !984
  br label %578, !dbg !2358

578:                                              ; preds = %576, %574
  %579 = add i64 %560, 1, !dbg !2362
  tail call void @llvm.dbg.value(metadata i64 %579, metadata !1865, metadata !DIExpression()), !dbg !1925
  %580 = icmp ult i64 %579, %568, !dbg !2363
  br i1 %580, label %581, label %583, !dbg !2366

581:                                              ; preds = %578
  %582 = getelementptr inbounds i8, ptr %0, i64 %579, !dbg !2363
  store i8 39, ptr %582, align 1, !dbg !2363, !tbaa !984
  br label %583, !dbg !2363

583:                                              ; preds = %581, %578
  %584 = add i64 %560, 2, !dbg !2366
  tail call void @llvm.dbg.value(metadata i64 %584, metadata !1865, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1874, metadata !DIExpression()), !dbg !1925
  br label %585, !dbg !2367

585:                                              ; preds = %556, %558, %583
  %586 = phi i64 [ %568, %583 ], [ %568, %558 ], [ %529, %556 ]
  %587 = phi i8 [ %567, %583 ], [ %567, %558 ], [ %528, %556 ]
  %588 = phi i8 [ %566, %583 ], [ %566, %558 ], [ %527, %556 ]
  %589 = phi i64 [ %564, %583 ], [ %564, %558 ], [ %526, %556 ]
  %590 = phi i8 [ %562, %583 ], [ %562, %558 ], [ %524, %556 ]
  %591 = phi i64 [ %561, %583 ], [ %561, %558 ], [ %523, %556 ]
  %592 = phi i64 [ %559, %583 ], [ %559, %558 ], [ %521, %556 ]
  %593 = phi i64 [ %584, %583 ], [ %560, %558 ], [ %557, %556 ], !dbg !2032
  %594 = phi i8 [ 0, %583 ], [ %563, %558 ], [ %552, %556 ], !dbg !1925
  tail call void @llvm.dbg.value(metadata i8 %594, metadata !1874, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i64 %593, metadata !1865, metadata !DIExpression()), !dbg !1925
  %595 = icmp ult i64 %593, %586, !dbg !2368
  br i1 %595, label %596, label %598, !dbg !2371

596:                                              ; preds = %585
  %597 = getelementptr inbounds i8, ptr %0, i64 %593, !dbg !2368
  store i8 %587, ptr %597, align 1, !dbg !2368, !tbaa !984
  br label %598, !dbg !2368

598:                                              ; preds = %596, %585
  %599 = add i64 %593, 1, !dbg !2371
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !1865, metadata !DIExpression()), !dbg !1925
  %600 = icmp eq i8 %588, 0, !dbg !2372
  %601 = select i1 %600, i8 0, i8 %143, !dbg !2374
  tail call void @llvm.dbg.value(metadata i8 %601, metadata !1872, metadata !DIExpression()), !dbg !1925
  br label %602, !dbg !2375

602:                                              ; preds = %225, %598
  %603 = phi i64 [ %592, %598 ], [ %171, %225 ], !dbg !2318
  %604 = phi i64 [ %599, %598 ], [ %140, %225 ], !dbg !1925
  %605 = phi i64 [ %591, %598 ], [ %141, %225 ], !dbg !1930
  %606 = phi i8 [ %590, %598 ], [ %142, %225 ], !dbg !1934
  %607 = phi i8 [ %601, %598 ], [ %143, %225 ], !dbg !1935
  %608 = phi i8 [ %594, %598 ], [ %144, %225 ], !dbg !2024
  %609 = phi i64 [ %589, %598 ], [ %145, %225 ], !dbg !2329
  %610 = phi i64 [ %586, %598 ], [ %146, %225 ]
  tail call void @llvm.dbg.value(metadata i64 %610, metadata !1856, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !1880, metadata !DIExpression()), !dbg !2022
  tail call void @llvm.dbg.value(metadata i8 %608, metadata !1874, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i8 %607, metadata !1872, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i8 %606, metadata !1871, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i64 %605, metadata !1866, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !1865, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i64 %603, metadata !1858, metadata !DIExpression()), !dbg !1925
  %611 = add i64 %609, 1, !dbg !2376
  tail call void @llvm.dbg.value(metadata i64 %611, metadata !1880, metadata !DIExpression()), !dbg !2022
  br label %138, !dbg !2377, !llvm.loop !2378

612:                                              ; preds = %152, %148
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !1856, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !1872, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !1871, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !1866, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1865, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !1858, metadata !DIExpression()), !dbg !1925
  %613 = icmp eq i64 %140, 0, !dbg !2380
  %614 = and i1 %132, %613, !dbg !2382
  %615 = xor i1 %614, true, !dbg !2382
  %616 = select i1 %615, i1 true, i1 %131, !dbg !2382
  br i1 %616, label %617, label %655, !dbg !2382

617:                                              ; preds = %612
  %618 = select i1 %132, i1 %131, i1 false, !dbg !2383
  %619 = and i8 %142, 1
  %620 = icmp ne i8 %619, 0
  %621 = select i1 %618, i1 %620, i1 false, !dbg !2383
  br i1 %621, label %622, label %631, !dbg !2383

622:                                              ; preds = %617
  %623 = and i8 %143, 1, !dbg !2385
  %624 = icmp eq i8 %623, 0, !dbg !2385
  br i1 %624, label %627, label %625, !dbg !2388

625:                                              ; preds = %622
  %626 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %116, ptr noundef %117), !dbg !2389
  br label %672, !dbg !2390

627:                                              ; preds = %622
  %628 = icmp eq i64 %146, 0, !dbg !2391
  %629 = icmp ne i64 %141, 0
  %630 = select i1 %628, i1 %629, i1 false, !dbg !2393
  br i1 %630, label %28, label %631, !dbg !2393

631:                                              ; preds = %627, %617
  %632 = phi i1 [ true, %627 ], [ %131, %617 ]
  %633 = icmp ne ptr %119, null, !dbg !2394
  %634 = select i1 %633, i1 %632, i1 false, !dbg !2396
  br i1 %634, label %635, label %650, !dbg !2396

635:                                              ; preds = %631
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !1867, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1865, metadata !DIExpression()), !dbg !1925
  %636 = load i8, ptr %119, align 1, !dbg !2397, !tbaa !984
  %637 = icmp eq i8 %636, 0, !dbg !2400
  br i1 %637, label %650, label %638, !dbg !2400

638:                                              ; preds = %635, %645
  %639 = phi i8 [ %648, %645 ], [ %636, %635 ]
  %640 = phi ptr [ %647, %645 ], [ %119, %635 ]
  %641 = phi i64 [ %646, %645 ], [ %140, %635 ]
  tail call void @llvm.dbg.value(metadata ptr %640, metadata !1867, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i64 %641, metadata !1865, metadata !DIExpression()), !dbg !1925
  %642 = icmp ult i64 %641, %146, !dbg !2401
  br i1 %642, label %643, label %645, !dbg !2404

643:                                              ; preds = %638
  %644 = getelementptr inbounds i8, ptr %0, i64 %641, !dbg !2401
  store i8 %639, ptr %644, align 1, !dbg !2401, !tbaa !984
  br label %645, !dbg !2401

645:                                              ; preds = %643, %638
  %646 = add i64 %641, 1, !dbg !2404
  tail call void @llvm.dbg.value(metadata i64 %646, metadata !1865, metadata !DIExpression()), !dbg !1925
  %647 = getelementptr inbounds i8, ptr %640, i64 1, !dbg !2405
  tail call void @llvm.dbg.value(metadata ptr %647, metadata !1867, metadata !DIExpression()), !dbg !1925
  %648 = load i8, ptr %647, align 1, !dbg !2397, !tbaa !984
  %649 = icmp eq i8 %648, 0, !dbg !2400
  br i1 %649, label %650, label %638, !dbg !2400, !llvm.loop !2406

650:                                              ; preds = %645, %635, %631
  %651 = phi i64 [ %140, %631 ], [ %140, %635 ], [ %646, %645 ], !dbg !2005
  tail call void @llvm.dbg.value(metadata i64 %651, metadata !1865, metadata !DIExpression()), !dbg !1925
  %652 = icmp ult i64 %651, %146, !dbg !2408
  br i1 %652, label %653, label %672, !dbg !2410

653:                                              ; preds = %650
  %654 = getelementptr inbounds i8, ptr %0, i64 %651, !dbg !2411
  store i8 0, ptr %654, align 1, !dbg !2412, !tbaa !984
  br label %672, !dbg !2411

655:                                              ; preds = %612, %227, %267, %270, %281, %284, %354
  %656 = phi i64 [ %320, %354 ], [ %171, %284 ], [ %171, %281 ], [ %171, %270 ], [ %171, %267 ], [ %171, %227 ], [ %139, %612 ]
  call void @llvm.dbg.label(metadata !1916), !dbg !2413
  %657 = icmp eq i8 %123, 0, !dbg !2414
  %658 = select i1 %657, i32 2, i32 4, !dbg !2414
  br label %666, !dbg !2414

659:                                              ; preds = %520, %177, %371
  %660 = phi i64 [ %146, %371 ], [ %529, %520 ], [ %146, %177 ]
  %661 = phi i64 [ %356, %371 ], [ %521, %520 ], [ %171, %177 ]
  call void @llvm.dbg.label(metadata !1916), !dbg !2413
  %662 = icmp eq i32 %115, 2, !dbg !2416
  %663 = icmp eq i8 %123, 0, !dbg !2414
  %664 = select i1 %663, i32 2, i32 4, !dbg !2414
  %665 = select i1 %662, i32 %664, i32 %115, !dbg !2414
  br label %666, !dbg !2414

666:                                              ; preds = %239, %163, %659, %655
  %667 = phi i64 [ %656, %655 ], [ %661, %659 ], [ %161, %163 ], [ %171, %239 ]
  %668 = phi i64 [ %146, %655 ], [ %660, %659 ], [ %146, %163 ], [ %146, %239 ]
  %669 = phi i32 [ %658, %655 ], [ %665, %659 ], [ %115, %163 ], [ 5, %239 ]
  tail call void @llvm.dbg.value(metadata i32 %669, metadata !1859, metadata !DIExpression()), !dbg !1925
  %670 = and i32 %5, -3, !dbg !2417
  %671 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %668, ptr noundef %2, i64 noundef %667, i32 noundef %669, i32 noundef %670, ptr noundef null, ptr noundef %116, ptr noundef %117), !dbg !2418
  br label %672, !dbg !2419

672:                                              ; preds = %650, %653, %666, %625
  %673 = phi i64 [ %671, %666 ], [ %626, %625 ], [ %651, %653 ], [ %651, %650 ]
  ret i64 %673, !dbg !2420
}

; Function Attrs: nounwind
declare !dbg !2421 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2424 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !2427 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #11 !dbg !2429 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2433, metadata !DIExpression()), !dbg !2436
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2434, metadata !DIExpression()), !dbg !2436
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2435, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata ptr %0, metadata !2437, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata i64 %1, metadata !2442, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata ptr null, metadata !2443, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata ptr %2, metadata !2444, metadata !DIExpression()), !dbg !2450
  %4 = icmp eq ptr %2, null, !dbg !2452
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2452
  call void @llvm.dbg.value(metadata ptr %5, metadata !2445, metadata !DIExpression()), !dbg !2450
  %6 = tail call ptr @__errno_location() #40, !dbg !2453
  %7 = load i32, ptr %6, align 4, !dbg !2453, !tbaa !884
  call void @llvm.dbg.value(metadata i32 %7, metadata !2446, metadata !DIExpression()), !dbg !2450
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2454
  %9 = load i32, ptr %8, align 4, !dbg !2454, !tbaa !1799
  %10 = or i32 %9, 1, !dbg !2455
  call void @llvm.dbg.value(metadata i32 %10, metadata !2447, metadata !DIExpression()), !dbg !2450
  %11 = load i32, ptr %5, align 8, !dbg !2456, !tbaa !1749
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2457
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2458
  %14 = load ptr, ptr %13, align 8, !dbg !2458, !tbaa !1820
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2459
  %16 = load ptr, ptr %15, align 8, !dbg !2459, !tbaa !1823
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2460
  %18 = add i64 %17, 1, !dbg !2461
  call void @llvm.dbg.value(metadata i64 %18, metadata !2448, metadata !DIExpression()), !dbg !2450
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #44, !dbg !2462
  call void @llvm.dbg.value(metadata ptr %19, metadata !2449, metadata !DIExpression()), !dbg !2450
  %20 = load i32, ptr %5, align 8, !dbg !2463, !tbaa !1749
  %21 = load ptr, ptr %13, align 8, !dbg !2464, !tbaa !1820
  %22 = load ptr, ptr %15, align 8, !dbg !2465, !tbaa !1823
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2466
  store i32 %7, ptr %6, align 4, !dbg !2467, !tbaa !884
  ret ptr %19, !dbg !2468
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #11 !dbg !2438 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2437, metadata !DIExpression()), !dbg !2469
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2442, metadata !DIExpression()), !dbg !2469
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2443, metadata !DIExpression()), !dbg !2469
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2444, metadata !DIExpression()), !dbg !2469
  %5 = icmp eq ptr %3, null, !dbg !2470
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2470
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2445, metadata !DIExpression()), !dbg !2469
  %7 = tail call ptr @__errno_location() #40, !dbg !2471
  %8 = load i32, ptr %7, align 4, !dbg !2471, !tbaa !884
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !2446, metadata !DIExpression()), !dbg !2469
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2472
  %10 = load i32, ptr %9, align 4, !dbg !2472, !tbaa !1799
  %11 = icmp eq ptr %2, null, !dbg !2473
  %12 = zext i1 %11 to i32, !dbg !2473
  %13 = or i32 %10, %12, !dbg !2474
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !2447, metadata !DIExpression()), !dbg !2469
  %14 = load i32, ptr %6, align 8, !dbg !2475, !tbaa !1749
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2476
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2477
  %17 = load ptr, ptr %16, align 8, !dbg !2477, !tbaa !1820
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2478
  %19 = load ptr, ptr %18, align 8, !dbg !2478, !tbaa !1823
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2479
  %21 = add i64 %20, 1, !dbg !2480
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2448, metadata !DIExpression()), !dbg !2469
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #44, !dbg !2481
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !2449, metadata !DIExpression()), !dbg !2469
  %23 = load i32, ptr %6, align 8, !dbg !2482, !tbaa !1749
  %24 = load ptr, ptr %16, align 8, !dbg !2483, !tbaa !1820
  %25 = load ptr, ptr %18, align 8, !dbg !2484, !tbaa !1823
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2485
  store i32 %8, ptr %7, align 4, !dbg !2486, !tbaa !884
  br i1 %11, label %28, label %27, !dbg !2487

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2488, !tbaa !2490
  br label %28, !dbg !2491

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2492
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #11 !dbg !2493 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2498, !tbaa !876
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2495, metadata !DIExpression()), !dbg !2499
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2496, metadata !DIExpression()), !dbg !2500
  %2 = load i32, ptr @nslots, align 4, !tbaa !884
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2496, metadata !DIExpression()), !dbg !2500
  %3 = icmp sgt i32 %2, 1, !dbg !2501
  br i1 %3, label %4, label %6, !dbg !2503

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !2501
  br label %10, !dbg !2503

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2504
  %8 = load ptr, ptr %7, align 8, !dbg !2504, !tbaa !2506
  %9 = icmp eq ptr %8, @slot0, !dbg !2508
  br i1 %9, label %17, label %16, !dbg !2509

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2496, metadata !DIExpression()), !dbg !2500
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2510
  %13 = load ptr, ptr %12, align 8, !dbg !2510, !tbaa !2506
  tail call void @free(ptr noundef %13) #37, !dbg !2511
  %14 = add nuw nsw i64 %11, 1, !dbg !2512
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2496, metadata !DIExpression()), !dbg !2500
  %15 = icmp eq i64 %14, %5, !dbg !2501
  br i1 %15, label %6, label %10, !dbg !2503, !llvm.loop !2513

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #37, !dbg !2515
  store i64 256, ptr @slotvec0, align 8, !dbg !2517, !tbaa !2518
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2519, !tbaa !2506
  br label %17, !dbg !2520

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2521
  br i1 %18, label %20, label %19, !dbg !2523

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #37, !dbg !2524
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2526, !tbaa !876
  br label %20, !dbg !2527

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2528, !tbaa !884
  ret void, !dbg !2529
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2530 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #11 !dbg !2533 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2535, metadata !DIExpression()), !dbg !2537
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2536, metadata !DIExpression()), !dbg !2537
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2538
  ret ptr %3, !dbg !2539
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #11 !dbg !2540 {
  %5 = alloca i64, align 8, !DIAssignID !2560
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2554, metadata !DIExpression(), metadata !2560, metadata ptr %5, metadata !DIExpression()), !dbg !2561
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2544, metadata !DIExpression()), !dbg !2562
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2545, metadata !DIExpression()), !dbg !2562
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2546, metadata !DIExpression()), !dbg !2562
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2547, metadata !DIExpression()), !dbg !2562
  %6 = tail call ptr @__errno_location() #40, !dbg !2563
  %7 = load i32, ptr %6, align 4, !dbg !2563, !tbaa !884
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !2548, metadata !DIExpression()), !dbg !2562
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2564, !tbaa !876
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2549, metadata !DIExpression()), !dbg !2562
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !2550, metadata !DIExpression()), !dbg !2562
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2565
  br i1 %9, label %10, label %11, !dbg !2565

10:                                               ; preds = %4
  tail call void @abort() #39, !dbg !2567
  unreachable, !dbg !2567

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2568, !tbaa !884
  %13 = icmp sgt i32 %12, %0, !dbg !2569
  br i1 %13, label %32, label %14, !dbg !2570

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2571
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !2551, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2561
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #37, !dbg !2572
  %16 = sext i32 %12 to i64, !dbg !2573
  store i64 %16, ptr %5, align 8, !dbg !2574, !tbaa !2490, !DIAssignID !2575
  call void @llvm.dbg.assign(metadata i64 %16, metadata !2554, metadata !DIExpression(), metadata !2575, metadata ptr %5, metadata !DIExpression()), !dbg !2561
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2576
  %18 = add nuw nsw i32 %0, 1, !dbg !2577
  %19 = sub i32 %18, %12, !dbg !2578
  %20 = sext i32 %19 to i64, !dbg !2579
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #37, !dbg !2580
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2549, metadata !DIExpression()), !dbg !2562
  store ptr %21, ptr @slotvec, align 8, !dbg !2581, !tbaa !876
  br i1 %15, label %22, label %23, !dbg !2582

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2583, !tbaa.struct !2585
  br label %23, !dbg !2586

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2587, !tbaa !884
  %25 = sext i32 %24 to i64, !dbg !2588
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2588
  %27 = load i64, ptr %5, align 8, !dbg !2589, !tbaa !2490
  %28 = sub nsw i64 %27, %25, !dbg !2590
  %29 = shl i64 %28, 4, !dbg !2591
  call void @llvm.dbg.value(metadata ptr %26, metadata !1963, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata i32 0, metadata !1966, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata i64 %29, metadata !1967, metadata !DIExpression()), !dbg !2592
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #37, !dbg !2594
  %30 = load i64, ptr %5, align 8, !dbg !2595, !tbaa !2490
  %31 = trunc i64 %30 to i32, !dbg !2595
  store i32 %31, ptr @nslots, align 4, !dbg !2596, !tbaa !884
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #37, !dbg !2597
  br label %32, !dbg !2598

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2562
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2549, metadata !DIExpression()), !dbg !2562
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2599
  %36 = load i64, ptr %35, align 8, !dbg !2600, !tbaa !2518
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !2555, metadata !DIExpression()), !dbg !2601
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2602
  %38 = load ptr, ptr %37, align 8, !dbg !2602, !tbaa !2506
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !2557, metadata !DIExpression()), !dbg !2601
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2603
  %40 = load i32, ptr %39, align 4, !dbg !2603, !tbaa !1799
  %41 = or i32 %40, 1, !dbg !2604
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !2558, metadata !DIExpression()), !dbg !2601
  %42 = load i32, ptr %3, align 8, !dbg !2605, !tbaa !1749
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2606
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2607
  %45 = load ptr, ptr %44, align 8, !dbg !2607, !tbaa !1820
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2608
  %47 = load ptr, ptr %46, align 8, !dbg !2608, !tbaa !1823
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2609
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !2559, metadata !DIExpression()), !dbg !2601
  %49 = icmp ugt i64 %36, %48, !dbg !2610
  br i1 %49, label %60, label %50, !dbg !2612

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2613
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !2555, metadata !DIExpression()), !dbg !2601
  store i64 %51, ptr %35, align 8, !dbg !2615, !tbaa !2518
  %52 = icmp eq ptr %38, @slot0, !dbg !2616
  br i1 %52, label %54, label %53, !dbg !2618

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #37, !dbg !2619
  br label %54, !dbg !2619

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #44, !dbg !2620
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !2557, metadata !DIExpression()), !dbg !2601
  store ptr %55, ptr %37, align 8, !dbg !2621, !tbaa !2506
  %56 = load i32, ptr %3, align 8, !dbg !2622, !tbaa !1749
  %57 = load ptr, ptr %44, align 8, !dbg !2623, !tbaa !1820
  %58 = load ptr, ptr %46, align 8, !dbg !2624, !tbaa !1823
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2625
  br label %60, !dbg !2626

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2601
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2557, metadata !DIExpression()), !dbg !2601
  store i32 %7, ptr %6, align 4, !dbg !2627, !tbaa !884
  ret ptr %61, !dbg !2628
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #23

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #11 !dbg !2629 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2633, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2634, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2635, metadata !DIExpression()), !dbg !2636
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2637
  ret ptr %4, !dbg !2638
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #11 !dbg !2639 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2641, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i32 0, metadata !2535, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.value(metadata ptr %0, metadata !2536, metadata !DIExpression()), !dbg !2643
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2645
  ret ptr %2, !dbg !2646
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #11 !dbg !2647 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2651, metadata !DIExpression()), !dbg !2653
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2652, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.value(metadata i32 0, metadata !2633, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata ptr %0, metadata !2634, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata i64 %1, metadata !2635, metadata !DIExpression()), !dbg !2654
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2656
  ret ptr %3, !dbg !2657
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #11 !dbg !2658 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2666
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2665, metadata !DIExpression(), metadata !2666, metadata ptr %4, metadata !DIExpression()), !dbg !2667
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2662, metadata !DIExpression()), !dbg !2667
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2663, metadata !DIExpression()), !dbg !2667
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2664, metadata !DIExpression()), !dbg !2667
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2668
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2669), !dbg !2672
  call void @llvm.dbg.value(metadata i32 %1, metadata !2673, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2678, metadata !DIExpression()), !dbg !2681
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2681, !alias.scope !2669, !DIAssignID !2682
  call void @llvm.dbg.assign(metadata i8 0, metadata !2665, metadata !DIExpression(), metadata !2682, metadata ptr %4, metadata !DIExpression()), !dbg !2667
  %5 = icmp eq i32 %1, 10, !dbg !2683
  br i1 %5, label %6, label %7, !dbg !2685

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2686, !noalias !2669
  unreachable, !dbg !2686

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2687, !tbaa !1749, !alias.scope !2669, !DIAssignID !2688
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2665, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2688, metadata ptr %4, metadata !DIExpression()), !dbg !2667
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2689
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2690
  ret ptr %8, !dbg !2691
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #11 !dbg !2692 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2701
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2700, metadata !DIExpression(), metadata !2701, metadata ptr %5, metadata !DIExpression()), !dbg !2702
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2696, metadata !DIExpression()), !dbg !2702
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2697, metadata !DIExpression()), !dbg !2702
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2698, metadata !DIExpression()), !dbg !2702
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2699, metadata !DIExpression()), !dbg !2702
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2703
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2704), !dbg !2707
  call void @llvm.dbg.value(metadata i32 %1, metadata !2673, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2678, metadata !DIExpression()), !dbg !2710
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2710, !alias.scope !2704, !DIAssignID !2711
  call void @llvm.dbg.assign(metadata i8 0, metadata !2700, metadata !DIExpression(), metadata !2711, metadata ptr %5, metadata !DIExpression()), !dbg !2702
  %6 = icmp eq i32 %1, 10, !dbg !2712
  br i1 %6, label %7, label %8, !dbg !2713

7:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2714, !noalias !2704
  unreachable, !dbg !2714

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2715, !tbaa !1749, !alias.scope !2704, !DIAssignID !2716
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2700, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2716, metadata ptr %5, metadata !DIExpression()), !dbg !2702
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2717
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2718
  ret ptr %9, !dbg !2719
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #11 !dbg !2720 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2726
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2724, metadata !DIExpression()), !dbg !2727
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2725, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2665, metadata !DIExpression(), metadata !2726, metadata ptr %3, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i32 0, metadata !2662, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i32 %0, metadata !2663, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata ptr %1, metadata !2664, metadata !DIExpression()), !dbg !2728
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2730
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2731), !dbg !2734
  call void @llvm.dbg.value(metadata i32 %0, metadata !2673, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2678, metadata !DIExpression()), !dbg !2737
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2737, !alias.scope !2731, !DIAssignID !2738
  call void @llvm.dbg.assign(metadata i8 0, metadata !2665, metadata !DIExpression(), metadata !2738, metadata ptr %3, metadata !DIExpression()), !dbg !2728
  %4 = icmp eq i32 %0, 10, !dbg !2739
  br i1 %4, label %5, label %6, !dbg !2740

5:                                                ; preds = %2
  tail call void @abort() #39, !dbg !2741, !noalias !2731
  unreachable, !dbg !2741

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2742, !tbaa !1749, !alias.scope !2731, !DIAssignID !2743
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2665, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2743, metadata ptr %3, metadata !DIExpression()), !dbg !2728
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2744
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2745
  ret ptr %7, !dbg !2746
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #11 !dbg !2747 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2754
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2751, metadata !DIExpression()), !dbg !2755
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2752, metadata !DIExpression()), !dbg !2755
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2753, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2700, metadata !DIExpression(), metadata !2754, metadata ptr %4, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i32 0, metadata !2696, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i32 %0, metadata !2697, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata ptr %1, metadata !2698, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i64 %2, metadata !2699, metadata !DIExpression()), !dbg !2756
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2758
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2759), !dbg !2762
  call void @llvm.dbg.value(metadata i32 %0, metadata !2673, metadata !DIExpression()), !dbg !2763
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2678, metadata !DIExpression()), !dbg !2765
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2765, !alias.scope !2759, !DIAssignID !2766
  call void @llvm.dbg.assign(metadata i8 0, metadata !2700, metadata !DIExpression(), metadata !2766, metadata ptr %4, metadata !DIExpression()), !dbg !2756
  %5 = icmp eq i32 %0, 10, !dbg !2767
  br i1 %5, label %6, label %7, !dbg !2768

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2769, !noalias !2759
  unreachable, !dbg !2769

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2770, !tbaa !1749, !alias.scope !2759, !DIAssignID !2771
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2700, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2771, metadata ptr %4, metadata !DIExpression()), !dbg !2756
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2772
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2773
  ret ptr %8, !dbg !2774
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #11 !dbg !2775 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2783
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2782, metadata !DIExpression(), metadata !2783, metadata ptr %4, metadata !DIExpression()), !dbg !2784
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2779, metadata !DIExpression()), !dbg !2784
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2780, metadata !DIExpression()), !dbg !2784
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2781, metadata !DIExpression()), !dbg !2784
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2785
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2786, !tbaa.struct !2787, !DIAssignID !2788
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2782, metadata !DIExpression(), metadata !2788, metadata ptr %4, metadata !DIExpression()), !dbg !2784
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1766, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1767, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1768, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1769, metadata !DIExpression()), !dbg !2789
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2791
  %6 = lshr i8 %2, 5, !dbg !2792
  %7 = zext nneg i8 %6 to i64, !dbg !2792
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2793
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1770, metadata !DIExpression()), !dbg !2789
  %9 = and i8 %2, 31, !dbg !2794
  %10 = zext nneg i8 %9 to i32, !dbg !2794
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1772, metadata !DIExpression()), !dbg !2789
  %11 = load i32, ptr %8, align 4, !dbg !2795, !tbaa !884
  %12 = lshr i32 %11, %10, !dbg !2796
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1773, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2789
  %13 = and i32 %12, 1, !dbg !2797
  %14 = xor i32 %13, 1, !dbg !2797
  %15 = shl nuw i32 %14, %10, !dbg !2798
  %16 = xor i32 %15, %11, !dbg !2799
  store i32 %16, ptr %8, align 4, !dbg !2799, !tbaa !884
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2800
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2801
  ret ptr %17, !dbg !2802
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #11 !dbg !2803 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2809
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2807, metadata !DIExpression()), !dbg !2810
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2808, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2782, metadata !DIExpression(), metadata !2809, metadata ptr %3, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata ptr %0, metadata !2779, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata i64 -1, metadata !2780, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata i8 %1, metadata !2781, metadata !DIExpression()), !dbg !2811
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2813
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2814, !tbaa.struct !2787, !DIAssignID !2815
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2782, metadata !DIExpression(), metadata !2815, metadata ptr %3, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata ptr %3, metadata !1766, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i8 %1, metadata !1767, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i32 1, metadata !1768, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i8 %1, metadata !1769, metadata !DIExpression()), !dbg !2816
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2818
  %5 = lshr i8 %1, 5, !dbg !2819
  %6 = zext nneg i8 %5 to i64, !dbg !2819
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2820
  call void @llvm.dbg.value(metadata ptr %7, metadata !1770, metadata !DIExpression()), !dbg !2816
  %8 = and i8 %1, 31, !dbg !2821
  %9 = zext nneg i8 %8 to i32, !dbg !2821
  call void @llvm.dbg.value(metadata i32 %9, metadata !1772, metadata !DIExpression()), !dbg !2816
  %10 = load i32, ptr %7, align 4, !dbg !2822, !tbaa !884
  %11 = lshr i32 %10, %9, !dbg !2823
  call void @llvm.dbg.value(metadata i32 %11, metadata !1773, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2816
  %12 = and i32 %11, 1, !dbg !2824
  %13 = xor i32 %12, 1, !dbg !2824
  %14 = shl nuw i32 %13, %9, !dbg !2825
  %15 = xor i32 %14, %10, !dbg !2826
  store i32 %15, ptr %7, align 4, !dbg !2826, !tbaa !884
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2827
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2828
  ret ptr %16, !dbg !2829
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #11 !dbg !2830 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !2833
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2832, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata ptr %0, metadata !2807, metadata !DIExpression()), !dbg !2835
  call void @llvm.dbg.value(metadata i8 58, metadata !2808, metadata !DIExpression()), !dbg !2835
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2782, metadata !DIExpression(), metadata !2833, metadata ptr %2, metadata !DIExpression()), !dbg !2837
  call void @llvm.dbg.value(metadata ptr %0, metadata !2779, metadata !DIExpression()), !dbg !2837
  call void @llvm.dbg.value(metadata i64 -1, metadata !2780, metadata !DIExpression()), !dbg !2837
  call void @llvm.dbg.value(metadata i8 58, metadata !2781, metadata !DIExpression()), !dbg !2837
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #37, !dbg !2839
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2840, !tbaa.struct !2787, !DIAssignID !2841
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2782, metadata !DIExpression(), metadata !2841, metadata ptr %2, metadata !DIExpression()), !dbg !2837
  call void @llvm.dbg.value(metadata ptr %2, metadata !1766, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i8 58, metadata !1767, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i32 1, metadata !1768, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i8 58, metadata !1769, metadata !DIExpression()), !dbg !2842
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2844
  call void @llvm.dbg.value(metadata ptr %3, metadata !1770, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i32 26, metadata !1772, metadata !DIExpression()), !dbg !2842
  %4 = load i32, ptr %3, align 4, !dbg !2845, !tbaa !884
  call void @llvm.dbg.value(metadata i32 %4, metadata !1773, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2842
  %5 = or i32 %4, 67108864, !dbg !2846
  store i32 %5, ptr %3, align 4, !dbg !2846, !tbaa !884
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2847
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #37, !dbg !2848
  ret ptr %6, !dbg !2849
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #11 !dbg !2850 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2854
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2852, metadata !DIExpression()), !dbg !2855
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2853, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2782, metadata !DIExpression(), metadata !2854, metadata ptr %3, metadata !DIExpression()), !dbg !2856
  call void @llvm.dbg.value(metadata ptr %0, metadata !2779, metadata !DIExpression()), !dbg !2856
  call void @llvm.dbg.value(metadata i64 %1, metadata !2780, metadata !DIExpression()), !dbg !2856
  call void @llvm.dbg.value(metadata i8 58, metadata !2781, metadata !DIExpression()), !dbg !2856
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2858
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2859, !tbaa.struct !2787, !DIAssignID !2860
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2782, metadata !DIExpression(), metadata !2860, metadata ptr %3, metadata !DIExpression()), !dbg !2856
  call void @llvm.dbg.value(metadata ptr %3, metadata !1766, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata i8 58, metadata !1767, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata i32 1, metadata !1768, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata i8 58, metadata !1769, metadata !DIExpression()), !dbg !2861
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2863
  call void @llvm.dbg.value(metadata ptr %4, metadata !1770, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata i32 26, metadata !1772, metadata !DIExpression()), !dbg !2861
  %5 = load i32, ptr %4, align 4, !dbg !2864, !tbaa !884
  call void @llvm.dbg.value(metadata i32 %5, metadata !1773, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2861
  %6 = or i32 %5, 67108864, !dbg !2865
  store i32 %6, ptr %4, align 4, !dbg !2865, !tbaa !884
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2866
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2867
  ret ptr %7, !dbg !2868
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #11 !dbg !2869 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2875
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2874, metadata !DIExpression(), metadata !2875, metadata ptr %4, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2678, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2877
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2871, metadata !DIExpression()), !dbg !2876
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2872, metadata !DIExpression()), !dbg !2876
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2873, metadata !DIExpression()), !dbg !2876
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2879
  call void @llvm.dbg.value(metadata i32 %1, metadata !2673, metadata !DIExpression()), !dbg !2880
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2678, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2880
  %5 = icmp eq i32 %1, 10, !dbg !2881
  br i1 %5, label %6, label %7, !dbg !2882

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2883, !noalias !2884
  unreachable, !dbg !2883

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2678, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2880
  store i32 %1, ptr %4, align 8, !dbg !2887, !tbaa.struct !2787, !DIAssignID !2888
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2887
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2887
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2874, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2888, metadata ptr %4, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2874, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !2889, metadata ptr %8, metadata !DIExpression()), !dbg !2876
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1766, metadata !DIExpression()), !dbg !2890
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1767, metadata !DIExpression()), !dbg !2890
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1768, metadata !DIExpression()), !dbg !2890
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1769, metadata !DIExpression()), !dbg !2890
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2892
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1770, metadata !DIExpression()), !dbg !2890
  tail call void @llvm.dbg.value(metadata i32 26, metadata !1772, metadata !DIExpression()), !dbg !2890
  %10 = load i32, ptr %9, align 4, !dbg !2893, !tbaa !884
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1773, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2890
  %11 = or i32 %10, 67108864, !dbg !2894
  store i32 %11, ptr %9, align 4, !dbg !2894, !tbaa !884, !DIAssignID !2895
  call void @llvm.dbg.assign(metadata i32 %11, metadata !2874, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !2895, metadata ptr %9, metadata !DIExpression()), !dbg !2876
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2896
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2897
  ret ptr %12, !dbg !2898
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #11 !dbg !2899 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2907
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2903, metadata !DIExpression()), !dbg !2908
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2904, metadata !DIExpression()), !dbg !2908
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2905, metadata !DIExpression()), !dbg !2908
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2906, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2909, metadata !DIExpression(), metadata !2907, metadata ptr %5, metadata !DIExpression()), !dbg !2919
  call void @llvm.dbg.value(metadata i32 %0, metadata !2914, metadata !DIExpression()), !dbg !2919
  call void @llvm.dbg.value(metadata ptr %1, metadata !2915, metadata !DIExpression()), !dbg !2919
  call void @llvm.dbg.value(metadata ptr %2, metadata !2916, metadata !DIExpression()), !dbg !2919
  call void @llvm.dbg.value(metadata ptr %3, metadata !2917, metadata !DIExpression()), !dbg !2919
  call void @llvm.dbg.value(metadata i64 -1, metadata !2918, metadata !DIExpression()), !dbg !2919
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2921
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2922, !tbaa.struct !2787, !DIAssignID !2923
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2909, metadata !DIExpression(), metadata !2923, metadata ptr %5, metadata !DIExpression()), !dbg !2919
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2909, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2924, metadata ptr undef, metadata !DIExpression()), !dbg !2919
  call void @llvm.dbg.value(metadata ptr %5, metadata !1806, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata ptr %1, metadata !1807, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata ptr %2, metadata !1808, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata ptr %5, metadata !1806, metadata !DIExpression()), !dbg !2925
  store i32 10, ptr %5, align 8, !dbg !2927, !tbaa !1749, !DIAssignID !2928
  call void @llvm.dbg.assign(metadata i32 10, metadata !2909, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2928, metadata ptr %5, metadata !DIExpression()), !dbg !2919
  %6 = icmp ne ptr %1, null, !dbg !2929
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2930
  br i1 %8, label %10, label %9, !dbg !2930

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2931
  unreachable, !dbg !2931

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2932
  store ptr %1, ptr %11, align 8, !dbg !2933, !tbaa !1820, !DIAssignID !2934
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2909, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2934, metadata ptr %11, metadata !DIExpression()), !dbg !2919
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2935
  store ptr %2, ptr %12, align 8, !dbg !2936, !tbaa !1823, !DIAssignID !2937
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2909, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2937, metadata ptr %12, metadata !DIExpression()), !dbg !2919
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2938
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2939
  ret ptr %13, !dbg !2940
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #11 !dbg !2910 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !2941
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2909, metadata !DIExpression(), metadata !2941, metadata ptr %6, metadata !DIExpression()), !dbg !2942
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2914, metadata !DIExpression()), !dbg !2942
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2915, metadata !DIExpression()), !dbg !2942
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2916, metadata !DIExpression()), !dbg !2942
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2917, metadata !DIExpression()), !dbg !2942
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !2918, metadata !DIExpression()), !dbg !2942
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #37, !dbg !2943
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2944, !tbaa.struct !2787, !DIAssignID !2945
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2909, metadata !DIExpression(), metadata !2945, metadata ptr %6, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2909, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2946, metadata ptr undef, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.value(metadata ptr %6, metadata !1806, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata ptr %1, metadata !1807, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata ptr %2, metadata !1808, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata ptr %6, metadata !1806, metadata !DIExpression()), !dbg !2947
  store i32 10, ptr %6, align 8, !dbg !2949, !tbaa !1749, !DIAssignID !2950
  call void @llvm.dbg.assign(metadata i32 10, metadata !2909, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2950, metadata ptr %6, metadata !DIExpression()), !dbg !2942
  %7 = icmp ne ptr %1, null, !dbg !2951
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2952
  br i1 %9, label %11, label %10, !dbg !2952

10:                                               ; preds = %5
  tail call void @abort() #39, !dbg !2953
  unreachable, !dbg !2953

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2954
  store ptr %1, ptr %12, align 8, !dbg !2955, !tbaa !1820, !DIAssignID !2956
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2909, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2956, metadata ptr %12, metadata !DIExpression()), !dbg !2942
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2957
  store ptr %2, ptr %13, align 8, !dbg !2958, !tbaa !1823, !DIAssignID !2959
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2909, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2959, metadata ptr %13, metadata !DIExpression()), !dbg !2942
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2960
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #37, !dbg !2961
  ret ptr %14, !dbg !2962
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #11 !dbg !2963 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2970
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2967, metadata !DIExpression()), !dbg !2971
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2968, metadata !DIExpression()), !dbg !2971
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2969, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.value(metadata i32 0, metadata !2903, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.value(metadata ptr %0, metadata !2904, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.value(metadata ptr %1, metadata !2905, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.value(metadata ptr %2, metadata !2906, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2909, metadata !DIExpression(), metadata !2970, metadata ptr %4, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i32 0, metadata !2914, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata ptr %0, metadata !2915, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata ptr %1, metadata !2916, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata ptr %2, metadata !2917, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i64 -1, metadata !2918, metadata !DIExpression()), !dbg !2974
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2976
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2977, !tbaa.struct !2787, !DIAssignID !2978
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2909, metadata !DIExpression(), metadata !2978, metadata ptr %4, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2909, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2979, metadata ptr undef, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata ptr %4, metadata !1806, metadata !DIExpression()), !dbg !2980
  call void @llvm.dbg.value(metadata ptr %0, metadata !1807, metadata !DIExpression()), !dbg !2980
  call void @llvm.dbg.value(metadata ptr %1, metadata !1808, metadata !DIExpression()), !dbg !2980
  call void @llvm.dbg.value(metadata ptr %4, metadata !1806, metadata !DIExpression()), !dbg !2980
  store i32 10, ptr %4, align 8, !dbg !2982, !tbaa !1749, !DIAssignID !2983
  call void @llvm.dbg.assign(metadata i32 10, metadata !2909, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2983, metadata ptr %4, metadata !DIExpression()), !dbg !2974
  %5 = icmp ne ptr %0, null, !dbg !2984
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2985
  br i1 %7, label %9, label %8, !dbg !2985

8:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2986
  unreachable, !dbg !2986

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2987
  store ptr %0, ptr %10, align 8, !dbg !2988, !tbaa !1820, !DIAssignID !2989
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2909, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2989, metadata ptr %10, metadata !DIExpression()), !dbg !2974
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2990
  store ptr %1, ptr %11, align 8, !dbg !2991, !tbaa !1823, !DIAssignID !2992
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2909, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2992, metadata ptr %11, metadata !DIExpression()), !dbg !2974
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2993
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2994
  ret ptr %12, !dbg !2995
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #11 !dbg !2996 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3004
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3000, metadata !DIExpression()), !dbg !3005
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3001, metadata !DIExpression()), !dbg !3005
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3002, metadata !DIExpression()), !dbg !3005
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3003, metadata !DIExpression()), !dbg !3005
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2909, metadata !DIExpression(), metadata !3004, metadata ptr %5, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i32 0, metadata !2914, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata ptr %0, metadata !2915, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata ptr %1, metadata !2916, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata ptr %2, metadata !2917, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i64 %3, metadata !2918, metadata !DIExpression()), !dbg !3006
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !3008
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3009, !tbaa.struct !2787, !DIAssignID !3010
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2909, metadata !DIExpression(), metadata !3010, metadata ptr %5, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2909, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3011, metadata ptr undef, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata ptr %5, metadata !1806, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata ptr %0, metadata !1807, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata ptr %1, metadata !1808, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata ptr %5, metadata !1806, metadata !DIExpression()), !dbg !3012
  store i32 10, ptr %5, align 8, !dbg !3014, !tbaa !1749, !DIAssignID !3015
  call void @llvm.dbg.assign(metadata i32 10, metadata !2909, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3015, metadata ptr %5, metadata !DIExpression()), !dbg !3006
  %6 = icmp ne ptr %0, null, !dbg !3016
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3017
  br i1 %8, label %10, label %9, !dbg !3017

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !3018
  unreachable, !dbg !3018

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3019
  store ptr %0, ptr %11, align 8, !dbg !3020, !tbaa !1820, !DIAssignID !3021
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2909, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3021, metadata ptr %11, metadata !DIExpression()), !dbg !3006
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3022
  store ptr %1, ptr %12, align 8, !dbg !3023, !tbaa !1823, !DIAssignID !3024
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2909, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3024, metadata ptr %12, metadata !DIExpression()), !dbg !3006
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3025
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !3026
  ret ptr %13, !dbg !3027
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #11 !dbg !3028 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3032, metadata !DIExpression()), !dbg !3035
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3033, metadata !DIExpression()), !dbg !3035
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3034, metadata !DIExpression()), !dbg !3035
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3036
  ret ptr %4, !dbg !3037
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #11 !dbg !3038 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3042, metadata !DIExpression()), !dbg !3044
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3043, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i32 0, metadata !3032, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata ptr %0, metadata !3033, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i64 %1, metadata !3034, metadata !DIExpression()), !dbg !3045
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3047
  ret ptr %3, !dbg !3048
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #11 !dbg !3049 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3053, metadata !DIExpression()), !dbg !3055
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3054, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i32 %0, metadata !3032, metadata !DIExpression()), !dbg !3056
  call void @llvm.dbg.value(metadata ptr %1, metadata !3033, metadata !DIExpression()), !dbg !3056
  call void @llvm.dbg.value(metadata i64 -1, metadata !3034, metadata !DIExpression()), !dbg !3056
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3058
  ret ptr %3, !dbg !3059
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #11 !dbg !3060 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3064, metadata !DIExpression()), !dbg !3065
  call void @llvm.dbg.value(metadata i32 0, metadata !3053, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata ptr %0, metadata !3054, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata i32 0, metadata !3032, metadata !DIExpression()), !dbg !3068
  call void @llvm.dbg.value(metadata ptr %0, metadata !3033, metadata !DIExpression()), !dbg !3068
  call void @llvm.dbg.value(metadata i64 -1, metadata !3034, metadata !DIExpression()), !dbg !3068
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3070
  ret ptr %2, !dbg !3071
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #11 !dbg !3072 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3111, metadata !DIExpression()), !dbg !3117
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3112, metadata !DIExpression()), !dbg !3117
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3113, metadata !DIExpression()), !dbg !3117
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3114, metadata !DIExpression()), !dbg !3117
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3115, metadata !DIExpression()), !dbg !3117
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !3116, metadata !DIExpression()), !dbg !3117
  %7 = icmp eq ptr %1, null, !dbg !3118
  br i1 %7, label %10, label %8, !dbg !3120

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.119, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #37, !dbg !3121
  br label %12, !dbg !3121

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.120, ptr noundef %2, ptr noundef %3) #37, !dbg !3122
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.3.122, i32 noundef 5) #37, !dbg !3123
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #37, !dbg !3123
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.123, ptr noundef %0), !dbg !3124
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.5.124, i32 noundef 5) #37, !dbg !3125
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.125) #37, !dbg !3125
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.123, ptr noundef %0), !dbg !3126
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
  ], !dbg !3127

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.7.126, i32 noundef 5) #37, !dbg !3128
  %21 = load ptr, ptr %4, align 8, !dbg !3128, !tbaa !876
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #37, !dbg !3128
  br label %147, !dbg !3130

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.8.127, i32 noundef 5) #37, !dbg !3131
  %25 = load ptr, ptr %4, align 8, !dbg !3131, !tbaa !876
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3131
  %27 = load ptr, ptr %26, align 8, !dbg !3131, !tbaa !876
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #37, !dbg !3131
  br label %147, !dbg !3132

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.9.128, i32 noundef 5) #37, !dbg !3133
  %31 = load ptr, ptr %4, align 8, !dbg !3133, !tbaa !876
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3133
  %33 = load ptr, ptr %32, align 8, !dbg !3133, !tbaa !876
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3133
  %35 = load ptr, ptr %34, align 8, !dbg !3133, !tbaa !876
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #37, !dbg !3133
  br label %147, !dbg !3134

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.10.129, i32 noundef 5) #37, !dbg !3135
  %39 = load ptr, ptr %4, align 8, !dbg !3135, !tbaa !876
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3135
  %41 = load ptr, ptr %40, align 8, !dbg !3135, !tbaa !876
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3135
  %43 = load ptr, ptr %42, align 8, !dbg !3135, !tbaa !876
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3135
  %45 = load ptr, ptr %44, align 8, !dbg !3135, !tbaa !876
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #37, !dbg !3135
  br label %147, !dbg !3136

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.11.130, i32 noundef 5) #37, !dbg !3137
  %49 = load ptr, ptr %4, align 8, !dbg !3137, !tbaa !876
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3137
  %51 = load ptr, ptr %50, align 8, !dbg !3137, !tbaa !876
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3137
  %53 = load ptr, ptr %52, align 8, !dbg !3137, !tbaa !876
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3137
  %55 = load ptr, ptr %54, align 8, !dbg !3137, !tbaa !876
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3137
  %57 = load ptr, ptr %56, align 8, !dbg !3137, !tbaa !876
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #37, !dbg !3137
  br label %147, !dbg !3138

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.12.131, i32 noundef 5) #37, !dbg !3139
  %61 = load ptr, ptr %4, align 8, !dbg !3139, !tbaa !876
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3139
  %63 = load ptr, ptr %62, align 8, !dbg !3139, !tbaa !876
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3139
  %65 = load ptr, ptr %64, align 8, !dbg !3139, !tbaa !876
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3139
  %67 = load ptr, ptr %66, align 8, !dbg !3139, !tbaa !876
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3139
  %69 = load ptr, ptr %68, align 8, !dbg !3139, !tbaa !876
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3139
  %71 = load ptr, ptr %70, align 8, !dbg !3139, !tbaa !876
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #37, !dbg !3139
  br label %147, !dbg !3140

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.13.132, i32 noundef 5) #37, !dbg !3141
  %75 = load ptr, ptr %4, align 8, !dbg !3141, !tbaa !876
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3141
  %77 = load ptr, ptr %76, align 8, !dbg !3141, !tbaa !876
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3141
  %79 = load ptr, ptr %78, align 8, !dbg !3141, !tbaa !876
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3141
  %81 = load ptr, ptr %80, align 8, !dbg !3141, !tbaa !876
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3141
  %83 = load ptr, ptr %82, align 8, !dbg !3141, !tbaa !876
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3141
  %85 = load ptr, ptr %84, align 8, !dbg !3141, !tbaa !876
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3141
  %87 = load ptr, ptr %86, align 8, !dbg !3141, !tbaa !876
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #37, !dbg !3141
  br label %147, !dbg !3142

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.14.133, i32 noundef 5) #37, !dbg !3143
  %91 = load ptr, ptr %4, align 8, !dbg !3143, !tbaa !876
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3143
  %93 = load ptr, ptr %92, align 8, !dbg !3143, !tbaa !876
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3143
  %95 = load ptr, ptr %94, align 8, !dbg !3143, !tbaa !876
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3143
  %97 = load ptr, ptr %96, align 8, !dbg !3143, !tbaa !876
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3143
  %99 = load ptr, ptr %98, align 8, !dbg !3143, !tbaa !876
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3143
  %101 = load ptr, ptr %100, align 8, !dbg !3143, !tbaa !876
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3143
  %103 = load ptr, ptr %102, align 8, !dbg !3143, !tbaa !876
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3143
  %105 = load ptr, ptr %104, align 8, !dbg !3143, !tbaa !876
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #37, !dbg !3143
  br label %147, !dbg !3144

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.15.134, i32 noundef 5) #37, !dbg !3145
  %109 = load ptr, ptr %4, align 8, !dbg !3145, !tbaa !876
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3145
  %111 = load ptr, ptr %110, align 8, !dbg !3145, !tbaa !876
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3145
  %113 = load ptr, ptr %112, align 8, !dbg !3145, !tbaa !876
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3145
  %115 = load ptr, ptr %114, align 8, !dbg !3145, !tbaa !876
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3145
  %117 = load ptr, ptr %116, align 8, !dbg !3145, !tbaa !876
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3145
  %119 = load ptr, ptr %118, align 8, !dbg !3145, !tbaa !876
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3145
  %121 = load ptr, ptr %120, align 8, !dbg !3145, !tbaa !876
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3145
  %123 = load ptr, ptr %122, align 8, !dbg !3145, !tbaa !876
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3145
  %125 = load ptr, ptr %124, align 8, !dbg !3145, !tbaa !876
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #37, !dbg !3145
  br label %147, !dbg !3146

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.16.135, i32 noundef 5) #37, !dbg !3147
  %129 = load ptr, ptr %4, align 8, !dbg !3147, !tbaa !876
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3147
  %131 = load ptr, ptr %130, align 8, !dbg !3147, !tbaa !876
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3147
  %133 = load ptr, ptr %132, align 8, !dbg !3147, !tbaa !876
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3147
  %135 = load ptr, ptr %134, align 8, !dbg !3147, !tbaa !876
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3147
  %137 = load ptr, ptr %136, align 8, !dbg !3147, !tbaa !876
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3147
  %139 = load ptr, ptr %138, align 8, !dbg !3147, !tbaa !876
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3147
  %141 = load ptr, ptr %140, align 8, !dbg !3147, !tbaa !876
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3147
  %143 = load ptr, ptr %142, align 8, !dbg !3147, !tbaa !876
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3147
  %145 = load ptr, ptr %144, align 8, !dbg !3147, !tbaa !876
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #37, !dbg !3147
  br label %147, !dbg !3148

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3149
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #11 !dbg !3150 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3154, metadata !DIExpression()), !dbg !3160
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3155, metadata !DIExpression()), !dbg !3160
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3156, metadata !DIExpression()), !dbg !3160
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3157, metadata !DIExpression()), !dbg !3160
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3158, metadata !DIExpression()), !dbg !3160
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3159, metadata !DIExpression()), !dbg !3160
  br label %6, !dbg !3161

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3163
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !3159, metadata !DIExpression()), !dbg !3160
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3164
  %9 = load ptr, ptr %8, align 8, !dbg !3164, !tbaa !876
  %10 = icmp eq ptr %9, null, !dbg !3166
  %11 = add i64 %7, 1, !dbg !3167
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3159, metadata !DIExpression()), !dbg !3160
  br i1 %10, label %12, label %6, !dbg !3166, !llvm.loop !3168

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !3170
  ret void, !dbg !3171
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #11 !dbg !3172 {
  %6 = alloca [10 x ptr], align 16, !DIAssignID !3191
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3189, metadata !DIExpression(), metadata !3191, metadata ptr %6, metadata !DIExpression()), !dbg !3192
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3183, metadata !DIExpression()), !dbg !3192
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3184, metadata !DIExpression()), !dbg !3192
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3185, metadata !DIExpression()), !dbg !3192
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3186, metadata !DIExpression()), !dbg !3192
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3187, metadata !DIExpression()), !dbg !3192
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #37, !dbg !3193
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3188, metadata !DIExpression()), !dbg !3192
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3188, metadata !DIExpression()), !dbg !3192
  %10 = icmp ult i32 %9, 41, !dbg !3194
  br i1 %10, label %11, label %16, !dbg !3194

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !3194
  %13 = zext nneg i32 %9 to i64, !dbg !3194
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !3194
  %15 = add nuw nsw i32 %9, 8, !dbg !3194
  store i32 %15, ptr %4, align 8, !dbg !3194
  br label %19, !dbg !3194

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !3194
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !3194
  store ptr %18, ptr %7, align 8, !dbg !3194
  br label %19, !dbg !3194

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !3194
  %22 = load ptr, ptr %21, align 8, !dbg !3194
  store ptr %22, ptr %6, align 16, !dbg !3197, !tbaa !876
  %23 = icmp eq ptr %22, null, !dbg !3198
  br i1 %23, label %128, label %24, !dbg !3199

24:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3188, metadata !DIExpression()), !dbg !3192
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3188, metadata !DIExpression()), !dbg !3192
  %25 = icmp ult i32 %20, 41, !dbg !3194
  br i1 %25, label %29, label %26, !dbg !3194

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !3194
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !3194
  store ptr %28, ptr %7, align 8, !dbg !3194
  br label %34, !dbg !3194

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !3194
  %31 = zext nneg i32 %20 to i64, !dbg !3194
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !3194
  %33 = add nuw nsw i32 %20, 8, !dbg !3194
  store i32 %33, ptr %4, align 8, !dbg !3194
  br label %34, !dbg !3194

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !3194
  %37 = load ptr, ptr %36, align 8, !dbg !3194
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3200
  store ptr %37, ptr %38, align 8, !dbg !3197, !tbaa !876
  %39 = icmp eq ptr %37, null, !dbg !3198
  br i1 %39, label %128, label %40, !dbg !3199

40:                                               ; preds = %34
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3188, metadata !DIExpression()), !dbg !3192
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3188, metadata !DIExpression()), !dbg !3192
  %41 = icmp ult i32 %35, 41, !dbg !3194
  br i1 %41, label %45, label %42, !dbg !3194

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !3194
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !3194
  store ptr %44, ptr %7, align 8, !dbg !3194
  br label %50, !dbg !3194

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !3194
  %47 = zext nneg i32 %35 to i64, !dbg !3194
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !3194
  %49 = add nuw nsw i32 %35, 8, !dbg !3194
  store i32 %49, ptr %4, align 8, !dbg !3194
  br label %50, !dbg !3194

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !3194
  %53 = load ptr, ptr %52, align 8, !dbg !3194
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3200
  store ptr %53, ptr %54, align 16, !dbg !3197, !tbaa !876
  %55 = icmp eq ptr %53, null, !dbg !3198
  br i1 %55, label %128, label %56, !dbg !3199

56:                                               ; preds = %50
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3188, metadata !DIExpression()), !dbg !3192
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3188, metadata !DIExpression()), !dbg !3192
  %57 = icmp ult i32 %51, 41, !dbg !3194
  br i1 %57, label %61, label %58, !dbg !3194

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !3194
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !3194
  store ptr %60, ptr %7, align 8, !dbg !3194
  br label %66, !dbg !3194

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !3194
  %63 = zext nneg i32 %51 to i64, !dbg !3194
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !3194
  %65 = add nuw nsw i32 %51, 8, !dbg !3194
  store i32 %65, ptr %4, align 8, !dbg !3194
  br label %66, !dbg !3194

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !3194
  %69 = load ptr, ptr %68, align 8, !dbg !3194
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3200
  store ptr %69, ptr %70, align 8, !dbg !3197, !tbaa !876
  %71 = icmp eq ptr %69, null, !dbg !3198
  br i1 %71, label %128, label %72, !dbg !3199

72:                                               ; preds = %66
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3188, metadata !DIExpression()), !dbg !3192
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3188, metadata !DIExpression()), !dbg !3192
  %73 = icmp ult i32 %67, 41, !dbg !3194
  br i1 %73, label %77, label %74, !dbg !3194

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !3194
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !3194
  store ptr %76, ptr %7, align 8, !dbg !3194
  br label %82, !dbg !3194

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !3194
  %79 = zext nneg i32 %67 to i64, !dbg !3194
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !3194
  %81 = add nuw nsw i32 %67, 8, !dbg !3194
  store i32 %81, ptr %4, align 8, !dbg !3194
  br label %82, !dbg !3194

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !3194
  %85 = load ptr, ptr %84, align 8, !dbg !3194
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3200
  store ptr %85, ptr %86, align 16, !dbg !3197, !tbaa !876
  %87 = icmp eq ptr %85, null, !dbg !3198
  br i1 %87, label %128, label %88, !dbg !3199

88:                                               ; preds = %82
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3188, metadata !DIExpression()), !dbg !3192
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3188, metadata !DIExpression()), !dbg !3192
  %89 = icmp ult i32 %83, 41, !dbg !3194
  br i1 %89, label %93, label %90, !dbg !3194

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !3194
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !3194
  store ptr %92, ptr %7, align 8, !dbg !3194
  br label %98, !dbg !3194

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !3194
  %95 = zext nneg i32 %83 to i64, !dbg !3194
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !3194
  %97 = add nuw nsw i32 %83, 8, !dbg !3194
  store i32 %97, ptr %4, align 8, !dbg !3194
  br label %98, !dbg !3194

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !3194
  %100 = load ptr, ptr %99, align 8, !dbg !3194
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3200
  store ptr %100, ptr %101, align 8, !dbg !3197, !tbaa !876
  %102 = icmp eq ptr %100, null, !dbg !3198
  br i1 %102, label %128, label %103, !dbg !3199

103:                                              ; preds = %98
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3188, metadata !DIExpression()), !dbg !3192
  %104 = load ptr, ptr %7, align 8, !dbg !3194
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !3194
  store ptr %105, ptr %7, align 8, !dbg !3194
  %106 = load ptr, ptr %104, align 8, !dbg !3194
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3200
  store ptr %106, ptr %107, align 16, !dbg !3197, !tbaa !876
  %108 = icmp eq ptr %106, null, !dbg !3198
  br i1 %108, label %128, label %109, !dbg !3199

109:                                              ; preds = %103
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3188, metadata !DIExpression()), !dbg !3192
  %110 = load ptr, ptr %7, align 8, !dbg !3194
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !3194
  store ptr %111, ptr %7, align 8, !dbg !3194
  %112 = load ptr, ptr %110, align 8, !dbg !3194
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3200
  store ptr %112, ptr %113, align 8, !dbg !3197, !tbaa !876
  %114 = icmp eq ptr %112, null, !dbg !3198
  br i1 %114, label %128, label %115, !dbg !3199

115:                                              ; preds = %109
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3188, metadata !DIExpression()), !dbg !3192
  %116 = load ptr, ptr %7, align 8, !dbg !3194
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !3194
  store ptr %117, ptr %7, align 8, !dbg !3194
  %118 = load ptr, ptr %116, align 8, !dbg !3194
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3200
  store ptr %118, ptr %119, align 16, !dbg !3197, !tbaa !876
  %120 = icmp eq ptr %118, null, !dbg !3198
  br i1 %120, label %128, label %121, !dbg !3199

121:                                              ; preds = %115
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3188, metadata !DIExpression()), !dbg !3192
  %122 = load ptr, ptr %7, align 8, !dbg !3194
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !3194
  store ptr %123, ptr %7, align 8, !dbg !3194
  %124 = load ptr, ptr %122, align 8, !dbg !3194
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3200
  store ptr %124, ptr %125, align 8, !dbg !3197, !tbaa !876
  %126 = icmp eq ptr %124, null, !dbg !3198
  %127 = select i1 %126, i64 9, i64 10, !dbg !3199
  br label %128, !dbg !3199

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !3201
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !3202
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #37, !dbg !3203
  ret void, !dbg !3203
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #11 !dbg !3204 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !3217
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3212, metadata !DIExpression(), metadata !3217, metadata ptr %5, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3208, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3209, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3210, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3211, metadata !DIExpression()), !dbg !3218
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #37, !dbg !3219
  call void @llvm.va_start(ptr nonnull %5), !dbg !3220
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !3221
  call void @llvm.va_end(ptr nonnull %5), !dbg !3222
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #37, !dbg !3223
  ret void, !dbg !3223
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #11 !dbg !3224 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3225, !tbaa !876
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.123, ptr noundef %1), !dbg !3225
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.17.140, i32 noundef 5) #37, !dbg !3226
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.141) #37, !dbg !3226
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.19.142, i32 noundef 5) #37, !dbg !3227
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.143, ptr noundef nonnull @.str.21.144) #37, !dbg !3227
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.22, i32 noundef 5) #37, !dbg !3228
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23) #37, !dbg !3228
  ret void, !dbg !3229
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !3230 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3235, metadata !DIExpression()), !dbg !3238
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3236, metadata !DIExpression()), !dbg !3238
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3237, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata ptr %0, metadata !3239, metadata !DIExpression()), !dbg !3244
  call void @llvm.dbg.value(metadata i64 %1, metadata !3242, metadata !DIExpression()), !dbg !3244
  call void @llvm.dbg.value(metadata i64 %2, metadata !3243, metadata !DIExpression()), !dbg !3244
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3246
  call void @llvm.dbg.value(metadata ptr %4, metadata !3247, metadata !DIExpression()), !dbg !3252
  %5 = icmp eq ptr %4, null, !dbg !3254
  br i1 %5, label %6, label %7, !dbg !3256

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3257
  unreachable, !dbg !3257

7:                                                ; preds = %3
  ret ptr %4, !dbg !3258
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3240 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3239, metadata !DIExpression()), !dbg !3259
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3242, metadata !DIExpression()), !dbg !3259
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3243, metadata !DIExpression()), !dbg !3259
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3260
  call void @llvm.dbg.value(metadata ptr %4, metadata !3247, metadata !DIExpression()), !dbg !3261
  %5 = icmp eq ptr %4, null, !dbg !3263
  br i1 %5, label %6, label %7, !dbg !3264

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3265
  unreachable, !dbg !3265

7:                                                ; preds = %3
  ret ptr %4, !dbg !3266
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3267 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3271, metadata !DIExpression()), !dbg !3272
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3273
  call void @llvm.dbg.value(metadata ptr %2, metadata !3247, metadata !DIExpression()), !dbg !3274
  %3 = icmp eq ptr %2, null, !dbg !3276
  br i1 %3, label %4, label %5, !dbg !3277

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3278
  unreachable, !dbg !3278

5:                                                ; preds = %1
  ret ptr %2, !dbg !3279
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3280 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3281 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3285, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %0, metadata !3287, metadata !DIExpression()), !dbg !3291
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3293
  call void @llvm.dbg.value(metadata ptr %2, metadata !3247, metadata !DIExpression()), !dbg !3294
  %3 = icmp eq ptr %2, null, !dbg !3296
  br i1 %3, label %4, label %5, !dbg !3297

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3298
  unreachable, !dbg !3298

5:                                                ; preds = %1
  ret ptr %2, !dbg !3299
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3300 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3304, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata i64 %0, metadata !3271, metadata !DIExpression()), !dbg !3306
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3308
  call void @llvm.dbg.value(metadata ptr %2, metadata !3247, metadata !DIExpression()), !dbg !3309
  %3 = icmp eq ptr %2, null, !dbg !3311
  br i1 %3, label %4, label %5, !dbg !3312

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3313
  unreachable, !dbg !3313

5:                                                ; preds = %1
  ret ptr %2, !dbg !3314
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3315 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3319, metadata !DIExpression()), !dbg !3321
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3320, metadata !DIExpression()), !dbg !3321
  call void @llvm.dbg.value(metadata ptr %0, metadata !3322, metadata !DIExpression()), !dbg !3327
  call void @llvm.dbg.value(metadata i64 %1, metadata !3326, metadata !DIExpression()), !dbg !3327
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3329
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #43, !dbg !3330
  call void @llvm.dbg.value(metadata ptr %4, metadata !3247, metadata !DIExpression()), !dbg !3331
  %5 = icmp eq ptr %4, null, !dbg !3333
  br i1 %5, label %6, label %7, !dbg !3334

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3335
  unreachable, !dbg !3335

7:                                                ; preds = %2
  ret ptr %4, !dbg !3336
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3337 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3338 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3342, metadata !DIExpression()), !dbg !3344
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3343, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata ptr %0, metadata !3345, metadata !DIExpression()), !dbg !3349
  call void @llvm.dbg.value(metadata i64 %1, metadata !3348, metadata !DIExpression()), !dbg !3349
  call void @llvm.dbg.value(metadata ptr %0, metadata !3322, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.value(metadata i64 %1, metadata !3326, metadata !DIExpression()), !dbg !3351
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3353
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #43, !dbg !3354
  call void @llvm.dbg.value(metadata ptr %4, metadata !3247, metadata !DIExpression()), !dbg !3355
  %5 = icmp eq ptr %4, null, !dbg !3357
  br i1 %5, label %6, label %7, !dbg !3358

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3359
  unreachable, !dbg !3359

7:                                                ; preds = %2
  ret ptr %4, !dbg !3360
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3361 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3365, metadata !DIExpression()), !dbg !3368
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3366, metadata !DIExpression()), !dbg !3368
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3367, metadata !DIExpression()), !dbg !3368
  call void @llvm.dbg.value(metadata ptr %0, metadata !3369, metadata !DIExpression()), !dbg !3374
  call void @llvm.dbg.value(metadata i64 %1, metadata !3372, metadata !DIExpression()), !dbg !3374
  call void @llvm.dbg.value(metadata i64 %2, metadata !3373, metadata !DIExpression()), !dbg !3374
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3376
  call void @llvm.dbg.value(metadata ptr %4, metadata !3247, metadata !DIExpression()), !dbg !3377
  %5 = icmp eq ptr %4, null, !dbg !3379
  br i1 %5, label %6, label %7, !dbg !3380

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3381
  unreachable, !dbg !3381

7:                                                ; preds = %3
  ret ptr %4, !dbg !3382
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3383 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3387, metadata !DIExpression()), !dbg !3389
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3388, metadata !DIExpression()), !dbg !3389
  call void @llvm.dbg.value(metadata ptr null, metadata !3239, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata i64 %0, metadata !3242, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata i64 %1, metadata !3243, metadata !DIExpression()), !dbg !3390
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3392
  call void @llvm.dbg.value(metadata ptr %3, metadata !3247, metadata !DIExpression()), !dbg !3393
  %4 = icmp eq ptr %3, null, !dbg !3395
  br i1 %4, label %5, label %6, !dbg !3396

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3397
  unreachable, !dbg !3397

6:                                                ; preds = %2
  ret ptr %3, !dbg !3398
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3399 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3403, metadata !DIExpression()), !dbg !3405
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3404, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata ptr null, metadata !3365, metadata !DIExpression()), !dbg !3406
  call void @llvm.dbg.value(metadata i64 %0, metadata !3366, metadata !DIExpression()), !dbg !3406
  call void @llvm.dbg.value(metadata i64 %1, metadata !3367, metadata !DIExpression()), !dbg !3406
  call void @llvm.dbg.value(metadata ptr null, metadata !3369, metadata !DIExpression()), !dbg !3408
  call void @llvm.dbg.value(metadata i64 %0, metadata !3372, metadata !DIExpression()), !dbg !3408
  call void @llvm.dbg.value(metadata i64 %1, metadata !3373, metadata !DIExpression()), !dbg !3408
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3410
  call void @llvm.dbg.value(metadata ptr %3, metadata !3247, metadata !DIExpression()), !dbg !3411
  %4 = icmp eq ptr %3, null, !dbg !3413
  br i1 %4, label %5, label %6, !dbg !3414

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3415
  unreachable, !dbg !3415

6:                                                ; preds = %2
  ret ptr %3, !dbg !3416
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #11 !dbg !3417 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3421, metadata !DIExpression()), !dbg !3423
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3422, metadata !DIExpression()), !dbg !3423
  call void @llvm.dbg.value(metadata ptr %0, metadata !811, metadata !DIExpression()), !dbg !3424
  call void @llvm.dbg.value(metadata ptr %1, metadata !812, metadata !DIExpression()), !dbg !3424
  call void @llvm.dbg.value(metadata i64 1, metadata !813, metadata !DIExpression()), !dbg !3424
  %3 = load i64, ptr %1, align 8, !dbg !3426, !tbaa !2490
  call void @llvm.dbg.value(metadata i64 %3, metadata !814, metadata !DIExpression()), !dbg !3424
  %4 = icmp eq ptr %0, null, !dbg !3427
  br i1 %4, label %5, label %8, !dbg !3429

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3430
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3433
  br label %15, !dbg !3433

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3434
  %10 = add nuw i64 %9, 1, !dbg !3434
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3434
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3434
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3434
  call void @llvm.dbg.value(metadata i64 %13, metadata !814, metadata !DIExpression()), !dbg !3424
  br i1 %12, label %14, label %15, !dbg !3437

14:                                               ; preds = %8
  tail call void @xalloc_die() #39, !dbg !3438
  unreachable, !dbg !3438

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3424
  call void @llvm.dbg.value(metadata i64 %16, metadata !814, metadata !DIExpression()), !dbg !3424
  call void @llvm.dbg.value(metadata ptr %0, metadata !3239, metadata !DIExpression()), !dbg !3439
  call void @llvm.dbg.value(metadata i64 %16, metadata !3242, metadata !DIExpression()), !dbg !3439
  call void @llvm.dbg.value(metadata i64 1, metadata !3243, metadata !DIExpression()), !dbg !3439
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #37, !dbg !3441
  call void @llvm.dbg.value(metadata ptr %17, metadata !3247, metadata !DIExpression()), !dbg !3442
  %18 = icmp eq ptr %17, null, !dbg !3444
  br i1 %18, label %19, label %20, !dbg !3445

19:                                               ; preds = %15
  tail call void @xalloc_die() #39, !dbg !3446
  unreachable, !dbg !3446

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !811, metadata !DIExpression()), !dbg !3424
  store i64 %16, ptr %1, align 8, !dbg !3447, !tbaa !2490
  ret ptr %17, !dbg !3448
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #11 !dbg !806 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !811, metadata !DIExpression()), !dbg !3449
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !812, metadata !DIExpression()), !dbg !3449
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !813, metadata !DIExpression()), !dbg !3449
  %4 = load i64, ptr %1, align 8, !dbg !3450, !tbaa !2490
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !814, metadata !DIExpression()), !dbg !3449
  %5 = icmp eq ptr %0, null, !dbg !3451
  br i1 %5, label %6, label %13, !dbg !3452

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3453
  br i1 %7, label %8, label %20, !dbg !3454

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3455
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !814, metadata !DIExpression()), !dbg !3449
  %10 = icmp ugt i64 %2, 128, !dbg !3457
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3458
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !814, metadata !DIExpression()), !dbg !3449
  br label %20, !dbg !3459

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3460
  %15 = add nuw i64 %14, 1, !dbg !3460
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3460
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3460
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3460
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !814, metadata !DIExpression()), !dbg !3449
  br i1 %17, label %19, label %20, !dbg !3461

19:                                               ; preds = %13
  tail call void @xalloc_die() #39, !dbg !3462
  unreachable, !dbg !3462

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3449
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !814, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata ptr %0, metadata !3239, metadata !DIExpression()), !dbg !3463
  call void @llvm.dbg.value(metadata i64 %21, metadata !3242, metadata !DIExpression()), !dbg !3463
  call void @llvm.dbg.value(metadata i64 %2, metadata !3243, metadata !DIExpression()), !dbg !3463
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #37, !dbg !3465
  call void @llvm.dbg.value(metadata ptr %22, metadata !3247, metadata !DIExpression()), !dbg !3466
  %23 = icmp eq ptr %22, null, !dbg !3468
  br i1 %23, label %24, label %25, !dbg !3469

24:                                               ; preds = %20
  tail call void @xalloc_die() #39, !dbg !3470
  unreachable, !dbg !3470

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !811, metadata !DIExpression()), !dbg !3449
  store i64 %21, ptr %1, align 8, !dbg !3471, !tbaa !2490
  ret ptr %22, !dbg !3472
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #11 !dbg !818 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !827, metadata !DIExpression()), !dbg !3473
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !828, metadata !DIExpression()), !dbg !3473
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !829, metadata !DIExpression()), !dbg !3473
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !830, metadata !DIExpression()), !dbg !3473
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !831, metadata !DIExpression()), !dbg !3473
  %6 = load i64, ptr %1, align 8, !dbg !3474, !tbaa !2490
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !832, metadata !DIExpression()), !dbg !3473
  %7 = ashr i64 %6, 1, !dbg !3475
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3475
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3475
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3475
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !833, metadata !DIExpression()), !dbg !3473
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3477
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !833, metadata !DIExpression()), !dbg !3473
  %12 = icmp sgt i64 %3, -1, !dbg !3478
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !3480
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !3480
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !833, metadata !DIExpression()), !dbg !3473
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !3481
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !3481
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !3481
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !834, metadata !DIExpression()), !dbg !3473
  %18 = icmp slt i64 %17, 128, !dbg !3481
  %19 = select i1 %18, i64 128, i64 0, !dbg !3481
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !3481
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !835, metadata !DIExpression()), !dbg !3473
  %21 = icmp eq i64 %20, 0, !dbg !3482
  br i1 %21, label %26, label %22, !dbg !3484

22:                                               ; preds = %5
  %23 = sdiv i64 %20, %4, !dbg !3485
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !833, metadata !DIExpression()), !dbg !3473
  %24 = srem i64 %20, %4, !dbg !3487
  %25 = sub nsw i64 %20, %24, !dbg !3488
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !834, metadata !DIExpression()), !dbg !3473
  br label %26, !dbg !3489

26:                                               ; preds = %22, %5
  %27 = phi i64 [ %23, %22 ], [ %14, %5 ], !dbg !3473
  %28 = phi i64 [ %25, %22 ], [ %17, %5 ], !dbg !3473
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !834, metadata !DIExpression()), !dbg !3473
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !833, metadata !DIExpression()), !dbg !3473
  %29 = icmp eq ptr %0, null, !dbg !3490
  br i1 %29, label %30, label %31, !dbg !3492

30:                                               ; preds = %26
  store i64 0, ptr %1, align 8, !dbg !3493, !tbaa !2490
  br label %31, !dbg !3494

31:                                               ; preds = %30, %26
  %32 = sub nsw i64 %27, %6, !dbg !3495
  %33 = icmp slt i64 %32, %2, !dbg !3497
  br i1 %33, label %34, label %46, !dbg !3498

34:                                               ; preds = %31
  %35 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3499
  %36 = extractvalue { i64, i1 } %35, 1, !dbg !3499
  %37 = extractvalue { i64, i1 } %35, 0, !dbg !3499
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !833, metadata !DIExpression()), !dbg !3473
  %38 = icmp sgt i64 %37, %3
  %39 = select i1 %12, i1 %38, i1 false
  %40 = or i1 %36, %39, !dbg !3500
  br i1 %40, label %45, label %41, !dbg !3500

41:                                               ; preds = %34
  %42 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %37, i64 %4), !dbg !3501
  %43 = extractvalue { i64, i1 } %42, 1, !dbg !3501
  %44 = extractvalue { i64, i1 } %42, 0, !dbg !3501
  tail call void @llvm.dbg.value(metadata i64 %44, metadata !834, metadata !DIExpression()), !dbg !3473
  br i1 %43, label %45, label %46, !dbg !3502

45:                                               ; preds = %41, %34
  tail call void @xalloc_die() #39, !dbg !3503
  unreachable, !dbg !3503

46:                                               ; preds = %41, %31
  %47 = phi i64 [ %37, %41 ], [ %27, %31 ], !dbg !3473
  %48 = phi i64 [ %44, %41 ], [ %28, %31 ], !dbg !3473
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !834, metadata !DIExpression()), !dbg !3473
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !833, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata ptr %0, metadata !3319, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i64 %48, metadata !3320, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata ptr %0, metadata !3322, metadata !DIExpression()), !dbg !3506
  call void @llvm.dbg.value(metadata i64 %48, metadata !3326, metadata !DIExpression()), !dbg !3506
  %49 = tail call i64 @llvm.umax.i64(i64 %48, i64 1), !dbg !3508
  %50 = tail call ptr @realloc(ptr noundef %0, i64 noundef %49) #43, !dbg !3509
  call void @llvm.dbg.value(metadata ptr %50, metadata !3247, metadata !DIExpression()), !dbg !3510
  %51 = icmp eq ptr %50, null, !dbg !3512
  br i1 %51, label %52, label %53, !dbg !3513

52:                                               ; preds = %46
  tail call void @xalloc_die() #39, !dbg !3514
  unreachable, !dbg !3514

53:                                               ; preds = %46
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !827, metadata !DIExpression()), !dbg !3473
  store i64 %47, ptr %1, align 8, !dbg !3515, !tbaa !2490
  ret ptr %50, !dbg !3516
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3517 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3519, metadata !DIExpression()), !dbg !3520
  call void @llvm.dbg.value(metadata i64 %0, metadata !3521, metadata !DIExpression()), !dbg !3525
  call void @llvm.dbg.value(metadata i64 1, metadata !3524, metadata !DIExpression()), !dbg !3525
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !3527
  call void @llvm.dbg.value(metadata ptr %2, metadata !3247, metadata !DIExpression()), !dbg !3528
  %3 = icmp eq ptr %2, null, !dbg !3530
  br i1 %3, label %4, label %5, !dbg !3531

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3532
  unreachable, !dbg !3532

5:                                                ; preds = %1
  ret ptr %2, !dbg !3533
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3534 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3522 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3521, metadata !DIExpression()), !dbg !3535
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3524, metadata !DIExpression()), !dbg !3535
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !3536
  call void @llvm.dbg.value(metadata ptr %3, metadata !3247, metadata !DIExpression()), !dbg !3537
  %4 = icmp eq ptr %3, null, !dbg !3539
  br i1 %4, label %5, label %6, !dbg !3540

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3541
  unreachable, !dbg !3541

6:                                                ; preds = %2
  ret ptr %3, !dbg !3542
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3543 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3545, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata i64 %0, metadata !3547, metadata !DIExpression()), !dbg !3551
  call void @llvm.dbg.value(metadata i64 1, metadata !3550, metadata !DIExpression()), !dbg !3551
  call void @llvm.dbg.value(metadata i64 %0, metadata !3553, metadata !DIExpression()), !dbg !3557
  call void @llvm.dbg.value(metadata i64 1, metadata !3556, metadata !DIExpression()), !dbg !3557
  call void @llvm.dbg.value(metadata i64 %0, metadata !3553, metadata !DIExpression()), !dbg !3557
  call void @llvm.dbg.value(metadata i64 1, metadata !3556, metadata !DIExpression()), !dbg !3557
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !3559
  call void @llvm.dbg.value(metadata ptr %2, metadata !3247, metadata !DIExpression()), !dbg !3560
  %3 = icmp eq ptr %2, null, !dbg !3562
  br i1 %3, label %4, label %5, !dbg !3563

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3564
  unreachable, !dbg !3564

5:                                                ; preds = %1
  ret ptr %2, !dbg !3565
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3548 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3547, metadata !DIExpression()), !dbg !3566
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3550, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i64 %0, metadata !3553, metadata !DIExpression()), !dbg !3567
  call void @llvm.dbg.value(metadata i64 %1, metadata !3556, metadata !DIExpression()), !dbg !3567
  call void @llvm.dbg.value(metadata i64 %0, metadata !3553, metadata !DIExpression()), !dbg !3567
  call void @llvm.dbg.value(metadata i64 %1, metadata !3556, metadata !DIExpression()), !dbg !3567
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !3569
  call void @llvm.dbg.value(metadata ptr %3, metadata !3247, metadata !DIExpression()), !dbg !3570
  %4 = icmp eq ptr %3, null, !dbg !3572
  br i1 %4, label %5, label %6, !dbg !3573

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3574
  unreachable, !dbg !3574

6:                                                ; preds = %2
  ret ptr %3, !dbg !3575
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3576 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3580, metadata !DIExpression()), !dbg !3582
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3581, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata i64 %1, metadata !3271, metadata !DIExpression()), !dbg !3583
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3585
  call void @llvm.dbg.value(metadata ptr %3, metadata !3247, metadata !DIExpression()), !dbg !3586
  %4 = icmp eq ptr %3, null, !dbg !3588
  br i1 %4, label %5, label %6, !dbg !3589

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3590
  unreachable, !dbg !3590

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3591, metadata !DIExpression()), !dbg !3599
  call void @llvm.dbg.value(metadata ptr %0, metadata !3597, metadata !DIExpression()), !dbg !3599
  call void @llvm.dbg.value(metadata i64 %1, metadata !3598, metadata !DIExpression()), !dbg !3599
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3601
  ret ptr %3, !dbg !3602
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3603 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3607, metadata !DIExpression()), !dbg !3609
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3608, metadata !DIExpression()), !dbg !3609
  call void @llvm.dbg.value(metadata i64 %1, metadata !3285, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata i64 %1, metadata !3287, metadata !DIExpression()), !dbg !3612
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3614
  call void @llvm.dbg.value(metadata ptr %3, metadata !3247, metadata !DIExpression()), !dbg !3615
  %4 = icmp eq ptr %3, null, !dbg !3617
  br i1 %4, label %5, label %6, !dbg !3618

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3619
  unreachable, !dbg !3619

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3591, metadata !DIExpression()), !dbg !3620
  call void @llvm.dbg.value(metadata ptr %0, metadata !3597, metadata !DIExpression()), !dbg !3620
  call void @llvm.dbg.value(metadata i64 %1, metadata !3598, metadata !DIExpression()), !dbg !3620
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3622
  ret ptr %3, !dbg !3623
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #11 !dbg !3624 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3628, metadata !DIExpression()), !dbg !3631
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3629, metadata !DIExpression()), !dbg !3631
  %3 = add nsw i64 %1, 1, !dbg !3632
  call void @llvm.dbg.value(metadata i64 %3, metadata !3285, metadata !DIExpression()), !dbg !3633
  call void @llvm.dbg.value(metadata i64 %3, metadata !3287, metadata !DIExpression()), !dbg !3635
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3637
  call void @llvm.dbg.value(metadata ptr %4, metadata !3247, metadata !DIExpression()), !dbg !3638
  %5 = icmp eq ptr %4, null, !dbg !3640
  br i1 %5, label %6, label %7, !dbg !3641

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3642
  unreachable, !dbg !3642

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3630, metadata !DIExpression()), !dbg !3631
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3643
  store i8 0, ptr %8, align 1, !dbg !3644, !tbaa !984
  call void @llvm.dbg.value(metadata ptr %4, metadata !3591, metadata !DIExpression()), !dbg !3645
  call void @llvm.dbg.value(metadata ptr %0, metadata !3597, metadata !DIExpression()), !dbg !3645
  call void @llvm.dbg.value(metadata i64 %1, metadata !3598, metadata !DIExpression()), !dbg !3645
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3647
  ret ptr %4, !dbg !3648
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #11 !dbg !3649 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3651, metadata !DIExpression()), !dbg !3652
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #38, !dbg !3653
  %3 = add i64 %2, 1, !dbg !3654
  call void @llvm.dbg.value(metadata ptr %0, metadata !3580, metadata !DIExpression()), !dbg !3655
  call void @llvm.dbg.value(metadata i64 %3, metadata !3581, metadata !DIExpression()), !dbg !3655
  call void @llvm.dbg.value(metadata i64 %3, metadata !3271, metadata !DIExpression()), !dbg !3657
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3659
  call void @llvm.dbg.value(metadata ptr %4, metadata !3247, metadata !DIExpression()), !dbg !3660
  %5 = icmp eq ptr %4, null, !dbg !3662
  br i1 %5, label %6, label %7, !dbg !3663

6:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3664
  unreachable, !dbg !3664

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3591, metadata !DIExpression()), !dbg !3665
  call void @llvm.dbg.value(metadata ptr %0, metadata !3597, metadata !DIExpression()), !dbg !3665
  call void @llvm.dbg.value(metadata i64 %3, metadata !3598, metadata !DIExpression()), !dbg !3665
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #37, !dbg !3667
  ret ptr %4, !dbg !3668
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3669 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3674, !tbaa !884
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3671, metadata !DIExpression()), !dbg !3675
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.155, ptr noundef nonnull @.str.2.156, i32 noundef 5) #37, !dbg !3674
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.157, ptr noundef %2) #37, !dbg !3674
  %3 = icmp eq i32 %1, 0, !dbg !3674
  tail call void @llvm.assume(i1 %3), !dbg !3674
  tail call void @abort() #39, !dbg !3676
  unreachable, !dbg !3676
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #34

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #11 !dbg !3677 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3715, metadata !DIExpression()), !dbg !3720
  %2 = tail call i64 @__fpending(ptr noundef %0) #37, !dbg !3721
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3716, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3720
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3722, metadata !DIExpression()), !dbg !3725
  %3 = load i32, ptr %0, align 8, !dbg !3727, !tbaa !3728
  %4 = and i32 %3, 32, !dbg !3729
  %5 = icmp eq i32 %4, 0, !dbg !3729
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !3718, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3720
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #37, !dbg !3730
  %7 = icmp eq i32 %6, 0, !dbg !3731
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !3719, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3720
  br i1 %5, label %8, label %18, !dbg !3732

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3734
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !3716, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3720
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3735
  %11 = xor i1 %7, true, !dbg !3735
  %12 = sext i1 %11 to i32, !dbg !3735
  br i1 %10, label %21, label %13, !dbg !3735

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #40, !dbg !3736
  %15 = load i32, ptr %14, align 4, !dbg !3736, !tbaa !884
  %16 = icmp ne i32 %15, 9, !dbg !3737
  %17 = sext i1 %16 to i32, !dbg !3738
  br label %21, !dbg !3738

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3739

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #40, !dbg !3741
  store i32 0, ptr %20, align 4, !dbg !3743, !tbaa !884
  br label %21, !dbg !3741

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3720
  ret i32 %22, !dbg !3744
}

; Function Attrs: nounwind
declare !dbg !3745 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #11 !dbg !3749 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3787, metadata !DIExpression()), !dbg !3791
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3788, metadata !DIExpression()), !dbg !3791
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3792
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3789, metadata !DIExpression()), !dbg !3791
  %3 = icmp slt i32 %2, 0, !dbg !3793
  br i1 %3, label %4, label %6, !dbg !3795

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3796
  br label %24, !dbg !3797

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !3798
  %8 = icmp eq i32 %7, 0, !dbg !3798
  br i1 %8, label %13, label %9, !dbg !3800

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3801
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #37, !dbg !3802
  %12 = icmp eq i64 %11, -1, !dbg !3803
  br i1 %12, label %16, label %13, !dbg !3804

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #37, !dbg !3805
  %15 = icmp eq i32 %14, 0, !dbg !3805
  br i1 %15, label %16, label %18, !dbg !3806

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3788, metadata !DIExpression()), !dbg !3791
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3790, metadata !DIExpression()), !dbg !3791
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3807
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !3790, metadata !DIExpression()), !dbg !3791
  br label %24, !dbg !3808

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #40, !dbg !3809
  %20 = load i32, ptr %19, align 4, !dbg !3809, !tbaa !884
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !3788, metadata !DIExpression()), !dbg !3791
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3790, metadata !DIExpression()), !dbg !3791
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3807
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !3790, metadata !DIExpression()), !dbg !3791
  %22 = icmp eq i32 %20, 0, !dbg !3810
  br i1 %22, label %24, label %23, !dbg !3808

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3812, !tbaa !884
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !3790, metadata !DIExpression()), !dbg !3791
  br label %24, !dbg !3814

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3791
  ret i32 %25, !dbg !3815
}

; Function Attrs: nofree nounwind
declare !dbg !3816 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3817 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !3818 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3819 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #11 !dbg !3822 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3860, metadata !DIExpression()), !dbg !3861
  %2 = icmp eq ptr %0, null, !dbg !3862
  br i1 %2, label %6, label %3, !dbg !3864

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !3865
  %5 = icmp eq i32 %4, 0, !dbg !3865
  br i1 %5, label %6, label %8, !dbg !3866

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3867
  br label %16, !dbg !3868

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3869, metadata !DIExpression()), !dbg !3874
  %9 = load i32, ptr %0, align 8, !dbg !3876, !tbaa !3728
  %10 = and i32 %9, 256, !dbg !3878
  %11 = icmp eq i32 %10, 0, !dbg !3878
  br i1 %11, label %14, label %12, !dbg !3879

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #37, !dbg !3880
  br label %14, !dbg !3880

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3881
  br label %16, !dbg !3882

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3861
  ret i32 %17, !dbg !3883
}

; Function Attrs: nofree nounwind
declare !dbg !3884 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #11 !dbg !3885 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3924, metadata !DIExpression()), !dbg !3930
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3925, metadata !DIExpression()), !dbg !3930
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3926, metadata !DIExpression()), !dbg !3930
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3931
  %5 = load ptr, ptr %4, align 8, !dbg !3931, !tbaa !3932
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3933
  %7 = load ptr, ptr %6, align 8, !dbg !3933, !tbaa !3934
  %8 = icmp eq ptr %5, %7, !dbg !3935
  br i1 %8, label %9, label %27, !dbg !3936

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3937
  %11 = load ptr, ptr %10, align 8, !dbg !3937, !tbaa !1244
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3938
  %13 = load ptr, ptr %12, align 8, !dbg !3938, !tbaa !3939
  %14 = icmp eq ptr %11, %13, !dbg !3940
  br i1 %14, label %15, label %27, !dbg !3941

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3942
  %17 = load ptr, ptr %16, align 8, !dbg !3942, !tbaa !3943
  %18 = icmp eq ptr %17, null, !dbg !3944
  br i1 %18, label %19, label %27, !dbg !3945

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3946
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #37, !dbg !3947
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3927, metadata !DIExpression()), !dbg !3948
  %22 = icmp eq i64 %21, -1, !dbg !3949
  br i1 %22, label %29, label %23, !dbg !3951

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3952, !tbaa !3728
  %25 = and i32 %24, -17, !dbg !3952
  store i32 %25, ptr %0, align 8, !dbg !3952, !tbaa !3728
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3953
  store i64 %21, ptr %26, align 8, !dbg !3954, !tbaa !3955
  br label %29, !dbg !3956

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3957
  br label %29, !dbg !3958

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3930
  ret i32 %30, !dbg !3959
}

; Function Attrs: nofree nounwind
declare !dbg !3960 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #11 !dbg !3963 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3968, metadata !DIExpression()), !dbg !3973
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3969, metadata !DIExpression()), !dbg !3973
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3970, metadata !DIExpression()), !dbg !3973
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3971, metadata !DIExpression()), !dbg !3973
  %5 = icmp eq ptr %1, null, !dbg !3974
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3976
  %7 = select i1 %5, ptr @.str.168, ptr %1, !dbg !3976
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3976
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !3970, metadata !DIExpression()), !dbg !3973
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !3969, metadata !DIExpression()), !dbg !3973
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3968, metadata !DIExpression()), !dbg !3973
  %9 = icmp eq ptr %3, null, !dbg !3977
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !3979
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !3971, metadata !DIExpression()), !dbg !3973
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #37, !dbg !3980
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3972, metadata !DIExpression()), !dbg !3973
  %12 = icmp ult i64 %11, -3, !dbg !3981
  br i1 %12, label %13, label %17, !dbg !3983

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #38, !dbg !3984
  %15 = icmp eq i32 %14, 0, !dbg !3984
  br i1 %15, label %16, label %29, !dbg !3985

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !3986, metadata !DIExpression()), !dbg !3991
  call void @llvm.dbg.value(metadata ptr %10, metadata !3993, metadata !DIExpression()), !dbg !3998
  call void @llvm.dbg.value(metadata i32 0, metadata !3996, metadata !DIExpression()), !dbg !3998
  call void @llvm.dbg.value(metadata i64 8, metadata !3997, metadata !DIExpression()), !dbg !3998
  store i64 0, ptr %10, align 1, !dbg !4000
  br label %29, !dbg !4001

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4002
  br i1 %18, label %19, label %20, !dbg !4004

19:                                               ; preds = %17
  tail call void @abort() #39, !dbg !4005
  unreachable, !dbg !4005

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4006

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #37, !dbg !4008
  br i1 %23, label %29, label %24, !dbg !4009

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4010
  br i1 %25, label %29, label %26, !dbg !4013

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4014, !tbaa !984
  %28 = zext i8 %27 to i32, !dbg !4015
  store i32 %28, ptr %6, align 4, !dbg !4016, !tbaa !884
  br label %29, !dbg !4017

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3973
  ret i64 %30, !dbg !4018
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4019 i32 @mbsinit(ptr noundef) local_unnamed_addr #35

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #36 !dbg !4025 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4027, metadata !DIExpression()), !dbg !4031
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4028, metadata !DIExpression()), !dbg !4031
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4029, metadata !DIExpression()), !dbg !4031
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !4032
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !4032
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !4030, metadata !DIExpression()), !dbg !4031
  br i1 %5, label %6, label %8, !dbg !4034

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #40, !dbg !4035
  store i32 12, ptr %7, align 4, !dbg !4037, !tbaa !884
  br label %12, !dbg !4038

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !4032
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !4030, metadata !DIExpression()), !dbg !4031
  call void @llvm.dbg.value(metadata ptr %0, metadata !4039, metadata !DIExpression()), !dbg !4043
  call void @llvm.dbg.value(metadata i64 %9, metadata !4042, metadata !DIExpression()), !dbg !4043
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !4045
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #43, !dbg !4046
  br label %12, !dbg !4047

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !4031
  ret ptr %13, !dbg !4048
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #11 !dbg !4049 {
  %2 = alloca [257 x i8], align 16, !DIAssignID !4058
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4054, metadata !DIExpression(), metadata !4058, metadata ptr %2, metadata !DIExpression()), !dbg !4059
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4053, metadata !DIExpression()), !dbg !4059
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #37, !dbg !4060
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #37, !dbg !4061
  %4 = icmp eq i32 %3, 0, !dbg !4061
  br i1 %4, label %5, label %12, !dbg !4063

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4064, metadata !DIExpression()), !dbg !4068
  call void @llvm.dbg.value(metadata !1229, metadata !4067, metadata !DIExpression()), !dbg !4068
  %6 = load i16, ptr %2, align 16, !dbg !4071
  %7 = icmp eq i16 %6, 67, !dbg !4071
  br i1 %7, label %11, label %8, !dbg !4072

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4064, metadata !DIExpression()), !dbg !4073
  call void @llvm.dbg.value(metadata ptr @.str.1.173, metadata !4067, metadata !DIExpression()), !dbg !4073
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.173, i64 6), !dbg !4075
  %10 = icmp eq i32 %9, 0, !dbg !4076
  br i1 %10, label %11, label %12, !dbg !4077

11:                                               ; preds = %8, %5
  br label %12, !dbg !4078

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4059
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #37, !dbg !4079
  ret i1 %13, !dbg !4079
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #11 !dbg !4080 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4084, metadata !DIExpression()), !dbg !4087
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4085, metadata !DIExpression()), !dbg !4087
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4086, metadata !DIExpression()), !dbg !4087
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #37, !dbg !4088
  ret i32 %4, !dbg !4089
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #11 !dbg !4090 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4094, metadata !DIExpression()), !dbg !4095
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #37, !dbg !4096
  ret ptr %2, !dbg !4097
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #11 !dbg !4098 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4100, metadata !DIExpression()), !dbg !4102
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !4103
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4101, metadata !DIExpression()), !dbg !4102
  ret ptr %2, !dbg !4104
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #11 !dbg !4105 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4107, metadata !DIExpression()), !dbg !4114
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4108, metadata !DIExpression()), !dbg !4114
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4109, metadata !DIExpression()), !dbg !4114
  call void @llvm.dbg.value(metadata i32 %0, metadata !4100, metadata !DIExpression()), !dbg !4115
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !4117
  call void @llvm.dbg.value(metadata ptr %4, metadata !4101, metadata !DIExpression()), !dbg !4115
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4110, metadata !DIExpression()), !dbg !4114
  %5 = icmp eq ptr %4, null, !dbg !4118
  br i1 %5, label %6, label %9, !dbg !4119

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4120
  br i1 %7, label %19, label %8, !dbg !4123

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4124, !tbaa !984
  br label %19, !dbg !4125

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #38, !dbg !4126
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !4111, metadata !DIExpression()), !dbg !4127
  %11 = icmp ult i64 %10, %2, !dbg !4128
  br i1 %11, label %12, label %14, !dbg !4130

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4131
  call void @llvm.dbg.value(metadata ptr %1, metadata !4133, metadata !DIExpression()), !dbg !4138
  call void @llvm.dbg.value(metadata ptr %4, metadata !4136, metadata !DIExpression()), !dbg !4138
  call void @llvm.dbg.value(metadata i64 %13, metadata !4137, metadata !DIExpression()), !dbg !4138
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #37, !dbg !4140
  br label %19, !dbg !4141

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4142
  br i1 %15, label %19, label %16, !dbg !4145

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4146
  call void @llvm.dbg.value(metadata ptr %1, metadata !4133, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata ptr %4, metadata !4136, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata i64 %17, metadata !4137, metadata !DIExpression()), !dbg !4148
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #37, !dbg !4150
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4151
  store i8 0, ptr %18, align 1, !dbg !4152, !tbaa !984
  br label %19, !dbg !4153

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4154
  ret i32 %20, !dbg !4155
}

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind willreturn memory(argmem: read) }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
attributes #43 = { nounwind allocsize(1) }
attributes #44 = { nounwind allocsize(0) }
attributes #45 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!86, !441, !450, !454, !469, !761, !793, !520, !534, !585, !795, !753, !802, !837, !839, !841, !843, !845, !777, !847, !849, !853, !855}
!llvm.ident = !{!857, !857, !857, !857, !857, !857, !857, !857, !857, !857, !857, !857, !857, !857, !857, !857, !857, !857, !857, !857, !857, !857, !857}
!llvm.module.flags = !{!858, !859, !860, !861, !862, !863, !864}

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
!112 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -130)
!113 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -131)
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
!468 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !469, file: !470, line: 66, type: !515, isLocal: false, isDefinition: true)
!469 = distinct !DICompileUnit(language: DW_LANG_C11, file: !470, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !471, globals: !472, splitDebugInlining: false, nameTableKind: None)
!470 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!471 = !{!122, !121}
!472 = !{!473, !475, !494, !496, !498, !500, !467, !502, !504, !506, !508, !513}
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(scope: null, file: !470, line: 272, type: !24, isLocal: true, isDefinition: true)
!475 = !DIGlobalVariableExpression(var: !476, expr: !DIExpression())
!476 = distinct !DIGlobalVariable(name: "old_file_name", scope: !477, file: !470, line: 304, type: !119, isLocal: true, isDefinition: true)
!477 = distinct !DISubprogram(name: "verror_at_line", scope: !470, file: !470, line: 298, type: !478, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !469, retainedNodes: !487)
!478 = !DISubroutineType(types: !479)
!479 = !{null, !83, !83, !119, !90, !119, !480}
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !482)
!482 = !{!483, !484, !485, !486}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !481, file: !470, baseType: !90, size: 32)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !481, file: !470, baseType: !90, size: 32, offset: 32)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !481, file: !470, baseType: !122, size: 64, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !481, file: !470, baseType: !122, size: 64, offset: 128)
!487 = !{!488, !489, !490, !491, !492, !493}
!488 = !DILocalVariable(name: "status", arg: 1, scope: !477, file: !470, line: 298, type: !83)
!489 = !DILocalVariable(name: "errnum", arg: 2, scope: !477, file: !470, line: 298, type: !83)
!490 = !DILocalVariable(name: "file_name", arg: 3, scope: !477, file: !470, line: 298, type: !119)
!491 = !DILocalVariable(name: "line_number", arg: 4, scope: !477, file: !470, line: 298, type: !90)
!492 = !DILocalVariable(name: "message", arg: 5, scope: !477, file: !470, line: 298, type: !119)
!493 = !DILocalVariable(name: "args", arg: 6, scope: !477, file: !470, line: 298, type: !480)
!494 = !DIGlobalVariableExpression(var: !495, expr: !DIExpression())
!495 = distinct !DIGlobalVariable(name: "old_line_number", scope: !477, file: !470, line: 305, type: !90, isLocal: true, isDefinition: true)
!496 = !DIGlobalVariableExpression(var: !497, expr: !DIExpression())
!497 = distinct !DIGlobalVariable(scope: null, file: !470, line: 338, type: !248, isLocal: true, isDefinition: true)
!498 = !DIGlobalVariableExpression(var: !499, expr: !DIExpression())
!499 = distinct !DIGlobalVariable(scope: null, file: !470, line: 346, type: !280, isLocal: true, isDefinition: true)
!500 = !DIGlobalVariableExpression(var: !501, expr: !DIExpression())
!501 = distinct !DIGlobalVariable(scope: null, file: !470, line: 346, type: !255, isLocal: true, isDefinition: true)
!502 = !DIGlobalVariableExpression(var: !503, expr: !DIExpression())
!503 = distinct !DIGlobalVariable(name: "error_message_count", scope: !469, file: !470, line: 69, type: !90, isLocal: false, isDefinition: true)
!504 = !DIGlobalVariableExpression(var: !505, expr: !DIExpression())
!505 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !469, file: !470, line: 295, type: !83, isLocal: false, isDefinition: true)
!506 = !DIGlobalVariableExpression(var: !507, expr: !DIExpression())
!507 = distinct !DIGlobalVariable(scope: null, file: !470, line: 208, type: !275, isLocal: true, isDefinition: true)
!508 = !DIGlobalVariableExpression(var: !509, expr: !DIExpression())
!509 = distinct !DIGlobalVariable(scope: null, file: !470, line: 208, type: !510, isLocal: true, isDefinition: true)
!510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !511)
!511 = !{!512}
!512 = !DISubrange(count: 21)
!513 = !DIGlobalVariableExpression(var: !514, expr: !DIExpression())
!514 = distinct !DIGlobalVariable(scope: null, file: !470, line: 214, type: !24, isLocal: true, isDefinition: true)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DISubroutineType(types: !517)
!517 = !{null}
!518 = !DIGlobalVariableExpression(var: !519, expr: !DIExpression())
!519 = distinct !DIGlobalVariable(name: "program_name", scope: !520, file: !521, line: 31, type: !119, isLocal: false, isDefinition: true)
!520 = distinct !DICompileUnit(language: DW_LANG_C11, file: !521, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !522, globals: !523, splitDebugInlining: false, nameTableKind: None)
!521 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!522 = !{!122, !85}
!523 = !{!518, !524, !526}
!524 = !DIGlobalVariableExpression(var: !525, expr: !DIExpression())
!525 = distinct !DIGlobalVariable(scope: null, file: !521, line: 46, type: !280, isLocal: true, isDefinition: true)
!526 = !DIGlobalVariableExpression(var: !527, expr: !DIExpression())
!527 = distinct !DIGlobalVariable(scope: null, file: !521, line: 49, type: !248, isLocal: true, isDefinition: true)
!528 = !DIGlobalVariableExpression(var: !529, expr: !DIExpression())
!529 = distinct !DIGlobalVariable(name: "utf07FF", scope: !530, file: !531, line: 46, type: !558, isLocal: true, isDefinition: true)
!530 = distinct !DISubprogram(name: "proper_name_lite", scope: !531, file: !531, line: 38, type: !532, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !534, retainedNodes: !536)
!531 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!532 = !DISubroutineType(types: !533)
!533 = !{!119, !119, !119}
!534 = distinct !DICompileUnit(language: DW_LANG_C11, file: !531, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !535, splitDebugInlining: false, nameTableKind: None)
!535 = !{!528}
!536 = !{!537, !538, !539, !540, !545}
!537 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !530, file: !531, line: 38, type: !119)
!538 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !530, file: !531, line: 38, type: !119)
!539 = !DILocalVariable(name: "translation", scope: !530, file: !531, line: 40, type: !119)
!540 = !DILocalVariable(name: "w", scope: !530, file: !531, line: 47, type: !541)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !542, line: 37, baseType: !543)
!542 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !211, line: 57, baseType: !544)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !211, line: 42, baseType: !90)
!545 = !DILocalVariable(name: "mbs", scope: !530, file: !531, line: 48, type: !546)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !547, line: 6, baseType: !548)
!547 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !549, line: 21, baseType: !550)
!549 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !549, line: 13, size: 64, elements: !551)
!551 = !{!552, !553}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !550, file: !549, line: 15, baseType: !83, size: 32)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !550, file: !549, line: 20, baseType: !554, size: 32, offset: 32)
!554 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !550, file: !549, line: 16, size: 32, elements: !555)
!555 = !{!556, !557}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !554, file: !549, line: 18, baseType: !90, size: 32)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !554, file: !549, line: 19, baseType: !248, size: 32)
!558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 16, elements: !256)
!559 = !DIGlobalVariableExpression(var: !560, expr: !DIExpression())
!560 = distinct !DIGlobalVariable(scope: null, file: !561, line: 78, type: !280, isLocal: true, isDefinition: true)
!561 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!562 = !DIGlobalVariableExpression(var: !563, expr: !DIExpression())
!563 = distinct !DIGlobalVariable(scope: null, file: !561, line: 79, type: !19, isLocal: true, isDefinition: true)
!564 = !DIGlobalVariableExpression(var: !565, expr: !DIExpression())
!565 = distinct !DIGlobalVariable(scope: null, file: !561, line: 80, type: !566, isLocal: true, isDefinition: true)
!566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !567)
!567 = !{!568}
!568 = !DISubrange(count: 13)
!569 = !DIGlobalVariableExpression(var: !570, expr: !DIExpression())
!570 = distinct !DIGlobalVariable(scope: null, file: !561, line: 81, type: !566, isLocal: true, isDefinition: true)
!571 = !DIGlobalVariableExpression(var: !572, expr: !DIExpression())
!572 = distinct !DIGlobalVariable(scope: null, file: !561, line: 82, type: !233, isLocal: true, isDefinition: true)
!573 = !DIGlobalVariableExpression(var: !574, expr: !DIExpression())
!574 = distinct !DIGlobalVariable(scope: null, file: !561, line: 83, type: !255, isLocal: true, isDefinition: true)
!575 = !DIGlobalVariableExpression(var: !576, expr: !DIExpression())
!576 = distinct !DIGlobalVariable(scope: null, file: !561, line: 84, type: !280, isLocal: true, isDefinition: true)
!577 = !DIGlobalVariableExpression(var: !578, expr: !DIExpression())
!578 = distinct !DIGlobalVariable(scope: null, file: !561, line: 85, type: !275, isLocal: true, isDefinition: true)
!579 = !DIGlobalVariableExpression(var: !580, expr: !DIExpression())
!580 = distinct !DIGlobalVariable(scope: null, file: !561, line: 86, type: !275, isLocal: true, isDefinition: true)
!581 = !DIGlobalVariableExpression(var: !582, expr: !DIExpression())
!582 = distinct !DIGlobalVariable(scope: null, file: !561, line: 87, type: !280, isLocal: true, isDefinition: true)
!583 = !DIGlobalVariableExpression(var: !584, expr: !DIExpression())
!584 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !585, file: !561, line: 76, type: !671, isLocal: false, isDefinition: true)
!585 = distinct !DICompileUnit(language: DW_LANG_C11, file: !561, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !586, retainedTypes: !606, globals: !607, splitDebugInlining: false, nameTableKind: None)
!586 = !{!587, !601, !94}
!587 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !588, line: 42, baseType: !90, size: 32, elements: !589)
!588 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!589 = !{!590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600}
!590 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!591 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!592 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!593 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!594 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!595 = !DIEnumerator(name: "c_quoting_style", value: 5)
!596 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!597 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!598 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!599 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!600 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!601 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !588, line: 254, baseType: !90, size: 32, elements: !602)
!602 = !{!603, !604, !605}
!603 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!604 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!605 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!606 = !{!122, !83, !115, !116}
!607 = !{!559, !562, !564, !569, !571, !573, !575, !577, !579, !581, !583, !608, !612, !622, !624, !629, !631, !633, !635, !637, !660, !667, !669}
!608 = !DIGlobalVariableExpression(var: !609, expr: !DIExpression())
!609 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !585, file: !561, line: 92, type: !610, isLocal: false, isDefinition: true)
!610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !611, size: 320, elements: !132)
!611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !587)
!612 = !DIGlobalVariableExpression(var: !613, expr: !DIExpression())
!613 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !585, file: !561, line: 1040, type: !614, isLocal: false, isDefinition: true)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !561, line: 56, size: 448, elements: !615)
!615 = !{!616, !617, !618, !620, !621}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !614, file: !561, line: 59, baseType: !587, size: 32)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !614, file: !561, line: 62, baseType: !83, size: 32, offset: 32)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !614, file: !561, line: 66, baseType: !619, size: 256, offset: 64)
!619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 256, elements: !281)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !614, file: !561, line: 69, baseType: !119, size: 64, offset: 320)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !614, file: !561, line: 72, baseType: !119, size: 64, offset: 384)
!622 = !DIGlobalVariableExpression(var: !623, expr: !DIExpression())
!623 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !585, file: !561, line: 107, type: !614, isLocal: true, isDefinition: true)
!624 = !DIGlobalVariableExpression(var: !625, expr: !DIExpression())
!625 = distinct !DIGlobalVariable(name: "slot0", scope: !585, file: !561, line: 831, type: !626, isLocal: true, isDefinition: true)
!626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !627)
!627 = !{!628}
!628 = !DISubrange(count: 256)
!629 = !DIGlobalVariableExpression(var: !630, expr: !DIExpression())
!630 = distinct !DIGlobalVariable(scope: null, file: !561, line: 321, type: !255, isLocal: true, isDefinition: true)
!631 = !DIGlobalVariableExpression(var: !632, expr: !DIExpression())
!632 = distinct !DIGlobalVariable(scope: null, file: !561, line: 357, type: !255, isLocal: true, isDefinition: true)
!633 = !DIGlobalVariableExpression(var: !634, expr: !DIExpression())
!634 = distinct !DIGlobalVariable(scope: null, file: !561, line: 358, type: !255, isLocal: true, isDefinition: true)
!635 = !DIGlobalVariableExpression(var: !636, expr: !DIExpression())
!636 = distinct !DIGlobalVariable(scope: null, file: !561, line: 199, type: !275, isLocal: true, isDefinition: true)
!637 = !DIGlobalVariableExpression(var: !638, expr: !DIExpression())
!638 = distinct !DIGlobalVariable(name: "quote", scope: !639, file: !561, line: 228, type: !658, isLocal: true, isDefinition: true)
!639 = distinct !DISubprogram(name: "gettext_quote", scope: !561, file: !561, line: 197, type: !640, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !642)
!640 = !DISubroutineType(types: !641)
!641 = !{!119, !119, !587}
!642 = !{!643, !644, !645, !646, !647}
!643 = !DILocalVariable(name: "msgid", arg: 1, scope: !639, file: !561, line: 197, type: !119)
!644 = !DILocalVariable(name: "s", arg: 2, scope: !639, file: !561, line: 197, type: !587)
!645 = !DILocalVariable(name: "translation", scope: !639, file: !561, line: 199, type: !119)
!646 = !DILocalVariable(name: "w", scope: !639, file: !561, line: 229, type: !541)
!647 = !DILocalVariable(name: "mbs", scope: !639, file: !561, line: 230, type: !648)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !547, line: 6, baseType: !649)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !549, line: 21, baseType: !650)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !549, line: 13, size: 64, elements: !651)
!651 = !{!652, !653}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !650, file: !549, line: 15, baseType: !83, size: 32)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !650, file: !549, line: 20, baseType: !654, size: 32, offset: 32)
!654 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !650, file: !549, line: 16, size: 32, elements: !655)
!655 = !{!656, !657}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !654, file: !549, line: 18, baseType: !90, size: 32)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !654, file: !549, line: 19, baseType: !248, size: 32)
!658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 64, elements: !659)
!659 = !{!257, !250}
!660 = !DIGlobalVariableExpression(var: !661, expr: !DIExpression())
!661 = distinct !DIGlobalVariable(name: "slotvec", scope: !585, file: !561, line: 834, type: !662, isLocal: true, isDefinition: true)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !561, line: 823, size: 128, elements: !664)
!664 = !{!665, !666}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !663, file: !561, line: 825, baseType: !116, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !663, file: !561, line: 826, baseType: !85, size: 64, offset: 64)
!667 = !DIGlobalVariableExpression(var: !668, expr: !DIExpression())
!668 = distinct !DIGlobalVariable(name: "nslots", scope: !585, file: !561, line: 832, type: !83, isLocal: true, isDefinition: true)
!669 = !DIGlobalVariableExpression(var: !670, expr: !DIExpression())
!670 = distinct !DIGlobalVariable(name: "slotvec0", scope: !585, file: !561, line: 833, type: !663, isLocal: true, isDefinition: true)
!671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !672, size: 704, elements: !673)
!672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!673 = !{!674}
!674 = !DISubrange(count: 11)
!675 = !DIGlobalVariableExpression(var: !676, expr: !DIExpression())
!676 = distinct !DIGlobalVariable(scope: null, file: !677, line: 67, type: !348, isLocal: true, isDefinition: true)
!677 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!678 = !DIGlobalVariableExpression(var: !679, expr: !DIExpression())
!679 = distinct !DIGlobalVariable(scope: null, file: !677, line: 69, type: !275, isLocal: true, isDefinition: true)
!680 = !DIGlobalVariableExpression(var: !681, expr: !DIExpression())
!681 = distinct !DIGlobalVariable(scope: null, file: !677, line: 83, type: !275, isLocal: true, isDefinition: true)
!682 = !DIGlobalVariableExpression(var: !683, expr: !DIExpression())
!683 = distinct !DIGlobalVariable(scope: null, file: !677, line: 83, type: !248, isLocal: true, isDefinition: true)
!684 = !DIGlobalVariableExpression(var: !685, expr: !DIExpression())
!685 = distinct !DIGlobalVariable(scope: null, file: !677, line: 85, type: !255, isLocal: true, isDefinition: true)
!686 = !DIGlobalVariableExpression(var: !687, expr: !DIExpression())
!687 = distinct !DIGlobalVariable(scope: null, file: !677, line: 88, type: !688, isLocal: true, isDefinition: true)
!688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !689)
!689 = !{!690}
!690 = !DISubrange(count: 171)
!691 = !DIGlobalVariableExpression(var: !692, expr: !DIExpression())
!692 = distinct !DIGlobalVariable(scope: null, file: !677, line: 88, type: !693, isLocal: true, isDefinition: true)
!693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !694)
!694 = !{!695}
!695 = !DISubrange(count: 34)
!696 = !DIGlobalVariableExpression(var: !697, expr: !DIExpression())
!697 = distinct !DIGlobalVariable(scope: null, file: !677, line: 105, type: !322, isLocal: true, isDefinition: true)
!698 = !DIGlobalVariableExpression(var: !699, expr: !DIExpression())
!699 = distinct !DIGlobalVariable(scope: null, file: !677, line: 109, type: !9, isLocal: true, isDefinition: true)
!700 = !DIGlobalVariableExpression(var: !701, expr: !DIExpression())
!701 = distinct !DIGlobalVariable(scope: null, file: !677, line: 113, type: !702, isLocal: true, isDefinition: true)
!702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !703)
!703 = !{!704}
!704 = !DISubrange(count: 28)
!705 = !DIGlobalVariableExpression(var: !706, expr: !DIExpression())
!706 = distinct !DIGlobalVariable(scope: null, file: !677, line: 120, type: !707, isLocal: true, isDefinition: true)
!707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !708)
!708 = !{!709}
!709 = !DISubrange(count: 32)
!710 = !DIGlobalVariableExpression(var: !711, expr: !DIExpression())
!711 = distinct !DIGlobalVariable(scope: null, file: !677, line: 127, type: !712, isLocal: true, isDefinition: true)
!712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !713)
!713 = !{!714}
!714 = !DISubrange(count: 36)
!715 = !DIGlobalVariableExpression(var: !716, expr: !DIExpression())
!716 = distinct !DIGlobalVariable(scope: null, file: !677, line: 134, type: !302, isLocal: true, isDefinition: true)
!717 = !DIGlobalVariableExpression(var: !718, expr: !DIExpression())
!718 = distinct !DIGlobalVariable(scope: null, file: !677, line: 142, type: !719, isLocal: true, isDefinition: true)
!719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !720)
!720 = !{!721}
!721 = !DISubrange(count: 44)
!722 = !DIGlobalVariableExpression(var: !723, expr: !DIExpression())
!723 = distinct !DIGlobalVariable(scope: null, file: !677, line: 150, type: !724, isLocal: true, isDefinition: true)
!724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !725)
!725 = !{!726}
!726 = !DISubrange(count: 48)
!727 = !DIGlobalVariableExpression(var: !728, expr: !DIExpression())
!728 = distinct !DIGlobalVariable(scope: null, file: !677, line: 159, type: !729, isLocal: true, isDefinition: true)
!729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !730)
!730 = !{!731}
!731 = !DISubrange(count: 52)
!732 = !DIGlobalVariableExpression(var: !733, expr: !DIExpression())
!733 = distinct !DIGlobalVariable(scope: null, file: !677, line: 170, type: !39, isLocal: true, isDefinition: true)
!734 = !DIGlobalVariableExpression(var: !735, expr: !DIExpression())
!735 = distinct !DIGlobalVariable(scope: null, file: !677, line: 248, type: !233, isLocal: true, isDefinition: true)
!736 = !DIGlobalVariableExpression(var: !737, expr: !DIExpression())
!737 = distinct !DIGlobalVariable(scope: null, file: !677, line: 248, type: !327, isLocal: true, isDefinition: true)
!738 = !DIGlobalVariableExpression(var: !739, expr: !DIExpression())
!739 = distinct !DIGlobalVariable(scope: null, file: !677, line: 254, type: !233, isLocal: true, isDefinition: true)
!740 = !DIGlobalVariableExpression(var: !741, expr: !DIExpression())
!741 = distinct !DIGlobalVariable(scope: null, file: !677, line: 254, type: !143, isLocal: true, isDefinition: true)
!742 = !DIGlobalVariableExpression(var: !743, expr: !DIExpression())
!743 = distinct !DIGlobalVariable(scope: null, file: !677, line: 254, type: !302, isLocal: true, isDefinition: true)
!744 = !DIGlobalVariableExpression(var: !745, expr: !DIExpression())
!745 = distinct !DIGlobalVariable(scope: null, file: !677, line: 259, type: !3, isLocal: true, isDefinition: true)
!746 = !DIGlobalVariableExpression(var: !747, expr: !DIExpression())
!747 = distinct !DIGlobalVariable(scope: null, file: !677, line: 259, type: !748, isLocal: true, isDefinition: true)
!748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !749)
!749 = !{!750}
!750 = !DISubrange(count: 29)
!751 = !DIGlobalVariableExpression(var: !752, expr: !DIExpression())
!752 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !753, file: !754, line: 26, type: !756, isLocal: false, isDefinition: true)
!753 = distinct !DICompileUnit(language: DW_LANG_C11, file: !754, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !755, splitDebugInlining: false, nameTableKind: None)
!754 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!755 = !{!751}
!756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 376, elements: !757)
!757 = !{!758}
!758 = !DISubrange(count: 47)
!759 = !DIGlobalVariableExpression(var: !760, expr: !DIExpression())
!760 = distinct !DIGlobalVariable(name: "exit_failure", scope: !761, file: !762, line: 24, type: !764, isLocal: false, isDefinition: true)
!761 = distinct !DICompileUnit(language: DW_LANG_C11, file: !762, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !763, splitDebugInlining: false, nameTableKind: None)
!762 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!763 = !{!759}
!764 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !83)
!765 = !DIGlobalVariableExpression(var: !766, expr: !DIExpression())
!766 = distinct !DIGlobalVariable(scope: null, file: !767, line: 34, type: !264, isLocal: true, isDefinition: true)
!767 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!768 = !DIGlobalVariableExpression(var: !769, expr: !DIExpression())
!769 = distinct !DIGlobalVariable(scope: null, file: !767, line: 34, type: !275, isLocal: true, isDefinition: true)
!770 = !DIGlobalVariableExpression(var: !771, expr: !DIExpression())
!771 = distinct !DIGlobalVariable(scope: null, file: !767, line: 34, type: !297, isLocal: true, isDefinition: true)
!772 = !DIGlobalVariableExpression(var: !773, expr: !DIExpression())
!773 = distinct !DIGlobalVariable(scope: null, file: !774, line: 108, type: !126, isLocal: true, isDefinition: true)
!774 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!775 = !DIGlobalVariableExpression(var: !776, expr: !DIExpression())
!776 = distinct !DIGlobalVariable(name: "internal_state", scope: !777, file: !774, line: 97, type: !780, isLocal: true, isDefinition: true)
!777 = distinct !DICompileUnit(language: DW_LANG_C11, file: !774, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !778, globals: !779, splitDebugInlining: false, nameTableKind: None)
!778 = !{!122, !116, !121}
!779 = !{!772, !775}
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !547, line: 6, baseType: !781)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !549, line: 21, baseType: !782)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !549, line: 13, size: 64, elements: !783)
!783 = !{!784, !785}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !782, file: !549, line: 15, baseType: !83, size: 32)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !782, file: !549, line: 20, baseType: !786, size: 32, offset: 32)
!786 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !782, file: !549, line: 16, size: 32, elements: !787)
!787 = !{!788, !789}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !786, file: !549, line: 18, baseType: !90, size: 32)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !786, file: !549, line: 19, baseType: !248, size: 32)
!790 = !DIGlobalVariableExpression(var: !791, expr: !DIExpression())
!791 = distinct !DIGlobalVariable(scope: null, file: !792, line: 35, type: !19, isLocal: true, isDefinition: true)
!792 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!793 = distinct !DICompileUnit(language: DW_LANG_C11, file: !794, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!794 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!795 = distinct !DICompileUnit(language: DW_LANG_C11, file: !677, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !796, retainedTypes: !800, globals: !801, splitDebugInlining: false, nameTableKind: None)
!796 = !{!797}
!797 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !677, line: 40, baseType: !90, size: 32, elements: !798)
!798 = !{!799}
!799 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!800 = !{!122}
!801 = !{!675, !678, !680, !682, !684, !686, !691, !696, !698, !700, !705, !710, !715, !717, !722, !727, !732, !734, !736, !738, !740, !742, !744, !746}
!802 = distinct !DICompileUnit(language: DW_LANG_C11, file: !803, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !804, retainedTypes: !836, splitDebugInlining: false, nameTableKind: None)
!803 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!804 = !{!805, !817}
!805 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !806, file: !803, line: 188, baseType: !90, size: 32, elements: !815)
!806 = distinct !DISubprogram(name: "x2nrealloc", scope: !803, file: !803, line: 176, type: !807, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !802, retainedNodes: !810)
!807 = !DISubroutineType(types: !808)
!808 = !{!122, !122, !809, !116}
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!810 = !{!811, !812, !813, !814}
!811 = !DILocalVariable(name: "p", arg: 1, scope: !806, file: !803, line: 176, type: !122)
!812 = !DILocalVariable(name: "pn", arg: 2, scope: !806, file: !803, line: 176, type: !809)
!813 = !DILocalVariable(name: "s", arg: 3, scope: !806, file: !803, line: 176, type: !116)
!814 = !DILocalVariable(name: "n", scope: !806, file: !803, line: 178, type: !116)
!815 = !{!816}
!816 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!817 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !818, file: !803, line: 228, baseType: !90, size: 32, elements: !815)
!818 = distinct !DISubprogram(name: "xpalloc", scope: !803, file: !803, line: 223, type: !819, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !802, retainedNodes: !826)
!819 = !DISubroutineType(types: !820)
!820 = !{!122, !122, !821, !822, !824, !822}
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !823, line: 130, baseType: !824)
!823 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !825, line: 18, baseType: !212)
!825 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!826 = !{!827, !828, !829, !830, !831, !832, !833, !834, !835}
!827 = !DILocalVariable(name: "pa", arg: 1, scope: !818, file: !803, line: 223, type: !122)
!828 = !DILocalVariable(name: "pn", arg: 2, scope: !818, file: !803, line: 223, type: !821)
!829 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !818, file: !803, line: 223, type: !822)
!830 = !DILocalVariable(name: "n_max", arg: 4, scope: !818, file: !803, line: 223, type: !824)
!831 = !DILocalVariable(name: "s", arg: 5, scope: !818, file: !803, line: 223, type: !822)
!832 = !DILocalVariable(name: "n0", scope: !818, file: !803, line: 230, type: !822)
!833 = !DILocalVariable(name: "n", scope: !818, file: !803, line: 237, type: !822)
!834 = !DILocalVariable(name: "nbytes", scope: !818, file: !803, line: 248, type: !822)
!835 = !DILocalVariable(name: "adjusted_nbytes", scope: !818, file: !803, line: 252, type: !822)
!836 = !{!85, !122}
!837 = distinct !DICompileUnit(language: DW_LANG_C11, file: !767, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !838, splitDebugInlining: false, nameTableKind: None)
!838 = !{!765, !768, !770}
!839 = distinct !DICompileUnit(language: DW_LANG_C11, file: !840, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!840 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!841 = distinct !DICompileUnit(language: DW_LANG_C11, file: !842, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!842 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!843 = distinct !DICompileUnit(language: DW_LANG_C11, file: !844, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !800, splitDebugInlining: false, nameTableKind: None)
!844 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!845 = distinct !DICompileUnit(language: DW_LANG_C11, file: !846, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !800, splitDebugInlining: false, nameTableKind: None)
!846 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!847 = distinct !DICompileUnit(language: DW_LANG_C11, file: !848, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !800, splitDebugInlining: false, nameTableKind: None)
!848 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!849 = distinct !DICompileUnit(language: DW_LANG_C11, file: !792, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !850, splitDebugInlining: false, nameTableKind: None)
!850 = !{!851, !790}
!851 = !DIGlobalVariableExpression(var: !852, expr: !DIExpression())
!852 = distinct !DIGlobalVariable(scope: null, file: !792, line: 35, type: !255, isLocal: true, isDefinition: true)
!853 = distinct !DICompileUnit(language: DW_LANG_C11, file: !854, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!854 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!855 = distinct !DICompileUnit(language: DW_LANG_C11, file: !856, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !800, splitDebugInlining: false, nameTableKind: None)
!856 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!857 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!858 = !{i32 7, !"Dwarf Version", i32 5}
!859 = !{i32 2, !"Debug Info Version", i32 3}
!860 = !{i32 1, !"wchar_size", i32 4}
!861 = !{i32 8, !"PIC Level", i32 2}
!862 = !{i32 7, !"PIE Level", i32 2}
!863 = !{i32 7, !"uwtable", i32 2}
!864 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
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
!884 = !{!885, !885, i64 0}
!885 = !{!"int", !878, i64 0}
!886 = !DILocation(line: 116, column: 22, scope: !883)
!887 = !DILocation(line: 116, column: 11, scope: !881)
!888 = !DILocation(line: 118, column: 11, scope: !889)
!889 = distinct !DILexicalBlock(scope: !883, file: !2, line: 117, column: 9)
!890 = !DILocation(line: 122, column: 11, scope: !889)
!891 = !DILocation(line: 126, column: 11, scope: !889)
!892 = !DILocation(line: 129, column: 11, scope: !889)
!893 = !DILocation(line: 132, column: 11, scope: !889)
!894 = !DILocation(line: 135, column: 11, scope: !889)
!895 = !DILocation(line: 138, column: 11, scope: !889)
!896 = !DILocation(line: 141, column: 11, scope: !889)
!897 = !DILocation(line: 144, column: 11, scope: !889)
!898 = !DILocation(line: 147, column: 11, scope: !889)
!899 = !DILocation(line: 150, column: 9, scope: !889)
!900 = !DILocation(line: 153, column: 11, scope: !901)
!901 = distinct !DILexicalBlock(scope: !883, file: !2, line: 152, column: 9)
!902 = !DILocation(line: 159, column: 7, scope: !881)
!903 = !DILocation(line: 160, column: 7, scope: !881)
!904 = !DILocation(line: 161, column: 28, scope: !881)
!905 = !DILocalVariable(name: "infomap", scope: !906, file: !110, line: 838, type: !919)
!906 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !110, file: !110, line: 836, type: !411, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !86, retainedNodes: !907)
!907 = !{!908, !905, !909, !910, !917, !918}
!908 = !DILocalVariable(name: "program", arg: 1, scope: !906, file: !110, line: 836, type: !119)
!909 = !DILocalVariable(name: "node", scope: !906, file: !110, line: 848, type: !119)
!910 = !DILocalVariable(name: "map_prog", scope: !906, file: !110, line: 849, type: !911)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !913)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !906, file: !110, line: 838, size: 128, elements: !914)
!914 = !{!915, !916}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !913, file: !110, line: 838, baseType: !119, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !913, file: !110, line: 838, baseType: !119, size: 64, offset: 64)
!917 = !DILocalVariable(name: "lc_messages", scope: !906, file: !110, line: 861, type: !119)
!918 = !DILocalVariable(name: "url_program", scope: !906, file: !110, line: 874, type: !119)
!919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !912, size: 896, elements: !276)
!920 = distinct !DIAssignID()
!921 = !DILocation(line: 0, scope: !906, inlinedAt: !922)
!922 = distinct !DILocation(line: 161, column: 7, scope: !881)
!923 = distinct !DIAssignID()
!924 = !DILocalVariable(name: "__s1", arg: 1, scope: !925, file: !926, line: 1359, type: !119)
!925 = distinct !DISubprogram(name: "streq", scope: !926, file: !926, line: 1359, type: !927, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !86, retainedNodes: !929)
!926 = !DIFile(filename: "./lib/string.h", directory: "/src")
!927 = !DISubroutineType(types: !928)
!928 = !{!171, !119, !119}
!929 = !{!924, !930}
!930 = !DILocalVariable(name: "__s2", arg: 2, scope: !925, file: !926, line: 1359, type: !119)
!931 = !DILocation(line: 0, scope: !925, inlinedAt: !932)
!932 = distinct !DILocation(line: 851, column: 33, scope: !906, inlinedAt: !922)
!933 = !DILocation(line: 1361, column: 11, scope: !925, inlinedAt: !932)
!934 = !DILocation(line: 1361, column: 10, scope: !925, inlinedAt: !932)
!935 = !DILocation(line: 851, column: 3, scope: !906, inlinedAt: !922)
!936 = !DILocation(line: 854, column: 17, scope: !937, inlinedAt: !922)
!937 = distinct !DILexicalBlock(scope: !906, file: !110, line: 854, column: 7)
!938 = !{!939, !877, i64 8}
!939 = !{!"infomap", !877, i64 0, !877, i64 8}
!940 = !DILocation(line: 857, column: 3, scope: !906, inlinedAt: !922)
!941 = !DILocation(line: 861, column: 29, scope: !906, inlinedAt: !922)
!942 = !DILocation(line: 862, column: 7, scope: !943, inlinedAt: !922)
!943 = distinct !DILexicalBlock(scope: !906, file: !110, line: 862, column: 7)
!944 = !DILocation(line: 862, column: 19, scope: !943, inlinedAt: !922)
!945 = !DILocation(line: 862, column: 22, scope: !943, inlinedAt: !922)
!946 = !DILocation(line: 862, column: 7, scope: !906, inlinedAt: !922)
!947 = !DILocation(line: 868, column: 7, scope: !948, inlinedAt: !922)
!948 = distinct !DILexicalBlock(scope: !943, file: !110, line: 863, column: 5)
!949 = !DILocation(line: 870, column: 5, scope: !948, inlinedAt: !922)
!950 = !DILocation(line: 854, column: 7, scope: !937, inlinedAt: !922)
!951 = !DILocation(line: 854, column: 7, scope: !906, inlinedAt: !922)
!952 = !DILocation(line: 0, scope: !925, inlinedAt: !953)
!953 = distinct !DILocation(line: 874, column: 29, scope: !906, inlinedAt: !922)
!954 = !DILocation(line: 874, column: 29, scope: !906, inlinedAt: !922)
!955 = !DILocation(line: 875, column: 3, scope: !906, inlinedAt: !922)
!956 = !DILocation(line: 877, column: 3, scope: !906, inlinedAt: !922)
!957 = !DILocation(line: 163, column: 3, scope: !865)
!958 = !DISubprogram(name: "dcgettext", scope: !959, file: !959, line: 51, type: !960, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!959 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!960 = !DISubroutineType(types: !961)
!961 = !{!85, !119, !119, !83}
!962 = !DISubprogram(name: "__fprintf_chk", scope: !963, file: !963, line: 93, type: !964, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!963 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!964 = !DISubroutineType(types: !965)
!965 = !{!83, !966, !83, !967, null}
!966 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !184)
!967 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !119)
!968 = !DISubprogram(name: "__printf_chk", scope: !963, file: !963, line: 95, type: !969, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!969 = !DISubroutineType(types: !970)
!970 = !{!83, !83, !967, null}
!971 = !DISubprogram(name: "fputs_unlocked", scope: !972, file: !972, line: 691, type: !973, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!972 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!973 = !DISubroutineType(types: !974)
!974 = !{!83, !967, !966}
!975 = !DILocation(line: 0, scope: !161)
!976 = !DILocation(line: 581, column: 7, scope: !169)
!977 = !DILocation(line: 581, column: 19, scope: !169)
!978 = !DILocation(line: 581, column: 7, scope: !161)
!979 = !DILocation(line: 585, column: 26, scope: !168)
!980 = !DILocation(line: 0, scope: !168)
!981 = !DILocation(line: 586, column: 23, scope: !168)
!982 = !DILocation(line: 586, column: 28, scope: !168)
!983 = !DILocation(line: 586, column: 32, scope: !168)
!984 = !{!878, !878, i64 0}
!985 = !DILocation(line: 586, column: 38, scope: !168)
!986 = !DILocation(line: 0, scope: !925, inlinedAt: !987)
!987 = distinct !DILocation(line: 586, column: 41, scope: !168)
!988 = !DILocation(line: 1361, column: 11, scope: !925, inlinedAt: !987)
!989 = !DILocation(line: 1361, column: 10, scope: !925, inlinedAt: !987)
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
!1047 = !DILocation(line: 0, scope: !925, inlinedAt: !1048)
!1048 = distinct !DILocation(line: 648, column: 31, scope: !161)
!1049 = !DILocation(line: 1361, column: 11, scope: !925, inlinedAt: !1048)
!1050 = !DILocation(line: 1361, column: 10, scope: !925, inlinedAt: !1048)
!1051 = !DILocation(line: 648, column: 31, scope: !161)
!1052 = !DILocation(line: 0, scope: !925, inlinedAt: !1053)
!1053 = distinct !DILocation(line: 649, column: 31, scope: !161)
!1054 = !DILocation(line: 1361, column: 11, scope: !925, inlinedAt: !1053)
!1055 = !DILocation(line: 1361, column: 10, scope: !925, inlinedAt: !1053)
!1056 = !DILocation(line: 649, column: 31, scope: !161)
!1057 = !DILocation(line: 0, scope: !925, inlinedAt: !1058)
!1058 = distinct !DILocation(line: 650, column: 31, scope: !161)
!1059 = !DILocation(line: 1361, column: 11, scope: !925, inlinedAt: !1058)
!1060 = !DILocation(line: 1361, column: 10, scope: !925, inlinedAt: !1058)
!1061 = !DILocation(line: 650, column: 31, scope: !161)
!1062 = !DILocation(line: 0, scope: !925, inlinedAt: !1063)
!1063 = distinct !DILocation(line: 651, column: 31, scope: !161)
!1064 = !DILocation(line: 1361, column: 11, scope: !925, inlinedAt: !1063)
!1065 = !DILocation(line: 1361, column: 10, scope: !925, inlinedAt: !1063)
!1066 = !DILocation(line: 651, column: 31, scope: !161)
!1067 = !DILocation(line: 0, scope: !925, inlinedAt: !1068)
!1068 = distinct !DILocation(line: 652, column: 31, scope: !161)
!1069 = !DILocation(line: 1361, column: 11, scope: !925, inlinedAt: !1068)
!1070 = !DILocation(line: 1361, column: 10, scope: !925, inlinedAt: !1068)
!1071 = !DILocation(line: 652, column: 31, scope: !161)
!1072 = !DILocation(line: 0, scope: !925, inlinedAt: !1073)
!1073 = distinct !DILocation(line: 653, column: 31, scope: !161)
!1074 = !DILocation(line: 1361, column: 11, scope: !925, inlinedAt: !1073)
!1075 = !DILocation(line: 1361, column: 10, scope: !925, inlinedAt: !1073)
!1076 = !DILocation(line: 653, column: 31, scope: !161)
!1077 = !DILocation(line: 0, scope: !925, inlinedAt: !1078)
!1078 = distinct !DILocation(line: 654, column: 31, scope: !161)
!1079 = !DILocation(line: 1361, column: 11, scope: !925, inlinedAt: !1078)
!1080 = !DILocation(line: 1361, column: 10, scope: !925, inlinedAt: !1078)
!1081 = !DILocation(line: 654, column: 31, scope: !161)
!1082 = !DILocation(line: 0, scope: !925, inlinedAt: !1083)
!1083 = distinct !DILocation(line: 655, column: 31, scope: !161)
!1084 = !DILocation(line: 1361, column: 11, scope: !925, inlinedAt: !1083)
!1085 = !DILocation(line: 1361, column: 10, scope: !925, inlinedAt: !1083)
!1086 = !DILocation(line: 655, column: 31, scope: !161)
!1087 = !DILocation(line: 0, scope: !925, inlinedAt: !1088)
!1088 = distinct !DILocation(line: 656, column: 31, scope: !161)
!1089 = !DILocation(line: 1361, column: 11, scope: !925, inlinedAt: !1088)
!1090 = !DILocation(line: 1361, column: 10, scope: !925, inlinedAt: !1088)
!1091 = !DILocation(line: 656, column: 31, scope: !161)
!1092 = !DILocation(line: 0, scope: !925, inlinedAt: !1093)
!1093 = distinct !DILocation(line: 657, column: 31, scope: !161)
!1094 = !DILocation(line: 1361, column: 11, scope: !925, inlinedAt: !1093)
!1095 = !DILocation(line: 1361, column: 10, scope: !925, inlinedAt: !1093)
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
!1114 = !DISubprogram(name: "strcmp", scope: !1115, file: !1115, line: 156, type: !1116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1115 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!83, !119, !119}
!1118 = !DISubprogram(name: "setlocale", scope: !1119, file: !1119, line: 122, type: !1120, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1119 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!85, !83, !119}
!1122 = !DISubprogram(name: "strncmp", scope: !1115, file: !1115, line: 159, type: !1123, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{!83, !119, !119, !116}
!1125 = !DISubprogram(name: "exit", scope: !1126, file: !1126, line: 624, type: !866, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1126 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1127 = !DISubprogram(name: "getenv", scope: !1126, file: !1126, line: 641, type: !1128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{!85, !119}
!1130 = !DISubprogram(name: "strspn", scope: !1115, file: !1115, line: 297, type: !1131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!118, !119, !119}
!1133 = !DISubprogram(name: "strchr", scope: !1115, file: !1115, line: 246, type: !1134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{!85, !119, !83}
!1136 = !DISubprogram(name: "__ctype_b_loc", scope: !95, file: !95, line: 79, type: !1137, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!1139}
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!1142 = !DISubprogram(name: "strcspn", scope: !1115, file: !1115, line: 293, type: !1131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1143 = !DISubprogram(name: "fwrite_unlocked", scope: !972, file: !972, line: 704, type: !1144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!116, !1146, !116, !116, !966}
!1146 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1147)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1149 = distinct !DIAssignID()
!1150 = !DILocation(line: 0, scope: !420)
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
!1199 = distinct !{!1199, !1180, !1200, !1015}
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
!1211 = !DILocation(line: 306, column: 7, scope: !80)
!1212 = !DILocation(line: 310, column: 8, scope: !421)
!1213 = !DILocation(line: 309, column: 7, scope: !80)
!1214 = !DILocation(line: 313, column: 7, scope: !420)
!1215 = !DILocation(line: 315, column: 11, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !420, file: !2, line: 315, column: 11)
!1217 = !DILocation(line: 315, column: 25, scope: !1216)
!1218 = !DILocation(line: 315, column: 11, scope: !420)
!1219 = !DILocation(line: 316, column: 9, scope: !1216)
!1220 = !DILocation(line: 318, column: 19, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !420, file: !2, line: 318, column: 11)
!1222 = !DILocation(line: 318, column: 11, scope: !420)
!1223 = !DILocalVariable(name: "element", arg: 1, scope: !1224, file: !2, line: 184, type: !119)
!1224 = distinct !DISubprogram(name: "print_element_env", scope: !2, file: !2, line: 184, type: !162, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !86, retainedNodes: !1225)
!1225 = !{!1223, !1226}
!1226 = !DILocalVariable(name: "envvar", arg: 2, scope: !1224, file: !2, line: 184, type: !119)
!1227 = !DILocation(line: 0, scope: !1224, inlinedAt: !1228)
!1228 = distinct !DILocation(line: 319, column: 9, scope: !1221)
!1229 = !{}
!1230 = !DILocation(line: 0, scope: !410, inlinedAt: !1231)
!1231 = distinct !DILocation(line: 194, column: 3, scope: !1224, inlinedAt: !1228)
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
!1245 = !{!"_IO_FILE", !885, i64 0, !877, i64 8, !877, i64 16, !877, i64 24, !877, i64 32, !877, i64 40, !877, i64 48, !877, i64 56, !877, i64 64, !877, i64 72, !877, i64 80, !877, i64 88, !877, i64 96, !877, i64 104, !885, i64 112, !885, i64 116, !1246, i64 120, !1010, i64 128, !878, i64 130, !878, i64 131, !877, i64 136, !1246, i64 144, !877, i64 152, !877, i64 160, !877, i64 168, !877, i64 176, !1246, i64 184, !885, i64 192, !878, i64 196}
!1246 = !{!"long", !878, i64 0}
!1247 = !{!1245, !877, i64 48}
!1248 = !{!"branch_weights", i32 2000, i32 1}
!1249 = !DILocation(line: 175, column: 11, scope: !410, inlinedAt: !1231)
!1250 = !DILocation(line: 176, column: 3, scope: !410, inlinedAt: !1231)
!1251 = !DILocation(line: 319, column: 9, scope: !1221)
!1252 = !DILocation(line: 320, column: 19, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !420, file: !2, line: 320, column: 11)
!1254 = !DILocation(line: 320, column: 11, scope: !420)
!1255 = !DILocation(line: 321, column: 33, scope: !1253)
!1256 = !DILocation(line: 0, scope: !1224, inlinedAt: !1257)
!1257 = distinct !DILocation(line: 321, column: 9, scope: !1253)
!1258 = !DILocation(line: 0, scope: !410, inlinedAt: !1259)
!1259 = distinct !DILocation(line: 194, column: 3, scope: !1224, inlinedAt: !1257)
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
!1272 = !DILocation(line: 0, scope: !1224, inlinedAt: !1273)
!1273 = distinct !DILocation(line: 323, column: 9, scope: !1269)
!1274 = !DILocation(line: 0, scope: !410, inlinedAt: !1275)
!1275 = distinct !DILocation(line: 194, column: 3, scope: !1224, inlinedAt: !1273)
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
!1288 = !DILocation(line: 0, scope: !1224, inlinedAt: !1289)
!1289 = distinct !DILocation(line: 325, column: 9, scope: !1285)
!1290 = !DILocation(line: 0, scope: !410, inlinedAt: !1291)
!1291 = distinct !DILocation(line: 194, column: 3, scope: !1224, inlinedAt: !1289)
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
!1304 = !DILocation(line: 0, scope: !1224, inlinedAt: !1305)
!1305 = distinct !DILocation(line: 327, column: 9, scope: !1301)
!1306 = !DILocation(line: 0, scope: !410, inlinedAt: !1307)
!1307 = distinct !DILocation(line: 194, column: 3, scope: !1224, inlinedAt: !1305)
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
!1319 = !DILocation(line: 0, scope: !432)
!1320 = !DILocation(line: 330, column: 7, scope: !80)
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
!1333 = !DILocation(line: 0, scope: !435)
!1334 = !DILocation(line: 364, column: 7, scope: !80)
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
!1363 = !DISubprogram(name: "bindtextdomain", scope: !959, file: !959, line: 86, type: !1364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!85, !119, !119}
!1366 = !DISubprogram(name: "textdomain", scope: !959, file: !959, line: 82, type: !1128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1367 = !DISubprogram(name: "atexit", scope: !1126, file: !1126, line: 602, type: !1368, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{!83, !515}
!1370 = !DISubprogram(name: "getopt_long", scope: !370, file: !370, line: 66, type: !1371, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{!83, !83, !1373, !119, !1375, !375}
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!1376 = !DISubprogram(name: "uname", scope: !423, file: !423, line: 81, type: !1377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!83, !1379}
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!1380 = !DISubprogram(name: "__errno_location", scope: !1381, file: !1381, line: 37, type: !1382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1381 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1382 = !DISubroutineType(types: !1383)
!1383 = !{!375}
!1384 = !DISubprogram(name: "__overflow", scope: !972, file: !972, line: 886, type: !1385, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
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
!1403 = distinct !DISubprogram(name: "close_stdout", scope: !455, file: !455, line: 116, type: !516, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !1404)
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
!1436 = !DISubprogram(name: "_exit", scope: !1437, file: !1437, line: 624, type: !866, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
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
!1456 = distinct !DISubprogram(name: "flush_stdout", scope: !470, file: !470, line: 163, type: !516, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !469, retainedNodes: !1457)
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
!1477 = distinct !DIAssignID()
!1478 = !DILocation(line: 0, scope: !1471)
!1479 = !DILocation(line: 229, column: 13, scope: !1471)
!1480 = !DILocalVariable(name: "__stream", arg: 1, scope: !1481, file: !963, line: 132, type: !1484)
!1481 = distinct !DISubprogram(name: "vfprintf", scope: !963, file: !963, line: 132, type: !1482, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !469, retainedNodes: !1519)
!1482 = !DISubroutineType(types: !1483)
!1483 = !{!83, !1484, !967, !480}
!1484 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1485)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !186, line: 7, baseType: !1487)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !188, line: 49, size: 1728, elements: !1488)
!1488 = !{!1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1487, file: !188, line: 51, baseType: !83, size: 32)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1487, file: !188, line: 54, baseType: !85, size: 64, offset: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1487, file: !188, line: 55, baseType: !85, size: 64, offset: 128)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1487, file: !188, line: 56, baseType: !85, size: 64, offset: 192)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1487, file: !188, line: 57, baseType: !85, size: 64, offset: 256)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1487, file: !188, line: 58, baseType: !85, size: 64, offset: 320)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1487, file: !188, line: 59, baseType: !85, size: 64, offset: 384)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1487, file: !188, line: 60, baseType: !85, size: 64, offset: 448)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1487, file: !188, line: 61, baseType: !85, size: 64, offset: 512)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1487, file: !188, line: 64, baseType: !85, size: 64, offset: 576)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1487, file: !188, line: 65, baseType: !85, size: 64, offset: 640)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1487, file: !188, line: 66, baseType: !85, size: 64, offset: 704)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1487, file: !188, line: 68, baseType: !203, size: 64, offset: 768)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1487, file: !188, line: 70, baseType: !1503, size: 64, offset: 832)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1487, file: !188, line: 72, baseType: !83, size: 32, offset: 896)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1487, file: !188, line: 73, baseType: !83, size: 32, offset: 928)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1487, file: !188, line: 74, baseType: !210, size: 64, offset: 960)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1487, file: !188, line: 77, baseType: !115, size: 16, offset: 1024)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1487, file: !188, line: 78, baseType: !215, size: 8, offset: 1040)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1487, file: !188, line: 79, baseType: !126, size: 8, offset: 1048)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1487, file: !188, line: 81, baseType: !218, size: 64, offset: 1088)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1487, file: !188, line: 89, baseType: !221, size: 64, offset: 1152)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1487, file: !188, line: 91, baseType: !223, size: 64, offset: 1216)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1487, file: !188, line: 92, baseType: !226, size: 64, offset: 1280)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1487, file: !188, line: 93, baseType: !1503, size: 64, offset: 1344)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1487, file: !188, line: 94, baseType: !122, size: 64, offset: 1408)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1487, file: !188, line: 95, baseType: !116, size: 64, offset: 1472)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1487, file: !188, line: 96, baseType: !83, size: 32, offset: 1536)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1487, file: !188, line: 98, baseType: !233, size: 160, offset: 1568)
!1519 = !{!1480, !1520, !1521}
!1520 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1481, file: !963, line: 133, type: !967)
!1521 = !DILocalVariable(name: "__ap", arg: 3, scope: !1481, file: !963, line: 133, type: !480)
!1522 = !DILocation(line: 0, scope: !1481, inlinedAt: !1523)
!1523 = distinct !DILocation(line: 229, column: 3, scope: !1471)
!1524 = !DILocation(line: 135, column: 10, scope: !1481, inlinedAt: !1523)
!1525 = !DILocation(line: 232, column: 3, scope: !1471)
!1526 = !DILocation(line: 233, column: 7, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1471, file: !470, line: 233, column: 7)
!1528 = !DILocation(line: 233, column: 7, scope: !1471)
!1529 = !DILocalVariable(name: "errbuf", scope: !1530, file: !470, line: 193, type: !1534)
!1530 = distinct !DISubprogram(name: "print_errno_message", scope: !470, file: !470, line: 188, type: !866, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !469, retainedNodes: !1531)
!1531 = !{!1532, !1533, !1529}
!1532 = !DILocalVariable(name: "errnum", arg: 1, scope: !1530, file: !470, line: 188, type: !83)
!1533 = !DILocalVariable(name: "s", scope: !1530, file: !470, line: 190, type: !119)
!1534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1535)
!1535 = !{!1536}
!1536 = !DISubrange(count: 1024)
!1537 = !DILocation(line: 0, scope: !1530, inlinedAt: !1538)
!1538 = distinct !DILocation(line: 234, column: 5, scope: !1527)
!1539 = !DILocation(line: 193, column: 3, scope: !1530, inlinedAt: !1538)
!1540 = !DILocation(line: 195, column: 7, scope: !1530, inlinedAt: !1538)
!1541 = !DILocation(line: 207, column: 9, scope: !1542, inlinedAt: !1538)
!1542 = distinct !DILexicalBlock(scope: !1530, file: !470, line: 207, column: 7)
!1543 = !DILocation(line: 207, column: 7, scope: !1530, inlinedAt: !1538)
!1544 = !DILocation(line: 208, column: 9, scope: !1542, inlinedAt: !1538)
!1545 = !DILocation(line: 208, column: 5, scope: !1542, inlinedAt: !1538)
!1546 = !DILocation(line: 214, column: 3, scope: !1530, inlinedAt: !1538)
!1547 = !DILocation(line: 216, column: 1, scope: !1530, inlinedAt: !1538)
!1548 = !DILocation(line: 234, column: 5, scope: !1527)
!1549 = !DILocation(line: 238, column: 3, scope: !1471)
!1550 = !DILocalVariable(name: "__c", arg: 1, scope: !1551, file: !1237, line: 101, type: !83)
!1551 = distinct !DISubprogram(name: "putc_unlocked", scope: !1237, file: !1237, line: 101, type: !1552, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !469, retainedNodes: !1554)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{!83, !83, !1485}
!1554 = !{!1550, !1555}
!1555 = !DILocalVariable(name: "__stream", arg: 2, scope: !1551, file: !1237, line: 101, type: !1485)
!1556 = !DILocation(line: 0, scope: !1551, inlinedAt: !1557)
!1557 = distinct !DILocation(line: 238, column: 3, scope: !1471)
!1558 = !DILocation(line: 103, column: 10, scope: !1551, inlinedAt: !1557)
!1559 = !DILocation(line: 240, column: 3, scope: !1471)
!1560 = !DILocation(line: 241, column: 7, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1471, file: !470, line: 241, column: 7)
!1562 = !DILocation(line: 241, column: 7, scope: !1471)
!1563 = !DILocation(line: 242, column: 5, scope: !1561)
!1564 = !DILocation(line: 243, column: 1, scope: !1471)
!1565 = !DISubprogram(name: "__vfprintf_chk", scope: !963, file: !963, line: 96, type: !1566, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{!83, !1484, !83, !967, !480}
!1568 = !DISubprogram(name: "strerror_r", scope: !1115, file: !1115, line: 444, type: !1569, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!85, !83, !85, !116}
!1571 = !DISubprogram(name: "fflush_unlocked", scope: !972, file: !972, line: 239, type: !1572, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!83, !1485}
!1574 = !DISubprogram(name: "fcntl", scope: !1575, file: !1575, line: 149, type: !1576, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
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
!1586 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !972, line: 52, baseType: !1587)
!1587 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1588, line: 12, baseType: !1589)
!1588 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!1589 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !470, baseType: !1590)
!1590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !481, size: 192, elements: !127)
!1591 = distinct !DIAssignID()
!1592 = !DILocation(line: 0, scope: !1578)
!1593 = !DILocation(line: 287, column: 3, scope: !1578)
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
!1638 = distinct !DIAssignID()
!1639 = !DILocation(line: 0, scope: !1628)
!1640 = !DILocation(line: 362, column: 3, scope: !1628)
!1641 = !DILocation(line: 363, column: 3, scope: !1628)
!1642 = !DILocation(line: 364, column: 3, scope: !1628)
!1643 = !DILocation(line: 366, column: 3, scope: !1628)
!1644 = !DILocation(line: 367, column: 1, scope: !1628)
!1645 = distinct !DISubprogram(name: "getprogname", scope: !794, file: !794, line: 54, type: !1646, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !793)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!119}
!1648 = !DILocation(line: 58, column: 10, scope: !1645)
!1649 = !DILocation(line: 58, column: 3, scope: !1645)
!1650 = distinct !DISubprogram(name: "set_program_name", scope: !521, file: !521, line: 37, type: !411, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !520, retainedNodes: !1651)
!1651 = !{!1652, !1653, !1654}
!1652 = !DILocalVariable(name: "argv0", arg: 1, scope: !1650, file: !521, line: 37, type: !119)
!1653 = !DILocalVariable(name: "slash", scope: !1650, file: !521, line: 44, type: !119)
!1654 = !DILocalVariable(name: "base", scope: !1650, file: !521, line: 45, type: !119)
!1655 = !DILocation(line: 0, scope: !1650)
!1656 = !DILocation(line: 44, column: 23, scope: !1650)
!1657 = !DILocation(line: 45, column: 22, scope: !1650)
!1658 = !DILocation(line: 46, column: 17, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1650, file: !521, line: 46, column: 7)
!1660 = !DILocation(line: 46, column: 9, scope: !1659)
!1661 = !DILocation(line: 46, column: 25, scope: !1659)
!1662 = !DILocation(line: 46, column: 40, scope: !1659)
!1663 = !DILocalVariable(name: "__s1", arg: 1, scope: !1664, file: !926, line: 974, type: !1147)
!1664 = distinct !DISubprogram(name: "memeq", scope: !926, file: !926, line: 974, type: !1665, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !520, retainedNodes: !1667)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!171, !1147, !1147, !116}
!1667 = !{!1663, !1668, !1669}
!1668 = !DILocalVariable(name: "__s2", arg: 2, scope: !1664, file: !926, line: 974, type: !1147)
!1669 = !DILocalVariable(name: "__n", arg: 3, scope: !1664, file: !926, line: 974, type: !116)
!1670 = !DILocation(line: 0, scope: !1664, inlinedAt: !1671)
!1671 = distinct !DILocation(line: 46, column: 28, scope: !1659)
!1672 = !DILocation(line: 976, column: 11, scope: !1664, inlinedAt: !1671)
!1673 = !DILocation(line: 976, column: 10, scope: !1664, inlinedAt: !1671)
!1674 = !DILocation(line: 46, column: 7, scope: !1650)
!1675 = !DILocation(line: 49, column: 11, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1677, file: !521, line: 49, column: 11)
!1677 = distinct !DILexicalBlock(scope: !1659, file: !521, line: 47, column: 5)
!1678 = !DILocation(line: 49, column: 36, scope: !1676)
!1679 = !DILocation(line: 49, column: 11, scope: !1677)
!1680 = !DILocation(line: 65, column: 16, scope: !1650)
!1681 = !DILocation(line: 71, column: 27, scope: !1650)
!1682 = !DILocation(line: 74, column: 33, scope: !1650)
!1683 = !DILocation(line: 76, column: 1, scope: !1650)
!1684 = !DISubprogram(name: "strrchr", scope: !1115, file: !1115, line: 273, type: !1134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1685 = distinct !DIAssignID()
!1686 = !DILocation(line: 0, scope: !530)
!1687 = distinct !DIAssignID()
!1688 = !DILocation(line: 40, column: 29, scope: !530)
!1689 = !DILocation(line: 41, column: 19, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !530, file: !531, line: 41, column: 7)
!1691 = !DILocation(line: 41, column: 7, scope: !530)
!1692 = !DILocation(line: 47, column: 3, scope: !530)
!1693 = !DILocation(line: 48, column: 3, scope: !530)
!1694 = !DILocalVariable(name: "ps", arg: 1, scope: !1695, file: !1696, line: 1135, type: !1699)
!1695 = distinct !DISubprogram(name: "mbszero", scope: !1696, file: !1696, line: 1135, type: !1697, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !534, retainedNodes: !1700)
!1696 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1697 = !DISubroutineType(types: !1698)
!1698 = !{null, !1699}
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!1700 = !{!1694}
!1701 = !DILocation(line: 0, scope: !1695, inlinedAt: !1702)
!1702 = distinct !DILocation(line: 48, column: 18, scope: !530)
!1703 = !DILocalVariable(name: "__dest", arg: 1, scope: !1704, file: !1705, line: 57, type: !122)
!1704 = distinct !DISubprogram(name: "memset", scope: !1705, file: !1705, line: 57, type: !1706, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !534, retainedNodes: !1708)
!1705 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1706 = !DISubroutineType(types: !1707)
!1707 = !{!122, !122, !83, !116}
!1708 = !{!1703, !1709, !1710}
!1709 = !DILocalVariable(name: "__ch", arg: 2, scope: !1704, file: !1705, line: 57, type: !83)
!1710 = !DILocalVariable(name: "__len", arg: 3, scope: !1704, file: !1705, line: 57, type: !116)
!1711 = !DILocation(line: 0, scope: !1704, inlinedAt: !1712)
!1712 = distinct !DILocation(line: 1137, column: 3, scope: !1695, inlinedAt: !1702)
!1713 = !DILocation(line: 59, column: 10, scope: !1704, inlinedAt: !1712)
!1714 = !DILocation(line: 49, column: 7, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !530, file: !531, line: 49, column: 7)
!1716 = !DILocation(line: 49, column: 39, scope: !1715)
!1717 = !DILocation(line: 49, column: 44, scope: !1715)
!1718 = !DILocation(line: 54, column: 1, scope: !530)
!1719 = !DISubprogram(name: "mbrtoc32", scope: !542, file: !542, line: 57, type: !1720, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1720 = !DISubroutineType(types: !1721)
!1721 = !{!116, !1722, !967, !116, !1724}
!1722 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1723)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!1724 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1699)
!1725 = distinct !DISubprogram(name: "clone_quoting_options", scope: !561, file: !561, line: 113, type: !1726, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !1729)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{!1728, !1728}
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!1729 = !{!1730, !1731, !1732}
!1730 = !DILocalVariable(name: "o", arg: 1, scope: !1725, file: !561, line: 113, type: !1728)
!1731 = !DILocalVariable(name: "saved_errno", scope: !1725, file: !561, line: 115, type: !83)
!1732 = !DILocalVariable(name: "p", scope: !1725, file: !561, line: 116, type: !1728)
!1733 = !DILocation(line: 0, scope: !1725)
!1734 = !DILocation(line: 115, column: 21, scope: !1725)
!1735 = !DILocation(line: 116, column: 40, scope: !1725)
!1736 = !DILocation(line: 116, column: 31, scope: !1725)
!1737 = !DILocation(line: 118, column: 9, scope: !1725)
!1738 = !DILocation(line: 119, column: 3, scope: !1725)
!1739 = distinct !DISubprogram(name: "get_quoting_style", scope: !561, file: !561, line: 124, type: !1740, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !1744)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{!587, !1742}
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !614)
!1744 = !{!1745}
!1745 = !DILocalVariable(name: "o", arg: 1, scope: !1739, file: !561, line: 124, type: !1742)
!1746 = !DILocation(line: 0, scope: !1739)
!1747 = !DILocation(line: 126, column: 11, scope: !1739)
!1748 = !DILocation(line: 126, column: 46, scope: !1739)
!1749 = !{!1750, !885, i64 0}
!1750 = !{!"quoting_options", !885, i64 0, !885, i64 4, !878, i64 8, !877, i64 40, !877, i64 48}
!1751 = !DILocation(line: 126, column: 3, scope: !1739)
!1752 = distinct !DISubprogram(name: "set_quoting_style", scope: !561, file: !561, line: 132, type: !1753, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !1755)
!1753 = !DISubroutineType(types: !1754)
!1754 = !{null, !1728, !587}
!1755 = !{!1756, !1757}
!1756 = !DILocalVariable(name: "o", arg: 1, scope: !1752, file: !561, line: 132, type: !1728)
!1757 = !DILocalVariable(name: "s", arg: 2, scope: !1752, file: !561, line: 132, type: !587)
!1758 = !DILocation(line: 0, scope: !1752)
!1759 = !DILocation(line: 134, column: 4, scope: !1752)
!1760 = !DILocation(line: 134, column: 45, scope: !1752)
!1761 = !DILocation(line: 135, column: 1, scope: !1752)
!1762 = distinct !DISubprogram(name: "set_char_quoting", scope: !561, file: !561, line: 143, type: !1763, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !1765)
!1763 = !DISubroutineType(types: !1764)
!1764 = !{!83, !1728, !4, !83}
!1765 = !{!1766, !1767, !1768, !1769, !1770, !1772, !1773}
!1766 = !DILocalVariable(name: "o", arg: 1, scope: !1762, file: !561, line: 143, type: !1728)
!1767 = !DILocalVariable(name: "c", arg: 2, scope: !1762, file: !561, line: 143, type: !4)
!1768 = !DILocalVariable(name: "i", arg: 3, scope: !1762, file: !561, line: 143, type: !83)
!1769 = !DILocalVariable(name: "uc", scope: !1762, file: !561, line: 145, type: !121)
!1770 = !DILocalVariable(name: "p", scope: !1762, file: !561, line: 146, type: !1771)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!1772 = !DILocalVariable(name: "shift", scope: !1762, file: !561, line: 148, type: !83)
!1773 = !DILocalVariable(name: "r", scope: !1762, file: !561, line: 149, type: !90)
!1774 = !DILocation(line: 0, scope: !1762)
!1775 = !DILocation(line: 147, column: 6, scope: !1762)
!1776 = !DILocation(line: 147, column: 41, scope: !1762)
!1777 = !DILocation(line: 147, column: 62, scope: !1762)
!1778 = !DILocation(line: 147, column: 57, scope: !1762)
!1779 = !DILocation(line: 148, column: 15, scope: !1762)
!1780 = !DILocation(line: 149, column: 21, scope: !1762)
!1781 = !DILocation(line: 149, column: 24, scope: !1762)
!1782 = !DILocation(line: 149, column: 34, scope: !1762)
!1783 = !DILocation(line: 150, column: 19, scope: !1762)
!1784 = !DILocation(line: 150, column: 24, scope: !1762)
!1785 = !DILocation(line: 150, column: 6, scope: !1762)
!1786 = !DILocation(line: 151, column: 3, scope: !1762)
!1787 = distinct !DISubprogram(name: "set_quoting_flags", scope: !561, file: !561, line: 159, type: !1788, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !1790)
!1788 = !DISubroutineType(types: !1789)
!1789 = !{!83, !1728, !83}
!1790 = !{!1791, !1792, !1793}
!1791 = !DILocalVariable(name: "o", arg: 1, scope: !1787, file: !561, line: 159, type: !1728)
!1792 = !DILocalVariable(name: "i", arg: 2, scope: !1787, file: !561, line: 159, type: !83)
!1793 = !DILocalVariable(name: "r", scope: !1787, file: !561, line: 163, type: !83)
!1794 = !DILocation(line: 0, scope: !1787)
!1795 = !DILocation(line: 161, column: 8, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1787, file: !561, line: 161, column: 7)
!1797 = !DILocation(line: 161, column: 7, scope: !1787)
!1798 = !DILocation(line: 163, column: 14, scope: !1787)
!1799 = !{!1750, !885, i64 4}
!1800 = !DILocation(line: 164, column: 12, scope: !1787)
!1801 = !DILocation(line: 165, column: 3, scope: !1787)
!1802 = distinct !DISubprogram(name: "set_custom_quoting", scope: !561, file: !561, line: 169, type: !1803, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !1805)
!1803 = !DISubroutineType(types: !1804)
!1804 = !{null, !1728, !119, !119}
!1805 = !{!1806, !1807, !1808}
!1806 = !DILocalVariable(name: "o", arg: 1, scope: !1802, file: !561, line: 169, type: !1728)
!1807 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1802, file: !561, line: 170, type: !119)
!1808 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1802, file: !561, line: 170, type: !119)
!1809 = !DILocation(line: 0, scope: !1802)
!1810 = !DILocation(line: 172, column: 8, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1802, file: !561, line: 172, column: 7)
!1812 = !DILocation(line: 172, column: 7, scope: !1802)
!1813 = !DILocation(line: 174, column: 12, scope: !1802)
!1814 = !DILocation(line: 175, column: 8, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1802, file: !561, line: 175, column: 7)
!1816 = !DILocation(line: 175, column: 19, scope: !1815)
!1817 = !DILocation(line: 176, column: 5, scope: !1815)
!1818 = !DILocation(line: 177, column: 6, scope: !1802)
!1819 = !DILocation(line: 177, column: 17, scope: !1802)
!1820 = !{!1750, !877, i64 40}
!1821 = !DILocation(line: 178, column: 6, scope: !1802)
!1822 = !DILocation(line: 178, column: 18, scope: !1802)
!1823 = !{!1750, !877, i64 48}
!1824 = !DILocation(line: 179, column: 1, scope: !1802)
!1825 = !DISubprogram(name: "abort", scope: !1126, file: !1126, line: 598, type: !516, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1826 = distinct !DISubprogram(name: "quotearg_buffer", scope: !561, file: !561, line: 774, type: !1827, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !1829)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{!116, !85, !116, !119, !116, !1742}
!1829 = !{!1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837}
!1830 = !DILocalVariable(name: "buffer", arg: 1, scope: !1826, file: !561, line: 774, type: !85)
!1831 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1826, file: !561, line: 774, type: !116)
!1832 = !DILocalVariable(name: "arg", arg: 3, scope: !1826, file: !561, line: 775, type: !119)
!1833 = !DILocalVariable(name: "argsize", arg: 4, scope: !1826, file: !561, line: 775, type: !116)
!1834 = !DILocalVariable(name: "o", arg: 5, scope: !1826, file: !561, line: 776, type: !1742)
!1835 = !DILocalVariable(name: "p", scope: !1826, file: !561, line: 778, type: !1742)
!1836 = !DILocalVariable(name: "saved_errno", scope: !1826, file: !561, line: 779, type: !83)
!1837 = !DILocalVariable(name: "r", scope: !1826, file: !561, line: 780, type: !116)
!1838 = !DILocation(line: 0, scope: !1826)
!1839 = !DILocation(line: 778, column: 37, scope: !1826)
!1840 = !DILocation(line: 779, column: 21, scope: !1826)
!1841 = !DILocation(line: 781, column: 43, scope: !1826)
!1842 = !DILocation(line: 781, column: 53, scope: !1826)
!1843 = !DILocation(line: 781, column: 63, scope: !1826)
!1844 = !DILocation(line: 782, column: 43, scope: !1826)
!1845 = !DILocation(line: 782, column: 58, scope: !1826)
!1846 = !DILocation(line: 780, column: 14, scope: !1826)
!1847 = !DILocation(line: 783, column: 9, scope: !1826)
!1848 = !DILocation(line: 784, column: 3, scope: !1826)
!1849 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !561, file: !561, line: 251, type: !1850, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !1854)
!1850 = !DISubroutineType(types: !1851)
!1851 = !{!116, !85, !116, !119, !116, !587, !83, !1852, !119, !119}
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!1854 = !{!1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1880, !1882, !1885, !1886, !1887, !1888, !1891, !1892, !1894, !1895, !1898, !1902, !1903, !1911, !1914, !1915, !1916}
!1855 = !DILocalVariable(name: "buffer", arg: 1, scope: !1849, file: !561, line: 251, type: !85)
!1856 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1849, file: !561, line: 251, type: !116)
!1857 = !DILocalVariable(name: "arg", arg: 3, scope: !1849, file: !561, line: 252, type: !119)
!1858 = !DILocalVariable(name: "argsize", arg: 4, scope: !1849, file: !561, line: 252, type: !116)
!1859 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1849, file: !561, line: 253, type: !587)
!1860 = !DILocalVariable(name: "flags", arg: 6, scope: !1849, file: !561, line: 253, type: !83)
!1861 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1849, file: !561, line: 254, type: !1852)
!1862 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1849, file: !561, line: 255, type: !119)
!1863 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1849, file: !561, line: 256, type: !119)
!1864 = !DILocalVariable(name: "unibyte_locale", scope: !1849, file: !561, line: 258, type: !171)
!1865 = !DILocalVariable(name: "len", scope: !1849, file: !561, line: 260, type: !116)
!1866 = !DILocalVariable(name: "orig_buffersize", scope: !1849, file: !561, line: 261, type: !116)
!1867 = !DILocalVariable(name: "quote_string", scope: !1849, file: !561, line: 262, type: !119)
!1868 = !DILocalVariable(name: "quote_string_len", scope: !1849, file: !561, line: 263, type: !116)
!1869 = !DILocalVariable(name: "backslash_escapes", scope: !1849, file: !561, line: 264, type: !171)
!1870 = !DILocalVariable(name: "elide_outer_quotes", scope: !1849, file: !561, line: 265, type: !171)
!1871 = !DILocalVariable(name: "encountered_single_quote", scope: !1849, file: !561, line: 266, type: !171)
!1872 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1849, file: !561, line: 267, type: !171)
!1873 = !DILabel(scope: !1849, name: "process_input", file: !561, line: 308)
!1874 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1849, file: !561, line: 309, type: !171)
!1875 = !DILocalVariable(name: "lq", scope: !1876, file: !561, line: 361, type: !119)
!1876 = distinct !DILexicalBlock(scope: !1877, file: !561, line: 361, column: 11)
!1877 = distinct !DILexicalBlock(scope: !1878, file: !561, line: 360, column: 13)
!1878 = distinct !DILexicalBlock(scope: !1879, file: !561, line: 333, column: 7)
!1879 = distinct !DILexicalBlock(scope: !1849, file: !561, line: 312, column: 5)
!1880 = !DILocalVariable(name: "i", scope: !1881, file: !561, line: 395, type: !116)
!1881 = distinct !DILexicalBlock(scope: !1849, file: !561, line: 395, column: 3)
!1882 = !DILocalVariable(name: "is_right_quote", scope: !1883, file: !561, line: 397, type: !171)
!1883 = distinct !DILexicalBlock(scope: !1884, file: !561, line: 396, column: 5)
!1884 = distinct !DILexicalBlock(scope: !1881, file: !561, line: 395, column: 3)
!1885 = !DILocalVariable(name: "escaping", scope: !1883, file: !561, line: 398, type: !171)
!1886 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1883, file: !561, line: 399, type: !171)
!1887 = !DILocalVariable(name: "c", scope: !1883, file: !561, line: 417, type: !121)
!1888 = !DILabel(scope: !1889, name: "c_and_shell_escape", file: !561, line: 502)
!1889 = distinct !DILexicalBlock(scope: !1890, file: !561, line: 478, column: 9)
!1890 = distinct !DILexicalBlock(scope: !1883, file: !561, line: 419, column: 9)
!1891 = !DILabel(scope: !1889, name: "c_escape", file: !561, line: 507)
!1892 = !DILocalVariable(name: "m", scope: !1893, file: !561, line: 598, type: !116)
!1893 = distinct !DILexicalBlock(scope: !1890, file: !561, line: 596, column: 11)
!1894 = !DILocalVariable(name: "printable", scope: !1893, file: !561, line: 600, type: !171)
!1895 = !DILocalVariable(name: "mbs", scope: !1896, file: !561, line: 609, type: !648)
!1896 = distinct !DILexicalBlock(scope: !1897, file: !561, line: 608, column: 15)
!1897 = distinct !DILexicalBlock(scope: !1893, file: !561, line: 602, column: 17)
!1898 = !DILocalVariable(name: "w", scope: !1899, file: !561, line: 618, type: !541)
!1899 = distinct !DILexicalBlock(scope: !1900, file: !561, line: 617, column: 19)
!1900 = distinct !DILexicalBlock(scope: !1901, file: !561, line: 616, column: 17)
!1901 = distinct !DILexicalBlock(scope: !1896, file: !561, line: 616, column: 17)
!1902 = !DILocalVariable(name: "bytes", scope: !1899, file: !561, line: 619, type: !116)
!1903 = !DILocalVariable(name: "j", scope: !1904, file: !561, line: 648, type: !116)
!1904 = distinct !DILexicalBlock(scope: !1905, file: !561, line: 648, column: 29)
!1905 = distinct !DILexicalBlock(scope: !1906, file: !561, line: 647, column: 27)
!1906 = distinct !DILexicalBlock(scope: !1907, file: !561, line: 645, column: 29)
!1907 = distinct !DILexicalBlock(scope: !1908, file: !561, line: 636, column: 23)
!1908 = distinct !DILexicalBlock(scope: !1909, file: !561, line: 628, column: 30)
!1909 = distinct !DILexicalBlock(scope: !1910, file: !561, line: 623, column: 30)
!1910 = distinct !DILexicalBlock(scope: !1899, file: !561, line: 621, column: 25)
!1911 = !DILocalVariable(name: "ilim", scope: !1912, file: !561, line: 674, type: !116)
!1912 = distinct !DILexicalBlock(scope: !1913, file: !561, line: 671, column: 15)
!1913 = distinct !DILexicalBlock(scope: !1893, file: !561, line: 670, column: 17)
!1914 = !DILabel(scope: !1883, name: "store_escape", file: !561, line: 709)
!1915 = !DILabel(scope: !1883, name: "store_c", file: !561, line: 712)
!1916 = !DILabel(scope: !1849, name: "force_outer_quoting_style", file: !561, line: 753)
!1917 = distinct !DIAssignID()
!1918 = distinct !DIAssignID()
!1919 = distinct !DIAssignID()
!1920 = distinct !DIAssignID()
!1921 = distinct !DIAssignID()
!1922 = !DILocation(line: 0, scope: !1896)
!1923 = distinct !DIAssignID()
!1924 = !DILocation(line: 0, scope: !1899)
!1925 = !DILocation(line: 0, scope: !1849)
!1926 = !DILocation(line: 258, column: 25, scope: !1849)
!1927 = !DILocation(line: 258, column: 36, scope: !1849)
!1928 = !DILocation(line: 265, column: 8, scope: !1849)
!1929 = !DILocation(line: 267, column: 3, scope: !1849)
!1930 = !DILocation(line: 261, column: 10, scope: !1849)
!1931 = !DILocation(line: 262, column: 15, scope: !1849)
!1932 = !DILocation(line: 263, column: 10, scope: !1849)
!1933 = !DILocation(line: 264, column: 8, scope: !1849)
!1934 = !DILocation(line: 266, column: 8, scope: !1849)
!1935 = !DILocation(line: 267, column: 8, scope: !1849)
!1936 = !DILocation(line: 308, column: 2, scope: !1849)
!1937 = !DILocation(line: 311, column: 3, scope: !1849)
!1938 = !DILocation(line: 318, column: 11, scope: !1879)
!1939 = !DILocation(line: 318, column: 12, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1879, file: !561, line: 318, column: 11)
!1941 = !DILocation(line: 319, column: 9, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1943, file: !561, line: 319, column: 9)
!1943 = distinct !DILexicalBlock(scope: !1940, file: !561, line: 319, column: 9)
!1944 = !DILocation(line: 319, column: 9, scope: !1943)
!1945 = !DILocation(line: 0, scope: !639, inlinedAt: !1946)
!1946 = distinct !DILocation(line: 357, column: 26, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1948, file: !561, line: 335, column: 11)
!1948 = distinct !DILexicalBlock(scope: !1878, file: !561, line: 334, column: 13)
!1949 = !DILocation(line: 199, column: 29, scope: !639, inlinedAt: !1946)
!1950 = !DILocation(line: 201, column: 19, scope: !1951, inlinedAt: !1946)
!1951 = distinct !DILexicalBlock(scope: !639, file: !561, line: 201, column: 7)
!1952 = !DILocation(line: 201, column: 7, scope: !639, inlinedAt: !1946)
!1953 = !DILocation(line: 229, column: 3, scope: !639, inlinedAt: !1946)
!1954 = !DILocation(line: 230, column: 3, scope: !639, inlinedAt: !1946)
!1955 = !DILocalVariable(name: "ps", arg: 1, scope: !1956, file: !1696, line: 1135, type: !1959)
!1956 = distinct !DISubprogram(name: "mbszero", scope: !1696, file: !1696, line: 1135, type: !1957, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !1960)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{null, !1959}
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!1960 = !{!1955}
!1961 = !DILocation(line: 0, scope: !1956, inlinedAt: !1962)
!1962 = distinct !DILocation(line: 230, column: 18, scope: !639, inlinedAt: !1946)
!1963 = !DILocalVariable(name: "__dest", arg: 1, scope: !1964, file: !1705, line: 57, type: !122)
!1964 = distinct !DISubprogram(name: "memset", scope: !1705, file: !1705, line: 57, type: !1706, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !1965)
!1965 = !{!1963, !1966, !1967}
!1966 = !DILocalVariable(name: "__ch", arg: 2, scope: !1964, file: !1705, line: 57, type: !83)
!1967 = !DILocalVariable(name: "__len", arg: 3, scope: !1964, file: !1705, line: 57, type: !116)
!1968 = !DILocation(line: 0, scope: !1964, inlinedAt: !1969)
!1969 = distinct !DILocation(line: 1137, column: 3, scope: !1956, inlinedAt: !1962)
!1970 = !DILocation(line: 59, column: 10, scope: !1964, inlinedAt: !1969)
!1971 = !DILocation(line: 231, column: 7, scope: !1972, inlinedAt: !1946)
!1972 = distinct !DILexicalBlock(scope: !639, file: !561, line: 231, column: 7)
!1973 = !DILocation(line: 231, column: 40, scope: !1972, inlinedAt: !1946)
!1974 = !DILocation(line: 231, column: 45, scope: !1972, inlinedAt: !1946)
!1975 = !DILocation(line: 235, column: 1, scope: !639, inlinedAt: !1946)
!1976 = !DILocation(line: 0, scope: !639, inlinedAt: !1977)
!1977 = distinct !DILocation(line: 358, column: 27, scope: !1947)
!1978 = !DILocation(line: 199, column: 29, scope: !639, inlinedAt: !1977)
!1979 = !DILocation(line: 201, column: 19, scope: !1951, inlinedAt: !1977)
!1980 = !DILocation(line: 201, column: 7, scope: !639, inlinedAt: !1977)
!1981 = !DILocation(line: 229, column: 3, scope: !639, inlinedAt: !1977)
!1982 = !DILocation(line: 230, column: 3, scope: !639, inlinedAt: !1977)
!1983 = !DILocation(line: 0, scope: !1956, inlinedAt: !1984)
!1984 = distinct !DILocation(line: 230, column: 18, scope: !639, inlinedAt: !1977)
!1985 = !DILocation(line: 0, scope: !1964, inlinedAt: !1986)
!1986 = distinct !DILocation(line: 1137, column: 3, scope: !1956, inlinedAt: !1984)
!1987 = !DILocation(line: 59, column: 10, scope: !1964, inlinedAt: !1986)
!1988 = !DILocation(line: 231, column: 7, scope: !1972, inlinedAt: !1977)
!1989 = !DILocation(line: 231, column: 40, scope: !1972, inlinedAt: !1977)
!1990 = !DILocation(line: 231, column: 45, scope: !1972, inlinedAt: !1977)
!1991 = !DILocation(line: 235, column: 1, scope: !639, inlinedAt: !1977)
!1992 = !DILocation(line: 360, column: 14, scope: !1877)
!1993 = !DILocation(line: 360, column: 13, scope: !1878)
!1994 = !DILocation(line: 0, scope: !1876)
!1995 = !DILocation(line: 361, column: 45, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1876, file: !561, line: 361, column: 11)
!1997 = !DILocation(line: 361, column: 11, scope: !1876)
!1998 = !DILocation(line: 362, column: 13, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !2000, file: !561, line: 362, column: 13)
!2000 = distinct !DILexicalBlock(scope: !1996, file: !561, line: 362, column: 13)
!2001 = !DILocation(line: 362, column: 13, scope: !2000)
!2002 = !DILocation(line: 361, column: 52, scope: !1996)
!2003 = distinct !{!2003, !1997, !2004, !1015}
!2004 = !DILocation(line: 362, column: 13, scope: !1876)
!2005 = !DILocation(line: 260, column: 10, scope: !1849)
!2006 = !DILocation(line: 365, column: 28, scope: !1878)
!2007 = !DILocation(line: 367, column: 7, scope: !1879)
!2008 = !DILocation(line: 370, column: 7, scope: !1879)
!2009 = !DILocation(line: 373, column: 7, scope: !1879)
!2010 = !DILocation(line: 376, column: 12, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !1879, file: !561, line: 376, column: 11)
!2012 = !DILocation(line: 376, column: 11, scope: !1879)
!2013 = !DILocation(line: 381, column: 12, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !1879, file: !561, line: 381, column: 11)
!2015 = !DILocation(line: 381, column: 11, scope: !1879)
!2016 = !DILocation(line: 382, column: 9, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2018, file: !561, line: 382, column: 9)
!2018 = distinct !DILexicalBlock(scope: !2014, file: !561, line: 382, column: 9)
!2019 = !DILocation(line: 382, column: 9, scope: !2018)
!2020 = !DILocation(line: 389, column: 7, scope: !1879)
!2021 = !DILocation(line: 392, column: 7, scope: !1879)
!2022 = !DILocation(line: 0, scope: !1881)
!2023 = !DILocation(line: 395, column: 8, scope: !1881)
!2024 = !DILocation(line: 309, column: 8, scope: !1849)
!2025 = !DILocation(line: 395, scope: !1881)
!2026 = !DILocation(line: 395, column: 34, scope: !1884)
!2027 = !DILocation(line: 395, column: 26, scope: !1884)
!2028 = !DILocation(line: 395, column: 48, scope: !1884)
!2029 = !DILocation(line: 395, column: 55, scope: !1884)
!2030 = !DILocation(line: 395, column: 3, scope: !1881)
!2031 = !DILocation(line: 395, column: 67, scope: !1884)
!2032 = !DILocation(line: 0, scope: !1883)
!2033 = !DILocation(line: 402, column: 11, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !1883, file: !561, line: 401, column: 11)
!2035 = !DILocation(line: 404, column: 17, scope: !2034)
!2036 = !DILocation(line: 405, column: 39, scope: !2034)
!2037 = !DILocation(line: 409, column: 32, scope: !2034)
!2038 = !DILocation(line: 405, column: 19, scope: !2034)
!2039 = !DILocation(line: 405, column: 15, scope: !2034)
!2040 = !DILocation(line: 410, column: 11, scope: !2034)
!2041 = !DILocation(line: 410, column: 25, scope: !2034)
!2042 = !DILocalVariable(name: "__s1", arg: 1, scope: !2043, file: !926, line: 974, type: !1147)
!2043 = distinct !DISubprogram(name: "memeq", scope: !926, file: !926, line: 974, type: !1665, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !2044)
!2044 = !{!2042, !2045, !2046}
!2045 = !DILocalVariable(name: "__s2", arg: 2, scope: !2043, file: !926, line: 974, type: !1147)
!2046 = !DILocalVariable(name: "__n", arg: 3, scope: !2043, file: !926, line: 974, type: !116)
!2047 = !DILocation(line: 0, scope: !2043, inlinedAt: !2048)
!2048 = distinct !DILocation(line: 410, column: 14, scope: !2034)
!2049 = !DILocation(line: 976, column: 11, scope: !2043, inlinedAt: !2048)
!2050 = !DILocation(line: 976, column: 10, scope: !2043, inlinedAt: !2048)
!2051 = !DILocation(line: 401, column: 11, scope: !1883)
!2052 = !DILocation(line: 417, column: 25, scope: !1883)
!2053 = !DILocation(line: 418, column: 7, scope: !1883)
!2054 = !DILocation(line: 421, column: 15, scope: !1890)
!2055 = !DILocation(line: 423, column: 15, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2057, file: !561, line: 423, column: 15)
!2057 = distinct !DILexicalBlock(scope: !2058, file: !561, line: 422, column: 13)
!2058 = distinct !DILexicalBlock(scope: !1890, file: !561, line: 421, column: 15)
!2059 = !DILocation(line: 423, column: 15, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2056, file: !561, line: 423, column: 15)
!2061 = !DILocation(line: 423, column: 15, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2063, file: !561, line: 423, column: 15)
!2063 = distinct !DILexicalBlock(scope: !2064, file: !561, line: 423, column: 15)
!2064 = distinct !DILexicalBlock(scope: !2060, file: !561, line: 423, column: 15)
!2065 = !DILocation(line: 423, column: 15, scope: !2063)
!2066 = !DILocation(line: 423, column: 15, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2068, file: !561, line: 423, column: 15)
!2068 = distinct !DILexicalBlock(scope: !2064, file: !561, line: 423, column: 15)
!2069 = !DILocation(line: 423, column: 15, scope: !2068)
!2070 = !DILocation(line: 423, column: 15, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2072, file: !561, line: 423, column: 15)
!2072 = distinct !DILexicalBlock(scope: !2064, file: !561, line: 423, column: 15)
!2073 = !DILocation(line: 423, column: 15, scope: !2072)
!2074 = !DILocation(line: 423, column: 15, scope: !2064)
!2075 = !DILocation(line: 423, column: 15, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !561, line: 423, column: 15)
!2077 = distinct !DILexicalBlock(scope: !2056, file: !561, line: 423, column: 15)
!2078 = !DILocation(line: 423, column: 15, scope: !2077)
!2079 = !DILocation(line: 431, column: 19, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2057, file: !561, line: 430, column: 19)
!2081 = !DILocation(line: 431, column: 24, scope: !2080)
!2082 = !DILocation(line: 431, column: 28, scope: !2080)
!2083 = !DILocation(line: 431, column: 38, scope: !2080)
!2084 = !DILocation(line: 431, column: 48, scope: !2080)
!2085 = !DILocation(line: 431, column: 59, scope: !2080)
!2086 = !DILocation(line: 433, column: 19, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2088, file: !561, line: 433, column: 19)
!2088 = distinct !DILexicalBlock(scope: !2089, file: !561, line: 433, column: 19)
!2089 = distinct !DILexicalBlock(scope: !2080, file: !561, line: 432, column: 17)
!2090 = !DILocation(line: 433, column: 19, scope: !2088)
!2091 = !DILocation(line: 434, column: 19, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2093, file: !561, line: 434, column: 19)
!2093 = distinct !DILexicalBlock(scope: !2089, file: !561, line: 434, column: 19)
!2094 = !DILocation(line: 434, column: 19, scope: !2093)
!2095 = !DILocation(line: 435, column: 17, scope: !2089)
!2096 = !DILocation(line: 442, column: 20, scope: !2058)
!2097 = !DILocation(line: 447, column: 11, scope: !1890)
!2098 = !DILocation(line: 450, column: 19, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !1890, file: !561, line: 448, column: 13)
!2100 = !DILocation(line: 456, column: 19, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2099, file: !561, line: 455, column: 19)
!2102 = !DILocation(line: 456, column: 24, scope: !2101)
!2103 = !DILocation(line: 456, column: 28, scope: !2101)
!2104 = !DILocation(line: 456, column: 38, scope: !2101)
!2105 = !DILocation(line: 456, column: 41, scope: !2101)
!2106 = !DILocation(line: 456, column: 52, scope: !2101)
!2107 = !DILocation(line: 455, column: 19, scope: !2099)
!2108 = !DILocation(line: 457, column: 25, scope: !2101)
!2109 = !DILocation(line: 457, column: 17, scope: !2101)
!2110 = !DILocation(line: 464, column: 25, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2101, file: !561, line: 458, column: 19)
!2112 = !DILocation(line: 468, column: 21, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2114, file: !561, line: 468, column: 21)
!2114 = distinct !DILexicalBlock(scope: !2111, file: !561, line: 468, column: 21)
!2115 = !DILocation(line: 468, column: 21, scope: !2114)
!2116 = !DILocation(line: 469, column: 21, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2118, file: !561, line: 469, column: 21)
!2118 = distinct !DILexicalBlock(scope: !2111, file: !561, line: 469, column: 21)
!2119 = !DILocation(line: 469, column: 21, scope: !2118)
!2120 = !DILocation(line: 470, column: 21, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2122, file: !561, line: 470, column: 21)
!2122 = distinct !DILexicalBlock(scope: !2111, file: !561, line: 470, column: 21)
!2123 = !DILocation(line: 470, column: 21, scope: !2122)
!2124 = !DILocation(line: 471, column: 21, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2126, file: !561, line: 471, column: 21)
!2126 = distinct !DILexicalBlock(scope: !2111, file: !561, line: 471, column: 21)
!2127 = !DILocation(line: 471, column: 21, scope: !2126)
!2128 = !DILocation(line: 472, column: 21, scope: !2111)
!2129 = !DILocation(line: 482, column: 33, scope: !1889)
!2130 = !DILocation(line: 483, column: 33, scope: !1889)
!2131 = !DILocation(line: 485, column: 33, scope: !1889)
!2132 = !DILocation(line: 486, column: 33, scope: !1889)
!2133 = !DILocation(line: 487, column: 33, scope: !1889)
!2134 = !DILocation(line: 490, column: 17, scope: !1889)
!2135 = !DILocation(line: 492, column: 21, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2137, file: !561, line: 491, column: 15)
!2137 = distinct !DILexicalBlock(scope: !1889, file: !561, line: 490, column: 17)
!2138 = !DILocation(line: 499, column: 35, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !1889, file: !561, line: 499, column: 17)
!2140 = !DILocation(line: 499, column: 57, scope: !2139)
!2141 = !DILocation(line: 0, scope: !1889)
!2142 = !DILocation(line: 502, column: 11, scope: !1889)
!2143 = !DILocation(line: 504, column: 17, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !1889, file: !561, line: 503, column: 17)
!2145 = !DILocation(line: 507, column: 11, scope: !1889)
!2146 = !DILocation(line: 508, column: 17, scope: !1889)
!2147 = !DILocation(line: 517, column: 15, scope: !1890)
!2148 = !DILocation(line: 517, column: 40, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !1890, file: !561, line: 517, column: 15)
!2150 = !DILocation(line: 517, column: 47, scope: !2149)
!2151 = !DILocation(line: 517, column: 18, scope: !2149)
!2152 = !DILocation(line: 521, column: 17, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !1890, file: !561, line: 521, column: 15)
!2154 = !DILocation(line: 521, column: 15, scope: !1890)
!2155 = !DILocation(line: 525, column: 11, scope: !1890)
!2156 = !DILocation(line: 537, column: 15, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !1890, file: !561, line: 536, column: 15)
!2158 = !DILocation(line: 544, column: 15, scope: !1890)
!2159 = !DILocation(line: 546, column: 19, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2161, file: !561, line: 545, column: 13)
!2161 = distinct !DILexicalBlock(scope: !1890, file: !561, line: 544, column: 15)
!2162 = !DILocation(line: 549, column: 19, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2160, file: !561, line: 549, column: 19)
!2164 = !DILocation(line: 549, column: 30, scope: !2163)
!2165 = !DILocation(line: 558, column: 15, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2167, file: !561, line: 558, column: 15)
!2167 = distinct !DILexicalBlock(scope: !2160, file: !561, line: 558, column: 15)
!2168 = !DILocation(line: 558, column: 15, scope: !2167)
!2169 = !DILocation(line: 559, column: 15, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2171, file: !561, line: 559, column: 15)
!2171 = distinct !DILexicalBlock(scope: !2160, file: !561, line: 559, column: 15)
!2172 = !DILocation(line: 559, column: 15, scope: !2171)
!2173 = !DILocation(line: 560, column: 15, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2175, file: !561, line: 560, column: 15)
!2175 = distinct !DILexicalBlock(scope: !2160, file: !561, line: 560, column: 15)
!2176 = !DILocation(line: 560, column: 15, scope: !2175)
!2177 = !DILocation(line: 562, column: 13, scope: !2160)
!2178 = !DILocation(line: 602, column: 17, scope: !1893)
!2179 = !DILocation(line: 0, scope: !1893)
!2180 = !DILocation(line: 605, column: 29, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !1897, file: !561, line: 603, column: 15)
!2182 = !DILocation(line: 605, column: 27, scope: !2181)
!2183 = !DILocation(line: 606, column: 15, scope: !2181)
!2184 = !DILocation(line: 609, column: 17, scope: !1896)
!2185 = !DILocation(line: 0, scope: !1956, inlinedAt: !2186)
!2186 = distinct !DILocation(line: 609, column: 32, scope: !1896)
!2187 = !DILocation(line: 0, scope: !1964, inlinedAt: !2188)
!2188 = distinct !DILocation(line: 1137, column: 3, scope: !1956, inlinedAt: !2186)
!2189 = !DILocation(line: 59, column: 10, scope: !1964, inlinedAt: !2188)
!2190 = !DILocation(line: 613, column: 29, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !1896, file: !561, line: 613, column: 21)
!2192 = !DILocation(line: 613, column: 21, scope: !1896)
!2193 = !DILocation(line: 614, column: 29, scope: !2191)
!2194 = !DILocation(line: 614, column: 19, scope: !2191)
!2195 = !DILocation(line: 618, column: 21, scope: !1899)
!2196 = !DILocation(line: 620, column: 54, scope: !1899)
!2197 = !DILocation(line: 619, column: 36, scope: !1899)
!2198 = !DILocation(line: 621, column: 25, scope: !1899)
!2199 = !DILocation(line: 631, column: 38, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !1908, file: !561, line: 629, column: 23)
!2201 = !DILocation(line: 631, column: 48, scope: !2200)
!2202 = !DILocation(line: 626, column: 25, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !1909, file: !561, line: 624, column: 23)
!2204 = !DILocation(line: 631, column: 51, scope: !2200)
!2205 = !DILocation(line: 631, column: 25, scope: !2200)
!2206 = !DILocation(line: 632, column: 28, scope: !2200)
!2207 = !DILocation(line: 631, column: 34, scope: !2200)
!2208 = distinct !{!2208, !2205, !2206, !1015}
!2209 = !DILocation(line: 0, scope: !1904)
!2210 = !DILocation(line: 646, column: 29, scope: !1906)
!2211 = !DILocation(line: 649, column: 39, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !1904, file: !561, line: 648, column: 29)
!2213 = !DILocation(line: 649, column: 31, scope: !2212)
!2214 = !DILocation(line: 648, column: 60, scope: !2212)
!2215 = !DILocation(line: 648, column: 50, scope: !2212)
!2216 = !DILocation(line: 648, column: 29, scope: !1904)
!2217 = distinct !{!2217, !2216, !2218, !1015}
!2218 = !DILocation(line: 654, column: 33, scope: !1904)
!2219 = !DILocation(line: 657, column: 43, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !1907, file: !561, line: 657, column: 29)
!2221 = !DILocalVariable(name: "wc", arg: 1, scope: !2222, file: !2223, line: 865, type: !2226)
!2222 = distinct !DISubprogram(name: "c32isprint", scope: !2223, file: !2223, line: 865, type: !2224, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !2228)
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
!2233 = !DILocation(line: 664, column: 23, scope: !1899)
!2234 = !DILocation(line: 665, column: 19, scope: !1900)
!2235 = !DILocation(line: 666, column: 15, scope: !1897)
!2236 = !DILocation(line: 0, scope: !1897)
!2237 = !DILocation(line: 670, column: 19, scope: !1913)
!2238 = !DILocation(line: 670, column: 23, scope: !1913)
!2239 = !DILocation(line: 674, column: 33, scope: !1912)
!2240 = !DILocation(line: 0, scope: !1912)
!2241 = !DILocation(line: 676, column: 17, scope: !1912)
!2242 = !DILocation(line: 398, column: 12, scope: !1883)
!2243 = !DILocation(line: 678, column: 43, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2245, file: !561, line: 678, column: 25)
!2245 = distinct !DILexicalBlock(scope: !2246, file: !561, line: 677, column: 19)
!2246 = distinct !DILexicalBlock(scope: !2247, file: !561, line: 676, column: 17)
!2247 = distinct !DILexicalBlock(scope: !1912, file: !561, line: 676, column: 17)
!2248 = !DILocation(line: 680, column: 25, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2250, file: !561, line: 680, column: 25)
!2250 = distinct !DILexicalBlock(scope: !2244, file: !561, line: 679, column: 23)
!2251 = !DILocation(line: 680, column: 25, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2249, file: !561, line: 680, column: 25)
!2253 = !DILocation(line: 680, column: 25, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2255, file: !561, line: 680, column: 25)
!2255 = distinct !DILexicalBlock(scope: !2256, file: !561, line: 680, column: 25)
!2256 = distinct !DILexicalBlock(scope: !2252, file: !561, line: 680, column: 25)
!2257 = !DILocation(line: 680, column: 25, scope: !2255)
!2258 = !DILocation(line: 680, column: 25, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2260, file: !561, line: 680, column: 25)
!2260 = distinct !DILexicalBlock(scope: !2256, file: !561, line: 680, column: 25)
!2261 = !DILocation(line: 680, column: 25, scope: !2260)
!2262 = !DILocation(line: 680, column: 25, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2264, file: !561, line: 680, column: 25)
!2264 = distinct !DILexicalBlock(scope: !2256, file: !561, line: 680, column: 25)
!2265 = !DILocation(line: 680, column: 25, scope: !2264)
!2266 = !DILocation(line: 680, column: 25, scope: !2256)
!2267 = !DILocation(line: 680, column: 25, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2269, file: !561, line: 680, column: 25)
!2269 = distinct !DILexicalBlock(scope: !2249, file: !561, line: 680, column: 25)
!2270 = !DILocation(line: 680, column: 25, scope: !2269)
!2271 = !DILocation(line: 681, column: 25, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2273, file: !561, line: 681, column: 25)
!2273 = distinct !DILexicalBlock(scope: !2250, file: !561, line: 681, column: 25)
!2274 = !DILocation(line: 681, column: 25, scope: !2273)
!2275 = !DILocation(line: 682, column: 25, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2277, file: !561, line: 682, column: 25)
!2277 = distinct !DILexicalBlock(scope: !2250, file: !561, line: 682, column: 25)
!2278 = !DILocation(line: 682, column: 25, scope: !2277)
!2279 = !DILocation(line: 683, column: 38, scope: !2250)
!2280 = !DILocation(line: 683, column: 33, scope: !2250)
!2281 = !DILocation(line: 684, column: 23, scope: !2250)
!2282 = !DILocation(line: 685, column: 30, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2244, file: !561, line: 685, column: 30)
!2284 = !DILocation(line: 685, column: 30, scope: !2244)
!2285 = !DILocation(line: 687, column: 25, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2287, file: !561, line: 687, column: 25)
!2287 = distinct !DILexicalBlock(scope: !2288, file: !561, line: 687, column: 25)
!2288 = distinct !DILexicalBlock(scope: !2283, file: !561, line: 686, column: 23)
!2289 = !DILocation(line: 687, column: 25, scope: !2287)
!2290 = !DILocation(line: 689, column: 23, scope: !2288)
!2291 = !DILocation(line: 690, column: 35, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2245, file: !561, line: 690, column: 25)
!2293 = !DILocation(line: 690, column: 30, scope: !2292)
!2294 = !DILocation(line: 690, column: 25, scope: !2245)
!2295 = !DILocation(line: 692, column: 21, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2297, file: !561, line: 692, column: 21)
!2297 = distinct !DILexicalBlock(scope: !2245, file: !561, line: 692, column: 21)
!2298 = !DILocation(line: 692, column: 21, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2300, file: !561, line: 692, column: 21)
!2300 = distinct !DILexicalBlock(scope: !2301, file: !561, line: 692, column: 21)
!2301 = distinct !DILexicalBlock(scope: !2296, file: !561, line: 692, column: 21)
!2302 = !DILocation(line: 692, column: 21, scope: !2300)
!2303 = !DILocation(line: 692, column: 21, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2305, file: !561, line: 692, column: 21)
!2305 = distinct !DILexicalBlock(scope: !2301, file: !561, line: 692, column: 21)
!2306 = !DILocation(line: 692, column: 21, scope: !2305)
!2307 = !DILocation(line: 692, column: 21, scope: !2301)
!2308 = !DILocation(line: 0, scope: !2245)
!2309 = !DILocation(line: 693, column: 21, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2311, file: !561, line: 693, column: 21)
!2311 = distinct !DILexicalBlock(scope: !2245, file: !561, line: 693, column: 21)
!2312 = !DILocation(line: 693, column: 21, scope: !2311)
!2313 = !DILocation(line: 694, column: 25, scope: !2245)
!2314 = !DILocation(line: 676, column: 17, scope: !2246)
!2315 = distinct !{!2315, !2316, !2317}
!2316 = !DILocation(line: 676, column: 17, scope: !2247)
!2317 = !DILocation(line: 695, column: 19, scope: !2247)
!2318 = !DILocation(line: 409, column: 30, scope: !2034)
!2319 = !DILocation(line: 702, column: 34, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !1883, file: !561, line: 702, column: 11)
!2321 = !DILocation(line: 704, column: 14, scope: !2320)
!2322 = !DILocation(line: 705, column: 14, scope: !2320)
!2323 = !DILocation(line: 705, column: 35, scope: !2320)
!2324 = !DILocation(line: 705, column: 17, scope: !2320)
!2325 = !DILocation(line: 705, column: 47, scope: !2320)
!2326 = !DILocation(line: 705, column: 65, scope: !2320)
!2327 = !DILocation(line: 706, column: 11, scope: !2320)
!2328 = !DILocation(line: 702, column: 11, scope: !1883)
!2329 = !DILocation(line: 395, column: 15, scope: !1881)
!2330 = !DILocation(line: 709, column: 5, scope: !1883)
!2331 = !DILocation(line: 710, column: 7, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !1883, file: !561, line: 710, column: 7)
!2333 = !DILocation(line: 710, column: 7, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2332, file: !561, line: 710, column: 7)
!2335 = !DILocation(line: 710, column: 7, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2337, file: !561, line: 710, column: 7)
!2337 = distinct !DILexicalBlock(scope: !2338, file: !561, line: 710, column: 7)
!2338 = distinct !DILexicalBlock(scope: !2334, file: !561, line: 710, column: 7)
!2339 = !DILocation(line: 710, column: 7, scope: !2337)
!2340 = !DILocation(line: 710, column: 7, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2342, file: !561, line: 710, column: 7)
!2342 = distinct !DILexicalBlock(scope: !2338, file: !561, line: 710, column: 7)
!2343 = !DILocation(line: 710, column: 7, scope: !2342)
!2344 = !DILocation(line: 710, column: 7, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2346, file: !561, line: 710, column: 7)
!2346 = distinct !DILexicalBlock(scope: !2338, file: !561, line: 710, column: 7)
!2347 = !DILocation(line: 710, column: 7, scope: !2346)
!2348 = !DILocation(line: 710, column: 7, scope: !2338)
!2349 = !DILocation(line: 710, column: 7, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2351, file: !561, line: 710, column: 7)
!2351 = distinct !DILexicalBlock(scope: !2332, file: !561, line: 710, column: 7)
!2352 = !DILocation(line: 710, column: 7, scope: !2351)
!2353 = !DILocation(line: 712, column: 5, scope: !1883)
!2354 = !DILocation(line: 713, column: 7, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2356, file: !561, line: 713, column: 7)
!2356 = distinct !DILexicalBlock(scope: !1883, file: !561, line: 713, column: 7)
!2357 = !DILocation(line: 417, column: 21, scope: !1883)
!2358 = !DILocation(line: 713, column: 7, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2360, file: !561, line: 713, column: 7)
!2360 = distinct !DILexicalBlock(scope: !2361, file: !561, line: 713, column: 7)
!2361 = distinct !DILexicalBlock(scope: !2355, file: !561, line: 713, column: 7)
!2362 = !DILocation(line: 713, column: 7, scope: !2360)
!2363 = !DILocation(line: 713, column: 7, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2365, file: !561, line: 713, column: 7)
!2365 = distinct !DILexicalBlock(scope: !2361, file: !561, line: 713, column: 7)
!2366 = !DILocation(line: 713, column: 7, scope: !2365)
!2367 = !DILocation(line: 713, column: 7, scope: !2361)
!2368 = !DILocation(line: 714, column: 7, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2370, file: !561, line: 714, column: 7)
!2370 = distinct !DILexicalBlock(scope: !1883, file: !561, line: 714, column: 7)
!2371 = !DILocation(line: 714, column: 7, scope: !2370)
!2372 = !DILocation(line: 716, column: 13, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !1883, file: !561, line: 716, column: 11)
!2374 = !DILocation(line: 716, column: 11, scope: !1883)
!2375 = !DILocation(line: 718, column: 5, scope: !1884)
!2376 = !DILocation(line: 395, column: 82, scope: !1884)
!2377 = !DILocation(line: 395, column: 3, scope: !1884)
!2378 = distinct !{!2378, !2030, !2379, !1015}
!2379 = !DILocation(line: 718, column: 5, scope: !1881)
!2380 = !DILocation(line: 720, column: 11, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !1849, file: !561, line: 720, column: 7)
!2382 = !DILocation(line: 720, column: 16, scope: !2381)
!2383 = !DILocation(line: 728, column: 51, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !1849, file: !561, line: 728, column: 7)
!2385 = !DILocation(line: 731, column: 11, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2387, file: !561, line: 731, column: 11)
!2387 = distinct !DILexicalBlock(scope: !2384, file: !561, line: 730, column: 5)
!2388 = !DILocation(line: 731, column: 11, scope: !2387)
!2389 = !DILocation(line: 732, column: 16, scope: !2386)
!2390 = !DILocation(line: 732, column: 9, scope: !2386)
!2391 = !DILocation(line: 736, column: 18, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2386, file: !561, line: 736, column: 16)
!2393 = !DILocation(line: 736, column: 29, scope: !2392)
!2394 = !DILocation(line: 745, column: 7, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !1849, file: !561, line: 745, column: 7)
!2396 = !DILocation(line: 745, column: 20, scope: !2395)
!2397 = !DILocation(line: 746, column: 12, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2399, file: !561, line: 746, column: 5)
!2399 = distinct !DILexicalBlock(scope: !2395, file: !561, line: 746, column: 5)
!2400 = !DILocation(line: 746, column: 5, scope: !2399)
!2401 = !DILocation(line: 747, column: 7, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2403, file: !561, line: 747, column: 7)
!2403 = distinct !DILexicalBlock(scope: !2398, file: !561, line: 747, column: 7)
!2404 = !DILocation(line: 747, column: 7, scope: !2403)
!2405 = !DILocation(line: 746, column: 39, scope: !2398)
!2406 = distinct !{!2406, !2400, !2407, !1015}
!2407 = !DILocation(line: 747, column: 7, scope: !2399)
!2408 = !DILocation(line: 749, column: 11, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !1849, file: !561, line: 749, column: 7)
!2410 = !DILocation(line: 749, column: 7, scope: !1849)
!2411 = !DILocation(line: 750, column: 5, scope: !2409)
!2412 = !DILocation(line: 750, column: 17, scope: !2409)
!2413 = !DILocation(line: 753, column: 2, scope: !1849)
!2414 = !DILocation(line: 756, column: 51, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !1849, file: !561, line: 756, column: 7)
!2416 = !DILocation(line: 756, column: 21, scope: !2415)
!2417 = !DILocation(line: 760, column: 42, scope: !1849)
!2418 = !DILocation(line: 758, column: 10, scope: !1849)
!2419 = !DILocation(line: 758, column: 3, scope: !1849)
!2420 = !DILocation(line: 762, column: 1, scope: !1849)
!2421 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1126, file: !1126, line: 98, type: !2422, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{!116}
!2424 = !DISubprogram(name: "strlen", scope: !1115, file: !1115, line: 407, type: !2425, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2425 = !DISubroutineType(types: !2426)
!2426 = !{!118, !119}
!2427 = !DISubprogram(name: "iswprint", scope: !2428, file: !2428, line: 120, type: !2224, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2428 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2429 = distinct !DISubprogram(name: "quotearg_alloc", scope: !561, file: !561, line: 788, type: !2430, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !2432)
!2430 = !DISubroutineType(types: !2431)
!2431 = !{!85, !119, !116, !1742}
!2432 = !{!2433, !2434, !2435}
!2433 = !DILocalVariable(name: "arg", arg: 1, scope: !2429, file: !561, line: 788, type: !119)
!2434 = !DILocalVariable(name: "argsize", arg: 2, scope: !2429, file: !561, line: 788, type: !116)
!2435 = !DILocalVariable(name: "o", arg: 3, scope: !2429, file: !561, line: 789, type: !1742)
!2436 = !DILocation(line: 0, scope: !2429)
!2437 = !DILocalVariable(name: "arg", arg: 1, scope: !2438, file: !561, line: 801, type: !119)
!2438 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !561, file: !561, line: 801, type: !2439, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !2441)
!2439 = !DISubroutineType(types: !2440)
!2440 = !{!85, !119, !116, !809, !1742}
!2441 = !{!2437, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449}
!2442 = !DILocalVariable(name: "argsize", arg: 2, scope: !2438, file: !561, line: 801, type: !116)
!2443 = !DILocalVariable(name: "size", arg: 3, scope: !2438, file: !561, line: 801, type: !809)
!2444 = !DILocalVariable(name: "o", arg: 4, scope: !2438, file: !561, line: 802, type: !1742)
!2445 = !DILocalVariable(name: "p", scope: !2438, file: !561, line: 804, type: !1742)
!2446 = !DILocalVariable(name: "saved_errno", scope: !2438, file: !561, line: 805, type: !83)
!2447 = !DILocalVariable(name: "flags", scope: !2438, file: !561, line: 807, type: !83)
!2448 = !DILocalVariable(name: "bufsize", scope: !2438, file: !561, line: 808, type: !116)
!2449 = !DILocalVariable(name: "buf", scope: !2438, file: !561, line: 812, type: !85)
!2450 = !DILocation(line: 0, scope: !2438, inlinedAt: !2451)
!2451 = distinct !DILocation(line: 791, column: 10, scope: !2429)
!2452 = !DILocation(line: 804, column: 37, scope: !2438, inlinedAt: !2451)
!2453 = !DILocation(line: 805, column: 21, scope: !2438, inlinedAt: !2451)
!2454 = !DILocation(line: 807, column: 18, scope: !2438, inlinedAt: !2451)
!2455 = !DILocation(line: 807, column: 24, scope: !2438, inlinedAt: !2451)
!2456 = !DILocation(line: 808, column: 72, scope: !2438, inlinedAt: !2451)
!2457 = !DILocation(line: 809, column: 56, scope: !2438, inlinedAt: !2451)
!2458 = !DILocation(line: 810, column: 49, scope: !2438, inlinedAt: !2451)
!2459 = !DILocation(line: 811, column: 49, scope: !2438, inlinedAt: !2451)
!2460 = !DILocation(line: 808, column: 20, scope: !2438, inlinedAt: !2451)
!2461 = !DILocation(line: 811, column: 62, scope: !2438, inlinedAt: !2451)
!2462 = !DILocation(line: 812, column: 15, scope: !2438, inlinedAt: !2451)
!2463 = !DILocation(line: 813, column: 60, scope: !2438, inlinedAt: !2451)
!2464 = !DILocation(line: 815, column: 32, scope: !2438, inlinedAt: !2451)
!2465 = !DILocation(line: 815, column: 47, scope: !2438, inlinedAt: !2451)
!2466 = !DILocation(line: 813, column: 3, scope: !2438, inlinedAt: !2451)
!2467 = !DILocation(line: 816, column: 9, scope: !2438, inlinedAt: !2451)
!2468 = !DILocation(line: 791, column: 3, scope: !2429)
!2469 = !DILocation(line: 0, scope: !2438)
!2470 = !DILocation(line: 804, column: 37, scope: !2438)
!2471 = !DILocation(line: 805, column: 21, scope: !2438)
!2472 = !DILocation(line: 807, column: 18, scope: !2438)
!2473 = !DILocation(line: 807, column: 27, scope: !2438)
!2474 = !DILocation(line: 807, column: 24, scope: !2438)
!2475 = !DILocation(line: 808, column: 72, scope: !2438)
!2476 = !DILocation(line: 809, column: 56, scope: !2438)
!2477 = !DILocation(line: 810, column: 49, scope: !2438)
!2478 = !DILocation(line: 811, column: 49, scope: !2438)
!2479 = !DILocation(line: 808, column: 20, scope: !2438)
!2480 = !DILocation(line: 811, column: 62, scope: !2438)
!2481 = !DILocation(line: 812, column: 15, scope: !2438)
!2482 = !DILocation(line: 813, column: 60, scope: !2438)
!2483 = !DILocation(line: 815, column: 32, scope: !2438)
!2484 = !DILocation(line: 815, column: 47, scope: !2438)
!2485 = !DILocation(line: 813, column: 3, scope: !2438)
!2486 = !DILocation(line: 816, column: 9, scope: !2438)
!2487 = !DILocation(line: 817, column: 7, scope: !2438)
!2488 = !DILocation(line: 818, column: 11, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2438, file: !561, line: 817, column: 7)
!2490 = !{!1246, !1246, i64 0}
!2491 = !DILocation(line: 818, column: 5, scope: !2489)
!2492 = !DILocation(line: 819, column: 3, scope: !2438)
!2493 = distinct !DISubprogram(name: "quotearg_free", scope: !561, file: !561, line: 837, type: !516, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !2494)
!2494 = !{!2495, !2496}
!2495 = !DILocalVariable(name: "sv", scope: !2493, file: !561, line: 839, type: !662)
!2496 = !DILocalVariable(name: "i", scope: !2497, file: !561, line: 840, type: !83)
!2497 = distinct !DILexicalBlock(scope: !2493, file: !561, line: 840, column: 3)
!2498 = !DILocation(line: 839, column: 24, scope: !2493)
!2499 = !DILocation(line: 0, scope: !2493)
!2500 = !DILocation(line: 0, scope: !2497)
!2501 = !DILocation(line: 840, column: 21, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2497, file: !561, line: 840, column: 3)
!2503 = !DILocation(line: 840, column: 3, scope: !2497)
!2504 = !DILocation(line: 842, column: 13, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2493, file: !561, line: 842, column: 7)
!2506 = !{!2507, !877, i64 8}
!2507 = !{!"slotvec", !1246, i64 0, !877, i64 8}
!2508 = !DILocation(line: 842, column: 17, scope: !2505)
!2509 = !DILocation(line: 842, column: 7, scope: !2493)
!2510 = !DILocation(line: 841, column: 17, scope: !2502)
!2511 = !DILocation(line: 841, column: 5, scope: !2502)
!2512 = !DILocation(line: 840, column: 32, scope: !2502)
!2513 = distinct !{!2513, !2503, !2514, !1015}
!2514 = !DILocation(line: 841, column: 20, scope: !2497)
!2515 = !DILocation(line: 844, column: 7, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2505, file: !561, line: 843, column: 5)
!2517 = !DILocation(line: 845, column: 21, scope: !2516)
!2518 = !{!2507, !1246, i64 0}
!2519 = !DILocation(line: 846, column: 20, scope: !2516)
!2520 = !DILocation(line: 847, column: 5, scope: !2516)
!2521 = !DILocation(line: 848, column: 10, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2493, file: !561, line: 848, column: 7)
!2523 = !DILocation(line: 848, column: 7, scope: !2493)
!2524 = !DILocation(line: 850, column: 7, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2522, file: !561, line: 849, column: 5)
!2526 = !DILocation(line: 851, column: 15, scope: !2525)
!2527 = !DILocation(line: 852, column: 5, scope: !2525)
!2528 = !DILocation(line: 853, column: 10, scope: !2493)
!2529 = !DILocation(line: 854, column: 1, scope: !2493)
!2530 = !DISubprogram(name: "free", scope: !1696, file: !1696, line: 786, type: !2531, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{null, !122}
!2533 = distinct !DISubprogram(name: "quotearg_n", scope: !561, file: !561, line: 919, type: !1120, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !2534)
!2534 = !{!2535, !2536}
!2535 = !DILocalVariable(name: "n", arg: 1, scope: !2533, file: !561, line: 919, type: !83)
!2536 = !DILocalVariable(name: "arg", arg: 2, scope: !2533, file: !561, line: 919, type: !119)
!2537 = !DILocation(line: 0, scope: !2533)
!2538 = !DILocation(line: 921, column: 10, scope: !2533)
!2539 = !DILocation(line: 921, column: 3, scope: !2533)
!2540 = distinct !DISubprogram(name: "quotearg_n_options", scope: !561, file: !561, line: 866, type: !2541, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !2543)
!2541 = !DISubroutineType(types: !2542)
!2542 = !{!85, !83, !119, !116, !1742}
!2543 = !{!2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2554, !2555, !2557, !2558, !2559}
!2544 = !DILocalVariable(name: "n", arg: 1, scope: !2540, file: !561, line: 866, type: !83)
!2545 = !DILocalVariable(name: "arg", arg: 2, scope: !2540, file: !561, line: 866, type: !119)
!2546 = !DILocalVariable(name: "argsize", arg: 3, scope: !2540, file: !561, line: 866, type: !116)
!2547 = !DILocalVariable(name: "options", arg: 4, scope: !2540, file: !561, line: 867, type: !1742)
!2548 = !DILocalVariable(name: "saved_errno", scope: !2540, file: !561, line: 869, type: !83)
!2549 = !DILocalVariable(name: "sv", scope: !2540, file: !561, line: 871, type: !662)
!2550 = !DILocalVariable(name: "nslots_max", scope: !2540, file: !561, line: 873, type: !83)
!2551 = !DILocalVariable(name: "preallocated", scope: !2552, file: !561, line: 879, type: !171)
!2552 = distinct !DILexicalBlock(scope: !2553, file: !561, line: 878, column: 5)
!2553 = distinct !DILexicalBlock(scope: !2540, file: !561, line: 877, column: 7)
!2554 = !DILocalVariable(name: "new_nslots", scope: !2552, file: !561, line: 880, type: !822)
!2555 = !DILocalVariable(name: "size", scope: !2556, file: !561, line: 891, type: !116)
!2556 = distinct !DILexicalBlock(scope: !2540, file: !561, line: 890, column: 3)
!2557 = !DILocalVariable(name: "val", scope: !2556, file: !561, line: 892, type: !85)
!2558 = !DILocalVariable(name: "flags", scope: !2556, file: !561, line: 894, type: !83)
!2559 = !DILocalVariable(name: "qsize", scope: !2556, file: !561, line: 895, type: !116)
!2560 = distinct !DIAssignID()
!2561 = !DILocation(line: 0, scope: !2552)
!2562 = !DILocation(line: 0, scope: !2540)
!2563 = !DILocation(line: 869, column: 21, scope: !2540)
!2564 = !DILocation(line: 871, column: 24, scope: !2540)
!2565 = !DILocation(line: 874, column: 17, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2540, file: !561, line: 874, column: 7)
!2567 = !DILocation(line: 875, column: 5, scope: !2566)
!2568 = !DILocation(line: 877, column: 7, scope: !2553)
!2569 = !DILocation(line: 877, column: 14, scope: !2553)
!2570 = !DILocation(line: 877, column: 7, scope: !2540)
!2571 = !DILocation(line: 879, column: 31, scope: !2552)
!2572 = !DILocation(line: 880, column: 7, scope: !2552)
!2573 = !DILocation(line: 880, column: 26, scope: !2552)
!2574 = !DILocation(line: 880, column: 13, scope: !2552)
!2575 = distinct !DIAssignID()
!2576 = !DILocation(line: 882, column: 31, scope: !2552)
!2577 = !DILocation(line: 883, column: 33, scope: !2552)
!2578 = !DILocation(line: 883, column: 42, scope: !2552)
!2579 = !DILocation(line: 883, column: 31, scope: !2552)
!2580 = !DILocation(line: 882, column: 22, scope: !2552)
!2581 = !DILocation(line: 882, column: 15, scope: !2552)
!2582 = !DILocation(line: 884, column: 11, scope: !2552)
!2583 = !DILocation(line: 885, column: 15, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2552, file: !561, line: 884, column: 11)
!2585 = !{i64 0, i64 8, !2490, i64 8, i64 8, !876}
!2586 = !DILocation(line: 885, column: 9, scope: !2584)
!2587 = !DILocation(line: 886, column: 20, scope: !2552)
!2588 = !DILocation(line: 886, column: 18, scope: !2552)
!2589 = !DILocation(line: 886, column: 32, scope: !2552)
!2590 = !DILocation(line: 886, column: 43, scope: !2552)
!2591 = !DILocation(line: 886, column: 53, scope: !2552)
!2592 = !DILocation(line: 0, scope: !1964, inlinedAt: !2593)
!2593 = distinct !DILocation(line: 886, column: 7, scope: !2552)
!2594 = !DILocation(line: 59, column: 10, scope: !1964, inlinedAt: !2593)
!2595 = !DILocation(line: 887, column: 16, scope: !2552)
!2596 = !DILocation(line: 887, column: 14, scope: !2552)
!2597 = !DILocation(line: 888, column: 5, scope: !2553)
!2598 = !DILocation(line: 888, column: 5, scope: !2552)
!2599 = !DILocation(line: 891, column: 19, scope: !2556)
!2600 = !DILocation(line: 891, column: 25, scope: !2556)
!2601 = !DILocation(line: 0, scope: !2556)
!2602 = !DILocation(line: 892, column: 23, scope: !2556)
!2603 = !DILocation(line: 894, column: 26, scope: !2556)
!2604 = !DILocation(line: 894, column: 32, scope: !2556)
!2605 = !DILocation(line: 896, column: 55, scope: !2556)
!2606 = !DILocation(line: 897, column: 55, scope: !2556)
!2607 = !DILocation(line: 898, column: 55, scope: !2556)
!2608 = !DILocation(line: 899, column: 55, scope: !2556)
!2609 = !DILocation(line: 895, column: 20, scope: !2556)
!2610 = !DILocation(line: 901, column: 14, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2556, file: !561, line: 901, column: 9)
!2612 = !DILocation(line: 901, column: 9, scope: !2556)
!2613 = !DILocation(line: 903, column: 35, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2611, file: !561, line: 902, column: 7)
!2615 = !DILocation(line: 903, column: 20, scope: !2614)
!2616 = !DILocation(line: 904, column: 17, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2614, file: !561, line: 904, column: 13)
!2618 = !DILocation(line: 904, column: 13, scope: !2614)
!2619 = !DILocation(line: 905, column: 11, scope: !2617)
!2620 = !DILocation(line: 906, column: 27, scope: !2614)
!2621 = !DILocation(line: 906, column: 19, scope: !2614)
!2622 = !DILocation(line: 907, column: 69, scope: !2614)
!2623 = !DILocation(line: 909, column: 44, scope: !2614)
!2624 = !DILocation(line: 910, column: 44, scope: !2614)
!2625 = !DILocation(line: 907, column: 9, scope: !2614)
!2626 = !DILocation(line: 911, column: 7, scope: !2614)
!2627 = !DILocation(line: 913, column: 11, scope: !2556)
!2628 = !DILocation(line: 914, column: 5, scope: !2556)
!2629 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !561, file: !561, line: 925, type: !2630, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !2632)
!2630 = !DISubroutineType(types: !2631)
!2631 = !{!85, !83, !119, !116}
!2632 = !{!2633, !2634, !2635}
!2633 = !DILocalVariable(name: "n", arg: 1, scope: !2629, file: !561, line: 925, type: !83)
!2634 = !DILocalVariable(name: "arg", arg: 2, scope: !2629, file: !561, line: 925, type: !119)
!2635 = !DILocalVariable(name: "argsize", arg: 3, scope: !2629, file: !561, line: 925, type: !116)
!2636 = !DILocation(line: 0, scope: !2629)
!2637 = !DILocation(line: 927, column: 10, scope: !2629)
!2638 = !DILocation(line: 927, column: 3, scope: !2629)
!2639 = distinct !DISubprogram(name: "quotearg", scope: !561, file: !561, line: 931, type: !1128, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !2640)
!2640 = !{!2641}
!2641 = !DILocalVariable(name: "arg", arg: 1, scope: !2639, file: !561, line: 931, type: !119)
!2642 = !DILocation(line: 0, scope: !2639)
!2643 = !DILocation(line: 0, scope: !2533, inlinedAt: !2644)
!2644 = distinct !DILocation(line: 933, column: 10, scope: !2639)
!2645 = !DILocation(line: 921, column: 10, scope: !2533, inlinedAt: !2644)
!2646 = !DILocation(line: 933, column: 3, scope: !2639)
!2647 = distinct !DISubprogram(name: "quotearg_mem", scope: !561, file: !561, line: 937, type: !2648, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !2650)
!2648 = !DISubroutineType(types: !2649)
!2649 = !{!85, !119, !116}
!2650 = !{!2651, !2652}
!2651 = !DILocalVariable(name: "arg", arg: 1, scope: !2647, file: !561, line: 937, type: !119)
!2652 = !DILocalVariable(name: "argsize", arg: 2, scope: !2647, file: !561, line: 937, type: !116)
!2653 = !DILocation(line: 0, scope: !2647)
!2654 = !DILocation(line: 0, scope: !2629, inlinedAt: !2655)
!2655 = distinct !DILocation(line: 939, column: 10, scope: !2647)
!2656 = !DILocation(line: 927, column: 10, scope: !2629, inlinedAt: !2655)
!2657 = !DILocation(line: 939, column: 3, scope: !2647)
!2658 = distinct !DISubprogram(name: "quotearg_n_style", scope: !561, file: !561, line: 943, type: !2659, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !2661)
!2659 = !DISubroutineType(types: !2660)
!2660 = !{!85, !83, !587, !119}
!2661 = !{!2662, !2663, !2664, !2665}
!2662 = !DILocalVariable(name: "n", arg: 1, scope: !2658, file: !561, line: 943, type: !83)
!2663 = !DILocalVariable(name: "s", arg: 2, scope: !2658, file: !561, line: 943, type: !587)
!2664 = !DILocalVariable(name: "arg", arg: 3, scope: !2658, file: !561, line: 943, type: !119)
!2665 = !DILocalVariable(name: "o", scope: !2658, file: !561, line: 945, type: !1743)
!2666 = distinct !DIAssignID()
!2667 = !DILocation(line: 0, scope: !2658)
!2668 = !DILocation(line: 945, column: 3, scope: !2658)
!2669 = !{!2670}
!2670 = distinct !{!2670, !2671, !"quoting_options_from_style: argument 0"}
!2671 = distinct !{!2671, !"quoting_options_from_style"}
!2672 = !DILocation(line: 945, column: 36, scope: !2658)
!2673 = !DILocalVariable(name: "style", arg: 1, scope: !2674, file: !561, line: 183, type: !587)
!2674 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !561, file: !561, line: 183, type: !2675, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !2677)
!2675 = !DISubroutineType(types: !2676)
!2676 = !{!614, !587}
!2677 = !{!2673, !2678}
!2678 = !DILocalVariable(name: "o", scope: !2674, file: !561, line: 185, type: !614)
!2679 = !DILocation(line: 0, scope: !2674, inlinedAt: !2680)
!2680 = distinct !DILocation(line: 945, column: 36, scope: !2658)
!2681 = !DILocation(line: 185, column: 26, scope: !2674, inlinedAt: !2680)
!2682 = distinct !DIAssignID()
!2683 = !DILocation(line: 186, column: 13, scope: !2684, inlinedAt: !2680)
!2684 = distinct !DILexicalBlock(scope: !2674, file: !561, line: 186, column: 7)
!2685 = !DILocation(line: 186, column: 7, scope: !2674, inlinedAt: !2680)
!2686 = !DILocation(line: 187, column: 5, scope: !2684, inlinedAt: !2680)
!2687 = !DILocation(line: 188, column: 11, scope: !2674, inlinedAt: !2680)
!2688 = distinct !DIAssignID()
!2689 = !DILocation(line: 946, column: 10, scope: !2658)
!2690 = !DILocation(line: 947, column: 1, scope: !2658)
!2691 = !DILocation(line: 946, column: 3, scope: !2658)
!2692 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !561, file: !561, line: 950, type: !2693, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !2695)
!2693 = !DISubroutineType(types: !2694)
!2694 = !{!85, !83, !587, !119, !116}
!2695 = !{!2696, !2697, !2698, !2699, !2700}
!2696 = !DILocalVariable(name: "n", arg: 1, scope: !2692, file: !561, line: 950, type: !83)
!2697 = !DILocalVariable(name: "s", arg: 2, scope: !2692, file: !561, line: 950, type: !587)
!2698 = !DILocalVariable(name: "arg", arg: 3, scope: !2692, file: !561, line: 951, type: !119)
!2699 = !DILocalVariable(name: "argsize", arg: 4, scope: !2692, file: !561, line: 951, type: !116)
!2700 = !DILocalVariable(name: "o", scope: !2692, file: !561, line: 953, type: !1743)
!2701 = distinct !DIAssignID()
!2702 = !DILocation(line: 0, scope: !2692)
!2703 = !DILocation(line: 953, column: 3, scope: !2692)
!2704 = !{!2705}
!2705 = distinct !{!2705, !2706, !"quoting_options_from_style: argument 0"}
!2706 = distinct !{!2706, !"quoting_options_from_style"}
!2707 = !DILocation(line: 953, column: 36, scope: !2692)
!2708 = !DILocation(line: 0, scope: !2674, inlinedAt: !2709)
!2709 = distinct !DILocation(line: 953, column: 36, scope: !2692)
!2710 = !DILocation(line: 185, column: 26, scope: !2674, inlinedAt: !2709)
!2711 = distinct !DIAssignID()
!2712 = !DILocation(line: 186, column: 13, scope: !2684, inlinedAt: !2709)
!2713 = !DILocation(line: 186, column: 7, scope: !2674, inlinedAt: !2709)
!2714 = !DILocation(line: 187, column: 5, scope: !2684, inlinedAt: !2709)
!2715 = !DILocation(line: 188, column: 11, scope: !2674, inlinedAt: !2709)
!2716 = distinct !DIAssignID()
!2717 = !DILocation(line: 954, column: 10, scope: !2692)
!2718 = !DILocation(line: 955, column: 1, scope: !2692)
!2719 = !DILocation(line: 954, column: 3, scope: !2692)
!2720 = distinct !DISubprogram(name: "quotearg_style", scope: !561, file: !561, line: 958, type: !2721, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !2723)
!2721 = !DISubroutineType(types: !2722)
!2722 = !{!85, !587, !119}
!2723 = !{!2724, !2725}
!2724 = !DILocalVariable(name: "s", arg: 1, scope: !2720, file: !561, line: 958, type: !587)
!2725 = !DILocalVariable(name: "arg", arg: 2, scope: !2720, file: !561, line: 958, type: !119)
!2726 = distinct !DIAssignID()
!2727 = !DILocation(line: 0, scope: !2720)
!2728 = !DILocation(line: 0, scope: !2658, inlinedAt: !2729)
!2729 = distinct !DILocation(line: 960, column: 10, scope: !2720)
!2730 = !DILocation(line: 945, column: 3, scope: !2658, inlinedAt: !2729)
!2731 = !{!2732}
!2732 = distinct !{!2732, !2733, !"quoting_options_from_style: argument 0"}
!2733 = distinct !{!2733, !"quoting_options_from_style"}
!2734 = !DILocation(line: 945, column: 36, scope: !2658, inlinedAt: !2729)
!2735 = !DILocation(line: 0, scope: !2674, inlinedAt: !2736)
!2736 = distinct !DILocation(line: 945, column: 36, scope: !2658, inlinedAt: !2729)
!2737 = !DILocation(line: 185, column: 26, scope: !2674, inlinedAt: !2736)
!2738 = distinct !DIAssignID()
!2739 = !DILocation(line: 186, column: 13, scope: !2684, inlinedAt: !2736)
!2740 = !DILocation(line: 186, column: 7, scope: !2674, inlinedAt: !2736)
!2741 = !DILocation(line: 187, column: 5, scope: !2684, inlinedAt: !2736)
!2742 = !DILocation(line: 188, column: 11, scope: !2674, inlinedAt: !2736)
!2743 = distinct !DIAssignID()
!2744 = !DILocation(line: 946, column: 10, scope: !2658, inlinedAt: !2729)
!2745 = !DILocation(line: 947, column: 1, scope: !2658, inlinedAt: !2729)
!2746 = !DILocation(line: 960, column: 3, scope: !2720)
!2747 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !561, file: !561, line: 964, type: !2748, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !2750)
!2748 = !DISubroutineType(types: !2749)
!2749 = !{!85, !587, !119, !116}
!2750 = !{!2751, !2752, !2753}
!2751 = !DILocalVariable(name: "s", arg: 1, scope: !2747, file: !561, line: 964, type: !587)
!2752 = !DILocalVariable(name: "arg", arg: 2, scope: !2747, file: !561, line: 964, type: !119)
!2753 = !DILocalVariable(name: "argsize", arg: 3, scope: !2747, file: !561, line: 964, type: !116)
!2754 = distinct !DIAssignID()
!2755 = !DILocation(line: 0, scope: !2747)
!2756 = !DILocation(line: 0, scope: !2692, inlinedAt: !2757)
!2757 = distinct !DILocation(line: 966, column: 10, scope: !2747)
!2758 = !DILocation(line: 953, column: 3, scope: !2692, inlinedAt: !2757)
!2759 = !{!2760}
!2760 = distinct !{!2760, !2761, !"quoting_options_from_style: argument 0"}
!2761 = distinct !{!2761, !"quoting_options_from_style"}
!2762 = !DILocation(line: 953, column: 36, scope: !2692, inlinedAt: !2757)
!2763 = !DILocation(line: 0, scope: !2674, inlinedAt: !2764)
!2764 = distinct !DILocation(line: 953, column: 36, scope: !2692, inlinedAt: !2757)
!2765 = !DILocation(line: 185, column: 26, scope: !2674, inlinedAt: !2764)
!2766 = distinct !DIAssignID()
!2767 = !DILocation(line: 186, column: 13, scope: !2684, inlinedAt: !2764)
!2768 = !DILocation(line: 186, column: 7, scope: !2674, inlinedAt: !2764)
!2769 = !DILocation(line: 187, column: 5, scope: !2684, inlinedAt: !2764)
!2770 = !DILocation(line: 188, column: 11, scope: !2674, inlinedAt: !2764)
!2771 = distinct !DIAssignID()
!2772 = !DILocation(line: 954, column: 10, scope: !2692, inlinedAt: !2757)
!2773 = !DILocation(line: 955, column: 1, scope: !2692, inlinedAt: !2757)
!2774 = !DILocation(line: 966, column: 3, scope: !2747)
!2775 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !561, file: !561, line: 970, type: !2776, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !2778)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{!85, !119, !116, !4}
!2778 = !{!2779, !2780, !2781, !2782}
!2779 = !DILocalVariable(name: "arg", arg: 1, scope: !2775, file: !561, line: 970, type: !119)
!2780 = !DILocalVariable(name: "argsize", arg: 2, scope: !2775, file: !561, line: 970, type: !116)
!2781 = !DILocalVariable(name: "ch", arg: 3, scope: !2775, file: !561, line: 970, type: !4)
!2782 = !DILocalVariable(name: "options", scope: !2775, file: !561, line: 972, type: !614)
!2783 = distinct !DIAssignID()
!2784 = !DILocation(line: 0, scope: !2775)
!2785 = !DILocation(line: 972, column: 3, scope: !2775)
!2786 = !DILocation(line: 973, column: 13, scope: !2775)
!2787 = !{i64 0, i64 4, !884, i64 4, i64 4, !884, i64 8, i64 32, !984, i64 40, i64 8, !876, i64 48, i64 8, !876}
!2788 = distinct !DIAssignID()
!2789 = !DILocation(line: 0, scope: !1762, inlinedAt: !2790)
!2790 = distinct !DILocation(line: 974, column: 3, scope: !2775)
!2791 = !DILocation(line: 147, column: 41, scope: !1762, inlinedAt: !2790)
!2792 = !DILocation(line: 147, column: 62, scope: !1762, inlinedAt: !2790)
!2793 = !DILocation(line: 147, column: 57, scope: !1762, inlinedAt: !2790)
!2794 = !DILocation(line: 148, column: 15, scope: !1762, inlinedAt: !2790)
!2795 = !DILocation(line: 149, column: 21, scope: !1762, inlinedAt: !2790)
!2796 = !DILocation(line: 149, column: 24, scope: !1762, inlinedAt: !2790)
!2797 = !DILocation(line: 150, column: 19, scope: !1762, inlinedAt: !2790)
!2798 = !DILocation(line: 150, column: 24, scope: !1762, inlinedAt: !2790)
!2799 = !DILocation(line: 150, column: 6, scope: !1762, inlinedAt: !2790)
!2800 = !DILocation(line: 975, column: 10, scope: !2775)
!2801 = !DILocation(line: 976, column: 1, scope: !2775)
!2802 = !DILocation(line: 975, column: 3, scope: !2775)
!2803 = distinct !DISubprogram(name: "quotearg_char", scope: !561, file: !561, line: 979, type: !2804, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !2806)
!2804 = !DISubroutineType(types: !2805)
!2805 = !{!85, !119, !4}
!2806 = !{!2807, !2808}
!2807 = !DILocalVariable(name: "arg", arg: 1, scope: !2803, file: !561, line: 979, type: !119)
!2808 = !DILocalVariable(name: "ch", arg: 2, scope: !2803, file: !561, line: 979, type: !4)
!2809 = distinct !DIAssignID()
!2810 = !DILocation(line: 0, scope: !2803)
!2811 = !DILocation(line: 0, scope: !2775, inlinedAt: !2812)
!2812 = distinct !DILocation(line: 981, column: 10, scope: !2803)
!2813 = !DILocation(line: 972, column: 3, scope: !2775, inlinedAt: !2812)
!2814 = !DILocation(line: 973, column: 13, scope: !2775, inlinedAt: !2812)
!2815 = distinct !DIAssignID()
!2816 = !DILocation(line: 0, scope: !1762, inlinedAt: !2817)
!2817 = distinct !DILocation(line: 974, column: 3, scope: !2775, inlinedAt: !2812)
!2818 = !DILocation(line: 147, column: 41, scope: !1762, inlinedAt: !2817)
!2819 = !DILocation(line: 147, column: 62, scope: !1762, inlinedAt: !2817)
!2820 = !DILocation(line: 147, column: 57, scope: !1762, inlinedAt: !2817)
!2821 = !DILocation(line: 148, column: 15, scope: !1762, inlinedAt: !2817)
!2822 = !DILocation(line: 149, column: 21, scope: !1762, inlinedAt: !2817)
!2823 = !DILocation(line: 149, column: 24, scope: !1762, inlinedAt: !2817)
!2824 = !DILocation(line: 150, column: 19, scope: !1762, inlinedAt: !2817)
!2825 = !DILocation(line: 150, column: 24, scope: !1762, inlinedAt: !2817)
!2826 = !DILocation(line: 150, column: 6, scope: !1762, inlinedAt: !2817)
!2827 = !DILocation(line: 975, column: 10, scope: !2775, inlinedAt: !2812)
!2828 = !DILocation(line: 976, column: 1, scope: !2775, inlinedAt: !2812)
!2829 = !DILocation(line: 981, column: 3, scope: !2803)
!2830 = distinct !DISubprogram(name: "quotearg_colon", scope: !561, file: !561, line: 985, type: !1128, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !2831)
!2831 = !{!2832}
!2832 = !DILocalVariable(name: "arg", arg: 1, scope: !2830, file: !561, line: 985, type: !119)
!2833 = distinct !DIAssignID()
!2834 = !DILocation(line: 0, scope: !2830)
!2835 = !DILocation(line: 0, scope: !2803, inlinedAt: !2836)
!2836 = distinct !DILocation(line: 987, column: 10, scope: !2830)
!2837 = !DILocation(line: 0, scope: !2775, inlinedAt: !2838)
!2838 = distinct !DILocation(line: 981, column: 10, scope: !2803, inlinedAt: !2836)
!2839 = !DILocation(line: 972, column: 3, scope: !2775, inlinedAt: !2838)
!2840 = !DILocation(line: 973, column: 13, scope: !2775, inlinedAt: !2838)
!2841 = distinct !DIAssignID()
!2842 = !DILocation(line: 0, scope: !1762, inlinedAt: !2843)
!2843 = distinct !DILocation(line: 974, column: 3, scope: !2775, inlinedAt: !2838)
!2844 = !DILocation(line: 147, column: 57, scope: !1762, inlinedAt: !2843)
!2845 = !DILocation(line: 149, column: 21, scope: !1762, inlinedAt: !2843)
!2846 = !DILocation(line: 150, column: 6, scope: !1762, inlinedAt: !2843)
!2847 = !DILocation(line: 975, column: 10, scope: !2775, inlinedAt: !2838)
!2848 = !DILocation(line: 976, column: 1, scope: !2775, inlinedAt: !2838)
!2849 = !DILocation(line: 987, column: 3, scope: !2830)
!2850 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !561, file: !561, line: 991, type: !2648, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !2851)
!2851 = !{!2852, !2853}
!2852 = !DILocalVariable(name: "arg", arg: 1, scope: !2850, file: !561, line: 991, type: !119)
!2853 = !DILocalVariable(name: "argsize", arg: 2, scope: !2850, file: !561, line: 991, type: !116)
!2854 = distinct !DIAssignID()
!2855 = !DILocation(line: 0, scope: !2850)
!2856 = !DILocation(line: 0, scope: !2775, inlinedAt: !2857)
!2857 = distinct !DILocation(line: 993, column: 10, scope: !2850)
!2858 = !DILocation(line: 972, column: 3, scope: !2775, inlinedAt: !2857)
!2859 = !DILocation(line: 973, column: 13, scope: !2775, inlinedAt: !2857)
!2860 = distinct !DIAssignID()
!2861 = !DILocation(line: 0, scope: !1762, inlinedAt: !2862)
!2862 = distinct !DILocation(line: 974, column: 3, scope: !2775, inlinedAt: !2857)
!2863 = !DILocation(line: 147, column: 57, scope: !1762, inlinedAt: !2862)
!2864 = !DILocation(line: 149, column: 21, scope: !1762, inlinedAt: !2862)
!2865 = !DILocation(line: 150, column: 6, scope: !1762, inlinedAt: !2862)
!2866 = !DILocation(line: 975, column: 10, scope: !2775, inlinedAt: !2857)
!2867 = !DILocation(line: 976, column: 1, scope: !2775, inlinedAt: !2857)
!2868 = !DILocation(line: 993, column: 3, scope: !2850)
!2869 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !561, file: !561, line: 997, type: !2659, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !2870)
!2870 = !{!2871, !2872, !2873, !2874}
!2871 = !DILocalVariable(name: "n", arg: 1, scope: !2869, file: !561, line: 997, type: !83)
!2872 = !DILocalVariable(name: "s", arg: 2, scope: !2869, file: !561, line: 997, type: !587)
!2873 = !DILocalVariable(name: "arg", arg: 3, scope: !2869, file: !561, line: 997, type: !119)
!2874 = !DILocalVariable(name: "options", scope: !2869, file: !561, line: 999, type: !614)
!2875 = distinct !DIAssignID()
!2876 = !DILocation(line: 0, scope: !2869)
!2877 = !DILocation(line: 185, column: 26, scope: !2674, inlinedAt: !2878)
!2878 = distinct !DILocation(line: 1000, column: 13, scope: !2869)
!2879 = !DILocation(line: 999, column: 3, scope: !2869)
!2880 = !DILocation(line: 0, scope: !2674, inlinedAt: !2878)
!2881 = !DILocation(line: 186, column: 13, scope: !2684, inlinedAt: !2878)
!2882 = !DILocation(line: 186, column: 7, scope: !2674, inlinedAt: !2878)
!2883 = !DILocation(line: 187, column: 5, scope: !2684, inlinedAt: !2878)
!2884 = !{!2885}
!2885 = distinct !{!2885, !2886, !"quoting_options_from_style: argument 0"}
!2886 = distinct !{!2886, !"quoting_options_from_style"}
!2887 = !DILocation(line: 1000, column: 13, scope: !2869)
!2888 = distinct !DIAssignID()
!2889 = distinct !DIAssignID()
!2890 = !DILocation(line: 0, scope: !1762, inlinedAt: !2891)
!2891 = distinct !DILocation(line: 1001, column: 3, scope: !2869)
!2892 = !DILocation(line: 147, column: 57, scope: !1762, inlinedAt: !2891)
!2893 = !DILocation(line: 149, column: 21, scope: !1762, inlinedAt: !2891)
!2894 = !DILocation(line: 150, column: 6, scope: !1762, inlinedAt: !2891)
!2895 = distinct !DIAssignID()
!2896 = !DILocation(line: 1002, column: 10, scope: !2869)
!2897 = !DILocation(line: 1003, column: 1, scope: !2869)
!2898 = !DILocation(line: 1002, column: 3, scope: !2869)
!2899 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !561, file: !561, line: 1006, type: !2900, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !2902)
!2900 = !DISubroutineType(types: !2901)
!2901 = !{!85, !83, !119, !119, !119}
!2902 = !{!2903, !2904, !2905, !2906}
!2903 = !DILocalVariable(name: "n", arg: 1, scope: !2899, file: !561, line: 1006, type: !83)
!2904 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2899, file: !561, line: 1006, type: !119)
!2905 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2899, file: !561, line: 1007, type: !119)
!2906 = !DILocalVariable(name: "arg", arg: 4, scope: !2899, file: !561, line: 1007, type: !119)
!2907 = distinct !DIAssignID()
!2908 = !DILocation(line: 0, scope: !2899)
!2909 = !DILocalVariable(name: "o", scope: !2910, file: !561, line: 1018, type: !614)
!2910 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !561, file: !561, line: 1014, type: !2911, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !2913)
!2911 = !DISubroutineType(types: !2912)
!2912 = !{!85, !83, !119, !119, !119, !116}
!2913 = !{!2914, !2915, !2916, !2917, !2918, !2909}
!2914 = !DILocalVariable(name: "n", arg: 1, scope: !2910, file: !561, line: 1014, type: !83)
!2915 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2910, file: !561, line: 1014, type: !119)
!2916 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2910, file: !561, line: 1015, type: !119)
!2917 = !DILocalVariable(name: "arg", arg: 4, scope: !2910, file: !561, line: 1016, type: !119)
!2918 = !DILocalVariable(name: "argsize", arg: 5, scope: !2910, file: !561, line: 1016, type: !116)
!2919 = !DILocation(line: 0, scope: !2910, inlinedAt: !2920)
!2920 = distinct !DILocation(line: 1009, column: 10, scope: !2899)
!2921 = !DILocation(line: 1018, column: 3, scope: !2910, inlinedAt: !2920)
!2922 = !DILocation(line: 1018, column: 30, scope: !2910, inlinedAt: !2920)
!2923 = distinct !DIAssignID()
!2924 = distinct !DIAssignID()
!2925 = !DILocation(line: 0, scope: !1802, inlinedAt: !2926)
!2926 = distinct !DILocation(line: 1019, column: 3, scope: !2910, inlinedAt: !2920)
!2927 = !DILocation(line: 174, column: 12, scope: !1802, inlinedAt: !2926)
!2928 = distinct !DIAssignID()
!2929 = !DILocation(line: 175, column: 8, scope: !1815, inlinedAt: !2926)
!2930 = !DILocation(line: 175, column: 19, scope: !1815, inlinedAt: !2926)
!2931 = !DILocation(line: 176, column: 5, scope: !1815, inlinedAt: !2926)
!2932 = !DILocation(line: 177, column: 6, scope: !1802, inlinedAt: !2926)
!2933 = !DILocation(line: 177, column: 17, scope: !1802, inlinedAt: !2926)
!2934 = distinct !DIAssignID()
!2935 = !DILocation(line: 178, column: 6, scope: !1802, inlinedAt: !2926)
!2936 = !DILocation(line: 178, column: 18, scope: !1802, inlinedAt: !2926)
!2937 = distinct !DIAssignID()
!2938 = !DILocation(line: 1020, column: 10, scope: !2910, inlinedAt: !2920)
!2939 = !DILocation(line: 1021, column: 1, scope: !2910, inlinedAt: !2920)
!2940 = !DILocation(line: 1009, column: 3, scope: !2899)
!2941 = distinct !DIAssignID()
!2942 = !DILocation(line: 0, scope: !2910)
!2943 = !DILocation(line: 1018, column: 3, scope: !2910)
!2944 = !DILocation(line: 1018, column: 30, scope: !2910)
!2945 = distinct !DIAssignID()
!2946 = distinct !DIAssignID()
!2947 = !DILocation(line: 0, scope: !1802, inlinedAt: !2948)
!2948 = distinct !DILocation(line: 1019, column: 3, scope: !2910)
!2949 = !DILocation(line: 174, column: 12, scope: !1802, inlinedAt: !2948)
!2950 = distinct !DIAssignID()
!2951 = !DILocation(line: 175, column: 8, scope: !1815, inlinedAt: !2948)
!2952 = !DILocation(line: 175, column: 19, scope: !1815, inlinedAt: !2948)
!2953 = !DILocation(line: 176, column: 5, scope: !1815, inlinedAt: !2948)
!2954 = !DILocation(line: 177, column: 6, scope: !1802, inlinedAt: !2948)
!2955 = !DILocation(line: 177, column: 17, scope: !1802, inlinedAt: !2948)
!2956 = distinct !DIAssignID()
!2957 = !DILocation(line: 178, column: 6, scope: !1802, inlinedAt: !2948)
!2958 = !DILocation(line: 178, column: 18, scope: !1802, inlinedAt: !2948)
!2959 = distinct !DIAssignID()
!2960 = !DILocation(line: 1020, column: 10, scope: !2910)
!2961 = !DILocation(line: 1021, column: 1, scope: !2910)
!2962 = !DILocation(line: 1020, column: 3, scope: !2910)
!2963 = distinct !DISubprogram(name: "quotearg_custom", scope: !561, file: !561, line: 1024, type: !2964, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !2966)
!2964 = !DISubroutineType(types: !2965)
!2965 = !{!85, !119, !119, !119}
!2966 = !{!2967, !2968, !2969}
!2967 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2963, file: !561, line: 1024, type: !119)
!2968 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2963, file: !561, line: 1024, type: !119)
!2969 = !DILocalVariable(name: "arg", arg: 3, scope: !2963, file: !561, line: 1025, type: !119)
!2970 = distinct !DIAssignID()
!2971 = !DILocation(line: 0, scope: !2963)
!2972 = !DILocation(line: 0, scope: !2899, inlinedAt: !2973)
!2973 = distinct !DILocation(line: 1027, column: 10, scope: !2963)
!2974 = !DILocation(line: 0, scope: !2910, inlinedAt: !2975)
!2975 = distinct !DILocation(line: 1009, column: 10, scope: !2899, inlinedAt: !2973)
!2976 = !DILocation(line: 1018, column: 3, scope: !2910, inlinedAt: !2975)
!2977 = !DILocation(line: 1018, column: 30, scope: !2910, inlinedAt: !2975)
!2978 = distinct !DIAssignID()
!2979 = distinct !DIAssignID()
!2980 = !DILocation(line: 0, scope: !1802, inlinedAt: !2981)
!2981 = distinct !DILocation(line: 1019, column: 3, scope: !2910, inlinedAt: !2975)
!2982 = !DILocation(line: 174, column: 12, scope: !1802, inlinedAt: !2981)
!2983 = distinct !DIAssignID()
!2984 = !DILocation(line: 175, column: 8, scope: !1815, inlinedAt: !2981)
!2985 = !DILocation(line: 175, column: 19, scope: !1815, inlinedAt: !2981)
!2986 = !DILocation(line: 176, column: 5, scope: !1815, inlinedAt: !2981)
!2987 = !DILocation(line: 177, column: 6, scope: !1802, inlinedAt: !2981)
!2988 = !DILocation(line: 177, column: 17, scope: !1802, inlinedAt: !2981)
!2989 = distinct !DIAssignID()
!2990 = !DILocation(line: 178, column: 6, scope: !1802, inlinedAt: !2981)
!2991 = !DILocation(line: 178, column: 18, scope: !1802, inlinedAt: !2981)
!2992 = distinct !DIAssignID()
!2993 = !DILocation(line: 1020, column: 10, scope: !2910, inlinedAt: !2975)
!2994 = !DILocation(line: 1021, column: 1, scope: !2910, inlinedAt: !2975)
!2995 = !DILocation(line: 1027, column: 3, scope: !2963)
!2996 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !561, file: !561, line: 1031, type: !2997, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !2999)
!2997 = !DISubroutineType(types: !2998)
!2998 = !{!85, !119, !119, !119, !116}
!2999 = !{!3000, !3001, !3002, !3003}
!3000 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2996, file: !561, line: 1031, type: !119)
!3001 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2996, file: !561, line: 1031, type: !119)
!3002 = !DILocalVariable(name: "arg", arg: 3, scope: !2996, file: !561, line: 1032, type: !119)
!3003 = !DILocalVariable(name: "argsize", arg: 4, scope: !2996, file: !561, line: 1032, type: !116)
!3004 = distinct !DIAssignID()
!3005 = !DILocation(line: 0, scope: !2996)
!3006 = !DILocation(line: 0, scope: !2910, inlinedAt: !3007)
!3007 = distinct !DILocation(line: 1034, column: 10, scope: !2996)
!3008 = !DILocation(line: 1018, column: 3, scope: !2910, inlinedAt: !3007)
!3009 = !DILocation(line: 1018, column: 30, scope: !2910, inlinedAt: !3007)
!3010 = distinct !DIAssignID()
!3011 = distinct !DIAssignID()
!3012 = !DILocation(line: 0, scope: !1802, inlinedAt: !3013)
!3013 = distinct !DILocation(line: 1019, column: 3, scope: !2910, inlinedAt: !3007)
!3014 = !DILocation(line: 174, column: 12, scope: !1802, inlinedAt: !3013)
!3015 = distinct !DIAssignID()
!3016 = !DILocation(line: 175, column: 8, scope: !1815, inlinedAt: !3013)
!3017 = !DILocation(line: 175, column: 19, scope: !1815, inlinedAt: !3013)
!3018 = !DILocation(line: 176, column: 5, scope: !1815, inlinedAt: !3013)
!3019 = !DILocation(line: 177, column: 6, scope: !1802, inlinedAt: !3013)
!3020 = !DILocation(line: 177, column: 17, scope: !1802, inlinedAt: !3013)
!3021 = distinct !DIAssignID()
!3022 = !DILocation(line: 178, column: 6, scope: !1802, inlinedAt: !3013)
!3023 = !DILocation(line: 178, column: 18, scope: !1802, inlinedAt: !3013)
!3024 = distinct !DIAssignID()
!3025 = !DILocation(line: 1020, column: 10, scope: !2910, inlinedAt: !3007)
!3026 = !DILocation(line: 1021, column: 1, scope: !2910, inlinedAt: !3007)
!3027 = !DILocation(line: 1034, column: 3, scope: !2996)
!3028 = distinct !DISubprogram(name: "quote_n_mem", scope: !561, file: !561, line: 1049, type: !3029, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !3031)
!3029 = !DISubroutineType(types: !3030)
!3030 = !{!119, !83, !119, !116}
!3031 = !{!3032, !3033, !3034}
!3032 = !DILocalVariable(name: "n", arg: 1, scope: !3028, file: !561, line: 1049, type: !83)
!3033 = !DILocalVariable(name: "arg", arg: 2, scope: !3028, file: !561, line: 1049, type: !119)
!3034 = !DILocalVariable(name: "argsize", arg: 3, scope: !3028, file: !561, line: 1049, type: !116)
!3035 = !DILocation(line: 0, scope: !3028)
!3036 = !DILocation(line: 1051, column: 10, scope: !3028)
!3037 = !DILocation(line: 1051, column: 3, scope: !3028)
!3038 = distinct !DISubprogram(name: "quote_mem", scope: !561, file: !561, line: 1055, type: !3039, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !3041)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{!119, !119, !116}
!3041 = !{!3042, !3043}
!3042 = !DILocalVariable(name: "arg", arg: 1, scope: !3038, file: !561, line: 1055, type: !119)
!3043 = !DILocalVariable(name: "argsize", arg: 2, scope: !3038, file: !561, line: 1055, type: !116)
!3044 = !DILocation(line: 0, scope: !3038)
!3045 = !DILocation(line: 0, scope: !3028, inlinedAt: !3046)
!3046 = distinct !DILocation(line: 1057, column: 10, scope: !3038)
!3047 = !DILocation(line: 1051, column: 10, scope: !3028, inlinedAt: !3046)
!3048 = !DILocation(line: 1057, column: 3, scope: !3038)
!3049 = distinct !DISubprogram(name: "quote_n", scope: !561, file: !561, line: 1061, type: !3050, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !3052)
!3050 = !DISubroutineType(types: !3051)
!3051 = !{!119, !83, !119}
!3052 = !{!3053, !3054}
!3053 = !DILocalVariable(name: "n", arg: 1, scope: !3049, file: !561, line: 1061, type: !83)
!3054 = !DILocalVariable(name: "arg", arg: 2, scope: !3049, file: !561, line: 1061, type: !119)
!3055 = !DILocation(line: 0, scope: !3049)
!3056 = !DILocation(line: 0, scope: !3028, inlinedAt: !3057)
!3057 = distinct !DILocation(line: 1063, column: 10, scope: !3049)
!3058 = !DILocation(line: 1051, column: 10, scope: !3028, inlinedAt: !3057)
!3059 = !DILocation(line: 1063, column: 3, scope: !3049)
!3060 = distinct !DISubprogram(name: "quote", scope: !561, file: !561, line: 1067, type: !3061, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !3063)
!3061 = !DISubroutineType(types: !3062)
!3062 = !{!119, !119}
!3063 = !{!3064}
!3064 = !DILocalVariable(name: "arg", arg: 1, scope: !3060, file: !561, line: 1067, type: !119)
!3065 = !DILocation(line: 0, scope: !3060)
!3066 = !DILocation(line: 0, scope: !3049, inlinedAt: !3067)
!3067 = distinct !DILocation(line: 1069, column: 10, scope: !3060)
!3068 = !DILocation(line: 0, scope: !3028, inlinedAt: !3069)
!3069 = distinct !DILocation(line: 1063, column: 10, scope: !3049, inlinedAt: !3067)
!3070 = !DILocation(line: 1051, column: 10, scope: !3028, inlinedAt: !3069)
!3071 = !DILocation(line: 1069, column: 3, scope: !3060)
!3072 = distinct !DISubprogram(name: "version_etc_arn", scope: !677, file: !677, line: 61, type: !3073, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !795, retainedNodes: !3110)
!3073 = !DISubroutineType(types: !3074)
!3074 = !{null, !3075, !119, !119, !119, !3109, !116}
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3076 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !186, line: 7, baseType: !3077)
!3077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !188, line: 49, size: 1728, elements: !3078)
!3078 = !{!3079, !3080, !3081, !3082, !3083, !3084, !3085, !3086, !3087, !3088, !3089, !3090, !3091, !3092, !3094, !3095, !3096, !3097, !3098, !3099, !3100, !3101, !3102, !3103, !3104, !3105, !3106, !3107, !3108}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3077, file: !188, line: 51, baseType: !83, size: 32)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3077, file: !188, line: 54, baseType: !85, size: 64, offset: 64)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3077, file: !188, line: 55, baseType: !85, size: 64, offset: 128)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3077, file: !188, line: 56, baseType: !85, size: 64, offset: 192)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3077, file: !188, line: 57, baseType: !85, size: 64, offset: 256)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3077, file: !188, line: 58, baseType: !85, size: 64, offset: 320)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3077, file: !188, line: 59, baseType: !85, size: 64, offset: 384)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3077, file: !188, line: 60, baseType: !85, size: 64, offset: 448)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3077, file: !188, line: 61, baseType: !85, size: 64, offset: 512)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3077, file: !188, line: 64, baseType: !85, size: 64, offset: 576)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3077, file: !188, line: 65, baseType: !85, size: 64, offset: 640)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3077, file: !188, line: 66, baseType: !85, size: 64, offset: 704)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3077, file: !188, line: 68, baseType: !203, size: 64, offset: 768)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3077, file: !188, line: 70, baseType: !3093, size: 64, offset: 832)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3077, file: !188, line: 72, baseType: !83, size: 32, offset: 896)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3077, file: !188, line: 73, baseType: !83, size: 32, offset: 928)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3077, file: !188, line: 74, baseType: !210, size: 64, offset: 960)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3077, file: !188, line: 77, baseType: !115, size: 16, offset: 1024)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3077, file: !188, line: 78, baseType: !215, size: 8, offset: 1040)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3077, file: !188, line: 79, baseType: !126, size: 8, offset: 1048)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3077, file: !188, line: 81, baseType: !218, size: 64, offset: 1088)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3077, file: !188, line: 89, baseType: !221, size: 64, offset: 1152)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3077, file: !188, line: 91, baseType: !223, size: 64, offset: 1216)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3077, file: !188, line: 92, baseType: !226, size: 64, offset: 1280)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3077, file: !188, line: 93, baseType: !3093, size: 64, offset: 1344)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3077, file: !188, line: 94, baseType: !122, size: 64, offset: 1408)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3077, file: !188, line: 95, baseType: !116, size: 64, offset: 1472)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3077, file: !188, line: 96, baseType: !83, size: 32, offset: 1536)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3077, file: !188, line: 98, baseType: !233, size: 160, offset: 1568)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!3110 = !{!3111, !3112, !3113, !3114, !3115, !3116}
!3111 = !DILocalVariable(name: "stream", arg: 1, scope: !3072, file: !677, line: 61, type: !3075)
!3112 = !DILocalVariable(name: "command_name", arg: 2, scope: !3072, file: !677, line: 62, type: !119)
!3113 = !DILocalVariable(name: "package", arg: 3, scope: !3072, file: !677, line: 62, type: !119)
!3114 = !DILocalVariable(name: "version", arg: 4, scope: !3072, file: !677, line: 63, type: !119)
!3115 = !DILocalVariable(name: "authors", arg: 5, scope: !3072, file: !677, line: 64, type: !3109)
!3116 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3072, file: !677, line: 64, type: !116)
!3117 = !DILocation(line: 0, scope: !3072)
!3118 = !DILocation(line: 66, column: 7, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !3072, file: !677, line: 66, column: 7)
!3120 = !DILocation(line: 66, column: 7, scope: !3072)
!3121 = !DILocation(line: 67, column: 5, scope: !3119)
!3122 = !DILocation(line: 69, column: 5, scope: !3119)
!3123 = !DILocation(line: 83, column: 3, scope: !3072)
!3124 = !DILocation(line: 85, column: 3, scope: !3072)
!3125 = !DILocation(line: 88, column: 3, scope: !3072)
!3126 = !DILocation(line: 95, column: 3, scope: !3072)
!3127 = !DILocation(line: 97, column: 3, scope: !3072)
!3128 = !DILocation(line: 105, column: 7, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !3072, file: !677, line: 98, column: 5)
!3130 = !DILocation(line: 106, column: 7, scope: !3129)
!3131 = !DILocation(line: 109, column: 7, scope: !3129)
!3132 = !DILocation(line: 110, column: 7, scope: !3129)
!3133 = !DILocation(line: 113, column: 7, scope: !3129)
!3134 = !DILocation(line: 115, column: 7, scope: !3129)
!3135 = !DILocation(line: 120, column: 7, scope: !3129)
!3136 = !DILocation(line: 122, column: 7, scope: !3129)
!3137 = !DILocation(line: 127, column: 7, scope: !3129)
!3138 = !DILocation(line: 129, column: 7, scope: !3129)
!3139 = !DILocation(line: 134, column: 7, scope: !3129)
!3140 = !DILocation(line: 137, column: 7, scope: !3129)
!3141 = !DILocation(line: 142, column: 7, scope: !3129)
!3142 = !DILocation(line: 145, column: 7, scope: !3129)
!3143 = !DILocation(line: 150, column: 7, scope: !3129)
!3144 = !DILocation(line: 154, column: 7, scope: !3129)
!3145 = !DILocation(line: 159, column: 7, scope: !3129)
!3146 = !DILocation(line: 163, column: 7, scope: !3129)
!3147 = !DILocation(line: 170, column: 7, scope: !3129)
!3148 = !DILocation(line: 174, column: 7, scope: !3129)
!3149 = !DILocation(line: 176, column: 1, scope: !3072)
!3150 = distinct !DISubprogram(name: "version_etc_ar", scope: !677, file: !677, line: 183, type: !3151, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !795, retainedNodes: !3153)
!3151 = !DISubroutineType(types: !3152)
!3152 = !{null, !3075, !119, !119, !119, !3109}
!3153 = !{!3154, !3155, !3156, !3157, !3158, !3159}
!3154 = !DILocalVariable(name: "stream", arg: 1, scope: !3150, file: !677, line: 183, type: !3075)
!3155 = !DILocalVariable(name: "command_name", arg: 2, scope: !3150, file: !677, line: 184, type: !119)
!3156 = !DILocalVariable(name: "package", arg: 3, scope: !3150, file: !677, line: 184, type: !119)
!3157 = !DILocalVariable(name: "version", arg: 4, scope: !3150, file: !677, line: 185, type: !119)
!3158 = !DILocalVariable(name: "authors", arg: 5, scope: !3150, file: !677, line: 185, type: !3109)
!3159 = !DILocalVariable(name: "n_authors", scope: !3150, file: !677, line: 187, type: !116)
!3160 = !DILocation(line: 0, scope: !3150)
!3161 = !DILocation(line: 189, column: 8, scope: !3162)
!3162 = distinct !DILexicalBlock(scope: !3150, file: !677, line: 189, column: 3)
!3163 = !DILocation(line: 189, scope: !3162)
!3164 = !DILocation(line: 189, column: 23, scope: !3165)
!3165 = distinct !DILexicalBlock(scope: !3162, file: !677, line: 189, column: 3)
!3166 = !DILocation(line: 189, column: 3, scope: !3162)
!3167 = !DILocation(line: 189, column: 52, scope: !3165)
!3168 = distinct !{!3168, !3166, !3169, !1015}
!3169 = !DILocation(line: 190, column: 5, scope: !3162)
!3170 = !DILocation(line: 191, column: 3, scope: !3150)
!3171 = !DILocation(line: 192, column: 1, scope: !3150)
!3172 = distinct !DISubprogram(name: "version_etc_va", scope: !677, file: !677, line: 199, type: !3173, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !795, retainedNodes: !3182)
!3173 = !DISubroutineType(types: !3174)
!3174 = !{null, !3075, !119, !119, !119, !3175}
!3175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3176, size: 64)
!3176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3177)
!3177 = !{!3178, !3179, !3180, !3181}
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3176, file: !677, line: 192, baseType: !90, size: 32)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3176, file: !677, line: 192, baseType: !90, size: 32, offset: 32)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3176, file: !677, line: 192, baseType: !122, size: 64, offset: 64)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3176, file: !677, line: 192, baseType: !122, size: 64, offset: 128)
!3182 = !{!3183, !3184, !3185, !3186, !3187, !3188, !3189}
!3183 = !DILocalVariable(name: "stream", arg: 1, scope: !3172, file: !677, line: 199, type: !3075)
!3184 = !DILocalVariable(name: "command_name", arg: 2, scope: !3172, file: !677, line: 200, type: !119)
!3185 = !DILocalVariable(name: "package", arg: 3, scope: !3172, file: !677, line: 200, type: !119)
!3186 = !DILocalVariable(name: "version", arg: 4, scope: !3172, file: !677, line: 201, type: !119)
!3187 = !DILocalVariable(name: "authors", arg: 5, scope: !3172, file: !677, line: 201, type: !3175)
!3188 = !DILocalVariable(name: "n_authors", scope: !3172, file: !677, line: 203, type: !116)
!3189 = !DILocalVariable(name: "authtab", scope: !3172, file: !677, line: 204, type: !3190)
!3190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 640, elements: !132)
!3191 = distinct !DIAssignID()
!3192 = !DILocation(line: 0, scope: !3172)
!3193 = !DILocation(line: 204, column: 3, scope: !3172)
!3194 = !DILocation(line: 208, column: 35, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !3196, file: !677, line: 206, column: 3)
!3196 = distinct !DILexicalBlock(scope: !3172, file: !677, line: 206, column: 3)
!3197 = !DILocation(line: 208, column: 33, scope: !3195)
!3198 = !DILocation(line: 208, column: 67, scope: !3195)
!3199 = !DILocation(line: 206, column: 3, scope: !3196)
!3200 = !DILocation(line: 208, column: 14, scope: !3195)
!3201 = !DILocation(line: 0, scope: !3196)
!3202 = !DILocation(line: 211, column: 3, scope: !3172)
!3203 = !DILocation(line: 213, column: 1, scope: !3172)
!3204 = distinct !DISubprogram(name: "version_etc", scope: !677, file: !677, line: 230, type: !3205, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !795, retainedNodes: !3207)
!3205 = !DISubroutineType(types: !3206)
!3206 = !{null, !3075, !119, !119, !119, null}
!3207 = !{!3208, !3209, !3210, !3211, !3212}
!3208 = !DILocalVariable(name: "stream", arg: 1, scope: !3204, file: !677, line: 230, type: !3075)
!3209 = !DILocalVariable(name: "command_name", arg: 2, scope: !3204, file: !677, line: 231, type: !119)
!3210 = !DILocalVariable(name: "package", arg: 3, scope: !3204, file: !677, line: 231, type: !119)
!3211 = !DILocalVariable(name: "version", arg: 4, scope: !3204, file: !677, line: 232, type: !119)
!3212 = !DILocalVariable(name: "authors", scope: !3204, file: !677, line: 234, type: !3213)
!3213 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !972, line: 52, baseType: !3214)
!3214 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1588, line: 12, baseType: !3215)
!3215 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !677, baseType: !3216)
!3216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3176, size: 192, elements: !127)
!3217 = distinct !DIAssignID()
!3218 = !DILocation(line: 0, scope: !3204)
!3219 = !DILocation(line: 234, column: 3, scope: !3204)
!3220 = !DILocation(line: 235, column: 3, scope: !3204)
!3221 = !DILocation(line: 236, column: 3, scope: !3204)
!3222 = !DILocation(line: 237, column: 3, scope: !3204)
!3223 = !DILocation(line: 238, column: 1, scope: !3204)
!3224 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !677, file: !677, line: 241, type: !516, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !795)
!3225 = !DILocation(line: 243, column: 3, scope: !3224)
!3226 = !DILocation(line: 248, column: 3, scope: !3224)
!3227 = !DILocation(line: 254, column: 3, scope: !3224)
!3228 = !DILocation(line: 259, column: 3, scope: !3224)
!3229 = !DILocation(line: 261, column: 1, scope: !3224)
!3230 = distinct !DISubprogram(name: "xnrealloc", scope: !3231, file: !3231, line: 147, type: !3232, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !802, retainedNodes: !3234)
!3231 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3232 = !DISubroutineType(types: !3233)
!3233 = !{!122, !122, !116, !116}
!3234 = !{!3235, !3236, !3237}
!3235 = !DILocalVariable(name: "p", arg: 1, scope: !3230, file: !3231, line: 147, type: !122)
!3236 = !DILocalVariable(name: "n", arg: 2, scope: !3230, file: !3231, line: 147, type: !116)
!3237 = !DILocalVariable(name: "s", arg: 3, scope: !3230, file: !3231, line: 147, type: !116)
!3238 = !DILocation(line: 0, scope: !3230)
!3239 = !DILocalVariable(name: "p", arg: 1, scope: !3240, file: !803, line: 83, type: !122)
!3240 = distinct !DISubprogram(name: "xreallocarray", scope: !803, file: !803, line: 83, type: !3232, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !802, retainedNodes: !3241)
!3241 = !{!3239, !3242, !3243}
!3242 = !DILocalVariable(name: "n", arg: 2, scope: !3240, file: !803, line: 83, type: !116)
!3243 = !DILocalVariable(name: "s", arg: 3, scope: !3240, file: !803, line: 83, type: !116)
!3244 = !DILocation(line: 0, scope: !3240, inlinedAt: !3245)
!3245 = distinct !DILocation(line: 149, column: 10, scope: !3230)
!3246 = !DILocation(line: 85, column: 25, scope: !3240, inlinedAt: !3245)
!3247 = !DILocalVariable(name: "p", arg: 1, scope: !3248, file: !803, line: 37, type: !122)
!3248 = distinct !DISubprogram(name: "check_nonnull", scope: !803, file: !803, line: 37, type: !3249, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !802, retainedNodes: !3251)
!3249 = !DISubroutineType(types: !3250)
!3250 = !{!122, !122}
!3251 = !{!3247}
!3252 = !DILocation(line: 0, scope: !3248, inlinedAt: !3253)
!3253 = distinct !DILocation(line: 85, column: 10, scope: !3240, inlinedAt: !3245)
!3254 = !DILocation(line: 39, column: 8, scope: !3255, inlinedAt: !3253)
!3255 = distinct !DILexicalBlock(scope: !3248, file: !803, line: 39, column: 7)
!3256 = !DILocation(line: 39, column: 7, scope: !3248, inlinedAt: !3253)
!3257 = !DILocation(line: 40, column: 5, scope: !3255, inlinedAt: !3253)
!3258 = !DILocation(line: 149, column: 3, scope: !3230)
!3259 = !DILocation(line: 0, scope: !3240)
!3260 = !DILocation(line: 85, column: 25, scope: !3240)
!3261 = !DILocation(line: 0, scope: !3248, inlinedAt: !3262)
!3262 = distinct !DILocation(line: 85, column: 10, scope: !3240)
!3263 = !DILocation(line: 39, column: 8, scope: !3255, inlinedAt: !3262)
!3264 = !DILocation(line: 39, column: 7, scope: !3248, inlinedAt: !3262)
!3265 = !DILocation(line: 40, column: 5, scope: !3255, inlinedAt: !3262)
!3266 = !DILocation(line: 85, column: 3, scope: !3240)
!3267 = distinct !DISubprogram(name: "xmalloc", scope: !803, file: !803, line: 47, type: !3268, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !802, retainedNodes: !3270)
!3268 = !DISubroutineType(types: !3269)
!3269 = !{!122, !116}
!3270 = !{!3271}
!3271 = !DILocalVariable(name: "s", arg: 1, scope: !3267, file: !803, line: 47, type: !116)
!3272 = !DILocation(line: 0, scope: !3267)
!3273 = !DILocation(line: 49, column: 25, scope: !3267)
!3274 = !DILocation(line: 0, scope: !3248, inlinedAt: !3275)
!3275 = distinct !DILocation(line: 49, column: 10, scope: !3267)
!3276 = !DILocation(line: 39, column: 8, scope: !3255, inlinedAt: !3275)
!3277 = !DILocation(line: 39, column: 7, scope: !3248, inlinedAt: !3275)
!3278 = !DILocation(line: 40, column: 5, scope: !3255, inlinedAt: !3275)
!3279 = !DILocation(line: 49, column: 3, scope: !3267)
!3280 = !DISubprogram(name: "malloc", scope: !1126, file: !1126, line: 540, type: !3268, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3281 = distinct !DISubprogram(name: "ximalloc", scope: !803, file: !803, line: 53, type: !3282, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !802, retainedNodes: !3284)
!3282 = !DISubroutineType(types: !3283)
!3283 = !{!122, !822}
!3284 = !{!3285}
!3285 = !DILocalVariable(name: "s", arg: 1, scope: !3281, file: !803, line: 53, type: !822)
!3286 = !DILocation(line: 0, scope: !3281)
!3287 = !DILocalVariable(name: "s", arg: 1, scope: !3288, file: !3289, line: 55, type: !822)
!3288 = distinct !DISubprogram(name: "imalloc", scope: !3289, file: !3289, line: 55, type: !3282, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !802, retainedNodes: !3290)
!3289 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3290 = !{!3287}
!3291 = !DILocation(line: 0, scope: !3288, inlinedAt: !3292)
!3292 = distinct !DILocation(line: 55, column: 25, scope: !3281)
!3293 = !DILocation(line: 57, column: 26, scope: !3288, inlinedAt: !3292)
!3294 = !DILocation(line: 0, scope: !3248, inlinedAt: !3295)
!3295 = distinct !DILocation(line: 55, column: 10, scope: !3281)
!3296 = !DILocation(line: 39, column: 8, scope: !3255, inlinedAt: !3295)
!3297 = !DILocation(line: 39, column: 7, scope: !3248, inlinedAt: !3295)
!3298 = !DILocation(line: 40, column: 5, scope: !3255, inlinedAt: !3295)
!3299 = !DILocation(line: 55, column: 3, scope: !3281)
!3300 = distinct !DISubprogram(name: "xcharalloc", scope: !803, file: !803, line: 59, type: !3301, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !802, retainedNodes: !3303)
!3301 = !DISubroutineType(types: !3302)
!3302 = !{!85, !116}
!3303 = !{!3304}
!3304 = !DILocalVariable(name: "n", arg: 1, scope: !3300, file: !803, line: 59, type: !116)
!3305 = !DILocation(line: 0, scope: !3300)
!3306 = !DILocation(line: 0, scope: !3267, inlinedAt: !3307)
!3307 = distinct !DILocation(line: 61, column: 10, scope: !3300)
!3308 = !DILocation(line: 49, column: 25, scope: !3267, inlinedAt: !3307)
!3309 = !DILocation(line: 0, scope: !3248, inlinedAt: !3310)
!3310 = distinct !DILocation(line: 49, column: 10, scope: !3267, inlinedAt: !3307)
!3311 = !DILocation(line: 39, column: 8, scope: !3255, inlinedAt: !3310)
!3312 = !DILocation(line: 39, column: 7, scope: !3248, inlinedAt: !3310)
!3313 = !DILocation(line: 40, column: 5, scope: !3255, inlinedAt: !3310)
!3314 = !DILocation(line: 61, column: 3, scope: !3300)
!3315 = distinct !DISubprogram(name: "xrealloc", scope: !803, file: !803, line: 68, type: !3316, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !802, retainedNodes: !3318)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{!122, !122, !116}
!3318 = !{!3319, !3320}
!3319 = !DILocalVariable(name: "p", arg: 1, scope: !3315, file: !803, line: 68, type: !122)
!3320 = !DILocalVariable(name: "s", arg: 2, scope: !3315, file: !803, line: 68, type: !116)
!3321 = !DILocation(line: 0, scope: !3315)
!3322 = !DILocalVariable(name: "ptr", arg: 1, scope: !3323, file: !3324, line: 2057, type: !122)
!3323 = distinct !DISubprogram(name: "rpl_realloc", scope: !3324, file: !3324, line: 2057, type: !3316, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !802, retainedNodes: !3325)
!3324 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3325 = !{!3322, !3326}
!3326 = !DILocalVariable(name: "size", arg: 2, scope: !3323, file: !3324, line: 2057, type: !116)
!3327 = !DILocation(line: 0, scope: !3323, inlinedAt: !3328)
!3328 = distinct !DILocation(line: 70, column: 25, scope: !3315)
!3329 = !DILocation(line: 2059, column: 24, scope: !3323, inlinedAt: !3328)
!3330 = !DILocation(line: 2059, column: 10, scope: !3323, inlinedAt: !3328)
!3331 = !DILocation(line: 0, scope: !3248, inlinedAt: !3332)
!3332 = distinct !DILocation(line: 70, column: 10, scope: !3315)
!3333 = !DILocation(line: 39, column: 8, scope: !3255, inlinedAt: !3332)
!3334 = !DILocation(line: 39, column: 7, scope: !3248, inlinedAt: !3332)
!3335 = !DILocation(line: 40, column: 5, scope: !3255, inlinedAt: !3332)
!3336 = !DILocation(line: 70, column: 3, scope: !3315)
!3337 = !DISubprogram(name: "realloc", scope: !1126, file: !1126, line: 551, type: !3316, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3338 = distinct !DISubprogram(name: "xirealloc", scope: !803, file: !803, line: 74, type: !3339, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !802, retainedNodes: !3341)
!3339 = !DISubroutineType(types: !3340)
!3340 = !{!122, !122, !822}
!3341 = !{!3342, !3343}
!3342 = !DILocalVariable(name: "p", arg: 1, scope: !3338, file: !803, line: 74, type: !122)
!3343 = !DILocalVariable(name: "s", arg: 2, scope: !3338, file: !803, line: 74, type: !822)
!3344 = !DILocation(line: 0, scope: !3338)
!3345 = !DILocalVariable(name: "p", arg: 1, scope: !3346, file: !3289, line: 66, type: !122)
!3346 = distinct !DISubprogram(name: "irealloc", scope: !3289, file: !3289, line: 66, type: !3339, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !802, retainedNodes: !3347)
!3347 = !{!3345, !3348}
!3348 = !DILocalVariable(name: "s", arg: 2, scope: !3346, file: !3289, line: 66, type: !822)
!3349 = !DILocation(line: 0, scope: !3346, inlinedAt: !3350)
!3350 = distinct !DILocation(line: 76, column: 25, scope: !3338)
!3351 = !DILocation(line: 0, scope: !3323, inlinedAt: !3352)
!3352 = distinct !DILocation(line: 68, column: 26, scope: !3346, inlinedAt: !3350)
!3353 = !DILocation(line: 2059, column: 24, scope: !3323, inlinedAt: !3352)
!3354 = !DILocation(line: 2059, column: 10, scope: !3323, inlinedAt: !3352)
!3355 = !DILocation(line: 0, scope: !3248, inlinedAt: !3356)
!3356 = distinct !DILocation(line: 76, column: 10, scope: !3338)
!3357 = !DILocation(line: 39, column: 8, scope: !3255, inlinedAt: !3356)
!3358 = !DILocation(line: 39, column: 7, scope: !3248, inlinedAt: !3356)
!3359 = !DILocation(line: 40, column: 5, scope: !3255, inlinedAt: !3356)
!3360 = !DILocation(line: 76, column: 3, scope: !3338)
!3361 = distinct !DISubprogram(name: "xireallocarray", scope: !803, file: !803, line: 89, type: !3362, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !802, retainedNodes: !3364)
!3362 = !DISubroutineType(types: !3363)
!3363 = !{!122, !122, !822, !822}
!3364 = !{!3365, !3366, !3367}
!3365 = !DILocalVariable(name: "p", arg: 1, scope: !3361, file: !803, line: 89, type: !122)
!3366 = !DILocalVariable(name: "n", arg: 2, scope: !3361, file: !803, line: 89, type: !822)
!3367 = !DILocalVariable(name: "s", arg: 3, scope: !3361, file: !803, line: 89, type: !822)
!3368 = !DILocation(line: 0, scope: !3361)
!3369 = !DILocalVariable(name: "p", arg: 1, scope: !3370, file: !3289, line: 98, type: !122)
!3370 = distinct !DISubprogram(name: "ireallocarray", scope: !3289, file: !3289, line: 98, type: !3362, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !802, retainedNodes: !3371)
!3371 = !{!3369, !3372, !3373}
!3372 = !DILocalVariable(name: "n", arg: 2, scope: !3370, file: !3289, line: 98, type: !822)
!3373 = !DILocalVariable(name: "s", arg: 3, scope: !3370, file: !3289, line: 98, type: !822)
!3374 = !DILocation(line: 0, scope: !3370, inlinedAt: !3375)
!3375 = distinct !DILocation(line: 91, column: 25, scope: !3361)
!3376 = !DILocation(line: 101, column: 13, scope: !3370, inlinedAt: !3375)
!3377 = !DILocation(line: 0, scope: !3248, inlinedAt: !3378)
!3378 = distinct !DILocation(line: 91, column: 10, scope: !3361)
!3379 = !DILocation(line: 39, column: 8, scope: !3255, inlinedAt: !3378)
!3380 = !DILocation(line: 39, column: 7, scope: !3248, inlinedAt: !3378)
!3381 = !DILocation(line: 40, column: 5, scope: !3255, inlinedAt: !3378)
!3382 = !DILocation(line: 91, column: 3, scope: !3361)
!3383 = distinct !DISubprogram(name: "xnmalloc", scope: !803, file: !803, line: 98, type: !3384, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !802, retainedNodes: !3386)
!3384 = !DISubroutineType(types: !3385)
!3385 = !{!122, !116, !116}
!3386 = !{!3387, !3388}
!3387 = !DILocalVariable(name: "n", arg: 1, scope: !3383, file: !803, line: 98, type: !116)
!3388 = !DILocalVariable(name: "s", arg: 2, scope: !3383, file: !803, line: 98, type: !116)
!3389 = !DILocation(line: 0, scope: !3383)
!3390 = !DILocation(line: 0, scope: !3240, inlinedAt: !3391)
!3391 = distinct !DILocation(line: 100, column: 10, scope: !3383)
!3392 = !DILocation(line: 85, column: 25, scope: !3240, inlinedAt: !3391)
!3393 = !DILocation(line: 0, scope: !3248, inlinedAt: !3394)
!3394 = distinct !DILocation(line: 85, column: 10, scope: !3240, inlinedAt: !3391)
!3395 = !DILocation(line: 39, column: 8, scope: !3255, inlinedAt: !3394)
!3396 = !DILocation(line: 39, column: 7, scope: !3248, inlinedAt: !3394)
!3397 = !DILocation(line: 40, column: 5, scope: !3255, inlinedAt: !3394)
!3398 = !DILocation(line: 100, column: 3, scope: !3383)
!3399 = distinct !DISubprogram(name: "xinmalloc", scope: !803, file: !803, line: 104, type: !3400, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !802, retainedNodes: !3402)
!3400 = !DISubroutineType(types: !3401)
!3401 = !{!122, !822, !822}
!3402 = !{!3403, !3404}
!3403 = !DILocalVariable(name: "n", arg: 1, scope: !3399, file: !803, line: 104, type: !822)
!3404 = !DILocalVariable(name: "s", arg: 2, scope: !3399, file: !803, line: 104, type: !822)
!3405 = !DILocation(line: 0, scope: !3399)
!3406 = !DILocation(line: 0, scope: !3361, inlinedAt: !3407)
!3407 = distinct !DILocation(line: 106, column: 10, scope: !3399)
!3408 = !DILocation(line: 0, scope: !3370, inlinedAt: !3409)
!3409 = distinct !DILocation(line: 91, column: 25, scope: !3361, inlinedAt: !3407)
!3410 = !DILocation(line: 101, column: 13, scope: !3370, inlinedAt: !3409)
!3411 = !DILocation(line: 0, scope: !3248, inlinedAt: !3412)
!3412 = distinct !DILocation(line: 91, column: 10, scope: !3361, inlinedAt: !3407)
!3413 = !DILocation(line: 39, column: 8, scope: !3255, inlinedAt: !3412)
!3414 = !DILocation(line: 39, column: 7, scope: !3248, inlinedAt: !3412)
!3415 = !DILocation(line: 40, column: 5, scope: !3255, inlinedAt: !3412)
!3416 = !DILocation(line: 106, column: 3, scope: !3399)
!3417 = distinct !DISubprogram(name: "x2realloc", scope: !803, file: !803, line: 116, type: !3418, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !802, retainedNodes: !3420)
!3418 = !DISubroutineType(types: !3419)
!3419 = !{!122, !122, !809}
!3420 = !{!3421, !3422}
!3421 = !DILocalVariable(name: "p", arg: 1, scope: !3417, file: !803, line: 116, type: !122)
!3422 = !DILocalVariable(name: "ps", arg: 2, scope: !3417, file: !803, line: 116, type: !809)
!3423 = !DILocation(line: 0, scope: !3417)
!3424 = !DILocation(line: 0, scope: !806, inlinedAt: !3425)
!3425 = distinct !DILocation(line: 118, column: 10, scope: !3417)
!3426 = !DILocation(line: 178, column: 14, scope: !806, inlinedAt: !3425)
!3427 = !DILocation(line: 180, column: 9, scope: !3428, inlinedAt: !3425)
!3428 = distinct !DILexicalBlock(scope: !806, file: !803, line: 180, column: 7)
!3429 = !DILocation(line: 180, column: 7, scope: !806, inlinedAt: !3425)
!3430 = !DILocation(line: 182, column: 13, scope: !3431, inlinedAt: !3425)
!3431 = distinct !DILexicalBlock(scope: !3432, file: !803, line: 182, column: 11)
!3432 = distinct !DILexicalBlock(scope: !3428, file: !803, line: 181, column: 5)
!3433 = !DILocation(line: 182, column: 11, scope: !3432, inlinedAt: !3425)
!3434 = !DILocation(line: 197, column: 11, scope: !3435, inlinedAt: !3425)
!3435 = distinct !DILexicalBlock(scope: !3436, file: !803, line: 197, column: 11)
!3436 = distinct !DILexicalBlock(scope: !3428, file: !803, line: 195, column: 5)
!3437 = !DILocation(line: 197, column: 11, scope: !3436, inlinedAt: !3425)
!3438 = !DILocation(line: 198, column: 9, scope: !3435, inlinedAt: !3425)
!3439 = !DILocation(line: 0, scope: !3240, inlinedAt: !3440)
!3440 = distinct !DILocation(line: 201, column: 7, scope: !806, inlinedAt: !3425)
!3441 = !DILocation(line: 85, column: 25, scope: !3240, inlinedAt: !3440)
!3442 = !DILocation(line: 0, scope: !3248, inlinedAt: !3443)
!3443 = distinct !DILocation(line: 85, column: 10, scope: !3240, inlinedAt: !3440)
!3444 = !DILocation(line: 39, column: 8, scope: !3255, inlinedAt: !3443)
!3445 = !DILocation(line: 39, column: 7, scope: !3248, inlinedAt: !3443)
!3446 = !DILocation(line: 40, column: 5, scope: !3255, inlinedAt: !3443)
!3447 = !DILocation(line: 202, column: 7, scope: !806, inlinedAt: !3425)
!3448 = !DILocation(line: 118, column: 3, scope: !3417)
!3449 = !DILocation(line: 0, scope: !806)
!3450 = !DILocation(line: 178, column: 14, scope: !806)
!3451 = !DILocation(line: 180, column: 9, scope: !3428)
!3452 = !DILocation(line: 180, column: 7, scope: !806)
!3453 = !DILocation(line: 182, column: 13, scope: !3431)
!3454 = !DILocation(line: 182, column: 11, scope: !3432)
!3455 = !DILocation(line: 190, column: 30, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !3431, file: !803, line: 183, column: 9)
!3457 = !DILocation(line: 191, column: 16, scope: !3456)
!3458 = !DILocation(line: 191, column: 13, scope: !3456)
!3459 = !DILocation(line: 192, column: 9, scope: !3456)
!3460 = !DILocation(line: 197, column: 11, scope: !3435)
!3461 = !DILocation(line: 197, column: 11, scope: !3436)
!3462 = !DILocation(line: 198, column: 9, scope: !3435)
!3463 = !DILocation(line: 0, scope: !3240, inlinedAt: !3464)
!3464 = distinct !DILocation(line: 201, column: 7, scope: !806)
!3465 = !DILocation(line: 85, column: 25, scope: !3240, inlinedAt: !3464)
!3466 = !DILocation(line: 0, scope: !3248, inlinedAt: !3467)
!3467 = distinct !DILocation(line: 85, column: 10, scope: !3240, inlinedAt: !3464)
!3468 = !DILocation(line: 39, column: 8, scope: !3255, inlinedAt: !3467)
!3469 = !DILocation(line: 39, column: 7, scope: !3248, inlinedAt: !3467)
!3470 = !DILocation(line: 40, column: 5, scope: !3255, inlinedAt: !3467)
!3471 = !DILocation(line: 202, column: 7, scope: !806)
!3472 = !DILocation(line: 203, column: 3, scope: !806)
!3473 = !DILocation(line: 0, scope: !818)
!3474 = !DILocation(line: 230, column: 14, scope: !818)
!3475 = !DILocation(line: 238, column: 7, scope: !3476)
!3476 = distinct !DILexicalBlock(scope: !818, file: !803, line: 238, column: 7)
!3477 = !DILocation(line: 238, column: 7, scope: !818)
!3478 = !DILocation(line: 240, column: 9, scope: !3479)
!3479 = distinct !DILexicalBlock(scope: !818, file: !803, line: 240, column: 7)
!3480 = !DILocation(line: 240, column: 18, scope: !3479)
!3481 = !DILocation(line: 253, column: 8, scope: !818)
!3482 = !DILocation(line: 256, column: 7, scope: !3483)
!3483 = distinct !DILexicalBlock(scope: !818, file: !803, line: 256, column: 7)
!3484 = !DILocation(line: 256, column: 7, scope: !818)
!3485 = !DILocation(line: 258, column: 27, scope: !3486)
!3486 = distinct !DILexicalBlock(scope: !3483, file: !803, line: 257, column: 5)
!3487 = !DILocation(line: 259, column: 50, scope: !3486)
!3488 = !DILocation(line: 259, column: 32, scope: !3486)
!3489 = !DILocation(line: 260, column: 5, scope: !3486)
!3490 = !DILocation(line: 262, column: 9, scope: !3491)
!3491 = distinct !DILexicalBlock(scope: !818, file: !803, line: 262, column: 7)
!3492 = !DILocation(line: 262, column: 7, scope: !818)
!3493 = !DILocation(line: 263, column: 9, scope: !3491)
!3494 = !DILocation(line: 263, column: 5, scope: !3491)
!3495 = !DILocation(line: 264, column: 9, scope: !3496)
!3496 = distinct !DILexicalBlock(scope: !818, file: !803, line: 264, column: 7)
!3497 = !DILocation(line: 264, column: 14, scope: !3496)
!3498 = !DILocation(line: 265, column: 7, scope: !3496)
!3499 = !DILocation(line: 265, column: 11, scope: !3496)
!3500 = !DILocation(line: 266, column: 11, scope: !3496)
!3501 = !DILocation(line: 267, column: 14, scope: !3496)
!3502 = !DILocation(line: 264, column: 7, scope: !818)
!3503 = !DILocation(line: 268, column: 5, scope: !3496)
!3504 = !DILocation(line: 0, scope: !3315, inlinedAt: !3505)
!3505 = distinct !DILocation(line: 269, column: 8, scope: !818)
!3506 = !DILocation(line: 0, scope: !3323, inlinedAt: !3507)
!3507 = distinct !DILocation(line: 70, column: 25, scope: !3315, inlinedAt: !3505)
!3508 = !DILocation(line: 2059, column: 24, scope: !3323, inlinedAt: !3507)
!3509 = !DILocation(line: 2059, column: 10, scope: !3323, inlinedAt: !3507)
!3510 = !DILocation(line: 0, scope: !3248, inlinedAt: !3511)
!3511 = distinct !DILocation(line: 70, column: 10, scope: !3315, inlinedAt: !3505)
!3512 = !DILocation(line: 39, column: 8, scope: !3255, inlinedAt: !3511)
!3513 = !DILocation(line: 39, column: 7, scope: !3248, inlinedAt: !3511)
!3514 = !DILocation(line: 40, column: 5, scope: !3255, inlinedAt: !3511)
!3515 = !DILocation(line: 270, column: 7, scope: !818)
!3516 = !DILocation(line: 271, column: 3, scope: !818)
!3517 = distinct !DISubprogram(name: "xzalloc", scope: !803, file: !803, line: 279, type: !3268, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !802, retainedNodes: !3518)
!3518 = !{!3519}
!3519 = !DILocalVariable(name: "s", arg: 1, scope: !3517, file: !803, line: 279, type: !116)
!3520 = !DILocation(line: 0, scope: !3517)
!3521 = !DILocalVariable(name: "n", arg: 1, scope: !3522, file: !803, line: 294, type: !116)
!3522 = distinct !DISubprogram(name: "xcalloc", scope: !803, file: !803, line: 294, type: !3384, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !802, retainedNodes: !3523)
!3523 = !{!3521, !3524}
!3524 = !DILocalVariable(name: "s", arg: 2, scope: !3522, file: !803, line: 294, type: !116)
!3525 = !DILocation(line: 0, scope: !3522, inlinedAt: !3526)
!3526 = distinct !DILocation(line: 281, column: 10, scope: !3517)
!3527 = !DILocation(line: 296, column: 25, scope: !3522, inlinedAt: !3526)
!3528 = !DILocation(line: 0, scope: !3248, inlinedAt: !3529)
!3529 = distinct !DILocation(line: 296, column: 10, scope: !3522, inlinedAt: !3526)
!3530 = !DILocation(line: 39, column: 8, scope: !3255, inlinedAt: !3529)
!3531 = !DILocation(line: 39, column: 7, scope: !3248, inlinedAt: !3529)
!3532 = !DILocation(line: 40, column: 5, scope: !3255, inlinedAt: !3529)
!3533 = !DILocation(line: 281, column: 3, scope: !3517)
!3534 = !DISubprogram(name: "calloc", scope: !1126, file: !1126, line: 543, type: !3384, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3535 = !DILocation(line: 0, scope: !3522)
!3536 = !DILocation(line: 296, column: 25, scope: !3522)
!3537 = !DILocation(line: 0, scope: !3248, inlinedAt: !3538)
!3538 = distinct !DILocation(line: 296, column: 10, scope: !3522)
!3539 = !DILocation(line: 39, column: 8, scope: !3255, inlinedAt: !3538)
!3540 = !DILocation(line: 39, column: 7, scope: !3248, inlinedAt: !3538)
!3541 = !DILocation(line: 40, column: 5, scope: !3255, inlinedAt: !3538)
!3542 = !DILocation(line: 296, column: 3, scope: !3522)
!3543 = distinct !DISubprogram(name: "xizalloc", scope: !803, file: !803, line: 285, type: !3282, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !802, retainedNodes: !3544)
!3544 = !{!3545}
!3545 = !DILocalVariable(name: "s", arg: 1, scope: !3543, file: !803, line: 285, type: !822)
!3546 = !DILocation(line: 0, scope: !3543)
!3547 = !DILocalVariable(name: "n", arg: 1, scope: !3548, file: !803, line: 300, type: !822)
!3548 = distinct !DISubprogram(name: "xicalloc", scope: !803, file: !803, line: 300, type: !3400, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !802, retainedNodes: !3549)
!3549 = !{!3547, !3550}
!3550 = !DILocalVariable(name: "s", arg: 2, scope: !3548, file: !803, line: 300, type: !822)
!3551 = !DILocation(line: 0, scope: !3548, inlinedAt: !3552)
!3552 = distinct !DILocation(line: 287, column: 10, scope: !3543)
!3553 = !DILocalVariable(name: "n", arg: 1, scope: !3554, file: !3289, line: 77, type: !822)
!3554 = distinct !DISubprogram(name: "icalloc", scope: !3289, file: !3289, line: 77, type: !3400, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !802, retainedNodes: !3555)
!3555 = !{!3553, !3556}
!3556 = !DILocalVariable(name: "s", arg: 2, scope: !3554, file: !3289, line: 77, type: !822)
!3557 = !DILocation(line: 0, scope: !3554, inlinedAt: !3558)
!3558 = distinct !DILocation(line: 302, column: 25, scope: !3548, inlinedAt: !3552)
!3559 = !DILocation(line: 91, column: 10, scope: !3554, inlinedAt: !3558)
!3560 = !DILocation(line: 0, scope: !3248, inlinedAt: !3561)
!3561 = distinct !DILocation(line: 302, column: 10, scope: !3548, inlinedAt: !3552)
!3562 = !DILocation(line: 39, column: 8, scope: !3255, inlinedAt: !3561)
!3563 = !DILocation(line: 39, column: 7, scope: !3248, inlinedAt: !3561)
!3564 = !DILocation(line: 40, column: 5, scope: !3255, inlinedAt: !3561)
!3565 = !DILocation(line: 287, column: 3, scope: !3543)
!3566 = !DILocation(line: 0, scope: !3548)
!3567 = !DILocation(line: 0, scope: !3554, inlinedAt: !3568)
!3568 = distinct !DILocation(line: 302, column: 25, scope: !3548)
!3569 = !DILocation(line: 91, column: 10, scope: !3554, inlinedAt: !3568)
!3570 = !DILocation(line: 0, scope: !3248, inlinedAt: !3571)
!3571 = distinct !DILocation(line: 302, column: 10, scope: !3548)
!3572 = !DILocation(line: 39, column: 8, scope: !3255, inlinedAt: !3571)
!3573 = !DILocation(line: 39, column: 7, scope: !3248, inlinedAt: !3571)
!3574 = !DILocation(line: 40, column: 5, scope: !3255, inlinedAt: !3571)
!3575 = !DILocation(line: 302, column: 3, scope: !3548)
!3576 = distinct !DISubprogram(name: "xmemdup", scope: !803, file: !803, line: 310, type: !3577, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !802, retainedNodes: !3579)
!3577 = !DISubroutineType(types: !3578)
!3578 = !{!122, !1147, !116}
!3579 = !{!3580, !3581}
!3580 = !DILocalVariable(name: "p", arg: 1, scope: !3576, file: !803, line: 310, type: !1147)
!3581 = !DILocalVariable(name: "s", arg: 2, scope: !3576, file: !803, line: 310, type: !116)
!3582 = !DILocation(line: 0, scope: !3576)
!3583 = !DILocation(line: 0, scope: !3267, inlinedAt: !3584)
!3584 = distinct !DILocation(line: 312, column: 18, scope: !3576)
!3585 = !DILocation(line: 49, column: 25, scope: !3267, inlinedAt: !3584)
!3586 = !DILocation(line: 0, scope: !3248, inlinedAt: !3587)
!3587 = distinct !DILocation(line: 49, column: 10, scope: !3267, inlinedAt: !3584)
!3588 = !DILocation(line: 39, column: 8, scope: !3255, inlinedAt: !3587)
!3589 = !DILocation(line: 39, column: 7, scope: !3248, inlinedAt: !3587)
!3590 = !DILocation(line: 40, column: 5, scope: !3255, inlinedAt: !3587)
!3591 = !DILocalVariable(name: "__dest", arg: 1, scope: !3592, file: !1705, line: 26, type: !3595)
!3592 = distinct !DISubprogram(name: "memcpy", scope: !1705, file: !1705, line: 26, type: !3593, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !802, retainedNodes: !3596)
!3593 = !DISubroutineType(types: !3594)
!3594 = !{!122, !3595, !1146, !116}
!3595 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !122)
!3596 = !{!3591, !3597, !3598}
!3597 = !DILocalVariable(name: "__src", arg: 2, scope: !3592, file: !1705, line: 26, type: !1146)
!3598 = !DILocalVariable(name: "__len", arg: 3, scope: !3592, file: !1705, line: 26, type: !116)
!3599 = !DILocation(line: 0, scope: !3592, inlinedAt: !3600)
!3600 = distinct !DILocation(line: 312, column: 10, scope: !3576)
!3601 = !DILocation(line: 29, column: 10, scope: !3592, inlinedAt: !3600)
!3602 = !DILocation(line: 312, column: 3, scope: !3576)
!3603 = distinct !DISubprogram(name: "ximemdup", scope: !803, file: !803, line: 316, type: !3604, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !802, retainedNodes: !3606)
!3604 = !DISubroutineType(types: !3605)
!3605 = !{!122, !1147, !822}
!3606 = !{!3607, !3608}
!3607 = !DILocalVariable(name: "p", arg: 1, scope: !3603, file: !803, line: 316, type: !1147)
!3608 = !DILocalVariable(name: "s", arg: 2, scope: !3603, file: !803, line: 316, type: !822)
!3609 = !DILocation(line: 0, scope: !3603)
!3610 = !DILocation(line: 0, scope: !3281, inlinedAt: !3611)
!3611 = distinct !DILocation(line: 318, column: 18, scope: !3603)
!3612 = !DILocation(line: 0, scope: !3288, inlinedAt: !3613)
!3613 = distinct !DILocation(line: 55, column: 25, scope: !3281, inlinedAt: !3611)
!3614 = !DILocation(line: 57, column: 26, scope: !3288, inlinedAt: !3613)
!3615 = !DILocation(line: 0, scope: !3248, inlinedAt: !3616)
!3616 = distinct !DILocation(line: 55, column: 10, scope: !3281, inlinedAt: !3611)
!3617 = !DILocation(line: 39, column: 8, scope: !3255, inlinedAt: !3616)
!3618 = !DILocation(line: 39, column: 7, scope: !3248, inlinedAt: !3616)
!3619 = !DILocation(line: 40, column: 5, scope: !3255, inlinedAt: !3616)
!3620 = !DILocation(line: 0, scope: !3592, inlinedAt: !3621)
!3621 = distinct !DILocation(line: 318, column: 10, scope: !3603)
!3622 = !DILocation(line: 29, column: 10, scope: !3592, inlinedAt: !3621)
!3623 = !DILocation(line: 318, column: 3, scope: !3603)
!3624 = distinct !DISubprogram(name: "ximemdup0", scope: !803, file: !803, line: 325, type: !3625, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !802, retainedNodes: !3627)
!3625 = !DISubroutineType(types: !3626)
!3626 = !{!85, !1147, !822}
!3627 = !{!3628, !3629, !3630}
!3628 = !DILocalVariable(name: "p", arg: 1, scope: !3624, file: !803, line: 325, type: !1147)
!3629 = !DILocalVariable(name: "s", arg: 2, scope: !3624, file: !803, line: 325, type: !822)
!3630 = !DILocalVariable(name: "result", scope: !3624, file: !803, line: 327, type: !85)
!3631 = !DILocation(line: 0, scope: !3624)
!3632 = !DILocation(line: 327, column: 30, scope: !3624)
!3633 = !DILocation(line: 0, scope: !3281, inlinedAt: !3634)
!3634 = distinct !DILocation(line: 327, column: 18, scope: !3624)
!3635 = !DILocation(line: 0, scope: !3288, inlinedAt: !3636)
!3636 = distinct !DILocation(line: 55, column: 25, scope: !3281, inlinedAt: !3634)
!3637 = !DILocation(line: 57, column: 26, scope: !3288, inlinedAt: !3636)
!3638 = !DILocation(line: 0, scope: !3248, inlinedAt: !3639)
!3639 = distinct !DILocation(line: 55, column: 10, scope: !3281, inlinedAt: !3634)
!3640 = !DILocation(line: 39, column: 8, scope: !3255, inlinedAt: !3639)
!3641 = !DILocation(line: 39, column: 7, scope: !3248, inlinedAt: !3639)
!3642 = !DILocation(line: 40, column: 5, scope: !3255, inlinedAt: !3639)
!3643 = !DILocation(line: 328, column: 3, scope: !3624)
!3644 = !DILocation(line: 328, column: 13, scope: !3624)
!3645 = !DILocation(line: 0, scope: !3592, inlinedAt: !3646)
!3646 = distinct !DILocation(line: 329, column: 10, scope: !3624)
!3647 = !DILocation(line: 29, column: 10, scope: !3592, inlinedAt: !3646)
!3648 = !DILocation(line: 329, column: 3, scope: !3624)
!3649 = distinct !DISubprogram(name: "xstrdup", scope: !803, file: !803, line: 335, type: !1128, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !802, retainedNodes: !3650)
!3650 = !{!3651}
!3651 = !DILocalVariable(name: "string", arg: 1, scope: !3649, file: !803, line: 335, type: !119)
!3652 = !DILocation(line: 0, scope: !3649)
!3653 = !DILocation(line: 337, column: 27, scope: !3649)
!3654 = !DILocation(line: 337, column: 43, scope: !3649)
!3655 = !DILocation(line: 0, scope: !3576, inlinedAt: !3656)
!3656 = distinct !DILocation(line: 337, column: 10, scope: !3649)
!3657 = !DILocation(line: 0, scope: !3267, inlinedAt: !3658)
!3658 = distinct !DILocation(line: 312, column: 18, scope: !3576, inlinedAt: !3656)
!3659 = !DILocation(line: 49, column: 25, scope: !3267, inlinedAt: !3658)
!3660 = !DILocation(line: 0, scope: !3248, inlinedAt: !3661)
!3661 = distinct !DILocation(line: 49, column: 10, scope: !3267, inlinedAt: !3658)
!3662 = !DILocation(line: 39, column: 8, scope: !3255, inlinedAt: !3661)
!3663 = !DILocation(line: 39, column: 7, scope: !3248, inlinedAt: !3661)
!3664 = !DILocation(line: 40, column: 5, scope: !3255, inlinedAt: !3661)
!3665 = !DILocation(line: 0, scope: !3592, inlinedAt: !3666)
!3666 = distinct !DILocation(line: 312, column: 10, scope: !3576, inlinedAt: !3656)
!3667 = !DILocation(line: 29, column: 10, scope: !3592, inlinedAt: !3666)
!3668 = !DILocation(line: 337, column: 3, scope: !3649)
!3669 = distinct !DISubprogram(name: "xalloc_die", scope: !767, file: !767, line: 32, type: !516, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !837, retainedNodes: !3670)
!3670 = !{!3671}
!3671 = !DILocalVariable(name: "__errstatus", scope: !3672, file: !767, line: 34, type: !3673)
!3672 = distinct !DILexicalBlock(scope: !3669, file: !767, line: 34, column: 3)
!3673 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!3674 = !DILocation(line: 34, column: 3, scope: !3672)
!3675 = !DILocation(line: 0, scope: !3672)
!3676 = !DILocation(line: 40, column: 3, scope: !3669)
!3677 = distinct !DISubprogram(name: "close_stream", scope: !840, file: !840, line: 55, type: !3678, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !839, retainedNodes: !3714)
!3678 = !DISubroutineType(types: !3679)
!3679 = !{!83, !3680}
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !186, line: 7, baseType: !3682)
!3682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !188, line: 49, size: 1728, elements: !3683)
!3683 = !{!3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3682, file: !188, line: 51, baseType: !83, size: 32)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3682, file: !188, line: 54, baseType: !85, size: 64, offset: 64)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3682, file: !188, line: 55, baseType: !85, size: 64, offset: 128)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3682, file: !188, line: 56, baseType: !85, size: 64, offset: 192)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3682, file: !188, line: 57, baseType: !85, size: 64, offset: 256)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3682, file: !188, line: 58, baseType: !85, size: 64, offset: 320)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3682, file: !188, line: 59, baseType: !85, size: 64, offset: 384)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3682, file: !188, line: 60, baseType: !85, size: 64, offset: 448)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3682, file: !188, line: 61, baseType: !85, size: 64, offset: 512)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3682, file: !188, line: 64, baseType: !85, size: 64, offset: 576)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3682, file: !188, line: 65, baseType: !85, size: 64, offset: 640)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3682, file: !188, line: 66, baseType: !85, size: 64, offset: 704)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3682, file: !188, line: 68, baseType: !203, size: 64, offset: 768)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3682, file: !188, line: 70, baseType: !3698, size: 64, offset: 832)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3682, size: 64)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3682, file: !188, line: 72, baseType: !83, size: 32, offset: 896)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3682, file: !188, line: 73, baseType: !83, size: 32, offset: 928)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3682, file: !188, line: 74, baseType: !210, size: 64, offset: 960)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3682, file: !188, line: 77, baseType: !115, size: 16, offset: 1024)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3682, file: !188, line: 78, baseType: !215, size: 8, offset: 1040)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3682, file: !188, line: 79, baseType: !126, size: 8, offset: 1048)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3682, file: !188, line: 81, baseType: !218, size: 64, offset: 1088)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3682, file: !188, line: 89, baseType: !221, size: 64, offset: 1152)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3682, file: !188, line: 91, baseType: !223, size: 64, offset: 1216)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3682, file: !188, line: 92, baseType: !226, size: 64, offset: 1280)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3682, file: !188, line: 93, baseType: !3698, size: 64, offset: 1344)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3682, file: !188, line: 94, baseType: !122, size: 64, offset: 1408)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3682, file: !188, line: 95, baseType: !116, size: 64, offset: 1472)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3682, file: !188, line: 96, baseType: !83, size: 32, offset: 1536)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3682, file: !188, line: 98, baseType: !233, size: 160, offset: 1568)
!3714 = !{!3715, !3716, !3718, !3719}
!3715 = !DILocalVariable(name: "stream", arg: 1, scope: !3677, file: !840, line: 55, type: !3680)
!3716 = !DILocalVariable(name: "some_pending", scope: !3677, file: !840, line: 57, type: !3717)
!3717 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!3718 = !DILocalVariable(name: "prev_fail", scope: !3677, file: !840, line: 58, type: !3717)
!3719 = !DILocalVariable(name: "fclose_fail", scope: !3677, file: !840, line: 59, type: !3717)
!3720 = !DILocation(line: 0, scope: !3677)
!3721 = !DILocation(line: 57, column: 30, scope: !3677)
!3722 = !DILocalVariable(name: "__stream", arg: 1, scope: !3723, file: !1237, line: 135, type: !3680)
!3723 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1237, file: !1237, line: 135, type: !3678, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !839, retainedNodes: !3724)
!3724 = !{!3722}
!3725 = !DILocation(line: 0, scope: !3723, inlinedAt: !3726)
!3726 = distinct !DILocation(line: 58, column: 27, scope: !3677)
!3727 = !DILocation(line: 137, column: 10, scope: !3723, inlinedAt: !3726)
!3728 = !{!1245, !885, i64 0}
!3729 = !DILocation(line: 58, column: 43, scope: !3677)
!3730 = !DILocation(line: 59, column: 29, scope: !3677)
!3731 = !DILocation(line: 59, column: 45, scope: !3677)
!3732 = !DILocation(line: 69, column: 17, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3677, file: !840, line: 69, column: 7)
!3734 = !DILocation(line: 57, column: 50, scope: !3677)
!3735 = !DILocation(line: 69, column: 33, scope: !3733)
!3736 = !DILocation(line: 69, column: 53, scope: !3733)
!3737 = !DILocation(line: 69, column: 59, scope: !3733)
!3738 = !DILocation(line: 69, column: 7, scope: !3677)
!3739 = !DILocation(line: 71, column: 11, scope: !3740)
!3740 = distinct !DILexicalBlock(scope: !3733, file: !840, line: 70, column: 5)
!3741 = !DILocation(line: 72, column: 9, scope: !3742)
!3742 = distinct !DILexicalBlock(scope: !3740, file: !840, line: 71, column: 11)
!3743 = !DILocation(line: 72, column: 15, scope: !3742)
!3744 = !DILocation(line: 77, column: 1, scope: !3677)
!3745 = !DISubprogram(name: "__fpending", scope: !3746, file: !3746, line: 75, type: !3747, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3746 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3747 = !DISubroutineType(types: !3748)
!3748 = !{!116, !3680}
!3749 = distinct !DISubprogram(name: "rpl_fclose", scope: !842, file: !842, line: 58, type: !3750, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !841, retainedNodes: !3786)
!3750 = !DISubroutineType(types: !3751)
!3751 = !{!83, !3752}
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !186, line: 7, baseType: !3754)
!3754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !188, line: 49, size: 1728, elements: !3755)
!3755 = !{!3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785}
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3754, file: !188, line: 51, baseType: !83, size: 32)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3754, file: !188, line: 54, baseType: !85, size: 64, offset: 64)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3754, file: !188, line: 55, baseType: !85, size: 64, offset: 128)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3754, file: !188, line: 56, baseType: !85, size: 64, offset: 192)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3754, file: !188, line: 57, baseType: !85, size: 64, offset: 256)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3754, file: !188, line: 58, baseType: !85, size: 64, offset: 320)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3754, file: !188, line: 59, baseType: !85, size: 64, offset: 384)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3754, file: !188, line: 60, baseType: !85, size: 64, offset: 448)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3754, file: !188, line: 61, baseType: !85, size: 64, offset: 512)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3754, file: !188, line: 64, baseType: !85, size: 64, offset: 576)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3754, file: !188, line: 65, baseType: !85, size: 64, offset: 640)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3754, file: !188, line: 66, baseType: !85, size: 64, offset: 704)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3754, file: !188, line: 68, baseType: !203, size: 64, offset: 768)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3754, file: !188, line: 70, baseType: !3770, size: 64, offset: 832)
!3770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3754, file: !188, line: 72, baseType: !83, size: 32, offset: 896)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3754, file: !188, line: 73, baseType: !83, size: 32, offset: 928)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3754, file: !188, line: 74, baseType: !210, size: 64, offset: 960)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3754, file: !188, line: 77, baseType: !115, size: 16, offset: 1024)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3754, file: !188, line: 78, baseType: !215, size: 8, offset: 1040)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3754, file: !188, line: 79, baseType: !126, size: 8, offset: 1048)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3754, file: !188, line: 81, baseType: !218, size: 64, offset: 1088)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3754, file: !188, line: 89, baseType: !221, size: 64, offset: 1152)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3754, file: !188, line: 91, baseType: !223, size: 64, offset: 1216)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3754, file: !188, line: 92, baseType: !226, size: 64, offset: 1280)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3754, file: !188, line: 93, baseType: !3770, size: 64, offset: 1344)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3754, file: !188, line: 94, baseType: !122, size: 64, offset: 1408)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3754, file: !188, line: 95, baseType: !116, size: 64, offset: 1472)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3754, file: !188, line: 96, baseType: !83, size: 32, offset: 1536)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3754, file: !188, line: 98, baseType: !233, size: 160, offset: 1568)
!3786 = !{!3787, !3788, !3789, !3790}
!3787 = !DILocalVariable(name: "fp", arg: 1, scope: !3749, file: !842, line: 58, type: !3752)
!3788 = !DILocalVariable(name: "saved_errno", scope: !3749, file: !842, line: 60, type: !83)
!3789 = !DILocalVariable(name: "fd", scope: !3749, file: !842, line: 63, type: !83)
!3790 = !DILocalVariable(name: "result", scope: !3749, file: !842, line: 74, type: !83)
!3791 = !DILocation(line: 0, scope: !3749)
!3792 = !DILocation(line: 63, column: 12, scope: !3749)
!3793 = !DILocation(line: 64, column: 10, scope: !3794)
!3794 = distinct !DILexicalBlock(scope: !3749, file: !842, line: 64, column: 7)
!3795 = !DILocation(line: 64, column: 7, scope: !3749)
!3796 = !DILocation(line: 65, column: 12, scope: !3794)
!3797 = !DILocation(line: 65, column: 5, scope: !3794)
!3798 = !DILocation(line: 70, column: 9, scope: !3799)
!3799 = distinct !DILexicalBlock(scope: !3749, file: !842, line: 70, column: 7)
!3800 = !DILocation(line: 70, column: 23, scope: !3799)
!3801 = !DILocation(line: 70, column: 33, scope: !3799)
!3802 = !DILocation(line: 70, column: 26, scope: !3799)
!3803 = !DILocation(line: 70, column: 59, scope: !3799)
!3804 = !DILocation(line: 71, column: 7, scope: !3799)
!3805 = !DILocation(line: 71, column: 10, scope: !3799)
!3806 = !DILocation(line: 70, column: 7, scope: !3749)
!3807 = !DILocation(line: 100, column: 12, scope: !3749)
!3808 = !DILocation(line: 105, column: 7, scope: !3749)
!3809 = !DILocation(line: 72, column: 19, scope: !3799)
!3810 = !DILocation(line: 105, column: 19, scope: !3811)
!3811 = distinct !DILexicalBlock(scope: !3749, file: !842, line: 105, column: 7)
!3812 = !DILocation(line: 107, column: 13, scope: !3813)
!3813 = distinct !DILexicalBlock(scope: !3811, file: !842, line: 106, column: 5)
!3814 = !DILocation(line: 109, column: 5, scope: !3813)
!3815 = !DILocation(line: 112, column: 1, scope: !3749)
!3816 = !DISubprogram(name: "fileno", scope: !972, file: !972, line: 809, type: !3750, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3817 = !DISubprogram(name: "fclose", scope: !972, file: !972, line: 178, type: !3750, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3818 = !DISubprogram(name: "__freading", scope: !3746, file: !3746, line: 51, type: !3750, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3819 = !DISubprogram(name: "lseek", scope: !1437, file: !1437, line: 339, type: !3820, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3820 = !DISubroutineType(types: !3821)
!3821 = !{!210, !83, !210, !83}
!3822 = distinct !DISubprogram(name: "rpl_fflush", scope: !844, file: !844, line: 130, type: !3823, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !843, retainedNodes: !3859)
!3823 = !DISubroutineType(types: !3824)
!3824 = !{!83, !3825}
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3826 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !186, line: 7, baseType: !3827)
!3827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !188, line: 49, size: 1728, elements: !3828)
!3828 = !{!3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3827, file: !188, line: 51, baseType: !83, size: 32)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3827, file: !188, line: 54, baseType: !85, size: 64, offset: 64)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3827, file: !188, line: 55, baseType: !85, size: 64, offset: 128)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3827, file: !188, line: 56, baseType: !85, size: 64, offset: 192)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3827, file: !188, line: 57, baseType: !85, size: 64, offset: 256)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3827, file: !188, line: 58, baseType: !85, size: 64, offset: 320)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3827, file: !188, line: 59, baseType: !85, size: 64, offset: 384)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3827, file: !188, line: 60, baseType: !85, size: 64, offset: 448)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3827, file: !188, line: 61, baseType: !85, size: 64, offset: 512)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3827, file: !188, line: 64, baseType: !85, size: 64, offset: 576)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3827, file: !188, line: 65, baseType: !85, size: 64, offset: 640)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3827, file: !188, line: 66, baseType: !85, size: 64, offset: 704)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3827, file: !188, line: 68, baseType: !203, size: 64, offset: 768)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3827, file: !188, line: 70, baseType: !3843, size: 64, offset: 832)
!3843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3827, file: !188, line: 72, baseType: !83, size: 32, offset: 896)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3827, file: !188, line: 73, baseType: !83, size: 32, offset: 928)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3827, file: !188, line: 74, baseType: !210, size: 64, offset: 960)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3827, file: !188, line: 77, baseType: !115, size: 16, offset: 1024)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3827, file: !188, line: 78, baseType: !215, size: 8, offset: 1040)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3827, file: !188, line: 79, baseType: !126, size: 8, offset: 1048)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3827, file: !188, line: 81, baseType: !218, size: 64, offset: 1088)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3827, file: !188, line: 89, baseType: !221, size: 64, offset: 1152)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3827, file: !188, line: 91, baseType: !223, size: 64, offset: 1216)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3827, file: !188, line: 92, baseType: !226, size: 64, offset: 1280)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3827, file: !188, line: 93, baseType: !3843, size: 64, offset: 1344)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3827, file: !188, line: 94, baseType: !122, size: 64, offset: 1408)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3827, file: !188, line: 95, baseType: !116, size: 64, offset: 1472)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3827, file: !188, line: 96, baseType: !83, size: 32, offset: 1536)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3827, file: !188, line: 98, baseType: !233, size: 160, offset: 1568)
!3859 = !{!3860}
!3860 = !DILocalVariable(name: "stream", arg: 1, scope: !3822, file: !844, line: 130, type: !3825)
!3861 = !DILocation(line: 0, scope: !3822)
!3862 = !DILocation(line: 151, column: 14, scope: !3863)
!3863 = distinct !DILexicalBlock(scope: !3822, file: !844, line: 151, column: 7)
!3864 = !DILocation(line: 151, column: 22, scope: !3863)
!3865 = !DILocation(line: 151, column: 27, scope: !3863)
!3866 = !DILocation(line: 151, column: 7, scope: !3822)
!3867 = !DILocation(line: 152, column: 12, scope: !3863)
!3868 = !DILocation(line: 152, column: 5, scope: !3863)
!3869 = !DILocalVariable(name: "fp", arg: 1, scope: !3870, file: !844, line: 42, type: !3825)
!3870 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !844, file: !844, line: 42, type: !3871, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !843, retainedNodes: !3873)
!3871 = !DISubroutineType(types: !3872)
!3872 = !{null, !3825}
!3873 = !{!3869}
!3874 = !DILocation(line: 0, scope: !3870, inlinedAt: !3875)
!3875 = distinct !DILocation(line: 157, column: 3, scope: !3822)
!3876 = !DILocation(line: 44, column: 12, scope: !3877, inlinedAt: !3875)
!3877 = distinct !DILexicalBlock(scope: !3870, file: !844, line: 44, column: 7)
!3878 = !DILocation(line: 44, column: 19, scope: !3877, inlinedAt: !3875)
!3879 = !DILocation(line: 44, column: 7, scope: !3870, inlinedAt: !3875)
!3880 = !DILocation(line: 46, column: 5, scope: !3877, inlinedAt: !3875)
!3881 = !DILocation(line: 159, column: 10, scope: !3822)
!3882 = !DILocation(line: 159, column: 3, scope: !3822)
!3883 = !DILocation(line: 236, column: 1, scope: !3822)
!3884 = !DISubprogram(name: "fflush", scope: !972, file: !972, line: 230, type: !3823, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3885 = distinct !DISubprogram(name: "rpl_fseeko", scope: !846, file: !846, line: 28, type: !3886, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !845, retainedNodes: !3923)
!3886 = !DISubroutineType(types: !3887)
!3887 = !{!83, !3888, !3922, !83}
!3888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3889, size: 64)
!3889 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !186, line: 7, baseType: !3890)
!3890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !188, line: 49, size: 1728, elements: !3891)
!3891 = !{!3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921}
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3890, file: !188, line: 51, baseType: !83, size: 32)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3890, file: !188, line: 54, baseType: !85, size: 64, offset: 64)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3890, file: !188, line: 55, baseType: !85, size: 64, offset: 128)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3890, file: !188, line: 56, baseType: !85, size: 64, offset: 192)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3890, file: !188, line: 57, baseType: !85, size: 64, offset: 256)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3890, file: !188, line: 58, baseType: !85, size: 64, offset: 320)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3890, file: !188, line: 59, baseType: !85, size: 64, offset: 384)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3890, file: !188, line: 60, baseType: !85, size: 64, offset: 448)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3890, file: !188, line: 61, baseType: !85, size: 64, offset: 512)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3890, file: !188, line: 64, baseType: !85, size: 64, offset: 576)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3890, file: !188, line: 65, baseType: !85, size: 64, offset: 640)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3890, file: !188, line: 66, baseType: !85, size: 64, offset: 704)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3890, file: !188, line: 68, baseType: !203, size: 64, offset: 768)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3890, file: !188, line: 70, baseType: !3906, size: 64, offset: 832)
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3890, size: 64)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3890, file: !188, line: 72, baseType: !83, size: 32, offset: 896)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3890, file: !188, line: 73, baseType: !83, size: 32, offset: 928)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3890, file: !188, line: 74, baseType: !210, size: 64, offset: 960)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3890, file: !188, line: 77, baseType: !115, size: 16, offset: 1024)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3890, file: !188, line: 78, baseType: !215, size: 8, offset: 1040)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3890, file: !188, line: 79, baseType: !126, size: 8, offset: 1048)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3890, file: !188, line: 81, baseType: !218, size: 64, offset: 1088)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3890, file: !188, line: 89, baseType: !221, size: 64, offset: 1152)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3890, file: !188, line: 91, baseType: !223, size: 64, offset: 1216)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3890, file: !188, line: 92, baseType: !226, size: 64, offset: 1280)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3890, file: !188, line: 93, baseType: !3906, size: 64, offset: 1344)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3890, file: !188, line: 94, baseType: !122, size: 64, offset: 1408)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3890, file: !188, line: 95, baseType: !116, size: 64, offset: 1472)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3890, file: !188, line: 96, baseType: !83, size: 32, offset: 1536)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3890, file: !188, line: 98, baseType: !233, size: 160, offset: 1568)
!3922 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !972, line: 63, baseType: !210)
!3923 = !{!3924, !3925, !3926, !3927}
!3924 = !DILocalVariable(name: "fp", arg: 1, scope: !3885, file: !846, line: 28, type: !3888)
!3925 = !DILocalVariable(name: "offset", arg: 2, scope: !3885, file: !846, line: 28, type: !3922)
!3926 = !DILocalVariable(name: "whence", arg: 3, scope: !3885, file: !846, line: 28, type: !83)
!3927 = !DILocalVariable(name: "pos", scope: !3928, file: !846, line: 123, type: !3922)
!3928 = distinct !DILexicalBlock(scope: !3929, file: !846, line: 119, column: 5)
!3929 = distinct !DILexicalBlock(scope: !3885, file: !846, line: 55, column: 7)
!3930 = !DILocation(line: 0, scope: !3885)
!3931 = !DILocation(line: 55, column: 12, scope: !3929)
!3932 = !{!1245, !877, i64 16}
!3933 = !DILocation(line: 55, column: 33, scope: !3929)
!3934 = !{!1245, !877, i64 8}
!3935 = !DILocation(line: 55, column: 25, scope: !3929)
!3936 = !DILocation(line: 56, column: 7, scope: !3929)
!3937 = !DILocation(line: 56, column: 15, scope: !3929)
!3938 = !DILocation(line: 56, column: 37, scope: !3929)
!3939 = !{!1245, !877, i64 32}
!3940 = !DILocation(line: 56, column: 29, scope: !3929)
!3941 = !DILocation(line: 57, column: 7, scope: !3929)
!3942 = !DILocation(line: 57, column: 15, scope: !3929)
!3943 = !{!1245, !877, i64 72}
!3944 = !DILocation(line: 57, column: 29, scope: !3929)
!3945 = !DILocation(line: 55, column: 7, scope: !3885)
!3946 = !DILocation(line: 123, column: 26, scope: !3928)
!3947 = !DILocation(line: 123, column: 19, scope: !3928)
!3948 = !DILocation(line: 0, scope: !3928)
!3949 = !DILocation(line: 124, column: 15, scope: !3950)
!3950 = distinct !DILexicalBlock(scope: !3928, file: !846, line: 124, column: 11)
!3951 = !DILocation(line: 124, column: 11, scope: !3928)
!3952 = !DILocation(line: 135, column: 19, scope: !3928)
!3953 = !DILocation(line: 136, column: 12, scope: !3928)
!3954 = !DILocation(line: 136, column: 20, scope: !3928)
!3955 = !{!1245, !1246, i64 144}
!3956 = !DILocation(line: 167, column: 7, scope: !3928)
!3957 = !DILocation(line: 169, column: 10, scope: !3885)
!3958 = !DILocation(line: 169, column: 3, scope: !3885)
!3959 = !DILocation(line: 170, column: 1, scope: !3885)
!3960 = !DISubprogram(name: "fseeko", scope: !972, file: !972, line: 736, type: !3961, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3961 = !DISubroutineType(types: !3962)
!3962 = !{!83, !3888, !210, !83}
!3963 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !774, file: !774, line: 100, type: !3964, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !3967)
!3964 = !DISubroutineType(types: !3965)
!3965 = !{!116, !1723, !119, !116, !3966}
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!3967 = !{!3968, !3969, !3970, !3971, !3972}
!3968 = !DILocalVariable(name: "pwc", arg: 1, scope: !3963, file: !774, line: 100, type: !1723)
!3969 = !DILocalVariable(name: "s", arg: 2, scope: !3963, file: !774, line: 100, type: !119)
!3970 = !DILocalVariable(name: "n", arg: 3, scope: !3963, file: !774, line: 100, type: !116)
!3971 = !DILocalVariable(name: "ps", arg: 4, scope: !3963, file: !774, line: 100, type: !3966)
!3972 = !DILocalVariable(name: "ret", scope: !3963, file: !774, line: 130, type: !116)
!3973 = !DILocation(line: 0, scope: !3963)
!3974 = !DILocation(line: 105, column: 9, scope: !3975)
!3975 = distinct !DILexicalBlock(scope: !3963, file: !774, line: 105, column: 7)
!3976 = !DILocation(line: 105, column: 7, scope: !3963)
!3977 = !DILocation(line: 117, column: 10, scope: !3978)
!3978 = distinct !DILexicalBlock(scope: !3963, file: !774, line: 117, column: 7)
!3979 = !DILocation(line: 117, column: 7, scope: !3963)
!3980 = !DILocation(line: 130, column: 16, scope: !3963)
!3981 = !DILocation(line: 135, column: 11, scope: !3982)
!3982 = distinct !DILexicalBlock(scope: !3963, file: !774, line: 135, column: 7)
!3983 = !DILocation(line: 135, column: 25, scope: !3982)
!3984 = !DILocation(line: 135, column: 30, scope: !3982)
!3985 = !DILocation(line: 135, column: 7, scope: !3963)
!3986 = !DILocalVariable(name: "ps", arg: 1, scope: !3987, file: !1696, line: 1135, type: !3966)
!3987 = distinct !DISubprogram(name: "mbszero", scope: !1696, file: !1696, line: 1135, type: !3988, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !3990)
!3988 = !DISubroutineType(types: !3989)
!3989 = !{null, !3966}
!3990 = !{!3986}
!3991 = !DILocation(line: 0, scope: !3987, inlinedAt: !3992)
!3992 = distinct !DILocation(line: 137, column: 5, scope: !3982)
!3993 = !DILocalVariable(name: "__dest", arg: 1, scope: !3994, file: !1705, line: 57, type: !122)
!3994 = distinct !DISubprogram(name: "memset", scope: !1705, file: !1705, line: 57, type: !1706, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !3995)
!3995 = !{!3993, !3996, !3997}
!3996 = !DILocalVariable(name: "__ch", arg: 2, scope: !3994, file: !1705, line: 57, type: !83)
!3997 = !DILocalVariable(name: "__len", arg: 3, scope: !3994, file: !1705, line: 57, type: !116)
!3998 = !DILocation(line: 0, scope: !3994, inlinedAt: !3999)
!3999 = distinct !DILocation(line: 1137, column: 3, scope: !3987, inlinedAt: !3992)
!4000 = !DILocation(line: 59, column: 10, scope: !3994, inlinedAt: !3999)
!4001 = !DILocation(line: 137, column: 5, scope: !3982)
!4002 = !DILocation(line: 138, column: 11, scope: !4003)
!4003 = distinct !DILexicalBlock(scope: !3963, file: !774, line: 138, column: 7)
!4004 = !DILocation(line: 138, column: 7, scope: !3963)
!4005 = !DILocation(line: 139, column: 5, scope: !4003)
!4006 = !DILocation(line: 143, column: 26, scope: !4007)
!4007 = distinct !DILexicalBlock(scope: !3963, file: !774, line: 143, column: 7)
!4008 = !DILocation(line: 143, column: 41, scope: !4007)
!4009 = !DILocation(line: 143, column: 7, scope: !3963)
!4010 = !DILocation(line: 145, column: 15, scope: !4011)
!4011 = distinct !DILexicalBlock(scope: !4012, file: !774, line: 145, column: 11)
!4012 = distinct !DILexicalBlock(scope: !4007, file: !774, line: 144, column: 5)
!4013 = !DILocation(line: 145, column: 11, scope: !4012)
!4014 = !DILocation(line: 146, column: 32, scope: !4011)
!4015 = !DILocation(line: 146, column: 16, scope: !4011)
!4016 = !DILocation(line: 146, column: 14, scope: !4011)
!4017 = !DILocation(line: 146, column: 9, scope: !4011)
!4018 = !DILocation(line: 286, column: 1, scope: !3963)
!4019 = !DISubprogram(name: "mbsinit", scope: !4020, file: !4020, line: 293, type: !4021, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4020 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4021 = !DISubroutineType(types: !4022)
!4022 = !{!83, !4023}
!4023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4024, size: 64)
!4024 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !780)
!4025 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !848, file: !848, line: 27, type: !3232, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !847, retainedNodes: !4026)
!4026 = !{!4027, !4028, !4029, !4030}
!4027 = !DILocalVariable(name: "ptr", arg: 1, scope: !4025, file: !848, line: 27, type: !122)
!4028 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4025, file: !848, line: 27, type: !116)
!4029 = !DILocalVariable(name: "size", arg: 3, scope: !4025, file: !848, line: 27, type: !116)
!4030 = !DILocalVariable(name: "nbytes", scope: !4025, file: !848, line: 29, type: !116)
!4031 = !DILocation(line: 0, scope: !4025)
!4032 = !DILocation(line: 30, column: 7, scope: !4033)
!4033 = distinct !DILexicalBlock(scope: !4025, file: !848, line: 30, column: 7)
!4034 = !DILocation(line: 30, column: 7, scope: !4025)
!4035 = !DILocation(line: 32, column: 7, scope: !4036)
!4036 = distinct !DILexicalBlock(scope: !4033, file: !848, line: 31, column: 5)
!4037 = !DILocation(line: 32, column: 13, scope: !4036)
!4038 = !DILocation(line: 33, column: 7, scope: !4036)
!4039 = !DILocalVariable(name: "ptr", arg: 1, scope: !4040, file: !3324, line: 2057, type: !122)
!4040 = distinct !DISubprogram(name: "rpl_realloc", scope: !3324, file: !3324, line: 2057, type: !3316, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !847, retainedNodes: !4041)
!4041 = !{!4039, !4042}
!4042 = !DILocalVariable(name: "size", arg: 2, scope: !4040, file: !3324, line: 2057, type: !116)
!4043 = !DILocation(line: 0, scope: !4040, inlinedAt: !4044)
!4044 = distinct !DILocation(line: 37, column: 10, scope: !4025)
!4045 = !DILocation(line: 2059, column: 24, scope: !4040, inlinedAt: !4044)
!4046 = !DILocation(line: 2059, column: 10, scope: !4040, inlinedAt: !4044)
!4047 = !DILocation(line: 37, column: 3, scope: !4025)
!4048 = !DILocation(line: 38, column: 1, scope: !4025)
!4049 = distinct !DISubprogram(name: "hard_locale", scope: !792, file: !792, line: 28, type: !4050, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !849, retainedNodes: !4052)
!4050 = !DISubroutineType(types: !4051)
!4051 = !{!171, !83}
!4052 = !{!4053, !4054}
!4053 = !DILocalVariable(name: "category", arg: 1, scope: !4049, file: !792, line: 28, type: !83)
!4054 = !DILocalVariable(name: "locale", scope: !4049, file: !792, line: 30, type: !4055)
!4055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4056)
!4056 = !{!4057}
!4057 = !DISubrange(count: 257)
!4058 = distinct !DIAssignID()
!4059 = !DILocation(line: 0, scope: !4049)
!4060 = !DILocation(line: 30, column: 3, scope: !4049)
!4061 = !DILocation(line: 32, column: 7, scope: !4062)
!4062 = distinct !DILexicalBlock(scope: !4049, file: !792, line: 32, column: 7)
!4063 = !DILocation(line: 32, column: 7, scope: !4049)
!4064 = !DILocalVariable(name: "__s1", arg: 1, scope: !4065, file: !926, line: 1359, type: !119)
!4065 = distinct !DISubprogram(name: "streq", scope: !926, file: !926, line: 1359, type: !927, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !849, retainedNodes: !4066)
!4066 = !{!4064, !4067}
!4067 = !DILocalVariable(name: "__s2", arg: 2, scope: !4065, file: !926, line: 1359, type: !119)
!4068 = !DILocation(line: 0, scope: !4065, inlinedAt: !4069)
!4069 = distinct !DILocation(line: 35, column: 9, scope: !4070)
!4070 = distinct !DILexicalBlock(scope: !4049, file: !792, line: 35, column: 7)
!4071 = !DILocation(line: 1361, column: 11, scope: !4065, inlinedAt: !4069)
!4072 = !DILocation(line: 35, column: 29, scope: !4070)
!4073 = !DILocation(line: 0, scope: !4065, inlinedAt: !4074)
!4074 = distinct !DILocation(line: 35, column: 32, scope: !4070)
!4075 = !DILocation(line: 1361, column: 11, scope: !4065, inlinedAt: !4074)
!4076 = !DILocation(line: 1361, column: 10, scope: !4065, inlinedAt: !4074)
!4077 = !DILocation(line: 35, column: 7, scope: !4049)
!4078 = !DILocation(line: 46, column: 3, scope: !4049)
!4079 = !DILocation(line: 47, column: 1, scope: !4049)
!4080 = distinct !DISubprogram(name: "setlocale_null_r", scope: !854, file: !854, line: 154, type: !4081, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !853, retainedNodes: !4083)
!4081 = !DISubroutineType(types: !4082)
!4082 = !{!83, !83, !85, !116}
!4083 = !{!4084, !4085, !4086}
!4084 = !DILocalVariable(name: "category", arg: 1, scope: !4080, file: !854, line: 154, type: !83)
!4085 = !DILocalVariable(name: "buf", arg: 2, scope: !4080, file: !854, line: 154, type: !85)
!4086 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4080, file: !854, line: 154, type: !116)
!4087 = !DILocation(line: 0, scope: !4080)
!4088 = !DILocation(line: 159, column: 10, scope: !4080)
!4089 = !DILocation(line: 159, column: 3, scope: !4080)
!4090 = distinct !DISubprogram(name: "setlocale_null", scope: !854, file: !854, line: 186, type: !4091, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !853, retainedNodes: !4093)
!4091 = !DISubroutineType(types: !4092)
!4092 = !{!119, !83}
!4093 = !{!4094}
!4094 = !DILocalVariable(name: "category", arg: 1, scope: !4090, file: !854, line: 186, type: !83)
!4095 = !DILocation(line: 0, scope: !4090)
!4096 = !DILocation(line: 189, column: 10, scope: !4090)
!4097 = !DILocation(line: 189, column: 3, scope: !4090)
!4098 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !856, file: !856, line: 35, type: !4091, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !855, retainedNodes: !4099)
!4099 = !{!4100, !4101}
!4100 = !DILocalVariable(name: "category", arg: 1, scope: !4098, file: !856, line: 35, type: !83)
!4101 = !DILocalVariable(name: "result", scope: !4098, file: !856, line: 37, type: !119)
!4102 = !DILocation(line: 0, scope: !4098)
!4103 = !DILocation(line: 37, column: 24, scope: !4098)
!4104 = !DILocation(line: 62, column: 3, scope: !4098)
!4105 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !856, file: !856, line: 66, type: !4081, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !855, retainedNodes: !4106)
!4106 = !{!4107, !4108, !4109, !4110, !4111}
!4107 = !DILocalVariable(name: "category", arg: 1, scope: !4105, file: !856, line: 66, type: !83)
!4108 = !DILocalVariable(name: "buf", arg: 2, scope: !4105, file: !856, line: 66, type: !85)
!4109 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4105, file: !856, line: 66, type: !116)
!4110 = !DILocalVariable(name: "result", scope: !4105, file: !856, line: 111, type: !119)
!4111 = !DILocalVariable(name: "length", scope: !4112, file: !856, line: 125, type: !116)
!4112 = distinct !DILexicalBlock(scope: !4113, file: !856, line: 124, column: 5)
!4113 = distinct !DILexicalBlock(scope: !4105, file: !856, line: 113, column: 7)
!4114 = !DILocation(line: 0, scope: !4105)
!4115 = !DILocation(line: 0, scope: !4098, inlinedAt: !4116)
!4116 = distinct !DILocation(line: 111, column: 24, scope: !4105)
!4117 = !DILocation(line: 37, column: 24, scope: !4098, inlinedAt: !4116)
!4118 = !DILocation(line: 113, column: 14, scope: !4113)
!4119 = !DILocation(line: 113, column: 7, scope: !4105)
!4120 = !DILocation(line: 116, column: 19, scope: !4121)
!4121 = distinct !DILexicalBlock(scope: !4122, file: !856, line: 116, column: 11)
!4122 = distinct !DILexicalBlock(scope: !4113, file: !856, line: 114, column: 5)
!4123 = !DILocation(line: 116, column: 11, scope: !4122)
!4124 = !DILocation(line: 120, column: 16, scope: !4121)
!4125 = !DILocation(line: 120, column: 9, scope: !4121)
!4126 = !DILocation(line: 125, column: 23, scope: !4112)
!4127 = !DILocation(line: 0, scope: !4112)
!4128 = !DILocation(line: 126, column: 18, scope: !4129)
!4129 = distinct !DILexicalBlock(scope: !4112, file: !856, line: 126, column: 11)
!4130 = !DILocation(line: 126, column: 11, scope: !4112)
!4131 = !DILocation(line: 128, column: 39, scope: !4132)
!4132 = distinct !DILexicalBlock(scope: !4129, file: !856, line: 127, column: 9)
!4133 = !DILocalVariable(name: "__dest", arg: 1, scope: !4134, file: !1705, line: 26, type: !3595)
!4134 = distinct !DISubprogram(name: "memcpy", scope: !1705, file: !1705, line: 26, type: !3593, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !855, retainedNodes: !4135)
!4135 = !{!4133, !4136, !4137}
!4136 = !DILocalVariable(name: "__src", arg: 2, scope: !4134, file: !1705, line: 26, type: !1146)
!4137 = !DILocalVariable(name: "__len", arg: 3, scope: !4134, file: !1705, line: 26, type: !116)
!4138 = !DILocation(line: 0, scope: !4134, inlinedAt: !4139)
!4139 = distinct !DILocation(line: 128, column: 11, scope: !4132)
!4140 = !DILocation(line: 29, column: 10, scope: !4134, inlinedAt: !4139)
!4141 = !DILocation(line: 129, column: 11, scope: !4132)
!4142 = !DILocation(line: 133, column: 23, scope: !4143)
!4143 = distinct !DILexicalBlock(scope: !4144, file: !856, line: 133, column: 15)
!4144 = distinct !DILexicalBlock(scope: !4129, file: !856, line: 132, column: 9)
!4145 = !DILocation(line: 133, column: 15, scope: !4144)
!4146 = !DILocation(line: 138, column: 44, scope: !4147)
!4147 = distinct !DILexicalBlock(scope: !4143, file: !856, line: 134, column: 13)
!4148 = !DILocation(line: 0, scope: !4134, inlinedAt: !4149)
!4149 = distinct !DILocation(line: 138, column: 15, scope: !4147)
!4150 = !DILocation(line: 29, column: 10, scope: !4134, inlinedAt: !4149)
!4151 = !DILocation(line: 139, column: 15, scope: !4147)
!4152 = !DILocation(line: 139, column: 32, scope: !4147)
!4153 = !DILocation(line: 140, column: 13, scope: !4147)
!4154 = !DILocation(line: 0, scope: !4113)
!4155 = !DILocation(line: 145, column: 1, scope: !4105)
