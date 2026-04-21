; ModuleID = 'src/env.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.__sigset_t = type { [16 x i64] }
%struct.quoting_options = type { i32, i32, [8 x i32], ptr, ptr }
%struct.slotvec = type { i64, ptr }
%struct.numname = type { i32, [8 x i8] }
%struct.__mbstate_t = type { i32, %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.sigaction = type { %union.anon, %struct.__sigset_t, i32, ptr }
%union.anon = type { ptr }
%struct.splitbuf = type { ptr, i32, i64, i32, i8 }
%struct.__va_list = type { ptr, ptr, ptr, i32, i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [62 x i8] c"Usage: %s [OPTION]... [-] [NAME=VALUE]... [COMMAND [ARG]...]\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [60 x i8] c"Set each NAME to VALUE in the environment and run COMMAND.\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [4 x i8] c"env\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [71 x i8] c"  -a, --argv0=ARG\0A         pass ARG as the zeroth argument of COMMAND\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [69 x i8] c"  -i, --ignore-environment\0A         start with an empty environment\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [66 x i8] c"  -0, --null\0A         end each output line with NUL, not newline\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [66 x i8] c"  -u, --unset=NAME\0A         remove variable from the environment\0A\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [60 x i8] c"  -C, --chdir=DIR\0A         change working directory to DIR\0A\00", align 1, !dbg !39
@.str.9 = private unnamed_addr constant [136 x i8] c"  -S, --split-string=S\0A         process and split S into separate arguments;\0A         used to pass multiple arguments on shebang lines\0A\00", align 1, !dbg !41
@.str.10 = private unnamed_addr constant [80 x i8] c"      --block-signal[=SIG]\0A         block delivery of SIG signal(s) to COMMAND\0A\00", align 1, !dbg !46
@.str.11 = private unnamed_addr constant [86 x i8] c"      --default-signal[=SIG]\0A         reset handling of SIG signal(s) to the default\0A\00", align 1, !dbg !51
@.str.12 = private unnamed_addr constant [82 x i8] c"      --ignore-signal[=SIG]\0A         set handling of SIG signal(s) to do nothing\0A\00", align 1, !dbg !56
@.str.13 = private unnamed_addr constant [90 x i8] c"      --list-signal-handling\0A         list non default signal handling to standard error\0A\00", align 1, !dbg !61
@.str.14 = private unnamed_addr constant [75 x i8] c"  -v, --debug\0A         print verbose information for each processing step\0A\00", align 1, !dbg !66
@.str.15 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !71
@.str.16 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !76
@.str.17 = private unnamed_addr constant [72 x i8] c"\0AA mere - implies -i.  If no COMMAND, print the resulting environment.\0A\00", align 1, !dbg !78
@.str.18 = private unnamed_addr constant [192 x i8] c"\0ASIG may be a signal name like 'PIPE', or a signal number like '13'.\0AWithout SIG, all known signals are included.  Multiple signals can be\0Acomma-separated.  An empty SIG argument is a no-op.\0A\00", align 1, !dbg !83
@.str.19 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !88
@.str.20 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !93
@.str.21 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !98
@shortopts = internal constant [19 x i8] c"+a:C:iS:u:v0 \09\0A\0B\0C\0D\00", align 1, !dbg !103
@longopts = internal constant [14 x %struct.option] [%struct.option { ptr @.str.80, i32 1, ptr null, i32 97 }, %struct.option { ptr @.str.81, i32 0, ptr null, i32 105 }, %struct.option { ptr @.str.82, i32 0, ptr null, i32 48 }, %struct.option { ptr @.str.83, i32 1, ptr null, i32 117 }, %struct.option { ptr @.str.84, i32 1, ptr null, i32 67 }, %struct.option { ptr @.str.85, i32 2, ptr null, i32 256 }, %struct.option { ptr @.str.86, i32 2, ptr null, i32 257 }, %struct.option { ptr @.str.87, i32 2, ptr null, i32 258 }, %struct.option { ptr @.str.88, i32 0, ptr null, i32 259 }, %struct.option { ptr @.str.89, i32 0, ptr null, i32 118 }, %struct.option { ptr @.str.90, i32 1, ptr null, i32 83 }, %struct.option { ptr @.str.91, i32 0, ptr null, i32 -2 }, %struct.option { ptr @.str.92, i32 0, ptr null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !514
@optarg = external local_unnamed_addr global ptr, align 8
@dev_debug = internal unnamed_addr global i1 false, align 1, !dbg !637
@report_signal_handling = internal unnamed_addr global i1 false, align 1, !dbg !638
@optind = external local_unnamed_addr global i32, align 4
@.str.22 = private unnamed_addr constant [23 x i8] c"invalid option -- '%c'\00", align 1, !dbg !181
@.str.23 = private unnamed_addr constant [43 x i8] c"use -[v]S to pass options in shebang lines\00", align 1, !dbg !186
@.str.24 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !191
@.str.25 = private unnamed_addr constant [17 x i8] c"Richard Mlynarik\00", align 1, !dbg !196
@.str.26 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !201
@.str.27 = private unnamed_addr constant [13 x i8] c"Assaf Gordon\00", align 1, !dbg !206
@.str.28 = private unnamed_addr constant [2 x i8] c"-\00", align 1, !dbg !211
@.str.29 = private unnamed_addr constant [18 x i8] c"cleaning environ\0A\00", align 1, !dbg !216
@main.dummy_environ = internal global [1 x ptr] zeroinitializer, align 8, !dbg !221
@environ = external local_unnamed_addr global ptr, align 8
@.str.30 = private unnamed_addr constant [14 x i8] c"setenv:   %s\0A\00", align 1, !dbg !250
@.str.31 = private unnamed_addr constant [14 x i8] c"cannot set %s\00", align 1, !dbg !252
@.str.32 = private unnamed_addr constant [40 x i8] c"cannot specify --null (-0) with command\00", align 1, !dbg !254
@.str.33 = private unnamed_addr constant [39 x i8] c"must specify command with --chdir (-C)\00", align 1, !dbg !259
@.str.34 = private unnamed_addr constant [39 x i8] c"must specify command with --argv0 (-a)\00", align 1, !dbg !261
@.str.35 = private unnamed_addr constant [5 x i8] c"%s%c\00", align 1, !dbg !263
@sig_mask_changed = internal unnamed_addr global i1 false, align 1, !dbg !639
@.str.36 = private unnamed_addr constant [14 x i8] c"chdir:    %s\0A\00", align 1, !dbg !268
@.str.37 = private unnamed_addr constant [30 x i8] c"cannot change directory to %s\00", align 1, !dbg !270
@.str.38 = private unnamed_addr constant [15 x i8] c"argv0:     %s\0A\00", align 1, !dbg !275
@.str.39 = private unnamed_addr constant [15 x i8] c"executing: %s\0A\00", align 1, !dbg !280
@.str.40 = private unnamed_addr constant [16 x i8] c"   arg[%d]= %s\0A\00", align 1, !dbg !282
@.str.41 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !284
@.str.42 = private unnamed_addr constant [7 x i8] c" \09\0A\0B\0C\0D\00", align 1, !dbg !289
@.str.43 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1, !dbg !300
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !302
@.str.44 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !383
@.str.45 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !385
@.str.46 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !387
@.str.47 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !389
@.str.61 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !423
@.str.62 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !425
@.str.63 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !427
@.str.64 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !429
@.str.65 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !431
@.str.66 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !433
@.str.67 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !438
@.str.68 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !440
@.str.69 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !442
@.str.70 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !444
@.str.71 = private unnamed_addr constant [180 x i8] c"\0AExit status:\0A  125  if the %s command itself fails\0A  126  if COMMAND is found but cannot be invoked\0A  127  if COMMAND cannot be found\0A  -    the exit status of COMMAND otherwise\0A\00", align 1, !dbg !446
@.str.75 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !460
@.str.76 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !462
@.str.77 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !464
@.str.78 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !469
@.str.79 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !474
@signals = internal unnamed_addr global ptr null, align 8, !dbg !479
@.str.80 = private unnamed_addr constant [6 x i8] c"argv0\00", align 1, !dbg !482
@.str.81 = private unnamed_addr constant [19 x i8] c"ignore-environment\00", align 1, !dbg !484
@.str.82 = private unnamed_addr constant [5 x i8] c"null\00", align 1, !dbg !489
@.str.83 = private unnamed_addr constant [6 x i8] c"unset\00", align 1, !dbg !491
@.str.84 = private unnamed_addr constant [6 x i8] c"chdir\00", align 1, !dbg !493
@.str.85 = private unnamed_addr constant [15 x i8] c"default-signal\00", align 1, !dbg !495
@.str.86 = private unnamed_addr constant [14 x i8] c"ignore-signal\00", align 1, !dbg !497
@.str.87 = private unnamed_addr constant [13 x i8] c"block-signal\00", align 1, !dbg !499
@.str.88 = private unnamed_addr constant [21 x i8] c"list-signal-handling\00", align 1, !dbg !501
@.str.89 = private unnamed_addr constant [6 x i8] c"debug\00", align 1, !dbg !506
@.str.90 = private unnamed_addr constant [13 x i8] c"split-string\00", align 1, !dbg !508
@.str.91 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !510
@.str.92 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !512
@usvars_used = internal unnamed_addr global i64 0, align 8, !dbg !526
@usvars_alloc = internal global i64 0, align 8, !dbg !532
@usvars = internal unnamed_addr global ptr null, align 8, !dbg !534
@.str.93 = private unnamed_addr constant [2 x i8] c",\00", align 1, !dbg !537
@.str.94 = private unnamed_addr constant [19 x i8] c"%s: invalid signal\00", align 1, !dbg !539
@block_signals = internal global %struct.__sigset_t zeroinitializer, align 8, !dbg !546
@unblock_signals = internal global %struct.__sigset_t zeroinitializer, align 8, !dbg !556
@.str.95 = private unnamed_addr constant [26 x i8] c"failed to block signal %d\00", align 1, !dbg !541
@.str.96 = private unnamed_addr constant [15 x i8] c"split -S:  %s\0A\00", align 1, !dbg !558
@.str.97 = private unnamed_addr constant [14 x i8] c" into:    %s\0A\00", align 1, !dbg !560
@.str.98 = private unnamed_addr constant [14 x i8] c"     &    %s\0A\00", align 1, !dbg !562
@.str.99 = private unnamed_addr constant [48 x i8] c"'\\c' must not appear in double-quoted -S string\00", align 1, !dbg !564
@.str.100 = private unnamed_addr constant [41 x i8] c"invalid backslash at end of string in -S\00", align 1, !dbg !569
@.str.101 = private unnamed_addr constant [29 x i8] c"invalid sequence '\\%c' in -S\00", align 1, !dbg !574
@.str.102 = private unnamed_addr constant [53 x i8] c"only ${VARNAME} expansion is supported, error at: %s\00", align 1, !dbg !579
@.str.103 = private unnamed_addr constant [25 x i8] c"expanding ${%s} into %s\0A\00", align 1, !dbg !584
@.str.104 = private unnamed_addr constant [34 x i8] c"replacing ${%s} with null string\0A\00", align 1, !dbg !589
@.str.105 = private unnamed_addr constant [34 x i8] c"no terminating quote in -S string\00", align 1, !dbg !594
@vnlen = internal global i64 0, align 8, !dbg !596
@varname = internal unnamed_addr global ptr null, align 8, !dbg !598
@.str.106 = private unnamed_addr constant [14 x i8] c"unset:    %s\0A\00", align 1, !dbg !600
@.str.107 = private unnamed_addr constant [16 x i8] c"cannot unset %s\00", align 1, !dbg !602
@.str.108 = private unnamed_addr constant [42 x i8] c"failed to get signal action for signal %d\00", align 1, !dbg !604
@.str.109 = private unnamed_addr constant [42 x i8] c"failed to set signal action for signal %d\00", align 1, !dbg !609
@.str.110 = private unnamed_addr constant [6 x i8] c"SIG%d\00", align 1, !dbg !611
@.str.111 = private unnamed_addr constant [30 x i8] c"Reset signal %s (%d) to %s%s\0A\00", align 1, !dbg !613
@.str.112 = private unnamed_addr constant [8 x i8] c"DEFAULT\00", align 1, !dbg !615
@.str.113 = private unnamed_addr constant [7 x i8] c"IGNORE\00", align 1, !dbg !617
@.str.114 = private unnamed_addr constant [19 x i8] c" (failure ignored)\00", align 1, !dbg !619
@.str.115 = private unnamed_addr constant [34 x i8] c"failed to get signal process mask\00", align 1, !dbg !621
@.str.116 = private unnamed_addr constant [6 x i8] c"BLOCK\00", align 1, !dbg !623
@.str.117 = private unnamed_addr constant [8 x i8] c"UNBLOCK\00", align 1, !dbg !625
@.str.118 = private unnamed_addr constant [31 x i8] c"signal %s (%d) mask set to %s\0A\00", align 1, !dbg !627
@.str.119 = private unnamed_addr constant [34 x i8] c"failed to set signal process mask\00", align 1, !dbg !632
@.str.120 = private unnamed_addr constant [21 x i8] c"%-10s (%2d): %s%s%s\0A\00", align 1, !dbg !634
@.str.1.3 = private unnamed_addr constant [19 x i8] c"%s: invalid signal\00", align 1, !dbg !640
@.str.48 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !643
@Version = dso_local local_unnamed_addr global ptr @.str.48, align 8, !dbg !646
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !650
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !663
@.str.53 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !655
@.str.1.54 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !657
@.str.2.55 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !659
@.str.3.56 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !661
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !665
@stderr = external local_unnamed_addr global ptr, align 8
@.str.57 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !671
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !707
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !673
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !697
@.str.1.63 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !699
@.str.2.65 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !701
@.str.3.64 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !703
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !705
@.str.4.58 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !709
@.str.5.59 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !711
@.str.6.60 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !713
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !718
@.str.74 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !724
@.str.1.75 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !726
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !728
@.str.121 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !759
@.str.1.122 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !762
@.str.2.123 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !764
@.str.3.124 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !766
@.str.4.125 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !768
@.str.5.126 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !770
@.str.6.127 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !772
@.str.7.128 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !774
@.str.8.129 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !776
@.str.9.130 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !778
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.121, ptr @.str.1.122, ptr @.str.2.123, ptr @.str.3.124, ptr @.str.4.125, ptr @.str.5.126, ptr @.str.6.127, ptr @.str.7.128, ptr @.str.8.129, ptr @.str.9.130, ptr null], align 8, !dbg !780
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !793
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !807
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !845
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !852
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !809
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !854
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !797
@.str.10.133 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !814
@.str.11.131 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !816
@.str.12.134 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !818
@.str.13.132 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !820
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !822
@numname_table = internal global [35 x %struct.numname] [%struct.numname { i32 1, [8 x i8] c"HUP\00\00\00\00\00" }, %struct.numname { i32 2, [8 x i8] c"INT\00\00\00\00\00" }, %struct.numname { i32 3, [8 x i8] c"QUIT\00\00\00\00" }, %struct.numname { i32 4, [8 x i8] c"ILL\00\00\00\00\00" }, %struct.numname { i32 5, [8 x i8] c"TRAP\00\00\00\00" }, %struct.numname { i32 6, [8 x i8] c"ABRT\00\00\00\00" }, %struct.numname { i32 8, [8 x i8] c"FPE\00\00\00\00\00" }, %struct.numname { i32 9, [8 x i8] c"KILL\00\00\00\00" }, %struct.numname { i32 11, [8 x i8] c"SEGV\00\00\00\00" }, %struct.numname { i32 7, [8 x i8] c"BUS\00\00\00\00\00" }, %struct.numname { i32 13, [8 x i8] c"PIPE\00\00\00\00" }, %struct.numname { i32 14, [8 x i8] c"ALRM\00\00\00\00" }, %struct.numname { i32 15, [8 x i8] c"TERM\00\00\00\00" }, %struct.numname { i32 10, [8 x i8] c"USR1\00\00\00\00" }, %struct.numname { i32 12, [8 x i8] c"USR2\00\00\00\00" }, %struct.numname { i32 17, [8 x i8] c"CHLD\00\00\00\00" }, %struct.numname { i32 23, [8 x i8] c"URG\00\00\00\00\00" }, %struct.numname { i32 19, [8 x i8] c"STOP\00\00\00\00" }, %struct.numname { i32 20, [8 x i8] c"TSTP\00\00\00\00" }, %struct.numname { i32 18, [8 x i8] c"CONT\00\00\00\00" }, %struct.numname { i32 21, [8 x i8] c"TTIN\00\00\00\00" }, %struct.numname { i32 22, [8 x i8] c"TTOU\00\00\00\00" }, %struct.numname { i32 31, [8 x i8] c"SYS\00\00\00\00\00" }, %struct.numname { i32 29, [8 x i8] c"POLL\00\00\00\00" }, %struct.numname { i32 26, [8 x i8] c"VTALRM\00\00" }, %struct.numname { i32 27, [8 x i8] c"PROF\00\00\00\00" }, %struct.numname { i32 24, [8 x i8] c"XCPU\00\00\00\00" }, %struct.numname { i32 25, [8 x i8] c"XFSZ\00\00\00\00" }, %struct.numname { i32 6, [8 x i8] c"IOT\00\00\00\00\00" }, %struct.numname { i32 17, [8 x i8] c"CLD\00\00\00\00\00" }, %struct.numname { i32 30, [8 x i8] c"PWR\00\00\00\00\00" }, %struct.numname { i32 28, [8 x i8] c"WINCH\00\00\00" }, %struct.numname { i32 29, [8 x i8] c"IO\00\00\00\00\00\00" }, %struct.numname { i32 16, [8 x i8] c"STKFLT\00\00" }, %struct.numname { i32 0, [8 x i8] c"EXIT\00\00\00\00" }], align 4, !dbg !860
@.str.143 = private unnamed_addr constant [6 x i8] c"RTMIN\00", align 1, !dbg !866
@.str.1.144 = private unnamed_addr constant [6 x i8] c"RTMAX\00", align 1, !dbg !868
@.str.2.147 = private unnamed_addr constant [4 x i8] c"%+d\00", align 1, !dbg !870
@.str.148 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !880
@.str.1.149 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !883
@.str.2.150 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !885
@.str.3.151 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !887
@.str.4.152 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !889
@.str.5.153 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !891
@.str.6.154 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !896
@.str.7.155 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !898
@.str.8.156 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !900
@.str.9.157 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !902
@.str.10.158 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !907
@.str.11.159 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !912
@.str.12.160 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !917
@.str.13.161 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !919
@.str.14.162 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !924
@.str.15.163 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !926
@.str.16.164 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !931
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.169 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !933
@.str.18.170 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !935
@.str.19.171 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !937
@.str.20.172 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !939
@.str.21.173 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !941
@.str.22.174 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !943
@.str.23.175 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !945
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !947
@exit_failure = dso_local global i32 1, align 4, !dbg !955
@.str.194 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !961
@.str.1.192 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !964
@.str.2.193 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !966
@.str.205 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !968
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !971
@.str.210 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !986
@.str.1.211 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !989

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !1066 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1068, metadata !DIExpression()), !dbg !1069
  %2 = icmp eq i32 %0, 0, !dbg !1070
  br i1 %2, label %8, label %3, !dbg !1072

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !1073, !tbaa !1075
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #41, !dbg !1073
  %6 = load ptr, ptr @program_name, align 8, !dbg !1073, !tbaa !1075
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #41, !dbg !1073
  br label %53, !dbg !1073

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #41, !dbg !1079
  %10 = load ptr, ptr @program_name, align 8, !dbg !1079, !tbaa !1075
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #41, !dbg !1079
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #41, !dbg !1081
  %13 = load ptr, ptr @stdout, align 8, !dbg !1081, !tbaa !1075
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !1081
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.43, i32 noundef 5) #41, !dbg !1082
  %16 = load ptr, ptr @stdout, align 8, !dbg !1082, !tbaa !1075
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !1082
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #41, !dbg !1085
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !1085
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #41, !dbg !1086
  tail call fastcc void @oputs_(ptr noundef %19), !dbg !1086
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #41, !dbg !1087
  tail call fastcc void @oputs_(ptr noundef %20), !dbg !1087
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #41, !dbg !1088
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !1088
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #41, !dbg !1089
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !1089
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #41, !dbg !1090
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !1090
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #41, !dbg !1091
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !1091
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #41, !dbg !1092
  tail call fastcc void @oputs_(ptr noundef %25), !dbg !1092
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #41, !dbg !1093
  tail call fastcc void @oputs_(ptr noundef %26), !dbg !1093
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #41, !dbg !1094
  tail call fastcc void @oputs_(ptr noundef %27), !dbg !1094
  %28 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #41, !dbg !1095
  tail call fastcc void @oputs_(ptr noundef %28), !dbg !1095
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #41, !dbg !1096
  tail call fastcc void @oputs_(ptr noundef %29), !dbg !1096
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #41, !dbg !1097
  tail call fastcc void @oputs_(ptr noundef %30), !dbg !1097
  %31 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #41, !dbg !1098
  %32 = load ptr, ptr @stdout, align 8, !dbg !1098, !tbaa !1075
  %33 = tail call i32 @fputs_unlocked(ptr noundef %31, ptr noundef %32), !dbg !1098
  %34 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #41, !dbg !1099
  %35 = load ptr, ptr @stdout, align 8, !dbg !1099, !tbaa !1075
  %36 = tail call i32 @fputs_unlocked(ptr noundef %34, ptr noundef %35), !dbg !1099
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1100, metadata !DIExpression()), !dbg !1105
  %37 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.71, i32 noundef 5) #41, !dbg !1107
  %38 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %37, ptr noundef nonnull @.str.3) #41, !dbg !1107
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1108, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata !1125, metadata !1119, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata ptr poison, metadata !1118, metadata !DIExpression()), !dbg !1123
  tail call void @emit_bug_reporting_address() #41, !dbg !1126
  %39 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #41, !dbg !1127
  call void @llvm.dbg.value(metadata ptr %39, metadata !1121, metadata !DIExpression()), !dbg !1123
  %40 = icmp eq ptr %39, null, !dbg !1128
  br i1 %40, label %48, label %41, !dbg !1130

41:                                               ; preds = %8
  %42 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(4) @.str.75, i64 noundef 3) #42, !dbg !1131
  %43 = icmp eq i32 %42, 0, !dbg !1131
  br i1 %43, label %48, label %44, !dbg !1132

44:                                               ; preds = %41
  %45 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.76, i32 noundef 5) #41, !dbg !1133
  %46 = load ptr, ptr @stdout, align 8, !dbg !1133, !tbaa !1075
  %47 = tail call i32 @fputs_unlocked(ptr noundef %45, ptr noundef %46), !dbg !1133
  br label %48, !dbg !1135

48:                                               ; preds = %8, %41, %44
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1118, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1122, metadata !DIExpression()), !dbg !1123
  %49 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.77, i32 noundef 5) #41, !dbg !1136
  %50 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %49, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.3) #41, !dbg !1136
  %51 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.78, i32 noundef 5) #41, !dbg !1137
  %52 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %51, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.79) #41, !dbg !1137
  br label %53

53:                                               ; preds = %48, %3
  tail call void @exit(i32 noundef %0) #43, !dbg !1138
  unreachable, !dbg !1138
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1139 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1143 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1149 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1152 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !304 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !308, metadata !DIExpression()), !dbg !1155
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !309, metadata !DIExpression()), !dbg !1155
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !1156, !tbaa !1157
  %3 = icmp eq i32 %2, -1, !dbg !1159
  br i1 %3, label %4, label %16, !dbg !1160

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.44) #41, !dbg !1161
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !310, metadata !DIExpression()), !dbg !1162
  %6 = icmp eq ptr %5, null, !dbg !1163
  br i1 %6, label %14, label %7, !dbg !1164

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !1165, !tbaa !1166
  %9 = icmp eq i8 %8, 0, !dbg !1165
  br i1 %9, label %14, label %10, !dbg !1167

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !1168, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata ptr @.str.45, metadata !1174, metadata !DIExpression()), !dbg !1175
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.45) #42, !dbg !1177
  %12 = icmp eq i32 %11, 0, !dbg !1178
  %13 = zext i1 %12 to i32, !dbg !1167
  br label %14, !dbg !1167

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !1179, !tbaa !1157
  br label %16, !dbg !1180

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !1181
  %18 = icmp eq i32 %17, 0, !dbg !1181
  br i1 %18, label %22, label %19, !dbg !1183

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !1184, !tbaa !1075
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !1184
  br label %121, !dbg !1186

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !313, metadata !DIExpression()), !dbg !1155
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.46) #42, !dbg !1187
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1188
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !314, metadata !DIExpression()), !dbg !1155
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #42, !dbg !1189
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !315, metadata !DIExpression()), !dbg !1155
  %26 = icmp eq ptr %25, null, !dbg !1190
  br i1 %26, label %53, label %27, !dbg !1191

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1192
  br i1 %28, label %53, label %29, !dbg !1193

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !316, metadata !DIExpression()), !dbg !1194
  tail call void @llvm.dbg.value(metadata i64 0, metadata !320, metadata !DIExpression()), !dbg !1194
  %30 = icmp ult ptr %24, %25, !dbg !1195
  br i1 %30, label %31, label %53, !dbg !1196

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #44, !dbg !1155
  %33 = load ptr, ptr %32, align 8, !tbaa !1075
  br label %34, !dbg !1196

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !316, metadata !DIExpression()), !dbg !1194
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !320, metadata !DIExpression()), !dbg !1194
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1197
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !316, metadata !DIExpression()), !dbg !1194
  %38 = load i8, ptr %35, align 1, !dbg !1197, !tbaa !1166
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1197
  %41 = load i16, ptr %40, align 2, !dbg !1197, !tbaa !1198
  %42 = freeze i16 %41, !dbg !1200
  %43 = lshr i16 %42, 13, !dbg !1200
  %44 = and i16 %43, 1, !dbg !1200
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1201
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !320, metadata !DIExpression()), !dbg !1194
  %47 = icmp ult ptr %37, %25, !dbg !1195
  %48 = icmp ult i64 %46, 2, !dbg !1202
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1202
  br i1 %49, label %34, label %50, !dbg !1196, !llvm.loop !1203

50:                                               ; preds = %34
  %.lcssa1 = phi i64 [ %46, %34 ], !dbg !1201
  %51 = icmp ne i64 %.lcssa1, 2, !dbg !1205
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !1207
  br label %53, !dbg !1207

53:                                               ; preds = %50, %29, %22, %27
  %54 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !1155
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %51, %50 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !313, metadata !DIExpression()), !dbg !1155
  tail call void @llvm.dbg.value(metadata ptr %54, metadata !315, metadata !DIExpression()), !dbg !1155
  %56 = tail call i64 @strcspn(ptr noundef %54, ptr noundef nonnull @.str.47) #42, !dbg !1208
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !321, metadata !DIExpression()), !dbg !1155
  %57 = getelementptr inbounds i8, ptr %54, i64 %56, !dbg !1209
  tail call void @llvm.dbg.value(metadata ptr %57, metadata !322, metadata !DIExpression()), !dbg !1155
  br label %58, !dbg !1210

58:                                               ; preds = %89, %53
  %59 = phi ptr [ %57, %53 ], [ %90, %89 ], !dbg !1155
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !313, metadata !DIExpression()), !dbg !1155
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !322, metadata !DIExpression()), !dbg !1155
  %61 = load i8, ptr %59, align 1, !dbg !1211, !tbaa !1166
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !1212

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !1213
  %64 = load i8, ptr %63, align 1, !dbg !1216, !tbaa !1166
  %65 = icmp ne i8 %64, 45, !dbg !1217
  %66 = select i1 %65, i1 %60, i1 false, !dbg !1218
  br label %67, !dbg !1218

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !313, metadata !DIExpression()), !dbg !1155
  %69 = tail call ptr @__ctype_b_loc() #44, !dbg !1219
  %70 = load ptr, ptr %69, align 8, !dbg !1219, !tbaa !1075
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, ptr %70, i64 %71, !dbg !1219
  %73 = load i16, ptr %72, align 2, !dbg !1219, !tbaa !1198
  %74 = and i16 %73, 8192, !dbg !1219
  %75 = icmp eq i16 %74, 0, !dbg !1219
  br i1 %75, label %89, label %76, !dbg !1221

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !1222
  br i1 %77, label %91, label %78, !dbg !1225

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !1226
  %80 = load i8, ptr %79, align 1, !dbg !1226, !tbaa !1166
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, ptr %70, i64 %81, !dbg !1226
  %83 = load i16, ptr %82, align 2, !dbg !1226, !tbaa !1198
  %84 = and i16 %83, 8192, !dbg !1226
  %85 = icmp eq i16 %84, 0, !dbg !1226
  %86 = icmp eq i8 %80, 45
  %87 = or i1 %68, %86
  %88 = select i1 %85, i1 %87, i1 false, !dbg !1227
  br i1 %88, label %89, label %91, !dbg !1227

89:                                               ; preds = %78, %67
  %90 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !1228
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !322, metadata !DIExpression()), !dbg !1155
  br label %58, !dbg !1210, !llvm.loop !1229

91:                                               ; preds = %58, %58, %76, %78
  %.lcssa = phi ptr [ %59, %58 ], [ %59, %58 ], [ %59, %76 ], [ %59, %78 ], !dbg !1155
  %92 = ptrtoint ptr %24 to i64, !dbg !1231
  %93 = load ptr, ptr @stdout, align 8, !dbg !1231, !tbaa !1075
  %94 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %93), !dbg !1231
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1168, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata !1125, metadata !1174, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1168, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata !1125, metadata !1174, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1168, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata !1125, metadata !1174, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1168, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata !1125, metadata !1174, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1168, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata !1125, metadata !1174, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1168, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata !1125, metadata !1174, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1168, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata !1125, metadata !1174, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1168, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata !1125, metadata !1174, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1168, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata !1125, metadata !1174, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1168, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata !1125, metadata !1174, metadata !DIExpression()), !dbg !1250
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !378, metadata !DIExpression()), !dbg !1155
  %95 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(7) @.str.61, i64 noundef 6) #42, !dbg !1252
  %96 = icmp eq i32 %95, 0, !dbg !1252
  br i1 %96, label %100, label %97, !dbg !1254

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(10) @.str.62, i64 noundef 9) #42, !dbg !1255
  %99 = icmp eq i32 %98, 0, !dbg !1255
  br i1 %99, label %100, label %103, !dbg !1256

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !1257
  %102 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %101, ptr noundef %54) #41, !dbg !1257
  br label %106, !dbg !1259

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !1260
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %54) #41, !dbg !1260
  br label %106

106:                                              ; preds = %103, %100
  %107 = load ptr, ptr @stdout, align 8, !dbg !1262, !tbaa !1075
  %108 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.67, ptr noundef %107), !dbg !1262
  %109 = load ptr, ptr @stdout, align 8, !dbg !1263, !tbaa !1075
  %110 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.68, ptr noundef %109), !dbg !1263
  %111 = ptrtoint ptr %.lcssa to i64, !dbg !1264
  %112 = sub i64 %111, %92, !dbg !1264
  %113 = load ptr, ptr @stdout, align 8, !dbg !1264, !tbaa !1075
  %114 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %112, ptr noundef %113), !dbg !1264
  %115 = load ptr, ptr @stdout, align 8, !dbg !1265, !tbaa !1075
  %116 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.69, ptr noundef %115), !dbg !1265
  %117 = load ptr, ptr @stdout, align 8, !dbg !1266, !tbaa !1075
  %118 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.70, ptr noundef %117), !dbg !1266
  %119 = load ptr, ptr @stdout, align 8, !dbg !1267, !tbaa !1075
  %120 = tail call i32 @fputs_unlocked(ptr noundef nonnull %.lcssa, ptr noundef %119), !dbg !1267
  br label %121, !dbg !1268

121:                                              ; preds = %106, %19
  ret void, !dbg !1268
}

; Function Attrs: nounwind
declare !dbg !1269 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1273 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1277 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1279 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1282 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1285 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1288 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1291 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1297 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1298 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !223 {
  %3 = alloca %struct.__sigset_t, align 8, !DIAssignID !1304
  %4 = alloca %struct.sigaction, align 8, !DIAssignID !1305
  %5 = alloca [19 x i8], align 1, !DIAssignID !1306
  %6 = alloca %struct.__sigset_t, align 8, !DIAssignID !1307
  %7 = alloca [19 x i8], align 1, !DIAssignID !1308
  %8 = alloca %struct.sigaction, align 8, !DIAssignID !1309
  %9 = alloca [19 x i8], align 1, !DIAssignID !1310
  %10 = alloca %struct.splitbuf, align 8, !DIAssignID !1311
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !228, metadata !DIExpression()), !dbg !1312
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !229, metadata !DIExpression()), !dbg !1312
  tail call void @llvm.dbg.value(metadata i8 0, metadata !230, metadata !DIExpression()), !dbg !1312
  tail call void @llvm.dbg.value(metadata i8 0, metadata !232, metadata !DIExpression()), !dbg !1312
  tail call void @llvm.dbg.value(metadata ptr null, metadata !233, metadata !DIExpression()), !dbg !1312
  tail call void @llvm.dbg.value(metadata ptr null, metadata !234, metadata !DIExpression()), !dbg !1312
  %11 = load ptr, ptr %1, align 8, !dbg !1313, !tbaa !1075
  tail call void @set_program_name(ptr noundef %11) #41, !dbg !1314
  %12 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.19) #41, !dbg !1315
  %13 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #41, !dbg !1316
  %14 = tail call ptr @textdomain(ptr noundef nonnull @.str.20) #41, !dbg !1317
  tail call void @llvm.dbg.value(metadata i32 125, metadata !1318, metadata !DIExpression()), !dbg !1321
  store volatile i32 125, ptr @exit_failure, align 4, !dbg !1323, !tbaa !1157
  %15 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #41, !dbg !1325
  %16 = tail call noalias nonnull dereferenceable(260) ptr @xmalloc(i64 noundef 260) #45, !dbg !1326
  store ptr %16, ptr @signals, align 8, !dbg !1332, !tbaa !1075
  call void @llvm.dbg.value(metadata i32 0, metadata !1329, metadata !DIExpression()), !dbg !1333
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %16, i8 0, i64 260, i1 false), !dbg !1334, !tbaa !1157
  call void @llvm.dbg.value(metadata i64 poison, metadata !1329, metadata !DIExpression()), !dbg !1333
  %17 = getelementptr inbounds %struct.splitbuf, ptr %10, i64 0, i32 1
  %18 = getelementptr inbounds %struct.splitbuf, ptr %10, i64 0, i32 2
  %19 = getelementptr inbounds %struct.splitbuf, ptr %10, i64 0, i32 3
  %20 = getelementptr inbounds %struct.splitbuf, ptr %10, i64 0, i32 4
  br label %21, !dbg !1336

21:                                               ; preds = %29, %2
  %22 = phi i32 [ %0, %2 ], [ %30, %29 ]
  %23 = phi ptr [ %1, %2 ], [ %31, %29 ]
  %24 = phi ptr [ null, %2 ], [ %32, %29 ], !dbg !1337
  %25 = phi ptr [ null, %2 ], [ %33, %29 ], !dbg !1338
  %26 = phi i1 [ false, %2 ], [ %34, %29 ]
  %27 = phi i1 [ false, %2 ], [ %35, %29 ]
  tail call void @llvm.dbg.value(metadata ptr %23, metadata !229, metadata !DIExpression()), !dbg !1312
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !228, metadata !DIExpression()), !dbg !1312
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !230, metadata !DIExpression()), !dbg !1312
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !232, metadata !DIExpression()), !dbg !1312
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !233, metadata !DIExpression()), !dbg !1312
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !234, metadata !DIExpression()), !dbg !1312
  %28 = call i32 @getopt_long(i32 noundef %22, ptr noundef %23, ptr noundef nonnull @shortopts, ptr noundef nonnull @longopts, ptr noundef null) #41, !dbg !1339
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !235, metadata !DIExpression()), !dbg !1312
  switch i32 %28, label %368 [
    i32 -1, label %369
    i32 97, label %36
    i32 105, label %29
    i32 117, label %38
    i32 118, label %52
    i32 48, label %53
    i32 256, label %54
    i32 257, label %57
    i32 258, label %59
    i32 259, label %61
    i32 67, label %62
    i32 83, label %64
    i32 32, label %358
    i32 9, label %358
    i32 10, label %358
    i32 11, label %358
    i32 12, label %358
    i32 13, label %358
    i32 -2, label %361
    i32 -3, label %362
  ], !dbg !1336

29:                                               ; preds = %21, %349, %62, %61, %59, %57, %54, %53, %52, %47, %36
  %30 = phi i32 [ %357, %349 ], [ %22, %62 ], [ %22, %61 ], [ %22, %59 ], [ %22, %57 ], [ %22, %54 ], [ %22, %53 ], [ %22, %52 ], [ %22, %47 ], [ %22, %21 ], [ %22, %36 ]
  %31 = phi ptr [ %277, %349 ], [ %23, %62 ], [ %23, %61 ], [ %23, %59 ], [ %23, %57 ], [ %23, %54 ], [ %23, %53 ], [ %23, %52 ], [ %23, %47 ], [ %23, %21 ], [ %23, %36 ]
  %32 = phi ptr [ %24, %349 ], [ %24, %62 ], [ %24, %61 ], [ %24, %59 ], [ %24, %57 ], [ %24, %54 ], [ %24, %53 ], [ %24, %52 ], [ %24, %47 ], [ %24, %21 ], [ %37, %36 ]
  %33 = phi ptr [ %25, %349 ], [ %63, %62 ], [ %25, %61 ], [ %25, %59 ], [ %25, %57 ], [ %25, %54 ], [ %25, %53 ], [ %25, %52 ], [ %25, %47 ], [ %25, %21 ], [ %25, %36 ]
  %34 = phi i1 [ %26, %349 ], [ %26, %62 ], [ %26, %61 ], [ %26, %59 ], [ %26, %57 ], [ %26, %54 ], [ true, %53 ], [ %26, %52 ], [ %26, %47 ], [ %26, %21 ], [ %26, %36 ]
  %35 = phi i1 [ %27, %349 ], [ %27, %62 ], [ %27, %61 ], [ %27, %59 ], [ %27, %57 ], [ %27, %54 ], [ %27, %53 ], [ %27, %52 ], [ %27, %47 ], [ true, %21 ], [ %27, %36 ]
  br label %21, !dbg !1312, !llvm.loop !1340

36:                                               ; preds = %21
  %37 = load ptr, ptr @optarg, align 8, !dbg !1342, !tbaa !1075
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !234, metadata !DIExpression()), !dbg !1312
  br label %29, !dbg !1345

38:                                               ; preds = %21
  %39 = load ptr, ptr @optarg, align 8, !dbg !1346, !tbaa !1075
  call void @llvm.dbg.value(metadata ptr %39, metadata !1347, metadata !DIExpression()), !dbg !1350
  %40 = load i64, ptr @usvars_used, align 8, !dbg !1352, !tbaa !1354
  %41 = load i64, ptr @usvars_alloc, align 8, !dbg !1356, !tbaa !1354
  %42 = icmp eq i64 %40, %41, !dbg !1357
  %43 = load ptr, ptr @usvars, align 8, !dbg !1358, !tbaa !1075
  br i1 %42, label %44, label %47, !dbg !1359

44:                                               ; preds = %38
  %45 = call nonnull ptr @xpalloc(ptr noundef %43, ptr noundef nonnull @usvars_alloc, i64 noundef 1, i64 noundef -1, i64 noundef 8) #41, !dbg !1360
  store ptr %45, ptr @usvars, align 8, !dbg !1361, !tbaa !1075
  %46 = load i64, ptr @usvars_used, align 8, !dbg !1362, !tbaa !1354
  br label %47, !dbg !1363

47:                                               ; preds = %38, %44
  %48 = phi i64 [ %46, %44 ], [ %40, %38 ], !dbg !1362
  %49 = phi ptr [ %45, %44 ], [ %43, %38 ], !dbg !1358
  %50 = add nsw i64 %48, 1, !dbg !1362
  store i64 %50, ptr @usvars_used, align 8, !dbg !1362, !tbaa !1354
  %51 = getelementptr inbounds ptr, ptr %49, i64 %48, !dbg !1358
  store ptr %39, ptr %51, align 8, !dbg !1364, !tbaa !1075
  br label %29, !dbg !1365

52:                                               ; preds = %21
  store i1 true, ptr @dev_debug, align 1, !dbg !1366
  br label %29, !dbg !1367

53:                                               ; preds = %21
  tail call void @llvm.dbg.value(metadata i8 1, metadata !232, metadata !DIExpression()), !dbg !1312
  br label %29, !dbg !1368

54:                                               ; preds = %21
  %55 = load ptr, ptr @optarg, align 8, !dbg !1369, !tbaa !1075
  call fastcc void @parse_signal_action_params(ptr noundef %55, i1 noundef true), !dbg !1370
  %56 = load ptr, ptr @optarg, align 8, !dbg !1371, !tbaa !1075
  call fastcc void @parse_block_signal_params(ptr noundef %56, i1 noundef false), !dbg !1372
  br label %29, !dbg !1373

57:                                               ; preds = %21
  %58 = load ptr, ptr @optarg, align 8, !dbg !1374, !tbaa !1075
  call fastcc void @parse_signal_action_params(ptr noundef %58, i1 noundef false), !dbg !1375
  br label %29, !dbg !1376

59:                                               ; preds = %21
  %60 = load ptr, ptr @optarg, align 8, !dbg !1377, !tbaa !1075
  call fastcc void @parse_block_signal_params(ptr noundef %60, i1 noundef true), !dbg !1378
  br label %29, !dbg !1379

61:                                               ; preds = %21
  store i1 true, ptr @report_signal_handling, align 1, !dbg !1380
  br label %29, !dbg !1381

62:                                               ; preds = %21
  %63 = load ptr, ptr @optarg, align 8, !dbg !1382, !tbaa !1075
  tail call void @llvm.dbg.value(metadata ptr %63, metadata !233, metadata !DIExpression()), !dbg !1312
  br label %29, !dbg !1383

64:                                               ; preds = %21
  %65 = load ptr, ptr @optarg, align 8, !dbg !1384, !tbaa !1075
  call void @llvm.dbg.value(metadata ptr %65, metadata !1385, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata ptr @optind, metadata !1391, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata ptr undef, metadata !1392, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata ptr undef, metadata !1393, metadata !DIExpression()), !dbg !1401
  %66 = load i32, ptr @optind, align 4, !dbg !1403, !tbaa !1157
  %67 = sub nsw i32 %22, %66, !dbg !1404
  call void @llvm.dbg.value(metadata i32 %67, metadata !1394, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1405, metadata !DIExpression(), metadata !1311, metadata ptr %10, metadata !DIExpression()), !dbg !1429
  call void @llvm.dbg.value(metadata ptr %65, metadata !1410, metadata !DIExpression()), !dbg !1429
  call void @llvm.dbg.value(metadata i32 %67, metadata !1411, metadata !DIExpression()), !dbg !1429
  call void @llvm.dbg.value(metadata ptr undef, metadata !1412, metadata !DIExpression()), !dbg !1429
  call void @llvm.dbg.value(metadata i8 0, metadata !1413, metadata !DIExpression()), !dbg !1429
  call void @llvm.dbg.value(metadata i8 0, metadata !1414, metadata !DIExpression()), !dbg !1429
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #41, !dbg !1431
  %68 = add nsw i32 %67, 2, !dbg !1432
  %69 = sext i32 %68 to i64, !dbg !1433
  %70 = call noalias nonnull ptr @xnmalloc(i64 noundef %69, i64 noundef 16) #46, !dbg !1434
  store ptr %70, ptr %10, align 8, !dbg !1435, !tbaa !1436, !DIAssignID !1439
  call void @llvm.dbg.assign(metadata ptr %70, metadata !1405, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1439, metadata ptr %10, metadata !DIExpression()), !dbg !1429
  store i32 1, ptr %17, align 8, !dbg !1440, !tbaa !1441, !DIAssignID !1442
  call void @llvm.dbg.assign(metadata i32 1, metadata !1405, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32), metadata !1442, metadata ptr %17, metadata !DIExpression()), !dbg !1429
  store i64 %69, ptr %18, align 8, !dbg !1443, !tbaa !1444, !DIAssignID !1445
  call void @llvm.dbg.assign(metadata i64 %69, metadata !1405, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64), metadata !1445, metadata ptr %18, metadata !DIExpression()), !dbg !1429
  store i32 %67, ptr %19, align 8, !dbg !1446, !tbaa !1447, !DIAssignID !1448
  call void @llvm.dbg.assign(metadata i32 %67, metadata !1405, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32), metadata !1448, metadata ptr %19, metadata !DIExpression()), !dbg !1429
  store i8 1, ptr %20, align 4, !dbg !1449, !tbaa !1450, !DIAssignID !1451
  call void @llvm.dbg.assign(metadata i8 1, metadata !1405, metadata !DIExpression(DW_OP_LLVM_fragment, 224, 8), metadata !1451, metadata ptr %20, metadata !DIExpression()), !dbg !1429
  %71 = getelementptr inbounds ptr, ptr %70, i64 1, !dbg !1452
  store ptr null, ptr %71, align 8, !dbg !1453, !tbaa !1075
  br label %72, !dbg !1454

72:                                               ; preds = %106, %64
  %73 = phi ptr [ %65, %64 ], [ %107, %106 ]
  %74 = phi i1 [ false, %64 ], [ %108, %106 ]
  %75 = phi i1 [ false, %64 ], [ %109, %106 ]
  br label %76, !dbg !1454

76:                                               ; preds = %72, %210
  %77 = phi ptr [ %73, %72 ], [ %212, %210 ]
  %78 = phi i1 [ %75, %72 ], [ false, %210 ]
  %79 = select i1 %78, i1 true, i1 %74
  br label %80, !dbg !1454

80:                                               ; preds = %76, %233
  %81 = phi ptr [ %244, %233 ], [ %77, %76 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1414, metadata !DIExpression()), !dbg !1429
  call void @llvm.dbg.value(metadata i8 poison, metadata !1413, metadata !DIExpression()), !dbg !1429
  call void @llvm.dbg.value(metadata ptr %81, metadata !1410, metadata !DIExpression()), !dbg !1429
  %82 = load i8, ptr %81, align 1, !dbg !1455, !tbaa !1166
  switch i8 %82, label %214 [
    i8 0, label %245
    i8 39, label %83
    i8 34, label %87
    i8 32, label %91
    i8 9, label %91
    i8 10, label %91
    i8 11, label %91
    i8 12, label %91
    i8 13, label %91
    i8 35, label %95
    i8 92, label %98
    i8 36, label %122
  ], !dbg !1454

83:                                               ; preds = %80
  br i1 %74, label %214, label %84, !dbg !1456

84:                                               ; preds = %83
  %.lcssa46 = phi i1 [ %78, %83 ]
  %.lcssa31 = phi ptr [ %81, %83 ]
  %85 = xor i1 %.lcssa46, true, !dbg !1457
  call void @llvm.dbg.value(metadata i1 %85, metadata !1414, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1429
  call fastcc void @check_start_new_arg(ptr noundef nonnull %10), !dbg !1458
  %86 = getelementptr inbounds i8, ptr %.lcssa31, i64 1, !dbg !1459
  call void @llvm.dbg.value(metadata ptr %86, metadata !1410, metadata !DIExpression()), !dbg !1429
  br label %106, !dbg !1460

87:                                               ; preds = %80
  br i1 %78, label %214, label %88, !dbg !1461

88:                                               ; preds = %87
  %.lcssa30 = phi ptr [ %81, %87 ]
  %89 = xor i1 %74, true, !dbg !1462
  call void @llvm.dbg.value(metadata i1 %89, metadata !1413, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1429
  call fastcc void @check_start_new_arg(ptr noundef nonnull %10), !dbg !1463
  %90 = getelementptr inbounds i8, ptr %.lcssa30, i64 1, !dbg !1464
  call void @llvm.dbg.value(metadata ptr %90, metadata !1410, metadata !DIExpression()), !dbg !1429
  br label %106, !dbg !1465

91:                                               ; preds = %80, %80, %80, %80, %80, %80
  br i1 %79, label %214, label %92, !dbg !1466

92:                                               ; preds = %91
  %.lcssa29 = phi ptr [ %81, %91 ]
  store i8 1, ptr %20, align 4, !dbg !1468, !tbaa !1450, !DIAssignID !1469
  call void @llvm.dbg.assign(metadata i8 1, metadata !1405, metadata !DIExpression(DW_OP_LLVM_fragment, 224, 8), metadata !1469, metadata ptr %20, metadata !DIExpression()), !dbg !1429
  %93 = call i64 @strspn(ptr noundef nonnull %.lcssa29, ptr noundef nonnull @.str.42) #42, !dbg !1470
  %94 = getelementptr inbounds i8, ptr %.lcssa29, i64 %93, !dbg !1471
  call void @llvm.dbg.value(metadata ptr %94, metadata !1410, metadata !DIExpression()), !dbg !1429
  br label %106, !dbg !1472

95:                                               ; preds = %80
  %96 = load i8, ptr %20, align 4, !dbg !1473, !tbaa !1450, !range !1475, !noundef !1125
  %97 = icmp eq i8 %96, 0, !dbg !1473
  br i1 %97, label %214, label %.loopexit8, !dbg !1476

98:                                               ; preds = %80
  %99 = getelementptr inbounds i8, ptr %81, i64 1
  %100 = load i8, ptr %99, align 1, !dbg !1477, !tbaa !1166
  br i1 %78, label %101, label %102, !dbg !1478

101:                                              ; preds = %98
  switch i8 %100, label %214 [
    i8 39, label %213
    i8 92, label %213
  ], !dbg !1480

102:                                              ; preds = %98
  call void @llvm.dbg.value(metadata ptr %99, metadata !1410, metadata !DIExpression()), !dbg !1429
  call void @llvm.dbg.value(metadata i8 %100, metadata !1415, metadata !DIExpression()), !dbg !1481
  switch i8 %100, label %119 [
    i8 34, label %213
    i8 35, label %213
    i8 36, label %213
    i8 39, label %213
    i8 92, label %213
    i8 95, label %103
    i8 99, label %110
    i8 102, label %214
    i8 110, label %113
    i8 114, label %114
    i8 116, label %115
    i8 118, label %116
    i8 0, label %117
  ], !dbg !1482

103:                                              ; preds = %102
  br i1 %74, label %214, label %104, !dbg !1483

104:                                              ; preds = %103
  %.lcssa27 = phi ptr [ %81, %103 ]
  %105 = getelementptr inbounds i8, ptr %.lcssa27, i64 2, !dbg !1485
  call void @llvm.dbg.value(metadata ptr %105, metadata !1410, metadata !DIExpression()), !dbg !1429
  store i8 1, ptr %20, align 4, !dbg !1488, !tbaa !1450, !DIAssignID !1489
  call void @llvm.dbg.assign(metadata i8 1, metadata !1405, metadata !DIExpression(DW_OP_LLVM_fragment, 224, 8), metadata !1489, metadata ptr %20, metadata !DIExpression()), !dbg !1429
  br label %106, !dbg !1490

106:                                              ; preds = %104, %92, %88, %84
  %107 = phi ptr [ %86, %84 ], [ %90, %88 ], [ %94, %92 ], [ %105, %104 ]
  %108 = phi i1 [ false, %84 ], [ %89, %88 ], [ false, %92 ], [ false, %104 ]
  %109 = phi i1 [ %85, %84 ], [ false, %88 ], [ false, %92 ], [ false, %104 ]
  br label %72, !dbg !1454, !llvm.loop !1491

110:                                              ; preds = %102
  %.lcssa51 = phi i1 [ %74, %102 ]
  br i1 %.lcssa51, label %111, label %249, !dbg !1493

111:                                              ; preds = %110
  %112 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.99, i32 noundef 5) #41, !dbg !1494
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef 0, ptr noundef %112) #41, !dbg !1494
  unreachable, !dbg !1494

113:                                              ; preds = %102
  call void @llvm.dbg.value(metadata i8 10, metadata !1415, metadata !DIExpression()), !dbg !1481
  br label %214, !dbg !1496

114:                                              ; preds = %102
  call void @llvm.dbg.value(metadata i8 13, metadata !1415, metadata !DIExpression()), !dbg !1481
  br label %214, !dbg !1497

115:                                              ; preds = %102
  call void @llvm.dbg.value(metadata i8 9, metadata !1415, metadata !DIExpression()), !dbg !1481
  br label %214, !dbg !1498

116:                                              ; preds = %102
  call void @llvm.dbg.value(metadata i8 11, metadata !1415, metadata !DIExpression()), !dbg !1481
  br label %214, !dbg !1499

117:                                              ; preds = %102
  %118 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.100, i32 noundef 5) #41, !dbg !1500
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef 0, ptr noundef %118) #41, !dbg !1500
  unreachable, !dbg !1500

119:                                              ; preds = %102
  %.lcssa18 = phi i8 [ %100, %102 ], !dbg !1477
  %120 = zext i8 %.lcssa18 to i32, !dbg !1501
  %121 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.101, i32 noundef 5) #41, !dbg !1502
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef 0, ptr noundef %121, i32 noundef %120) #41, !dbg !1502
  unreachable, !dbg !1502

122:                                              ; preds = %80
  br i1 %78, label %214, label %123, !dbg !1503

123:                                              ; preds = %122
  %.lcssa23 = phi ptr [ %81, %122 ]
  call void @llvm.dbg.value(metadata ptr %.lcssa23, metadata !1504, metadata !DIExpression()), !dbg !1509
  call void @llvm.dbg.value(metadata ptr %.lcssa23, metadata !1511, metadata !DIExpression()), !dbg !1519
  %124 = getelementptr inbounds i8, ptr %.lcssa23, i64 1, !dbg !1521
  %125 = load i8, ptr %124, align 1, !dbg !1521, !tbaa !1166
  %126 = icmp eq i8 %125, 123, !dbg !1522
  br i1 %126, label %127, label %.loopexit9, !dbg !1523

127:                                              ; preds = %123
  %128 = getelementptr inbounds i8, ptr %.lcssa23, i64 2, !dbg !1524
  %129 = load i8, ptr %128, align 1, !dbg !1524, !tbaa !1166
  call void @llvm.dbg.value(metadata i8 %129, metadata !1525, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1531
  switch i8 %129, label %.loopexit9 [
    i8 97, label %130
    i8 98, label %130
    i8 99, label %130
    i8 100, label %130
    i8 101, label %130
    i8 102, label %130
    i8 103, label %130
    i8 104, label %130
    i8 105, label %130
    i8 106, label %130
    i8 107, label %130
    i8 108, label %130
    i8 109, label %130
    i8 110, label %130
    i8 111, label %130
    i8 112, label %130
    i8 113, label %130
    i8 114, label %130
    i8 115, label %130
    i8 116, label %130
    i8 117, label %130
    i8 118, label %130
    i8 119, label %130
    i8 120, label %130
    i8 121, label %130
    i8 122, label %130
    i8 65, label %130
    i8 66, label %130
    i8 67, label %130
    i8 68, label %130
    i8 69, label %130
    i8 70, label %130
    i8 71, label %130
    i8 72, label %130
    i8 73, label %130
    i8 74, label %130
    i8 75, label %130
    i8 76, label %130
    i8 77, label %130
    i8 78, label %130
    i8 79, label %130
    i8 80, label %130
    i8 81, label %130
    i8 82, label %130
    i8 83, label %130
    i8 84, label %130
    i8 85, label %130
    i8 86, label %130
    i8 87, label %130
    i8 88, label %130
    i8 89, label %130
    i8 90, label %130
    i8 95, label %130
  ], !dbg !1533

130:                                              ; preds = %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127, %127
  %131 = getelementptr inbounds i8, ptr %.lcssa23, i64 3, !dbg !1534
  call void @llvm.dbg.value(metadata ptr %131, metadata !1516, metadata !DIExpression()), !dbg !1535
  br label %132, !dbg !1536

132:                                              ; preds = %139, %130
  %133 = phi ptr [ %131, %130 ], [ %140, %139 ], !dbg !1535
  call void @llvm.dbg.value(metadata ptr %133, metadata !1516, metadata !DIExpression()), !dbg !1535
  %134 = load i8, ptr %133, align 1, !dbg !1537, !tbaa !1166
  %135 = zext i8 %134 to i32, !dbg !1537
  %136 = call i1 @c_isalnum(i32 noundef %135), !dbg !1538
  br i1 %136, label %139, label %137, !dbg !1539

137:                                              ; preds = %132
  %138 = load i8, ptr %133, align 1, !dbg !1540, !tbaa !1166
  switch i8 %138, label %.loopexit7 [
    i8 95, label %139
    i8 125, label %141
  ], !dbg !1536

139:                                              ; preds = %137, %132
  %140 = getelementptr inbounds i8, ptr %133, i64 1, !dbg !1541
  call void @llvm.dbg.value(metadata ptr %140, metadata !1516, metadata !DIExpression()), !dbg !1535
  br label %132, !dbg !1536, !llvm.loop !1542

141:                                              ; preds = %137
  %.lcssa35 = phi ptr [ %133, %137 ], !dbg !1535
  call void @llvm.dbg.value(metadata ptr %.lcssa35, metadata !1507, metadata !DIExpression()), !dbg !1509
  %142 = ptrtoint ptr %.lcssa35 to i64, !dbg !1544
  %143 = ptrtoint ptr %.lcssa23 to i64, !dbg !1544
  %144 = sub i64 %142, %143, !dbg !1544
  %145 = add nsw i64 %144, -2, !dbg !1545
  call void @llvm.dbg.value(metadata i64 %145, metadata !1508, metadata !DIExpression()), !dbg !1509
  %146 = load i64, ptr @vnlen, align 8, !dbg !1546, !tbaa !1354
  %147 = icmp slt i64 %145, %146, !dbg !1548
  %148 = load ptr, ptr @varname, align 8, !dbg !1549, !tbaa !1075
  br i1 %147, label %156, label %149, !dbg !1550

149:                                              ; preds = %141
  call void @free(ptr noundef %148) #41, !dbg !1551
  %150 = load i64, ptr @vnlen, align 8, !dbg !1553, !tbaa !1354
  %151 = xor i64 %150, -1, !dbg !1554
  %152 = add i64 %144, %151, !dbg !1554
  %153 = call nonnull ptr @xpalloc(ptr noundef null, ptr noundef nonnull @vnlen, i64 noundef %152, i64 noundef -1, i64 noundef 1) #41, !dbg !1555
  store ptr %153, ptr @varname, align 8, !dbg !1556, !tbaa !1075
  br label %156, !dbg !1557

.loopexit7:                                       ; preds = %137
  %.lcssa23.lcssa32 = phi ptr [ %.lcssa23, %137 ]
  br label %154, !dbg !1558

.loopexit9:                                       ; preds = %123, %127
  %.lcssa23.lcssa = phi ptr [ %.lcssa23, %123 ], [ %.lcssa23, %127 ]
  br label %154, !dbg !1558

154:                                              ; preds = %.loopexit9, %.loopexit7
  %.lcssa2333 = phi ptr [ %.lcssa23.lcssa, %.loopexit9 ], [ %.lcssa23.lcssa32, %.loopexit7 ]
  call void @llvm.dbg.value(metadata ptr null, metadata !1417, metadata !DIExpression()), !dbg !1560
  %155 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.102, i32 noundef 5) #41, !dbg !1558
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef 0, ptr noundef %155, ptr noundef nonnull %.lcssa2333) #41, !dbg !1558
  unreachable, !dbg !1558

156:                                              ; preds = %149, %141
  %157 = phi ptr [ %153, %149 ], [ %148, %141 ], !dbg !1549
  call void @llvm.dbg.value(metadata ptr %157, metadata !1561, metadata !DIExpression()), !dbg !1570
  call void @llvm.dbg.value(metadata ptr %128, metadata !1568, metadata !DIExpression()), !dbg !1570
  call void @llvm.dbg.value(metadata i64 %145, metadata !1569, metadata !DIExpression()), !dbg !1570
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %157, ptr noundef nonnull align 1 %128, i64 noundef %145, i1 noundef false) #41, !dbg !1572
  %158 = getelementptr inbounds i8, ptr %157, i64 %145, !dbg !1573
  store i8 0, ptr %158, align 1, !dbg !1574, !tbaa !1166
  call void @llvm.dbg.value(metadata ptr %157, metadata !1417, metadata !DIExpression()), !dbg !1560
  %159 = call ptr @getenv(ptr noundef nonnull %157) #41, !dbg !1575
  call void @llvm.dbg.value(metadata ptr %159, metadata !1420, metadata !DIExpression()), !dbg !1560
  %160 = icmp eq ptr %159, null, !dbg !1576
  br i1 %160, label %205, label %161, !dbg !1578

161:                                              ; preds = %156
  call fastcc void @check_start_new_arg(ptr noundef nonnull %10), !dbg !1579
  %162 = load i1, ptr @dev_debug, align 1, !dbg !1581
  br i1 %162, label %163, label %167, !dbg !1584

163:                                              ; preds = %161
  %164 = load ptr, ptr @stderr, align 8, !dbg !1581, !tbaa !1075
  %165 = call ptr @quote(ptr noundef nonnull %159) #41, !dbg !1581
  %166 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %164, i32 noundef 1, ptr noundef nonnull @.str.103, ptr noundef nonnull %157, ptr noundef %165) #41, !dbg !1581
  br label %167, !dbg !1581

167:                                              ; preds = %163, %161
  call void @llvm.dbg.value(metadata ptr %159, metadata !1420, metadata !DIExpression()), !dbg !1560
  %168 = load i8, ptr %159, align 1, !dbg !1585, !tbaa !1166
  %169 = icmp eq i8 %168, 0, !dbg !1588
  br i1 %169, label %210, label %170, !dbg !1588

170:                                              ; preds = %167
  %171 = load i32, ptr %17, align 8, !dbg !1589, !tbaa !1441
  br label %172, !dbg !1588

172:                                              ; preds = %191, %170
  %173 = phi i32 [ %199, %191 ], [ %171, %170 ], !dbg !1589
  %174 = phi i8 [ %203, %191 ], [ %168, %170 ]
  %175 = phi ptr [ %202, %191 ], [ %159, %170 ]
  call void @llvm.dbg.value(metadata ptr %175, metadata !1420, metadata !DIExpression()), !dbg !1560
  call void @llvm.dbg.value(metadata ptr %10, metadata !1595, metadata !DIExpression()), !dbg !1599
  call void @llvm.dbg.value(metadata i8 %174, metadata !1596, metadata !DIExpression()), !dbg !1599
  %176 = load ptr, ptr %10, align 8, !dbg !1600, !tbaa !1436
  %177 = sext i32 %173 to i64, !dbg !1601
  %178 = getelementptr inbounds ptr, ptr %176, i64 %177, !dbg !1601
  %179 = load ptr, ptr %178, align 8, !dbg !1601, !tbaa !1075
  %180 = ptrtoint ptr %179 to i64, !dbg !1602
  call void @llvm.dbg.value(metadata i64 %180, metadata !1597, metadata !DIExpression()), !dbg !1599
  %181 = load i64, ptr %18, align 8, !dbg !1603, !tbaa !1444
  %182 = shl i64 %181, 3, !dbg !1605
  %183 = icmp ugt i64 %182, %180, !dbg !1606
  br i1 %183, label %191, label %184, !dbg !1607

184:                                              ; preds = %172
  call void @llvm.dbg.value(metadata ptr %10, metadata !1608, metadata !DIExpression()), !dbg !1615
  call void @llvm.dbg.value(metadata i64 %181, metadata !1613, metadata !DIExpression()), !dbg !1615
  call void @llvm.dbg.value(metadata i64 %180, metadata !1614, metadata !DIExpression()), !dbg !1615
  %185 = call nonnull ptr @xpalloc(ptr noundef nonnull %176, ptr noundef nonnull %18, i64 noundef 1, i64 noundef 2147483647, i64 noundef 16) #41, !dbg !1617
  store ptr %185, ptr %10, align 8, !dbg !1618, !tbaa !1436, !DIAssignID !1619
  call void @llvm.dbg.assign(metadata ptr %185, metadata !1405, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1619, metadata ptr %10, metadata !DIExpression()), !dbg !1429
  %186 = load i64, ptr %18, align 8, !dbg !1620, !tbaa !1444
  %187 = getelementptr inbounds ptr, ptr %185, i64 %186, !dbg !1621
  %188 = getelementptr inbounds ptr, ptr %185, i64 %181, !dbg !1622
  call void @llvm.dbg.value(metadata ptr %187, metadata !1623, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata ptr %188, metadata !1628, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i64 %180, metadata !1629, metadata !DIExpression()), !dbg !1630
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %187, ptr noundef nonnull align 1 %188, i64 noundef %180, i1 noundef false) #41, !dbg !1632
  %189 = load ptr, ptr %10, align 8, !dbg !1633, !tbaa !1436
  %190 = load i64, ptr %18, align 8, !dbg !1634, !tbaa !1444
  br label %191, !dbg !1635

191:                                              ; preds = %184, %172
  %192 = phi i64 [ %190, %184 ], [ %181, %172 ], !dbg !1634
  %193 = phi ptr [ %189, %184 ], [ %176, %172 ], !dbg !1633
  %194 = getelementptr inbounds ptr, ptr %193, i64 %192, !dbg !1636
  %195 = getelementptr inbounds i8, ptr %194, i64 %180, !dbg !1637
  store i8 %174, ptr %195, align 1, !dbg !1638, !tbaa !1166
  %196 = add nsw i64 %180, 1, !dbg !1639
  %197 = inttoptr i64 %196 to ptr, !dbg !1640
  %198 = load ptr, ptr %10, align 8, !dbg !1641, !tbaa !1436
  %199 = load i32, ptr %17, align 8, !dbg !1642, !tbaa !1441
  %200 = sext i32 %199 to i64, !dbg !1643
  %201 = getelementptr inbounds ptr, ptr %198, i64 %200, !dbg !1643
  store ptr %197, ptr %201, align 8, !dbg !1644, !tbaa !1075
  %202 = getelementptr inbounds i8, ptr %175, i64 1, !dbg !1645
  call void @llvm.dbg.value(metadata ptr %202, metadata !1420, metadata !DIExpression()), !dbg !1560
  %203 = load i8, ptr %202, align 1, !dbg !1585, !tbaa !1166
  %204 = icmp eq i8 %203, 0, !dbg !1588
  br i1 %204, label %.loopexit6, label %172, !dbg !1588, !llvm.loop !1646

205:                                              ; preds = %156
  %206 = load i1, ptr @dev_debug, align 1, !dbg !1648
  br i1 %206, label %207, label %210, !dbg !1651

207:                                              ; preds = %205
  %208 = load ptr, ptr @stderr, align 8, !dbg !1648, !tbaa !1075
  %209 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %208, i32 noundef 1, ptr noundef nonnull @.str.104, ptr noundef nonnull %157) #41, !dbg !1648
  br label %210, !dbg !1648

.loopexit6:                                       ; preds = %191
  br label %210, !dbg !1652

210:                                              ; preds = %.loopexit6, %207, %205, %167
  %211 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.lcssa23, i32 noundef 125) #42, !dbg !1652
  %212 = getelementptr inbounds i8, ptr %211, i64 1, !dbg !1653
  call void @llvm.dbg.value(metadata ptr %212, metadata !1410, metadata !DIExpression()), !dbg !1429
  br label %76

213:                                              ; preds = %102, %102, %102, %102, %102, %101, %101
  br label %214, !dbg !1654

214:                                              ; preds = %213, %122, %116, %115, %114, %113, %103, %102, %101, %95, %91, %87, %83, %80
  %215 = phi ptr [ %81, %122 ], [ %99, %116 ], [ %99, %115 ], [ %99, %114 ], [ %99, %113 ], [ %81, %95 ], [ %81, %91 ], [ %81, %87 ], [ %81, %83 ], [ %81, %80 ], [ %81, %101 ], [ %99, %103 ], [ %99, %213 ], [ %99, %102 ]
  %216 = phi i8 [ 36, %122 ], [ 11, %116 ], [ 9, %115 ], [ 13, %114 ], [ 10, %113 ], [ 35, %95 ], [ %82, %91 ], [ 34, %87 ], [ 39, %83 ], [ %82, %80 ], [ 92, %101 ], [ 32, %103 ], [ %100, %213 ], [ 12, %102 ], !dbg !1481
  call void @llvm.dbg.value(metadata i8 %216, metadata !1415, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata ptr %215, metadata !1410, metadata !DIExpression()), !dbg !1429
  call fastcc void @check_start_new_arg(ptr noundef nonnull %10), !dbg !1654
  call void @llvm.dbg.value(metadata ptr %10, metadata !1595, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8 %216, metadata !1596, metadata !DIExpression()), !dbg !1655
  %217 = load ptr, ptr %10, align 8, !dbg !1657, !tbaa !1436
  %218 = load i32, ptr %17, align 8, !dbg !1658, !tbaa !1441
  %219 = sext i32 %218 to i64, !dbg !1659
  %220 = getelementptr inbounds ptr, ptr %217, i64 %219, !dbg !1659
  %221 = load ptr, ptr %220, align 8, !dbg !1659, !tbaa !1075
  %222 = ptrtoint ptr %221 to i64, !dbg !1660
  call void @llvm.dbg.value(metadata i64 %222, metadata !1597, metadata !DIExpression()), !dbg !1655
  %223 = load i64, ptr %18, align 8, !dbg !1661, !tbaa !1444
  %224 = shl i64 %223, 3, !dbg !1662
  %225 = icmp ugt i64 %224, %222, !dbg !1663
  br i1 %225, label %233, label %226, !dbg !1664

226:                                              ; preds = %214
  call void @llvm.dbg.value(metadata ptr %10, metadata !1608, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i64 %223, metadata !1613, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i64 %222, metadata !1614, metadata !DIExpression()), !dbg !1665
  %227 = call nonnull ptr @xpalloc(ptr noundef nonnull %217, ptr noundef nonnull %18, i64 noundef 1, i64 noundef 2147483647, i64 noundef 16) #41, !dbg !1667
  store ptr %227, ptr %10, align 8, !dbg !1668, !tbaa !1436, !DIAssignID !1669
  call void @llvm.dbg.assign(metadata ptr %227, metadata !1405, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1669, metadata ptr %10, metadata !DIExpression()), !dbg !1429
  %228 = load i64, ptr %18, align 8, !dbg !1670, !tbaa !1444
  %229 = getelementptr inbounds ptr, ptr %227, i64 %228, !dbg !1671
  %230 = getelementptr inbounds ptr, ptr %227, i64 %223, !dbg !1672
  call void @llvm.dbg.value(metadata ptr %229, metadata !1623, metadata !DIExpression()), !dbg !1673
  call void @llvm.dbg.value(metadata ptr %230, metadata !1628, metadata !DIExpression()), !dbg !1673
  call void @llvm.dbg.value(metadata i64 %222, metadata !1629, metadata !DIExpression()), !dbg !1673
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %229, ptr noundef nonnull align 1 %230, i64 noundef %222, i1 noundef false) #41, !dbg !1675
  %231 = load ptr, ptr %10, align 8, !dbg !1676, !tbaa !1436
  %232 = load i64, ptr %18, align 8, !dbg !1677, !tbaa !1444
  br label %233, !dbg !1678

233:                                              ; preds = %226, %214
  %234 = phi i64 [ %232, %226 ], [ %223, %214 ], !dbg !1677
  %235 = phi ptr [ %231, %226 ], [ %217, %214 ], !dbg !1676
  %236 = getelementptr inbounds ptr, ptr %235, i64 %234, !dbg !1679
  %237 = getelementptr inbounds i8, ptr %236, i64 %222, !dbg !1680
  store i8 %216, ptr %237, align 1, !dbg !1681, !tbaa !1166
  %238 = add nsw i64 %222, 1, !dbg !1682
  %239 = inttoptr i64 %238 to ptr, !dbg !1683
  %240 = load ptr, ptr %10, align 8, !dbg !1684, !tbaa !1436
  %241 = load i32, ptr %17, align 8, !dbg !1685, !tbaa !1441
  %242 = sext i32 %241 to i64, !dbg !1686
  %243 = getelementptr inbounds ptr, ptr %240, i64 %242, !dbg !1686
  store ptr %239, ptr %243, align 8, !dbg !1687, !tbaa !1075
  %244 = getelementptr inbounds i8, ptr %215, i64 1, !dbg !1688
  call void @llvm.dbg.value(metadata ptr %244, metadata !1410, metadata !DIExpression()), !dbg !1429
  br label %80, !dbg !1492

245:                                              ; preds = %80
  %.lcssa47 = phi i1 [ %74, %80 ]
  %.lcssa36 = phi i1 [ %78, %80 ]
  %246 = select i1 %.lcssa47, i1 true, i1 %.lcssa36, !dbg !1689
  br i1 %246, label %247, label %249, !dbg !1689

247:                                              ; preds = %245
  %248 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.105, i32 noundef 5) #41, !dbg !1691
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef 0, ptr noundef %248) #41, !dbg !1691
  unreachable, !dbg !1691

.loopexit8:                                       ; preds = %95
  br label %249, !dbg !1692

249:                                              ; preds = %.loopexit8, %245, %110
  call void @llvm.dbg.label(metadata !1421), !dbg !1694
  call void @llvm.dbg.value(metadata ptr %10, metadata !1595, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i8 0, metadata !1596, metadata !DIExpression()), !dbg !1695
  %250 = load ptr, ptr %10, align 8, !dbg !1692, !tbaa !1436
  %251 = load i32, ptr %17, align 8, !dbg !1696, !tbaa !1441
  %252 = sext i32 %251 to i64, !dbg !1697
  %253 = getelementptr inbounds ptr, ptr %250, i64 %252, !dbg !1697
  %254 = load ptr, ptr %253, align 8, !dbg !1697, !tbaa !1075
  %255 = ptrtoint ptr %254 to i64, !dbg !1698
  call void @llvm.dbg.value(metadata i64 %255, metadata !1597, metadata !DIExpression()), !dbg !1695
  %256 = load i64, ptr %18, align 8, !dbg !1699, !tbaa !1444
  %257 = shl i64 %256, 3, !dbg !1700
  %258 = icmp ugt i64 %257, %255, !dbg !1701
  br i1 %258, label %266, label %259, !dbg !1702

259:                                              ; preds = %249
  call void @llvm.dbg.value(metadata ptr %10, metadata !1608, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i64 %256, metadata !1613, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i64 %255, metadata !1614, metadata !DIExpression()), !dbg !1703
  %260 = call nonnull ptr @xpalloc(ptr noundef nonnull %250, ptr noundef nonnull %18, i64 noundef 1, i64 noundef 2147483647, i64 noundef 16) #41, !dbg !1705
  store ptr %260, ptr %10, align 8, !dbg !1706, !tbaa !1436, !DIAssignID !1707
  call void @llvm.dbg.assign(metadata ptr %260, metadata !1405, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1707, metadata ptr %10, metadata !DIExpression()), !dbg !1429
  %261 = load i64, ptr %18, align 8, !dbg !1708, !tbaa !1444
  %262 = getelementptr inbounds ptr, ptr %260, i64 %261, !dbg !1709
  %263 = getelementptr inbounds ptr, ptr %260, i64 %256, !dbg !1710
  call void @llvm.dbg.value(metadata ptr %262, metadata !1623, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.value(metadata ptr %263, metadata !1628, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.value(metadata i64 %255, metadata !1629, metadata !DIExpression()), !dbg !1711
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %262, ptr noundef nonnull align 1 %263, i64 noundef %255, i1 noundef false) #41, !dbg !1713
  %264 = load ptr, ptr %10, align 8, !dbg !1714, !tbaa !1436
  %265 = load i64, ptr %18, align 8, !dbg !1715, !tbaa !1444
  br label %266, !dbg !1716

266:                                              ; preds = %259, %249
  %267 = phi i64 [ %265, %259 ], [ %256, %249 ], !dbg !1715
  %268 = phi ptr [ %264, %259 ], [ %250, %249 ], !dbg !1714
  %269 = getelementptr inbounds ptr, ptr %268, i64 %267, !dbg !1717
  %270 = getelementptr inbounds i8, ptr %269, i64 %255, !dbg !1718
  store i8 0, ptr %270, align 1, !dbg !1719, !tbaa !1166
  %271 = add nsw i64 %255, 1, !dbg !1720
  %272 = inttoptr i64 %271 to ptr, !dbg !1721
  %273 = load ptr, ptr %10, align 8, !dbg !1722, !tbaa !1436
  %274 = load i32, ptr %17, align 8, !dbg !1723, !tbaa !1441
  %275 = sext i32 %274 to i64, !dbg !1724
  %276 = getelementptr inbounds ptr, ptr %273, i64 %275, !dbg !1724
  store ptr %272, ptr %276, align 8, !dbg !1725, !tbaa !1075
  call void @llvm.dbg.value(metadata i32 %274, metadata !1395, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata ptr %10, metadata !1726, metadata !DIExpression()), !dbg !1736
  call void @llvm.dbg.value(metadata i32 %274, metadata !1731, metadata !DIExpression()), !dbg !1736
  %277 = load ptr, ptr %10, align 8, !dbg !1738, !tbaa !1436
  call void @llvm.dbg.value(metadata ptr %277, metadata !1732, metadata !DIExpression()), !dbg !1736
  %278 = load i64, ptr %18, align 8, !dbg !1739, !tbaa !1444
  %279 = getelementptr inbounds ptr, ptr %277, i64 %278, !dbg !1740
  call void @llvm.dbg.value(metadata ptr %279, metadata !1733, metadata !DIExpression()), !dbg !1736
  call void @llvm.dbg.value(metadata i32 1, metadata !1734, metadata !DIExpression()), !dbg !1741
  %280 = icmp sgt i32 %274, 1, !dbg !1742
  br i1 %280, label %283, label %281, !dbg !1744

281:                                              ; preds = %266
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #41, !dbg !1745
  call void @llvm.dbg.value(metadata ptr %277, metadata !1396, metadata !DIExpression()), !dbg !1401
  %282 = load ptr, ptr %23, align 8, !dbg !1746, !tbaa !1075
  store ptr %282, ptr %277, align 8, !dbg !1747, !tbaa !1075
  br label %349, !dbg !1748

283:                                              ; preds = %266
  %284 = zext nneg i32 %274 to i64, !dbg !1742
  %285 = add nsw i64 %284, -1, !dbg !1744
  %286 = icmp ult i32 %274, 5, !dbg !1744
  br i1 %286, label %305, label %287, !dbg !1744

287:                                              ; preds = %283
  %288 = and i64 %285, -4, !dbg !1744
  %289 = or disjoint i64 %288, 1, !dbg !1744
  br label %290, !dbg !1744

290:                                              ; preds = %290, %287
  %291 = phi i64 [ 0, %287 ], [ %301, %290 ]
  %292 = or disjoint i64 %291, 1, !dbg !1744
  %293 = getelementptr inbounds ptr, ptr %277, i64 %292, !dbg !1749
  %294 = getelementptr inbounds ptr, ptr %293, i64 2, !dbg !1749
  %295 = load <2 x ptr>, ptr %293, align 8, !dbg !1749, !tbaa !1075
  %296 = load <2 x ptr>, ptr %294, align 8, !dbg !1749, !tbaa !1075
  %297 = ptrtoint <2 x ptr> %295 to <2 x i64>, !dbg !1750
  %298 = ptrtoint <2 x ptr> %296 to <2 x i64>, !dbg !1750
  %299 = getelementptr inbounds i8, ptr %279, <2 x i64> %297, !dbg !1750
  %300 = getelementptr inbounds i8, ptr %279, <2 x i64> %298, !dbg !1750
  store <2 x ptr> %299, ptr %293, align 8, !dbg !1751, !tbaa !1075
  store <2 x ptr> %300, ptr %294, align 8, !dbg !1751, !tbaa !1075
  %301 = add nuw i64 %291, 4
  %302 = icmp eq i64 %301, %288
  br i1 %302, label %303, label %290, !llvm.loop !1752

303:                                              ; preds = %290
  %304 = icmp eq i64 %285, %288, !dbg !1744
  br i1 %304, label %315, label %305, !dbg !1744

305:                                              ; preds = %283, %303
  %306 = phi i64 [ 1, %283 ], [ %289, %303 ]
  br label %307, !dbg !1744

307:                                              ; preds = %305, %307
  %308 = phi i64 [ %313, %307 ], [ %306, %305 ]
  call void @llvm.dbg.value(metadata i64 %308, metadata !1734, metadata !DIExpression()), !dbg !1741
  %309 = getelementptr inbounds ptr, ptr %277, i64 %308, !dbg !1749
  %310 = load ptr, ptr %309, align 8, !dbg !1749, !tbaa !1075
  %311 = ptrtoint ptr %310 to i64, !dbg !1750
  %312 = getelementptr inbounds i8, ptr %279, i64 %311, !dbg !1756
  store ptr %312, ptr %309, align 8, !dbg !1751, !tbaa !1075
  %313 = add nuw nsw i64 %308, 1, !dbg !1757
  call void @llvm.dbg.value(metadata i64 %313, metadata !1734, metadata !DIExpression()), !dbg !1741
  %314 = icmp eq i64 %313, %284, !dbg !1742
  br i1 %314, label %.loopexit11, label %307, !dbg !1744, !llvm.loop !1758

.loopexit11:                                      ; preds = %307
  br label %315, !dbg !1745

315:                                              ; preds = %.loopexit11, %303
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #41, !dbg !1745
  call void @llvm.dbg.value(metadata ptr %277, metadata !1396, metadata !DIExpression()), !dbg !1401
  %316 = load ptr, ptr %23, align 8, !dbg !1746, !tbaa !1075
  store ptr %316, ptr %277, align 8, !dbg !1747, !tbaa !1075
  %317 = load i1, ptr @dev_debug, align 1, !dbg !1759
  br i1 %317, label %318, label %349, !dbg !1748

318:                                              ; preds = %315
  %319 = load ptr, ptr @stderr, align 8, !dbg !1760, !tbaa !1075
  %320 = call ptr @quote(ptr noundef %65) #41, !dbg !1760
  %321 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %319, i32 noundef 1, ptr noundef nonnull @.str.96, ptr noundef %320) #41, !dbg !1760
  %322 = load i1, ptr @dev_debug, align 1, !dbg !1763
  br i1 %322, label %323, label %329, !dbg !1766

323:                                              ; preds = %318
  %324 = load ptr, ptr @stderr, align 8, !dbg !1763, !tbaa !1075
  %325 = getelementptr inbounds ptr, ptr %277, i64 1, !dbg !1763
  %326 = load ptr, ptr %325, align 8, !dbg !1763, !tbaa !1075
  %327 = call ptr @quote(ptr noundef %326) #41, !dbg !1763
  %328 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %324, i32 noundef 1, ptr noundef nonnull @.str.97, ptr noundef %327) #41, !dbg !1763
  br label %329, !dbg !1763

329:                                              ; preds = %323, %318
  call void @llvm.dbg.value(metadata i32 2, metadata !1397, metadata !DIExpression()), !dbg !1767
  %330 = icmp eq i32 %274, 2, !dbg !1768
  br i1 %330, label %349, label %331, !dbg !1770

331:                                              ; preds = %329
  %332 = call i32 @llvm.smax.i32(i32 %274, i32 3), !dbg !1770
  %333 = zext nneg i32 %332 to i64, !dbg !1768
  %334 = load i1, ptr @dev_debug, align 1, !dbg !1771
  br label %335, !dbg !1770

335:                                              ; preds = %345, %331
  %336 = phi i1 [ %334, %331 ], [ %346, %345 ], !dbg !1771
  %337 = phi i64 [ 2, %331 ], [ %347, %345 ]
  call void @llvm.dbg.value(metadata i64 %337, metadata !1397, metadata !DIExpression()), !dbg !1767
  br i1 %336, label %338, label %345, !dbg !1774

338:                                              ; preds = %335
  %339 = load ptr, ptr @stderr, align 8, !dbg !1771, !tbaa !1075
  %340 = getelementptr inbounds ptr, ptr %277, i64 %337, !dbg !1771
  %341 = load ptr, ptr %340, align 8, !dbg !1771, !tbaa !1075
  %342 = call ptr @quote(ptr noundef %341) #41, !dbg !1771
  %343 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %339, i32 noundef 1, ptr noundef nonnull @.str.98, ptr noundef %342) #41, !dbg !1771
  %344 = load i1, ptr @dev_debug, align 1, !dbg !1771
  br label %345, !dbg !1771

345:                                              ; preds = %338, %335
  %346 = phi i1 [ false, %335 ], [ %344, %338 ]
  %347 = add nuw nsw i64 %337, 1, !dbg !1775
  call void @llvm.dbg.value(metadata i64 %347, metadata !1397, metadata !DIExpression()), !dbg !1767
  %348 = icmp eq i64 %347, %333, !dbg !1768
  br i1 %348, label %.loopexit10, label %335, !dbg !1770, !llvm.loop !1776

.loopexit10:                                      ; preds = %345
  br label %349, !dbg !1778

349:                                              ; preds = %.loopexit10, %281, %315, %329
  %350 = getelementptr inbounds ptr, ptr %277, i64 %275, !dbg !1778
  %351 = load i32, ptr @optind, align 4, !dbg !1779, !tbaa !1157
  %352 = sext i32 %351 to i64, !dbg !1780
  %353 = getelementptr inbounds ptr, ptr %23, i64 %352, !dbg !1780
  %354 = add nsw i32 %67, 1, !dbg !1781
  %355 = sext i32 %354 to i64, !dbg !1782
  %356 = shl nsw i64 %355, 3, !dbg !1783
  call void @llvm.dbg.value(metadata ptr %350, metadata !1561, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata ptr %353, metadata !1568, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i64 %356, metadata !1569, metadata !DIExpression()), !dbg !1784
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %350, ptr noundef nonnull align 1 %353, i64 noundef %356, i1 noundef false) #41, !dbg !1786
  %357 = add nsw i32 %274, %67, !dbg !1787
  tail call void @llvm.dbg.value(metadata i32 %357, metadata !228, metadata !DIExpression()), !dbg !1312
  tail call void @llvm.dbg.value(metadata ptr %277, metadata !229, metadata !DIExpression()), !dbg !1312
  store i32 0, ptr @optind, align 4, !dbg !1788, !tbaa !1157
  br label %29, !dbg !1789

358:                                              ; preds = %21, %21, %21, %21, %21, %21
  %.lcssa56 = phi i32 [ %28, %21 ], [ %28, %21 ], [ %28, %21 ], [ %28, %21 ], [ %28, %21 ], [ %28, %21 ], !dbg !1339
  %359 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #41, !dbg !1790
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %359, i32 noundef %.lcssa56) #41, !dbg !1790
  %360 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 5) #41, !dbg !1791
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %360) #41, !dbg !1791
  call void @usage(i32 noundef 125) #47, !dbg !1792
  unreachable, !dbg !1792

361:                                              ; preds = %21
  call void @usage(i32 noundef 0) #47, !dbg !1793
  unreachable, !dbg !1793

362:                                              ; preds = %21
  %363 = load ptr, ptr @stdout, align 8, !dbg !1794, !tbaa !1075
  %364 = load ptr, ptr @Version, align 8, !dbg !1794, !tbaa !1075
  %365 = call ptr @proper_name_lite(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.25) #41, !dbg !1794
  %366 = call ptr @proper_name_lite(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.26) #41, !dbg !1794
  %367 = call ptr @proper_name_lite(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.27) #41, !dbg !1794
  call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %363, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.24, ptr noundef %364, ptr noundef %365, ptr noundef %366, ptr noundef %367, ptr noundef null) #41, !dbg !1794
  call void @exit(i32 noundef 0) #43, !dbg !1794
  unreachable, !dbg !1794

368:                                              ; preds = %21
  call void @usage(i32 noundef 125) #47, !dbg !1795
  unreachable, !dbg !1795

369:                                              ; preds = %21
  %.lcssa121 = phi i32 [ %22, %21 ]
  %.lcssa110 = phi ptr [ %23, %21 ]
  %.lcssa99 = phi ptr [ %24, %21 ], !dbg !1337
  %.lcssa88 = phi ptr [ %25, %21 ], !dbg !1338
  %.lcssa77 = phi i1 [ %26, %21 ]
  %.lcssa66 = phi i1 [ %27, %21 ]
  %370 = load i32, ptr @optind, align 4, !dbg !1796, !tbaa !1157
  %371 = icmp slt i32 %370, %.lcssa121, !dbg !1798
  br i1 %371, label %372, label %380, !dbg !1799

372:                                              ; preds = %369
  %373 = sext i32 %370 to i64, !dbg !1800
  %374 = getelementptr inbounds ptr, ptr %.lcssa110, i64 %373, !dbg !1800
  %375 = load ptr, ptr %374, align 8, !dbg !1800, !tbaa !1075
  call void @llvm.dbg.value(metadata ptr %375, metadata !1168, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata ptr @.str.28, metadata !1174, metadata !DIExpression()), !dbg !1801
  %376 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %375, ptr noundef nonnull dereferenceable(2) @.str.28) #42, !dbg !1803
  %377 = icmp eq i32 %376, 0, !dbg !1804
  br i1 %377, label %378, label %380, !dbg !1805

378:                                              ; preds = %372
  tail call void @llvm.dbg.value(metadata i8 1, metadata !230, metadata !DIExpression()), !dbg !1312
  %379 = add nsw i32 %370, 1, !dbg !1806
  store i32 %379, ptr @optind, align 4, !dbg !1806, !tbaa !1157
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !230, metadata !DIExpression()), !dbg !1312
  br label %381, !dbg !1808

380:                                              ; preds = %372, %369
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !230, metadata !DIExpression()), !dbg !1312
  br i1 %.lcssa66, label %381, label %387, !dbg !1808

381:                                              ; preds = %378, %380
  %382 = load i1, ptr @dev_debug, align 1, !dbg !1809
  br i1 %382, label %383, label %386, !dbg !1814

383:                                              ; preds = %381
  %384 = load ptr, ptr @stderr, align 8, !dbg !1809, !tbaa !1075
  %385 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %384, i32 noundef 1, ptr noundef nonnull @.str.29) #41, !dbg !1809
  br label %386, !dbg !1809

386:                                              ; preds = %383, %381
  store ptr @main.dummy_environ, ptr @environ, align 8, !dbg !1815, !tbaa !1075
  br label %417, !dbg !1816

387:                                              ; preds = %380
  call void @llvm.dbg.value(metadata i64 0, metadata !1817, metadata !DIExpression()), !dbg !1821
  %388 = load i64, ptr @usvars_used, align 8, !dbg !1823, !tbaa !1354
  %389 = icmp sgt i64 %388, 0, !dbg !1825
  br i1 %389, label %.preheader4, label %417, !dbg !1826

.preheader4:                                      ; preds = %387
  br label %390, !dbg !1826

390:                                              ; preds = %.preheader4, %413
  %391 = phi i64 [ %414, %413 ], [ 0, %.preheader4 ]
  call void @llvm.dbg.value(metadata i64 %391, metadata !1817, metadata !DIExpression()), !dbg !1821
  %392 = load i1, ptr @dev_debug, align 1, !dbg !1827
  br i1 %392, label %393, label %399, !dbg !1831

393:                                              ; preds = %390
  %394 = load ptr, ptr @stderr, align 8, !dbg !1827, !tbaa !1075
  %395 = load ptr, ptr @usvars, align 8, !dbg !1827, !tbaa !1075
  %396 = getelementptr inbounds ptr, ptr %395, i64 %391, !dbg !1827
  %397 = load ptr, ptr %396, align 8, !dbg !1827, !tbaa !1075
  %398 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %394, i32 noundef 1, ptr noundef nonnull @.str.106, ptr noundef %397) #41, !dbg !1827
  br label %399, !dbg !1827

399:                                              ; preds = %393, %390
  %400 = load ptr, ptr @usvars, align 8, !dbg !1832, !tbaa !1075
  %401 = getelementptr inbounds ptr, ptr %400, i64 %391, !dbg !1832
  %402 = load ptr, ptr %401, align 8, !dbg !1832, !tbaa !1075
  %403 = call i32 @unsetenv(ptr noundef %402) #41, !dbg !1834
  %404 = icmp eq i32 %403, 0, !dbg !1834
  br i1 %404, label %413, label %405, !dbg !1835

405:                                              ; preds = %399
  %.lcssa16 = phi i64 [ %391, %399 ]
  %406 = tail call ptr @__errno_location() #44, !dbg !1836
  %407 = load i32, ptr %406, align 4, !dbg !1836, !tbaa !1157
  %408 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.107, i32 noundef 5) #41, !dbg !1836
  %409 = load ptr, ptr @usvars, align 8, !dbg !1836, !tbaa !1075
  %410 = getelementptr inbounds ptr, ptr %409, i64 %.lcssa16, !dbg !1836
  %411 = load ptr, ptr %410, align 8, !dbg !1836, !tbaa !1075
  %412 = call ptr @quote(ptr noundef %411) #41, !dbg !1836
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef %407, ptr noundef %408, ptr noundef %412) #41, !dbg !1836
  unreachable, !dbg !1836

413:                                              ; preds = %399
  %414 = add nuw nsw i64 %391, 1, !dbg !1837
  call void @llvm.dbg.value(metadata i64 %414, metadata !1817, metadata !DIExpression()), !dbg !1821
  %415 = load i64, ptr @usvars_used, align 8, !dbg !1823, !tbaa !1354
  %416 = icmp slt i64 %414, %415, !dbg !1825
  br i1 %416, label %390, label %.loopexit5, !dbg !1826, !llvm.loop !1838

.loopexit5:                                       ; preds = %413
  br label %417, !dbg !1840

417:                                              ; preds = %.loopexit5, %387, %386
  %418 = load i32, ptr @optind, align 4, !dbg !1840, !tbaa !1157
  %419 = icmp slt i32 %418, %.lcssa121, !dbg !1841
  br i1 %419, label %.preheader2, label %456, !dbg !1842

.preheader2:                                      ; preds = %417
  br label %420, !dbg !1843

420:                                              ; preds = %.preheader2, %449
  %421 = phi i32 [ %451, %449 ], [ %418, %.preheader2 ]
  %422 = sext i32 %421 to i64, !dbg !1844
  %423 = getelementptr inbounds ptr, ptr %.lcssa110, i64 %422, !dbg !1844
  %424 = load ptr, ptr %423, align 8, !dbg !1844, !tbaa !1075
  %425 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %424, i32 noundef 61) #42, !dbg !1845
  tail call void @llvm.dbg.value(metadata ptr %425, metadata !236, metadata !DIExpression()), !dbg !1312
  %426 = icmp eq ptr %425, null, !dbg !1842
  br i1 %426, label %453, label %427, !dbg !1843

427:                                              ; preds = %420
  %428 = load i1, ptr @dev_debug, align 1, !dbg !1846
  br i1 %428, label %429, label %436, !dbg !1850

429:                                              ; preds = %427
  %430 = load ptr, ptr @stderr, align 8, !dbg !1846, !tbaa !1075
  %431 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %430, i32 noundef 1, ptr noundef nonnull @.str.30, ptr noundef %424) #41, !dbg !1846
  %432 = load i32, ptr @optind, align 4, !dbg !1851, !tbaa !1157
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds ptr, ptr %.lcssa110, i64 %433
  %435 = load ptr, ptr %434, align 8, !dbg !1853, !tbaa !1075
  br label %436, !dbg !1846

436:                                              ; preds = %429, %427
  %437 = phi ptr [ %435, %429 ], [ %424, %427 ], !dbg !1853
  %438 = call i32 @putenv(ptr noundef %437) #41, !dbg !1854
  %439 = icmp eq i32 %438, 0, !dbg !1854
  br i1 %439, label %449, label %440, !dbg !1855

440:                                              ; preds = %436
  %.lcssa14 = phi ptr [ %425, %436 ], !dbg !1845
  store i8 0, ptr %.lcssa14, align 1, !dbg !1856, !tbaa !1166
  %441 = tail call ptr @__errno_location() #44, !dbg !1858
  %442 = load i32, ptr %441, align 4, !dbg !1858, !tbaa !1157
  %443 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.31, i32 noundef 5) #41, !dbg !1858
  %444 = load i32, ptr @optind, align 4, !dbg !1858, !tbaa !1157
  %445 = sext i32 %444 to i64, !dbg !1858
  %446 = getelementptr inbounds ptr, ptr %.lcssa110, i64 %445, !dbg !1858
  %447 = load ptr, ptr %446, align 8, !dbg !1858, !tbaa !1075
  %448 = call ptr @quote(ptr noundef %447) #41, !dbg !1858
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef %442, ptr noundef %443, ptr noundef %448) #41, !dbg !1858
  unreachable, !dbg !1858

449:                                              ; preds = %436
  %450 = load i32, ptr @optind, align 4, !dbg !1859, !tbaa !1157
  %451 = add nsw i32 %450, 1, !dbg !1859
  store i32 %451, ptr @optind, align 4, !dbg !1859, !tbaa !1157
  %452 = icmp slt i32 %451, %.lcssa121, !dbg !1841
  br i1 %452, label %420, label %.loopexit3, !dbg !1842, !llvm.loop !1860

453:                                              ; preds = %420
  tail call void @llvm.dbg.value(metadata i1 undef, metadata !237, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1312
  br i1 %.lcssa77, label %454, label %477, !dbg !1862

454:                                              ; preds = %453
  %455 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.32, i32 noundef 5) #41, !dbg !1864
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %455) #41, !dbg !1864
  call void @usage(i32 noundef 125) #47, !dbg !1866
  unreachable, !dbg !1866

.loopexit3:                                       ; preds = %449
  br label %456, !dbg !1867

456:                                              ; preds = %.loopexit3, %417
  tail call void @llvm.dbg.value(metadata i1 undef, metadata !237, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1312
  %457 = icmp eq ptr %.lcssa88, null, !dbg !1867
  br i1 %457, label %460, label %458, !dbg !1869

458:                                              ; preds = %456
  %459 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.33, i32 noundef 5) #41, !dbg !1870
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %459) #41, !dbg !1870
  call void @usage(i32 noundef 125) #47, !dbg !1872
  unreachable, !dbg !1872

460:                                              ; preds = %456
  %461 = icmp eq ptr %.lcssa99, null, !dbg !1873
  br i1 %461, label %464, label %462, !dbg !1875

462:                                              ; preds = %460
  %463 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.34, i32 noundef 5) #41, !dbg !1876
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %463) #41, !dbg !1876
  call void @usage(i32 noundef 125) #47, !dbg !1878
  unreachable, !dbg !1878

464:                                              ; preds = %460
  %465 = load ptr, ptr @environ, align 8, !dbg !1879, !tbaa !1075
  tail call void @llvm.dbg.value(metadata ptr %465, metadata !238, metadata !DIExpression()), !dbg !1880
  %466 = load ptr, ptr %465, align 8, !dbg !1881, !tbaa !1075
  %467 = icmp eq ptr %466, null, !dbg !1882
  br i1 %467, label %690, label %468, !dbg !1882

468:                                              ; preds = %464
  %469 = select i1 %.lcssa77, i32 0, i32 10
  br label %470, !dbg !1882

470:                                              ; preds = %468, %470
  %471 = phi ptr [ %466, %468 ], [ %475, %470 ]
  %472 = phi ptr [ %465, %468 ], [ %473, %470 ]
  tail call void @llvm.dbg.value(metadata ptr %472, metadata !238, metadata !DIExpression()), !dbg !1880
  %473 = getelementptr inbounds ptr, ptr %472, i64 1, !dbg !1883
  tail call void @llvm.dbg.value(metadata ptr %473, metadata !238, metadata !DIExpression()), !dbg !1880
  %474 = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.35, ptr noundef nonnull %471, i32 noundef %469) #41, !dbg !1883
  %475 = load ptr, ptr %473, align 8, !dbg !1881, !tbaa !1075
  %476 = icmp eq ptr %475, null, !dbg !1882
  br i1 %476, label %.loopexit, label %470, !dbg !1882, !llvm.loop !1884

477:                                              ; preds = %453
  %478 = icmp eq ptr %.lcssa88, null, !dbg !1867
  %479 = icmp eq ptr %.lcssa99, null, !dbg !1873
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1885, metadata !DIExpression(), metadata !1309, metadata ptr %8, metadata !DIExpression()), !dbg !1986
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1895, metadata !DIExpression(), metadata !1310, metadata ptr %9, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata i32 1, metadata !1891, metadata !DIExpression()), !dbg !1989
  br label %480, !dbg !1990

480:                                              ; preds = %524, %477
  %481 = phi i64 [ 1, %477 ], [ %525, %524 ]
  call void @llvm.dbg.value(metadata i64 %481, metadata !1891, metadata !DIExpression()), !dbg !1989
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %8) #41, !dbg !1991
  %482 = load ptr, ptr @signals, align 8, !dbg !1992, !tbaa !1075
  %483 = getelementptr inbounds i32, ptr %482, i64 %481, !dbg !1992
  %484 = load i32, ptr %483, align 4, !dbg !1992, !tbaa !1157
  switch i32 %484, label %485 [
    i32 0, label %524
    i32 2, label %486
    i32 4, label %486
  ], !dbg !1994

485:                                              ; preds = %480
  br label %486, !dbg !1995

486:                                              ; preds = %485, %480, %480
  %487 = phi i1 [ false, %485 ], [ true, %480 ], [ true, %480 ]
  call void @llvm.dbg.value(metadata i1 %487, metadata !1892, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1986
  %488 = add i32 %484, -1, !dbg !1996
  %489 = icmp ult i32 %488, 2, !dbg !1996
  call void @llvm.dbg.value(metadata i1 %489, metadata !1893, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1986
  %490 = trunc i64 %481 to i32, !dbg !1997
  %491 = call i32 @sigaction(i32 noundef %490, ptr noundef null, ptr noundef nonnull %8) #41, !dbg !1997
  call void @llvm.dbg.value(metadata i32 %491, metadata !1894, metadata !DIExpression()), !dbg !1986
  %492 = icmp eq i32 %491, 0, !dbg !1998
  %493 = or i1 %487, %492, !dbg !2000
  br i1 %493, label %498, label %494, !dbg !2000

494:                                              ; preds = %486
  %.lcssa = phi i32 [ %490, %486 ], !dbg !1997
  %495 = tail call ptr @__errno_location() #44, !dbg !2001
  %496 = load i32, ptr %495, align 4, !dbg !2001, !tbaa !1157
  %497 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.108, i32 noundef 5) #41, !dbg !2001
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef %496, ptr noundef %497, i32 noundef %.lcssa) #41, !dbg !2001
  unreachable, !dbg !2001

498:                                              ; preds = %486
  br i1 %492, label %499, label %509, !dbg !2002

499:                                              ; preds = %498
  %500 = select i1 %489, ptr null, ptr inttoptr (i64 1 to ptr), !dbg !2003
  store ptr %500, ptr %8, align 8, !dbg !2006, !tbaa !1166, !DIAssignID !2007
  call void @llvm.dbg.assign(metadata ptr %500, metadata !1885, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !2007, metadata ptr %8, metadata !DIExpression()), !dbg !1986
  %501 = call i32 @sigaction(i32 noundef %490, ptr noundef nonnull %8, ptr noundef null) #41, !dbg !2008
  call void @llvm.dbg.value(metadata i32 %501, metadata !1894, metadata !DIExpression()), !dbg !1986
  %502 = icmp eq i32 %501, 0, !dbg !2009
  %503 = or i1 %487, %502, !dbg !2011
  %504 = select i1 %502, ptr @.str.19, ptr @.str.114, !dbg !2011
  br i1 %503, label %509, label %505, !dbg !2011

505:                                              ; preds = %499
  %.lcssa12 = phi i32 [ %490, %499 ], !dbg !1997
  %506 = tail call ptr @__errno_location() #44, !dbg !2012
  %507 = load i32, ptr %506, align 4, !dbg !2012, !tbaa !1157
  %508 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.109, i32 noundef 5) #41, !dbg !2012
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef %507, ptr noundef %508, i32 noundef %.lcssa12) #41, !dbg !2012
  unreachable, !dbg !2012

509:                                              ; preds = %499, %498
  %510 = phi ptr [ @.str.114, %498 ], [ %504, %499 ], !dbg !1986
  call void @llvm.dbg.value(metadata i1 poison, metadata !1894, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1986
  %511 = load i1, ptr @dev_debug, align 1, !dbg !2013
  br i1 %511, label %512, label %524, !dbg !2014

512:                                              ; preds = %509
  call void @llvm.lifetime.start.p0(i64 19, ptr nonnull %9) #41, !dbg !2015
  %513 = call i32 @sig2str(i32 noundef %490, ptr noundef nonnull %9) #41, !dbg !2016
  %514 = icmp eq i32 %513, 0, !dbg !2018
  br i1 %514, label %517, label %515, !dbg !2019

515:                                              ; preds = %512
  %516 = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %9, i64 noundef 19, i32 noundef 1, i64 noundef 19, ptr noundef nonnull @.str.110, i32 noundef %490) #41, !dbg !2020
  br label %517, !dbg !2020

517:                                              ; preds = %515, %512
  %518 = load i1, ptr @dev_debug, align 1, !dbg !2021
  br i1 %518, label %519, label %523, !dbg !2024

519:                                              ; preds = %517
  %520 = load ptr, ptr @stderr, align 8, !dbg !2021, !tbaa !1075
  %521 = select i1 %489, ptr @.str.112, ptr @.str.113, !dbg !2021
  %522 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %520, i32 noundef 1, ptr noundef nonnull @.str.111, ptr noundef nonnull %9, i32 noundef %490, ptr noundef nonnull %521, ptr noundef nonnull %510) #41, !dbg !2021
  br label %523, !dbg !2021

523:                                              ; preds = %519, %517
  call void @llvm.lifetime.end.p0(i64 19, ptr nonnull %9) #41, !dbg !2025
  br label %524, !dbg !2026

524:                                              ; preds = %523, %509, %480
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %8) #41, !dbg !2027
  %525 = add nuw nsw i64 %481, 1, !dbg !2028
  call void @llvm.dbg.value(metadata i64 %525, metadata !1891, metadata !DIExpression()), !dbg !1989
  %526 = icmp eq i64 %525, 65, !dbg !2029
  br i1 %526, label %527, label %480, !dbg !1990, !llvm.loop !2030

527:                                              ; preds = %524
  %528 = load i1, ptr @sig_mask_changed, align 1, !dbg !2032
  br i1 %528, label %529, label %573, !dbg !2034

529:                                              ; preds = %527
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2035, metadata !DIExpression(), metadata !1307, metadata ptr %6, metadata !DIExpression()), !dbg !2046
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2043, metadata !DIExpression(), metadata !1308, metadata ptr %7, metadata !DIExpression()), !dbg !2048
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6) #41, !dbg !2049
  %530 = call i32 @sigemptyset(ptr noundef nonnull %6) #41, !dbg !2050
  %531 = call i32 @sigprocmask(i32 noundef 0, ptr noundef null, ptr noundef nonnull %6) #41, !dbg !2051
  %532 = icmp eq i32 %531, 0, !dbg !2051
  br i1 %532, label %.preheader1, label %533, !dbg !2053

.preheader1:                                      ; preds = %529
  br label %540, !dbg !2054

533:                                              ; preds = %529
  %534 = tail call ptr @__errno_location() #44, !dbg !2055
  %535 = load i32, ptr %534, align 4, !dbg !2055, !tbaa !1157
  %536 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.115, i32 noundef 5) #41, !dbg !2055
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef %535, ptr noundef %536) #41, !dbg !2055
  unreachable, !dbg !2055

537:                                              ; preds = %565
  %538 = call i32 @sigprocmask(i32 noundef 2, ptr noundef nonnull %6, ptr noundef null) #41, !dbg !2056
  %539 = icmp eq i32 %538, 0, !dbg !2056
  br i1 %539, label %572, label %568, !dbg !2058

540:                                              ; preds = %.preheader1, %565
  %541 = phi i32 [ %566, %565 ], [ 1, %.preheader1 ]
  call void @llvm.dbg.value(metadata i32 %541, metadata !2038, metadata !DIExpression()), !dbg !2059
  call void @llvm.dbg.value(metadata ptr null, metadata !2040, metadata !DIExpression()), !dbg !2060
  %542 = call i32 @sigismember(ptr noundef nonnull @block_signals, i32 noundef %541) #41, !dbg !2061
  %543 = icmp eq i32 %542, 0, !dbg !2061
  br i1 %543, label %546, label %544, !dbg !2063

544:                                              ; preds = %540
  %545 = call i32 @sigaddset(ptr noundef nonnull %6, i32 noundef %541) #41, !dbg !2064
  call void @llvm.dbg.value(metadata ptr @.str.116, metadata !2040, metadata !DIExpression()), !dbg !2060
  br label %551, !dbg !2066

546:                                              ; preds = %540
  %547 = call i32 @sigismember(ptr noundef nonnull @unblock_signals, i32 noundef %541) #41, !dbg !2067
  %548 = icmp eq i32 %547, 0, !dbg !2067
  br i1 %548, label %565, label %549, !dbg !2069

549:                                              ; preds = %546
  %550 = call i32 @sigdelset(ptr noundef nonnull %6, i32 noundef %541) #41, !dbg !2070
  call void @llvm.dbg.value(metadata ptr @.str.117, metadata !2040, metadata !DIExpression()), !dbg !2060
  br label %551, !dbg !2072

551:                                              ; preds = %549, %544
  %552 = phi ptr [ @.str.116, %544 ], [ @.str.117, %549 ], !dbg !2060
  call void @llvm.dbg.value(metadata ptr %552, metadata !2040, metadata !DIExpression()), !dbg !2060
  %553 = load i1, ptr @dev_debug, align 1, !dbg !2073
  br i1 %553, label %554, label %565, !dbg !2074

554:                                              ; preds = %551
  call void @llvm.lifetime.start.p0(i64 19, ptr nonnull %7) #41, !dbg !2075
  %555 = call i32 @sig2str(i32 noundef %541, ptr noundef nonnull %7) #41, !dbg !2076
  %556 = icmp eq i32 %555, 0, !dbg !2078
  br i1 %556, label %559, label %557, !dbg !2079

557:                                              ; preds = %554
  %558 = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %7, i64 noundef 19, i32 noundef 1, i64 noundef 19, ptr noundef nonnull @.str.110, i32 noundef %541) #41, !dbg !2080
  br label %559, !dbg !2080

559:                                              ; preds = %557, %554
  %560 = load i1, ptr @dev_debug, align 1, !dbg !2081
  br i1 %560, label %561, label %564, !dbg !2084

561:                                              ; preds = %559
  %562 = load ptr, ptr @stderr, align 8, !dbg !2081, !tbaa !1075
  %563 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %562, i32 noundef 1, ptr noundef nonnull @.str.118, ptr noundef nonnull %7, i32 noundef %541, ptr noundef nonnull %552) #41, !dbg !2081
  br label %564, !dbg !2081

564:                                              ; preds = %561, %559
  call void @llvm.lifetime.end.p0(i64 19, ptr nonnull %7) #41, !dbg !2085
  br label %565, !dbg !2086

565:                                              ; preds = %564, %551, %546
  %566 = add nuw nsw i32 %541, 1, !dbg !2087
  call void @llvm.dbg.value(metadata i32 %566, metadata !2038, metadata !DIExpression()), !dbg !2059
  %567 = icmp eq i32 %566, 65, !dbg !2088
  br i1 %567, label %537, label %540, !dbg !2054, !llvm.loop !2089

568:                                              ; preds = %537
  %569 = tail call ptr @__errno_location() #44, !dbg !2091
  %570 = load i32, ptr %569, align 4, !dbg !2091, !tbaa !1157
  %571 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.119, i32 noundef 5) #41, !dbg !2091
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef %570, ptr noundef %571) #41, !dbg !2091
  unreachable, !dbg !2091

572:                                              ; preds = %537
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6) #41, !dbg !2092
  br label %573, !dbg !2093

573:                                              ; preds = %572, %527
  %574 = load i1, ptr @report_signal_handling, align 1, !dbg !2094
  br i1 %574, label %575, label %613, !dbg !2096

575:                                              ; preds = %573
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2097, metadata !DIExpression(), metadata !1304, metadata ptr %3, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2102, metadata !DIExpression(), metadata !1305, metadata ptr %4, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2108, metadata !DIExpression(), metadata !1306, metadata ptr %5, metadata !DIExpression()), !dbg !2111
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #41, !dbg !2112
  %576 = call i32 @sigemptyset(ptr noundef nonnull %3) #41, !dbg !2113
  %577 = call i32 @sigprocmask(i32 noundef 0, ptr noundef null, ptr noundef nonnull %3) #41, !dbg !2114
  %578 = icmp eq i32 %577, 0, !dbg !2114
  br i1 %578, label %.preheader, label %579, !dbg !2116

.preheader:                                       ; preds = %575
  br label %583, !dbg !2117

579:                                              ; preds = %575
  %580 = tail call ptr @__errno_location() #44, !dbg !2118
  %581 = load i32, ptr %580, align 4, !dbg !2118, !tbaa !1157
  %582 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.115, i32 noundef 5) #41, !dbg !2118
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef %581, ptr noundef %582) #41, !dbg !2118
  unreachable, !dbg !2118

583:                                              ; preds = %.preheader, %609
  %584 = phi i32 [ %610, %609 ], [ 1, %.preheader ]
  call void @llvm.dbg.value(metadata i32 %584, metadata !2100, metadata !DIExpression()), !dbg !2119
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %4) #41, !dbg !2120
  %585 = call i32 @sigaction(i32 noundef %584, ptr noundef null, ptr noundef nonnull %4) #41, !dbg !2121
  %586 = icmp eq i32 %585, 0, !dbg !2121
  br i1 %586, label %587, label %609, !dbg !2123

587:                                              ; preds = %583
  %588 = load ptr, ptr %4, align 8, !dbg !2124, !tbaa !1166
  %589 = icmp eq ptr %588, inttoptr (i64 1 to ptr), !dbg !2125
  %590 = select i1 %589, ptr @.str.113, ptr @.str.19, !dbg !2126
  call void @llvm.dbg.value(metadata ptr %590, metadata !2105, metadata !DIExpression()), !dbg !2111
  %591 = call i32 @sigismember(ptr noundef nonnull %3, i32 noundef %584) #41, !dbg !2127
  %592 = icmp eq i32 %591, 0, !dbg !2127
  %593 = select i1 %592, ptr @.str.19, ptr @.str.116, !dbg !2127
  call void @llvm.dbg.value(metadata ptr %593, metadata !2106, metadata !DIExpression()), !dbg !2111
  %594 = load i8, ptr %590, align 1, !dbg !2128, !tbaa !1166
  %595 = icmp eq i8 %594, 0, !dbg !2128
  %596 = load i8, ptr %593, align 1, !dbg !2129
  %597 = icmp eq i8 %596, 0, !dbg !2129
  %598 = select i1 %595, i1 true, i1 %597, !dbg !2128
  %599 = select i1 %598, ptr @.str.19, ptr @.str.93, !dbg !2128
  call void @llvm.dbg.value(metadata ptr %599, metadata !2107, metadata !DIExpression()), !dbg !2111
  %600 = select i1 %595, i1 %597, i1 false, !dbg !2130
  br i1 %600, label %609, label %601, !dbg !2130

601:                                              ; preds = %587
  call void @llvm.lifetime.start.p0(i64 19, ptr nonnull %5) #41, !dbg !2132
  %602 = call i32 @sig2str(i32 noundef %584, ptr noundef nonnull %5) #41, !dbg !2133
  %603 = icmp eq i32 %602, 0, !dbg !2135
  br i1 %603, label %606, label %604, !dbg !2136

604:                                              ; preds = %601
  %605 = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %5, i64 noundef 19, i32 noundef 1, i64 noundef 19, ptr noundef nonnull @.str.110, i32 noundef %584) #41, !dbg !2137
  br label %606, !dbg !2137

606:                                              ; preds = %604, %601
  %607 = load ptr, ptr @stderr, align 8, !dbg !2138, !tbaa !1075
  %608 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %607, i32 noundef 1, ptr noundef nonnull @.str.120, ptr noundef nonnull %5, i32 noundef %584, ptr noundef nonnull %593, ptr noundef nonnull %599, ptr noundef nonnull %590) #41, !dbg !2138
  call void @llvm.lifetime.end.p0(i64 19, ptr nonnull %5) #41, !dbg !2139
  br label %609, !dbg !2139

609:                                              ; preds = %606, %587, %583
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %4) #41, !dbg !2139
  %610 = add nuw nsw i32 %584, 1, !dbg !2140
  call void @llvm.dbg.value(metadata i32 %610, metadata !2100, metadata !DIExpression()), !dbg !2119
  %611 = icmp eq i32 %610, 65, !dbg !2141
  br i1 %611, label %612, label %583, !dbg !2117, !llvm.loop !2142

612:                                              ; preds = %609
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #41, !dbg !2144
  br label %613, !dbg !2145

613:                                              ; preds = %612, %573
  %614 = load i1, ptr @dev_debug, align 1, !dbg !2146
  br i1 %478, label %630, label %615, !dbg !2147

615:                                              ; preds = %613
  br i1 %614, label %616, label %620, !dbg !2148

616:                                              ; preds = %615
  %617 = load ptr, ptr @stderr, align 8, !dbg !2152, !tbaa !1075
  %618 = call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %.lcssa88) #41, !dbg !2152
  %619 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %617, i32 noundef 1, ptr noundef nonnull @.str.36, ptr noundef %618) #41, !dbg !2152
  br label %620, !dbg !2152

620:                                              ; preds = %616, %615
  %621 = call i32 @chdir(ptr noundef nonnull %.lcssa88) #41, !dbg !2154
  %622 = icmp eq i32 %621, 0, !dbg !2156
  br i1 %622, label %623, label %625, !dbg !2157

623:                                              ; preds = %620
  %624 = load i1, ptr @dev_debug, align 1, !dbg !2146
  br label %630, !dbg !2157

625:                                              ; preds = %620
  %626 = tail call ptr @__errno_location() #44, !dbg !2158
  %627 = load i32, ptr %626, align 4, !dbg !2158, !tbaa !1157
  %628 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.37, i32 noundef 5) #41, !dbg !2158
  %629 = call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %.lcssa88) #41, !dbg !2158
  call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef %627, ptr noundef %628, ptr noundef %629) #41, !dbg !2158
  unreachable, !dbg !2158

630:                                              ; preds = %623, %613
  %631 = phi i1 [ %624, %623 ], [ %614, %613 ], !dbg !2146
  %632 = load i32, ptr @optind, align 4, !dbg !2159, !tbaa !1157
  %633 = sext i32 %632 to i64, !dbg !2160
  %634 = getelementptr inbounds ptr, ptr %.lcssa110, i64 %633, !dbg !2160
  %635 = load ptr, ptr %634, align 8, !dbg !2160, !tbaa !1075
  tail call void @llvm.dbg.value(metadata ptr %635, metadata !243, metadata !DIExpression()), !dbg !1312
  br i1 %479, label %647, label %636, !dbg !2161

636:                                              ; preds = %630
  br i1 %631, label %639, label %637, !dbg !2162

637:                                              ; preds = %636
  %638 = getelementptr inbounds ptr, ptr %.lcssa110, i64 %633, !dbg !2166
  store ptr %.lcssa99, ptr %638, align 8, !dbg !2167, !tbaa !1075
  br label %676, !dbg !2168

639:                                              ; preds = %636
  %640 = load ptr, ptr @stderr, align 8, !dbg !2169, !tbaa !1075
  %641 = call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %.lcssa99) #41, !dbg !2169
  %642 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %640, i32 noundef 1, ptr noundef nonnull @.str.38, ptr noundef %641) #41, !dbg !2169
  %643 = load i32, ptr @optind, align 4, !dbg !2171, !tbaa !1157
  %644 = load i1, ptr @dev_debug, align 1, !dbg !2146
  %645 = sext i32 %643 to i64, !dbg !2166
  %646 = getelementptr inbounds ptr, ptr %.lcssa110, i64 %645, !dbg !2166
  store ptr %.lcssa99, ptr %646, align 8, !dbg !2167, !tbaa !1075
  br i1 %644, label %648, label %676, !dbg !2168

647:                                              ; preds = %630
  br i1 %631, label %648, label %676, !dbg !2168

648:                                              ; preds = %639, %647
  %649 = load ptr, ptr @stderr, align 8, !dbg !2172, !tbaa !1075
  %650 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %649, i32 noundef 1, ptr noundef nonnull @.str.39, ptr noundef %635) #41, !dbg !2172
  %651 = load i32, ptr @optind, align 4, !dbg !2175, !tbaa !1157
  tail call void @llvm.dbg.value(metadata i32 %651, metadata !244, metadata !DIExpression()), !dbg !2176
  %652 = icmp slt i32 %651, %.lcssa121, !dbg !2177
  br i1 %652, label %653, label %676, !dbg !2179

653:                                              ; preds = %648
  %654 = sext i32 %651 to i64, !dbg !2179
  %655 = load i1, ptr @dev_debug, align 1, !dbg !2180
  br label %656, !dbg !2179

656:                                              ; preds = %653, %669
  %657 = phi i1 [ %655, %653 ], [ %670, %669 ], !dbg !2180
  %658 = phi i64 [ %654, %653 ], [ %671, %669 ]
  tail call void @llvm.dbg.value(metadata i64 %658, metadata !244, metadata !DIExpression()), !dbg !2176
  br i1 %657, label %659, label %669, !dbg !2183

659:                                              ; preds = %656
  %660 = load ptr, ptr @stderr, align 8, !dbg !2180, !tbaa !1075
  %661 = load i32, ptr @optind, align 4, !dbg !2180, !tbaa !1157
  %662 = trunc i64 %658 to i32, !dbg !2180
  %663 = sub nsw i32 %662, %661, !dbg !2180
  %664 = getelementptr inbounds ptr, ptr %.lcssa110, i64 %658, !dbg !2180
  %665 = load ptr, ptr %664, align 8, !dbg !2180, !tbaa !1075
  %666 = call ptr @quote(ptr noundef %665) #41, !dbg !2180
  %667 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %660, i32 noundef 1, ptr noundef nonnull @.str.40, i32 noundef %663, ptr noundef %666) #41, !dbg !2180
  %668 = load i1, ptr @dev_debug, align 1, !dbg !2180
  br label %669, !dbg !2180

669:                                              ; preds = %656, %659
  %670 = phi i1 [ false, %656 ], [ %668, %659 ]
  %671 = add nsw i64 %658, 1, !dbg !2184
  tail call void @llvm.dbg.value(metadata i64 %671, metadata !244, metadata !DIExpression()), !dbg !2176
  %672 = trunc i64 %671 to i32, !dbg !2177
  %673 = icmp eq i32 %.lcssa121, %672, !dbg !2177
  br i1 %673, label %674, label %656, !dbg !2179, !llvm.loop !2185

674:                                              ; preds = %669
  %675 = load i32, ptr @optind, align 4, !dbg !2187, !tbaa !1157
  br label %676, !dbg !2187

676:                                              ; preds = %637, %639, %674, %648, %647
  %677 = phi i32 [ %675, %674 ], [ %651, %648 ], [ %632, %647 ], [ %643, %639 ], [ %632, %637 ], !dbg !2187
  %678 = sext i32 %677 to i64, !dbg !2188
  %679 = getelementptr inbounds ptr, ptr %.lcssa110, i64 %678, !dbg !2188
  %680 = call i32 @execvp(ptr noundef %635, ptr noundef %679) #41, !dbg !2189
  %681 = tail call ptr @__errno_location() #44, !dbg !2190
  %682 = load i32, ptr %681, align 4, !dbg !2190, !tbaa !1157
  %683 = icmp eq i32 %682, 2, !dbg !2191
  tail call void @llvm.dbg.value(metadata i32 undef, metadata !248, metadata !DIExpression()), !dbg !1312
  %684 = call ptr @quote(ptr noundef %635) #41, !dbg !2192
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %682, ptr noundef nonnull @.str.41, ptr noundef %684) #41, !dbg !2192
  br i1 %683, label %685, label %690, !dbg !2193

685:                                              ; preds = %676
  %686 = call ptr @strpbrk(ptr noundef %635, ptr noundef nonnull @.str.42) #42, !dbg !2195
  %687 = icmp eq ptr %686, null, !dbg !2195
  br i1 %687, label %690, label %688, !dbg !2196

688:                                              ; preds = %685
  %689 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 5) #41, !dbg !2197
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %689) #41, !dbg !2197
  br label %690, !dbg !2197

.loopexit:                                        ; preds = %470
  br label %690, !dbg !2198

690:                                              ; preds = %.loopexit, %464, %676, %685, %688
  %691 = phi i32 [ 127, %688 ], [ 127, %685 ], [ 126, %676 ], [ 0, %464 ], [ 0, %.loopexit ], !dbg !1312
  ret i32 %691, !dbg !2198
}

; Function Attrs: nounwind
declare !dbg !2199 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2202 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2203 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: nounwind
declare !dbg !2206 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @parse_signal_action_params(ptr noundef %0, i1 noundef %1) unnamed_addr #10 !dbg !2210 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2214, metadata !DIExpression()), !dbg !2224
  tail call void @llvm.dbg.value(metadata i1 %1, metadata !2215, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2224
  %3 = icmp eq ptr %0, null, !dbg !2225
  br i1 %3, label %4, label %25, !dbg !2226

4:                                                ; preds = %2
  %5 = select i1 %1, i32 2, i32 4
  %6 = load ptr, ptr @signals, align 8, !tbaa !1075
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2216, metadata !DIExpression()), !dbg !2227
  %7 = getelementptr inbounds i32, ptr %6, i64 1, !dbg !2228
  tail call void @llvm.dbg.value(metadata i64 2, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 2, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 3, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 3, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 4, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 4, metadata !2216, metadata !DIExpression()), !dbg !2227
  %8 = insertelement <4 x i32> poison, i32 %5, i64 0, !dbg !2230
  %9 = shufflevector <4 x i32> %8, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !2230
  store <4 x i32> %9, ptr %7, align 4, !dbg !2230, !tbaa !1157
  tail call void @llvm.dbg.value(metadata i64 5, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 5, metadata !2216, metadata !DIExpression()), !dbg !2227
  %10 = getelementptr inbounds i32, ptr %6, i64 5, !dbg !2228
  tail call void @llvm.dbg.value(metadata i64 6, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 6, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 7, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 7, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 8, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 8, metadata !2216, metadata !DIExpression()), !dbg !2227
  store <4 x i32> %9, ptr %10, align 4, !dbg !2230, !tbaa !1157
  tail call void @llvm.dbg.value(metadata i64 9, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 9, metadata !2216, metadata !DIExpression()), !dbg !2227
  %11 = getelementptr inbounds i32, ptr %6, i64 9, !dbg !2228
  tail call void @llvm.dbg.value(metadata i64 10, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 10, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 11, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 11, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 12, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 12, metadata !2216, metadata !DIExpression()), !dbg !2227
  store <4 x i32> %9, ptr %11, align 4, !dbg !2230, !tbaa !1157
  tail call void @llvm.dbg.value(metadata i64 13, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 13, metadata !2216, metadata !DIExpression()), !dbg !2227
  %12 = getelementptr inbounds i32, ptr %6, i64 13, !dbg !2228
  tail call void @llvm.dbg.value(metadata i64 14, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 14, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 15, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 15, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 16, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 16, metadata !2216, metadata !DIExpression()), !dbg !2227
  store <4 x i32> %9, ptr %12, align 4, !dbg !2230, !tbaa !1157
  tail call void @llvm.dbg.value(metadata i64 17, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 17, metadata !2216, metadata !DIExpression()), !dbg !2227
  %13 = getelementptr inbounds i32, ptr %6, i64 17, !dbg !2228
  tail call void @llvm.dbg.value(metadata i64 18, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 18, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 19, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 19, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 20, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 20, metadata !2216, metadata !DIExpression()), !dbg !2227
  store <4 x i32> %9, ptr %13, align 4, !dbg !2230, !tbaa !1157
  tail call void @llvm.dbg.value(metadata i64 21, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 21, metadata !2216, metadata !DIExpression()), !dbg !2227
  %14 = getelementptr inbounds i32, ptr %6, i64 21, !dbg !2228
  tail call void @llvm.dbg.value(metadata i64 22, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 22, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 23, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 23, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 24, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 24, metadata !2216, metadata !DIExpression()), !dbg !2227
  store <4 x i32> %9, ptr %14, align 4, !dbg !2230, !tbaa !1157
  tail call void @llvm.dbg.value(metadata i64 25, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 25, metadata !2216, metadata !DIExpression()), !dbg !2227
  %15 = getelementptr inbounds i32, ptr %6, i64 25, !dbg !2228
  tail call void @llvm.dbg.value(metadata i64 26, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 26, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 27, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 27, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 28, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 28, metadata !2216, metadata !DIExpression()), !dbg !2227
  store <4 x i32> %9, ptr %15, align 4, !dbg !2230, !tbaa !1157
  tail call void @llvm.dbg.value(metadata i64 29, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 29, metadata !2216, metadata !DIExpression()), !dbg !2227
  %16 = getelementptr inbounds i32, ptr %6, i64 29, !dbg !2228
  tail call void @llvm.dbg.value(metadata i64 30, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 30, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 31, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 31, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 32, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 32, metadata !2216, metadata !DIExpression()), !dbg !2227
  store <4 x i32> %9, ptr %16, align 4, !dbg !2230, !tbaa !1157
  tail call void @llvm.dbg.value(metadata i64 33, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 33, metadata !2216, metadata !DIExpression()), !dbg !2227
  %17 = getelementptr inbounds i32, ptr %6, i64 33, !dbg !2228
  tail call void @llvm.dbg.value(metadata i64 34, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 34, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 35, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 35, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 36, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 36, metadata !2216, metadata !DIExpression()), !dbg !2227
  store <4 x i32> %9, ptr %17, align 4, !dbg !2230, !tbaa !1157
  tail call void @llvm.dbg.value(metadata i64 37, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 37, metadata !2216, metadata !DIExpression()), !dbg !2227
  %18 = getelementptr inbounds i32, ptr %6, i64 37, !dbg !2228
  tail call void @llvm.dbg.value(metadata i64 38, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 38, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 39, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 39, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 40, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 40, metadata !2216, metadata !DIExpression()), !dbg !2227
  store <4 x i32> %9, ptr %18, align 4, !dbg !2230, !tbaa !1157
  tail call void @llvm.dbg.value(metadata i64 41, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 41, metadata !2216, metadata !DIExpression()), !dbg !2227
  %19 = getelementptr inbounds i32, ptr %6, i64 41, !dbg !2228
  tail call void @llvm.dbg.value(metadata i64 42, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 42, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 43, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 43, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 44, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 44, metadata !2216, metadata !DIExpression()), !dbg !2227
  store <4 x i32> %9, ptr %19, align 4, !dbg !2230, !tbaa !1157
  tail call void @llvm.dbg.value(metadata i64 45, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 45, metadata !2216, metadata !DIExpression()), !dbg !2227
  %20 = getelementptr inbounds i32, ptr %6, i64 45, !dbg !2228
  tail call void @llvm.dbg.value(metadata i64 46, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 46, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 47, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 47, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 48, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 48, metadata !2216, metadata !DIExpression()), !dbg !2227
  store <4 x i32> %9, ptr %20, align 4, !dbg !2230, !tbaa !1157
  tail call void @llvm.dbg.value(metadata i64 49, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 49, metadata !2216, metadata !DIExpression()), !dbg !2227
  %21 = getelementptr inbounds i32, ptr %6, i64 49, !dbg !2228
  tail call void @llvm.dbg.value(metadata i64 50, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 50, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 51, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 51, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 52, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 52, metadata !2216, metadata !DIExpression()), !dbg !2227
  store <4 x i32> %9, ptr %21, align 4, !dbg !2230, !tbaa !1157
  tail call void @llvm.dbg.value(metadata i64 53, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 53, metadata !2216, metadata !DIExpression()), !dbg !2227
  %22 = getelementptr inbounds i32, ptr %6, i64 53, !dbg !2228
  tail call void @llvm.dbg.value(metadata i64 54, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 54, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 55, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 55, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 56, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 56, metadata !2216, metadata !DIExpression()), !dbg !2227
  store <4 x i32> %9, ptr %22, align 4, !dbg !2230, !tbaa !1157
  tail call void @llvm.dbg.value(metadata i64 57, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 57, metadata !2216, metadata !DIExpression()), !dbg !2227
  %23 = getelementptr inbounds i32, ptr %6, i64 57, !dbg !2228
  tail call void @llvm.dbg.value(metadata i64 58, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 58, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 59, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 59, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 60, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 60, metadata !2216, metadata !DIExpression()), !dbg !2227
  store <4 x i32> %9, ptr %23, align 4, !dbg !2230, !tbaa !1157
  tail call void @llvm.dbg.value(metadata i64 61, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 61, metadata !2216, metadata !DIExpression()), !dbg !2227
  %24 = getelementptr inbounds i32, ptr %6, i64 61, !dbg !2228
  tail call void @llvm.dbg.value(metadata i64 62, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 62, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 63, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 63, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 64, metadata !2216, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 64, metadata !2216, metadata !DIExpression()), !dbg !2227
  store <4 x i32> %9, ptr %24, align 4, !dbg !2230, !tbaa !1157
  tail call void @llvm.dbg.value(metadata i64 65, metadata !2216, metadata !DIExpression()), !dbg !2227
  br label %49, !dbg !2231

25:                                               ; preds = %2
  %26 = tail call noalias nonnull ptr @xstrdup(ptr noundef nonnull %0) #41, !dbg !2232
  tail call void @llvm.dbg.value(metadata ptr %26, metadata !2220, metadata !DIExpression()), !dbg !2224
  %27 = tail call ptr @strtok(ptr noundef nonnull %26, ptr noundef nonnull @.str.93) #41, !dbg !2233
  tail call void @llvm.dbg.value(metadata ptr %27, metadata !2221, metadata !DIExpression()), !dbg !2224
  %28 = icmp eq ptr %27, null, !dbg !2234
  br i1 %28, label %48, label %29, !dbg !2234

29:                                               ; preds = %25
  %30 = select i1 %1, i32 1, i32 3
  br label %31, !dbg !2234

31:                                               ; preds = %29, %42
  %32 = phi ptr [ %27, %29 ], [ %46, %42 ]
  tail call void @llvm.dbg.value(metadata ptr %32, metadata !2221, metadata !DIExpression()), !dbg !2224
  %33 = tail call i32 @operand2sig(ptr noundef nonnull %32) #41, !dbg !2235
  tail call void @llvm.dbg.value(metadata i32 %33, metadata !2222, metadata !DIExpression()), !dbg !2236
  %34 = icmp eq i32 %33, 0, !dbg !2237
  br i1 %34, label %35, label %38, !dbg !2239

35:                                               ; preds = %31
  %.lcssa = phi ptr [ %32, %31 ]
  %36 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.94, i32 noundef 5) #41, !dbg !2240
  %37 = tail call ptr @quote(ptr noundef nonnull %.lcssa) #41, !dbg !2240
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %36, ptr noundef %37) #41, !dbg !2240
  br label %40, !dbg !2241

38:                                               ; preds = %31
  %39 = icmp slt i32 %33, 1, !dbg !2242
  br i1 %39, label %.loopexit, label %42, !dbg !2241

.loopexit:                                        ; preds = %38
  br label %40, !dbg !2244

40:                                               ; preds = %.loopexit, %35
  %41 = load volatile i32, ptr @exit_failure, align 4, !dbg !2244, !tbaa !1157
  tail call void @usage(i32 noundef %41) #47, !dbg !2245
  unreachable, !dbg !2245

42:                                               ; preds = %38
  %43 = load ptr, ptr @signals, align 8, !dbg !2246, !tbaa !1075
  %44 = zext nneg i32 %33 to i64
  %45 = getelementptr inbounds i32, ptr %43, i64 %44, !dbg !2246
  store i32 %30, ptr %45, align 4, !dbg !2247, !tbaa !1157
  %46 = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.93) #41, !dbg !2248
  tail call void @llvm.dbg.value(metadata ptr %46, metadata !2221, metadata !DIExpression()), !dbg !2224
  %47 = icmp eq ptr %46, null, !dbg !2234
  br i1 %47, label %.loopexit1, label %31, !dbg !2234, !llvm.loop !2249

.loopexit1:                                       ; preds = %42
  br label %48, !dbg !2251

48:                                               ; preds = %.loopexit1, %25
  tail call void @free(ptr noundef nonnull %26) #41, !dbg !2251
  br label %49, !dbg !2231

49:                                               ; preds = %4, %48
  ret void, !dbg !2231
}

; Function Attrs: nounwind uwtable
define internal fastcc void @parse_block_signal_params(ptr noundef %0, i1 noundef %1) unnamed_addr #10 !dbg !2252 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2254, metadata !DIExpression()), !dbg !2260
  tail call void @llvm.dbg.value(metadata i1 %1, metadata !2255, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2260
  %3 = icmp eq ptr %0, null, !dbg !2261
  br i1 %3, label %9, label %4, !dbg !2263

4:                                                ; preds = %2
  %5 = load i1, ptr @sig_mask_changed, align 1, !dbg !2264
  br i1 %5, label %14, label %6, !dbg !2266

6:                                                ; preds = %4
  %7 = tail call i32 @sigemptyset(ptr noundef nonnull @block_signals) #41, !dbg !2267
  %8 = tail call i32 @sigemptyset(ptr noundef nonnull @unblock_signals) #41, !dbg !2269
  br label %14, !dbg !2270

9:                                                ; preds = %2
  %10 = select i1 %1, ptr @block_signals, ptr @unblock_signals, !dbg !2271
  %11 = tail call i32 @sigfillset(ptr noundef nonnull %10) #41, !dbg !2273
  %12 = select i1 %1, ptr @unblock_signals, ptr @block_signals, !dbg !2274
  %13 = tail call i32 @sigemptyset(ptr noundef nonnull %12) #41, !dbg !2275
  store i1 true, ptr @sig_mask_changed, align 1, !dbg !2276
  br label %46, !dbg !2277

14:                                               ; preds = %4, %6
  store i1 true, ptr @sig_mask_changed, align 1, !dbg !2276
  %15 = tail call noalias nonnull ptr @xstrdup(ptr noundef nonnull %0) #41, !dbg !2278
  tail call void @llvm.dbg.value(metadata ptr %15, metadata !2256, metadata !DIExpression()), !dbg !2260
  %16 = tail call ptr @strtok(ptr noundef nonnull %15, ptr noundef nonnull @.str.93) #41, !dbg !2279
  tail call void @llvm.dbg.value(metadata ptr %16, metadata !2257, metadata !DIExpression()), !dbg !2260
  %17 = icmp eq ptr %16, null, !dbg !2280
  br i1 %17, label %45, label %18, !dbg !2280

18:                                               ; preds = %14
  %19 = select i1 %1, ptr @block_signals, ptr @unblock_signals
  %20 = select i1 %1, ptr @unblock_signals, ptr @block_signals
  br label %21, !dbg !2280

21:                                               ; preds = %18, %42
  %22 = phi ptr [ %16, %18 ], [ %43, %42 ]
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !2257, metadata !DIExpression()), !dbg !2260
  %23 = tail call i32 @operand2sig(ptr noundef nonnull %22) #41, !dbg !2281
  tail call void @llvm.dbg.value(metadata i32 %23, metadata !2258, metadata !DIExpression()), !dbg !2282
  %24 = icmp eq i32 %23, 0, !dbg !2283
  br i1 %24, label %25, label %28, !dbg !2285

25:                                               ; preds = %21
  %.lcssa5 = phi ptr [ %22, %21 ]
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.94, i32 noundef 5) #41, !dbg !2286
  %27 = tail call ptr @quote(ptr noundef nonnull %.lcssa5) #41, !dbg !2286
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %26, ptr noundef %27) #41, !dbg !2286
  br label %30, !dbg !2287

28:                                               ; preds = %21
  %29 = icmp slt i32 %23, 1, !dbg !2288
  br i1 %29, label %.loopexit, label %32, !dbg !2287

.loopexit:                                        ; preds = %28
  br label %30, !dbg !2290

30:                                               ; preds = %.loopexit, %25
  %31 = load volatile i32, ptr @exit_failure, align 4, !dbg !2290, !tbaa !1157
  tail call void @usage(i32 noundef %31) #47, !dbg !2291
  unreachable, !dbg !2291

32:                                               ; preds = %28
  %33 = tail call i32 @sigaddset(ptr noundef nonnull %19, i32 noundef %23) #41, !dbg !2292
  %34 = icmp eq i32 %33, -1, !dbg !2294
  br i1 %34, label %35, label %40, !dbg !2295

35:                                               ; preds = %32
  br i1 %1, label %36, label %42, !dbg !2296

36:                                               ; preds = %35
  %.lcssa3 = phi i32 [ %23, %35 ], !dbg !2281
  %37 = tail call ptr @__errno_location() #44, !dbg !2298
  %38 = load i32, ptr %37, align 4, !dbg !2298, !tbaa !1157
  %39 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.95, i32 noundef 5) #41, !dbg !2298
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 125, i32 noundef %38, ptr noundef %39, i32 noundef %.lcssa3) #41, !dbg !2298
  unreachable, !dbg !2298

40:                                               ; preds = %32
  %41 = tail call i32 @sigdelset(ptr noundef nonnull %20, i32 noundef %23) #41, !dbg !2300
  br label %42

42:                                               ; preds = %35, %40
  %43 = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.93) #41, !dbg !2301
  tail call void @llvm.dbg.value(metadata ptr %43, metadata !2257, metadata !DIExpression()), !dbg !2260
  %44 = icmp eq ptr %43, null, !dbg !2280
  br i1 %44, label %.loopexit1, label %21, !dbg !2280, !llvm.loop !2302

.loopexit1:                                       ; preds = %42
  br label %45, !dbg !2304

45:                                               ; preds = %.loopexit1, %14
  tail call void @free(ptr noundef nonnull %15) #41, !dbg !2304
  br label %46, !dbg !2305

46:                                               ; preds = %9, %45
  ret void, !dbg !2305
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #12

; Function Attrs: nounwind uwtable
define internal fastcc void @check_start_new_arg(ptr noundef %0) unnamed_addr #10 !dbg !2306 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2308, metadata !DIExpression()), !dbg !2312
  %2 = getelementptr inbounds %struct.splitbuf, ptr %0, i64 0, i32 4, !dbg !2313
  %3 = load i8, ptr %2, align 4, !dbg !2313, !tbaa !1450, !range !1475, !noundef !1125
  %4 = icmp eq i8 %3, 0, !dbg !2313
  br i1 %4, label %57, label %5, !dbg !2314

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %0, metadata !1595, metadata !DIExpression()), !dbg !2315
  call void @llvm.dbg.value(metadata i8 0, metadata !1596, metadata !DIExpression()), !dbg !2315
  %6 = load ptr, ptr %0, align 8, !dbg !2317, !tbaa !1436
  %7 = getelementptr inbounds %struct.splitbuf, ptr %0, i64 0, i32 1, !dbg !2318
  %8 = load i32, ptr %7, align 8, !dbg !2318, !tbaa !1441
  %9 = sext i32 %8 to i64, !dbg !2319
  %10 = getelementptr inbounds ptr, ptr %6, i64 %9, !dbg !2319
  %11 = load ptr, ptr %10, align 8, !dbg !2319, !tbaa !1075
  %12 = ptrtoint ptr %11 to i64, !dbg !2320
  call void @llvm.dbg.value(metadata i64 %12, metadata !1597, metadata !DIExpression()), !dbg !2315
  %13 = getelementptr inbounds %struct.splitbuf, ptr %0, i64 0, i32 2, !dbg !2321
  %14 = load i64, ptr %13, align 8, !dbg !2321, !tbaa !1444
  %15 = shl i64 %14, 3, !dbg !2322
  %16 = icmp ugt i64 %15, %12, !dbg !2323
  br i1 %16, label %24, label %17, !dbg !2324

17:                                               ; preds = %5
  call void @llvm.dbg.value(metadata ptr %0, metadata !1608, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata i64 %14, metadata !1613, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata i64 %12, metadata !1614, metadata !DIExpression()), !dbg !2325
  %18 = tail call nonnull ptr @xpalloc(ptr noundef nonnull %6, ptr noundef nonnull %13, i64 noundef 1, i64 noundef 2147483647, i64 noundef 16) #41, !dbg !2327
  store ptr %18, ptr %0, align 8, !dbg !2328, !tbaa !1436
  %19 = load i64, ptr %13, align 8, !dbg !2329, !tbaa !1444
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19, !dbg !2330
  %21 = getelementptr inbounds ptr, ptr %18, i64 %14, !dbg !2331
  call void @llvm.dbg.value(metadata ptr %20, metadata !1623, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata ptr %21, metadata !1628, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata i64 %12, metadata !1629, metadata !DIExpression()), !dbg !2332
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %20, ptr noundef nonnull align 1 %21, i64 noundef %12, i1 noundef false) #41, !dbg !2334
  %22 = load ptr, ptr %0, align 8, !dbg !2335, !tbaa !1436
  %23 = load i64, ptr %13, align 8, !dbg !2336, !tbaa !1444
  br label %24, !dbg !2337

24:                                               ; preds = %5, %17
  %25 = phi i64 [ %23, %17 ], [ %14, %5 ], !dbg !2336
  %26 = phi ptr [ %22, %17 ], [ %6, %5 ], !dbg !2335
  %27 = getelementptr inbounds ptr, ptr %26, i64 %25, !dbg !2338
  %28 = getelementptr inbounds i8, ptr %27, i64 %12, !dbg !2339
  store i8 0, ptr %28, align 1, !dbg !2340, !tbaa !1166
  %29 = add nsw i64 %12, 1, !dbg !2341
  %30 = inttoptr i64 %29 to ptr, !dbg !2342
  %31 = load ptr, ptr %0, align 8, !dbg !2343, !tbaa !1436
  %32 = load i32, ptr %7, align 8, !dbg !2344, !tbaa !1441
  %33 = sext i32 %32 to i64, !dbg !2345
  %34 = getelementptr inbounds ptr, ptr %31, i64 %33, !dbg !2345
  store ptr %30, ptr %34, align 8, !dbg !2346, !tbaa !1075
  tail call void @llvm.dbg.value(metadata i32 %32, metadata !2309, metadata !DIExpression()), !dbg !2347
  %35 = load i64, ptr %13, align 8, !dbg !2348, !tbaa !1444
  %36 = getelementptr inbounds %struct.splitbuf, ptr %0, i64 0, i32 3, !dbg !2350
  %37 = load i32, ptr %36, align 8, !dbg !2350, !tbaa !1447
  %38 = add i32 %32, 1, !dbg !2351
  %39 = add i32 %38, %37, !dbg !2352
  %40 = sext i32 %39 to i64, !dbg !2353
  %41 = icmp sgt i64 %35, %40, !dbg !2354
  br i1 %41, label %51, label %42, !dbg !2355

42:                                               ; preds = %24
  call void @llvm.dbg.value(metadata ptr %0, metadata !1608, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %35, metadata !1613, metadata !DIExpression()), !dbg !2356
  %43 = load ptr, ptr %0, align 8, !dbg !2358, !tbaa !1436
  %44 = getelementptr inbounds ptr, ptr %43, i64 %33, !dbg !2359
  %45 = load ptr, ptr %44, align 8, !dbg !2359, !tbaa !1075
  %46 = ptrtoint ptr %45 to i64, !dbg !2360
  call void @llvm.dbg.value(metadata i64 %46, metadata !1614, metadata !DIExpression()), !dbg !2356
  %47 = tail call nonnull ptr @xpalloc(ptr noundef %43, ptr noundef nonnull %13, i64 noundef 1, i64 noundef 2147483647, i64 noundef 16) #41, !dbg !2361
  store ptr %47, ptr %0, align 8, !dbg !2362, !tbaa !1436
  %48 = load i64, ptr %13, align 8, !dbg !2363, !tbaa !1444
  %49 = getelementptr inbounds ptr, ptr %47, i64 %48, !dbg !2364
  %50 = getelementptr inbounds ptr, ptr %47, i64 %35, !dbg !2365
  call void @llvm.dbg.value(metadata ptr %49, metadata !1623, metadata !DIExpression()), !dbg !2366
  call void @llvm.dbg.value(metadata ptr %50, metadata !1628, metadata !DIExpression()), !dbg !2366
  call void @llvm.dbg.value(metadata i64 %46, metadata !1629, metadata !DIExpression()), !dbg !2366
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %49, ptr noundef nonnull align 1 %50, i64 noundef %46, i1 noundef false) #41, !dbg !2368
  br label %51, !dbg !2369

51:                                               ; preds = %42, %24
  %52 = load ptr, ptr %0, align 8, !dbg !2370, !tbaa !1436
  %53 = getelementptr inbounds ptr, ptr %52, i64 %33, !dbg !2371
  %54 = load ptr, ptr %53, align 8, !dbg !2371, !tbaa !1075
  %55 = sext i32 %38 to i64, !dbg !2372
  %56 = getelementptr inbounds ptr, ptr %52, i64 %55, !dbg !2372
  store ptr %54, ptr %56, align 8, !dbg !2373, !tbaa !1075
  store i32 %38, ptr %7, align 8, !dbg !2374, !tbaa !1441
  store i8 0, ptr %2, align 4, !dbg !2375, !tbaa !1450
  br label %57, !dbg !2376

57:                                               ; preds = %51, %1
  ret void, !dbg !2377
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2378 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #1

; Function Attrs: nofree nounwind
declare !dbg !2381 noundef i32 @unsetenv(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !2384 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !2388 i32 @putenv(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2391 i32 @sigaction(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare !dbg !2399 i32 @__snprintf_chk(ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #15

; Function Attrs: nounwind
declare !dbg !2403 i32 @sigemptyset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2407 i32 @sigprocmask(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2414 i32 @sigismember(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2417 i32 @sigaddset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2420 i32 @sigdelset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2421 i32 @chdir(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !2423 i32 @execvp(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2426 ptr @strpbrk(ptr noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2427 i32 @sigfillset(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn
declare !dbg !2428 ptr @strtok(ptr noundef, ptr nocapture noundef readonly) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define dso_local i32 @operand2sig(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2431 {
  %2 = alloca i32, align 4, !DIAssignID !2444
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2434, metadata !DIExpression(), metadata !2444, metadata ptr %2, metadata !DIExpression()), !dbg !2445
  %3 = alloca ptr, align 8, !DIAssignID !2446
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2435, metadata !DIExpression(), metadata !2446, metadata ptr %3, metadata !DIExpression()), !dbg !2447
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2433, metadata !DIExpression()), !dbg !2445
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #41, !dbg !2448
  %4 = load i8, ptr %0, align 1, !dbg !2449, !tbaa !1166
  %5 = zext i8 %4 to i32, !dbg !2449
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2450, metadata !DIExpression()), !dbg !2453
  %6 = add nsw i32 %5, -48, !dbg !2455
  %7 = icmp ult i32 %6, 10, !dbg !2455
  br i1 %7, label %8, label %34, !dbg !2456

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #41, !dbg !2457
  %9 = tail call ptr @__errno_location() #44, !dbg !2458
  store i32 0, ptr %9, align 4, !dbg !2459, !tbaa !1157
  %10 = call i64 @strtol(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 10) #41, !dbg !2460
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !2438, metadata !DIExpression()), !dbg !2447
  %11 = freeze i64 %10, !dbg !2461
  %12 = trunc i64 %11 to i32, !dbg !2461
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !2439, metadata !DIExpression()), !dbg !2447
  %13 = load ptr, ptr %3, align 8, !dbg !2462, !tbaa !1075
  %14 = icmp eq ptr %13, %0, !dbg !2463
  br i1 %14, label %32, label %15, !dbg !2464

15:                                               ; preds = %8
  %16 = load i8, ptr %13, align 1, !dbg !2465, !tbaa !1166
  %17 = icmp eq i8 %16, 0, !dbg !2465
  br i1 %17, label %18, label %32, !dbg !2466

18:                                               ; preds = %15
  %19 = load i32, ptr %9, align 4, !dbg !2467, !tbaa !1157
  %20 = icmp eq i32 %19, 0, !dbg !2467
  %21 = add i64 %11, 2147483648
  %22 = icmp ult i64 %21, 4294967296
  %23 = and i1 %20, %22, !dbg !2468
  br i1 %23, label %24, label %32, !dbg !2468

24:                                               ; preds = %18
  call void @llvm.dbg.assign(metadata i32 %12, metadata !2434, metadata !DIExpression(), metadata !2469, metadata ptr %2, metadata !DIExpression()), !dbg !2445
  %25 = icmp slt i32 %12, 255, !dbg !2470
  br i1 %25, label %26, label %30, !dbg !2470

26:                                               ; preds = %24
  %27 = icmp eq i32 %12, -1, !dbg !2471
  %28 = and i32 %12, 127, !dbg !2470
  %29 = select i1 %27, i32 -1, i32 %28, !dbg !2470
  br label %32, !dbg !2470

30:                                               ; preds = %24
  %31 = and i32 %12, 255, !dbg !2470
  br label %32, !dbg !2470

32:                                               ; preds = %26, %8, %15, %18, %30
  %33 = phi i32 [ %31, %30 ], [ -1, %8 ], [ -1, %15 ], [ -1, %18 ], [ %29, %26 ]
  store i32 %33, ptr %2, align 4, !dbg !2447, !tbaa !1157, !DIAssignID !2469
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #41, !dbg !2473
  br label %70, !dbg !2474

34:                                               ; preds = %1
  %35 = tail call noalias nonnull ptr @xstrdup(ptr noundef nonnull %0) #41, !dbg !2475
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !2440, metadata !DIExpression()), !dbg !2476
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !2442, metadata !DIExpression()), !dbg !2477
  %36 = load i8, ptr %35, align 1, !dbg !2478, !tbaa !1166
  %37 = icmp eq i8 %36, 0, !dbg !2480
  br i1 %37, label %38, label %.preheader, !dbg !2480

.preheader:                                       ; preds = %34
  br label %41, !dbg !2480

.loopexit:                                        ; preds = %48
  br label %38, !dbg !2481

38:                                               ; preds = %.loopexit, %34
  %39 = call i32 @str2sig(ptr noundef nonnull %35, ptr noundef nonnull %2) #41, !dbg !2481
  %40 = icmp eq i32 %39, 0, !dbg !2483
  br i1 %40, label %68, label %52, !dbg !2484

41:                                               ; preds = %.preheader, %48
  %42 = phi i8 [ %50, %48 ], [ %36, %.preheader ]
  %43 = phi ptr [ %49, %48 ], [ %35, %.preheader ]
  tail call void @llvm.dbg.value(metadata ptr %43, metadata !2442, metadata !DIExpression()), !dbg !2477
  %44 = add i8 %42, -123, !dbg !2485
  %45 = icmp ult i8 %44, -26, !dbg !2485
  br i1 %45, label %48, label %46, !dbg !2487

46:                                               ; preds = %41
  %47 = add nsw i8 %42, -32, !dbg !2488
  store i8 %47, ptr %43, align 1, !dbg !2488, !tbaa !1166
  br label %48, !dbg !2489

48:                                               ; preds = %41, %46
  %49 = getelementptr inbounds i8, ptr %43, i64 1, !dbg !2490
  tail call void @llvm.dbg.value(metadata ptr %49, metadata !2442, metadata !DIExpression()), !dbg !2477
  %50 = load i8, ptr %49, align 1, !dbg !2478, !tbaa !1166
  %51 = icmp eq i8 %50, 0, !dbg !2480
  br i1 %51, label %.loopexit, label %41, !dbg !2480, !llvm.loop !2491

52:                                               ; preds = %38
  %53 = load i8, ptr %35, align 1, !dbg !2493, !tbaa !1166
  %54 = icmp eq i8 %53, 83, !dbg !2494
  br i1 %54, label %55, label %67, !dbg !2495

55:                                               ; preds = %52
  %56 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !2496
  %57 = load i8, ptr %56, align 1, !dbg !2496, !tbaa !1166
  %58 = icmp eq i8 %57, 73, !dbg !2497
  br i1 %58, label %59, label %67, !dbg !2498

59:                                               ; preds = %55
  %60 = getelementptr inbounds i8, ptr %35, i64 2, !dbg !2499
  %61 = load i8, ptr %60, align 1, !dbg !2499, !tbaa !1166
  %62 = icmp eq i8 %61, 71, !dbg !2500
  br i1 %62, label %63, label %67, !dbg !2501

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %35, i64 3, !dbg !2502
  %65 = call i32 @str2sig(ptr noundef nonnull %64, ptr noundef nonnull %2) #41, !dbg !2503
  %66 = icmp eq i32 %65, 0, !dbg !2504
  br i1 %66, label %68, label %67, !dbg !2505

67:                                               ; preds = %63, %59, %55, %52
  store i32 -1, ptr %2, align 4, !dbg !2506, !tbaa !1157, !DIAssignID !2507
  call void @llvm.dbg.assign(metadata i32 -1, metadata !2434, metadata !DIExpression(), metadata !2507, metadata ptr %2, metadata !DIExpression()), !dbg !2445
  br label %68, !dbg !2508

68:                                               ; preds = %67, %63, %38
  call void @free(ptr noundef nonnull %35) #41, !dbg !2509
  %69 = load i32, ptr %2, align 4, !dbg !2510
  br label %70

70:                                               ; preds = %68, %32
  %71 = phi i32 [ %69, %68 ], [ %33, %32 ], !dbg !2510
  %72 = icmp ugt i32 %71, 64, !dbg !2512
  br i1 %72, label %73, label %76, !dbg !2512

73:                                               ; preds = %70
  %74 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1.3, i32 noundef 5) #41, !dbg !2513
  %75 = call ptr @quote(ptr noundef nonnull %0) #41, !dbg !2513
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %74, ptr noundef %75) #41, !dbg !2513
  br label %76, !dbg !2515

76:                                               ; preds = %70, %73
  %77 = phi i32 [ -1, %73 ], [ %71, %70 ], !dbg !2445
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #41, !dbg !2516
  ret i32 %77, !dbg !2516
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare !dbg !2517 i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i1 @c_isalnum(i32 noundef %0) local_unnamed_addr #17 !dbg !2521 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2524, metadata !DIExpression()), !dbg !2525
  switch i32 %0, label %2 [
    i32 48, label %3
    i32 49, label %3
    i32 50, label %3
    i32 51, label %3
    i32 52, label %3
    i32 53, label %3
    i32 54, label %3
    i32 55, label %3
    i32 56, label %3
    i32 57, label %3
    i32 97, label %3
    i32 98, label %3
    i32 99, label %3
    i32 100, label %3
    i32 101, label %3
    i32 102, label %3
    i32 103, label %3
    i32 104, label %3
    i32 105, label %3
    i32 106, label %3
    i32 107, label %3
    i32 108, label %3
    i32 109, label %3
    i32 110, label %3
    i32 111, label %3
    i32 112, label %3
    i32 113, label %3
    i32 114, label %3
    i32 115, label %3
    i32 116, label %3
    i32 117, label %3
    i32 118, label %3
    i32 119, label %3
    i32 120, label %3
    i32 121, label %3
    i32 122, label %3
    i32 65, label %3
    i32 66, label %3
    i32 67, label %3
    i32 68, label %3
    i32 69, label %3
    i32 70, label %3
    i32 71, label %3
    i32 72, label %3
    i32 73, label %3
    i32 74, label %3
    i32 75, label %3
    i32 76, label %3
    i32 77, label %3
    i32 78, label %3
    i32 79, label %3
    i32 80, label %3
    i32 81, label %3
    i32 82, label %3
    i32 83, label %3
    i32 84, label %3
    i32 85, label %3
    i32 86, label %3
    i32 87, label %3
    i32 88, label %3
    i32 89, label %3
    i32 90, label %3
  ], !dbg !2526

2:                                                ; preds = %1
  br label %3, !dbg !2527

3:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %2
  %4 = phi i1 [ false, %2 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], !dbg !2529
  ret i1 %4, !dbg !2530
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i1 @c_isalpha(i32 noundef %0) local_unnamed_addr #17 !dbg !2531 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2533, metadata !DIExpression()), !dbg !2534
  %2 = add i32 %0, -65, !dbg !2535
  %3 = icmp ult i32 %2, 58, !dbg !2535
  %4 = zext nneg i32 %2 to i58, !dbg !2535
  %5 = lshr i58 -4227858433, %4, !dbg !2535
  %6 = and i58 %5, 1, !dbg !2535
  %7 = icmp ne i58 %6, 0, !dbg !2535
  %8 = select i1 %3, i1 %7, i1 false, !dbg !2535
  ret i1 %8, !dbg !2536
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i1 @c_isascii(i32 noundef %0) local_unnamed_addr #17 !dbg !2537 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2539, metadata !DIExpression()), !dbg !2540
  %2 = icmp ult i32 %0, 128, !dbg !2541
  ret i1 %2, !dbg !2542
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i1 @c_isblank(i32 noundef %0) local_unnamed_addr #17 !dbg !2543 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2545, metadata !DIExpression()), !dbg !2546
  %2 = icmp eq i32 %0, 32, !dbg !2547
  %3 = icmp eq i32 %0, 9, !dbg !2548
  %4 = or i1 %2, %3, !dbg !2548
  ret i1 %4, !dbg !2549
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i1 @c_iscntrl(i32 noundef %0) local_unnamed_addr #17 !dbg !2550 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2552, metadata !DIExpression()), !dbg !2553
  switch i32 %0, label %2 [
    i32 7, label %3
    i32 8, label %3
    i32 12, label %3
    i32 10, label %3
    i32 13, label %3
    i32 9, label %3
    i32 11, label %3
    i32 0, label %3
    i32 1, label %3
    i32 2, label %3
    i32 3, label %3
    i32 4, label %3
    i32 5, label %3
    i32 6, label %3
    i32 14, label %3
    i32 15, label %3
    i32 16, label %3
    i32 17, label %3
    i32 18, label %3
    i32 19, label %3
    i32 20, label %3
    i32 21, label %3
    i32 22, label %3
    i32 23, label %3
    i32 24, label %3
    i32 25, label %3
    i32 26, label %3
    i32 27, label %3
    i32 28, label %3
    i32 29, label %3
    i32 30, label %3
    i32 31, label %3
    i32 127, label %3
  ], !dbg !2554

2:                                                ; preds = %1
  br label %3, !dbg !2555

3:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %2
  %4 = phi i1 [ false, %2 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], !dbg !2557
  ret i1 %4, !dbg !2558
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i1 @c_isdigit(i32 noundef %0) local_unnamed_addr #17 !dbg !2559 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2561, metadata !DIExpression()), !dbg !2562
  %2 = add i32 %0, -48, !dbg !2563
  %3 = icmp ult i32 %2, 10, !dbg !2563
  ret i1 %3, !dbg !2564
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i1 @c_isgraph(i32 noundef %0) local_unnamed_addr #17 !dbg !2565 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2567, metadata !DIExpression()), !dbg !2568
  %2 = add i32 %0, -33, !dbg !2569
  %3 = icmp ult i32 %2, 94, !dbg !2569
  ret i1 %3, !dbg !2570
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i1 @c_islower(i32 noundef %0) local_unnamed_addr #17 !dbg !2571 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2573, metadata !DIExpression()), !dbg !2574
  %2 = add i32 %0, -97, !dbg !2575
  %3 = icmp ult i32 %2, 26, !dbg !2575
  ret i1 %3, !dbg !2576
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i1 @c_isprint(i32 noundef %0) local_unnamed_addr #17 !dbg !2577 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2579, metadata !DIExpression()), !dbg !2580
  %2 = add i32 %0, -32, !dbg !2581
  %3 = icmp ult i32 %2, 95, !dbg !2581
  ret i1 %3, !dbg !2582
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i1 @c_ispunct(i32 noundef %0) local_unnamed_addr #17 !dbg !2583 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2585, metadata !DIExpression()), !dbg !2586
  switch i32 %0, label %2 [
    i32 33, label %3
    i32 34, label %3
    i32 35, label %3
    i32 36, label %3
    i32 37, label %3
    i32 38, label %3
    i32 39, label %3
    i32 40, label %3
    i32 41, label %3
    i32 42, label %3
    i32 43, label %3
    i32 44, label %3
    i32 45, label %3
    i32 46, label %3
    i32 47, label %3
    i32 58, label %3
    i32 59, label %3
    i32 60, label %3
    i32 61, label %3
    i32 62, label %3
    i32 63, label %3
    i32 64, label %3
    i32 91, label %3
    i32 92, label %3
    i32 93, label %3
    i32 94, label %3
    i32 95, label %3
    i32 96, label %3
    i32 123, label %3
    i32 124, label %3
    i32 125, label %3
    i32 126, label %3
  ], !dbg !2587

2:                                                ; preds = %1
  br label %3, !dbg !2588

3:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %2
  %4 = phi i1 [ false, %2 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], !dbg !2590
  ret i1 %4, !dbg !2591
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i1 @c_isspace(i32 noundef %0) local_unnamed_addr #17 !dbg !2592 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2594, metadata !DIExpression()), !dbg !2595
  %2 = icmp ult i32 %0, 33, !dbg !2596
  %3 = zext nneg i32 %0 to i33, !dbg !2596
  %4 = lshr i33 -4294951424, %3, !dbg !2596
  %5 = and i33 %4, 1, !dbg !2596
  %6 = icmp ne i33 %5, 0, !dbg !2596
  %7 = select i1 %2, i1 %6, i1 false, !dbg !2596
  ret i1 %7, !dbg !2597
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i1 @c_isupper(i32 noundef %0) local_unnamed_addr #17 !dbg !2598 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2600, metadata !DIExpression()), !dbg !2601
  %2 = add i32 %0, -65, !dbg !2602
  %3 = icmp ult i32 %2, 26, !dbg !2602
  ret i1 %3, !dbg !2603
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i1 @c_isxdigit(i32 noundef %0) local_unnamed_addr #17 !dbg !2604 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2606, metadata !DIExpression()), !dbg !2607
  %2 = add i32 %0, -48, !dbg !2608
  %3 = icmp ult i32 %2, 55, !dbg !2608
  %4 = zext nneg i32 %2 to i55, !dbg !2608
  %5 = lshr i55 -562949945162753, %4, !dbg !2608
  %6 = and i55 %5, 1, !dbg !2608
  %7 = icmp ne i55 %6, 0, !dbg !2608
  %8 = select i1 %3, i1 %7, i1 false, !dbg !2608
  ret i1 %8, !dbg !2609
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @c_tolower(i32 noundef %0) local_unnamed_addr #17 !dbg !2610 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2614, metadata !DIExpression()), !dbg !2615
  %2 = add i32 %0, -65, !dbg !2616
  %3 = icmp ult i32 %2, 26, !dbg !2616
  %4 = add nsw i32 %0, 32, !dbg !2616
  %5 = select i1 %3, i32 %4, i32 %0, !dbg !2616
  ret i32 %5, !dbg !2617
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @c_toupper(i32 noundef %0) local_unnamed_addr #17 !dbg !2618 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2620, metadata !DIExpression()), !dbg !2621
  %2 = add i32 %0, -97, !dbg !2622
  %3 = icmp ult i32 %2, 26, !dbg !2622
  %4 = add nsw i32 %0, -32, !dbg !2622
  %5 = select i1 %3, i32 %4, i32 %0, !dbg !2622
  ret i32 %5, !dbg !2623
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #18 !dbg !2624 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2626, metadata !DIExpression()), !dbg !2627
  store ptr %0, ptr @file_name, align 8, !dbg !2628, !tbaa !1075
  ret void, !dbg !2629
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #18 !dbg !2630 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2634, metadata !DIExpression()), !dbg !2635
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !2636, !tbaa !2637
  ret void, !dbg !2638
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !2639 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2644, !tbaa !1075
  %2 = tail call i32 @close_stream(ptr noundef %1) #41, !dbg !2645
  %3 = icmp eq i32 %2, 0, !dbg !2646
  br i1 %3, label %22, label %4, !dbg !2647

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !2648, !tbaa !2637, !range !1475, !noundef !1125
  %6 = icmp eq i8 %5, 0, !dbg !2648
  br i1 %6, label %11, label %7, !dbg !2649

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #44, !dbg !2650
  %9 = load i32, ptr %8, align 4, !dbg !2650, !tbaa !1157
  %10 = icmp eq i32 %9, 32, !dbg !2651
  br i1 %10, label %22, label %11, !dbg !2652

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.1.54, i32 noundef 5) #41, !dbg !2653
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !2641, metadata !DIExpression()), !dbg !2654
  %13 = load ptr, ptr @file_name, align 8, !dbg !2655, !tbaa !1075
  %14 = icmp eq ptr %13, null, !dbg !2655
  %15 = tail call ptr @__errno_location() #44, !dbg !2657
  %16 = load i32, ptr %15, align 4, !dbg !2657, !tbaa !1157
  br i1 %14, label %19, label %17, !dbg !2658

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #41, !dbg !2659
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.55, ptr noundef %18, ptr noundef %12) #41, !dbg !2659
  br label %20, !dbg !2659

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.56, ptr noundef %12) #41, !dbg !2660
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !2661, !tbaa !1157
  tail call void @_exit(i32 noundef %21) #43, !dbg !2662
  unreachable, !dbg !2662

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !2663, !tbaa !1075
  %24 = tail call i32 @close_stream(ptr noundef %23) #41, !dbg !2665
  %25 = icmp eq i32 %24, 0, !dbg !2666
  br i1 %25, label %28, label %26, !dbg !2667

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !2668, !tbaa !1157
  tail call void @_exit(i32 noundef %27) #43, !dbg !2669
  unreachable, !dbg !2669

28:                                               ; preds = %22
  ret void, !dbg !2670
}

; Function Attrs: noreturn
declare !dbg !2671 void @_exit(i32 noundef) local_unnamed_addr #19

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #20 !dbg !2672 {
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2676, metadata !DIExpression()), !dbg !2680
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2677, metadata !DIExpression()), !dbg !2680
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2678, metadata !DIExpression()), !dbg !2680
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2679, metadata !DIExpression(DW_OP_deref)), !dbg !2680
  tail call fastcc void @flush_stdout(), !dbg !2681
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !2682, !tbaa !1075
  %7 = icmp eq ptr %6, null, !dbg !2682
  br i1 %7, label %9, label %8, !dbg !2684

8:                                                ; preds = %4
  tail call void %6() #41, !dbg !2685
  br label %13, !dbg !2685

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !2686, !tbaa !1075
  %11 = tail call ptr @getprogname() #42, !dbg !2686
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.57, ptr noundef %11) #41, !dbg !2686
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #41, !dbg !2688
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !2688, !tbaa.struct !2689
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !2688
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #41, !dbg !2688
  ret void, !dbg !2690
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !2691 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2693, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata i32 1, metadata !2695, metadata !DIExpression()), !dbg !2698
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #41, !dbg !2701
  %2 = icmp slt i32 %1, 0, !dbg !2702
  br i1 %2, label %6, label %3, !dbg !2703

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !2704, !tbaa !1075
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #41, !dbg !2704
  br label %6, !dbg !2704

6:                                                ; preds = %3, %0
  ret void, !dbg !2705
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !2706 {
  %5 = alloca [1024 x i8], align 1, !DIAssignID !2712
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2708, metadata !DIExpression()), !dbg !2713
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2709, metadata !DIExpression()), !dbg !2713
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2710, metadata !DIExpression()), !dbg !2713
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2711, metadata !DIExpression(DW_OP_deref)), !dbg !2713
  %7 = load ptr, ptr @stderr, align 8, !dbg !2714, !tbaa !1075
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #41, !dbg !2715, !noalias !2759
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !2763
  call void @llvm.dbg.value(metadata ptr %7, metadata !2755, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata ptr %2, metadata !2756, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata ptr poison, metadata !2757, metadata !DIExpression(DW_OP_deref)), !dbg !2764
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #41, !dbg !2715
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #41, !dbg !2715, !noalias !2759
  %9 = load i32, ptr @error_message_count, align 4, !dbg !2765, !tbaa !1157
  %10 = add i32 %9, 1, !dbg !2765
  store i32 %10, ptr @error_message_count, align 4, !dbg !2765, !tbaa !1157
  %11 = icmp eq i32 %1, 0, !dbg !2766
  br i1 %11, label %21, label %12, !dbg !2768

12:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2769, metadata !DIExpression(), metadata !2712, metadata ptr %5, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata i32 %1, metadata !2772, metadata !DIExpression()), !dbg !2777
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #41, !dbg !2779
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #41, !dbg !2780
  call void @llvm.dbg.value(metadata ptr %13, metadata !2773, metadata !DIExpression()), !dbg !2777
  %14 = icmp eq ptr %13, null, !dbg !2781
  br i1 %14, label %15, label %17, !dbg !2783

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.58, ptr noundef nonnull @.str.5.59, i32 noundef 5) #41, !dbg !2784
  call void @llvm.dbg.value(metadata ptr %16, metadata !2773, metadata !DIExpression()), !dbg !2777
  br label %17, !dbg !2785

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !2777
  call void @llvm.dbg.value(metadata ptr %18, metadata !2773, metadata !DIExpression()), !dbg !2777
  %19 = load ptr, ptr @stderr, align 8, !dbg !2786, !tbaa !1075
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.60, ptr noundef %18) #41, !dbg !2786
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #41, !dbg !2787
  br label %21, !dbg !2788

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !2789, !tbaa !1075
  call void @llvm.dbg.value(metadata i32 10, metadata !2790, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata ptr %22, metadata !2796, metadata !DIExpression()), !dbg !2797
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !2799
  %24 = load ptr, ptr %23, align 8, !dbg !2799, !tbaa !2800
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !2799
  %26 = load ptr, ptr %25, align 8, !dbg !2799, !tbaa !2802
  %27 = icmp ult ptr %24, %26, !dbg !2799
  br i1 %27, label %30, label %28, !dbg !2799, !prof !2803

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #41, !dbg !2799
  br label %32, !dbg !2799

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !2799
  store ptr %31, ptr %23, align 8, !dbg !2799, !tbaa !2800
  store i8 10, ptr %24, align 1, !dbg !2799, !tbaa !1166
  br label %32, !dbg !2799

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !2804, !tbaa !1075
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #41, !dbg !2804
  %35 = icmp eq i32 %0, 0, !dbg !2805
  br i1 %35, label %37, label %36, !dbg !2807

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #43, !dbg !2808
  unreachable, !dbg !2808

37:                                               ; preds = %32
  ret void, !dbg !2809
}

declare !dbg !2810 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !2813 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2816 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !2819 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !2822 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !2826 {
  %4 = alloca %struct.__va_list, align 8, !DIAssignID !2834
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2833, metadata !DIExpression(), metadata !2834, metadata ptr %4, metadata !DIExpression()), !dbg !2835
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2830, metadata !DIExpression()), !dbg !2835
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2831, metadata !DIExpression()), !dbg !2835
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2832, metadata !DIExpression()), !dbg !2835
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #41, !dbg !2836
  call void @llvm.va_start(ptr nonnull %4), !dbg !2837
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #41, !dbg !2838
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !2838, !tbaa.struct !2689
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #48, !dbg !2838
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #41, !dbg !2838
  call void @llvm.va_end(ptr nonnull %4), !dbg !2839
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #41, !dbg !2840
  ret void, !dbg !2840
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #21

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #20 !dbg !675 {
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !691, metadata !DIExpression()), !dbg !2841
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !692, metadata !DIExpression()), !dbg !2841
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !693, metadata !DIExpression()), !dbg !2841
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !694, metadata !DIExpression()), !dbg !2841
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !695, metadata !DIExpression()), !dbg !2841
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !696, metadata !DIExpression(DW_OP_deref)), !dbg !2841
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !2842, !tbaa !1157
  %9 = icmp eq i32 %8, 0, !dbg !2842
  br i1 %9, label %24, label %10, !dbg !2844

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !2845, !tbaa !1157
  %12 = icmp eq i32 %11, %3, !dbg !2848
  br i1 %12, label %13, label %23, !dbg !2849

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !2850, !tbaa !1075
  %15 = icmp eq ptr %14, %2, !dbg !2851
  br i1 %15, label %37, label %16, !dbg !2852

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !2853
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !2854
  br i1 %19, label %20, label %23, !dbg !2854

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #42, !dbg !2855
  %22 = icmp eq i32 %21, 0, !dbg !2856
  br i1 %22, label %37, label %23, !dbg !2857

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !2858, !tbaa !1075
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !2859, !tbaa !1157
  br label %24, !dbg !2860

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !2861
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !2862, !tbaa !1075
  %26 = icmp eq ptr %25, null, !dbg !2862
  br i1 %26, label %28, label %27, !dbg !2864

27:                                               ; preds = %24
  tail call void %25() #41, !dbg !2865
  br label %32, !dbg !2865

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !2866, !tbaa !1075
  %30 = tail call ptr @getprogname() #42, !dbg !2866
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.63, ptr noundef %30) #41, !dbg !2866
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !2868, !tbaa !1075
  %34 = icmp eq ptr %2, null, !dbg !2868
  %35 = select i1 %34, ptr @.str.3.64, ptr @.str.2.65, !dbg !2868
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #41, !dbg !2868
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #41, !dbg !2869
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !2869, !tbaa.struct !2689
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !2869
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #41, !dbg !2869
  br label %37, !dbg !2870

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !2870
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !2871 {
  %6 = alloca %struct.__va_list, align 8, !DIAssignID !2881
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2880, metadata !DIExpression(), metadata !2881, metadata ptr %6, metadata !DIExpression()), !dbg !2882
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2875, metadata !DIExpression()), !dbg !2882
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2876, metadata !DIExpression()), !dbg !2882
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2877, metadata !DIExpression()), !dbg !2882
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2878, metadata !DIExpression()), !dbg !2882
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2879, metadata !DIExpression()), !dbg !2882
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #41, !dbg !2883
  call void @llvm.va_start(ptr nonnull %6), !dbg !2884
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #41, !dbg !2885
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !2885, !tbaa.struct !2689
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #48, !dbg !2885
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #41, !dbg !2885
  call void @llvm.va_end(ptr nonnull %6), !dbg !2886
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #41, !dbg !2887
  ret void, !dbg !2887
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #22 !dbg !2888 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2891, !tbaa !1075
  ret ptr %1, !dbg !2892
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #23 !dbg !2893 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2895, metadata !DIExpression()), !dbg !2898
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #42, !dbg !2899
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2896, metadata !DIExpression()), !dbg !2898
  %3 = icmp eq ptr %2, null, !dbg !2900
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2900
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2900
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2897, metadata !DIExpression()), !dbg !2898
  %6 = ptrtoint ptr %5 to i64, !dbg !2901
  %7 = ptrtoint ptr %0 to i64, !dbg !2901
  %8 = sub i64 %6, %7, !dbg !2901
  %9 = icmp sgt i64 %8, 6, !dbg !2903
  br i1 %9, label %10, label %19, !dbg !2904

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2905
  call void @llvm.dbg.value(metadata ptr %11, metadata !2906, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata ptr @.str.74, metadata !2911, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata i64 7, metadata !2912, metadata !DIExpression()), !dbg !2913
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.74, i64 7), !dbg !2915
  %13 = icmp eq i32 %12, 0, !dbg !2916
  br i1 %13, label %14, label %19, !dbg !2917

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2895, metadata !DIExpression()), !dbg !2898
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.75, i64 noundef 3) #42, !dbg !2918
  %16 = icmp eq i32 %15, 0, !dbg !2921
  %17 = select i1 %16, i64 3, i64 0, !dbg !2922
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !2922
  br label %19, !dbg !2922

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2898
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2897, metadata !DIExpression()), !dbg !2898
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !2895, metadata !DIExpression()), !dbg !2898
  store ptr %20, ptr @program_name, align 8, !dbg !2923, !tbaa !1075
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2924, !tbaa !1075
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2925, !tbaa !1075
  ret void, !dbg !2926
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2927 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #24

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !730 {
  %3 = alloca i32, align 4, !DIAssignID !2928
  call void @llvm.dbg.assign(metadata i1 undef, metadata !740, metadata !DIExpression(), metadata !2928, metadata ptr %3, metadata !DIExpression()), !dbg !2929
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2930
  call void @llvm.dbg.assign(metadata i1 undef, metadata !745, metadata !DIExpression(), metadata !2930, metadata ptr %4, metadata !DIExpression()), !dbg !2929
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !737, metadata !DIExpression()), !dbg !2929
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !738, metadata !DIExpression()), !dbg !2929
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #41, !dbg !2931
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !739, metadata !DIExpression()), !dbg !2929
  %6 = icmp eq ptr %5, %0, !dbg !2932
  br i1 %6, label %7, label %14, !dbg !2934

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #41, !dbg !2935
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #41, !dbg !2936
  call void @llvm.dbg.value(metadata ptr %4, metadata !2937, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata ptr %4, metadata !2946, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata i32 0, metadata !2951, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata i64 8, metadata !2952, metadata !DIExpression()), !dbg !2953
  store i64 0, ptr %4, align 8, !dbg !2955
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #41, !dbg !2956
  %9 = icmp eq i64 %8, 2, !dbg !2958
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2959
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2929
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #41, !dbg !2960
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #41, !dbg !2960
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2929
  ret ptr %15, !dbg !2960
}

; Function Attrs: nounwind
declare !dbg !2961 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2967 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2972, metadata !DIExpression()), !dbg !2975
  %2 = tail call ptr @__errno_location() #44, !dbg !2976
  %3 = load i32, ptr %2, align 4, !dbg !2976, !tbaa !1157
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2973, metadata !DIExpression()), !dbg !2975
  %4 = icmp eq ptr %0, null, !dbg !2977
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2977
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #49, !dbg !2978
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2974, metadata !DIExpression()), !dbg !2975
  store i32 %3, ptr %2, align 4, !dbg !2979, !tbaa !1157
  ret ptr %6, !dbg !2980
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #25 !dbg !2981 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2987, metadata !DIExpression()), !dbg !2988
  %2 = icmp eq ptr %0, null, !dbg !2989
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2989
  %4 = load i32, ptr %3, align 8, !dbg !2990, !tbaa !2991
  ret i32 %4, !dbg !2993
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #26 !dbg !2994 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2998, metadata !DIExpression()), !dbg !3000
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2999, metadata !DIExpression()), !dbg !3000
  %3 = icmp eq ptr %0, null, !dbg !3001
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !3001
  store i32 %1, ptr %4, align 8, !dbg !3002, !tbaa !2991
  ret void, !dbg !3003
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #27 !dbg !3004 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3008, metadata !DIExpression()), !dbg !3016
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !3009, metadata !DIExpression()), !dbg !3016
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3010, metadata !DIExpression()), !dbg !3016
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !3011, metadata !DIExpression()), !dbg !3016
  %4 = icmp eq ptr %0, null, !dbg !3017
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !3017
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3018
  %7 = lshr i8 %1, 5, !dbg !3019
  %8 = zext nneg i8 %7 to i64, !dbg !3019
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !3020
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !3012, metadata !DIExpression()), !dbg !3016
  %10 = and i8 %1, 31, !dbg !3021
  %11 = zext nneg i8 %10 to i32, !dbg !3021
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !3014, metadata !DIExpression()), !dbg !3016
  %12 = load i32, ptr %9, align 4, !dbg !3022, !tbaa !1157
  %13 = lshr i32 %12, %11, !dbg !3023
  %14 = and i32 %13, 1, !dbg !3024
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !3015, metadata !DIExpression()), !dbg !3016
  %15 = xor i32 %13, %2, !dbg !3025
  %16 = and i32 %15, 1, !dbg !3025
  %17 = shl nuw i32 %16, %11, !dbg !3026
  %18 = xor i32 %17, %12, !dbg !3027
  store i32 %18, ptr %9, align 4, !dbg !3027, !tbaa !1157
  ret i32 %14, !dbg !3028
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #27 !dbg !3029 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3033, metadata !DIExpression()), !dbg !3036
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3034, metadata !DIExpression()), !dbg !3036
  %3 = icmp eq ptr %0, null, !dbg !3037
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !3039
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3033, metadata !DIExpression()), !dbg !3036
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !3040
  %6 = load i32, ptr %5, align 4, !dbg !3040, !tbaa !3041
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !3035, metadata !DIExpression()), !dbg !3036
  store i32 %1, ptr %5, align 4, !dbg !3042, !tbaa !3041
  ret i32 %6, !dbg !3043
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3044 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3048, metadata !DIExpression()), !dbg !3051
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3049, metadata !DIExpression()), !dbg !3051
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3050, metadata !DIExpression()), !dbg !3051
  %4 = icmp eq ptr %0, null, !dbg !3052
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !3054
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !3048, metadata !DIExpression()), !dbg !3051
  store i32 10, ptr %5, align 8, !dbg !3055, !tbaa !2991
  %6 = icmp ne ptr %1, null, !dbg !3056
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3058
  br i1 %8, label %10, label %9, !dbg !3058

9:                                                ; preds = %3
  tail call void @abort() #43, !dbg !3059
  unreachable, !dbg !3059

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3060
  store ptr %1, ptr %11, align 8, !dbg !3061, !tbaa !3062
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3063
  store ptr %2, ptr %12, align 8, !dbg !3064, !tbaa !3065
  ret void, !dbg !3066
}

; Function Attrs: noreturn nounwind
declare !dbg !3067 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !3068 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3072, metadata !DIExpression()), !dbg !3080
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3073, metadata !DIExpression()), !dbg !3080
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3074, metadata !DIExpression()), !dbg !3080
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3075, metadata !DIExpression()), !dbg !3080
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3076, metadata !DIExpression()), !dbg !3080
  %6 = icmp eq ptr %4, null, !dbg !3081
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !3081
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !3077, metadata !DIExpression()), !dbg !3080
  %8 = tail call ptr @__errno_location() #44, !dbg !3082
  %9 = load i32, ptr %8, align 4, !dbg !3082, !tbaa !1157
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !3078, metadata !DIExpression()), !dbg !3080
  %10 = load i32, ptr %7, align 8, !dbg !3083, !tbaa !2991
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !3084
  %12 = load i32, ptr %11, align 4, !dbg !3084, !tbaa !3041
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !3085
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !3086
  %15 = load ptr, ptr %14, align 8, !dbg !3086, !tbaa !3062
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !3087
  %17 = load ptr, ptr %16, align 8, !dbg !3087, !tbaa !3065
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !3088
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !3079, metadata !DIExpression()), !dbg !3080
  store i32 %9, ptr %8, align 4, !dbg !3089, !tbaa !1157
  ret i64 %18, !dbg !3090
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !3091 {
  %10 = alloca i32, align 4, !DIAssignID !3159
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !3160
  %12 = alloca i32, align 4, !DIAssignID !3161
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !3162
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !3163
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3137, metadata !DIExpression(), metadata !3163, metadata ptr %14, metadata !DIExpression()), !dbg !3164
  %15 = alloca i32, align 4, !DIAssignID !3165
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3140, metadata !DIExpression(), metadata !3165, metadata ptr %15, metadata !DIExpression()), !dbg !3166
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3097, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3098, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3099, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3100, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !3101, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !3102, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3103, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !3104, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !3105, metadata !DIExpression()), !dbg !3167
  %16 = tail call i64 @__ctype_get_mb_cur_max() #41, !dbg !3168
  %17 = icmp eq i64 %16, 1, !dbg !3169
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !3106, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3167
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3107, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3108, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata ptr null, metadata !3109, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3110, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3111, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !3112, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3167
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3113, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3114, metadata !DIExpression()), !dbg !3167
  %18 = and i32 %5, 2, !dbg !3170
  %19 = icmp ne i32 %18, 0, !dbg !3170
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !3170

27:                                               ; preds = %585, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %585 ]
  %29 = phi ptr [ %7, %9 ], [ %103, %585 ]
  %30 = phi ptr [ %8, %9 ], [ %104, %585 ]
  %31 = phi i64 [ %3, %9 ], [ %.lcssa60, %585 ]
  %32 = phi i64 [ 0, %9 ], [ %.lcssa44, %585 ], !dbg !3171
  %33 = phi ptr [ null, %9 ], [ %106, %585 ], !dbg !3172
  %34 = phi i64 [ 0, %9 ], [ %107, %585 ], !dbg !3173
  %35 = phi i1 [ false, %9 ], [ %108, %585 ]
  %36 = phi i1 [ %19, %9 ], [ false, %585 ]
  %37 = phi i1 [ false, %9 ], [ %.lcssa38, %585 ]
  %38 = phi i1 [ true, %9 ], [ false, %585 ]
  %39 = phi i64 [ %1, %9 ], [ %.lcssa44, %585 ]
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !3098, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3114, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3113, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3112, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3111, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !3110, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !3109, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !3108, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3107, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !3100, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !3105, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata ptr %29, metadata !3104, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !3101, metadata !DIExpression()), !dbg !3167
  call void @llvm.dbg.label(metadata !3115), !dbg !3174
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3116, metadata !DIExpression()), !dbg !3167
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
  ], !dbg !3175

40:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3112, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i32 5, metadata !3101, metadata !DIExpression()), !dbg !3167
  br label %101, !dbg !3176

41:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3112, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i32 5, metadata !3101, metadata !DIExpression()), !dbg !3167
  br i1 %36, label %101, label %42, !dbg !3176

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !3177
  br i1 %43, label %101, label %44, !dbg !3181

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !3177, !tbaa !1166
  br label %101, !dbg !3177

45:                                               ; preds = %27, %27
  call void @llvm.dbg.assign(metadata i1 undef, metadata !831, metadata !DIExpression(), metadata !3161, metadata ptr %12, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.assign(metadata i1 undef, metadata !832, metadata !DIExpression(), metadata !3162, metadata ptr %13, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata ptr @.str.11.131, metadata !828, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i32 %28, metadata !829, metadata !DIExpression()), !dbg !3182
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.132, ptr noundef nonnull @.str.11.131, i32 noundef 5) #41, !dbg !3186
  call void @llvm.dbg.value(metadata ptr %46, metadata !830, metadata !DIExpression()), !dbg !3182
  %47 = icmp eq ptr %46, @.str.11.131, !dbg !3187
  br i1 %47, label %48, label %57, !dbg !3189

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #41, !dbg !3190
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #41, !dbg !3191
  call void @llvm.dbg.value(metadata ptr %13, metadata !3192, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata ptr %13, metadata !3200, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 0, metadata !3203, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i64 8, metadata !3204, metadata !DIExpression()), !dbg !3205
  store i64 0, ptr %13, align 8, !dbg !3207
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #41, !dbg !3208
  %50 = icmp eq i64 %49, 3, !dbg !3210
  %51 = load i32, ptr %12, align 4
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !3211
  %54 = icmp eq i32 %28, 9, !dbg !3211
  %55 = select i1 %54, ptr @.str.10.133, ptr @.str.12.134, !dbg !3211
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !3211
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #41, !dbg !3212
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #41, !dbg !3212
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !3182
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !3104, metadata !DIExpression()), !dbg !3167
  call void @llvm.dbg.assign(metadata i1 undef, metadata !831, metadata !DIExpression(), metadata !3159, metadata ptr %10, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.assign(metadata i1 undef, metadata !832, metadata !DIExpression(), metadata !3160, metadata ptr %11, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata ptr @.str.12.134, metadata !828, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i32 %28, metadata !829, metadata !DIExpression()), !dbg !3213
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.132, ptr noundef nonnull @.str.12.134, i32 noundef 5) #41, !dbg !3215
  call void @llvm.dbg.value(metadata ptr %59, metadata !830, metadata !DIExpression()), !dbg !3213
  %60 = icmp eq ptr %59, @.str.12.134, !dbg !3216
  br i1 %60, label %61, label %70, !dbg !3217

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #41, !dbg !3218
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #41, !dbg !3219
  call void @llvm.dbg.value(metadata ptr %11, metadata !3192, metadata !DIExpression()), !dbg !3220
  call void @llvm.dbg.value(metadata ptr %11, metadata !3200, metadata !DIExpression()), !dbg !3222
  call void @llvm.dbg.value(metadata i32 0, metadata !3203, metadata !DIExpression()), !dbg !3222
  call void @llvm.dbg.value(metadata i64 8, metadata !3204, metadata !DIExpression()), !dbg !3222
  store i64 0, ptr %11, align 8, !dbg !3224
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #41, !dbg !3225
  %63 = icmp eq i64 %62, 3, !dbg !3226
  %64 = load i32, ptr %10, align 4
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !3227
  %67 = icmp eq i32 %28, 9, !dbg !3227
  %68 = select i1 %67, ptr @.str.10.133, ptr @.str.12.134, !dbg !3227
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !3227
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #41, !dbg !3228
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #41, !dbg !3228
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !3105, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !3104, metadata !DIExpression()), !dbg !3167
  br i1 %36, label %88, label %73, !dbg !3229

73:                                               ; preds = %70
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !3117, metadata !DIExpression()), !dbg !3230
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3107, metadata !DIExpression()), !dbg !3167
  %74 = load i8, ptr %71, align 1, !dbg !3231, !tbaa !1166
  %75 = icmp eq i8 %74, 0, !dbg !3233
  br i1 %75, label %88, label %.preheader11, !dbg !3233

.preheader11:                                     ; preds = %73
  br label %76, !dbg !3233

76:                                               ; preds = %.preheader11, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %.preheader11 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %.preheader11 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %.preheader11 ]
  tail call void @llvm.dbg.value(metadata ptr %78, metadata !3117, metadata !DIExpression()), !dbg !3230
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !3107, metadata !DIExpression()), !dbg !3167
  %80 = icmp ult i64 %79, %39, !dbg !3234
  br i1 %80, label %81, label %83, !dbg !3237

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !3234
  store i8 %77, ptr %82, align 1, !dbg !3234, !tbaa !1166
  br label %83, !dbg !3234

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !3237
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !3107, metadata !DIExpression()), !dbg !3167
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !3238
  tail call void @llvm.dbg.value(metadata ptr %85, metadata !3117, metadata !DIExpression()), !dbg !3230
  %86 = load i8, ptr %85, align 1, !dbg !3231, !tbaa !1166
  %87 = icmp eq i8 %86, 0, !dbg !3233
  br i1 %87, label %.loopexit12, label %76, !dbg !3233, !llvm.loop !3239

.loopexit12:                                      ; preds = %83
  %.lcssa14 = phi i64 [ %84, %83 ], !dbg !3237
  br label %88, !dbg !3241

88:                                               ; preds = %.loopexit12, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %.lcssa14, %.loopexit12 ], !dbg !3242
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !3107, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3111, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !3109, metadata !DIExpression()), !dbg !3167
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #42, !dbg !3241
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !3110, metadata !DIExpression()), !dbg !3167
  br label %101, !dbg !3243

91:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3111, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3112, metadata !DIExpression()), !dbg !3167
  br label %101, !dbg !3244

92:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3112, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3111, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i32 2, metadata !3101, metadata !DIExpression()), !dbg !3167
  br label %101, !dbg !3245

93:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3112, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3111, metadata !DIExpression()), !dbg !3167
  br i1 %36, label %101, label %95, !dbg !3246

94:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3112, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3111, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i32 2, metadata !3101, metadata !DIExpression()), !dbg !3167
  br i1 %36, label %101, label %95, !dbg !3245

95:                                               ; preds = %93, %94
  %96 = phi i1 [ %35, %94 ], [ true, %93 ]
  %97 = icmp eq i64 %39, 0, !dbg !3247
  br i1 %97, label %101, label %98, !dbg !3251

98:                                               ; preds = %95
  store i8 39, ptr %0, align 1, !dbg !3247, !tbaa !1166
  br label %101, !dbg !3247

99:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3112, metadata !DIExpression()), !dbg !3167
  br label %101, !dbg !3252

100:                                              ; preds = %27
  call void @abort() #43, !dbg !3253
  unreachable, !dbg !3253

101:                                              ; preds = %93, %91, %92, %40, %94, %98, %95, %27, %41, %44, %42, %99, %88
  %102 = phi i32 [ 0, %99 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %95 ], [ 2, %98 ], [ 2, %94 ], [ 5, %40 ], [ 2, %91 ], [ 2, %92 ], [ 2, %93 ]
  %103 = phi ptr [ %29, %99 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %95 ], [ %29, %98 ], [ %29, %94 ], [ %29, %40 ], [ %29, %91 ], [ %29, %92 ], [ %29, %93 ]
  %104 = phi ptr [ %30, %99 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %95 ], [ %30, %98 ], [ %30, %94 ], [ %30, %40 ], [ %30, %91 ], [ %30, %92 ], [ %30, %93 ]
  %105 = phi i64 [ 0, %99 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %95 ], [ 1, %98 ], [ 0, %94 ], [ 0, %40 ], [ 0, %91 ], [ 0, %92 ], [ 0, %93 ], !dbg !3242
  %106 = phi ptr [ %33, %99 ], [ %72, %88 ], [ @.str.10.133, %42 ], [ @.str.10.133, %44 ], [ @.str.10.133, %41 ], [ %33, %27 ], [ @.str.12.134, %95 ], [ @.str.12.134, %98 ], [ @.str.12.134, %94 ], [ @.str.10.133, %40 ], [ @.str.12.134, %91 ], [ @.str.12.134, %92 ], [ @.str.12.134, %93 ], !dbg !3167
  %107 = phi i64 [ %34, %99 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %95 ], [ 1, %98 ], [ 1, %94 ], [ 1, %40 ], [ 1, %91 ], [ 1, %92 ], [ 1, %93 ], !dbg !3167
  %108 = phi i1 [ %35, %99 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %96, %95 ], [ %96, %98 ], [ %35, %94 ], [ true, %40 ], [ %35, %91 ], [ true, %92 ], [ %35, %93 ]
  %109 = phi i1 [ false, %99 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %95 ], [ false, %98 ], [ true, %94 ], [ true, %40 ], [ true, %91 ], [ true, %92 ], [ true, %93 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3112, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3111, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !3110, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata ptr %106, metadata !3109, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i64 %105, metadata !3107, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata ptr %104, metadata !3105, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata ptr %103, metadata !3104, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i32 %102, metadata !3101, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3122, metadata !DIExpression()), !dbg !3254
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
  br label %121, !dbg !3255

121:                                              ; preds = %563, %101
  %122 = phi i64 [ %31, %101 ], [ %564, %563 ]
  %123 = phi i64 [ %105, %101 ], [ %565, %563 ], !dbg !3242
  %124 = phi i64 [ %32, %101 ], [ %566, %563 ], !dbg !3171
  %125 = phi i1 [ %37, %101 ], [ %567, %563 ]
  %126 = phi i1 [ %38, %101 ], [ %568, %563 ]
  %127 = phi i1 [ false, %101 ], [ %569, %563 ]
  %128 = phi i64 [ 0, %101 ], [ %572, %563 ], !dbg !3256
  %129 = phi i64 [ %39, %101 ], [ %571, %563 ]
  tail call void @llvm.dbg.value(metadata i64 %129, metadata !3098, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i64 %128, metadata !3122, metadata !DIExpression()), !dbg !3254
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3116, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3114, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3113, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !3108, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i64 %123, metadata !3107, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i64 %122, metadata !3100, metadata !DIExpression()), !dbg !3167
  %130 = icmp eq i64 %122, -1, !dbg !3257
  br i1 %130, label %131, label %135, !dbg !3258

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !3259
  %133 = load i8, ptr %132, align 1, !dbg !3259, !tbaa !1166
  %134 = icmp eq i8 %133, 0, !dbg !3260
  br i1 %134, label %573, label %137, !dbg !3261

135:                                              ; preds = %121
  %136 = icmp eq i64 %128, %122, !dbg !3262
  br i1 %136, label %573, label %137, !dbg !3261

137:                                              ; preds = %131, %135
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3124, metadata !DIExpression()), !dbg !3263
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3127, metadata !DIExpression()), !dbg !3263
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3128, metadata !DIExpression()), !dbg !3263
  br i1 %113, label %138, label %151, !dbg !3264

138:                                              ; preds = %137
  %139 = add i64 %128, %107, !dbg !3266
  %140 = select i1 %130, i1 %114, i1 false, !dbg !3267
  br i1 %140, label %141, label %143, !dbg !3267

141:                                              ; preds = %138
  %142 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #42, !dbg !3268
  tail call void @llvm.dbg.value(metadata i64 %142, metadata !3100, metadata !DIExpression()), !dbg !3167
  br label %143, !dbg !3269

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %122, %138 ], !dbg !3269
  tail call void @llvm.dbg.value(metadata i64 %144, metadata !3100, metadata !DIExpression()), !dbg !3167
  %145 = icmp ugt i64 %139, %144, !dbg !3270
  br i1 %145, label %151, label %146, !dbg !3271

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !3272
  call void @llvm.dbg.value(metadata ptr %147, metadata !3273, metadata !DIExpression()), !dbg !3278
  call void @llvm.dbg.value(metadata ptr %106, metadata !3276, metadata !DIExpression()), !dbg !3278
  call void @llvm.dbg.value(metadata i64 %107, metadata !3277, metadata !DIExpression()), !dbg !3278
  %148 = call i32 @bcmp(ptr %147, ptr %106, i64 %107), !dbg !3280
  %149 = icmp eq i32 %148, 0, !dbg !3281
  %150 = and i1 %149, %109, !dbg !3282
  br i1 %150, label %.loopexit7, label %151, !dbg !3282

151:                                              ; preds = %146, %143, %137
  %152 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %122, %137 ]
  %153 = phi i1 [ %149, %146 ], [ false, %143 ], [ false, %137 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3124, metadata !DIExpression()), !dbg !3263
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !3100, metadata !DIExpression()), !dbg !3167
  %154 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !3283
  %155 = load i8, ptr %154, align 1, !dbg !3283, !tbaa !1166
  tail call void @llvm.dbg.value(metadata i8 %155, metadata !3129, metadata !DIExpression()), !dbg !3263
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
  ], !dbg !3284

156:                                              ; preds = %151
  br i1 %108, label %157, label %203, !dbg !3285

157:                                              ; preds = %156
  br i1 %109, label %613, label %158, !dbg !3286

158:                                              ; preds = %157
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3127, metadata !DIExpression()), !dbg !3263
  %159 = select i1 %110, i1 true, i1 %127, !dbg !3290
  br i1 %159, label %176, label %160, !dbg !3290

160:                                              ; preds = %158
  %161 = icmp ult i64 %123, %129, !dbg !3292
  br i1 %161, label %162, label %164, !dbg !3296

162:                                              ; preds = %160
  %163 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !3292
  store i8 39, ptr %163, align 1, !dbg !3292, !tbaa !1166
  br label %164, !dbg !3292

164:                                              ; preds = %162, %160
  %165 = add i64 %123, 1, !dbg !3296
  tail call void @llvm.dbg.value(metadata i64 %165, metadata !3107, metadata !DIExpression()), !dbg !3167
  %166 = icmp ult i64 %165, %129, !dbg !3297
  br i1 %166, label %167, label %169, !dbg !3300

167:                                              ; preds = %164
  %168 = getelementptr inbounds i8, ptr %0, i64 %165, !dbg !3297
  store i8 36, ptr %168, align 1, !dbg !3297, !tbaa !1166
  br label %169, !dbg !3297

169:                                              ; preds = %167, %164
  %170 = add i64 %123, 2, !dbg !3300
  tail call void @llvm.dbg.value(metadata i64 %170, metadata !3107, metadata !DIExpression()), !dbg !3167
  %171 = icmp ult i64 %170, %129, !dbg !3301
  br i1 %171, label %172, label %174, !dbg !3304

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, ptr %0, i64 %170, !dbg !3301
  store i8 39, ptr %173, align 1, !dbg !3301, !tbaa !1166
  br label %174, !dbg !3301

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 3, !dbg !3304
  tail call void @llvm.dbg.value(metadata i64 %175, metadata !3107, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3116, metadata !DIExpression()), !dbg !3167
  br label %176, !dbg !3305

176:                                              ; preds = %158, %174
  %177 = phi i64 [ %175, %174 ], [ %123, %158 ], !dbg !3167
  %178 = phi i1 [ true, %174 ], [ %127, %158 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3116, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i64 %177, metadata !3107, metadata !DIExpression()), !dbg !3167
  %179 = icmp ult i64 %177, %129, !dbg !3306
  br i1 %179, label %180, label %182, !dbg !3309

180:                                              ; preds = %176
  %181 = getelementptr inbounds i8, ptr %0, i64 %177, !dbg !3306
  store i8 92, ptr %181, align 1, !dbg !3306, !tbaa !1166
  br label %182, !dbg !3306

182:                                              ; preds = %180, %176
  %183 = add i64 %177, 1, !dbg !3309
  tail call void @llvm.dbg.value(metadata i64 %183, metadata !3107, metadata !DIExpression()), !dbg !3167
  br i1 %110, label %184, label %476, !dbg !3310

184:                                              ; preds = %182
  %185 = add i64 %128, 1, !dbg !3312
  %186 = icmp ult i64 %185, %152, !dbg !3313
  br i1 %186, label %187, label %433, !dbg !3314

187:                                              ; preds = %184
  %188 = getelementptr inbounds i8, ptr %2, i64 %185, !dbg !3315
  %189 = load i8, ptr %188, align 1, !dbg !3315, !tbaa !1166
  %190 = add i8 %189, -48, !dbg !3316
  %191 = icmp ult i8 %190, 10, !dbg !3316
  br i1 %191, label %192, label %433, !dbg !3316

192:                                              ; preds = %187
  %193 = icmp ult i64 %183, %129, !dbg !3317
  br i1 %193, label %194, label %196, !dbg !3321

194:                                              ; preds = %192
  %195 = getelementptr inbounds i8, ptr %0, i64 %183, !dbg !3317
  store i8 48, ptr %195, align 1, !dbg !3317, !tbaa !1166
  br label %196, !dbg !3317

196:                                              ; preds = %194, %192
  %197 = add i64 %177, 2, !dbg !3321
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !3107, metadata !DIExpression()), !dbg !3167
  %198 = icmp ult i64 %197, %129, !dbg !3322
  br i1 %198, label %199, label %201, !dbg !3325

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, ptr %0, i64 %197, !dbg !3322
  store i8 48, ptr %200, align 1, !dbg !3322, !tbaa !1166
  br label %201, !dbg !3322

201:                                              ; preds = %199, %196
  %202 = add i64 %177, 3, !dbg !3325
  tail call void @llvm.dbg.value(metadata i64 %202, metadata !3107, metadata !DIExpression()), !dbg !3167
  br label %433, !dbg !3326

203:                                              ; preds = %156
  br i1 %24, label %444, label %563, !dbg !3327

204:                                              ; preds = %151
  switch i32 %102, label %433 [
    i32 2, label %205
    i32 5, label %206
  ], !dbg !3328

205:                                              ; preds = %204
  br i1 %109, label %.loopexit8, label %433, !dbg !3329

206:                                              ; preds = %204
  br i1 %22, label %433, label %207, !dbg !3331

207:                                              ; preds = %206
  %208 = add i64 %128, 2, !dbg !3333
  %209 = icmp ult i64 %208, %152, !dbg !3334
  br i1 %209, label %210, label %433, !dbg !3335

210:                                              ; preds = %207
  %211 = getelementptr i8, ptr %154, i64 1, !dbg !3336
  %212 = load i8, ptr %211, align 1, !dbg !3336, !tbaa !1166
  %213 = icmp eq i8 %212, 63, !dbg !3337
  br i1 %213, label %214, label %433, !dbg !3338

214:                                              ; preds = %210
  %215 = getelementptr inbounds i8, ptr %2, i64 %208, !dbg !3339
  %216 = load i8, ptr %215, align 1, !dbg !3339, !tbaa !1166
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
  ], !dbg !3340

217:                                              ; preds = %214, %214, %214, %214, %214, %214, %214, %214, %214
  br i1 %109, label %.loopexit8, label %218, !dbg !3341

218:                                              ; preds = %217
  tail call void @llvm.dbg.value(metadata i8 %216, metadata !3129, metadata !DIExpression()), !dbg !3263
  tail call void @llvm.dbg.value(metadata i64 %208, metadata !3122, metadata !DIExpression()), !dbg !3254
  %219 = icmp ult i64 %123, %129, !dbg !3343
  br i1 %219, label %220, label %222, !dbg !3346

220:                                              ; preds = %218
  %221 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !3343
  store i8 63, ptr %221, align 1, !dbg !3343, !tbaa !1166
  br label %222, !dbg !3343

222:                                              ; preds = %220, %218
  %223 = add i64 %123, 1, !dbg !3346
  tail call void @llvm.dbg.value(metadata i64 %223, metadata !3107, metadata !DIExpression()), !dbg !3167
  %224 = icmp ult i64 %223, %129, !dbg !3347
  br i1 %224, label %225, label %227, !dbg !3350

225:                                              ; preds = %222
  %226 = getelementptr inbounds i8, ptr %0, i64 %223, !dbg !3347
  store i8 34, ptr %226, align 1, !dbg !3347, !tbaa !1166
  br label %227, !dbg !3347

227:                                              ; preds = %225, %222
  %228 = add i64 %123, 2, !dbg !3350
  tail call void @llvm.dbg.value(metadata i64 %228, metadata !3107, metadata !DIExpression()), !dbg !3167
  %229 = icmp ult i64 %228, %129, !dbg !3351
  br i1 %229, label %230, label %232, !dbg !3354

230:                                              ; preds = %227
  %231 = getelementptr inbounds i8, ptr %0, i64 %228, !dbg !3351
  store i8 34, ptr %231, align 1, !dbg !3351, !tbaa !1166
  br label %232, !dbg !3351

232:                                              ; preds = %230, %227
  %233 = add i64 %123, 3, !dbg !3354
  tail call void @llvm.dbg.value(metadata i64 %233, metadata !3107, metadata !DIExpression()), !dbg !3167
  %234 = icmp ult i64 %233, %129, !dbg !3355
  br i1 %234, label %235, label %237, !dbg !3358

235:                                              ; preds = %232
  %236 = getelementptr inbounds i8, ptr %0, i64 %233, !dbg !3355
  store i8 63, ptr %236, align 1, !dbg !3355, !tbaa !1166
  br label %237, !dbg !3355

237:                                              ; preds = %235, %232
  %238 = add i64 %123, 4, !dbg !3358
  tail call void @llvm.dbg.value(metadata i64 %238, metadata !3107, metadata !DIExpression()), !dbg !3167
  br label %433, !dbg !3359

239:                                              ; preds = %151
  br label %249, !dbg !3360

240:                                              ; preds = %151
  br label %249, !dbg !3361

241:                                              ; preds = %151
  br label %247, !dbg !3362

242:                                              ; preds = %151
  br label %247, !dbg !3363

243:                                              ; preds = %151
  br label %249, !dbg !3364

244:                                              ; preds = %151
  br i1 %115, label %245, label %246, !dbg !3365

245:                                              ; preds = %244
  br i1 %109, label %.loopexit8, label %523, !dbg !3366

246:                                              ; preds = %244
  br i1 %117, label %523, label %249, !dbg !3369

247:                                              ; preds = %151, %242, %241
  %248 = phi i8 [ 116, %242 ], [ 114, %241 ], [ 110, %151 ], !dbg !3371
  call void @llvm.dbg.label(metadata !3130), !dbg !3372
  br i1 %118, label %.loopexit8, label %249, !dbg !3373

249:                                              ; preds = %246, %247, %151, %243, %240, %239
  %250 = phi i8 [ %248, %247 ], [ 118, %243 ], [ 102, %240 ], [ 98, %239 ], [ 97, %151 ], [ 92, %246 ], !dbg !3371
  call void @llvm.dbg.label(metadata !3133), !dbg !3375
  br i1 %108, label %487, label %444, !dbg !3376

251:                                              ; preds = %151, %151
  switch i64 %152, label %433 [
    i64 -1, label %252
    i64 1, label %255
  ], !dbg !3377

252:                                              ; preds = %251
  %253 = load i8, ptr %20, align 1, !dbg !3378, !tbaa !1166
  %254 = icmp eq i8 %253, 0, !dbg !3380
  br i1 %254, label %255, label %433, !dbg !3381

255:                                              ; preds = %251, %252, %151, %151
  %256 = icmp eq i64 %128, 0, !dbg !3382
  br i1 %256, label %257, label %433, !dbg !3384

257:                                              ; preds = %255, %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3128, metadata !DIExpression()), !dbg !3263
  br label %258, !dbg !3385

258:                                              ; preds = %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %257
  %259 = phi i1 [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ true, %257 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3128, metadata !DIExpression()), !dbg !3263
  br i1 %115, label %260, label %433, !dbg !3386

260:                                              ; preds = %258
  br i1 %109, label %.loopexit8, label %433, !dbg !3388

261:                                              ; preds = %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3113, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3128, metadata !DIExpression()), !dbg !3263
  br i1 %115, label %262, label %433, !dbg !3389

262:                                              ; preds = %261
  br i1 %109, label %.loopexit8, label %263, !dbg !3390

263:                                              ; preds = %262
  %264 = icmp eq i64 %129, 0, !dbg !3393
  %265 = icmp ne i64 %124, 0
  %266 = select i1 %264, i1 true, i1 %265, !dbg !3395
  %267 = select i1 %266, i64 %124, i64 %129, !dbg !3395
  %268 = select i1 %266, i64 %129, i64 0, !dbg !3395
  tail call void @llvm.dbg.value(metadata i64 %268, metadata !3098, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i64 %267, metadata !3108, metadata !DIExpression()), !dbg !3167
  %269 = icmp ult i64 %123, %268, !dbg !3396
  br i1 %269, label %270, label %272, !dbg !3399

270:                                              ; preds = %263
  %271 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !3396
  store i8 39, ptr %271, align 1, !dbg !3396, !tbaa !1166
  br label %272, !dbg !3396

272:                                              ; preds = %270, %263
  %273 = add i64 %123, 1, !dbg !3399
  tail call void @llvm.dbg.value(metadata i64 %273, metadata !3107, metadata !DIExpression()), !dbg !3167
  %274 = icmp ult i64 %273, %268, !dbg !3400
  br i1 %274, label %275, label %277, !dbg !3403

275:                                              ; preds = %272
  %276 = getelementptr inbounds i8, ptr %0, i64 %273, !dbg !3400
  store i8 92, ptr %276, align 1, !dbg !3400, !tbaa !1166
  br label %277, !dbg !3400

277:                                              ; preds = %275, %272
  %278 = add i64 %123, 2, !dbg !3403
  tail call void @llvm.dbg.value(metadata i64 %278, metadata !3107, metadata !DIExpression()), !dbg !3167
  %279 = icmp ult i64 %278, %268, !dbg !3404
  br i1 %279, label %280, label %282, !dbg !3407

280:                                              ; preds = %277
  %281 = getelementptr inbounds i8, ptr %0, i64 %278, !dbg !3404
  store i8 39, ptr %281, align 1, !dbg !3404, !tbaa !1166
  br label %282, !dbg !3404

282:                                              ; preds = %280, %277
  %283 = add i64 %123, 3, !dbg !3407
  tail call void @llvm.dbg.value(metadata i64 %283, metadata !3107, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3116, metadata !DIExpression()), !dbg !3167
  br label %433, !dbg !3408

284:                                              ; preds = %151
  br i1 %17, label %285, label %293, !dbg !3409

285:                                              ; preds = %284
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3134, metadata !DIExpression()), !dbg !3410
  %286 = tail call ptr @__ctype_b_loc() #44, !dbg !3411
  %287 = load ptr, ptr %286, align 8, !dbg !3411, !tbaa !1075
  %288 = zext i8 %155 to i64
  %289 = getelementptr inbounds i16, ptr %287, i64 %288, !dbg !3411
  %290 = load i16, ptr %289, align 2, !dbg !3411, !tbaa !1198
  %291 = and i16 %290, 16384, !dbg !3411
  %292 = icmp ne i16 %291, 0, !dbg !3413
  tail call void @llvm.dbg.value(metadata i1 %292, metadata !3136, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3410
  br label %334, !dbg !3414

293:                                              ; preds = %284
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #41, !dbg !3415
  call void @llvm.dbg.value(metadata ptr %14, metadata !3192, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata ptr %14, metadata !3200, metadata !DIExpression()), !dbg !3418
  call void @llvm.dbg.value(metadata i32 0, metadata !3203, metadata !DIExpression()), !dbg !3418
  call void @llvm.dbg.value(metadata i64 8, metadata !3204, metadata !DIExpression()), !dbg !3418
  store i64 0, ptr %14, align 8, !dbg !3420
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3134, metadata !DIExpression()), !dbg !3410
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3136, metadata !DIExpression()), !dbg !3410
  %294 = icmp eq i64 %152, -1, !dbg !3421
  br i1 %294, label %295, label %297, !dbg !3423

295:                                              ; preds = %293
  %296 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #42, !dbg !3424
  tail call void @llvm.dbg.value(metadata i64 %296, metadata !3100, metadata !DIExpression()), !dbg !3167
  br label %297, !dbg !3425

297:                                              ; preds = %293, %295
  %298 = phi i64 [ %296, %295 ], [ %152, %293 ], !dbg !3263
  tail call void @llvm.dbg.value(metadata i64 %298, metadata !3100, metadata !DIExpression()), !dbg !3167
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #41, !dbg !3426
  %299 = sub i64 %298, %128, !dbg !3427
  %300 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %154, i64 noundef %299, ptr noundef nonnull %14) #41, !dbg !3428
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !3144, metadata !DIExpression()), !dbg !3166
  switch i64 %300, label %314 [
    i64 0, label %329
    i64 -1, label %303
    i64 -2, label %301
  ], !dbg !3429

301:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3134, metadata !DIExpression()), !dbg !3410
  %302 = icmp ult i64 %128, %298, !dbg !3430
  br i1 %302, label %.preheader5, label %329, !dbg !3432

.preheader5:                                      ; preds = %301
  br label %304, !dbg !3433

303:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3136, metadata !DIExpression()), !dbg !3410
  br label %329, !dbg !3434

304:                                              ; preds = %.preheader5, %310
  %305 = phi i64 [ %312, %310 ], [ %128, %.preheader5 ]
  %306 = phi i64 [ %311, %310 ], [ 0, %.preheader5 ]
  tail call void @llvm.dbg.value(metadata i64 %306, metadata !3134, metadata !DIExpression()), !dbg !3410
  %307 = getelementptr inbounds i8, ptr %2, i64 %305, !dbg !3436
  %308 = load i8, ptr %307, align 1, !dbg !3436, !tbaa !1166
  %309 = icmp eq i8 %308, 0, !dbg !3432
  br i1 %309, label %.loopexit6, label %310, !dbg !3433

310:                                              ; preds = %304
  %311 = add i64 %306, 1, !dbg !3437
  tail call void @llvm.dbg.value(metadata i64 %311, metadata !3134, metadata !DIExpression()), !dbg !3410
  %312 = add i64 %311, %128, !dbg !3438
  %313 = icmp eq i64 %311, %299, !dbg !3430
  br i1 %313, label %.loopexit6, label %304, !dbg !3432, !llvm.loop !3439

314:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3145, metadata !DIExpression()), !dbg !3440
  %315 = icmp ugt i64 %300, 1
  %316 = and i1 %115, %315, !dbg !3441
  %317 = and i1 %316, %109, !dbg !3441
  br i1 %317, label %.preheader3, label %325, !dbg !3441

.preheader3:                                      ; preds = %314
  br label %318, !dbg !3442

318:                                              ; preds = %.preheader3, %322
  %319 = phi i64 [ %323, %322 ], [ 1, %.preheader3 ]
  tail call void @llvm.dbg.value(metadata i64 %319, metadata !3145, metadata !DIExpression()), !dbg !3440
  %320 = getelementptr i8, ptr %154, i64 %319, !dbg !3443
  %321 = load i8, ptr %320, align 1, !dbg !3443, !tbaa !1166
  switch i8 %321, label %322 [
    i8 91, label %332
    i8 92, label %332
    i8 94, label %332
    i8 96, label %332
    i8 124, label %332
  ], !dbg !3445

322:                                              ; preds = %318
  %323 = add nuw i64 %319, 1, !dbg !3446
  tail call void @llvm.dbg.value(metadata i64 %323, metadata !3145, metadata !DIExpression()), !dbg !3440
  %324 = icmp eq i64 %323, %300, !dbg !3447
  br i1 %324, label %.loopexit4, label %318, !dbg !3442, !llvm.loop !3448

.loopexit4:                                       ; preds = %322
  br label %325, !dbg !3450

325:                                              ; preds = %.loopexit4, %314
  %326 = load i32, ptr %15, align 4, !dbg !3450, !tbaa !1157
  call void @llvm.dbg.value(metadata i32 %326, metadata !3452, metadata !DIExpression()), !dbg !3460
  %327 = call i32 @iswprint(i32 noundef %326) #41, !dbg !3462
  %328 = icmp ne i32 %327, 0, !dbg !3463
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3136, metadata !DIExpression()), !dbg !3410
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !3134, metadata !DIExpression()), !dbg !3410
  br label %329, !dbg !3464

.loopexit6:                                       ; preds = %310, %304
  %.ph = phi i64 [ %299, %310 ], [ %306, %304 ]
  br label %329, !dbg !3465

329:                                              ; preds = %.loopexit6, %301, %303, %325, %297
  %330 = phi i64 [ %300, %297 ], [ %300, %325 ], [ 0, %303 ], [ 0, %301 ], [ %.ph, %.loopexit6 ]
  %331 = phi i1 [ true, %297 ], [ %328, %325 ], [ false, %303 ], [ false, %301 ], [ false, %.loopexit6 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3136, metadata !DIExpression()), !dbg !3410
  tail call void @llvm.dbg.value(metadata i64 %330, metadata !3134, metadata !DIExpression()), !dbg !3410
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #41, !dbg !3465
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #41, !dbg !3466
  br label %334

332:                                              ; preds = %318, %318, %318, %318, %318
  %.lcssa99 = phi ptr [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ]
  %.lcssa91 = phi ptr [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ]
  %.lcssa75 = phi i1 [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ]
  %.lcssa28 = phi i64 [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ]
  %.lcssa22 = phi i64 [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], !dbg !3263
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3136, metadata !DIExpression()), !dbg !3410
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3134, metadata !DIExpression()), !dbg !3410
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #41, !dbg !3465
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #41, !dbg !3466
  call void @llvm.dbg.label(metadata !3158), !dbg !3467
  %333 = select i1 %.lcssa75, i32 4, i32 2, !dbg !3468
  br label %624, !dbg !3468

334:                                              ; preds = %329, %285
  %335 = phi i64 [ %152, %285 ], [ %298, %329 ], !dbg !3263
  %336 = phi i64 [ 1, %285 ], [ %330, %329 ], !dbg !3470
  %337 = phi i1 [ %292, %285 ], [ %331, %329 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3136, metadata !DIExpression()), !dbg !3410
  tail call void @llvm.dbg.value(metadata i64 %336, metadata !3134, metadata !DIExpression()), !dbg !3410
  tail call void @llvm.dbg.value(metadata i64 %335, metadata !3100, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i1 %337, metadata !3128, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3263
  %338 = icmp ult i64 %336, 2, !dbg !3471
  %339 = select i1 %119, i1 true, i1 %337
  %340 = select i1 %338, i1 %339, i1 false, !dbg !3472
  br i1 %340, label %433, label %341, !dbg !3472

341:                                              ; preds = %334
  %342 = add i64 %336, %128, !dbg !3473
  tail call void @llvm.dbg.value(metadata i64 %342, metadata !3153, metadata !DIExpression()), !dbg !3474
  br label %343, !dbg !3475

343:                                              ; preds = %429, %341
  %344 = phi i64 [ %123, %341 ], [ %430, %429 ], !dbg !3167
  %345 = phi i1 [ %127, %341 ], [ %425, %429 ]
  %346 = phi i64 [ %128, %341 ], [ %407, %429 ], !dbg !3254
  %347 = phi i1 [ %153, %341 ], [ %404, %429 ]
  %348 = phi i1 [ false, %341 ], [ %405, %429 ]
  %349 = phi i8 [ %155, %341 ], [ %432, %429 ], !dbg !3263
  tail call void @llvm.dbg.value(metadata i8 %349, metadata !3129, metadata !DIExpression()), !dbg !3263
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3127, metadata !DIExpression()), !dbg !3263
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3124, metadata !DIExpression()), !dbg !3263
  tail call void @llvm.dbg.value(metadata i64 %346, metadata !3122, metadata !DIExpression()), !dbg !3254
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3116, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i64 %344, metadata !3107, metadata !DIExpression()), !dbg !3167
  br i1 %339, label %394, label %350, !dbg !3476

350:                                              ; preds = %343
  br i1 %109, label %.loopexit1, label %351, !dbg !3481

351:                                              ; preds = %350
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3127, metadata !DIExpression()), !dbg !3263
  %352 = select i1 %110, i1 true, i1 %345, !dbg !3484
  br i1 %352, label %369, label %353, !dbg !3484

353:                                              ; preds = %351
  %354 = icmp ult i64 %344, %129, !dbg !3486
  br i1 %354, label %355, label %357, !dbg !3490

355:                                              ; preds = %353
  %356 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !3486
  store i8 39, ptr %356, align 1, !dbg !3486, !tbaa !1166
  br label %357, !dbg !3486

357:                                              ; preds = %355, %353
  %358 = add i64 %344, 1, !dbg !3490
  tail call void @llvm.dbg.value(metadata i64 %358, metadata !3107, metadata !DIExpression()), !dbg !3167
  %359 = icmp ult i64 %358, %129, !dbg !3491
  br i1 %359, label %360, label %362, !dbg !3494

360:                                              ; preds = %357
  %361 = getelementptr inbounds i8, ptr %0, i64 %358, !dbg !3491
  store i8 36, ptr %361, align 1, !dbg !3491, !tbaa !1166
  br label %362, !dbg !3491

362:                                              ; preds = %360, %357
  %363 = add i64 %344, 2, !dbg !3494
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !3107, metadata !DIExpression()), !dbg !3167
  %364 = icmp ult i64 %363, %129, !dbg !3495
  br i1 %364, label %365, label %367, !dbg !3498

365:                                              ; preds = %362
  %366 = getelementptr inbounds i8, ptr %0, i64 %363, !dbg !3495
  store i8 39, ptr %366, align 1, !dbg !3495, !tbaa !1166
  br label %367, !dbg !3495

367:                                              ; preds = %365, %362
  %368 = add i64 %344, 3, !dbg !3498
  tail call void @llvm.dbg.value(metadata i64 %368, metadata !3107, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3116, metadata !DIExpression()), !dbg !3167
  br label %369, !dbg !3499

369:                                              ; preds = %351, %367
  %370 = phi i64 [ %368, %367 ], [ %344, %351 ], !dbg !3167
  %371 = phi i1 [ true, %367 ], [ %345, %351 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3116, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i64 %370, metadata !3107, metadata !DIExpression()), !dbg !3167
  %372 = icmp ult i64 %370, %129, !dbg !3500
  br i1 %372, label %373, label %375, !dbg !3503

373:                                              ; preds = %369
  %374 = getelementptr inbounds i8, ptr %0, i64 %370, !dbg !3500
  store i8 92, ptr %374, align 1, !dbg !3500, !tbaa !1166
  br label %375, !dbg !3500

375:                                              ; preds = %373, %369
  %376 = add i64 %370, 1, !dbg !3503
  tail call void @llvm.dbg.value(metadata i64 %376, metadata !3107, metadata !DIExpression()), !dbg !3167
  %377 = icmp ult i64 %376, %129, !dbg !3504
  br i1 %377, label %378, label %382, !dbg !3507

378:                                              ; preds = %375
  %379 = lshr i8 %349, 6
  %380 = or disjoint i8 %379, 48, !dbg !3504
  %381 = getelementptr inbounds i8, ptr %0, i64 %376, !dbg !3504
  store i8 %380, ptr %381, align 1, !dbg !3504, !tbaa !1166
  br label %382, !dbg !3504

382:                                              ; preds = %378, %375
  %383 = add i64 %370, 2, !dbg !3507
  tail call void @llvm.dbg.value(metadata i64 %383, metadata !3107, metadata !DIExpression()), !dbg !3167
  %384 = icmp ult i64 %383, %129, !dbg !3508
  br i1 %384, label %385, label %390, !dbg !3511

385:                                              ; preds = %382
  %386 = lshr i8 %349, 3
  %387 = and i8 %386, 7, !dbg !3508
  %388 = or disjoint i8 %387, 48, !dbg !3508
  %389 = getelementptr inbounds i8, ptr %0, i64 %383, !dbg !3508
  store i8 %388, ptr %389, align 1, !dbg !3508, !tbaa !1166
  br label %390, !dbg !3508

390:                                              ; preds = %385, %382
  %391 = add i64 %370, 3, !dbg !3511
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !3107, metadata !DIExpression()), !dbg !3167
  %392 = and i8 %349, 7, !dbg !3512
  %393 = or disjoint i8 %392, 48, !dbg !3513
  tail call void @llvm.dbg.value(metadata i8 %393, metadata !3129, metadata !DIExpression()), !dbg !3263
  br label %401, !dbg !3514

394:                                              ; preds = %343
  br i1 %347, label %395, label %401, !dbg !3515

395:                                              ; preds = %394
  %396 = icmp ult i64 %344, %129, !dbg !3516
  br i1 %396, label %397, label %399, !dbg !3521

397:                                              ; preds = %395
  %398 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !3516
  store i8 92, ptr %398, align 1, !dbg !3516, !tbaa !1166
  br label %399, !dbg !3516

399:                                              ; preds = %397, %395
  %400 = add i64 %344, 1, !dbg !3521
  tail call void @llvm.dbg.value(metadata i64 %400, metadata !3107, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3124, metadata !DIExpression()), !dbg !3263
  br label %401, !dbg !3522

401:                                              ; preds = %394, %399, %390
  %402 = phi i64 [ %400, %399 ], [ %344, %394 ], [ %391, %390 ], !dbg !3167
  %403 = phi i1 [ %345, %399 ], [ %345, %394 ], [ %371, %390 ]
  %404 = phi i1 [ false, %399 ], [ false, %394 ], [ %347, %390 ]
  %405 = phi i1 [ %348, %399 ], [ %348, %394 ], [ true, %390 ]
  %406 = phi i8 [ %349, %399 ], [ %349, %394 ], [ %393, %390 ], !dbg !3263
  tail call void @llvm.dbg.value(metadata i8 %406, metadata !3129, metadata !DIExpression()), !dbg !3263
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3127, metadata !DIExpression()), !dbg !3263
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3124, metadata !DIExpression()), !dbg !3263
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3116, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i64 %402, metadata !3107, metadata !DIExpression()), !dbg !3167
  %407 = add i64 %346, 1, !dbg !3523
  %408 = icmp ugt i64 %342, %407, !dbg !3525
  br i1 %408, label %409, label %.loopexit2, !dbg !3526

409:                                              ; preds = %401
  %410 = xor i1 %403, true, !dbg !3527
  %411 = select i1 %410, i1 true, i1 %405, !dbg !3527
  br i1 %411, label %423, label %412, !dbg !3527

412:                                              ; preds = %409
  %413 = icmp ult i64 %402, %129, !dbg !3530
  br i1 %413, label %414, label %416, !dbg !3534

414:                                              ; preds = %412
  %415 = getelementptr inbounds i8, ptr %0, i64 %402, !dbg !3530
  store i8 39, ptr %415, align 1, !dbg !3530, !tbaa !1166
  br label %416, !dbg !3530

416:                                              ; preds = %414, %412
  %417 = add i64 %402, 1, !dbg !3534
  tail call void @llvm.dbg.value(metadata i64 %417, metadata !3107, metadata !DIExpression()), !dbg !3167
  %418 = icmp ult i64 %417, %129, !dbg !3535
  br i1 %418, label %419, label %421, !dbg !3538

419:                                              ; preds = %416
  %420 = getelementptr inbounds i8, ptr %0, i64 %417, !dbg !3535
  store i8 39, ptr %420, align 1, !dbg !3535, !tbaa !1166
  br label %421, !dbg !3535

421:                                              ; preds = %419, %416
  %422 = add i64 %402, 2, !dbg !3538
  tail call void @llvm.dbg.value(metadata i64 %422, metadata !3107, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3116, metadata !DIExpression()), !dbg !3167
  br label %423, !dbg !3539

423:                                              ; preds = %409, %421
  %424 = phi i64 [ %422, %421 ], [ %402, %409 ], !dbg !3540
  %425 = phi i1 [ false, %421 ], [ %403, %409 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3116, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i64 %424, metadata !3107, metadata !DIExpression()), !dbg !3167
  %426 = icmp ult i64 %424, %129, !dbg !3541
  br i1 %426, label %427, label %429, !dbg !3544

427:                                              ; preds = %423
  %428 = getelementptr inbounds i8, ptr %0, i64 %424, !dbg !3541
  store i8 %406, ptr %428, align 1, !dbg !3541, !tbaa !1166
  br label %429, !dbg !3541

429:                                              ; preds = %427, %423
  %430 = add i64 %424, 1, !dbg !3544
  tail call void @llvm.dbg.value(metadata i64 %430, metadata !3107, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i64 %407, metadata !3122, metadata !DIExpression()), !dbg !3254
  %431 = getelementptr inbounds i8, ptr %2, i64 %407, !dbg !3545
  %432 = load i8, ptr %431, align 1, !dbg !3545, !tbaa !1166
  tail call void @llvm.dbg.value(metadata i8 %432, metadata !3129, metadata !DIExpression()), !dbg !3263
  br label %343, !dbg !3546, !llvm.loop !3547

433:                                              ; preds = %334, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %251, %184, %187, %201, %261, %282, %258, %260, %255, %252, %204, %205, %237, %214, %210, %207, %206
  %434 = phi i64 [ %152, %282 ], [ %152, %261 ], [ %152, %260 ], [ %152, %258 ], [ %152, %255 ], [ -1, %252 ], [ %152, %204 ], [ %152, %214 ], [ %152, %237 ], [ %152, %210 ], [ %152, %207 ], [ %152, %206 ], [ %152, %205 ], [ %152, %201 ], [ %152, %187 ], [ %152, %184 ], [ %152, %251 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %335, %334 ], !dbg !3550
  %435 = phi i64 [ %283, %282 ], [ %123, %261 ], [ %123, %260 ], [ %123, %258 ], [ %123, %255 ], [ %123, %252 ], [ %123, %204 ], [ %123, %214 ], [ %238, %237 ], [ %123, %210 ], [ %123, %207 ], [ %123, %206 ], [ %123, %205 ], [ %202, %201 ], [ %183, %187 ], [ %183, %184 ], [ %123, %251 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %334 ], !dbg !3167
  %436 = phi i64 [ %267, %282 ], [ %124, %261 ], [ %124, %260 ], [ %124, %258 ], [ %124, %255 ], [ %124, %252 ], [ %124, %204 ], [ %124, %214 ], [ %124, %237 ], [ %124, %210 ], [ %124, %207 ], [ %124, %206 ], [ %124, %205 ], [ %124, %201 ], [ %124, %187 ], [ %124, %184 ], [ %124, %251 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %334 ], !dbg !3171
  %437 = phi i1 [ true, %282 ], [ true, %261 ], [ %125, %260 ], [ %125, %258 ], [ %125, %255 ], [ %125, %252 ], [ %125, %204 ], [ %125, %214 ], [ %125, %237 ], [ %125, %210 ], [ %125, %207 ], [ %125, %206 ], [ %125, %205 ], [ %125, %201 ], [ %125, %187 ], [ %125, %184 ], [ %125, %251 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %334 ]
  %438 = phi i1 [ false, %282 ], [ %127, %261 ], [ %127, %260 ], [ %127, %258 ], [ %127, %255 ], [ %127, %252 ], [ %127, %204 ], [ %127, %214 ], [ %127, %237 ], [ %127, %210 ], [ %127, %207 ], [ %127, %206 ], [ %127, %205 ], [ %178, %201 ], [ %178, %187 ], [ %178, %184 ], [ %127, %251 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %334 ]
  %439 = phi i64 [ %128, %282 ], [ %128, %261 ], [ %128, %260 ], [ %128, %258 ], [ %128, %255 ], [ %128, %252 ], [ %128, %204 ], [ %128, %214 ], [ %208, %237 ], [ %128, %210 ], [ %128, %207 ], [ %128, %206 ], [ %128, %205 ], [ %128, %201 ], [ %128, %187 ], [ %128, %184 ], [ %128, %251 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %334 ], !dbg !3254
  %440 = phi i1 [ false, %282 ], [ false, %261 ], [ false, %260 ], [ false, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ true, %201 ], [ true, %187 ], [ true, %184 ], [ false, %251 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %334 ]
  %441 = phi i1 [ true, %282 ], [ true, %261 ], [ %259, %260 ], [ %259, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ false, %201 ], [ false, %187 ], [ false, %184 ], [ false, %251 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ %337, %334 ]
  %442 = phi i8 [ 39, %282 ], [ 39, %261 ], [ %155, %260 ], [ %155, %258 ], [ %155, %255 ], [ %155, %252 ], [ 63, %204 ], [ 63, %214 ], [ %216, %237 ], [ 63, %210 ], [ 63, %207 ], [ 63, %206 ], [ 63, %205 ], [ 48, %201 ], [ 48, %187 ], [ 48, %184 ], [ %155, %251 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %334 ], !dbg !3263
  %443 = phi i64 [ %268, %282 ], [ %129, %261 ], [ %129, %260 ], [ %129, %258 ], [ %129, %255 ], [ %129, %252 ], [ %129, %204 ], [ %129, %214 ], [ %129, %237 ], [ %129, %210 ], [ %129, %207 ], [ %129, %206 ], [ %129, %205 ], [ %129, %201 ], [ %129, %187 ], [ %129, %184 ], [ %129, %251 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %334 ]
  tail call void @llvm.dbg.value(metadata i64 %443, metadata !3098, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i8 %442, metadata !3129, metadata !DIExpression()), !dbg !3263
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3128, metadata !DIExpression()), !dbg !3263
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3127, metadata !DIExpression()), !dbg !3263
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3124, metadata !DIExpression()), !dbg !3263
  tail call void @llvm.dbg.value(metadata i64 %439, metadata !3122, metadata !DIExpression()), !dbg !3254
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3116, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3113, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i64 %436, metadata !3108, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i64 %435, metadata !3107, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i64 %434, metadata !3100, metadata !DIExpression()), !dbg !3167
  br i1 %111, label %455, label %444, !dbg !3551

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
  br i1 %120, label %456, label %476, !dbg !3553

455:                                              ; preds = %433
  br i1 %26, label %476, label %456, !dbg !3554

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
  %467 = lshr i8 %458, 5, !dbg !3555
  %468 = zext nneg i8 %467 to i64, !dbg !3555
  %469 = getelementptr inbounds i32, ptr %6, i64 %468, !dbg !3556
  %470 = load i32, ptr %469, align 4, !dbg !3556, !tbaa !1157
  %471 = and i8 %458, 31, !dbg !3557
  %472 = zext nneg i8 %471 to i32, !dbg !3557
  %473 = shl nuw i32 1, %472, !dbg !3558
  %474 = and i32 %470, %473, !dbg !3558
  %475 = icmp eq i32 %474, 0, !dbg !3558
  br i1 %475, label %476, label %487, !dbg !3559

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
  br i1 %153, label %487, label %523, !dbg !3560

487:                                              ; preds = %249, %476, %456
  %488 = phi i64 [ %466, %456 ], [ %486, %476 ], [ %152, %249 ], !dbg !3550
  %489 = phi i64 [ %465, %456 ], [ %485, %476 ], [ %123, %249 ], !dbg !3167
  %490 = phi i64 [ %464, %456 ], [ %484, %476 ], [ %124, %249 ], !dbg !3171
  %491 = phi i1 [ %463, %456 ], [ %483, %476 ], [ %125, %249 ]
  %492 = phi i1 [ %462, %456 ], [ %482, %476 ], [ %127, %249 ]
  %493 = phi i64 [ %461, %456 ], [ %481, %476 ], [ %128, %249 ], !dbg !3561
  %494 = phi i1 [ %459, %456 ], [ %479, %476 ], [ false, %249 ]
  %495 = phi i8 [ %458, %456 ], [ %478, %476 ], [ %250, %249 ], !dbg !3263
  %496 = phi i64 [ %457, %456 ], [ %477, %476 ], [ %129, %249 ]
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !3098, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !3129, metadata !DIExpression()), !dbg !3263
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3128, metadata !DIExpression()), !dbg !3263
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !3122, metadata !DIExpression()), !dbg !3254
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3116, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3113, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !3108, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i64 %489, metadata !3107, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !3100, metadata !DIExpression()), !dbg !3167
  call void @llvm.dbg.label(metadata !3156), !dbg !3562
  br i1 %109, label %.loopexit8, label %497, !dbg !3563

497:                                              ; preds = %487
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3127, metadata !DIExpression()), !dbg !3263
  %498 = select i1 %110, i1 true, i1 %492, !dbg !3565
  br i1 %498, label %515, label %499, !dbg !3565

499:                                              ; preds = %497
  %500 = icmp ult i64 %489, %496, !dbg !3567
  br i1 %500, label %501, label %503, !dbg !3571

501:                                              ; preds = %499
  %502 = getelementptr inbounds i8, ptr %0, i64 %489, !dbg !3567
  store i8 39, ptr %502, align 1, !dbg !3567, !tbaa !1166
  br label %503, !dbg !3567

503:                                              ; preds = %501, %499
  %504 = add i64 %489, 1, !dbg !3571
  tail call void @llvm.dbg.value(metadata i64 %504, metadata !3107, metadata !DIExpression()), !dbg !3167
  %505 = icmp ult i64 %504, %496, !dbg !3572
  br i1 %505, label %506, label %508, !dbg !3575

506:                                              ; preds = %503
  %507 = getelementptr inbounds i8, ptr %0, i64 %504, !dbg !3572
  store i8 36, ptr %507, align 1, !dbg !3572, !tbaa !1166
  br label %508, !dbg !3572

508:                                              ; preds = %506, %503
  %509 = add i64 %489, 2, !dbg !3575
  tail call void @llvm.dbg.value(metadata i64 %509, metadata !3107, metadata !DIExpression()), !dbg !3167
  %510 = icmp ult i64 %509, %496, !dbg !3576
  br i1 %510, label %511, label %513, !dbg !3579

511:                                              ; preds = %508
  %512 = getelementptr inbounds i8, ptr %0, i64 %509, !dbg !3576
  store i8 39, ptr %512, align 1, !dbg !3576, !tbaa !1166
  br label %513, !dbg !3576

513:                                              ; preds = %511, %508
  %514 = add i64 %489, 3, !dbg !3579
  tail call void @llvm.dbg.value(metadata i64 %514, metadata !3107, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3116, metadata !DIExpression()), !dbg !3167
  br label %515, !dbg !3580

515:                                              ; preds = %497, %513
  %516 = phi i64 [ %514, %513 ], [ %489, %497 ], !dbg !3263
  %517 = phi i1 [ true, %513 ], [ %492, %497 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3116, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i64 %516, metadata !3107, metadata !DIExpression()), !dbg !3167
  %518 = icmp ult i64 %516, %496, !dbg !3581
  br i1 %518, label %519, label %521, !dbg !3584

519:                                              ; preds = %515
  %520 = getelementptr inbounds i8, ptr %0, i64 %516, !dbg !3581
  store i8 92, ptr %520, align 1, !dbg !3581, !tbaa !1166
  br label %521, !dbg !3581

521:                                              ; preds = %515, %519
  %522 = add i64 %516, 1, !dbg !3584
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !3098, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !3129, metadata !DIExpression()), !dbg !3263
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3128, metadata !DIExpression()), !dbg !3263
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3127, metadata !DIExpression()), !dbg !3263
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !3122, metadata !DIExpression()), !dbg !3254
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3116, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3113, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !3108, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !3107, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !3100, metadata !DIExpression()), !dbg !3167
  call void @llvm.dbg.label(metadata !3157), !dbg !3585
  br label %547, !dbg !3586

.loopexit2:                                       ; preds = %401
  %.lcssa20 = phi i64 [ %402, %401 ], !dbg !3167
  %.lcssa19 = phi i1 [ %403, %401 ]
  %.lcssa18 = phi i1 [ %405, %401 ]
  %.lcssa17 = phi i8 [ %406, %401 ], !dbg !3263
  %.lcssa16 = phi i64 [ %346, %401 ], !dbg !3254
  br label %523, !dbg !3586

523:                                              ; preds = %.loopexit2, %246, %245, %476
  %524 = phi i64 [ %486, %476 ], [ %152, %245 ], [ %152, %246 ], [ %335, %.loopexit2 ], !dbg !3550
  %525 = phi i64 [ %485, %476 ], [ %123, %245 ], [ %123, %246 ], [ %.lcssa20, %.loopexit2 ], !dbg !3167
  %526 = phi i64 [ %484, %476 ], [ %124, %245 ], [ %124, %246 ], [ %124, %.loopexit2 ], !dbg !3171
  %527 = phi i1 [ %483, %476 ], [ %125, %245 ], [ %125, %246 ], [ %125, %.loopexit2 ]
  %528 = phi i1 [ %482, %476 ], [ %127, %245 ], [ %127, %246 ], [ %.lcssa19, %.loopexit2 ]
  %529 = phi i64 [ %481, %476 ], [ %128, %245 ], [ %128, %246 ], [ %.lcssa16, %.loopexit2 ], !dbg !3561
  %530 = phi i1 [ %480, %476 ], [ false, %245 ], [ false, %246 ], [ %.lcssa18, %.loopexit2 ]
  %531 = phi i1 [ %479, %476 ], [ false, %245 ], [ false, %246 ], [ %337, %.loopexit2 ]
  %532 = phi i8 [ %478, %476 ], [ 92, %245 ], [ 92, %246 ], [ %.lcssa17, %.loopexit2 ], !dbg !3589
  %533 = phi i64 [ %477, %476 ], [ %129, %245 ], [ %129, %246 ], [ %129, %.loopexit2 ]
  tail call void @llvm.dbg.value(metadata i64 %533, metadata !3098, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i8 %532, metadata !3129, metadata !DIExpression()), !dbg !3263
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3128, metadata !DIExpression()), !dbg !3263
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3127, metadata !DIExpression()), !dbg !3263
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !3122, metadata !DIExpression()), !dbg !3254
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3116, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3113, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !3108, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i64 %525, metadata !3107, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i64 %524, metadata !3100, metadata !DIExpression()), !dbg !3167
  call void @llvm.dbg.label(metadata !3157), !dbg !3585
  %534 = xor i1 %528, true, !dbg !3586
  %535 = select i1 %534, i1 true, i1 %530, !dbg !3586
  br i1 %535, label %547, label %536, !dbg !3586

536:                                              ; preds = %523
  %537 = icmp ult i64 %525, %533, !dbg !3590
  br i1 %537, label %538, label %540, !dbg !3594

538:                                              ; preds = %536
  %539 = getelementptr inbounds i8, ptr %0, i64 %525, !dbg !3590
  store i8 39, ptr %539, align 1, !dbg !3590, !tbaa !1166
  br label %540, !dbg !3590

540:                                              ; preds = %538, %536
  %541 = add i64 %525, 1, !dbg !3594
  tail call void @llvm.dbg.value(metadata i64 %541, metadata !3107, metadata !DIExpression()), !dbg !3167
  %542 = icmp ult i64 %541, %533, !dbg !3595
  br i1 %542, label %543, label %545, !dbg !3598

543:                                              ; preds = %540
  %544 = getelementptr inbounds i8, ptr %0, i64 %541, !dbg !3595
  store i8 39, ptr %544, align 1, !dbg !3595, !tbaa !1166
  br label %545, !dbg !3595

545:                                              ; preds = %543, %540
  %546 = add i64 %525, 2, !dbg !3598
  tail call void @llvm.dbg.value(metadata i64 %546, metadata !3107, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3116, metadata !DIExpression()), !dbg !3167
  br label %547, !dbg !3599

547:                                              ; preds = %521, %523, %545
  %548 = phi i64 [ %533, %545 ], [ %533, %523 ], [ %496, %521 ]
  %549 = phi i8 [ %532, %545 ], [ %532, %523 ], [ %495, %521 ]
  %550 = phi i1 [ %531, %545 ], [ %531, %523 ], [ %494, %521 ]
  %551 = phi i64 [ %529, %545 ], [ %529, %523 ], [ %493, %521 ]
  %552 = phi i1 [ %527, %545 ], [ %527, %523 ], [ %491, %521 ]
  %553 = phi i64 [ %526, %545 ], [ %526, %523 ], [ %490, %521 ]
  %554 = phi i64 [ %524, %545 ], [ %524, %523 ], [ %488, %521 ]
  %555 = phi i64 [ %546, %545 ], [ %525, %523 ], [ %522, %521 ], !dbg !3263
  %556 = phi i1 [ false, %545 ], [ %528, %523 ], [ %517, %521 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3116, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i64 %555, metadata !3107, metadata !DIExpression()), !dbg !3167
  %557 = icmp ult i64 %555, %548, !dbg !3600
  br i1 %557, label %558, label %560, !dbg !3603

558:                                              ; preds = %547
  %559 = getelementptr inbounds i8, ptr %0, i64 %555, !dbg !3600
  store i8 %549, ptr %559, align 1, !dbg !3600, !tbaa !1166
  br label %560, !dbg !3600

560:                                              ; preds = %558, %547
  %561 = add i64 %555, 1, !dbg !3603
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !3107, metadata !DIExpression()), !dbg !3167
  %562 = select i1 %550, i1 %126, i1 false, !dbg !3604
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3114, metadata !DIExpression()), !dbg !3167
  br label %563, !dbg !3605

563:                                              ; preds = %203, %560
  %564 = phi i64 [ %554, %560 ], [ %152, %203 ], !dbg !3550
  %565 = phi i64 [ %561, %560 ], [ %123, %203 ], !dbg !3167
  %566 = phi i64 [ %553, %560 ], [ %124, %203 ], !dbg !3171
  %567 = phi i1 [ %552, %560 ], [ %125, %203 ]
  %568 = phi i1 [ %562, %560 ], [ %126, %203 ]
  %569 = phi i1 [ %556, %560 ], [ %127, %203 ]
  %570 = phi i64 [ %551, %560 ], [ %128, %203 ], !dbg !3561
  %571 = phi i64 [ %548, %560 ], [ %129, %203 ]
  tail call void @llvm.dbg.value(metadata i64 %571, metadata !3098, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i64 %570, metadata !3122, metadata !DIExpression()), !dbg !3254
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3116, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3114, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3113, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i64 %566, metadata !3108, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i64 %565, metadata !3107, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !3100, metadata !DIExpression()), !dbg !3167
  %572 = add i64 %570, 1, !dbg !3606
  tail call void @llvm.dbg.value(metadata i64 %572, metadata !3122, metadata !DIExpression()), !dbg !3254
  br label %121, !dbg !3607, !llvm.loop !3608

573:                                              ; preds = %135, %131
  %.lcssa60 = phi i64 [ %122, %135 ], [ %122, %131 ]
  %.lcssa52 = phi i64 [ %123, %135 ], [ %123, %131 ], !dbg !3242
  %.lcssa44 = phi i64 [ %124, %135 ], [ %124, %131 ], !dbg !3171
  %.lcssa38 = phi i1 [ %125, %135 ], [ %125, %131 ]
  %.lcssa32 = phi i1 [ %126, %135 ], [ %126, %131 ]
  %.lcssa24 = phi i64 [ %129, %135 ], [ %129, %131 ]
  tail call void @llvm.dbg.value(metadata i64 %.lcssa24, metadata !3098, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3114, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3113, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i64 %.lcssa44, metadata !3108, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52, metadata !3107, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i64 %.lcssa60, metadata !3100, metadata !DIExpression()), !dbg !3167
  %574 = icmp ne i64 %.lcssa52, 0, !dbg !3610
  %575 = xor i1 %109, true, !dbg !3612
  %576 = or i1 %574, %575, !dbg !3612
  %577 = or i1 %576, %110, !dbg !3612
  br i1 %577, label %578, label %.loopexit13, !dbg !3612

578:                                              ; preds = %573
  %579 = or i1 %110, %109, !dbg !3613
  %580 = xor i1 %.lcssa38, true, !dbg !3613
  %581 = select i1 %579, i1 true, i1 %580, !dbg !3613
  br i1 %581, label %589, label %582, !dbg !3613

582:                                              ; preds = %578
  br i1 %.lcssa32, label %583, label %585, !dbg !3615

583:                                              ; preds = %582
  %.lcssa103 = phi ptr [ %103, %582 ]
  %.lcssa95 = phi ptr [ %104, %582 ]
  %.lcssa60.lcssa67 = phi i64 [ %.lcssa60, %582 ]
  %.lcssa44.lcssa51 = phi i64 [ %.lcssa44, %582 ], !dbg !3171
  %584 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %.lcssa44.lcssa51, ptr noundef %2, i64 noundef %.lcssa60.lcssa67, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %.lcssa103, ptr noundef %.lcssa95), !dbg !3617
  br label %638, !dbg !3619

585:                                              ; preds = %582
  %586 = icmp eq i64 %.lcssa24, 0, !dbg !3620
  %587 = icmp ne i64 %.lcssa44, 0
  %588 = select i1 %586, i1 %587, i1 false, !dbg !3622
  br i1 %588, label %27, label %589, !dbg !3622

589:                                              ; preds = %578, %585
  %.lcssa86 = phi ptr [ %106, %578 ], [ %106, %585 ], !dbg !3167
  %.lcssa52.lcssa58 = phi i64 [ %.lcssa52, %578 ], [ %.lcssa52, %585 ], !dbg !3242
  %.lcssa24.lcssa30 = phi i64 [ %.lcssa24, %578 ], [ %.lcssa24, %585 ]
  %590 = phi i1 [ %109, %578 ], [ false, %585 ]
  %591 = icmp eq ptr %.lcssa86, null, !dbg !3623
  %592 = or i1 %591, %590, !dbg !3625
  br i1 %592, label %608, label %593, !dbg !3625

593:                                              ; preds = %589
  tail call void @llvm.dbg.value(metadata ptr %.lcssa86, metadata !3109, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52.lcssa58, metadata !3107, metadata !DIExpression()), !dbg !3167
  %594 = load i8, ptr %.lcssa86, align 1, !dbg !3626, !tbaa !1166
  %595 = icmp eq i8 %594, 0, !dbg !3629
  br i1 %595, label %608, label %.preheader, !dbg !3629

.preheader:                                       ; preds = %593
  br label %596, !dbg !3629

596:                                              ; preds = %.preheader, %603
  %597 = phi i8 [ %606, %603 ], [ %594, %.preheader ]
  %598 = phi ptr [ %605, %603 ], [ %.lcssa86, %.preheader ]
  %599 = phi i64 [ %604, %603 ], [ %.lcssa52.lcssa58, %.preheader ]
  tail call void @llvm.dbg.value(metadata ptr %598, metadata !3109, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !3107, metadata !DIExpression()), !dbg !3167
  %600 = icmp ult i64 %599, %.lcssa24.lcssa30, !dbg !3630
  br i1 %600, label %601, label %603, !dbg !3633

601:                                              ; preds = %596
  %602 = getelementptr inbounds i8, ptr %0, i64 %599, !dbg !3630
  store i8 %597, ptr %602, align 1, !dbg !3630, !tbaa !1166
  br label %603, !dbg !3630

603:                                              ; preds = %601, %596
  %604 = add i64 %599, 1, !dbg !3633
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !3107, metadata !DIExpression()), !dbg !3167
  %605 = getelementptr inbounds i8, ptr %598, i64 1, !dbg !3634
  tail call void @llvm.dbg.value(metadata ptr %605, metadata !3109, metadata !DIExpression()), !dbg !3167
  %606 = load i8, ptr %605, align 1, !dbg !3626, !tbaa !1166
  %607 = icmp eq i8 %606, 0, !dbg !3629
  br i1 %607, label %.loopexit, label %596, !dbg !3629, !llvm.loop !3635

.loopexit:                                        ; preds = %603
  %.lcssa = phi i64 [ %604, %603 ], !dbg !3633
  br label %608, !dbg !3637

608:                                              ; preds = %.loopexit, %593, %589
  %609 = phi i64 [ %.lcssa52.lcssa58, %589 ], [ %.lcssa52.lcssa58, %593 ], [ %.lcssa, %.loopexit ], !dbg !3242
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !3107, metadata !DIExpression()), !dbg !3167
  %610 = icmp ult i64 %609, %.lcssa24.lcssa30, !dbg !3637
  br i1 %610, label %611, label %638, !dbg !3639

611:                                              ; preds = %608
  %612 = getelementptr inbounds i8, ptr %0, i64 %609, !dbg !3640
  store i8 0, ptr %612, align 1, !dbg !3641, !tbaa !1166
  br label %638, !dbg !3640

613:                                              ; preds = %157
  %.lcssa106 = phi i32 [ %102, %157 ]
  %.lcssa98 = phi ptr [ %103, %157 ]
  %.lcssa90 = phi ptr [ %104, %157 ]
  %.lcssa69 = phi i64 [ %152, %157 ]
  %.lcssa27 = phi i64 [ %129, %157 ]
  call void @llvm.dbg.label(metadata !3158), !dbg !3467
  %614 = icmp eq i32 %.lcssa106, 2, !dbg !3642
  br i1 %614, label %624, label %630, !dbg !3468

.loopexit1:                                       ; preds = %350
  %.lcssa108 = phi i32 [ %102, %350 ]
  %.lcssa100 = phi ptr [ %103, %350 ]
  %.lcssa92 = phi ptr [ %104, %350 ]
  %.lcssa76 = phi i1 [ %108, %350 ]
  %.lcssa29 = phi i64 [ %129, %350 ]
  %.lcssa23 = phi i64 [ %335, %350 ], !dbg !3263
  br label %615, !dbg !3642

.loopexit8:                                       ; preds = %205, %217, %245, %247, %260, %262, %487
  %.lcssa105 = phi i32 [ %102, %205 ], [ %102, %217 ], [ %102, %245 ], [ %102, %247 ], [ %102, %260 ], [ %102, %262 ], [ %102, %487 ]
  %.lcssa97 = phi ptr [ %103, %205 ], [ %103, %217 ], [ %103, %245 ], [ %103, %247 ], [ %103, %260 ], [ %103, %262 ], [ %103, %487 ]
  %.lcssa89 = phi ptr [ %104, %205 ], [ %104, %217 ], [ %104, %245 ], [ %104, %247 ], [ %104, %260 ], [ %104, %262 ], [ %104, %487 ]
  %.lcssa73 = phi i1 [ %108, %205 ], [ %108, %217 ], [ %108, %245 ], [ %108, %247 ], [ %108, %260 ], [ %108, %262 ], [ %108, %487 ]
  %.ph9 = phi i64 [ %129, %205 ], [ %129, %217 ], [ %129, %245 ], [ %129, %247 ], [ %129, %260 ], [ %129, %262 ], [ %496, %487 ]
  %.ph10 = phi i64 [ %152, %205 ], [ %152, %217 ], [ %152, %245 ], [ %152, %247 ], [ %152, %260 ], [ %152, %262 ], [ %488, %487 ]
  br label %615, !dbg !3642

.loopexit13:                                      ; preds = %573
  %.lcssa109 = phi i32 [ %102, %573 ]
  %.lcssa101 = phi ptr [ %103, %573 ]
  %.lcssa93 = phi ptr [ %104, %573 ]
  %.lcssa77 = phi i1 [ %108, %573 ]
  %.lcssa60.lcssa = phi i64 [ %.lcssa60, %573 ]
  %.lcssa24.lcssa = phi i64 [ %.lcssa24, %573 ]
  br label %615, !dbg !3642

615:                                              ; preds = %.loopexit13, %.loopexit8, %.loopexit1
  %616 = phi i32 [ %.lcssa108, %.loopexit1 ], [ %.lcssa105, %.loopexit8 ], [ %.lcssa109, %.loopexit13 ]
  %617 = phi ptr [ %.lcssa100, %.loopexit1 ], [ %.lcssa97, %.loopexit8 ], [ %.lcssa101, %.loopexit13 ]
  %618 = phi ptr [ %.lcssa92, %.loopexit1 ], [ %.lcssa89, %.loopexit8 ], [ %.lcssa93, %.loopexit13 ]
  %619 = phi i1 [ %.lcssa76, %.loopexit1 ], [ %.lcssa73, %.loopexit8 ], [ %.lcssa77, %.loopexit13 ]
  %620 = phi i64 [ %.lcssa29, %.loopexit1 ], [ %.ph9, %.loopexit8 ], [ %.lcssa24.lcssa, %.loopexit13 ]
  %621 = phi i64 [ %.lcssa23, %.loopexit1 ], [ %.ph10, %.loopexit8 ], [ %.lcssa60.lcssa, %.loopexit13 ]
  call void @llvm.dbg.label(metadata !3158), !dbg !3467
  %622 = icmp eq i32 %616, 2, !dbg !3642
  %623 = select i1 %619, i32 4, i32 2, !dbg !3468
  br i1 %622, label %624, label %630, !dbg !3468

624:                                              ; preds = %332, %615, %613
  %625 = phi ptr [ %.lcssa98, %613 ], [ %.lcssa99, %332 ], [ %617, %615 ]
  %626 = phi ptr [ %.lcssa90, %613 ], [ %.lcssa91, %332 ], [ %618, %615 ]
  %627 = phi i32 [ 4, %613 ], [ %333, %332 ], [ %623, %615 ]
  %628 = phi i64 [ %.lcssa27, %613 ], [ %.lcssa28, %332 ], [ %620, %615 ]
  %629 = phi i64 [ %.lcssa69, %613 ], [ %.lcssa22, %332 ], [ %621, %615 ]
  br label %630, !dbg !3468

.loopexit7:                                       ; preds = %146
  %.lcssa104 = phi i32 [ %102, %146 ]
  %.lcssa96 = phi ptr [ %103, %146 ]
  %.lcssa88 = phi ptr [ %104, %146 ]
  %.lcssa25 = phi i64 [ %129, %146 ]
  %.lcssa21 = phi i64 [ %144, %146 ], !dbg !3269
  br label %630, !dbg !3643

630:                                              ; preds = %.loopexit7, %615, %613, %624
  %631 = phi ptr [ %625, %624 ], [ %.lcssa98, %613 ], [ %617, %615 ], [ %.lcssa96, %.loopexit7 ]
  %632 = phi ptr [ %626, %624 ], [ %.lcssa90, %613 ], [ %618, %615 ], [ %.lcssa88, %.loopexit7 ]
  %633 = phi i64 [ %628, %624 ], [ %.lcssa27, %613 ], [ %620, %615 ], [ %.lcssa25, %.loopexit7 ]
  %634 = phi i64 [ %629, %624 ], [ %.lcssa69, %613 ], [ %621, %615 ], [ %.lcssa21, %.loopexit7 ]
  %635 = phi i32 [ %627, %624 ], [ %.lcssa106, %613 ], [ %616, %615 ], [ %.lcssa104, %.loopexit7 ]
  tail call void @llvm.dbg.value(metadata i32 %635, metadata !3101, metadata !DIExpression()), !dbg !3167
  %636 = and i32 %5, -3, !dbg !3643
  %637 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %633, ptr noundef %2, i64 noundef %634, i32 noundef %635, i32 noundef %636, ptr noundef null, ptr noundef %631, ptr noundef %632), !dbg !3644
  br label %638, !dbg !3645

638:                                              ; preds = %608, %611, %630, %583
  %639 = phi i64 [ %637, %630 ], [ %584, %583 ], [ %609, %611 ], [ %609, %608 ]
  ret i64 %639, !dbg !3646
}

; Function Attrs: nounwind
declare !dbg !3647 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !3650 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !3653 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3655 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3659, metadata !DIExpression()), !dbg !3662
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3660, metadata !DIExpression()), !dbg !3662
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3661, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata ptr %0, metadata !3663, metadata !DIExpression()), !dbg !3676
  call void @llvm.dbg.value(metadata i64 %1, metadata !3668, metadata !DIExpression()), !dbg !3676
  call void @llvm.dbg.value(metadata ptr null, metadata !3669, metadata !DIExpression()), !dbg !3676
  call void @llvm.dbg.value(metadata ptr %2, metadata !3670, metadata !DIExpression()), !dbg !3676
  %4 = icmp eq ptr %2, null, !dbg !3678
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3678
  call void @llvm.dbg.value(metadata ptr %5, metadata !3671, metadata !DIExpression()), !dbg !3676
  %6 = tail call ptr @__errno_location() #44, !dbg !3679
  %7 = load i32, ptr %6, align 4, !dbg !3679, !tbaa !1157
  call void @llvm.dbg.value(metadata i32 %7, metadata !3672, metadata !DIExpression()), !dbg !3676
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3680
  %9 = load i32, ptr %8, align 4, !dbg !3680, !tbaa !3041
  %10 = or i32 %9, 1, !dbg !3681
  call void @llvm.dbg.value(metadata i32 %10, metadata !3673, metadata !DIExpression()), !dbg !3676
  %11 = load i32, ptr %5, align 8, !dbg !3682, !tbaa !2991
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3683
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3684
  %14 = load ptr, ptr %13, align 8, !dbg !3684, !tbaa !3062
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3685
  %16 = load ptr, ptr %15, align 8, !dbg !3685, !tbaa !3065
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3686
  %18 = add i64 %17, 1, !dbg !3687
  call void @llvm.dbg.value(metadata i64 %18, metadata !3674, metadata !DIExpression()), !dbg !3676
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #45, !dbg !3688
  call void @llvm.dbg.value(metadata ptr %19, metadata !3675, metadata !DIExpression()), !dbg !3676
  %20 = load i32, ptr %5, align 8, !dbg !3689, !tbaa !2991
  %21 = load ptr, ptr %13, align 8, !dbg !3690, !tbaa !3062
  %22 = load ptr, ptr %15, align 8, !dbg !3691, !tbaa !3065
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3692
  store i32 %7, ptr %6, align 4, !dbg !3693, !tbaa !1157
  ret ptr %19, !dbg !3694
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3664 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3663, metadata !DIExpression()), !dbg !3695
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3668, metadata !DIExpression()), !dbg !3695
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3669, metadata !DIExpression()), !dbg !3695
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3670, metadata !DIExpression()), !dbg !3695
  %5 = icmp eq ptr %3, null, !dbg !3696
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3696
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3671, metadata !DIExpression()), !dbg !3695
  %7 = tail call ptr @__errno_location() #44, !dbg !3697
  %8 = load i32, ptr %7, align 4, !dbg !3697, !tbaa !1157
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !3672, metadata !DIExpression()), !dbg !3695
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3698
  %10 = load i32, ptr %9, align 4, !dbg !3698, !tbaa !3041
  %11 = icmp eq ptr %2, null, !dbg !3699
  %12 = zext i1 %11 to i32, !dbg !3699
  %13 = or i32 %10, %12, !dbg !3700
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !3673, metadata !DIExpression()), !dbg !3695
  %14 = load i32, ptr %6, align 8, !dbg !3701, !tbaa !2991
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3702
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3703
  %17 = load ptr, ptr %16, align 8, !dbg !3703, !tbaa !3062
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3704
  %19 = load ptr, ptr %18, align 8, !dbg !3704, !tbaa !3065
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3705
  %21 = add i64 %20, 1, !dbg !3706
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3674, metadata !DIExpression()), !dbg !3695
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #45, !dbg !3707
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !3675, metadata !DIExpression()), !dbg !3695
  %23 = load i32, ptr %6, align 8, !dbg !3708, !tbaa !2991
  %24 = load ptr, ptr %16, align 8, !dbg !3709, !tbaa !3062
  %25 = load ptr, ptr %18, align 8, !dbg !3710, !tbaa !3065
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3711
  store i32 %8, ptr %7, align 4, !dbg !3712, !tbaa !1157
  br i1 %11, label %28, label %27, !dbg !3713

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3714, !tbaa !1354
  br label %28, !dbg !3716

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3717
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !3718 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3723, !tbaa !1075
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3720, metadata !DIExpression()), !dbg !3724
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3721, metadata !DIExpression()), !dbg !3725
  %2 = load i32, ptr @nslots, align 4, !tbaa !1157
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3721, metadata !DIExpression()), !dbg !3725
  %3 = icmp sgt i32 %2, 1, !dbg !3726
  br i1 %3, label %4, label %6, !dbg !3728

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !3726
  br label %10, !dbg !3728

.loopexit:                                        ; preds = %10
  br label %6, !dbg !3729

6:                                                ; preds = %.loopexit, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3729
  %8 = load ptr, ptr %7, align 8, !dbg !3729, !tbaa !3731
  %9 = icmp eq ptr %8, @slot0, !dbg !3733
  br i1 %9, label %17, label %16, !dbg !3734

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3721, metadata !DIExpression()), !dbg !3725
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3735
  %13 = load ptr, ptr %12, align 8, !dbg !3735, !tbaa !3731
  tail call void @free(ptr noundef %13) #41, !dbg !3736
  %14 = add nuw nsw i64 %11, 1, !dbg !3737
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !3721, metadata !DIExpression()), !dbg !3725
  %15 = icmp eq i64 %14, %5, !dbg !3726
  br i1 %15, label %.loopexit, label %10, !dbg !3728, !llvm.loop !3738

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #41, !dbg !3740
  store i64 256, ptr @slotvec0, align 8, !dbg !3742, !tbaa !3743
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3744, !tbaa !3731
  br label %17, !dbg !3745

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3746
  br i1 %18, label %20, label %19, !dbg !3748

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #41, !dbg !3749
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3751, !tbaa !1075
  br label %20, !dbg !3752

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3753, !tbaa !1157
  ret void, !dbg !3754
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3755 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3757, metadata !DIExpression()), !dbg !3759
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3758, metadata !DIExpression()), !dbg !3759
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3760
  ret ptr %3, !dbg !3761
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !3762 {
  %5 = alloca i64, align 8, !DIAssignID !3782
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3776, metadata !DIExpression(), metadata !3782, metadata ptr %5, metadata !DIExpression()), !dbg !3783
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3766, metadata !DIExpression()), !dbg !3784
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3767, metadata !DIExpression()), !dbg !3784
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3768, metadata !DIExpression()), !dbg !3784
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3769, metadata !DIExpression()), !dbg !3784
  %6 = tail call ptr @__errno_location() #44, !dbg !3785
  %7 = load i32, ptr %6, align 4, !dbg !3785, !tbaa !1157
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !3770, metadata !DIExpression()), !dbg !3784
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3786, !tbaa !1075
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !3771, metadata !DIExpression()), !dbg !3784
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !3772, metadata !DIExpression()), !dbg !3784
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3787
  br i1 %9, label %10, label %11, !dbg !3787

10:                                               ; preds = %4
  tail call void @abort() #43, !dbg !3789
  unreachable, !dbg !3789

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3790, !tbaa !1157
  %13 = icmp sgt i32 %12, %0, !dbg !3791
  br i1 %13, label %32, label %14, !dbg !3792

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3793
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !3773, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3783
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #41, !dbg !3794
  %16 = sext i32 %12 to i64, !dbg !3795
  store i64 %16, ptr %5, align 8, !dbg !3796, !tbaa !1354, !DIAssignID !3797
  call void @llvm.dbg.assign(metadata i64 %16, metadata !3776, metadata !DIExpression(), metadata !3797, metadata ptr %5, metadata !DIExpression()), !dbg !3783
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3798
  %18 = add nuw nsw i32 %0, 1, !dbg !3799
  %19 = sub i32 %18, %12, !dbg !3800
  %20 = sext i32 %19 to i64, !dbg !3801
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #41, !dbg !3802
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !3771, metadata !DIExpression()), !dbg !3784
  store ptr %21, ptr @slotvec, align 8, !dbg !3803, !tbaa !1075
  br i1 %15, label %22, label %23, !dbg !3804

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3805, !tbaa.struct !3807
  br label %23, !dbg !3808

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3809, !tbaa !1157
  %25 = sext i32 %24 to i64, !dbg !3810
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3810
  %27 = load i64, ptr %5, align 8, !dbg !3811, !tbaa !1354
  %28 = sub nsw i64 %27, %25, !dbg !3812
  %29 = shl i64 %28, 4, !dbg !3813
  call void @llvm.dbg.value(metadata ptr %26, metadata !3200, metadata !DIExpression()), !dbg !3814
  call void @llvm.dbg.value(metadata i32 0, metadata !3203, metadata !DIExpression()), !dbg !3814
  call void @llvm.dbg.value(metadata i64 %29, metadata !3204, metadata !DIExpression()), !dbg !3814
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #41, !dbg !3816
  %30 = load i64, ptr %5, align 8, !dbg !3817, !tbaa !1354
  %31 = trunc i64 %30 to i32, !dbg !3817
  store i32 %31, ptr @nslots, align 4, !dbg !3818, !tbaa !1157
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #41, !dbg !3819
  br label %32, !dbg !3820

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3784
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !3771, metadata !DIExpression()), !dbg !3784
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3821
  %36 = load i64, ptr %35, align 8, !dbg !3822, !tbaa !3743
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !3777, metadata !DIExpression()), !dbg !3823
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3824
  %38 = load ptr, ptr %37, align 8, !dbg !3824, !tbaa !3731
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !3779, metadata !DIExpression()), !dbg !3823
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3825
  %40 = load i32, ptr %39, align 4, !dbg !3825, !tbaa !3041
  %41 = or i32 %40, 1, !dbg !3826
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !3780, metadata !DIExpression()), !dbg !3823
  %42 = load i32, ptr %3, align 8, !dbg !3827, !tbaa !2991
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3828
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3829
  %45 = load ptr, ptr %44, align 8, !dbg !3829, !tbaa !3062
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3830
  %47 = load ptr, ptr %46, align 8, !dbg !3830, !tbaa !3065
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3831
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !3781, metadata !DIExpression()), !dbg !3823
  %49 = icmp ugt i64 %36, %48, !dbg !3832
  br i1 %49, label %60, label %50, !dbg !3834

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3835
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !3777, metadata !DIExpression()), !dbg !3823
  store i64 %51, ptr %35, align 8, !dbg !3837, !tbaa !3743
  %52 = icmp eq ptr %38, @slot0, !dbg !3838
  br i1 %52, label %54, label %53, !dbg !3840

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #41, !dbg !3841
  br label %54, !dbg !3841

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #45, !dbg !3842
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !3779, metadata !DIExpression()), !dbg !3823
  store ptr %55, ptr %37, align 8, !dbg !3843, !tbaa !3731
  %56 = load i32, ptr %3, align 8, !dbg !3844, !tbaa !2991
  %57 = load ptr, ptr %44, align 8, !dbg !3845, !tbaa !3062
  %58 = load ptr, ptr %46, align 8, !dbg !3846, !tbaa !3065
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3847
  br label %60, !dbg !3848

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3823
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !3779, metadata !DIExpression()), !dbg !3823
  store i32 %7, ptr %6, align 4, !dbg !3849, !tbaa !1157
  ret ptr %61, !dbg !3850
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3851 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3855, metadata !DIExpression()), !dbg !3858
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3856, metadata !DIExpression()), !dbg !3858
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3857, metadata !DIExpression()), !dbg !3858
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3859
  ret ptr %4, !dbg !3860
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3861 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3863, metadata !DIExpression()), !dbg !3864
  call void @llvm.dbg.value(metadata i32 0, metadata !3757, metadata !DIExpression()), !dbg !3865
  call void @llvm.dbg.value(metadata ptr %0, metadata !3758, metadata !DIExpression()), !dbg !3865
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3867
  ret ptr %2, !dbg !3868
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3869 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3873, metadata !DIExpression()), !dbg !3875
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3874, metadata !DIExpression()), !dbg !3875
  call void @llvm.dbg.value(metadata i32 0, metadata !3855, metadata !DIExpression()), !dbg !3876
  call void @llvm.dbg.value(metadata ptr %0, metadata !3856, metadata !DIExpression()), !dbg !3876
  call void @llvm.dbg.value(metadata i64 %1, metadata !3857, metadata !DIExpression()), !dbg !3876
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3878
  ret ptr %3, !dbg !3879
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3880 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3888
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3887, metadata !DIExpression(), metadata !3888, metadata ptr %4, metadata !DIExpression()), !dbg !3889
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3884, metadata !DIExpression()), !dbg !3889
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3885, metadata !DIExpression()), !dbg !3889
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3886, metadata !DIExpression()), !dbg !3889
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !3890
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3891), !dbg !3894
  call void @llvm.dbg.value(metadata i32 %1, metadata !3895, metadata !DIExpression()), !dbg !3901
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3900, metadata !DIExpression()), !dbg !3903
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3903, !alias.scope !3891, !DIAssignID !3904
  call void @llvm.dbg.assign(metadata i8 0, metadata !3887, metadata !DIExpression(), metadata !3904, metadata ptr %4, metadata !DIExpression()), !dbg !3889
  %5 = icmp eq i32 %1, 10, !dbg !3905
  br i1 %5, label %6, label %7, !dbg !3907

6:                                                ; preds = %3
  tail call void @abort() #43, !dbg !3908, !noalias !3891
  unreachable, !dbg !3908

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3909, !tbaa !2991, !alias.scope !3891, !DIAssignID !3910
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3887, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3910, metadata ptr %4, metadata !DIExpression()), !dbg !3889
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3911
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !3912
  ret ptr %8, !dbg !3913
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3914 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3923
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3922, metadata !DIExpression(), metadata !3923, metadata ptr %5, metadata !DIExpression()), !dbg !3924
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3918, metadata !DIExpression()), !dbg !3924
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3919, metadata !DIExpression()), !dbg !3924
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3920, metadata !DIExpression()), !dbg !3924
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3921, metadata !DIExpression()), !dbg !3924
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #41, !dbg !3925
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3926), !dbg !3929
  call void @llvm.dbg.value(metadata i32 %1, metadata !3895, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3900, metadata !DIExpression()), !dbg !3932
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3932, !alias.scope !3926, !DIAssignID !3933
  call void @llvm.dbg.assign(metadata i8 0, metadata !3922, metadata !DIExpression(), metadata !3933, metadata ptr %5, metadata !DIExpression()), !dbg !3924
  %6 = icmp eq i32 %1, 10, !dbg !3934
  br i1 %6, label %7, label %8, !dbg !3935

7:                                                ; preds = %4
  tail call void @abort() #43, !dbg !3936, !noalias !3926
  unreachable, !dbg !3936

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3937, !tbaa !2991, !alias.scope !3926, !DIAssignID !3938
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3922, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3938, metadata ptr %5, metadata !DIExpression()), !dbg !3924
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3939
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #41, !dbg !3940
  ret ptr %9, !dbg !3941
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3942 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3948
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3946, metadata !DIExpression()), !dbg !3949
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3947, metadata !DIExpression()), !dbg !3949
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3887, metadata !DIExpression(), metadata !3948, metadata ptr %3, metadata !DIExpression()), !dbg !3950
  call void @llvm.dbg.value(metadata i32 0, metadata !3884, metadata !DIExpression()), !dbg !3950
  call void @llvm.dbg.value(metadata i32 %0, metadata !3885, metadata !DIExpression()), !dbg !3950
  call void @llvm.dbg.value(metadata ptr %1, metadata !3886, metadata !DIExpression()), !dbg !3950
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #41, !dbg !3952
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3953), !dbg !3956
  call void @llvm.dbg.value(metadata i32 %0, metadata !3895, metadata !DIExpression()), !dbg !3957
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3900, metadata !DIExpression()), !dbg !3959
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3959, !alias.scope !3953, !DIAssignID !3960
  call void @llvm.dbg.assign(metadata i8 0, metadata !3887, metadata !DIExpression(), metadata !3960, metadata ptr %3, metadata !DIExpression()), !dbg !3950
  %4 = icmp eq i32 %0, 10, !dbg !3961
  br i1 %4, label %5, label %6, !dbg !3962

5:                                                ; preds = %2
  tail call void @abort() #43, !dbg !3963, !noalias !3953
  unreachable, !dbg !3963

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3964, !tbaa !2991, !alias.scope !3953, !DIAssignID !3965
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3887, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3965, metadata ptr %3, metadata !DIExpression()), !dbg !3950
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3966
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #41, !dbg !3967
  ret ptr %7, !dbg !3968
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3969 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3976
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3973, metadata !DIExpression()), !dbg !3977
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3974, metadata !DIExpression()), !dbg !3977
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3975, metadata !DIExpression()), !dbg !3977
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3922, metadata !DIExpression(), metadata !3976, metadata ptr %4, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i32 0, metadata !3918, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i32 %0, metadata !3919, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata ptr %1, metadata !3920, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i64 %2, metadata !3921, metadata !DIExpression()), !dbg !3978
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !3980
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3981), !dbg !3984
  call void @llvm.dbg.value(metadata i32 %0, metadata !3895, metadata !DIExpression()), !dbg !3985
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3900, metadata !DIExpression()), !dbg !3987
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3987, !alias.scope !3981, !DIAssignID !3988
  call void @llvm.dbg.assign(metadata i8 0, metadata !3922, metadata !DIExpression(), metadata !3988, metadata ptr %4, metadata !DIExpression()), !dbg !3978
  %5 = icmp eq i32 %0, 10, !dbg !3989
  br i1 %5, label %6, label %7, !dbg !3990

6:                                                ; preds = %3
  tail call void @abort() #43, !dbg !3991, !noalias !3981
  unreachable, !dbg !3991

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3992, !tbaa !2991, !alias.scope !3981, !DIAssignID !3993
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3922, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3993, metadata ptr %4, metadata !DIExpression()), !dbg !3978
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3994
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !3995
  ret ptr %8, !dbg !3996
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !3997 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !4005
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4004, metadata !DIExpression(), metadata !4005, metadata ptr %4, metadata !DIExpression()), !dbg !4006
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4001, metadata !DIExpression()), !dbg !4006
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4002, metadata !DIExpression()), !dbg !4006
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !4003, metadata !DIExpression()), !dbg !4006
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !4007
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4008, !tbaa.struct !4009, !DIAssignID !4010
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4004, metadata !DIExpression(), metadata !4010, metadata ptr %4, metadata !DIExpression()), !dbg !4006
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3008, metadata !DIExpression()), !dbg !4011
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !3009, metadata !DIExpression()), !dbg !4011
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3010, metadata !DIExpression()), !dbg !4011
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !3011, metadata !DIExpression()), !dbg !4011
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !4013
  %6 = lshr i8 %2, 5, !dbg !4014
  %7 = zext nneg i8 %6 to i64, !dbg !4014
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !4015
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !3012, metadata !DIExpression()), !dbg !4011
  %9 = and i8 %2, 31, !dbg !4016
  %10 = zext nneg i8 %9 to i32, !dbg !4016
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !3014, metadata !DIExpression()), !dbg !4011
  %11 = load i32, ptr %8, align 4, !dbg !4017, !tbaa !1157
  %12 = lshr i32 %11, %10, !dbg !4018
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !3015, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4011
  %13 = and i32 %12, 1, !dbg !4019
  %14 = xor i32 %13, 1, !dbg !4019
  %15 = shl nuw i32 %14, %10, !dbg !4020
  %16 = xor i32 %15, %11, !dbg !4021
  store i32 %16, ptr %8, align 4, !dbg !4021, !tbaa !1157
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !4022
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !4023
  ret ptr %17, !dbg !4024
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !4025 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !4031
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4029, metadata !DIExpression()), !dbg !4032
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !4030, metadata !DIExpression()), !dbg !4032
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4004, metadata !DIExpression(), metadata !4031, metadata ptr %3, metadata !DIExpression()), !dbg !4033
  call void @llvm.dbg.value(metadata ptr %0, metadata !4001, metadata !DIExpression()), !dbg !4033
  call void @llvm.dbg.value(metadata i64 -1, metadata !4002, metadata !DIExpression()), !dbg !4033
  call void @llvm.dbg.value(metadata i8 %1, metadata !4003, metadata !DIExpression()), !dbg !4033
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #41, !dbg !4035
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4036, !tbaa.struct !4009, !DIAssignID !4037
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4004, metadata !DIExpression(), metadata !4037, metadata ptr %3, metadata !DIExpression()), !dbg !4033
  call void @llvm.dbg.value(metadata ptr %3, metadata !3008, metadata !DIExpression()), !dbg !4038
  call void @llvm.dbg.value(metadata i8 %1, metadata !3009, metadata !DIExpression()), !dbg !4038
  call void @llvm.dbg.value(metadata i32 1, metadata !3010, metadata !DIExpression()), !dbg !4038
  call void @llvm.dbg.value(metadata i8 %1, metadata !3011, metadata !DIExpression()), !dbg !4038
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !4040
  %5 = lshr i8 %1, 5, !dbg !4041
  %6 = zext nneg i8 %5 to i64, !dbg !4041
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !4042
  call void @llvm.dbg.value(metadata ptr %7, metadata !3012, metadata !DIExpression()), !dbg !4038
  %8 = and i8 %1, 31, !dbg !4043
  %9 = zext nneg i8 %8 to i32, !dbg !4043
  call void @llvm.dbg.value(metadata i32 %9, metadata !3014, metadata !DIExpression()), !dbg !4038
  %10 = load i32, ptr %7, align 4, !dbg !4044, !tbaa !1157
  %11 = lshr i32 %10, %9, !dbg !4045
  call void @llvm.dbg.value(metadata i32 %11, metadata !3015, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4038
  %12 = and i32 %11, 1, !dbg !4046
  %13 = xor i32 %12, 1, !dbg !4046
  %14 = shl nuw i32 %13, %9, !dbg !4047
  %15 = xor i32 %14, %10, !dbg !4048
  store i32 %15, ptr %7, align 4, !dbg !4048, !tbaa !1157
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !4049
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #41, !dbg !4050
  ret ptr %16, !dbg !4051
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !4052 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !4055
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4054, metadata !DIExpression()), !dbg !4056
  call void @llvm.dbg.value(metadata ptr %0, metadata !4029, metadata !DIExpression()), !dbg !4057
  call void @llvm.dbg.value(metadata i8 58, metadata !4030, metadata !DIExpression()), !dbg !4057
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4004, metadata !DIExpression(), metadata !4055, metadata ptr %2, metadata !DIExpression()), !dbg !4059
  call void @llvm.dbg.value(metadata ptr %0, metadata !4001, metadata !DIExpression()), !dbg !4059
  call void @llvm.dbg.value(metadata i64 -1, metadata !4002, metadata !DIExpression()), !dbg !4059
  call void @llvm.dbg.value(metadata i8 58, metadata !4003, metadata !DIExpression()), !dbg !4059
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #41, !dbg !4061
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4062, !tbaa.struct !4009, !DIAssignID !4063
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4004, metadata !DIExpression(), metadata !4063, metadata ptr %2, metadata !DIExpression()), !dbg !4059
  call void @llvm.dbg.value(metadata ptr %2, metadata !3008, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i8 58, metadata !3009, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i32 1, metadata !3010, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i8 58, metadata !3011, metadata !DIExpression()), !dbg !4064
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !4066
  call void @llvm.dbg.value(metadata ptr %3, metadata !3012, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i32 26, metadata !3014, metadata !DIExpression()), !dbg !4064
  %4 = load i32, ptr %3, align 4, !dbg !4067, !tbaa !1157
  call void @llvm.dbg.value(metadata i32 %4, metadata !3015, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4064
  %5 = or i32 %4, 67108864, !dbg !4068
  store i32 %5, ptr %3, align 4, !dbg !4068, !tbaa !1157
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !4069
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #41, !dbg !4070
  ret ptr %6, !dbg !4071
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4072 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !4076
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4074, metadata !DIExpression()), !dbg !4077
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4075, metadata !DIExpression()), !dbg !4077
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4004, metadata !DIExpression(), metadata !4076, metadata ptr %3, metadata !DIExpression()), !dbg !4078
  call void @llvm.dbg.value(metadata ptr %0, metadata !4001, metadata !DIExpression()), !dbg !4078
  call void @llvm.dbg.value(metadata i64 %1, metadata !4002, metadata !DIExpression()), !dbg !4078
  call void @llvm.dbg.value(metadata i8 58, metadata !4003, metadata !DIExpression()), !dbg !4078
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #41, !dbg !4080
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4081, !tbaa.struct !4009, !DIAssignID !4082
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4004, metadata !DIExpression(), metadata !4082, metadata ptr %3, metadata !DIExpression()), !dbg !4078
  call void @llvm.dbg.value(metadata ptr %3, metadata !3008, metadata !DIExpression()), !dbg !4083
  call void @llvm.dbg.value(metadata i8 58, metadata !3009, metadata !DIExpression()), !dbg !4083
  call void @llvm.dbg.value(metadata i32 1, metadata !3010, metadata !DIExpression()), !dbg !4083
  call void @llvm.dbg.value(metadata i8 58, metadata !3011, metadata !DIExpression()), !dbg !4083
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !4085
  call void @llvm.dbg.value(metadata ptr %4, metadata !3012, metadata !DIExpression()), !dbg !4083
  call void @llvm.dbg.value(metadata i32 26, metadata !3014, metadata !DIExpression()), !dbg !4083
  %5 = load i32, ptr %4, align 4, !dbg !4086, !tbaa !1157
  call void @llvm.dbg.value(metadata i32 %5, metadata !3015, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4083
  %6 = or i32 %5, 67108864, !dbg !4087
  store i32 %6, ptr %4, align 4, !dbg !4087, !tbaa !1157
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !4088
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #41, !dbg !4089
  ret ptr %7, !dbg !4090
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !4091 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !4097
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4096, metadata !DIExpression(), metadata !4097, metadata ptr %4, metadata !DIExpression()), !dbg !4098
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3900, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !4099
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4093, metadata !DIExpression()), !dbg !4098
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4094, metadata !DIExpression()), !dbg !4098
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4095, metadata !DIExpression()), !dbg !4098
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !4101
  call void @llvm.dbg.value(metadata i32 %1, metadata !3895, metadata !DIExpression()), !dbg !4102
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3900, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4102
  %5 = icmp eq i32 %1, 10, !dbg !4103
  br i1 %5, label %6, label %7, !dbg !4104

6:                                                ; preds = %3
  tail call void @abort() #43, !dbg !4105, !noalias !4106
  unreachable, !dbg !4105

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3900, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4102
  store i32 %1, ptr %4, align 8, !dbg !4109, !tbaa.struct !4009, !DIAssignID !4110
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !4109
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !4109
  call void @llvm.dbg.assign(metadata i32 %1, metadata !4096, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4110, metadata ptr %4, metadata !DIExpression()), !dbg !4098
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4096, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !4111, metadata ptr %8, metadata !DIExpression()), !dbg !4098
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3008, metadata !DIExpression()), !dbg !4112
  tail call void @llvm.dbg.value(metadata i8 58, metadata !3009, metadata !DIExpression()), !dbg !4112
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3010, metadata !DIExpression()), !dbg !4112
  tail call void @llvm.dbg.value(metadata i8 58, metadata !3011, metadata !DIExpression()), !dbg !4112
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !4114
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !3012, metadata !DIExpression()), !dbg !4112
  tail call void @llvm.dbg.value(metadata i32 26, metadata !3014, metadata !DIExpression()), !dbg !4112
  %10 = load i32, ptr %9, align 4, !dbg !4115, !tbaa !1157
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !3015, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4112
  %11 = or i32 %10, 67108864, !dbg !4116
  store i32 %11, ptr %9, align 4, !dbg !4116, !tbaa !1157, !DIAssignID !4117
  call void @llvm.dbg.assign(metadata i32 %11, metadata !4096, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !4117, metadata ptr %9, metadata !DIExpression()), !dbg !4098
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !4118
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !4119
  ret ptr %12, !dbg !4120
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4121 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !4129
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4125, metadata !DIExpression()), !dbg !4130
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4126, metadata !DIExpression()), !dbg !4130
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4127, metadata !DIExpression()), !dbg !4130
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4128, metadata !DIExpression()), !dbg !4130
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4131, metadata !DIExpression(), metadata !4129, metadata ptr %5, metadata !DIExpression()), !dbg !4141
  call void @llvm.dbg.value(metadata i32 %0, metadata !4136, metadata !DIExpression()), !dbg !4141
  call void @llvm.dbg.value(metadata ptr %1, metadata !4137, metadata !DIExpression()), !dbg !4141
  call void @llvm.dbg.value(metadata ptr %2, metadata !4138, metadata !DIExpression()), !dbg !4141
  call void @llvm.dbg.value(metadata ptr %3, metadata !4139, metadata !DIExpression()), !dbg !4141
  call void @llvm.dbg.value(metadata i64 -1, metadata !4140, metadata !DIExpression()), !dbg !4141
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #41, !dbg !4143
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4144, !tbaa.struct !4009, !DIAssignID !4145
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4131, metadata !DIExpression(), metadata !4145, metadata ptr %5, metadata !DIExpression()), !dbg !4141
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4131, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !4146, metadata ptr undef, metadata !DIExpression()), !dbg !4141
  call void @llvm.dbg.value(metadata ptr %5, metadata !3048, metadata !DIExpression()), !dbg !4147
  call void @llvm.dbg.value(metadata ptr %1, metadata !3049, metadata !DIExpression()), !dbg !4147
  call void @llvm.dbg.value(metadata ptr %2, metadata !3050, metadata !DIExpression()), !dbg !4147
  call void @llvm.dbg.value(metadata ptr %5, metadata !3048, metadata !DIExpression()), !dbg !4147
  store i32 10, ptr %5, align 8, !dbg !4149, !tbaa !2991, !DIAssignID !4150
  call void @llvm.dbg.assign(metadata i32 10, metadata !4131, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4150, metadata ptr %5, metadata !DIExpression()), !dbg !4141
  %6 = icmp ne ptr %1, null, !dbg !4151
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !4152
  br i1 %8, label %10, label %9, !dbg !4152

9:                                                ; preds = %4
  tail call void @abort() #43, !dbg !4153
  unreachable, !dbg !4153

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !4154
  store ptr %1, ptr %11, align 8, !dbg !4155, !tbaa !3062, !DIAssignID !4156
  call void @llvm.dbg.assign(metadata ptr %1, metadata !4131, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !4156, metadata ptr %11, metadata !DIExpression()), !dbg !4141
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !4157
  store ptr %2, ptr %12, align 8, !dbg !4158, !tbaa !3065, !DIAssignID !4159
  call void @llvm.dbg.assign(metadata ptr %2, metadata !4131, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !4159, metadata ptr %12, metadata !DIExpression()), !dbg !4141
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !4160
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #41, !dbg !4161
  ret ptr %13, !dbg !4162
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !4132 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !4163
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4131, metadata !DIExpression(), metadata !4163, metadata ptr %6, metadata !DIExpression()), !dbg !4164
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4136, metadata !DIExpression()), !dbg !4164
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4137, metadata !DIExpression()), !dbg !4164
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4138, metadata !DIExpression()), !dbg !4164
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4139, metadata !DIExpression()), !dbg !4164
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !4140, metadata !DIExpression()), !dbg !4164
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #41, !dbg !4165
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4166, !tbaa.struct !4009, !DIAssignID !4167
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4131, metadata !DIExpression(), metadata !4167, metadata ptr %6, metadata !DIExpression()), !dbg !4164
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4131, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !4168, metadata ptr undef, metadata !DIExpression()), !dbg !4164
  call void @llvm.dbg.value(metadata ptr %6, metadata !3048, metadata !DIExpression()), !dbg !4169
  call void @llvm.dbg.value(metadata ptr %1, metadata !3049, metadata !DIExpression()), !dbg !4169
  call void @llvm.dbg.value(metadata ptr %2, metadata !3050, metadata !DIExpression()), !dbg !4169
  call void @llvm.dbg.value(metadata ptr %6, metadata !3048, metadata !DIExpression()), !dbg !4169
  store i32 10, ptr %6, align 8, !dbg !4171, !tbaa !2991, !DIAssignID !4172
  call void @llvm.dbg.assign(metadata i32 10, metadata !4131, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4172, metadata ptr %6, metadata !DIExpression()), !dbg !4164
  %7 = icmp ne ptr %1, null, !dbg !4173
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !4174
  br i1 %9, label %11, label %10, !dbg !4174

10:                                               ; preds = %5
  tail call void @abort() #43, !dbg !4175
  unreachable, !dbg !4175

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !4176
  store ptr %1, ptr %12, align 8, !dbg !4177, !tbaa !3062, !DIAssignID !4178
  call void @llvm.dbg.assign(metadata ptr %1, metadata !4131, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !4178, metadata ptr %12, metadata !DIExpression()), !dbg !4164
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !4179
  store ptr %2, ptr %13, align 8, !dbg !4180, !tbaa !3065, !DIAssignID !4181
  call void @llvm.dbg.assign(metadata ptr %2, metadata !4131, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !4181, metadata ptr %13, metadata !DIExpression()), !dbg !4164
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !4182
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #41, !dbg !4183
  ret ptr %14, !dbg !4184
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !4185 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !4192
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4189, metadata !DIExpression()), !dbg !4193
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4190, metadata !DIExpression()), !dbg !4193
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4191, metadata !DIExpression()), !dbg !4193
  call void @llvm.dbg.value(metadata i32 0, metadata !4125, metadata !DIExpression()), !dbg !4194
  call void @llvm.dbg.value(metadata ptr %0, metadata !4126, metadata !DIExpression()), !dbg !4194
  call void @llvm.dbg.value(metadata ptr %1, metadata !4127, metadata !DIExpression()), !dbg !4194
  call void @llvm.dbg.value(metadata ptr %2, metadata !4128, metadata !DIExpression()), !dbg !4194
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4131, metadata !DIExpression(), metadata !4192, metadata ptr %4, metadata !DIExpression()), !dbg !4196
  call void @llvm.dbg.value(metadata i32 0, metadata !4136, metadata !DIExpression()), !dbg !4196
  call void @llvm.dbg.value(metadata ptr %0, metadata !4137, metadata !DIExpression()), !dbg !4196
  call void @llvm.dbg.value(metadata ptr %1, metadata !4138, metadata !DIExpression()), !dbg !4196
  call void @llvm.dbg.value(metadata ptr %2, metadata !4139, metadata !DIExpression()), !dbg !4196
  call void @llvm.dbg.value(metadata i64 -1, metadata !4140, metadata !DIExpression()), !dbg !4196
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !4198
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4199, !tbaa.struct !4009, !DIAssignID !4200
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4131, metadata !DIExpression(), metadata !4200, metadata ptr %4, metadata !DIExpression()), !dbg !4196
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4131, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !4201, metadata ptr undef, metadata !DIExpression()), !dbg !4196
  call void @llvm.dbg.value(metadata ptr %4, metadata !3048, metadata !DIExpression()), !dbg !4202
  call void @llvm.dbg.value(metadata ptr %0, metadata !3049, metadata !DIExpression()), !dbg !4202
  call void @llvm.dbg.value(metadata ptr %1, metadata !3050, metadata !DIExpression()), !dbg !4202
  call void @llvm.dbg.value(metadata ptr %4, metadata !3048, metadata !DIExpression()), !dbg !4202
  store i32 10, ptr %4, align 8, !dbg !4204, !tbaa !2991, !DIAssignID !4205
  call void @llvm.dbg.assign(metadata i32 10, metadata !4131, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4205, metadata ptr %4, metadata !DIExpression()), !dbg !4196
  %5 = icmp ne ptr %0, null, !dbg !4206
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !4207
  br i1 %7, label %9, label %8, !dbg !4207

8:                                                ; preds = %3
  tail call void @abort() #43, !dbg !4208
  unreachable, !dbg !4208

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !4209
  store ptr %0, ptr %10, align 8, !dbg !4210, !tbaa !3062, !DIAssignID !4211
  call void @llvm.dbg.assign(metadata ptr %0, metadata !4131, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !4211, metadata ptr %10, metadata !DIExpression()), !dbg !4196
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !4212
  store ptr %1, ptr %11, align 8, !dbg !4213, !tbaa !3065, !DIAssignID !4214
  call void @llvm.dbg.assign(metadata ptr %1, metadata !4131, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !4214, metadata ptr %11, metadata !DIExpression()), !dbg !4196
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !4215
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !4216
  ret ptr %12, !dbg !4217
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !4218 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !4226
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4222, metadata !DIExpression()), !dbg !4227
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4223, metadata !DIExpression()), !dbg !4227
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4224, metadata !DIExpression()), !dbg !4227
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !4225, metadata !DIExpression()), !dbg !4227
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4131, metadata !DIExpression(), metadata !4226, metadata ptr %5, metadata !DIExpression()), !dbg !4228
  call void @llvm.dbg.value(metadata i32 0, metadata !4136, metadata !DIExpression()), !dbg !4228
  call void @llvm.dbg.value(metadata ptr %0, metadata !4137, metadata !DIExpression()), !dbg !4228
  call void @llvm.dbg.value(metadata ptr %1, metadata !4138, metadata !DIExpression()), !dbg !4228
  call void @llvm.dbg.value(metadata ptr %2, metadata !4139, metadata !DIExpression()), !dbg !4228
  call void @llvm.dbg.value(metadata i64 %3, metadata !4140, metadata !DIExpression()), !dbg !4228
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #41, !dbg !4230
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4231, !tbaa.struct !4009, !DIAssignID !4232
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4131, metadata !DIExpression(), metadata !4232, metadata ptr %5, metadata !DIExpression()), !dbg !4228
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4131, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !4233, metadata ptr undef, metadata !DIExpression()), !dbg !4228
  call void @llvm.dbg.value(metadata ptr %5, metadata !3048, metadata !DIExpression()), !dbg !4234
  call void @llvm.dbg.value(metadata ptr %0, metadata !3049, metadata !DIExpression()), !dbg !4234
  call void @llvm.dbg.value(metadata ptr %1, metadata !3050, metadata !DIExpression()), !dbg !4234
  call void @llvm.dbg.value(metadata ptr %5, metadata !3048, metadata !DIExpression()), !dbg !4234
  store i32 10, ptr %5, align 8, !dbg !4236, !tbaa !2991, !DIAssignID !4237
  call void @llvm.dbg.assign(metadata i32 10, metadata !4131, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4237, metadata ptr %5, metadata !DIExpression()), !dbg !4228
  %6 = icmp ne ptr %0, null, !dbg !4238
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !4239
  br i1 %8, label %10, label %9, !dbg !4239

9:                                                ; preds = %4
  tail call void @abort() #43, !dbg !4240
  unreachable, !dbg !4240

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !4241
  store ptr %0, ptr %11, align 8, !dbg !4242, !tbaa !3062, !DIAssignID !4243
  call void @llvm.dbg.assign(metadata ptr %0, metadata !4131, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !4243, metadata ptr %11, metadata !DIExpression()), !dbg !4228
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !4244
  store ptr %1, ptr %12, align 8, !dbg !4245, !tbaa !3065, !DIAssignID !4246
  call void @llvm.dbg.assign(metadata ptr %1, metadata !4131, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !4246, metadata ptr %12, metadata !DIExpression()), !dbg !4228
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !4247
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #41, !dbg !4248
  ret ptr %13, !dbg !4249
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4250 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4254, metadata !DIExpression()), !dbg !4257
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4255, metadata !DIExpression()), !dbg !4257
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4256, metadata !DIExpression()), !dbg !4257
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !4258
  ret ptr %4, !dbg !4259
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4260 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4264, metadata !DIExpression()), !dbg !4266
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4265, metadata !DIExpression()), !dbg !4266
  call void @llvm.dbg.value(metadata i32 0, metadata !4254, metadata !DIExpression()), !dbg !4267
  call void @llvm.dbg.value(metadata ptr %0, metadata !4255, metadata !DIExpression()), !dbg !4267
  call void @llvm.dbg.value(metadata i64 %1, metadata !4256, metadata !DIExpression()), !dbg !4267
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !4269
  ret ptr %3, !dbg !4270
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !4271 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4275, metadata !DIExpression()), !dbg !4277
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4276, metadata !DIExpression()), !dbg !4277
  call void @llvm.dbg.value(metadata i32 %0, metadata !4254, metadata !DIExpression()), !dbg !4278
  call void @llvm.dbg.value(metadata ptr %1, metadata !4255, metadata !DIExpression()), !dbg !4278
  call void @llvm.dbg.value(metadata i64 -1, metadata !4256, metadata !DIExpression()), !dbg !4278
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4280
  ret ptr %3, !dbg !4281
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !4282 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4284, metadata !DIExpression()), !dbg !4285
  call void @llvm.dbg.value(metadata i32 0, metadata !4275, metadata !DIExpression()), !dbg !4286
  call void @llvm.dbg.value(metadata ptr %0, metadata !4276, metadata !DIExpression()), !dbg !4286
  call void @llvm.dbg.value(metadata i32 0, metadata !4254, metadata !DIExpression()), !dbg !4288
  call void @llvm.dbg.value(metadata ptr %0, metadata !4255, metadata !DIExpression()), !dbg !4288
  call void @llvm.dbg.value(metadata i64 -1, metadata !4256, metadata !DIExpression()), !dbg !4288
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4290
  ret ptr %2, !dbg !4291
}

; Function Attrs: nounwind uwtable
define dso_local i32 @str2sig(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #10 !dbg !4292 {
  %3 = alloca ptr, align 8, !DIAssignID !4298
  %4 = alloca ptr, align 8, !DIAssignID !4299
  %5 = alloca ptr, align 8, !DIAssignID !4300
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4296, metadata !DIExpression()), !dbg !4301
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4297, metadata !DIExpression()), !dbg !4301
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4302, metadata !DIExpression(), metadata !4298, metadata ptr %3, metadata !DIExpression()), !dbg !4323
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4315, metadata !DIExpression(), metadata !4299, metadata ptr %4, metadata !DIExpression()), !dbg !4325
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4319, metadata !DIExpression(), metadata !4300, metadata ptr %5, metadata !DIExpression()), !dbg !4326
  call void @llvm.dbg.value(metadata ptr %0, metadata !4307, metadata !DIExpression()), !dbg !4327
  %6 = load i8, ptr %0, align 1, !dbg !4328, !tbaa !1166
  %7 = zext i8 %6 to i32, !dbg !4328
  %8 = add nsw i32 %7, -48, !dbg !4328
  %9 = icmp ult i32 %8, 10, !dbg !4328
  br i1 %9, label %10, label %.preheader, !dbg !4329

.preheader:                                       ; preds = %2
  br label %21, !dbg !4330

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #41, !dbg !4331
  %11 = call i64 @strtol(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 10) #41, !dbg !4332
  call void @llvm.dbg.value(metadata i64 %11, metadata !4308, metadata !DIExpression()), !dbg !4323
  %12 = load ptr, ptr %3, align 8, !dbg !4333, !tbaa !1075
  %13 = load i8, ptr %12, align 1, !dbg !4335, !tbaa !1166
  %14 = icmp ne i8 %13, 0, !dbg !4335
  %15 = icmp sgt i64 %11, 64
  %16 = select i1 %14, i1 true, i1 %15, !dbg !4336
  %17 = trunc i64 %11 to i32, !dbg !4336
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #41, !dbg !4337
  br i1 %16, label %73, label %74

18:                                               ; preds = %21
  %19 = add nuw nsw i64 %22, 1, !dbg !4338
  call void @llvm.dbg.value(metadata i64 %19, metadata !4309, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.value(metadata i64 %19, metadata !4309, metadata !DIExpression()), !dbg !4340
  %20 = icmp eq i64 %19, 35, !dbg !4341
  br i1 %20, label %29, label %21, !dbg !4330, !llvm.loop !4342

21:                                               ; preds = %.preheader, %18
  %22 = phi i64 [ %19, %18 ], [ 0, %.preheader ]
  call void @llvm.dbg.value(metadata i64 %22, metadata !4309, metadata !DIExpression()), !dbg !4340
  %23 = getelementptr inbounds [35 x %struct.numname], ptr @numname_table, i64 0, i64 %22, i32 1, !dbg !4344
  call void @llvm.dbg.value(metadata ptr %23, metadata !4346, metadata !DIExpression()), !dbg !4350
  call void @llvm.dbg.value(metadata ptr %0, metadata !4349, metadata !DIExpression()), !dbg !4350
  %24 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) %0) #42, !dbg !4352
  %25 = icmp eq i32 %24, 0, !dbg !4353
  call void @llvm.dbg.value(metadata i64 %22, metadata !4309, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4340
  br i1 %25, label %26, label %18, !dbg !4354

26:                                               ; preds = %21
  %.lcssa = phi i64 [ %22, %21 ]
  %27 = getelementptr inbounds [35 x %struct.numname], ptr @numname_table, i64 0, i64 %.lcssa, !dbg !4355
  %28 = load i32, ptr %27, align 4, !dbg !4356, !tbaa !4357
  br label %74

29:                                               ; preds = %18
  %30 = tail call i32 @__libc_current_sigrtmin() #41, !dbg !4359
  call void @llvm.dbg.value(metadata i32 %30, metadata !4312, metadata !DIExpression()), !dbg !4360
  %31 = tail call i32 @__libc_current_sigrtmax() #41, !dbg !4361
  call void @llvm.dbg.value(metadata i32 %31, metadata !4314, metadata !DIExpression()), !dbg !4360
  %32 = icmp sgt i32 %30, 0, !dbg !4362
  br i1 %32, label %33, label %52, !dbg !4363

33:                                               ; preds = %29
  %34 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.143, i64 noundef 5) #42, !dbg !4364
  %35 = icmp eq i32 %34, 0, !dbg !4365
  br i1 %35, label %36, label %52, !dbg !4366

36:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #41, !dbg !4367
  %37 = getelementptr inbounds i8, ptr %0, i64 5, !dbg !4368
  %38 = call i64 @strtol(ptr noundef nonnull %37, ptr noundef nonnull %4, i32 noundef 10) #41, !dbg !4369
  call void @llvm.dbg.value(metadata i64 %38, metadata !4318, metadata !DIExpression()), !dbg !4325
  %39 = load ptr, ptr %4, align 8, !dbg !4370, !tbaa !1075
  %40 = load i8, ptr %39, align 1, !dbg !4372, !tbaa !1166
  %41 = icmp eq i8 %40, 0, !dbg !4372
  %42 = icmp sgt i64 %38, -1
  %43 = select i1 %41, i1 %42, i1 false, !dbg !4373
  br i1 %43, label %44, label %48, !dbg !4373

44:                                               ; preds = %36
  %45 = sub nsw i32 %31, %30, !dbg !4374
  %46 = sext i32 %45 to i64, !dbg !4375
  %47 = icmp sgt i64 %38, %46, !dbg !4376
  br i1 %47, label %48, label %49, !dbg !4377

48:                                               ; preds = %44, %36
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #41, !dbg !4378
  br label %73

49:                                               ; preds = %44
  %50 = trunc i64 %38 to i32, !dbg !4379
  %51 = add nuw i32 %30, %50, !dbg !4379
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #41, !dbg !4378
  br label %74

52:                                               ; preds = %33, %29
  %53 = icmp sgt i32 %31, 0, !dbg !4380
  br i1 %53, label %54, label %73, !dbg !4381

54:                                               ; preds = %52
  %55 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.1.144, i64 noundef 5) #42, !dbg !4382
  %56 = icmp eq i32 %55, 0, !dbg !4383
  br i1 %56, label %57, label %73, !dbg !4384

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #41, !dbg !4385
  %58 = getelementptr inbounds i8, ptr %0, i64 5, !dbg !4386
  %59 = call i64 @strtol(ptr noundef nonnull %58, ptr noundef nonnull %5, i32 noundef 10) #41, !dbg !4387
  call void @llvm.dbg.value(metadata i64 %59, metadata !4322, metadata !DIExpression()), !dbg !4326
  %60 = load ptr, ptr %5, align 8, !dbg !4388, !tbaa !1075
  %61 = load i8, ptr %60, align 1, !dbg !4390, !tbaa !1166
  %62 = icmp eq i8 %61, 0, !dbg !4390
  br i1 %62, label %63, label %69, !dbg !4391

63:                                               ; preds = %57
  %64 = sub nsw i32 %30, %31, !dbg !4392
  %65 = sext i32 %64 to i64, !dbg !4393
  %66 = icmp sge i64 %59, %65, !dbg !4394
  %67 = icmp slt i64 %59, 1
  %68 = and i1 %66, %67, !dbg !4395
  br i1 %68, label %70, label %69, !dbg !4395

69:                                               ; preds = %63, %57
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #41, !dbg !4396
  br label %73

70:                                               ; preds = %63
  %71 = trunc i64 %59 to i32, !dbg !4397
  %72 = add nsw i32 %31, %71, !dbg !4397
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #41, !dbg !4396
  br label %74

73:                                               ; preds = %69, %54, %52, %48, %10
  br label %74, !dbg !4398

74:                                               ; preds = %10, %26, %49, %70, %73
  %75 = phi i32 [ %17, %10 ], [ -1, %73 ], [ %28, %26 ], [ %51, %49 ], [ %72, %70 ], !dbg !4327
  store i32 %75, ptr %1, align 4, !dbg !4399, !tbaa !1157
  %76 = ashr i32 %75, 31, !dbg !4400
  ret i32 %76, !dbg !4401
}

; Function Attrs: nounwind
declare !dbg !4402 i32 @__libc_current_sigrtmin() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4405 i32 @__libc_current_sigrtmax() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @sig2str(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !4406 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4410, metadata !DIExpression()), !dbg !4419
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4411, metadata !DIExpression()), !dbg !4419
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4412, metadata !DIExpression()), !dbg !4420
  br label %6, !dbg !4421

3:                                                ; preds = %6
  %4 = add nuw nsw i64 %7, 1, !dbg !4422
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !4412, metadata !DIExpression()), !dbg !4420
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !4412, metadata !DIExpression()), !dbg !4420
  %5 = icmp eq i64 %4, 35, !dbg !4424
  br i1 %5, label %14, label %6, !dbg !4421, !llvm.loop !4425

6:                                                ; preds = %2, %3
  %7 = phi i64 [ 0, %2 ], [ %4, %3 ]
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !4412, metadata !DIExpression()), !dbg !4420
  %8 = getelementptr inbounds [35 x %struct.numname], ptr @numname_table, i64 0, i64 %7, !dbg !4427
  %9 = load i32, ptr %8, align 4, !dbg !4429, !tbaa !4357
  %10 = icmp eq i32 %9, %0, !dbg !4430
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !4412, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4420
  br i1 %10, label %11, label %3, !dbg !4431

11:                                               ; preds = %6
  %.lcssa = phi i64 [ %7, %6 ]
  %12 = getelementptr inbounds [35 x %struct.numname], ptr @numname_table, i64 0, i64 %.lcssa, i32 1, !dbg !4432
  call void @llvm.dbg.value(metadata ptr %1, metadata !4434, metadata !DIExpression()), !dbg !4438
  call void @llvm.dbg.value(metadata ptr %12, metadata !4437, metadata !DIExpression()), !dbg !4438
  %13 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %12), !dbg !4440
  br label %32

14:                                               ; preds = %3
  %15 = tail call i32 @__libc_current_sigrtmin() #41, !dbg !4441
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !4414, metadata !DIExpression()), !dbg !4442
  %16 = tail call i32 @__libc_current_sigrtmax() #41, !dbg !4443
  tail call void @llvm.dbg.value(metadata i32 %16, metadata !4416, metadata !DIExpression()), !dbg !4442
  %17 = icmp sgt i32 %15, %0, !dbg !4444
  %18 = icmp slt i32 %16, %0
  %19 = select i1 %17, i1 true, i1 %18, !dbg !4446
  br i1 %19, label %32, label %20, !dbg !4446

20:                                               ; preds = %14
  %21 = sub nsw i32 %16, %15, !dbg !4447
  %22 = sdiv i32 %21, 2, !dbg !4449
  %23 = add nsw i32 %22, %15, !dbg !4450
  %24 = icmp slt i32 %23, %0, !dbg !4451
  call void @llvm.dbg.value(metadata ptr %1, metadata !4434, metadata !DIExpression()), !dbg !4452
  call void @llvm.dbg.value(metadata ptr %1, metadata !4434, metadata !DIExpression()), !dbg !4455
  %25 = select i1 %24, ptr @.str.1.144, ptr @.str.143
  %26 = select i1 %24, i32 %16, i32 %15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %1, ptr noundef nonnull align 1 dereferenceable(6) %25, i64 6, i1 false), !dbg !4458
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !4417, metadata !DIExpression()), !dbg !4442
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %0, i32 %26), metadata !4418, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4442
  %27 = icmp eq i32 %26, %0, !dbg !4460
  br i1 %27, label %32, label %28, !dbg !4462

28:                                               ; preds = %20
  %29 = sub nsw i32 %0, %26, !dbg !4463
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !4418, metadata !DIExpression()), !dbg !4442
  %30 = getelementptr inbounds i8, ptr %1, i64 5, !dbg !4464
  %31 = tail call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef nonnull %30, i32 noundef 1, i64 noundef -1, ptr noundef nonnull @.str.2.147, i32 noundef %29) #41, !dbg !4464
  br label %32, !dbg !4464

32:                                               ; preds = %11, %14, %28, %20
  %33 = phi i32 [ 0, %11 ], [ -1, %14 ], [ 0, %28 ], [ 0, %20 ], !dbg !4419
  ret i32 %33, !dbg !4465
}

; Function Attrs: nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias returned writeonly, ptr noalias nocapture readonly) #29

; Function Attrs: nofree
declare !dbg !4466 i32 @__sprintf_chk(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #15

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !4469 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4508, metadata !DIExpression()), !dbg !4514
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4509, metadata !DIExpression()), !dbg !4514
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4510, metadata !DIExpression()), !dbg !4514
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4511, metadata !DIExpression()), !dbg !4514
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4512, metadata !DIExpression()), !dbg !4514
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !4513, metadata !DIExpression()), !dbg !4514
  %7 = icmp eq ptr %1, null, !dbg !4515
  br i1 %7, label %10, label %8, !dbg !4517

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.148, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #41, !dbg !4518
  br label %12, !dbg !4518

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.149, ptr noundef %2, ptr noundef %3) #41, !dbg !4519
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.150, ptr noundef nonnull @.str.3.151, i32 noundef 5) #41, !dbg !4520
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #41, !dbg !4520
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.152, ptr noundef %0), !dbg !4521
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.150, ptr noundef nonnull @.str.5.153, i32 noundef 5) #41, !dbg !4522
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.154) #41, !dbg !4522
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.152, ptr noundef %0), !dbg !4523
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
  ], !dbg !4524

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.150, ptr noundef nonnull @.str.7.155, i32 noundef 5) #41, !dbg !4525
  %21 = load ptr, ptr %4, align 8, !dbg !4525, !tbaa !1075
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #41, !dbg !4525
  br label %147, !dbg !4527

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.150, ptr noundef nonnull @.str.8.156, i32 noundef 5) #41, !dbg !4528
  %25 = load ptr, ptr %4, align 8, !dbg !4528, !tbaa !1075
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4528
  %27 = load ptr, ptr %26, align 8, !dbg !4528, !tbaa !1075
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #41, !dbg !4528
  br label %147, !dbg !4529

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.150, ptr noundef nonnull @.str.9.157, i32 noundef 5) #41, !dbg !4530
  %31 = load ptr, ptr %4, align 8, !dbg !4530, !tbaa !1075
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4530
  %33 = load ptr, ptr %32, align 8, !dbg !4530, !tbaa !1075
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4530
  %35 = load ptr, ptr %34, align 8, !dbg !4530, !tbaa !1075
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #41, !dbg !4530
  br label %147, !dbg !4531

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.150, ptr noundef nonnull @.str.10.158, i32 noundef 5) #41, !dbg !4532
  %39 = load ptr, ptr %4, align 8, !dbg !4532, !tbaa !1075
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4532
  %41 = load ptr, ptr %40, align 8, !dbg !4532, !tbaa !1075
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4532
  %43 = load ptr, ptr %42, align 8, !dbg !4532, !tbaa !1075
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4532
  %45 = load ptr, ptr %44, align 8, !dbg !4532, !tbaa !1075
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #41, !dbg !4532
  br label %147, !dbg !4533

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.150, ptr noundef nonnull @.str.11.159, i32 noundef 5) #41, !dbg !4534
  %49 = load ptr, ptr %4, align 8, !dbg !4534, !tbaa !1075
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4534
  %51 = load ptr, ptr %50, align 8, !dbg !4534, !tbaa !1075
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4534
  %53 = load ptr, ptr %52, align 8, !dbg !4534, !tbaa !1075
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4534
  %55 = load ptr, ptr %54, align 8, !dbg !4534, !tbaa !1075
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4534
  %57 = load ptr, ptr %56, align 8, !dbg !4534, !tbaa !1075
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #41, !dbg !4534
  br label %147, !dbg !4535

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.150, ptr noundef nonnull @.str.12.160, i32 noundef 5) #41, !dbg !4536
  %61 = load ptr, ptr %4, align 8, !dbg !4536, !tbaa !1075
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4536
  %63 = load ptr, ptr %62, align 8, !dbg !4536, !tbaa !1075
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4536
  %65 = load ptr, ptr %64, align 8, !dbg !4536, !tbaa !1075
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4536
  %67 = load ptr, ptr %66, align 8, !dbg !4536, !tbaa !1075
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4536
  %69 = load ptr, ptr %68, align 8, !dbg !4536, !tbaa !1075
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4536
  %71 = load ptr, ptr %70, align 8, !dbg !4536, !tbaa !1075
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #41, !dbg !4536
  br label %147, !dbg !4537

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.150, ptr noundef nonnull @.str.13.161, i32 noundef 5) #41, !dbg !4538
  %75 = load ptr, ptr %4, align 8, !dbg !4538, !tbaa !1075
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4538
  %77 = load ptr, ptr %76, align 8, !dbg !4538, !tbaa !1075
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4538
  %79 = load ptr, ptr %78, align 8, !dbg !4538, !tbaa !1075
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4538
  %81 = load ptr, ptr %80, align 8, !dbg !4538, !tbaa !1075
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4538
  %83 = load ptr, ptr %82, align 8, !dbg !4538, !tbaa !1075
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4538
  %85 = load ptr, ptr %84, align 8, !dbg !4538, !tbaa !1075
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4538
  %87 = load ptr, ptr %86, align 8, !dbg !4538, !tbaa !1075
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #41, !dbg !4538
  br label %147, !dbg !4539

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.150, ptr noundef nonnull @.str.14.162, i32 noundef 5) #41, !dbg !4540
  %91 = load ptr, ptr %4, align 8, !dbg !4540, !tbaa !1075
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4540
  %93 = load ptr, ptr %92, align 8, !dbg !4540, !tbaa !1075
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4540
  %95 = load ptr, ptr %94, align 8, !dbg !4540, !tbaa !1075
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4540
  %97 = load ptr, ptr %96, align 8, !dbg !4540, !tbaa !1075
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4540
  %99 = load ptr, ptr %98, align 8, !dbg !4540, !tbaa !1075
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4540
  %101 = load ptr, ptr %100, align 8, !dbg !4540, !tbaa !1075
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4540
  %103 = load ptr, ptr %102, align 8, !dbg !4540, !tbaa !1075
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4540
  %105 = load ptr, ptr %104, align 8, !dbg !4540, !tbaa !1075
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #41, !dbg !4540
  br label %147, !dbg !4541

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.150, ptr noundef nonnull @.str.15.163, i32 noundef 5) #41, !dbg !4542
  %109 = load ptr, ptr %4, align 8, !dbg !4542, !tbaa !1075
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4542
  %111 = load ptr, ptr %110, align 8, !dbg !4542, !tbaa !1075
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4542
  %113 = load ptr, ptr %112, align 8, !dbg !4542, !tbaa !1075
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4542
  %115 = load ptr, ptr %114, align 8, !dbg !4542, !tbaa !1075
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4542
  %117 = load ptr, ptr %116, align 8, !dbg !4542, !tbaa !1075
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4542
  %119 = load ptr, ptr %118, align 8, !dbg !4542, !tbaa !1075
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4542
  %121 = load ptr, ptr %120, align 8, !dbg !4542, !tbaa !1075
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4542
  %123 = load ptr, ptr %122, align 8, !dbg !4542, !tbaa !1075
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4542
  %125 = load ptr, ptr %124, align 8, !dbg !4542, !tbaa !1075
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #41, !dbg !4542
  br label %147, !dbg !4543

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.150, ptr noundef nonnull @.str.16.164, i32 noundef 5) #41, !dbg !4544
  %129 = load ptr, ptr %4, align 8, !dbg !4544, !tbaa !1075
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4544
  %131 = load ptr, ptr %130, align 8, !dbg !4544, !tbaa !1075
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4544
  %133 = load ptr, ptr %132, align 8, !dbg !4544, !tbaa !1075
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4544
  %135 = load ptr, ptr %134, align 8, !dbg !4544, !tbaa !1075
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4544
  %137 = load ptr, ptr %136, align 8, !dbg !4544, !tbaa !1075
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4544
  %139 = load ptr, ptr %138, align 8, !dbg !4544, !tbaa !1075
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4544
  %141 = load ptr, ptr %140, align 8, !dbg !4544, !tbaa !1075
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4544
  %143 = load ptr, ptr %142, align 8, !dbg !4544, !tbaa !1075
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4544
  %145 = load ptr, ptr %144, align 8, !dbg !4544, !tbaa !1075
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #41, !dbg !4544
  br label %147, !dbg !4545

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4546
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !4547 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4551, metadata !DIExpression()), !dbg !4557
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4552, metadata !DIExpression()), !dbg !4557
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4553, metadata !DIExpression()), !dbg !4557
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4554, metadata !DIExpression()), !dbg !4557
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4555, metadata !DIExpression()), !dbg !4557
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4556, metadata !DIExpression()), !dbg !4557
  br label %6, !dbg !4558

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4560
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !4556, metadata !DIExpression()), !dbg !4557
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !4561
  %9 = load ptr, ptr %8, align 8, !dbg !4561, !tbaa !1075
  %10 = icmp eq ptr %9, null, !dbg !4563
  %11 = add i64 %7, 1, !dbg !4564
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4556, metadata !DIExpression()), !dbg !4557
  br i1 %10, label %12, label %6, !dbg !4563, !llvm.loop !4565

12:                                               ; preds = %6
  %.lcssa = phi i64 [ %7, %6 ], !dbg !4560
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %.lcssa), !dbg !4567
  ret void, !dbg !4568
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !4569 {
  %6 = alloca [10 x ptr], align 8, !DIAssignID !4591
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4589, metadata !DIExpression(), metadata !4591, metadata ptr %6, metadata !DIExpression()), !dbg !4592
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4583, metadata !DIExpression()), !dbg !4592
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4584, metadata !DIExpression()), !dbg !4592
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4585, metadata !DIExpression()), !dbg !4592
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4586, metadata !DIExpression()), !dbg !4592
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4587, metadata !DIExpression(DW_OP_deref)), !dbg !4592
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #41, !dbg !4593
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4588, metadata !DIExpression()), !dbg !4592
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4588, metadata !DIExpression()), !dbg !4592
  %10 = icmp sgt i32 %9, -1, !dbg !4594
  br i1 %10, label %18, label %11, !dbg !4594

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !4594
  store i32 %12, ptr %7, align 8, !dbg !4594
  %13 = icmp ult i32 %9, -7, !dbg !4594
  br i1 %13, label %14, label %18, !dbg !4594

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !4594
  %16 = sext i32 %9 to i64, !dbg !4594
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !4594
  br label %22, !dbg !4594

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !4594
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !4594
  store ptr %21, ptr %4, align 8, !dbg !4594
  br label %22, !dbg !4594

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !4594
  %25 = load ptr, ptr %24, align 8, !dbg !4594
  store ptr %25, ptr %6, align 8, !dbg !4597, !tbaa !1075
  %26 = icmp eq ptr %25, null, !dbg !4598
  br i1 %26, label %197, label %27, !dbg !4599

27:                                               ; preds = %22
  tail call void @llvm.dbg.value(metadata i64 1, metadata !4588, metadata !DIExpression()), !dbg !4592
  tail call void @llvm.dbg.value(metadata i64 1, metadata !4588, metadata !DIExpression()), !dbg !4592
  %28 = icmp sgt i32 %23, -1, !dbg !4594
  br i1 %28, label %36, label %29, !dbg !4594

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !4594
  store i32 %30, ptr %7, align 8, !dbg !4594
  %31 = icmp ult i32 %23, -7, !dbg !4594
  br i1 %31, label %32, label %36, !dbg !4594

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !4594
  %34 = sext i32 %23 to i64, !dbg !4594
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !4594
  br label %40, !dbg !4594

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !4594
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !4594
  store ptr %39, ptr %4, align 8, !dbg !4594
  br label %40, !dbg !4594

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !4594
  %43 = load ptr, ptr %42, align 8, !dbg !4594
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !4600
  store ptr %43, ptr %44, align 8, !dbg !4597, !tbaa !1075
  %45 = icmp eq ptr %43, null, !dbg !4598
  br i1 %45, label %197, label %46, !dbg !4599

46:                                               ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 2, metadata !4588, metadata !DIExpression()), !dbg !4592
  tail call void @llvm.dbg.value(metadata i64 2, metadata !4588, metadata !DIExpression()), !dbg !4592
  %47 = icmp sgt i32 %41, -1, !dbg !4594
  br i1 %47, label %55, label %48, !dbg !4594

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !4594
  store i32 %49, ptr %7, align 8, !dbg !4594
  %50 = icmp ult i32 %41, -7, !dbg !4594
  br i1 %50, label %51, label %55, !dbg !4594

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !4594
  %53 = sext i32 %41 to i64, !dbg !4594
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !4594
  br label %59, !dbg !4594

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !4594
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !4594
  store ptr %58, ptr %4, align 8, !dbg !4594
  br label %59, !dbg !4594

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !4594
  %62 = load ptr, ptr %61, align 8, !dbg !4594
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !4600
  store ptr %62, ptr %63, align 8, !dbg !4597, !tbaa !1075
  %64 = icmp eq ptr %62, null, !dbg !4598
  br i1 %64, label %197, label %65, !dbg !4599

65:                                               ; preds = %59
  tail call void @llvm.dbg.value(metadata i64 3, metadata !4588, metadata !DIExpression()), !dbg !4592
  tail call void @llvm.dbg.value(metadata i64 3, metadata !4588, metadata !DIExpression()), !dbg !4592
  %66 = icmp sgt i32 %60, -1, !dbg !4594
  br i1 %66, label %74, label %67, !dbg !4594

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !4594
  store i32 %68, ptr %7, align 8, !dbg !4594
  %69 = icmp ult i32 %60, -7, !dbg !4594
  br i1 %69, label %70, label %74, !dbg !4594

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !4594
  %72 = sext i32 %60 to i64, !dbg !4594
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !4594
  br label %78, !dbg !4594

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !4594
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !4594
  store ptr %77, ptr %4, align 8, !dbg !4594
  br label %78, !dbg !4594

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !4594
  %81 = load ptr, ptr %80, align 8, !dbg !4594
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !4600
  store ptr %81, ptr %82, align 8, !dbg !4597, !tbaa !1075
  %83 = icmp eq ptr %81, null, !dbg !4598
  br i1 %83, label %197, label %84, !dbg !4599

84:                                               ; preds = %78
  tail call void @llvm.dbg.value(metadata i64 4, metadata !4588, metadata !DIExpression()), !dbg !4592
  tail call void @llvm.dbg.value(metadata i64 4, metadata !4588, metadata !DIExpression()), !dbg !4592
  %85 = icmp sgt i32 %79, -1, !dbg !4594
  br i1 %85, label %93, label %86, !dbg !4594

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !4594
  store i32 %87, ptr %7, align 8, !dbg !4594
  %88 = icmp ult i32 %79, -7, !dbg !4594
  br i1 %88, label %89, label %93, !dbg !4594

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !4594
  %91 = sext i32 %79 to i64, !dbg !4594
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !4594
  br label %97, !dbg !4594

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !4594
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !4594
  store ptr %96, ptr %4, align 8, !dbg !4594
  br label %97, !dbg !4594

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !4594
  %100 = load ptr, ptr %99, align 8, !dbg !4594
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !4600
  store ptr %100, ptr %101, align 8, !dbg !4597, !tbaa !1075
  %102 = icmp eq ptr %100, null, !dbg !4598
  br i1 %102, label %197, label %103, !dbg !4599

103:                                              ; preds = %97
  tail call void @llvm.dbg.value(metadata i64 5, metadata !4588, metadata !DIExpression()), !dbg !4592
  tail call void @llvm.dbg.value(metadata i64 5, metadata !4588, metadata !DIExpression()), !dbg !4592
  %104 = icmp sgt i32 %98, -1, !dbg !4594
  br i1 %104, label %112, label %105, !dbg !4594

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !4594
  store i32 %106, ptr %7, align 8, !dbg !4594
  %107 = icmp ult i32 %98, -7, !dbg !4594
  br i1 %107, label %108, label %112, !dbg !4594

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !4594
  %110 = sext i32 %98 to i64, !dbg !4594
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !4594
  br label %116, !dbg !4594

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !4594
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !4594
  store ptr %115, ptr %4, align 8, !dbg !4594
  br label %116, !dbg !4594

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !4594
  %119 = load ptr, ptr %118, align 8, !dbg !4594
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !4600
  store ptr %119, ptr %120, align 8, !dbg !4597, !tbaa !1075
  %121 = icmp eq ptr %119, null, !dbg !4598
  br i1 %121, label %197, label %122, !dbg !4599

122:                                              ; preds = %116
  tail call void @llvm.dbg.value(metadata i64 6, metadata !4588, metadata !DIExpression()), !dbg !4592
  tail call void @llvm.dbg.value(metadata i64 6, metadata !4588, metadata !DIExpression()), !dbg !4592
  %123 = icmp sgt i32 %117, -1, !dbg !4594
  br i1 %123, label %131, label %124, !dbg !4594

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !4594
  store i32 %125, ptr %7, align 8, !dbg !4594
  %126 = icmp ult i32 %117, -7, !dbg !4594
  br i1 %126, label %127, label %131, !dbg !4594

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !4594
  %129 = sext i32 %117 to i64, !dbg !4594
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !4594
  br label %135, !dbg !4594

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !4594
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !4594
  store ptr %134, ptr %4, align 8, !dbg !4594
  br label %135, !dbg !4594

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !4594
  %138 = load ptr, ptr %137, align 8, !dbg !4594
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !4600
  store ptr %138, ptr %139, align 8, !dbg !4597, !tbaa !1075
  %140 = icmp eq ptr %138, null, !dbg !4598
  br i1 %140, label %197, label %141, !dbg !4599

141:                                              ; preds = %135
  tail call void @llvm.dbg.value(metadata i64 7, metadata !4588, metadata !DIExpression()), !dbg !4592
  tail call void @llvm.dbg.value(metadata i64 7, metadata !4588, metadata !DIExpression()), !dbg !4592
  %142 = icmp sgt i32 %136, -1, !dbg !4594
  br i1 %142, label %150, label %143, !dbg !4594

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !4594
  store i32 %144, ptr %7, align 8, !dbg !4594
  %145 = icmp ult i32 %136, -7, !dbg !4594
  br i1 %145, label %146, label %150, !dbg !4594

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !4594
  %148 = sext i32 %136 to i64, !dbg !4594
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !4594
  br label %154, !dbg !4594

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !4594
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !4594
  store ptr %153, ptr %4, align 8, !dbg !4594
  br label %154, !dbg !4594

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !4594
  %157 = load ptr, ptr %156, align 8, !dbg !4594
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !4600
  store ptr %157, ptr %158, align 8, !dbg !4597, !tbaa !1075
  %159 = icmp eq ptr %157, null, !dbg !4598
  br i1 %159, label %197, label %160, !dbg !4599

160:                                              ; preds = %154
  tail call void @llvm.dbg.value(metadata i64 8, metadata !4588, metadata !DIExpression()), !dbg !4592
  tail call void @llvm.dbg.value(metadata i64 8, metadata !4588, metadata !DIExpression()), !dbg !4592
  %161 = icmp sgt i32 %155, -1, !dbg !4594
  br i1 %161, label %169, label %162, !dbg !4594

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !4594
  store i32 %163, ptr %7, align 8, !dbg !4594
  %164 = icmp ult i32 %155, -7, !dbg !4594
  br i1 %164, label %165, label %169, !dbg !4594

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !4594
  %167 = sext i32 %155 to i64, !dbg !4594
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !4594
  br label %173, !dbg !4594

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !4594
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !4594
  store ptr %172, ptr %4, align 8, !dbg !4594
  br label %173, !dbg !4594

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !4594
  %176 = load ptr, ptr %175, align 8, !dbg !4594
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !4600
  store ptr %176, ptr %177, align 8, !dbg !4597, !tbaa !1075
  %178 = icmp eq ptr %176, null, !dbg !4598
  br i1 %178, label %197, label %179, !dbg !4599

179:                                              ; preds = %173
  tail call void @llvm.dbg.value(metadata i64 9, metadata !4588, metadata !DIExpression()), !dbg !4592
  tail call void @llvm.dbg.value(metadata i64 9, metadata !4588, metadata !DIExpression()), !dbg !4592
  %180 = icmp sgt i32 %174, -1, !dbg !4594
  br i1 %180, label %188, label %181, !dbg !4594

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !4594
  store i32 %182, ptr %7, align 8, !dbg !4594
  %183 = icmp ult i32 %174, -7, !dbg !4594
  br i1 %183, label %184, label %188, !dbg !4594

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !4594
  %186 = sext i32 %174 to i64, !dbg !4594
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !4594
  br label %191, !dbg !4594

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !4594
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !4594
  store ptr %190, ptr %4, align 8, !dbg !4594
  br label %191, !dbg !4594

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !4594
  %193 = load ptr, ptr %192, align 8, !dbg !4594
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !4600
  store ptr %193, ptr %194, align 8, !dbg !4597, !tbaa !1075
  %195 = icmp eq ptr %193, null, !dbg !4598
  %196 = select i1 %195, i64 9, i64 10, !dbg !4599
  br label %197, !dbg !4599

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !4601
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !4602
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #41, !dbg !4603
  ret void, !dbg !4603
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !4604 {
  %5 = alloca %struct.__va_list, align 8, !DIAssignID !4613
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4612, metadata !DIExpression(), metadata !4613, metadata ptr %5, metadata !DIExpression()), !dbg !4614
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4608, metadata !DIExpression()), !dbg !4614
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4609, metadata !DIExpression()), !dbg !4614
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4610, metadata !DIExpression()), !dbg !4614
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4611, metadata !DIExpression()), !dbg !4614
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #41, !dbg !4615
  call void @llvm.va_start(ptr nonnull %5), !dbg !4616
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #41, !dbg !4617
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !4617, !tbaa.struct !2689
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !4617
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #41, !dbg !4617
  call void @llvm.va_end(ptr nonnull %5), !dbg !4618
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #41, !dbg !4619
  ret void, !dbg !4619
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !4620 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !4621, !tbaa !1075
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.152, ptr noundef %1), !dbg !4621
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.150, ptr noundef nonnull @.str.17.169, i32 noundef 5) #41, !dbg !4622
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.170) #41, !dbg !4622
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.150, ptr noundef nonnull @.str.19.171, i32 noundef 5) #41, !dbg !4623
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.172, ptr noundef nonnull @.str.21.173) #41, !dbg !4623
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.150, ptr noundef nonnull @.str.22.174, i32 noundef 5) #41, !dbg !4624
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.175) #41, !dbg !4624
  ret void, !dbg !4625
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !4626 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4631, metadata !DIExpression()), !dbg !4634
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4632, metadata !DIExpression()), !dbg !4634
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4633, metadata !DIExpression()), !dbg !4634
  call void @llvm.dbg.value(metadata ptr %0, metadata !4635, metadata !DIExpression()), !dbg !4640
  call void @llvm.dbg.value(metadata i64 %1, metadata !4638, metadata !DIExpression()), !dbg !4640
  call void @llvm.dbg.value(metadata i64 %2, metadata !4639, metadata !DIExpression()), !dbg !4640
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #41, !dbg !4642
  call void @llvm.dbg.value(metadata ptr %4, metadata !4643, metadata !DIExpression()), !dbg !4648
  %5 = icmp eq ptr %4, null, !dbg !4650
  br i1 %5, label %6, label %7, !dbg !4652

6:                                                ; preds = %3
  tail call void @xalloc_die() #43, !dbg !4653
  unreachable, !dbg !4653

7:                                                ; preds = %3
  ret ptr %4, !dbg !4654
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !4636 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4635, metadata !DIExpression()), !dbg !4655
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4638, metadata !DIExpression()), !dbg !4655
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4639, metadata !DIExpression()), !dbg !4655
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #41, !dbg !4656
  call void @llvm.dbg.value(metadata ptr %4, metadata !4643, metadata !DIExpression()), !dbg !4657
  %5 = icmp eq ptr %4, null, !dbg !4659
  br i1 %5, label %6, label %7, !dbg !4660

6:                                                ; preds = %3
  tail call void @xalloc_die() #43, !dbg !4661
  unreachable, !dbg !4661

7:                                                ; preds = %3
  ret ptr %4, !dbg !4662
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4663 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4667, metadata !DIExpression()), !dbg !4668
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !4669
  call void @llvm.dbg.value(metadata ptr %2, metadata !4643, metadata !DIExpression()), !dbg !4670
  %3 = icmp eq ptr %2, null, !dbg !4672
  br i1 %3, label %4, label %5, !dbg !4673

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4674
  unreachable, !dbg !4674

5:                                                ; preds = %1
  ret ptr %2, !dbg !4675
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !4676 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4677 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4681, metadata !DIExpression()), !dbg !4682
  call void @llvm.dbg.value(metadata i64 %0, metadata !4683, metadata !DIExpression()), !dbg !4687
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !4689
  call void @llvm.dbg.value(metadata ptr %2, metadata !4643, metadata !DIExpression()), !dbg !4690
  %3 = icmp eq ptr %2, null, !dbg !4692
  br i1 %3, label %4, label %5, !dbg !4693

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4694
  unreachable, !dbg !4694

5:                                                ; preds = %1
  ret ptr %2, !dbg !4695
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4696 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4700, metadata !DIExpression()), !dbg !4701
  call void @llvm.dbg.value(metadata i64 %0, metadata !4667, metadata !DIExpression()), !dbg !4702
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !4704
  call void @llvm.dbg.value(metadata ptr %2, metadata !4643, metadata !DIExpression()), !dbg !4705
  %3 = icmp eq ptr %2, null, !dbg !4707
  br i1 %3, label %4, label %5, !dbg !4708

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4709
  unreachable, !dbg !4709

5:                                                ; preds = %1
  ret ptr %2, !dbg !4710
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4711 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4715, metadata !DIExpression()), !dbg !4717
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4716, metadata !DIExpression()), !dbg !4717
  call void @llvm.dbg.value(metadata ptr %0, metadata !4718, metadata !DIExpression()), !dbg !4723
  call void @llvm.dbg.value(metadata i64 %1, metadata !4722, metadata !DIExpression()), !dbg !4723
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4725
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #49, !dbg !4726
  call void @llvm.dbg.value(metadata ptr %4, metadata !4643, metadata !DIExpression()), !dbg !4727
  %5 = icmp eq ptr %4, null, !dbg !4729
  br i1 %5, label %6, label %7, !dbg !4730

6:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4731
  unreachable, !dbg !4731

7:                                                ; preds = %2
  ret ptr %4, !dbg !4732
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4733 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #35

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4734 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4738, metadata !DIExpression()), !dbg !4740
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4739, metadata !DIExpression()), !dbg !4740
  call void @llvm.dbg.value(metadata ptr %0, metadata !4741, metadata !DIExpression()), !dbg !4745
  call void @llvm.dbg.value(metadata i64 %1, metadata !4744, metadata !DIExpression()), !dbg !4745
  call void @llvm.dbg.value(metadata ptr %0, metadata !4718, metadata !DIExpression()), !dbg !4747
  call void @llvm.dbg.value(metadata i64 %1, metadata !4722, metadata !DIExpression()), !dbg !4747
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4749
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #49, !dbg !4750
  call void @llvm.dbg.value(metadata ptr %4, metadata !4643, metadata !DIExpression()), !dbg !4751
  %5 = icmp eq ptr %4, null, !dbg !4753
  br i1 %5, label %6, label %7, !dbg !4754

6:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4755
  unreachable, !dbg !4755

7:                                                ; preds = %2
  ret ptr %4, !dbg !4756
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !4757 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4761, metadata !DIExpression()), !dbg !4764
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4762, metadata !DIExpression()), !dbg !4764
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4763, metadata !DIExpression()), !dbg !4764
  call void @llvm.dbg.value(metadata ptr %0, metadata !4765, metadata !DIExpression()), !dbg !4770
  call void @llvm.dbg.value(metadata i64 %1, metadata !4768, metadata !DIExpression()), !dbg !4770
  call void @llvm.dbg.value(metadata i64 %2, metadata !4769, metadata !DIExpression()), !dbg !4770
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #41, !dbg !4772
  call void @llvm.dbg.value(metadata ptr %4, metadata !4643, metadata !DIExpression()), !dbg !4773
  %5 = icmp eq ptr %4, null, !dbg !4775
  br i1 %5, label %6, label %7, !dbg !4776

6:                                                ; preds = %3
  tail call void @xalloc_die() #43, !dbg !4777
  unreachable, !dbg !4777

7:                                                ; preds = %3
  ret ptr %4, !dbg !4778
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4779 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4783, metadata !DIExpression()), !dbg !4785
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4784, metadata !DIExpression()), !dbg !4785
  call void @llvm.dbg.value(metadata ptr null, metadata !4635, metadata !DIExpression()), !dbg !4786
  call void @llvm.dbg.value(metadata i64 %0, metadata !4638, metadata !DIExpression()), !dbg !4786
  call void @llvm.dbg.value(metadata i64 %1, metadata !4639, metadata !DIExpression()), !dbg !4786
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #41, !dbg !4788
  call void @llvm.dbg.value(metadata ptr %3, metadata !4643, metadata !DIExpression()), !dbg !4789
  %4 = icmp eq ptr %3, null, !dbg !4791
  br i1 %4, label %5, label %6, !dbg !4792

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4793
  unreachable, !dbg !4793

6:                                                ; preds = %2
  ret ptr %3, !dbg !4794
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4795 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4799, metadata !DIExpression()), !dbg !4801
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4800, metadata !DIExpression()), !dbg !4801
  call void @llvm.dbg.value(metadata ptr null, metadata !4761, metadata !DIExpression()), !dbg !4802
  call void @llvm.dbg.value(metadata i64 %0, metadata !4762, metadata !DIExpression()), !dbg !4802
  call void @llvm.dbg.value(metadata i64 %1, metadata !4763, metadata !DIExpression()), !dbg !4802
  call void @llvm.dbg.value(metadata ptr null, metadata !4765, metadata !DIExpression()), !dbg !4804
  call void @llvm.dbg.value(metadata i64 %0, metadata !4768, metadata !DIExpression()), !dbg !4804
  call void @llvm.dbg.value(metadata i64 %1, metadata !4769, metadata !DIExpression()), !dbg !4804
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #41, !dbg !4806
  call void @llvm.dbg.value(metadata ptr %3, metadata !4643, metadata !DIExpression()), !dbg !4807
  %4 = icmp eq ptr %3, null, !dbg !4809
  br i1 %4, label %5, label %6, !dbg !4810

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4811
  unreachable, !dbg !4811

6:                                                ; preds = %2
  ret ptr %3, !dbg !4812
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4813 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4817, metadata !DIExpression()), !dbg !4819
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4818, metadata !DIExpression()), !dbg !4819
  call void @llvm.dbg.value(metadata ptr %0, metadata !1015, metadata !DIExpression()), !dbg !4820
  call void @llvm.dbg.value(metadata ptr %1, metadata !1016, metadata !DIExpression()), !dbg !4820
  call void @llvm.dbg.value(metadata i64 1, metadata !1017, metadata !DIExpression()), !dbg !4820
  %3 = load i64, ptr %1, align 8, !dbg !4822, !tbaa !1354
  call void @llvm.dbg.value(metadata i64 %3, metadata !1018, metadata !DIExpression()), !dbg !4820
  %4 = icmp eq ptr %0, null, !dbg !4823
  br i1 %4, label %5, label %8, !dbg !4825

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4826
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4829
  br label %15, !dbg !4829

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4830
  %10 = add nuw i64 %9, 1, !dbg !4830
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4830
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4830
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4830
  call void @llvm.dbg.value(metadata i64 %13, metadata !1018, metadata !DIExpression()), !dbg !4820
  br i1 %12, label %14, label %15, !dbg !4833

14:                                               ; preds = %8
  tail call void @xalloc_die() #43, !dbg !4834
  unreachable, !dbg !4834

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4820
  call void @llvm.dbg.value(metadata i64 %16, metadata !1018, metadata !DIExpression()), !dbg !4820
  call void @llvm.dbg.value(metadata ptr %0, metadata !4635, metadata !DIExpression()), !dbg !4835
  call void @llvm.dbg.value(metadata i64 %16, metadata !4638, metadata !DIExpression()), !dbg !4835
  call void @llvm.dbg.value(metadata i64 1, metadata !4639, metadata !DIExpression()), !dbg !4835
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #41, !dbg !4837
  call void @llvm.dbg.value(metadata ptr %17, metadata !4643, metadata !DIExpression()), !dbg !4838
  %18 = icmp eq ptr %17, null, !dbg !4840
  br i1 %18, label %19, label %20, !dbg !4841

19:                                               ; preds = %15
  tail call void @xalloc_die() #43, !dbg !4842
  unreachable, !dbg !4842

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !1015, metadata !DIExpression()), !dbg !4820
  store i64 %16, ptr %1, align 8, !dbg !4843, !tbaa !1354
  ret ptr %17, !dbg !4844
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !1010 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1015, metadata !DIExpression()), !dbg !4845
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1016, metadata !DIExpression()), !dbg !4845
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !1017, metadata !DIExpression()), !dbg !4845
  %4 = load i64, ptr %1, align 8, !dbg !4846, !tbaa !1354
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !1018, metadata !DIExpression()), !dbg !4845
  %5 = icmp eq ptr %0, null, !dbg !4847
  br i1 %5, label %6, label %13, !dbg !4848

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4849
  br i1 %7, label %8, label %20, !dbg !4850

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4851
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !1018, metadata !DIExpression()), !dbg !4845
  %10 = icmp ugt i64 %2, 128, !dbg !4853
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4854
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !1018, metadata !DIExpression()), !dbg !4845
  br label %20, !dbg !4855

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4856
  %15 = add nuw i64 %14, 1, !dbg !4856
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4856
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4856
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4856
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !1018, metadata !DIExpression()), !dbg !4845
  br i1 %17, label %19, label %20, !dbg !4857

19:                                               ; preds = %13
  tail call void @xalloc_die() #43, !dbg !4858
  unreachable, !dbg !4858

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4845
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !1018, metadata !DIExpression()), !dbg !4845
  call void @llvm.dbg.value(metadata ptr %0, metadata !4635, metadata !DIExpression()), !dbg !4859
  call void @llvm.dbg.value(metadata i64 %21, metadata !4638, metadata !DIExpression()), !dbg !4859
  call void @llvm.dbg.value(metadata i64 %2, metadata !4639, metadata !DIExpression()), !dbg !4859
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #41, !dbg !4861
  call void @llvm.dbg.value(metadata ptr %22, metadata !4643, metadata !DIExpression()), !dbg !4862
  %23 = icmp eq ptr %22, null, !dbg !4864
  br i1 %23, label %24, label %25, !dbg !4865

24:                                               ; preds = %20
  tail call void @xalloc_die() #43, !dbg !4866
  unreachable, !dbg !4866

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !1015, metadata !DIExpression()), !dbg !4845
  store i64 %21, ptr %1, align 8, !dbg !4867, !tbaa !1354
  ret ptr %22, !dbg !4868
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !1022 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1029, metadata !DIExpression()), !dbg !4869
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1030, metadata !DIExpression()), !dbg !4869
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !1031, metadata !DIExpression()), !dbg !4869
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1032, metadata !DIExpression()), !dbg !4869
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !1033, metadata !DIExpression()), !dbg !4869
  %6 = load i64, ptr %1, align 8, !dbg !4870, !tbaa !1354
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !1034, metadata !DIExpression()), !dbg !4869
  %7 = ashr i64 %6, 1, !dbg !4871
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4871
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4871
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4871
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !1035, metadata !DIExpression()), !dbg !4869
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4873
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !1035, metadata !DIExpression()), !dbg !4869
  %12 = icmp sgt i64 %3, -1, !dbg !4874
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !4876
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !4876
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !1035, metadata !DIExpression()), !dbg !4869
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !4877
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !4877
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !4877
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !1036, metadata !DIExpression()), !dbg !4869
  %18 = icmp slt i64 %17, 128, !dbg !4877
  %19 = select i1 %18, i64 128, i64 0, !dbg !4877
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !4877
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !1037, metadata !DIExpression()), !dbg !4869
  %21 = icmp eq i64 %20, 0, !dbg !4878
  br i1 %21, label %28, label %22, !dbg !4880

22:                                               ; preds = %5
  %23 = freeze i64 %20
  %24 = sdiv i64 %23, %4, !dbg !4881
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !1035, metadata !DIExpression()), !dbg !4869
  %25 = mul i64 %24, %4
  %26 = sub i64 %23, %25
  %27 = sub nsw i64 %20, %26, !dbg !4883
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !1036, metadata !DIExpression()), !dbg !4869
  br label %28, !dbg !4884

28:                                               ; preds = %22, %5
  %29 = phi i64 [ %24, %22 ], [ %14, %5 ], !dbg !4869
  %30 = phi i64 [ %27, %22 ], [ %17, %5 ], !dbg !4869
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !1036, metadata !DIExpression()), !dbg !4869
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !1035, metadata !DIExpression()), !dbg !4869
  %31 = icmp eq ptr %0, null, !dbg !4885
  br i1 %31, label %32, label %33, !dbg !4887

32:                                               ; preds = %28
  store i64 0, ptr %1, align 8, !dbg !4888, !tbaa !1354
  br label %33, !dbg !4889

33:                                               ; preds = %32, %28
  %34 = sub nsw i64 %29, %6, !dbg !4890
  %35 = icmp slt i64 %34, %2, !dbg !4892
  br i1 %35, label %36, label %48, !dbg !4893

36:                                               ; preds = %33
  %37 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4894
  %38 = extractvalue { i64, i1 } %37, 1, !dbg !4894
  %39 = extractvalue { i64, i1 } %37, 0, !dbg !4894
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !1035, metadata !DIExpression()), !dbg !4869
  %40 = icmp sgt i64 %39, %3
  %41 = select i1 %12, i1 %40, i1 false
  %42 = or i1 %38, %41, !dbg !4895
  br i1 %42, label %47, label %43, !dbg !4895

43:                                               ; preds = %36
  %44 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %39, i64 %4), !dbg !4896
  %45 = extractvalue { i64, i1 } %44, 1, !dbg !4896
  %46 = extractvalue { i64, i1 } %44, 0, !dbg !4896
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !1036, metadata !DIExpression()), !dbg !4869
  br i1 %45, label %47, label %48, !dbg !4897

47:                                               ; preds = %43, %36
  tail call void @xalloc_die() #43, !dbg !4898
  unreachable, !dbg !4898

48:                                               ; preds = %43, %33
  %49 = phi i64 [ %39, %43 ], [ %29, %33 ], !dbg !4869
  %50 = phi i64 [ %46, %43 ], [ %30, %33 ], !dbg !4869
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !1036, metadata !DIExpression()), !dbg !4869
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !1035, metadata !DIExpression()), !dbg !4869
  call void @llvm.dbg.value(metadata ptr %0, metadata !4715, metadata !DIExpression()), !dbg !4899
  call void @llvm.dbg.value(metadata i64 %50, metadata !4716, metadata !DIExpression()), !dbg !4899
  call void @llvm.dbg.value(metadata ptr %0, metadata !4718, metadata !DIExpression()), !dbg !4901
  call void @llvm.dbg.value(metadata i64 %50, metadata !4722, metadata !DIExpression()), !dbg !4901
  %51 = tail call i64 @llvm.umax.i64(i64 %50, i64 1), !dbg !4903
  %52 = tail call ptr @realloc(ptr noundef %0, i64 noundef %51) #49, !dbg !4904
  call void @llvm.dbg.value(metadata ptr %52, metadata !4643, metadata !DIExpression()), !dbg !4905
  %53 = icmp eq ptr %52, null, !dbg !4907
  br i1 %53, label %54, label %55, !dbg !4908

54:                                               ; preds = %48
  tail call void @xalloc_die() #43, !dbg !4909
  unreachable, !dbg !4909

55:                                               ; preds = %48
  tail call void @llvm.dbg.value(metadata ptr %52, metadata !1029, metadata !DIExpression()), !dbg !4869
  store i64 %49, ptr %1, align 8, !dbg !4910, !tbaa !1354
  ret ptr %52, !dbg !4911
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4912 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4914, metadata !DIExpression()), !dbg !4915
  call void @llvm.dbg.value(metadata i64 %0, metadata !4916, metadata !DIExpression()), !dbg !4920
  call void @llvm.dbg.value(metadata i64 1, metadata !4919, metadata !DIExpression()), !dbg !4920
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #46, !dbg !4922
  call void @llvm.dbg.value(metadata ptr %2, metadata !4643, metadata !DIExpression()), !dbg !4923
  %3 = icmp eq ptr %2, null, !dbg !4925
  br i1 %3, label %4, label %5, !dbg !4926

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4927
  unreachable, !dbg !4927

5:                                                ; preds = %1
  ret ptr %2, !dbg !4928
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4929 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #37

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4917 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4916, metadata !DIExpression()), !dbg !4930
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4919, metadata !DIExpression()), !dbg !4930
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #46, !dbg !4931
  call void @llvm.dbg.value(metadata ptr %3, metadata !4643, metadata !DIExpression()), !dbg !4932
  %4 = icmp eq ptr %3, null, !dbg !4934
  br i1 %4, label %5, label %6, !dbg !4935

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4936
  unreachable, !dbg !4936

6:                                                ; preds = %2
  ret ptr %3, !dbg !4937
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4938 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4940, metadata !DIExpression()), !dbg !4941
  call void @llvm.dbg.value(metadata i64 %0, metadata !4942, metadata !DIExpression()), !dbg !4946
  call void @llvm.dbg.value(metadata i64 1, metadata !4945, metadata !DIExpression()), !dbg !4946
  call void @llvm.dbg.value(metadata i64 %0, metadata !4948, metadata !DIExpression()), !dbg !4952
  call void @llvm.dbg.value(metadata i64 1, metadata !4951, metadata !DIExpression()), !dbg !4952
  call void @llvm.dbg.value(metadata i64 %0, metadata !4948, metadata !DIExpression()), !dbg !4952
  call void @llvm.dbg.value(metadata i64 1, metadata !4951, metadata !DIExpression()), !dbg !4952
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #46, !dbg !4954
  call void @llvm.dbg.value(metadata ptr %2, metadata !4643, metadata !DIExpression()), !dbg !4955
  %3 = icmp eq ptr %2, null, !dbg !4957
  br i1 %3, label %4, label %5, !dbg !4958

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4959
  unreachable, !dbg !4959

5:                                                ; preds = %1
  ret ptr %2, !dbg !4960
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4943 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4942, metadata !DIExpression()), !dbg !4961
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4945, metadata !DIExpression()), !dbg !4961
  call void @llvm.dbg.value(metadata i64 %0, metadata !4948, metadata !DIExpression()), !dbg !4962
  call void @llvm.dbg.value(metadata i64 %1, metadata !4951, metadata !DIExpression()), !dbg !4962
  call void @llvm.dbg.value(metadata i64 %0, metadata !4948, metadata !DIExpression()), !dbg !4962
  call void @llvm.dbg.value(metadata i64 %1, metadata !4951, metadata !DIExpression()), !dbg !4962
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #46, !dbg !4964
  call void @llvm.dbg.value(metadata ptr %3, metadata !4643, metadata !DIExpression()), !dbg !4965
  %4 = icmp eq ptr %3, null, !dbg !4967
  br i1 %4, label %5, label %6, !dbg !4968

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4969
  unreachable, !dbg !4969

6:                                                ; preds = %2
  ret ptr %3, !dbg !4970
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4971 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4975, metadata !DIExpression()), !dbg !4977
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4976, metadata !DIExpression()), !dbg !4977
  call void @llvm.dbg.value(metadata i64 %1, metadata !4667, metadata !DIExpression()), !dbg !4978
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #45, !dbg !4980
  call void @llvm.dbg.value(metadata ptr %3, metadata !4643, metadata !DIExpression()), !dbg !4981
  %4 = icmp eq ptr %3, null, !dbg !4983
  br i1 %4, label %5, label %6, !dbg !4984

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4985
  unreachable, !dbg !4985

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4986, metadata !DIExpression()), !dbg !4991
  call void @llvm.dbg.value(metadata ptr %0, metadata !4989, metadata !DIExpression()), !dbg !4991
  call void @llvm.dbg.value(metadata i64 %1, metadata !4990, metadata !DIExpression()), !dbg !4991
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #41, !dbg !4993
  ret ptr %3, !dbg !4994
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4995 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4999, metadata !DIExpression()), !dbg !5001
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !5000, metadata !DIExpression()), !dbg !5001
  call void @llvm.dbg.value(metadata i64 %1, metadata !4681, metadata !DIExpression()), !dbg !5002
  call void @llvm.dbg.value(metadata i64 %1, metadata !4683, metadata !DIExpression()), !dbg !5004
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #45, !dbg !5006
  call void @llvm.dbg.value(metadata ptr %3, metadata !4643, metadata !DIExpression()), !dbg !5007
  %4 = icmp eq ptr %3, null, !dbg !5009
  br i1 %4, label %5, label %6, !dbg !5010

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !5011
  unreachable, !dbg !5011

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4986, metadata !DIExpression()), !dbg !5012
  call void @llvm.dbg.value(metadata ptr %0, metadata !4989, metadata !DIExpression()), !dbg !5012
  call void @llvm.dbg.value(metadata i64 %1, metadata !4990, metadata !DIExpression()), !dbg !5012
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #41, !dbg !5014
  ret ptr %3, !dbg !5015
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !5016 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5020, metadata !DIExpression()), !dbg !5023
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !5021, metadata !DIExpression()), !dbg !5023
  %3 = add nsw i64 %1, 1, !dbg !5024
  call void @llvm.dbg.value(metadata i64 %3, metadata !4681, metadata !DIExpression()), !dbg !5025
  call void @llvm.dbg.value(metadata i64 %3, metadata !4683, metadata !DIExpression()), !dbg !5027
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #45, !dbg !5029
  call void @llvm.dbg.value(metadata ptr %4, metadata !4643, metadata !DIExpression()), !dbg !5030
  %5 = icmp eq ptr %4, null, !dbg !5032
  br i1 %5, label %6, label %7, !dbg !5033

6:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !5034
  unreachable, !dbg !5034

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !5022, metadata !DIExpression()), !dbg !5023
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !5035
  store i8 0, ptr %8, align 1, !dbg !5036, !tbaa !1166
  call void @llvm.dbg.value(metadata ptr %4, metadata !4986, metadata !DIExpression()), !dbg !5037
  call void @llvm.dbg.value(metadata ptr %0, metadata !4989, metadata !DIExpression()), !dbg !5037
  call void @llvm.dbg.value(metadata i64 %1, metadata !4990, metadata !DIExpression()), !dbg !5037
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #41, !dbg !5039
  ret ptr %4, !dbg !5040
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !5041 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5043, metadata !DIExpression()), !dbg !5044
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #42, !dbg !5045
  %3 = add i64 %2, 1, !dbg !5046
  call void @llvm.dbg.value(metadata ptr %0, metadata !4975, metadata !DIExpression()), !dbg !5047
  call void @llvm.dbg.value(metadata i64 %3, metadata !4976, metadata !DIExpression()), !dbg !5047
  call void @llvm.dbg.value(metadata i64 %3, metadata !4667, metadata !DIExpression()), !dbg !5049
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #45, !dbg !5051
  call void @llvm.dbg.value(metadata ptr %4, metadata !4643, metadata !DIExpression()), !dbg !5052
  %5 = icmp eq ptr %4, null, !dbg !5054
  br i1 %5, label %6, label %7, !dbg !5055

6:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !5056
  unreachable, !dbg !5056

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4986, metadata !DIExpression()), !dbg !5057
  call void @llvm.dbg.value(metadata ptr %0, metadata !4989, metadata !DIExpression()), !dbg !5057
  call void @llvm.dbg.value(metadata i64 %3, metadata !4990, metadata !DIExpression()), !dbg !5057
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #41, !dbg !5059
  ret ptr %4, !dbg !5060
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !5061 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !5066, !tbaa !1157
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !5063, metadata !DIExpression()), !dbg !5067
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.192, ptr noundef nonnull @.str.2.193, i32 noundef 5) #41, !dbg !5066
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.194, ptr noundef %2) #41, !dbg !5066
  %3 = icmp eq i32 %1, 0, !dbg !5066
  tail call void @llvm.assume(i1 %3), !dbg !5066
  tail call void @abort() #43, !dbg !5068
  unreachable, !dbg !5068
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #38

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !5069 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5107, metadata !DIExpression()), !dbg !5112
  %2 = tail call i64 @__fpending(ptr noundef %0) #41, !dbg !5113
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5108, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5112
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5114, metadata !DIExpression()), !dbg !5117
  %3 = load i32, ptr %0, align 8, !dbg !5119, !tbaa !5120
  %4 = and i32 %3, 32, !dbg !5121
  %5 = icmp eq i32 %4, 0, !dbg !5121
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !5110, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5112
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #41, !dbg !5122
  %7 = icmp eq i32 %6, 0, !dbg !5123
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !5111, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5112
  br i1 %5, label %8, label %18, !dbg !5124

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !5126
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !5108, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5112
  %10 = select i1 %7, i1 true, i1 %9, !dbg !5127
  %11 = xor i1 %7, true, !dbg !5127
  %12 = sext i1 %11 to i32, !dbg !5127
  br i1 %10, label %21, label %13, !dbg !5127

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #44, !dbg !5128
  %15 = load i32, ptr %14, align 4, !dbg !5128, !tbaa !1157
  %16 = icmp ne i32 %15, 9, !dbg !5129
  %17 = sext i1 %16 to i32, !dbg !5130
  br label %21, !dbg !5130

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !5131

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #44, !dbg !5133
  store i32 0, ptr %20, align 4, !dbg !5135, !tbaa !1157
  br label %21, !dbg !5133

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !5112
  ret i32 %22, !dbg !5136
}

; Function Attrs: nounwind
declare !dbg !5137 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !5141 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5179, metadata !DIExpression()), !dbg !5183
  tail call void @llvm.dbg.value(metadata i32 0, metadata !5180, metadata !DIExpression()), !dbg !5183
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #41, !dbg !5184
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !5181, metadata !DIExpression()), !dbg !5183
  %3 = icmp slt i32 %2, 0, !dbg !5185
  br i1 %3, label %4, label %6, !dbg !5187

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !5188
  br label %24, !dbg !5189

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #41, !dbg !5190
  %8 = icmp eq i32 %7, 0, !dbg !5190
  br i1 %8, label %13, label %9, !dbg !5192

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #41, !dbg !5193
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #41, !dbg !5194
  %12 = icmp eq i64 %11, -1, !dbg !5195
  br i1 %12, label %16, label %13, !dbg !5196

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #41, !dbg !5197
  %15 = icmp eq i32 %14, 0, !dbg !5197
  br i1 %15, label %16, label %18, !dbg !5198

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !5180, metadata !DIExpression()), !dbg !5183
  tail call void @llvm.dbg.value(metadata i32 0, metadata !5182, metadata !DIExpression()), !dbg !5183
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !5199
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !5182, metadata !DIExpression()), !dbg !5183
  br label %24, !dbg !5200

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #44, !dbg !5201
  %20 = load i32, ptr %19, align 4, !dbg !5201, !tbaa !1157
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !5180, metadata !DIExpression()), !dbg !5183
  tail call void @llvm.dbg.value(metadata i32 0, metadata !5182, metadata !DIExpression()), !dbg !5183
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !5199
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !5182, metadata !DIExpression()), !dbg !5183
  %22 = icmp eq i32 %20, 0, !dbg !5202
  br i1 %22, label %24, label %23, !dbg !5200

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !5204, !tbaa !1157
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !5182, metadata !DIExpression()), !dbg !5183
  br label %24, !dbg !5206

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !5183
  ret i32 %25, !dbg !5207
}

; Function Attrs: nofree nounwind
declare !dbg !5208 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !5209 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !5210 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !5211 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !5214 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5252, metadata !DIExpression()), !dbg !5253
  %2 = icmp eq ptr %0, null, !dbg !5254
  br i1 %2, label %6, label %3, !dbg !5256

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #41, !dbg !5257
  %5 = icmp eq i32 %4, 0, !dbg !5257
  br i1 %5, label %6, label %8, !dbg !5258

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !5259
  br label %16, !dbg !5260

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !5261, metadata !DIExpression()), !dbg !5266
  %9 = load i32, ptr %0, align 8, !dbg !5268, !tbaa !5120
  %10 = and i32 %9, 256, !dbg !5270
  %11 = icmp eq i32 %10, 0, !dbg !5270
  br i1 %11, label %14, label %12, !dbg !5271

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #41, !dbg !5272
  br label %14, !dbg !5272

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !5273
  br label %16, !dbg !5274

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !5253
  ret i32 %17, !dbg !5275
}

; Function Attrs: nofree nounwind
declare !dbg !5276 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !5277 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5316, metadata !DIExpression()), !dbg !5322
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !5317, metadata !DIExpression()), !dbg !5322
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !5318, metadata !DIExpression()), !dbg !5322
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !5323
  %5 = load ptr, ptr %4, align 8, !dbg !5323, !tbaa !5324
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !5325
  %7 = load ptr, ptr %6, align 8, !dbg !5325, !tbaa !5326
  %8 = icmp eq ptr %5, %7, !dbg !5327
  br i1 %8, label %9, label %27, !dbg !5328

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !5329
  %11 = load ptr, ptr %10, align 8, !dbg !5329, !tbaa !2800
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !5330
  %13 = load ptr, ptr %12, align 8, !dbg !5330, !tbaa !5331
  %14 = icmp eq ptr %11, %13, !dbg !5332
  br i1 %14, label %15, label %27, !dbg !5333

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !5334
  %17 = load ptr, ptr %16, align 8, !dbg !5334, !tbaa !5335
  %18 = icmp eq ptr %17, null, !dbg !5336
  br i1 %18, label %19, label %27, !dbg !5337

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #41, !dbg !5338
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #41, !dbg !5339
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !5319, metadata !DIExpression()), !dbg !5340
  %22 = icmp eq i64 %21, -1, !dbg !5341
  br i1 %22, label %29, label %23, !dbg !5343

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !5344, !tbaa !5120
  %25 = and i32 %24, -17, !dbg !5344
  store i32 %25, ptr %0, align 8, !dbg !5344, !tbaa !5120
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !5345
  store i64 %21, ptr %26, align 8, !dbg !5346, !tbaa !5347
  br label %29, !dbg !5348

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !5349
  br label %29, !dbg !5350

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !5322
  ret i32 %30, !dbg !5351
}

; Function Attrs: nofree nounwind
declare !dbg !5352 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !5355 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5360, metadata !DIExpression()), !dbg !5365
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5361, metadata !DIExpression()), !dbg !5365
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5362, metadata !DIExpression()), !dbg !5365
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !5363, metadata !DIExpression()), !dbg !5365
  %5 = icmp eq ptr %1, null, !dbg !5366
  %6 = select i1 %5, ptr null, ptr %0, !dbg !5368
  %7 = select i1 %5, ptr @.str.205, ptr %1, !dbg !5368
  %8 = select i1 %5, i64 1, i64 %2, !dbg !5368
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !5362, metadata !DIExpression()), !dbg !5365
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !5361, metadata !DIExpression()), !dbg !5365
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !5360, metadata !DIExpression()), !dbg !5365
  %9 = icmp eq ptr %3, null, !dbg !5369
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !5371
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !5363, metadata !DIExpression()), !dbg !5365
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #41, !dbg !5372
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !5364, metadata !DIExpression()), !dbg !5365
  %12 = icmp ult i64 %11, -3, !dbg !5373
  br i1 %12, label %13, label %17, !dbg !5375

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #42, !dbg !5376
  %15 = icmp eq i32 %14, 0, !dbg !5376
  br i1 %15, label %16, label %29, !dbg !5377

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !5378, metadata !DIExpression()), !dbg !5383
  call void @llvm.dbg.value(metadata ptr %10, metadata !5385, metadata !DIExpression()), !dbg !5390
  call void @llvm.dbg.value(metadata i32 0, metadata !5388, metadata !DIExpression()), !dbg !5390
  call void @llvm.dbg.value(metadata i64 8, metadata !5389, metadata !DIExpression()), !dbg !5390
  store i64 0, ptr %10, align 1, !dbg !5392
  br label %29, !dbg !5393

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !5394
  br i1 %18, label %19, label %20, !dbg !5396

19:                                               ; preds = %17
  tail call void @abort() #43, !dbg !5397
  unreachable, !dbg !5397

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !5398

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #41, !dbg !5400
  br i1 %23, label %29, label %24, !dbg !5401

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !5402
  br i1 %25, label %29, label %26, !dbg !5405

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !5406, !tbaa !1166
  %28 = zext i8 %27 to i32, !dbg !5407
  store i32 %28, ptr %6, align 4, !dbg !5408, !tbaa !1157
  br label %29, !dbg !5409

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !5365
  ret i64 %30, !dbg !5410
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !5411 i32 @mbsinit(ptr noundef) local_unnamed_addr #39

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #40 !dbg !5417 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5419, metadata !DIExpression()), !dbg !5423
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !5420, metadata !DIExpression()), !dbg !5423
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5421, metadata !DIExpression()), !dbg !5423
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !5424
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !5424
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !5422, metadata !DIExpression()), !dbg !5423
  br i1 %5, label %6, label %8, !dbg !5426

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #44, !dbg !5427
  store i32 12, ptr %7, align 4, !dbg !5429, !tbaa !1157
  br label %12, !dbg !5430

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !5424
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !5422, metadata !DIExpression()), !dbg !5423
  call void @llvm.dbg.value(metadata ptr %0, metadata !5431, metadata !DIExpression()), !dbg !5435
  call void @llvm.dbg.value(metadata i64 %9, metadata !5434, metadata !DIExpression()), !dbg !5435
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !5437
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #49, !dbg !5438
  br label %12, !dbg !5439

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !5423
  ret ptr %13, !dbg !5440
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !5441 {
  %2 = alloca [257 x i8], align 1, !DIAssignID !5448
  call void @llvm.dbg.assign(metadata i1 undef, metadata !5444, metadata !DIExpression(), metadata !5448, metadata ptr %2, metadata !DIExpression()), !dbg !5449
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5443, metadata !DIExpression()), !dbg !5449
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #41, !dbg !5450
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #41, !dbg !5451
  %4 = icmp eq i32 %3, 0, !dbg !5451
  br i1 %4, label %5, label %12, !dbg !5453

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !5454, metadata !DIExpression()), !dbg !5458
  call void @llvm.dbg.value(metadata ptr @.str.210, metadata !5457, metadata !DIExpression()), !dbg !5458
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.210, i64 2), !dbg !5461
  %7 = icmp eq i32 %6, 0, !dbg !5462
  br i1 %7, label %11, label %8, !dbg !5463

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !5454, metadata !DIExpression()), !dbg !5464
  call void @llvm.dbg.value(metadata ptr @.str.1.211, metadata !5457, metadata !DIExpression()), !dbg !5464
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.211, i64 6), !dbg !5466
  %10 = icmp eq i32 %9, 0, !dbg !5467
  br i1 %10, label %11, label %12, !dbg !5468

11:                                               ; preds = %8, %5
  br label %12, !dbg !5469

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !5449
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #41, !dbg !5470
  ret i1 %13, !dbg !5470
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5471 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5475, metadata !DIExpression()), !dbg !5478
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5476, metadata !DIExpression()), !dbg !5478
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5477, metadata !DIExpression()), !dbg !5478
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #41, !dbg !5479
  ret i32 %4, !dbg !5480
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !5481 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5485, metadata !DIExpression()), !dbg !5486
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #41, !dbg !5487
  ret ptr %2, !dbg !5488
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !5489 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5491, metadata !DIExpression()), !dbg !5493
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #41, !dbg !5494
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !5492, metadata !DIExpression()), !dbg !5493
  ret ptr %2, !dbg !5495
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5496 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5498, metadata !DIExpression()), !dbg !5505
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5499, metadata !DIExpression()), !dbg !5505
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5500, metadata !DIExpression()), !dbg !5505
  call void @llvm.dbg.value(metadata i32 %0, metadata !5491, metadata !DIExpression()), !dbg !5506
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #41, !dbg !5508
  call void @llvm.dbg.value(metadata ptr %4, metadata !5492, metadata !DIExpression()), !dbg !5506
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !5501, metadata !DIExpression()), !dbg !5505
  %5 = icmp eq ptr %4, null, !dbg !5509
  br i1 %5, label %6, label %9, !dbg !5510

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5511
  br i1 %7, label %19, label %8, !dbg !5514

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !5515, !tbaa !1166
  br label %19, !dbg !5516

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #42, !dbg !5517
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !5502, metadata !DIExpression()), !dbg !5518
  %11 = icmp ult i64 %10, %2, !dbg !5519
  br i1 %11, label %12, label %14, !dbg !5521

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5522
  call void @llvm.dbg.value(metadata ptr %1, metadata !5524, metadata !DIExpression()), !dbg !5529
  call void @llvm.dbg.value(metadata ptr %4, metadata !5527, metadata !DIExpression()), !dbg !5529
  call void @llvm.dbg.value(metadata i64 %13, metadata !5528, metadata !DIExpression()), !dbg !5529
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #41, !dbg !5531
  br label %19, !dbg !5532

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5533
  br i1 %15, label %19, label %16, !dbg !5536

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5537
  call void @llvm.dbg.value(metadata ptr %1, metadata !5524, metadata !DIExpression()), !dbg !5539
  call void @llvm.dbg.value(metadata ptr %4, metadata !5527, metadata !DIExpression()), !dbg !5539
  call void @llvm.dbg.value(metadata i64 %17, metadata !5528, metadata !DIExpression()), !dbg !5539
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #41, !dbg !5541
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !5542
  store i8 0, ptr %18, align 1, !dbg !5543, !tbaa !1166
  br label %19, !dbg !5544

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5545
  ret i32 %20, !dbg !5546
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
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nofree "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #16 = { mustprogress nofree nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #17 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #19 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #20 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #21 = { nocallback nofree nosync nounwind willreturn }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #23 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #24 = { nofree nounwind willreturn memory(argmem: read) }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { nofree nounwind willreturn memory(argmem: readwrite) }
attributes #30 = { inlinehint nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #31 = { nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #32 = { nounwind allocsize(0) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #33 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #34 = { nounwind allocsize(1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #35 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #36 = { nounwind allocsize(0,1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #37 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #38 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #39 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #40 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #41 = { nounwind }
attributes #42 = { nounwind willreturn memory(read) }
attributes #43 = { noreturn nounwind }
attributes #44 = { nounwind willreturn memory(none) }
attributes #45 = { nounwind allocsize(0) }
attributes #46 = { nounwind allocsize(0,1) }
attributes #47 = { noreturn }
attributes #48 = { cold }
attributes #49 = { nounwind allocsize(1) }

!llvm.dbg.cu = !{!105, !991, !648, !995, !652, !667, !957, !997, !720, !734, !782, !862, !999, !949, !1006, !1039, !1041, !1043, !1045, !1047, !973, !1049, !1051, !1053, !1055}
!llvm.ident = !{!1057, !1057, !1057, !1057, !1057, !1057, !1057, !1057, !1057, !1057, !1057, !1057, !1057, !1057, !1057, !1057, !1057, !1057, !1057, !1057, !1057, !1057, !1057, !1057, !1057}
!llvm.module.flags = !{!1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 110, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/env.c", directory: "/src", checksumkind: CSK_MD5, checksum: "55d1f1c6ffacbefe85ee74f1d7b2c27b")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 113, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 62)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 116, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 60)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 122, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 4)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 122, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 71)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 126, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 552, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 69)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 130, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 528, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 66)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 134, type: !34, isLocal: true, isDefinition: true)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(scope: null, file: !2, line: 138, type: !14, isLocal: true, isDefinition: true)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(scope: null, file: !2, line: 142, type: !43, isLocal: true, isDefinition: true)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1088, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 136)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(scope: null, file: !2, line: 147, type: !48, isLocal: true, isDefinition: true)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 640, elements: !49)
!49 = !{!50}
!50 = !DISubrange(count: 80)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(scope: null, file: !2, line: 151, type: !53, isLocal: true, isDefinition: true)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 688, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 86)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(scope: null, file: !2, line: 155, type: !58, isLocal: true, isDefinition: true)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 656, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 82)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(scope: null, file: !2, line: 159, type: !63, isLocal: true, isDefinition: true)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 720, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 90)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(scope: null, file: !2, line: 163, type: !68, isLocal: true, isDefinition: true)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 600, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 75)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(scope: null, file: !2, line: 167, type: !73, isLocal: true, isDefinition: true)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 50)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(scope: null, file: !2, line: 168, type: !9, isLocal: true, isDefinition: true)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(scope: null, file: !2, line: 169, type: !80, isLocal: true, isDefinition: true)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 576, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 72)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(scope: null, file: !2, line: 173, type: !85, isLocal: true, isDefinition: true)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1536, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 192)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(scope: null, file: !2, line: 773, type: !90, isLocal: true, isDefinition: true)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 1)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(scope: null, file: !2, line: 774, type: !95, isLocal: true, isDefinition: true)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 10)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(scope: null, file: !2, line: 774, type: !100, isLocal: true, isDefinition: true)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 24)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(name: "shortopts", scope: !105, file: !2, line: 76, type: !636, isLocal: true, isDefinition: true)
!105 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/env.o -MD -MP -MF src/.deps/env.Tpo -c src/env.c -o src/.env.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !106, retainedTypes: !162, globals: !180, splitDebugInlining: false, nameTableKind: None)
!106 = !{!107, !115, !121, !126, !140, !155}
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !108, line: 90, baseType: !109, size: 32, elements: !110)
!108 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!109 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!110 = !{!111, !112, !113, !114}
!111 = !DIEnumerator(name: "EXIT_TIMEDOUT", value: 124)
!112 = !DIEnumerator(name: "EXIT_CANCELED", value: 125)
!113 = !DIEnumerator(name: "EXIT_CANNOT_INVOKE", value: 126)
!114 = !DIEnumerator(name: "EXIT_ENOENT", value: 127)
!115 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 80, baseType: !109, size: 32, elements: !116)
!116 = !{!117, !118, !119, !120}
!117 = !DIEnumerator(name: "DEFAULT_SIGNAL_OPTION", value: 256)
!118 = !DIEnumerator(name: "IGNORE_SIGNAL_OPTION", value: 257)
!119 = !DIEnumerator(name: "BLOCK_SIGNAL_OPTION", value: 258)
!120 = !DIEnumerator(name: "LIST_SIGNAL_HANDLING_OPTION", value: 259)
!121 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !108, line: 337, baseType: !122, size: 32, elements: !123)
!122 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!123 = !{!124, !125}
!124 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -2)
!125 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -3)
!126 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !127, line: 42, baseType: !109, size: 32, elements: !128)
!127 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!128 = !{!129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139}
!129 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!130 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!131 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!132 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!133 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!134 = !DIEnumerator(name: "c_quoting_style", value: 5)
!135 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!136 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!137 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!138 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!139 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!140 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !141, line: 46, baseType: !109, size: 32, elements: !142)
!141 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!142 = !{!143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154}
!143 = !DIEnumerator(name: "_ISupper", value: 256)
!144 = !DIEnumerator(name: "_ISlower", value: 512)
!145 = !DIEnumerator(name: "_ISalpha", value: 1024)
!146 = !DIEnumerator(name: "_ISdigit", value: 2048)
!147 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!148 = !DIEnumerator(name: "_ISspace", value: 8192)
!149 = !DIEnumerator(name: "_ISprint", value: 16384)
!150 = !DIEnumerator(name: "_ISgraph", value: 32768)
!151 = !DIEnumerator(name: "_ISblank", value: 1)
!152 = !DIEnumerator(name: "_IScntrl", value: 2)
!153 = !DIEnumerator(name: "_ISpunct", value: 4)
!154 = !DIEnumerator(name: "_ISalnum", value: 8)
!155 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "SIGNAL_MODE", file: !2, line: 52, baseType: !109, size: 32, elements: !156)
!156 = !{!157, !158, !159, !160, !161}
!157 = !DIEnumerator(name: "UNCHANGED", value: 0)
!158 = !DIEnumerator(name: "DEFAULT", value: 1)
!159 = !DIEnumerator(name: "DEFAULT_NOERR", value: 2)
!160 = !DIEnumerator(name: "IGNORE", value: 3)
!161 = !DIEnumerator(name: "IGNORE_NOERR", value: 4)
!162 = !{!163, !164, !122, !165, !166, !169, !171, !172, !175}
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!165 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !167, line: 18, baseType: !168)
!167 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!168 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!171 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !173, line: 87, baseType: !174)
!173 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!174 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !176, line: 72, baseType: !177)
!176 = !DIFile(filename: "/usr/include/signal.h", directory: "", checksumkind: CSK_MD5, checksum: "331e107bf774bb600ec675d0db0b92ce")
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DISubroutineType(types: !179)
!179 = !{null, !122}
!180 = !{!0, !7, !12, !17, !22, !27, !32, !37, !39, !41, !46, !51, !56, !61, !66, !71, !76, !78, !83, !88, !93, !98, !181, !186, !191, !196, !201, !206, !211, !216, !221, !250, !252, !254, !259, !261, !263, !268, !270, !275, !280, !282, !284, !289, !294, !296, !298, !300, !302, !383, !385, !387, !389, !394, !396, !398, !400, !402, !404, !406, !408, !410, !415, !417, !419, !421, !423, !425, !427, !429, !431, !433, !438, !440, !442, !444, !446, !451, !453, !458, !460, !462, !464, !469, !474, !479, !103, !482, !484, !489, !491, !493, !495, !497, !499, !501, !506, !508, !510, !512, !514, !526, !532, !534, !537, !539, !541, !546, !556, !558, !560, !562, !564, !569, !574, !579, !584, !589, !594, !596, !598, !600, !602, !604, !609, !611, !613, !615, !617, !619, !621, !623, !625, !627, !632, !634}
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(scope: null, file: !2, line: 826, type: !183, isLocal: true, isDefinition: true)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !184)
!184 = !{!185}
!185 = !DISubrange(count: 23)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(scope: null, file: !2, line: 827, type: !188, isLocal: true, isDefinition: true)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !189)
!189 = !{!190}
!190 = !DISubrange(count: 43)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(scope: null, file: !2, line: 831, type: !193, isLocal: true, isDefinition: true)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 14)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(scope: null, file: !2, line: 831, type: !198, isLocal: true, isDefinition: true)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !199)
!199 = !{!200}
!200 = !DISubrange(count: 17)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(scope: null, file: !2, line: 831, type: !203, isLocal: true, isDefinition: true)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !204)
!204 = !{!205}
!205 = !DISubrange(count: 16)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(scope: null, file: !2, line: 831, type: !208, isLocal: true, isDefinition: true)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !209)
!209 = !{!210}
!210 = !DISubrange(count: 13)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(scope: null, file: !2, line: 837, type: !213, isLocal: true, isDefinition: true)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !214)
!214 = !{!215}
!215 = !DISubrange(count: 2)
!216 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression())
!217 = distinct !DIGlobalVariable(scope: null, file: !2, line: 845, type: !218, isLocal: true, isDefinition: true)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !219)
!219 = !{!220}
!220 = !DISubrange(count: 18)
!221 = !DIGlobalVariableExpression(var: !222, expr: !DIExpression())
!222 = distinct !DIGlobalVariable(name: "dummy_environ", scope: !223, file: !2, line: 846, type: !249, isLocal: true, isDefinition: true)
!223 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 764, type: !224, scopeLine: 765, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !227)
!224 = !DISubroutineType(types: !225)
!225 = !{!122, !122, !226}
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!227 = !{!228, !229, !230, !232, !233, !234, !235, !236, !237, !238, !243, !244, !248}
!228 = !DILocalVariable(name: "argc", arg: 1, scope: !223, file: !2, line: 764, type: !122)
!229 = !DILocalVariable(name: "argv", arg: 2, scope: !223, file: !2, line: 764, type: !226)
!230 = !DILocalVariable(name: "ignore_environment", scope: !223, file: !2, line: 766, type: !231)
!231 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!232 = !DILocalVariable(name: "opt_nul_terminate_output", scope: !223, file: !2, line: 767, type: !231)
!233 = !DILocalVariable(name: "newdir", scope: !223, file: !2, line: 768, type: !169)
!234 = !DILocalVariable(name: "argv0", scope: !223, file: !2, line: 769, type: !163)
!235 = !DILocalVariable(name: "optc", scope: !223, file: !2, line: 782, type: !122)
!236 = !DILocalVariable(name: "eq", scope: !223, file: !2, line: 852, type: !163)
!237 = !DILocalVariable(name: "program_specified", scope: !223, file: !2, line: 866, type: !231)
!238 = !DILocalVariable(name: "e", scope: !239, file: !2, line: 889, type: !241)
!239 = distinct !DILexicalBlock(scope: !240, file: !2, line: 887, column: 5)
!240 = distinct !DILexicalBlock(scope: !223, file: !2, line: 886, column: 7)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!243 = !DILocalVariable(name: "program", scope: !223, file: !2, line: 911, type: !163)
!244 = !DILocalVariable(name: "i", scope: !245, file: !2, line: 921, type: !122)
!245 = distinct !DILexicalBlock(scope: !246, file: !2, line: 921, column: 7)
!246 = distinct !DILexicalBlock(scope: !247, file: !2, line: 919, column: 5)
!247 = distinct !DILexicalBlock(scope: !223, file: !2, line: 918, column: 7)
!248 = !DILocalVariable(name: "exit_status", scope: !223, file: !2, line: 927, type: !122)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 64, elements: !91)
!250 = !DIGlobalVariableExpression(var: !251, expr: !DIExpression())
!251 = distinct !DIGlobalVariable(scope: null, file: !2, line: 855, type: !193, isLocal: true, isDefinition: true)
!252 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression())
!253 = distinct !DIGlobalVariable(scope: null, file: !2, line: 860, type: !193, isLocal: true, isDefinition: true)
!254 = !DIGlobalVariableExpression(var: !255, expr: !DIExpression())
!255 = distinct !DIGlobalVariable(scope: null, file: !2, line: 870, type: !256, isLocal: true, isDefinition: true)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !257)
!257 = !{!258}
!258 = !DISubrange(count: 40)
!259 = !DIGlobalVariableExpression(var: !260, expr: !DIExpression())
!260 = distinct !DIGlobalVariable(scope: null, file: !2, line: 876, type: !3, isLocal: true, isDefinition: true)
!261 = !DIGlobalVariableExpression(var: !262, expr: !DIExpression())
!262 = distinct !DIGlobalVariable(scope: null, file: !2, line: 882, type: !3, isLocal: true, isDefinition: true)
!263 = !DIGlobalVariableExpression(var: !264, expr: !DIExpression())
!264 = distinct !DIGlobalVariable(scope: null, file: !2, line: 891, type: !265, isLocal: true, isDefinition: true)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !266)
!266 = !{!267}
!267 = !DISubrange(count: 5)
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(scope: null, file: !2, line: 904, type: !193, isLocal: true, isDefinition: true)
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(scope: null, file: !2, line: 907, type: !272, isLocal: true, isDefinition: true)
!272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !273)
!273 = !{!274}
!274 = !DISubrange(count: 30)
!275 = !DIGlobalVariableExpression(var: !276, expr: !DIExpression())
!276 = distinct !DIGlobalVariable(scope: null, file: !2, line: 914, type: !277, isLocal: true, isDefinition: true)
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !278)
!278 = !{!279}
!279 = !DISubrange(count: 15)
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression())
!281 = distinct !DIGlobalVariable(scope: null, file: !2, line: 920, type: !277, isLocal: true, isDefinition: true)
!282 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression())
!283 = distinct !DIGlobalVariable(scope: null, file: !2, line: 922, type: !203, isLocal: true, isDefinition: true)
!284 = !DIGlobalVariableExpression(var: !285, expr: !DIExpression())
!285 = distinct !DIGlobalVariable(scope: null, file: !2, line: 928, type: !286, isLocal: true, isDefinition: true)
!286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !287)
!287 = !{!288}
!288 = !DISubrange(count: 3)
!289 = !DIGlobalVariableExpression(var: !290, expr: !DIExpression())
!290 = distinct !DIGlobalVariable(scope: null, file: !2, line: 930, type: !291, isLocal: true, isDefinition: true)
!291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !292)
!292 = !{!293}
!293 = !DISubrange(count: 7)
!294 = !DIGlobalVariableExpression(var: !295, expr: !DIExpression())
!295 = distinct !DIGlobalVariable(name: "dev_debug", scope: !105, file: !2, line: 45, type: !231, isLocal: true, isDefinition: true)
!296 = !DIGlobalVariableExpression(var: !297, expr: !DIExpression())
!297 = distinct !DIGlobalVariable(name: "sig_mask_changed", scope: !105, file: !2, line: 68, type: !231, isLocal: true, isDefinition: true)
!298 = !DIGlobalVariableExpression(var: !299, expr: !DIExpression())
!299 = distinct !DIGlobalVariable(name: "report_signal_handling", scope: !105, file: !2, line: 71, type: !231, isLocal: true, isDefinition: true)
!300 = !DIGlobalVariableExpression(var: !301, expr: !DIExpression())
!301 = distinct !DIGlobalVariable(scope: null, file: !108, line: 736, type: !68, isLocal: true, isDefinition: true)
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !304, file: !108, line: 575, type: !122, isLocal: true, isDefinition: true)
!304 = distinct !DISubprogram(name: "oputs_", scope: !108, file: !108, line: 573, type: !305, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !307)
!305 = !DISubroutineType(cc: DW_CC_nocall, types: !306)
!306 = !{null, !169, !169}
!307 = !{!308, !309, !310, !313, !314, !315, !316, !320, !321, !322, !323, !325, !377, !378, !379, !381, !382}
!308 = !DILocalVariable(name: "program", arg: 1, scope: !304, file: !108, line: 573, type: !169)
!309 = !DILocalVariable(name: "option", arg: 2, scope: !304, file: !108, line: 573, type: !169)
!310 = !DILocalVariable(name: "term", scope: !311, file: !108, line: 585, type: !169)
!311 = distinct !DILexicalBlock(scope: !312, file: !108, line: 582, column: 5)
!312 = distinct !DILexicalBlock(scope: !304, file: !108, line: 581, column: 7)
!313 = !DILocalVariable(name: "double_space", scope: !304, file: !108, line: 594, type: !231)
!314 = !DILocalVariable(name: "first_word", scope: !304, file: !108, line: 595, type: !169)
!315 = !DILocalVariable(name: "option_text", scope: !304, file: !108, line: 596, type: !169)
!316 = !DILocalVariable(name: "s", scope: !317, file: !108, line: 608, type: !169)
!317 = distinct !DILexicalBlock(scope: !318, file: !108, line: 605, column: 5)
!318 = distinct !DILexicalBlock(scope: !319, file: !108, line: 604, column: 12)
!319 = distinct !DILexicalBlock(scope: !304, file: !108, line: 597, column: 7)
!320 = !DILocalVariable(name: "spaces", scope: !317, file: !108, line: 609, type: !166)
!321 = !DILocalVariable(name: "anchor_len", scope: !304, file: !108, line: 620, type: !166)
!322 = !DILocalVariable(name: "desc_text", scope: !304, file: !108, line: 625, type: !169)
!323 = !DILocalVariable(name: "__ptr", scope: !324, file: !108, line: 644, type: !169)
!324 = distinct !DILexicalBlock(scope: !304, file: !108, line: 644, column: 3)
!325 = !DILocalVariable(name: "__stream", scope: !324, file: !108, line: 644, type: !326)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !328, line: 7, baseType: !329)
!328 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !330, line: 49, size: 1728, elements: !331)
!330 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!331 = !{!332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !347, !349, !350, !351, !354, !355, !357, !358, !361, !363, !366, !369, !370, !371, !372, !373}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !329, file: !330, line: 51, baseType: !122, size: 32)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !329, file: !330, line: 54, baseType: !163, size: 64, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !329, file: !330, line: 55, baseType: !163, size: 64, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !329, file: !330, line: 56, baseType: !163, size: 64, offset: 192)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !329, file: !330, line: 57, baseType: !163, size: 64, offset: 256)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !329, file: !330, line: 58, baseType: !163, size: 64, offset: 320)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !329, file: !330, line: 59, baseType: !163, size: 64, offset: 384)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !329, file: !330, line: 60, baseType: !163, size: 64, offset: 448)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !329, file: !330, line: 61, baseType: !163, size: 64, offset: 512)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !329, file: !330, line: 64, baseType: !163, size: 64, offset: 576)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !329, file: !330, line: 65, baseType: !163, size: 64, offset: 640)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !329, file: !330, line: 66, baseType: !163, size: 64, offset: 704)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !329, file: !330, line: 68, baseType: !345, size: 64, offset: 768)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !330, line: 36, flags: DIFlagFwdDecl)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !329, file: !330, line: 70, baseType: !348, size: 64, offset: 832)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !329, file: !330, line: 72, baseType: !122, size: 32, offset: 896)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !329, file: !330, line: 73, baseType: !122, size: 32, offset: 928)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !329, file: !330, line: 74, baseType: !352, size: 64, offset: 960)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !353, line: 152, baseType: !174)
!353 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!354 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !329, file: !330, line: 77, baseType: !165, size: 16, offset: 1024)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !329, file: !330, line: 78, baseType: !356, size: 8, offset: 1040)
!356 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !329, file: !330, line: 79, baseType: !90, size: 8, offset: 1048)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !329, file: !330, line: 81, baseType: !359, size: 64, offset: 1088)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !330, line: 43, baseType: null)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !329, file: !330, line: 89, baseType: !362, size: 64, offset: 1152)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !353, line: 153, baseType: !174)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !329, file: !330, line: 91, baseType: !364, size: 64, offset: 1216)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !330, line: 37, flags: DIFlagFwdDecl)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !329, file: !330, line: 92, baseType: !367, size: 64, offset: 1280)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !330, line: 38, flags: DIFlagFwdDecl)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !329, file: !330, line: 93, baseType: !348, size: 64, offset: 1344)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !329, file: !330, line: 94, baseType: !164, size: 64, offset: 1408)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !329, file: !330, line: 95, baseType: !166, size: 64, offset: 1472)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !329, file: !330, line: 96, baseType: !122, size: 32, offset: 1536)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !329, file: !330, line: 98, baseType: !374, size: 160, offset: 1568)
!374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !375)
!375 = !{!376}
!376 = !DISubrange(count: 20)
!377 = !DILocalVariable(name: "__cnt", scope: !324, file: !108, line: 644, type: !166)
!378 = !DILocalVariable(name: "url_program", scope: !304, file: !108, line: 648, type: !169)
!379 = !DILocalVariable(name: "__ptr", scope: !380, file: !108, line: 686, type: !169)
!380 = distinct !DILexicalBlock(scope: !304, file: !108, line: 686, column: 3)
!381 = !DILocalVariable(name: "__stream", scope: !380, file: !108, line: 686, type: !326)
!382 = !DILocalVariable(name: "__cnt", scope: !380, file: !108, line: 686, type: !166)
!383 = !DIGlobalVariableExpression(var: !384, expr: !DIExpression())
!384 = distinct !DIGlobalVariable(scope: null, file: !108, line: 585, type: !265, isLocal: true, isDefinition: true)
!385 = !DIGlobalVariableExpression(var: !386, expr: !DIExpression())
!386 = distinct !DIGlobalVariable(scope: null, file: !108, line: 586, type: !265, isLocal: true, isDefinition: true)
!387 = !DIGlobalVariableExpression(var: !388, expr: !DIExpression())
!388 = distinct !DIGlobalVariable(scope: null, file: !108, line: 595, type: !19, isLocal: true, isDefinition: true)
!389 = !DIGlobalVariableExpression(var: !390, expr: !DIExpression())
!390 = distinct !DIGlobalVariable(scope: null, file: !108, line: 620, type: !391, isLocal: true, isDefinition: true)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !392)
!392 = !{!393}
!393 = !DISubrange(count: 6)
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(scope: null, file: !108, line: 648, type: !213, isLocal: true, isDefinition: true)
!396 = !DIGlobalVariableExpression(var: !397, expr: !DIExpression())
!397 = distinct !DIGlobalVariable(scope: null, file: !108, line: 648, type: !265, isLocal: true, isDefinition: true)
!398 = !DIGlobalVariableExpression(var: !399, expr: !DIExpression())
!399 = distinct !DIGlobalVariable(scope: null, file: !108, line: 649, type: !19, isLocal: true, isDefinition: true)
!400 = !DIGlobalVariableExpression(var: !401, expr: !DIExpression())
!401 = distinct !DIGlobalVariable(scope: null, file: !108, line: 649, type: !286, isLocal: true, isDefinition: true)
!402 = !DIGlobalVariableExpression(var: !403, expr: !DIExpression())
!403 = distinct !DIGlobalVariable(scope: null, file: !108, line: 650, type: !265, isLocal: true, isDefinition: true)
!404 = !DIGlobalVariableExpression(var: !405, expr: !DIExpression())
!405 = distinct !DIGlobalVariable(scope: null, file: !108, line: 651, type: !391, isLocal: true, isDefinition: true)
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(scope: null, file: !108, line: 651, type: !391, isLocal: true, isDefinition: true)
!408 = !DIGlobalVariableExpression(var: !409, expr: !DIExpression())
!409 = distinct !DIGlobalVariable(scope: null, file: !108, line: 652, type: !291, isLocal: true, isDefinition: true)
!410 = !DIGlobalVariableExpression(var: !411, expr: !DIExpression())
!411 = distinct !DIGlobalVariable(scope: null, file: !108, line: 653, type: !412, isLocal: true, isDefinition: true)
!412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !413)
!413 = !{!414}
!414 = !DISubrange(count: 8)
!415 = !DIGlobalVariableExpression(var: !416, expr: !DIExpression())
!416 = distinct !DIGlobalVariable(scope: null, file: !108, line: 654, type: !95, isLocal: true, isDefinition: true)
!417 = !DIGlobalVariableExpression(var: !418, expr: !DIExpression())
!418 = distinct !DIGlobalVariable(scope: null, file: !108, line: 655, type: !95, isLocal: true, isDefinition: true)
!419 = !DIGlobalVariableExpression(var: !420, expr: !DIExpression())
!420 = distinct !DIGlobalVariable(scope: null, file: !108, line: 656, type: !95, isLocal: true, isDefinition: true)
!421 = !DIGlobalVariableExpression(var: !422, expr: !DIExpression())
!422 = distinct !DIGlobalVariable(scope: null, file: !108, line: 657, type: !95, isLocal: true, isDefinition: true)
!423 = !DIGlobalVariableExpression(var: !424, expr: !DIExpression())
!424 = distinct !DIGlobalVariable(scope: null, file: !108, line: 663, type: !291, isLocal: true, isDefinition: true)
!425 = !DIGlobalVariableExpression(var: !426, expr: !DIExpression())
!426 = distinct !DIGlobalVariable(scope: null, file: !108, line: 664, type: !95, isLocal: true, isDefinition: true)
!427 = !DIGlobalVariableExpression(var: !428, expr: !DIExpression())
!428 = distinct !DIGlobalVariable(scope: null, file: !108, line: 669, type: !198, isLocal: true, isDefinition: true)
!429 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression())
!430 = distinct !DIGlobalVariable(scope: null, file: !108, line: 669, type: !256, isLocal: true, isDefinition: true)
!431 = !DIGlobalVariableExpression(var: !432, expr: !DIExpression())
!432 = distinct !DIGlobalVariable(scope: null, file: !108, line: 676, type: !277, isLocal: true, isDefinition: true)
!433 = !DIGlobalVariableExpression(var: !434, expr: !DIExpression())
!434 = distinct !DIGlobalVariable(scope: null, file: !108, line: 676, type: !435, isLocal: true, isDefinition: true)
!435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !436)
!436 = !{!437}
!437 = !DISubrange(count: 61)
!438 = !DIGlobalVariableExpression(var: !439, expr: !DIExpression())
!439 = distinct !DIGlobalVariable(scope: null, file: !108, line: 679, type: !286, isLocal: true, isDefinition: true)
!440 = !DIGlobalVariableExpression(var: !441, expr: !DIExpression())
!441 = distinct !DIGlobalVariable(scope: null, file: !108, line: 683, type: !265, isLocal: true, isDefinition: true)
!442 = !DIGlobalVariableExpression(var: !443, expr: !DIExpression())
!443 = distinct !DIGlobalVariable(scope: null, file: !108, line: 688, type: !265, isLocal: true, isDefinition: true)
!444 = !DIGlobalVariableExpression(var: !445, expr: !DIExpression())
!445 = distinct !DIGlobalVariable(scope: null, file: !108, line: 691, type: !412, isLocal: true, isDefinition: true)
!446 = !DIGlobalVariableExpression(var: !447, expr: !DIExpression())
!447 = distinct !DIGlobalVariable(scope: null, file: !108, line: 826, type: !448, isLocal: true, isDefinition: true)
!448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1440, elements: !449)
!449 = !{!450}
!450 = !DISubrange(count: 180)
!451 = !DIGlobalVariableExpression(var: !452, expr: !DIExpression())
!452 = distinct !DIGlobalVariable(scope: null, file: !108, line: 839, type: !203, isLocal: true, isDefinition: true)
!453 = !DIGlobalVariableExpression(var: !454, expr: !DIExpression())
!454 = distinct !DIGlobalVariable(scope: null, file: !108, line: 840, type: !455, isLocal: true, isDefinition: true)
!455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !456)
!456 = !{!457}
!457 = !DISubrange(count: 22)
!458 = !DIGlobalVariableExpression(var: !459, expr: !DIExpression())
!459 = distinct !DIGlobalVariable(scope: null, file: !108, line: 841, type: !277, isLocal: true, isDefinition: true)
!460 = !DIGlobalVariableExpression(var: !461, expr: !DIExpression())
!461 = distinct !DIGlobalVariable(scope: null, file: !108, line: 862, type: !19, isLocal: true, isDefinition: true)
!462 = !DIGlobalVariableExpression(var: !463, expr: !DIExpression())
!463 = distinct !DIGlobalVariable(scope: null, file: !108, line: 868, type: !24, isLocal: true, isDefinition: true)
!464 = !DIGlobalVariableExpression(var: !465, expr: !DIExpression())
!465 = distinct !DIGlobalVariable(scope: null, file: !108, line: 875, type: !466, isLocal: true, isDefinition: true)
!466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !467)
!467 = !{!468}
!468 = !DISubrange(count: 27)
!469 = !DIGlobalVariableExpression(var: !470, expr: !DIExpression())
!470 = distinct !DIGlobalVariable(scope: null, file: !108, line: 877, type: !471, isLocal: true, isDefinition: true)
!471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !472)
!472 = !{!473}
!473 = !DISubrange(count: 51)
!474 = !DIGlobalVariableExpression(var: !475, expr: !DIExpression())
!475 = distinct !DIGlobalVariable(scope: null, file: !108, line: 877, type: !476, isLocal: true, isDefinition: true)
!476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !477)
!477 = !{!478}
!478 = !DISubrange(count: 12)
!479 = !DIGlobalVariableExpression(var: !480, expr: !DIExpression())
!480 = distinct !DIGlobalVariable(name: "signals", scope: !105, file: !2, line: 59, type: !481, isLocal: true, isDefinition: true)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!482 = !DIGlobalVariableExpression(var: !483, expr: !DIExpression())
!483 = distinct !DIGlobalVariable(scope: null, file: !2, line: 90, type: !391, isLocal: true, isDefinition: true)
!484 = !DIGlobalVariableExpression(var: !485, expr: !DIExpression())
!485 = distinct !DIGlobalVariable(scope: null, file: !2, line: 91, type: !486, isLocal: true, isDefinition: true)
!486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !487)
!487 = !{!488}
!488 = !DISubrange(count: 19)
!489 = !DIGlobalVariableExpression(var: !490, expr: !DIExpression())
!490 = distinct !DIGlobalVariable(scope: null, file: !2, line: 92, type: !265, isLocal: true, isDefinition: true)
!491 = !DIGlobalVariableExpression(var: !492, expr: !DIExpression())
!492 = distinct !DIGlobalVariable(scope: null, file: !2, line: 93, type: !391, isLocal: true, isDefinition: true)
!493 = !DIGlobalVariableExpression(var: !494, expr: !DIExpression())
!494 = distinct !DIGlobalVariable(scope: null, file: !2, line: 94, type: !391, isLocal: true, isDefinition: true)
!495 = !DIGlobalVariableExpression(var: !496, expr: !DIExpression())
!496 = distinct !DIGlobalVariable(scope: null, file: !2, line: 95, type: !277, isLocal: true, isDefinition: true)
!497 = !DIGlobalVariableExpression(var: !498, expr: !DIExpression())
!498 = distinct !DIGlobalVariable(scope: null, file: !2, line: 96, type: !193, isLocal: true, isDefinition: true)
!499 = !DIGlobalVariableExpression(var: !500, expr: !DIExpression())
!500 = distinct !DIGlobalVariable(scope: null, file: !2, line: 97, type: !208, isLocal: true, isDefinition: true)
!501 = !DIGlobalVariableExpression(var: !502, expr: !DIExpression())
!502 = distinct !DIGlobalVariable(scope: null, file: !2, line: 98, type: !503, isLocal: true, isDefinition: true)
!503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !504)
!504 = !{!505}
!505 = !DISubrange(count: 21)
!506 = !DIGlobalVariableExpression(var: !507, expr: !DIExpression())
!507 = distinct !DIGlobalVariable(scope: null, file: !2, line: 99, type: !391, isLocal: true, isDefinition: true)
!508 = !DIGlobalVariableExpression(var: !509, expr: !DIExpression())
!509 = distinct !DIGlobalVariable(scope: null, file: !2, line: 100, type: !208, isLocal: true, isDefinition: true)
!510 = !DIGlobalVariableExpression(var: !511, expr: !DIExpression())
!511 = distinct !DIGlobalVariable(scope: null, file: !2, line: 101, type: !265, isLocal: true, isDefinition: true)
!512 = !DIGlobalVariableExpression(var: !513, expr: !DIExpression())
!513 = distinct !DIGlobalVariable(scope: null, file: !2, line: 102, type: !412, isLocal: true, isDefinition: true)
!514 = !DIGlobalVariableExpression(var: !515, expr: !DIExpression())
!515 = distinct !DIGlobalVariable(name: "longopts", scope: !105, file: !2, line: 88, type: !516, isLocal: true, isDefinition: true)
!516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !517, size: 3584, elements: !194)
!517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !518)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !519, line: 50, size: 256, elements: !520)
!519 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!520 = !{!521, !522, !523, !525}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !518, file: !519, line: 52, baseType: !169, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !518, file: !519, line: 55, baseType: !122, size: 32, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !518, file: !519, line: 56, baseType: !524, size: 64, offset: 128)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !518, file: !519, line: 57, baseType: !122, size: 32, offset: 192)
!526 = !DIGlobalVariableExpression(var: !527, expr: !DIExpression())
!527 = distinct !DIGlobalVariable(name: "usvars_used", scope: !105, file: !2, line: 42, type: !528, isLocal: true, isDefinition: true)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !529, line: 130, baseType: !530)
!529 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !531, line: 18, baseType: !174)
!531 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!532 = !DIGlobalVariableExpression(var: !533, expr: !DIExpression())
!533 = distinct !DIGlobalVariable(name: "usvars_alloc", scope: !105, file: !2, line: 41, type: !528, isLocal: true, isDefinition: true)
!534 = !DIGlobalVariableExpression(var: !535, expr: !DIExpression())
!535 = distinct !DIGlobalVariable(name: "usvars", scope: !105, file: !2, line: 40, type: !536, isLocal: true, isDefinition: true)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!537 = !DIGlobalVariableExpression(var: !538, expr: !DIExpression())
!538 = distinct !DIGlobalVariable(scope: null, file: !2, line: 570, type: !213, isLocal: true, isDefinition: true)
!539 = !DIGlobalVariableExpression(var: !540, expr: !DIExpression())
!540 = distinct !DIGlobalVariable(scope: null, file: !2, line: 576, type: !486, isLocal: true, isDefinition: true)
!541 = !DIGlobalVariableExpression(var: !542, expr: !DIExpression())
!542 = distinct !DIGlobalVariable(scope: null, file: !2, line: 669, type: !543, isLocal: true, isDefinition: true)
!543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !544)
!544 = !{!545}
!545 = !DISubrange(count: 26)
!546 = !DIGlobalVariableExpression(var: !547, expr: !DIExpression())
!547 = distinct !DIGlobalVariable(name: "block_signals", scope: !105, file: !2, line: 62, type: !548, isLocal: true, isDefinition: true)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !549, line: 7, baseType: !550)
!549 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/sigset_t.h", directory: "", checksumkind: CSK_MD5, checksum: "c2b978aaf49d5c0e2b1e9c2e1b7f7848")
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !551, line: 8, baseType: !552)
!551 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__sigset_t.h", directory: "", checksumkind: CSK_MD5, checksum: "acc6b14c0967857fec362a8d433e1cf2")
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !551, line: 5, size: 1024, elements: !553)
!553 = !{!554}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !552, file: !551, line: 7, baseType: !555, size: 1024)
!555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 1024, elements: !204)
!556 = !DIGlobalVariableExpression(var: !557, expr: !DIExpression())
!557 = distinct !DIGlobalVariable(name: "unblock_signals", scope: !105, file: !2, line: 65, type: !548, isLocal: true, isDefinition: true)
!558 = !DIGlobalVariableExpression(var: !559, expr: !DIExpression())
!559 = distinct !DIGlobalVariable(scope: null, file: !2, line: 538, type: !277, isLocal: true, isDefinition: true)
!560 = !DIGlobalVariableExpression(var: !561, expr: !DIExpression())
!561 = distinct !DIGlobalVariable(scope: null, file: !2, line: 539, type: !193, isLocal: true, isDefinition: true)
!562 = !DIGlobalVariableExpression(var: !563, expr: !DIExpression())
!563 = distinct !DIGlobalVariable(scope: null, file: !2, line: 541, type: !193, isLocal: true, isDefinition: true)
!564 = !DIGlobalVariableExpression(var: !565, expr: !DIExpression())
!565 = distinct !DIGlobalVariable(scope: null, file: !2, line: 441, type: !566, isLocal: true, isDefinition: true)
!566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !567)
!567 = !{!568}
!568 = !DISubrange(count: 48)
!569 = !DIGlobalVariableExpression(var: !570, expr: !DIExpression())
!570 = distinct !DIGlobalVariable(scope: null, file: !2, line: 452, type: !571, isLocal: true, isDefinition: true)
!571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !572)
!572 = !{!573}
!573 = !DISubrange(count: 41)
!574 = !DIGlobalVariableExpression(var: !575, expr: !DIExpression())
!575 = distinct !DIGlobalVariable(scope: null, file: !2, line: 456, type: !576, isLocal: true, isDefinition: true)
!576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !577)
!577 = !{!578}
!578 = !DISubrange(count: 29)
!579 = !DIGlobalVariableExpression(var: !580, expr: !DIExpression())
!580 = distinct !DIGlobalVariable(scope: null, file: !2, line: 470, type: !581, isLocal: true, isDefinition: true)
!581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 424, elements: !582)
!582 = !{!583}
!583 = !DISubrange(count: 53)
!584 = !DIGlobalVariableExpression(var: !585, expr: !DIExpression())
!585 = distinct !DIGlobalVariable(scope: null, file: !2, line: 478, type: !586, isLocal: true, isDefinition: true)
!586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !587)
!587 = !{!588}
!588 = !DISubrange(count: 25)
!589 = !DIGlobalVariableExpression(var: !590, expr: !DIExpression())
!590 = distinct !DIGlobalVariable(scope: null, file: !2, line: 483, type: !591, isLocal: true, isDefinition: true)
!591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !592)
!592 = !{!593}
!593 = !DISubrange(count: 34)
!594 = !DIGlobalVariableExpression(var: !595, expr: !DIExpression())
!595 = distinct !DIGlobalVariable(scope: null, file: !2, line: 496, type: !591, isLocal: true, isDefinition: true)
!596 = !DIGlobalVariableExpression(var: !597, expr: !DIExpression())
!597 = distinct !DIGlobalVariable(name: "vnlen", scope: !105, file: !2, line: 49, type: !528, isLocal: true, isDefinition: true)
!598 = !DIGlobalVariableExpression(var: !599, expr: !DIExpression())
!599 = distinct !DIGlobalVariable(name: "varname", scope: !105, file: !2, line: 48, type: !163, isLocal: true, isDefinition: true)
!600 = !DIGlobalVariableExpression(var: !601, expr: !DIExpression())
!601 = distinct !DIGlobalVariable(scope: null, file: !2, line: 198, type: !193, isLocal: true, isDefinition: true)
!602 = !DIGlobalVariableExpression(var: !603, expr: !DIExpression())
!603 = distinct !DIGlobalVariable(scope: null, file: !2, line: 201, type: !203, isLocal: true, isDefinition: true)
!604 = !DIGlobalVariableExpression(var: !605, expr: !DIExpression())
!605 = distinct !DIGlobalVariable(scope: null, file: !2, line: 607, type: !606, isLocal: true, isDefinition: true)
!606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !607)
!607 = !{!608}
!608 = !DISubrange(count: 42)
!609 = !DIGlobalVariableExpression(var: !610, expr: !DIExpression())
!610 = distinct !DIGlobalVariable(scope: null, file: !2, line: 615, type: !606, isLocal: true, isDefinition: true)
!611 = !DIGlobalVariableExpression(var: !612, expr: !DIExpression())
!612 = distinct !DIGlobalVariable(scope: null, file: !2, line: 623, type: !391, isLocal: true, isDefinition: true)
!613 = !DIGlobalVariableExpression(var: !614, expr: !DIExpression())
!614 = distinct !DIGlobalVariable(scope: null, file: !2, line: 624, type: !272, isLocal: true, isDefinition: true)
!615 = !DIGlobalVariableExpression(var: !616, expr: !DIExpression())
!616 = distinct !DIGlobalVariable(scope: null, file: !2, line: 624, type: !412, isLocal: true, isDefinition: true)
!617 = !DIGlobalVariableExpression(var: !618, expr: !DIExpression())
!618 = distinct !DIGlobalVariable(scope: null, file: !2, line: 624, type: !291, isLocal: true, isDefinition: true)
!619 = !DIGlobalVariableExpression(var: !620, expr: !DIExpression())
!620 = distinct !DIGlobalVariable(scope: null, file: !2, line: 624, type: !486, isLocal: true, isDefinition: true)
!621 = !DIGlobalVariableExpression(var: !622, expr: !DIExpression())
!622 = distinct !DIGlobalVariable(scope: null, file: !2, line: 691, type: !591, isLocal: true, isDefinition: true)
!623 = !DIGlobalVariableExpression(var: !624, expr: !DIExpression())
!624 = distinct !DIGlobalVariable(scope: null, file: !2, line: 700, type: !391, isLocal: true, isDefinition: true)
!625 = !DIGlobalVariableExpression(var: !626, expr: !DIExpression())
!626 = distinct !DIGlobalVariable(scope: null, file: !2, line: 705, type: !412, isLocal: true, isDefinition: true)
!627 = !DIGlobalVariableExpression(var: !628, expr: !DIExpression())
!628 = distinct !DIGlobalVariable(scope: null, file: !2, line: 713, type: !629, isLocal: true, isDefinition: true)
!629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !630)
!630 = !{!631}
!631 = !DISubrange(count: 31)
!632 = !DIGlobalVariableExpression(var: !633, expr: !DIExpression())
!633 = distinct !DIGlobalVariable(scope: null, file: !2, line: 719, type: !591, isLocal: true, isDefinition: true)
!634 = !DIGlobalVariableExpression(var: !635, expr: !DIExpression())
!635 = distinct !DIGlobalVariable(scope: null, file: !2, line: 747, type: !503, isLocal: true, isDefinition: true)
!636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 152, elements: !487)
!637 = !DIGlobalVariableExpression(var: !295, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!638 = !DIGlobalVariableExpression(var: !299, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!639 = !DIGlobalVariableExpression(var: !297, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!640 = !DIGlobalVariableExpression(var: !641, expr: !DIExpression())
!641 = distinct !DIGlobalVariable(scope: null, file: !642, line: 87, type: !486, isLocal: true, isDefinition: true)
!642 = !DIFile(filename: "src/operand2sig.c", directory: "/src", checksumkind: CSK_MD5, checksum: "46beb430284fcb3f5c7434dd479a51b3")
!643 = !DIGlobalVariableExpression(var: !644, expr: !DIExpression())
!644 = distinct !DIGlobalVariable(scope: null, file: !645, line: 3, type: !277, isLocal: true, isDefinition: true)
!645 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!646 = !DIGlobalVariableExpression(var: !647, expr: !DIExpression())
!647 = distinct !DIGlobalVariable(name: "Version", scope: !648, file: !645, line: 3, type: !169, isLocal: false, isDefinition: true)
!648 = distinct !DICompileUnit(language: DW_LANG_C11, file: !645, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/version.o -MD -MP -MF src/.deps/version.Tpo -c src/version.c -o src/.version.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !649, splitDebugInlining: false, nameTableKind: None)
!649 = !{!643, !646}
!650 = !DIGlobalVariableExpression(var: !651, expr: !DIExpression())
!651 = distinct !DIGlobalVariable(name: "file_name", scope: !652, file: !653, line: 45, type: !169, isLocal: true, isDefinition: true)
!652 = distinct !DICompileUnit(language: DW_LANG_C11, file: !653, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-closeout.o -MD -MP -MF lib/.deps/libcoreutils_a-closeout.Tpo -c lib/closeout.c -o lib/.libcoreutils_a-closeout.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !654, splitDebugInlining: false, nameTableKind: None)
!653 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!654 = !{!655, !657, !659, !661, !650, !663}
!655 = !DIGlobalVariableExpression(var: !656, expr: !DIExpression())
!656 = distinct !DIGlobalVariable(scope: null, file: !653, line: 121, type: !291, isLocal: true, isDefinition: true)
!657 = !DIGlobalVariableExpression(var: !658, expr: !DIExpression())
!658 = distinct !DIGlobalVariable(scope: null, file: !653, line: 121, type: !476, isLocal: true, isDefinition: true)
!659 = !DIGlobalVariableExpression(var: !660, expr: !DIExpression())
!660 = distinct !DIGlobalVariable(scope: null, file: !653, line: 123, type: !291, isLocal: true, isDefinition: true)
!661 = !DIGlobalVariableExpression(var: !662, expr: !DIExpression())
!662 = distinct !DIGlobalVariable(scope: null, file: !653, line: 126, type: !286, isLocal: true, isDefinition: true)
!663 = !DIGlobalVariableExpression(var: !664, expr: !DIExpression())
!664 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !652, file: !653, line: 55, type: !231, isLocal: true, isDefinition: true)
!665 = !DIGlobalVariableExpression(var: !666, expr: !DIExpression())
!666 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !667, file: !668, line: 66, type: !715, isLocal: false, isDefinition: true)
!667 = distinct !DICompileUnit(language: DW_LANG_C11, file: !668, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !669, globals: !670, splitDebugInlining: false, nameTableKind: None)
!668 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!669 = !{!164, !171}
!670 = !{!671, !673, !697, !699, !701, !703, !665, !705, !707, !709, !711, !713}
!671 = !DIGlobalVariableExpression(var: !672, expr: !DIExpression())
!672 = distinct !DIGlobalVariable(scope: null, file: !668, line: 272, type: !265, isLocal: true, isDefinition: true)
!673 = !DIGlobalVariableExpression(var: !674, expr: !DIExpression())
!674 = distinct !DIGlobalVariable(name: "old_file_name", scope: !675, file: !668, line: 304, type: !169, isLocal: true, isDefinition: true)
!675 = distinct !DISubprogram(name: "verror_at_line", scope: !668, file: !668, line: 298, type: !676, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !690)
!676 = !DISubroutineType(types: !677)
!677 = !{null, !122, !122, !169, !109, !169, !678}
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !679, line: 52, baseType: !680)
!679 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !681, line: 12, baseType: !682)
!681 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !668, baseType: !683)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !684)
!684 = !{!685, !686, !687, !688, !689}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !683, file: !668, baseType: !164, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !683, file: !668, baseType: !164, size: 64, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !683, file: !668, baseType: !164, size: 64, offset: 128)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !683, file: !668, baseType: !122, size: 32, offset: 192)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !683, file: !668, baseType: !122, size: 32, offset: 224)
!690 = !{!691, !692, !693, !694, !695, !696}
!691 = !DILocalVariable(name: "status", arg: 1, scope: !675, file: !668, line: 298, type: !122)
!692 = !DILocalVariable(name: "errnum", arg: 2, scope: !675, file: !668, line: 298, type: !122)
!693 = !DILocalVariable(name: "file_name", arg: 3, scope: !675, file: !668, line: 298, type: !169)
!694 = !DILocalVariable(name: "line_number", arg: 4, scope: !675, file: !668, line: 298, type: !109)
!695 = !DILocalVariable(name: "message", arg: 5, scope: !675, file: !668, line: 298, type: !169)
!696 = !DILocalVariable(name: "args", arg: 6, scope: !675, file: !668, line: 298, type: !678)
!697 = !DIGlobalVariableExpression(var: !698, expr: !DIExpression())
!698 = distinct !DIGlobalVariable(name: "old_line_number", scope: !675, file: !668, line: 305, type: !109, isLocal: true, isDefinition: true)
!699 = !DIGlobalVariableExpression(var: !700, expr: !DIExpression())
!700 = distinct !DIGlobalVariable(scope: null, file: !668, line: 338, type: !19, isLocal: true, isDefinition: true)
!701 = !DIGlobalVariableExpression(var: !702, expr: !DIExpression())
!702 = distinct !DIGlobalVariable(scope: null, file: !668, line: 346, type: !412, isLocal: true, isDefinition: true)
!703 = !DIGlobalVariableExpression(var: !704, expr: !DIExpression())
!704 = distinct !DIGlobalVariable(scope: null, file: !668, line: 346, type: !213, isLocal: true, isDefinition: true)
!705 = !DIGlobalVariableExpression(var: !706, expr: !DIExpression())
!706 = distinct !DIGlobalVariable(name: "error_message_count", scope: !667, file: !668, line: 69, type: !109, isLocal: false, isDefinition: true)
!707 = !DIGlobalVariableExpression(var: !708, expr: !DIExpression())
!708 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !667, file: !668, line: 295, type: !122, isLocal: false, isDefinition: true)
!709 = !DIGlobalVariableExpression(var: !710, expr: !DIExpression())
!710 = distinct !DIGlobalVariable(scope: null, file: !668, line: 208, type: !291, isLocal: true, isDefinition: true)
!711 = !DIGlobalVariableExpression(var: !712, expr: !DIExpression())
!712 = distinct !DIGlobalVariable(scope: null, file: !668, line: 208, type: !503, isLocal: true, isDefinition: true)
!713 = !DIGlobalVariableExpression(var: !714, expr: !DIExpression())
!714 = distinct !DIGlobalVariable(scope: null, file: !668, line: 214, type: !265, isLocal: true, isDefinition: true)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DISubroutineType(types: !717)
!717 = !{null}
!718 = !DIGlobalVariableExpression(var: !719, expr: !DIExpression())
!719 = distinct !DIGlobalVariable(name: "program_name", scope: !720, file: !721, line: 31, type: !169, isLocal: false, isDefinition: true)
!720 = distinct !DICompileUnit(language: DW_LANG_C11, file: !721, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !722, globals: !723, splitDebugInlining: false, nameTableKind: None)
!721 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!722 = !{!164, !163}
!723 = !{!718, !724, !726}
!724 = !DIGlobalVariableExpression(var: !725, expr: !DIExpression())
!725 = distinct !DIGlobalVariable(scope: null, file: !721, line: 46, type: !412, isLocal: true, isDefinition: true)
!726 = !DIGlobalVariableExpression(var: !727, expr: !DIExpression())
!727 = distinct !DIGlobalVariable(scope: null, file: !721, line: 49, type: !19, isLocal: true, isDefinition: true)
!728 = !DIGlobalVariableExpression(var: !729, expr: !DIExpression())
!729 = distinct !DIGlobalVariable(name: "utf07FF", scope: !730, file: !731, line: 46, type: !758, isLocal: true, isDefinition: true)
!730 = distinct !DISubprogram(name: "proper_name_lite", scope: !731, file: !731, line: 38, type: !732, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !736)
!731 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!732 = !DISubroutineType(types: !733)
!733 = !{!169, !169, !169}
!734 = distinct !DICompileUnit(language: DW_LANG_C11, file: !731, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !735, splitDebugInlining: false, nameTableKind: None)
!735 = !{!728}
!736 = !{!737, !738, !739, !740, !745}
!737 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !730, file: !731, line: 38, type: !169)
!738 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !730, file: !731, line: 38, type: !169)
!739 = !DILocalVariable(name: "translation", scope: !730, file: !731, line: 40, type: !169)
!740 = !DILocalVariable(name: "w", scope: !730, file: !731, line: 47, type: !741)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !742, line: 37, baseType: !743)
!742 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !353, line: 57, baseType: !744)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !353, line: 42, baseType: !109)
!745 = !DILocalVariable(name: "mbs", scope: !730, file: !731, line: 48, type: !746)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !747, line: 6, baseType: !748)
!747 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !749, line: 21, baseType: !750)
!749 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !749, line: 13, size: 64, elements: !751)
!751 = !{!752, !753}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !750, file: !749, line: 15, baseType: !122, size: 32)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !750, file: !749, line: 20, baseType: !754, size: 32, offset: 32)
!754 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !750, file: !749, line: 16, size: 32, elements: !755)
!755 = !{!756, !757}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !754, file: !749, line: 18, baseType: !109, size: 32)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !754, file: !749, line: 19, baseType: !19, size: 32)
!758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 16, elements: !214)
!759 = !DIGlobalVariableExpression(var: !760, expr: !DIExpression())
!760 = distinct !DIGlobalVariable(scope: null, file: !761, line: 78, type: !412, isLocal: true, isDefinition: true)
!761 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!762 = !DIGlobalVariableExpression(var: !763, expr: !DIExpression())
!763 = distinct !DIGlobalVariable(scope: null, file: !761, line: 79, type: !391, isLocal: true, isDefinition: true)
!764 = !DIGlobalVariableExpression(var: !765, expr: !DIExpression())
!765 = distinct !DIGlobalVariable(scope: null, file: !761, line: 80, type: !208, isLocal: true, isDefinition: true)
!766 = !DIGlobalVariableExpression(var: !767, expr: !DIExpression())
!767 = distinct !DIGlobalVariable(scope: null, file: !761, line: 81, type: !208, isLocal: true, isDefinition: true)
!768 = !DIGlobalVariableExpression(var: !769, expr: !DIExpression())
!769 = distinct !DIGlobalVariable(scope: null, file: !761, line: 82, type: !374, isLocal: true, isDefinition: true)
!770 = !DIGlobalVariableExpression(var: !771, expr: !DIExpression())
!771 = distinct !DIGlobalVariable(scope: null, file: !761, line: 83, type: !213, isLocal: true, isDefinition: true)
!772 = !DIGlobalVariableExpression(var: !773, expr: !DIExpression())
!773 = distinct !DIGlobalVariable(scope: null, file: !761, line: 84, type: !412, isLocal: true, isDefinition: true)
!774 = !DIGlobalVariableExpression(var: !775, expr: !DIExpression())
!775 = distinct !DIGlobalVariable(scope: null, file: !761, line: 85, type: !291, isLocal: true, isDefinition: true)
!776 = !DIGlobalVariableExpression(var: !777, expr: !DIExpression())
!777 = distinct !DIGlobalVariable(scope: null, file: !761, line: 86, type: !291, isLocal: true, isDefinition: true)
!778 = !DIGlobalVariableExpression(var: !779, expr: !DIExpression())
!779 = distinct !DIGlobalVariable(scope: null, file: !761, line: 87, type: !412, isLocal: true, isDefinition: true)
!780 = !DIGlobalVariableExpression(var: !781, expr: !DIExpression())
!781 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !782, file: !761, line: 76, type: !856, isLocal: false, isDefinition: true)
!782 = distinct !DICompileUnit(language: DW_LANG_C11, file: !761, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !783, retainedTypes: !791, globals: !792, splitDebugInlining: false, nameTableKind: None)
!783 = !{!784, !786, !140}
!784 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !785, line: 42, baseType: !109, size: 32, elements: !128)
!785 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!786 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !785, line: 254, baseType: !109, size: 32, elements: !787)
!787 = !{!788, !789, !790}
!788 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!789 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!790 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!791 = !{!164, !122, !165, !166}
!792 = !{!759, !762, !764, !766, !768, !770, !772, !774, !776, !778, !780, !793, !797, !807, !809, !814, !816, !818, !820, !822, !845, !852, !854}
!793 = !DIGlobalVariableExpression(var: !794, expr: !DIExpression())
!794 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !782, file: !761, line: 92, type: !795, isLocal: false, isDefinition: true)
!795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !796, size: 320, elements: !96)
!796 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !784)
!797 = !DIGlobalVariableExpression(var: !798, expr: !DIExpression())
!798 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !782, file: !761, line: 1040, type: !799, isLocal: false, isDefinition: true)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !761, line: 56, size: 448, elements: !800)
!800 = !{!801, !802, !803, !805, !806}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !799, file: !761, line: 59, baseType: !784, size: 32)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !799, file: !761, line: 62, baseType: !122, size: 32, offset: 32)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !799, file: !761, line: 66, baseType: !804, size: 256, offset: 64)
!804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 256, elements: !413)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !799, file: !761, line: 69, baseType: !169, size: 64, offset: 320)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !799, file: !761, line: 72, baseType: !169, size: 64, offset: 384)
!807 = !DIGlobalVariableExpression(var: !808, expr: !DIExpression())
!808 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !782, file: !761, line: 107, type: !799, isLocal: true, isDefinition: true)
!809 = !DIGlobalVariableExpression(var: !810, expr: !DIExpression())
!810 = distinct !DIGlobalVariable(name: "slot0", scope: !782, file: !761, line: 831, type: !811, isLocal: true, isDefinition: true)
!811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !812)
!812 = !{!813}
!813 = !DISubrange(count: 256)
!814 = !DIGlobalVariableExpression(var: !815, expr: !DIExpression())
!815 = distinct !DIGlobalVariable(scope: null, file: !761, line: 321, type: !213, isLocal: true, isDefinition: true)
!816 = !DIGlobalVariableExpression(var: !817, expr: !DIExpression())
!817 = distinct !DIGlobalVariable(scope: null, file: !761, line: 357, type: !213, isLocal: true, isDefinition: true)
!818 = !DIGlobalVariableExpression(var: !819, expr: !DIExpression())
!819 = distinct !DIGlobalVariable(scope: null, file: !761, line: 358, type: !213, isLocal: true, isDefinition: true)
!820 = !DIGlobalVariableExpression(var: !821, expr: !DIExpression())
!821 = distinct !DIGlobalVariable(scope: null, file: !761, line: 199, type: !291, isLocal: true, isDefinition: true)
!822 = !DIGlobalVariableExpression(var: !823, expr: !DIExpression())
!823 = distinct !DIGlobalVariable(name: "quote", scope: !824, file: !761, line: 228, type: !843, isLocal: true, isDefinition: true)
!824 = distinct !DISubprogram(name: "gettext_quote", scope: !761, file: !761, line: 197, type: !825, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !827)
!825 = !DISubroutineType(types: !826)
!826 = !{!169, !169, !784}
!827 = !{!828, !829, !830, !831, !832}
!828 = !DILocalVariable(name: "msgid", arg: 1, scope: !824, file: !761, line: 197, type: !169)
!829 = !DILocalVariable(name: "s", arg: 2, scope: !824, file: !761, line: 197, type: !784)
!830 = !DILocalVariable(name: "translation", scope: !824, file: !761, line: 199, type: !169)
!831 = !DILocalVariable(name: "w", scope: !824, file: !761, line: 229, type: !741)
!832 = !DILocalVariable(name: "mbs", scope: !824, file: !761, line: 230, type: !833)
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !747, line: 6, baseType: !834)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !749, line: 21, baseType: !835)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !749, line: 13, size: 64, elements: !836)
!836 = !{!837, !838}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !835, file: !749, line: 15, baseType: !122, size: 32)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !835, file: !749, line: 20, baseType: !839, size: 32, offset: 32)
!839 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !835, file: !749, line: 16, size: 32, elements: !840)
!840 = !{!841, !842}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !839, file: !749, line: 18, baseType: !109, size: 32)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !839, file: !749, line: 19, baseType: !19, size: 32)
!843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 64, elements: !844)
!844 = !{!215, !21}
!845 = !DIGlobalVariableExpression(var: !846, expr: !DIExpression())
!846 = distinct !DIGlobalVariable(name: "slotvec", scope: !782, file: !761, line: 834, type: !847, isLocal: true, isDefinition: true)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !761, line: 823, size: 128, elements: !849)
!849 = !{!850, !851}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !848, file: !761, line: 825, baseType: !166, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !848, file: !761, line: 826, baseType: !163, size: 64, offset: 64)
!852 = !DIGlobalVariableExpression(var: !853, expr: !DIExpression())
!853 = distinct !DIGlobalVariable(name: "nslots", scope: !782, file: !761, line: 832, type: !122, isLocal: true, isDefinition: true)
!854 = !DIGlobalVariableExpression(var: !855, expr: !DIExpression())
!855 = distinct !DIGlobalVariable(name: "slotvec0", scope: !782, file: !761, line: 833, type: !848, isLocal: true, isDefinition: true)
!856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !857, size: 704, elements: !858)
!857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !169)
!858 = !{!859}
!859 = !DISubrange(count: 11)
!860 = !DIGlobalVariableExpression(var: !861, expr: !DIExpression())
!861 = distinct !DIGlobalVariable(name: "numname_table", scope: !862, file: !863, line: 43, type: !872, isLocal: true, isDefinition: true)
!862 = distinct !DICompileUnit(language: DW_LANG_C11, file: !863, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-sig2str.o -MD -MP -MF lib/.deps/libcoreutils_a-sig2str.Tpo -c lib/sig2str.c -o lib/.libcoreutils_a-sig2str.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !864, globals: !865, splitDebugInlining: false, nameTableKind: None)
!863 = !DIFile(filename: "lib/sig2str.c", directory: "/src", checksumkind: CSK_MD5, checksum: "828136ef7ede39101f7053cda7cea598")
!864 = !{!109}
!865 = !{!866, !868, !870, !860}
!866 = !DIGlobalVariableExpression(var: !867, expr: !DIExpression())
!867 = distinct !DIGlobalVariable(scope: null, file: !863, line: 351, type: !391, isLocal: true, isDefinition: true)
!868 = !DIGlobalVariableExpression(var: !869, expr: !DIExpression())
!869 = distinct !DIGlobalVariable(scope: null, file: !863, line: 356, type: !391, isLocal: true, isDefinition: true)
!870 = !DIGlobalVariableExpression(var: !871, expr: !DIExpression())
!871 = distinct !DIGlobalVariable(scope: null, file: !863, line: 362, type: !19, isLocal: true, isDefinition: true)
!872 = !DICompositeType(tag: DW_TAG_array_type, baseType: !873, size: 3360, elements: !878)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "numname", file: !863, line: 43, size: 96, elements: !874)
!874 = !{!875, !876}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !873, file: !863, line: 43, baseType: !122, size: 32)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !873, file: !863, line: 43, baseType: !877, size: 64, offset: 32)
!877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 64, elements: !413)
!878 = !{!879}
!879 = !DISubrange(count: 35)
!880 = !DIGlobalVariableExpression(var: !881, expr: !DIExpression())
!881 = distinct !DIGlobalVariable(scope: null, file: !882, line: 67, type: !476, isLocal: true, isDefinition: true)
!882 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!883 = !DIGlobalVariableExpression(var: !884, expr: !DIExpression())
!884 = distinct !DIGlobalVariable(scope: null, file: !882, line: 69, type: !291, isLocal: true, isDefinition: true)
!885 = !DIGlobalVariableExpression(var: !886, expr: !DIExpression())
!886 = distinct !DIGlobalVariable(scope: null, file: !882, line: 83, type: !291, isLocal: true, isDefinition: true)
!887 = !DIGlobalVariableExpression(var: !888, expr: !DIExpression())
!888 = distinct !DIGlobalVariable(scope: null, file: !882, line: 83, type: !19, isLocal: true, isDefinition: true)
!889 = !DIGlobalVariableExpression(var: !890, expr: !DIExpression())
!890 = distinct !DIGlobalVariable(scope: null, file: !882, line: 85, type: !213, isLocal: true, isDefinition: true)
!891 = !DIGlobalVariableExpression(var: !892, expr: !DIExpression())
!892 = distinct !DIGlobalVariable(scope: null, file: !882, line: 88, type: !893, isLocal: true, isDefinition: true)
!893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !894)
!894 = !{!895}
!895 = !DISubrange(count: 171)
!896 = !DIGlobalVariableExpression(var: !897, expr: !DIExpression())
!897 = distinct !DIGlobalVariable(scope: null, file: !882, line: 88, type: !591, isLocal: true, isDefinition: true)
!898 = !DIGlobalVariableExpression(var: !899, expr: !DIExpression())
!899 = distinct !DIGlobalVariable(scope: null, file: !882, line: 105, type: !203, isLocal: true, isDefinition: true)
!900 = !DIGlobalVariableExpression(var: !901, expr: !DIExpression())
!901 = distinct !DIGlobalVariable(scope: null, file: !882, line: 109, type: !183, isLocal: true, isDefinition: true)
!902 = !DIGlobalVariableExpression(var: !903, expr: !DIExpression())
!903 = distinct !DIGlobalVariable(scope: null, file: !882, line: 113, type: !904, isLocal: true, isDefinition: true)
!904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !905)
!905 = !{!906}
!906 = !DISubrange(count: 28)
!907 = !DIGlobalVariableExpression(var: !908, expr: !DIExpression())
!908 = distinct !DIGlobalVariable(scope: null, file: !882, line: 120, type: !909, isLocal: true, isDefinition: true)
!909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !910)
!910 = !{!911}
!911 = !DISubrange(count: 32)
!912 = !DIGlobalVariableExpression(var: !913, expr: !DIExpression())
!913 = distinct !DIGlobalVariable(scope: null, file: !882, line: 127, type: !914, isLocal: true, isDefinition: true)
!914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !915)
!915 = !{!916}
!916 = !DISubrange(count: 36)
!917 = !DIGlobalVariableExpression(var: !918, expr: !DIExpression())
!918 = distinct !DIGlobalVariable(scope: null, file: !882, line: 134, type: !256, isLocal: true, isDefinition: true)
!919 = !DIGlobalVariableExpression(var: !920, expr: !DIExpression())
!920 = distinct !DIGlobalVariable(scope: null, file: !882, line: 142, type: !921, isLocal: true, isDefinition: true)
!921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !922)
!922 = !{!923}
!923 = !DISubrange(count: 44)
!924 = !DIGlobalVariableExpression(var: !925, expr: !DIExpression())
!925 = distinct !DIGlobalVariable(scope: null, file: !882, line: 150, type: !566, isLocal: true, isDefinition: true)
!926 = !DIGlobalVariableExpression(var: !927, expr: !DIExpression())
!927 = distinct !DIGlobalVariable(scope: null, file: !882, line: 159, type: !928, isLocal: true, isDefinition: true)
!928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !929)
!929 = !{!930}
!930 = !DISubrange(count: 52)
!931 = !DIGlobalVariableExpression(var: !932, expr: !DIExpression())
!932 = distinct !DIGlobalVariable(scope: null, file: !882, line: 170, type: !14, isLocal: true, isDefinition: true)
!933 = !DIGlobalVariableExpression(var: !934, expr: !DIExpression())
!934 = distinct !DIGlobalVariable(scope: null, file: !882, line: 248, type: !374, isLocal: true, isDefinition: true)
!935 = !DIGlobalVariableExpression(var: !936, expr: !DIExpression())
!936 = distinct !DIGlobalVariable(scope: null, file: !882, line: 248, type: !455, isLocal: true, isDefinition: true)
!937 = !DIGlobalVariableExpression(var: !938, expr: !DIExpression())
!938 = distinct !DIGlobalVariable(scope: null, file: !882, line: 254, type: !374, isLocal: true, isDefinition: true)
!939 = !DIGlobalVariableExpression(var: !940, expr: !DIExpression())
!940 = distinct !DIGlobalVariable(scope: null, file: !882, line: 254, type: !193, isLocal: true, isDefinition: true)
!941 = !DIGlobalVariableExpression(var: !942, expr: !DIExpression())
!942 = distinct !DIGlobalVariable(scope: null, file: !882, line: 254, type: !256, isLocal: true, isDefinition: true)
!943 = !DIGlobalVariableExpression(var: !944, expr: !DIExpression())
!944 = distinct !DIGlobalVariable(scope: null, file: !882, line: 259, type: !3, isLocal: true, isDefinition: true)
!945 = !DIGlobalVariableExpression(var: !946, expr: !DIExpression())
!946 = distinct !DIGlobalVariable(scope: null, file: !882, line: 259, type: !576, isLocal: true, isDefinition: true)
!947 = !DIGlobalVariableExpression(var: !948, expr: !DIExpression())
!948 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !949, file: !950, line: 26, type: !952, isLocal: false, isDefinition: true)
!949 = distinct !DICompileUnit(language: DW_LANG_C11, file: !950, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !951, splitDebugInlining: false, nameTableKind: None)
!950 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!951 = !{!947}
!952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 376, elements: !953)
!953 = !{!954}
!954 = !DISubrange(count: 47)
!955 = !DIGlobalVariableExpression(var: !956, expr: !DIExpression())
!956 = distinct !DIGlobalVariable(name: "exit_failure", scope: !957, file: !958, line: 24, type: !960, isLocal: false, isDefinition: true)
!957 = distinct !DICompileUnit(language: DW_LANG_C11, file: !958, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !959, splitDebugInlining: false, nameTableKind: None)
!958 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!959 = !{!955}
!960 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !122)
!961 = !DIGlobalVariableExpression(var: !962, expr: !DIExpression())
!962 = distinct !DIGlobalVariable(scope: null, file: !963, line: 34, type: !286, isLocal: true, isDefinition: true)
!963 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!964 = !DIGlobalVariableExpression(var: !965, expr: !DIExpression())
!965 = distinct !DIGlobalVariable(scope: null, file: !963, line: 34, type: !291, isLocal: true, isDefinition: true)
!966 = !DIGlobalVariableExpression(var: !967, expr: !DIExpression())
!967 = distinct !DIGlobalVariable(scope: null, file: !963, line: 34, type: !198, isLocal: true, isDefinition: true)
!968 = !DIGlobalVariableExpression(var: !969, expr: !DIExpression())
!969 = distinct !DIGlobalVariable(scope: null, file: !970, line: 108, type: !90, isLocal: true, isDefinition: true)
!970 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!971 = !DIGlobalVariableExpression(var: !972, expr: !DIExpression())
!972 = distinct !DIGlobalVariable(name: "internal_state", scope: !973, file: !970, line: 97, type: !976, isLocal: true, isDefinition: true)
!973 = distinct !DICompileUnit(language: DW_LANG_C11, file: !970, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !974, globals: !975, splitDebugInlining: false, nameTableKind: None)
!974 = !{!164, !166, !171}
!975 = !{!968, !971}
!976 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !747, line: 6, baseType: !977)
!977 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !749, line: 21, baseType: !978)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !749, line: 13, size: 64, elements: !979)
!979 = !{!980, !981}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !978, file: !749, line: 15, baseType: !122, size: 32)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !978, file: !749, line: 20, baseType: !982, size: 32, offset: 32)
!982 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !978, file: !749, line: 16, size: 32, elements: !983)
!983 = !{!984, !985}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !982, file: !749, line: 18, baseType: !109, size: 32)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !982, file: !749, line: 19, baseType: !19, size: 32)
!986 = !DIGlobalVariableExpression(var: !987, expr: !DIExpression())
!987 = distinct !DIGlobalVariable(scope: null, file: !988, line: 35, type: !213, isLocal: true, isDefinition: true)
!988 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!989 = !DIGlobalVariableExpression(var: !990, expr: !DIExpression())
!990 = distinct !DIGlobalVariable(scope: null, file: !988, line: 35, type: !391, isLocal: true, isDefinition: true)
!991 = distinct !DICompileUnit(language: DW_LANG_C11, file: !642, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/operand2sig.o -MD -MP -MF src/.deps/operand2sig.Tpo -c src/operand2sig.c -o src/.operand2sig.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !992, splitDebugInlining: false, nameTableKind: None)
!992 = !{!993, !640}
!993 = !DIGlobalVariableExpression(var: !994, expr: !DIExpression())
!994 = distinct !DIGlobalVariable(scope: null, file: !642, line: 72, type: !466, isLocal: true, isDefinition: true)
!995 = distinct !DICompileUnit(language: DW_LANG_C11, file: !996, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-c-ctype.o -MD -MP -MF lib/.deps/libcoreutils_a-c-ctype.Tpo -c lib/c-ctype.c -o lib/.libcoreutils_a-c-ctype.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!996 = !DIFile(filename: "lib/c-ctype.c", directory: "/src", checksumkind: CSK_MD5, checksum: "245df19f202f37bba31cfa46647ceb93")
!997 = distinct !DICompileUnit(language: DW_LANG_C11, file: !998, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!998 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!999 = distinct !DICompileUnit(language: DW_LANG_C11, file: !882, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !1000, retainedTypes: !1004, globals: !1005, splitDebugInlining: false, nameTableKind: None)
!1000 = !{!1001}
!1001 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !882, line: 40, baseType: !109, size: 32, elements: !1002)
!1002 = !{!1003}
!1003 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!1004 = !{!164}
!1005 = !{!880, !883, !885, !887, !889, !891, !896, !898, !900, !902, !907, !912, !917, !919, !924, !926, !931, !933, !935, !937, !939, !941, !943, !945}
!1006 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1007, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !1008, retainedTypes: !1038, splitDebugInlining: false, nameTableKind: None)
!1007 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!1008 = !{!1009, !1021}
!1009 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !1010, file: !1007, line: 188, baseType: !109, size: 32, elements: !1019)
!1010 = distinct !DISubprogram(name: "x2nrealloc", scope: !1007, file: !1007, line: 176, type: !1011, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1006, retainedNodes: !1014)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!164, !164, !1013, !166}
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!1014 = !{!1015, !1016, !1017, !1018}
!1015 = !DILocalVariable(name: "p", arg: 1, scope: !1010, file: !1007, line: 176, type: !164)
!1016 = !DILocalVariable(name: "pn", arg: 2, scope: !1010, file: !1007, line: 176, type: !1013)
!1017 = !DILocalVariable(name: "s", arg: 3, scope: !1010, file: !1007, line: 176, type: !166)
!1018 = !DILocalVariable(name: "n", scope: !1010, file: !1007, line: 178, type: !166)
!1019 = !{!1020}
!1020 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!1021 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !1022, file: !1007, line: 228, baseType: !109, size: 32, elements: !1019)
!1022 = distinct !DISubprogram(name: "xpalloc", scope: !1007, file: !1007, line: 223, type: !1023, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1006, retainedNodes: !1028)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{!164, !164, !1025, !1026, !530, !1026}
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !1027, line: 130, baseType: !530)
!1027 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!1028 = !{!1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037}
!1029 = !DILocalVariable(name: "pa", arg: 1, scope: !1022, file: !1007, line: 223, type: !164)
!1030 = !DILocalVariable(name: "pn", arg: 2, scope: !1022, file: !1007, line: 223, type: !1025)
!1031 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !1022, file: !1007, line: 223, type: !1026)
!1032 = !DILocalVariable(name: "n_max", arg: 4, scope: !1022, file: !1007, line: 223, type: !530)
!1033 = !DILocalVariable(name: "s", arg: 5, scope: !1022, file: !1007, line: 223, type: !1026)
!1034 = !DILocalVariable(name: "n0", scope: !1022, file: !1007, line: 230, type: !1026)
!1035 = !DILocalVariable(name: "n", scope: !1022, file: !1007, line: 237, type: !1026)
!1036 = !DILocalVariable(name: "nbytes", scope: !1022, file: !1007, line: 248, type: !1026)
!1037 = !DILocalVariable(name: "adjusted_nbytes", scope: !1022, file: !1007, line: 252, type: !1026)
!1038 = !{!163, !164}
!1039 = distinct !DICompileUnit(language: DW_LANG_C11, file: !963, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !1040, splitDebugInlining: false, nameTableKind: None)
!1040 = !{!961, !964, !966}
!1041 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1042, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1042 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!1043 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1044, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1044 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!1045 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1046, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1004, splitDebugInlining: false, nameTableKind: None)
!1046 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!1047 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1048, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1004, splitDebugInlining: false, nameTableKind: None)
!1048 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!1049 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1050, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1004, splitDebugInlining: false, nameTableKind: None)
!1050 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!1051 = distinct !DICompileUnit(language: DW_LANG_C11, file: !988, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !1052, splitDebugInlining: false, nameTableKind: None)
!1052 = !{!986, !989}
!1053 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1054, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1054 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!1055 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1056, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1004, splitDebugInlining: false, nameTableKind: None)
!1056 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!1057 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1058 = !{i32 7, !"Dwarf Version", i32 5}
!1059 = !{i32 2, !"Debug Info Version", i32 3}
!1060 = !{i32 1, !"wchar_size", i32 4}
!1061 = !{i32 8, !"PIC Level", i32 2}
!1062 = !{i32 7, !"PIE Level", i32 2}
!1063 = !{i32 7, !"uwtable", i32 2}
!1064 = !{i32 7, !"frame-pointer", i32 1}
!1065 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!1066 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 107, type: !178, scopeLine: 108, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1067)
!1067 = !{!1068}
!1068 = !DILocalVariable(name: "status", arg: 1, scope: !1066, file: !2, line: 107, type: !122)
!1069 = !DILocation(line: 0, scope: !1066)
!1070 = !DILocation(line: 109, column: 14, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1066, file: !2, line: 109, column: 7)
!1072 = !DILocation(line: 109, column: 7, scope: !1066)
!1073 = !DILocation(line: 110, column: 5, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1071, file: !2, line: 110, column: 5)
!1075 = !{!1076, !1076, i64 0}
!1076 = !{!"any pointer", !1077, i64 0}
!1077 = !{!"omnipotent char", !1078, i64 0}
!1078 = !{!"Simple C/C++ TBAA"}
!1079 = !DILocation(line: 113, column: 7, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1071, file: !2, line: 112, column: 5)
!1081 = !DILocation(line: 116, column: 7, scope: !1080)
!1082 = !DILocation(line: 736, column: 3, scope: !1083, inlinedAt: !1084)
!1083 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !108, file: !108, line: 734, type: !716, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105)
!1084 = distinct !DILocation(line: 120, column: 7, scope: !1080)
!1085 = !DILocation(line: 122, column: 7, scope: !1080)
!1086 = !DILocation(line: 126, column: 7, scope: !1080)
!1087 = !DILocation(line: 130, column: 7, scope: !1080)
!1088 = !DILocation(line: 134, column: 7, scope: !1080)
!1089 = !DILocation(line: 138, column: 7, scope: !1080)
!1090 = !DILocation(line: 142, column: 7, scope: !1080)
!1091 = !DILocation(line: 147, column: 7, scope: !1080)
!1092 = !DILocation(line: 151, column: 7, scope: !1080)
!1093 = !DILocation(line: 155, column: 7, scope: !1080)
!1094 = !DILocation(line: 159, column: 7, scope: !1080)
!1095 = !DILocation(line: 163, column: 7, scope: !1080)
!1096 = !DILocation(line: 167, column: 7, scope: !1080)
!1097 = !DILocation(line: 168, column: 7, scope: !1080)
!1098 = !DILocation(line: 169, column: 7, scope: !1080)
!1099 = !DILocation(line: 173, column: 7, scope: !1080)
!1100 = !DILocalVariable(name: "program", arg: 1, scope: !1101, file: !108, line: 824, type: !169)
!1101 = distinct !DISubprogram(name: "emit_exec_status", scope: !108, file: !108, line: 824, type: !1102, scopeLine: 825, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1104)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{null, !169}
!1104 = !{!1100}
!1105 = !DILocation(line: 0, scope: !1101, inlinedAt: !1106)
!1106 = distinct !DILocation(line: 179, column: 7, scope: !1080)
!1107 = !DILocation(line: 826, column: 7, scope: !1101, inlinedAt: !1106)
!1108 = !DILocalVariable(name: "program", arg: 1, scope: !1109, file: !108, line: 836, type: !169)
!1109 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !108, file: !108, line: 836, type: !1102, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1110)
!1110 = !{!1108, !1111, !1118, !1119, !1121, !1122}
!1111 = !DILocalVariable(name: "infomap", scope: !1109, file: !108, line: 838, type: !1112)
!1112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1113, size: 896, elements: !292)
!1113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1114)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1109, file: !108, line: 838, size: 128, elements: !1115)
!1115 = !{!1116, !1117}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1114, file: !108, line: 838, baseType: !169, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1114, file: !108, line: 838, baseType: !169, size: 64, offset: 64)
!1118 = !DILocalVariable(name: "node", scope: !1109, file: !108, line: 848, type: !169)
!1119 = !DILocalVariable(name: "map_prog", scope: !1109, file: !108, line: 849, type: !1120)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1121 = !DILocalVariable(name: "lc_messages", scope: !1109, file: !108, line: 861, type: !169)
!1122 = !DILocalVariable(name: "url_program", scope: !1109, file: !108, line: 874, type: !169)
!1123 = !DILocation(line: 0, scope: !1109, inlinedAt: !1124)
!1124 = distinct !DILocation(line: 180, column: 7, scope: !1080)
!1125 = !{}
!1126 = !DILocation(line: 857, column: 3, scope: !1109, inlinedAt: !1124)
!1127 = !DILocation(line: 861, column: 29, scope: !1109, inlinedAt: !1124)
!1128 = !DILocation(line: 862, column: 7, scope: !1129, inlinedAt: !1124)
!1129 = distinct !DILexicalBlock(scope: !1109, file: !108, line: 862, column: 7)
!1130 = !DILocation(line: 862, column: 19, scope: !1129, inlinedAt: !1124)
!1131 = !DILocation(line: 862, column: 22, scope: !1129, inlinedAt: !1124)
!1132 = !DILocation(line: 862, column: 7, scope: !1109, inlinedAt: !1124)
!1133 = !DILocation(line: 868, column: 7, scope: !1134, inlinedAt: !1124)
!1134 = distinct !DILexicalBlock(scope: !1129, file: !108, line: 863, column: 5)
!1135 = !DILocation(line: 870, column: 5, scope: !1134, inlinedAt: !1124)
!1136 = !DILocation(line: 875, column: 3, scope: !1109, inlinedAt: !1124)
!1137 = !DILocation(line: 877, column: 3, scope: !1109, inlinedAt: !1124)
!1138 = !DILocation(line: 182, column: 3, scope: !1066)
!1139 = !DISubprogram(name: "dcgettext", scope: !1140, file: !1140, line: 51, type: !1141, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1140 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!163, !169, !169, !122}
!1143 = !DISubprogram(name: "__fprintf_chk", scope: !1144, file: !1144, line: 93, type: !1145, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1144 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!122, !1147, !122, !1148, null}
!1147 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !326)
!1148 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !169)
!1149 = !DISubprogram(name: "__printf_chk", scope: !1144, file: !1144, line: 95, type: !1150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!122, !122, !1148, null}
!1152 = !DISubprogram(name: "fputs_unlocked", scope: !679, file: !679, line: 691, type: !1153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!122, !1148, !1147}
!1155 = !DILocation(line: 0, scope: !304)
!1156 = !DILocation(line: 581, column: 7, scope: !312)
!1157 = !{!1158, !1158, i64 0}
!1158 = !{!"int", !1077, i64 0}
!1159 = !DILocation(line: 581, column: 19, scope: !312)
!1160 = !DILocation(line: 581, column: 7, scope: !304)
!1161 = !DILocation(line: 585, column: 26, scope: !311)
!1162 = !DILocation(line: 0, scope: !311)
!1163 = !DILocation(line: 586, column: 23, scope: !311)
!1164 = !DILocation(line: 586, column: 28, scope: !311)
!1165 = !DILocation(line: 586, column: 32, scope: !311)
!1166 = !{!1077, !1077, i64 0}
!1167 = !DILocation(line: 586, column: 38, scope: !311)
!1168 = !DILocalVariable(name: "__s1", arg: 1, scope: !1169, file: !1170, line: 1359, type: !169)
!1169 = distinct !DISubprogram(name: "streq", scope: !1170, file: !1170, line: 1359, type: !1171, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1173)
!1170 = !DIFile(filename: "./lib/string.h", directory: "/src")
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!231, !169, !169}
!1173 = !{!1168, !1174}
!1174 = !DILocalVariable(name: "__s2", arg: 2, scope: !1169, file: !1170, line: 1359, type: !169)
!1175 = !DILocation(line: 0, scope: !1169, inlinedAt: !1176)
!1176 = distinct !DILocation(line: 586, column: 41, scope: !311)
!1177 = !DILocation(line: 1361, column: 11, scope: !1169, inlinedAt: !1176)
!1178 = !DILocation(line: 1361, column: 10, scope: !1169, inlinedAt: !1176)
!1179 = !DILocation(line: 586, column: 19, scope: !311)
!1180 = !DILocation(line: 587, column: 5, scope: !311)
!1181 = !DILocation(line: 588, column: 7, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !304, file: !108, line: 588, column: 7)
!1183 = !DILocation(line: 588, column: 7, scope: !304)
!1184 = !DILocation(line: 590, column: 7, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1182, file: !108, line: 589, column: 5)
!1186 = !DILocation(line: 591, column: 7, scope: !1185)
!1187 = !DILocation(line: 595, column: 37, scope: !304)
!1188 = !DILocation(line: 595, column: 35, scope: !304)
!1189 = !DILocation(line: 596, column: 29, scope: !304)
!1190 = !DILocation(line: 597, column: 8, scope: !319)
!1191 = !DILocation(line: 597, column: 7, scope: !304)
!1192 = !DILocation(line: 604, column: 24, scope: !318)
!1193 = !DILocation(line: 604, column: 12, scope: !319)
!1194 = !DILocation(line: 0, scope: !317)
!1195 = !DILocation(line: 610, column: 16, scope: !317)
!1196 = !DILocation(line: 610, column: 7, scope: !317)
!1197 = !DILocation(line: 611, column: 21, scope: !317)
!1198 = !{!1199, !1199, i64 0}
!1199 = !{!"short", !1077, i64 0}
!1200 = !DILocation(line: 611, column: 19, scope: !317)
!1201 = !DILocation(line: 611, column: 16, scope: !317)
!1202 = !DILocation(line: 610, column: 30, scope: !317)
!1203 = distinct !{!1203, !1196, !1197, !1204}
!1204 = !{!"llvm.loop.mustprogress"}
!1205 = !DILocation(line: 612, column: 18, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !317, file: !108, line: 612, column: 11)
!1207 = !DILocation(line: 612, column: 11, scope: !317)
!1208 = !DILocation(line: 620, column: 23, scope: !304)
!1209 = !DILocation(line: 625, column: 39, scope: !304)
!1210 = !DILocation(line: 626, column: 3, scope: !304)
!1211 = !DILocation(line: 626, column: 10, scope: !304)
!1212 = !DILocation(line: 626, column: 21, scope: !304)
!1213 = !DILocation(line: 628, column: 44, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1215, file: !108, line: 628, column: 11)
!1215 = distinct !DILexicalBlock(scope: !304, file: !108, line: 627, column: 5)
!1216 = !DILocation(line: 628, column: 32, scope: !1214)
!1217 = !DILocation(line: 628, column: 49, scope: !1214)
!1218 = !DILocation(line: 628, column: 11, scope: !1215)
!1219 = !DILocation(line: 630, column: 11, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1215, file: !108, line: 630, column: 11)
!1221 = !DILocation(line: 630, column: 11, scope: !1215)
!1222 = !DILocation(line: 632, column: 26, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1224, file: !108, line: 632, column: 15)
!1224 = distinct !DILexicalBlock(scope: !1220, file: !108, line: 631, column: 9)
!1225 = !DILocation(line: 632, column: 34, scope: !1223)
!1226 = !DILocation(line: 632, column: 37, scope: !1223)
!1227 = !DILocation(line: 632, column: 15, scope: !1224)
!1228 = !DILocation(line: 640, column: 16, scope: !1215)
!1229 = distinct !{!1229, !1210, !1230, !1204}
!1230 = !DILocation(line: 641, column: 5, scope: !304)
!1231 = !DILocation(line: 644, column: 3, scope: !304)
!1232 = !DILocation(line: 0, scope: !1169, inlinedAt: !1233)
!1233 = distinct !DILocation(line: 648, column: 31, scope: !304)
!1234 = !DILocation(line: 0, scope: !1169, inlinedAt: !1235)
!1235 = distinct !DILocation(line: 649, column: 31, scope: !304)
!1236 = !DILocation(line: 0, scope: !1169, inlinedAt: !1237)
!1237 = distinct !DILocation(line: 650, column: 31, scope: !304)
!1238 = !DILocation(line: 0, scope: !1169, inlinedAt: !1239)
!1239 = distinct !DILocation(line: 651, column: 31, scope: !304)
!1240 = !DILocation(line: 0, scope: !1169, inlinedAt: !1241)
!1241 = distinct !DILocation(line: 652, column: 31, scope: !304)
!1242 = !DILocation(line: 0, scope: !1169, inlinedAt: !1243)
!1243 = distinct !DILocation(line: 653, column: 31, scope: !304)
!1244 = !DILocation(line: 0, scope: !1169, inlinedAt: !1245)
!1245 = distinct !DILocation(line: 654, column: 31, scope: !304)
!1246 = !DILocation(line: 0, scope: !1169, inlinedAt: !1247)
!1247 = distinct !DILocation(line: 655, column: 31, scope: !304)
!1248 = !DILocation(line: 0, scope: !1169, inlinedAt: !1249)
!1249 = distinct !DILocation(line: 656, column: 31, scope: !304)
!1250 = !DILocation(line: 0, scope: !1169, inlinedAt: !1251)
!1251 = distinct !DILocation(line: 657, column: 31, scope: !304)
!1252 = !DILocation(line: 663, column: 7, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !304, file: !108, line: 663, column: 7)
!1254 = !DILocation(line: 664, column: 7, scope: !1253)
!1255 = !DILocation(line: 664, column: 10, scope: !1253)
!1256 = !DILocation(line: 663, column: 7, scope: !304)
!1257 = !DILocation(line: 669, column: 7, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1253, file: !108, line: 665, column: 5)
!1259 = !DILocation(line: 671, column: 5, scope: !1258)
!1260 = !DILocation(line: 676, column: 7, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1253, file: !108, line: 673, column: 5)
!1262 = !DILocation(line: 679, column: 3, scope: !304)
!1263 = !DILocation(line: 683, column: 3, scope: !304)
!1264 = !DILocation(line: 686, column: 3, scope: !304)
!1265 = !DILocation(line: 688, column: 3, scope: !304)
!1266 = !DILocation(line: 691, column: 3, scope: !304)
!1267 = !DILocation(line: 695, column: 3, scope: !304)
!1268 = !DILocation(line: 696, column: 1, scope: !304)
!1269 = !DISubprogram(name: "setlocale", scope: !1270, file: !1270, line: 122, type: !1271, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1270 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1271 = !DISubroutineType(types: !1272)
!1272 = !{!163, !122, !169}
!1273 = !DISubprogram(name: "strncmp", scope: !1274, file: !1274, line: 159, type: !1275, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1274 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!122, !169, !169, !166}
!1277 = !DISubprogram(name: "exit", scope: !1278, file: !1278, line: 624, type: !178, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1278 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1279 = !DISubprogram(name: "getenv", scope: !1278, file: !1278, line: 641, type: !1280, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{!163, !169}
!1282 = !DISubprogram(name: "strcmp", scope: !1274, file: !1274, line: 156, type: !1283, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{!122, !169, !169}
!1285 = !DISubprogram(name: "strspn", scope: !1274, file: !1274, line: 297, type: !1286, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1286 = !DISubroutineType(types: !1287)
!1287 = !{!168, !169, !169}
!1288 = !DISubprogram(name: "strchr", scope: !1274, file: !1274, line: 246, type: !1289, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{!163, !169, !122}
!1291 = !DISubprogram(name: "__ctype_b_loc", scope: !141, file: !141, line: 79, type: !1292, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!1294}
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!1297 = !DISubprogram(name: "strcspn", scope: !1274, file: !1274, line: 293, type: !1286, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1298 = !DISubprogram(name: "fwrite_unlocked", scope: !679, file: !679, line: 704, type: !1299, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{!166, !1301, !166, !166, !1147}
!1301 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1302)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1304 = distinct !DIAssignID()
!1305 = distinct !DIAssignID()
!1306 = distinct !DIAssignID()
!1307 = distinct !DIAssignID()
!1308 = distinct !DIAssignID()
!1309 = distinct !DIAssignID()
!1310 = distinct !DIAssignID()
!1311 = distinct !DIAssignID()
!1312 = !DILocation(line: 0, scope: !223)
!1313 = !DILocation(line: 772, column: 21, scope: !223)
!1314 = !DILocation(line: 772, column: 3, scope: !223)
!1315 = !DILocation(line: 773, column: 3, scope: !223)
!1316 = !DILocation(line: 774, column: 3, scope: !223)
!1317 = !DILocation(line: 775, column: 3, scope: !223)
!1318 = !DILocalVariable(name: "status", arg: 1, scope: !1319, file: !108, line: 102, type: !122)
!1319 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !108, file: !108, line: 102, type: !178, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1320)
!1320 = !{!1318}
!1321 = !DILocation(line: 0, scope: !1319, inlinedAt: !1322)
!1322 = distinct !DILocation(line: 777, column: 3, scope: !223)
!1323 = !DILocation(line: 105, column: 18, scope: !1324, inlinedAt: !1322)
!1324 = distinct !DILexicalBlock(scope: !1319, file: !108, line: 104, column: 7)
!1325 = !DILocation(line: 778, column: 3, scope: !223)
!1326 = !DILocation(line: 755, column: 13, scope: !1327, inlinedAt: !1331)
!1327 = distinct !DISubprogram(name: "initialize_signals", scope: !2, file: !2, line: 753, type: !716, scopeLine: 754, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1328)
!1328 = !{!1329}
!1329 = !DILocalVariable(name: "i", scope: !1330, file: !2, line: 757, type: !122)
!1330 = distinct !DILexicalBlock(scope: !1327, file: !2, line: 757, column: 3)
!1331 = distinct !DILocation(line: 780, column: 3, scope: !223)
!1332 = !DILocation(line: 755, column: 11, scope: !1327, inlinedAt: !1331)
!1333 = !DILocation(line: 0, scope: !1330, inlinedAt: !1331)
!1334 = !DILocation(line: 758, column: 16, scope: !1335, inlinedAt: !1331)
!1335 = distinct !DILexicalBlock(scope: !1330, file: !2, line: 757, column: 3)
!1336 = !DILocation(line: 783, column: 3, scope: !223)
!1337 = !DILocation(line: 769, column: 9, scope: !223)
!1338 = !DILocation(line: 768, column: 15, scope: !223)
!1339 = !DILocation(line: 783, column: 18, scope: !223)
!1340 = distinct !{!1340, !1336, !1341, !1204}
!1341 = !DILocation(line: 835, column: 5, scope: !223)
!1342 = !DILocation(line: 788, column: 19, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1344, file: !2, line: 786, column: 9)
!1344 = distinct !DILexicalBlock(scope: !223, file: !2, line: 784, column: 5)
!1345 = !DILocation(line: 789, column: 11, scope: !1343)
!1346 = !DILocation(line: 794, column: 29, scope: !1343)
!1347 = !DILocalVariable(name: "var", arg: 1, scope: !1348, file: !2, line: 186, type: !169)
!1348 = distinct !DISubprogram(name: "append_unset_var", scope: !2, file: !2, line: 186, type: !1102, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1349)
!1349 = !{!1347}
!1350 = !DILocation(line: 0, scope: !1348, inlinedAt: !1351)
!1351 = distinct !DILocation(line: 794, column: 11, scope: !1343)
!1352 = !DILocation(line: 188, column: 7, scope: !1353, inlinedAt: !1351)
!1353 = distinct !DILexicalBlock(scope: !1348, file: !2, line: 188, column: 7)
!1354 = !{!1355, !1355, i64 0}
!1355 = !{!"long", !1077, i64 0}
!1356 = !DILocation(line: 188, column: 22, scope: !1353, inlinedAt: !1351)
!1357 = !DILocation(line: 188, column: 19, scope: !1353, inlinedAt: !1351)
!1358 = !DILocation(line: 190, column: 3, scope: !1348, inlinedAt: !1351)
!1359 = !DILocation(line: 188, column: 7, scope: !1348, inlinedAt: !1351)
!1360 = !DILocation(line: 189, column: 14, scope: !1353, inlinedAt: !1351)
!1361 = !DILocation(line: 189, column: 12, scope: !1353, inlinedAt: !1351)
!1362 = !DILocation(line: 190, column: 21, scope: !1348, inlinedAt: !1351)
!1363 = !DILocation(line: 189, column: 5, scope: !1353, inlinedAt: !1351)
!1364 = !DILocation(line: 190, column: 25, scope: !1348, inlinedAt: !1351)
!1365 = !DILocation(line: 795, column: 11, scope: !1343)
!1366 = !DILocation(line: 797, column: 21, scope: !1343)
!1367 = !DILocation(line: 798, column: 11, scope: !1343)
!1368 = !DILocation(line: 801, column: 11, scope: !1343)
!1369 = !DILocation(line: 803, column: 39, scope: !1343)
!1370 = !DILocation(line: 803, column: 11, scope: !1343)
!1371 = !DILocation(line: 804, column: 38, scope: !1343)
!1372 = !DILocation(line: 804, column: 11, scope: !1343)
!1373 = !DILocation(line: 805, column: 11, scope: !1343)
!1374 = !DILocation(line: 807, column: 39, scope: !1343)
!1375 = !DILocation(line: 807, column: 11, scope: !1343)
!1376 = !DILocation(line: 808, column: 11, scope: !1343)
!1377 = !DILocation(line: 810, column: 38, scope: !1343)
!1378 = !DILocation(line: 810, column: 11, scope: !1343)
!1379 = !DILocation(line: 811, column: 11, scope: !1343)
!1380 = !DILocation(line: 813, column: 34, scope: !1343)
!1381 = !DILocation(line: 814, column: 11, scope: !1343)
!1382 = !DILocation(line: 816, column: 20, scope: !1343)
!1383 = !DILocation(line: 817, column: 11, scope: !1343)
!1384 = !DILocation(line: 819, column: 31, scope: !1343)
!1385 = !DILocalVariable(name: "str", arg: 1, scope: !1386, file: !2, line: 526, type: !169)
!1386 = distinct !DISubprogram(name: "parse_split_string", scope: !2, file: !2, line: 526, type: !1387, scopeLine: 528, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1390)
!1387 = !DISubroutineType(types: !1388)
!1388 = !{null, !169, !524, !524, !1389}
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!1390 = !{!1385, !1391, !1392, !1393, !1394, !1395, !1396, !1397}
!1391 = !DILocalVariable(name: "orig_optind", arg: 2, scope: !1386, file: !2, line: 526, type: !524)
!1392 = !DILocalVariable(name: "orig_argc", arg: 3, scope: !1386, file: !2, line: 527, type: !524)
!1393 = !DILocalVariable(name: "orig_argv", arg: 4, scope: !1386, file: !2, line: 527, type: !1389)
!1394 = !DILocalVariable(name: "extra_argc", scope: !1386, file: !2, line: 529, type: !122)
!1395 = !DILocalVariable(name: "newargc", scope: !1386, file: !2, line: 529, type: !122)
!1396 = !DILocalVariable(name: "newargv", scope: !1386, file: !2, line: 530, type: !226)
!1397 = !DILocalVariable(name: "i", scope: !1398, file: !2, line: 540, type: !122)
!1398 = distinct !DILexicalBlock(scope: !1399, file: !2, line: 540, column: 7)
!1399 = distinct !DILexicalBlock(scope: !1400, file: !2, line: 537, column: 5)
!1400 = distinct !DILexicalBlock(scope: !1386, file: !2, line: 536, column: 7)
!1401 = !DILocation(line: 0, scope: !1386, inlinedAt: !1402)
!1402 = distinct !DILocation(line: 819, column: 11, scope: !1343)
!1403 = !DILocation(line: 529, column: 33, scope: !1386, inlinedAt: !1402)
!1404 = !DILocation(line: 529, column: 31, scope: !1386, inlinedAt: !1402)
!1405 = !DILocalVariable(name: "ss", scope: !1406, file: !2, line: 369, type: !1422)
!1406 = distinct !DISubprogram(name: "build_argv", scope: !2, file: !2, line: 366, type: !1407, scopeLine: 367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1409)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{!226, !169, !122, !524}
!1409 = !{!1410, !1411, !1412, !1413, !1414, !1405, !1415, !1417, !1420, !1421}
!1410 = !DILocalVariable(name: "str", arg: 1, scope: !1406, file: !2, line: 366, type: !169)
!1411 = !DILocalVariable(name: "extra_argc", arg: 2, scope: !1406, file: !2, line: 366, type: !122)
!1412 = !DILocalVariable(name: "argc", arg: 3, scope: !1406, file: !2, line: 366, type: !524)
!1413 = !DILocalVariable(name: "dq", scope: !1406, file: !2, line: 368, type: !231)
!1414 = !DILocalVariable(name: "sq", scope: !1406, file: !2, line: 368, type: !231)
!1415 = !DILocalVariable(name: "newc", scope: !1416, file: !2, line: 382, type: !4)
!1416 = distinct !DILexicalBlock(scope: !1406, file: !2, line: 381, column: 5)
!1417 = !DILocalVariable(name: "n", scope: !1418, file: !2, line: 468, type: !163)
!1418 = distinct !DILexicalBlock(scope: !1419, file: !2, line: 467, column: 11)
!1419 = distinct !DILexicalBlock(scope: !1416, file: !2, line: 385, column: 9)
!1420 = !DILocalVariable(name: "v", scope: !1418, file: !2, line: 474, type: !163)
!1421 = !DILabel(scope: !1406, name: "eos", file: !2, line: 498)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "splitbuf", file: !2, line: 256, size: 256, elements: !1423)
!1423 = !{!1424, !1425, !1426, !1427, !1428}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1422, file: !2, line: 275, baseType: !226, size: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !1422, file: !2, line: 276, baseType: !122, size: 32, offset: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "half_alloc", scope: !1422, file: !2, line: 277, baseType: !528, size: 64, offset: 128)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "extra_argc", scope: !1422, file: !2, line: 280, baseType: !122, size: 32, offset: 192)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "sep", scope: !1422, file: !2, line: 284, baseType: !231, size: 8, offset: 224)
!1429 = !DILocation(line: 0, scope: !1406, inlinedAt: !1430)
!1430 = distinct !DILocation(line: 530, column: 20, scope: !1386, inlinedAt: !1402)
!1431 = !DILocation(line: 369, column: 3, scope: !1406, inlinedAt: !1430)
!1432 = !DILocation(line: 370, column: 34, scope: !1406, inlinedAt: !1430)
!1433 = !DILocation(line: 370, column: 23, scope: !1406, inlinedAt: !1430)
!1434 = !DILocation(line: 370, column: 13, scope: !1406, inlinedAt: !1430)
!1435 = !DILocation(line: 370, column: 11, scope: !1406, inlinedAt: !1430)
!1436 = !{!1437, !1076, i64 0}
!1437 = !{!"splitbuf", !1076, i64 0, !1158, i64 8, !1355, i64 16, !1158, i64 24, !1438, i64 28}
!1438 = !{!"_Bool", !1077, i64 0}
!1439 = distinct !DIAssignID()
!1440 = !DILocation(line: 371, column: 11, scope: !1406, inlinedAt: !1430)
!1441 = !{!1437, !1158, i64 8}
!1442 = distinct !DIAssignID()
!1443 = !DILocation(line: 372, column: 17, scope: !1406, inlinedAt: !1430)
!1444 = !{!1437, !1355, i64 16}
!1445 = distinct !DIAssignID()
!1446 = !DILocation(line: 373, column: 17, scope: !1406, inlinedAt: !1430)
!1447 = !{!1437, !1158, i64 24}
!1448 = distinct !DIAssignID()
!1449 = !DILocation(line: 374, column: 10, scope: !1406, inlinedAt: !1430)
!1450 = !{!1437, !1438, i64 28}
!1451 = distinct !DIAssignID()
!1452 = !DILocation(line: 375, column: 3, scope: !1406, inlinedAt: !1430)
!1453 = !DILocation(line: 375, column: 20, scope: !1406, inlinedAt: !1430)
!1454 = !DILocation(line: 380, column: 3, scope: !1406, inlinedAt: !1430)
!1455 = !DILocation(line: 380, column: 10, scope: !1406, inlinedAt: !1430)
!1456 = !DILocation(line: 387, column: 15, scope: !1419, inlinedAt: !1430)
!1457 = !DILocation(line: 389, column: 16, scope: !1419, inlinedAt: !1430)
!1458 = !DILocation(line: 390, column: 11, scope: !1419, inlinedAt: !1430)
!1459 = !DILocation(line: 391, column: 11, scope: !1419, inlinedAt: !1430)
!1460 = !DILocation(line: 392, column: 11, scope: !1419, inlinedAt: !1430)
!1461 = !DILocation(line: 395, column: 15, scope: !1419, inlinedAt: !1430)
!1462 = !DILocation(line: 397, column: 16, scope: !1419, inlinedAt: !1430)
!1463 = !DILocation(line: 398, column: 11, scope: !1419, inlinedAt: !1430)
!1464 = !DILocation(line: 399, column: 11, scope: !1419, inlinedAt: !1430)
!1465 = !DILocation(line: 400, column: 11, scope: !1419, inlinedAt: !1430)
!1466 = !DILocation(line: 404, column: 18, scope: !1467, inlinedAt: !1430)
!1467 = distinct !DILexicalBlock(scope: !1419, file: !2, line: 404, column: 15)
!1468 = !DILocation(line: 406, column: 18, scope: !1419, inlinedAt: !1430)
!1469 = distinct !DIAssignID()
!1470 = !DILocation(line: 407, column: 18, scope: !1419, inlinedAt: !1430)
!1471 = !DILocation(line: 407, column: 15, scope: !1419, inlinedAt: !1430)
!1472 = !DILocation(line: 408, column: 11, scope: !1419, inlinedAt: !1430)
!1473 = !DILocation(line: 411, column: 19, scope: !1474, inlinedAt: !1430)
!1474 = distinct !DILexicalBlock(scope: !1419, file: !2, line: 411, column: 15)
!1475 = !{i8 0, i8 2}
!1476 = !DILocation(line: 411, column: 15, scope: !1419, inlinedAt: !1430)
!1477 = !DILocation(line: 0, scope: !1419, inlinedAt: !1430)
!1478 = !DILocation(line: 418, column: 18, scope: !1479, inlinedAt: !1430)
!1479 = distinct !DILexicalBlock(scope: !1419, file: !2, line: 418, column: 15)
!1480 = !DILocation(line: 418, column: 36, scope: !1479, inlinedAt: !1430)
!1481 = !DILocation(line: 0, scope: !1416, inlinedAt: !1430)
!1482 = !DILocation(line: 423, column: 11, scope: !1419, inlinedAt: !1430)
!1483 = !DILocation(line: 430, column: 19, scope: !1484, inlinedAt: !1430)
!1484 = distinct !DILexicalBlock(scope: !1419, file: !2, line: 424, column: 13)
!1485 = !DILocation(line: 432, column: 19, scope: !1486, inlinedAt: !1430)
!1486 = distinct !DILexicalBlock(scope: !1487, file: !2, line: 431, column: 17)
!1487 = distinct !DILexicalBlock(scope: !1484, file: !2, line: 430, column: 19)
!1488 = !DILocation(line: 433, column: 26, scope: !1486, inlinedAt: !1430)
!1489 = distinct !DIAssignID()
!1490 = !DILocation(line: 434, column: 19, scope: !1486, inlinedAt: !1430)
!1491 = distinct !{!1491, !1454, !1492, !1204}
!1492 = !DILocation(line: 493, column: 5, scope: !1406, inlinedAt: !1430)
!1493 = !DILocation(line: 440, column: 19, scope: !1484, inlinedAt: !1430)
!1494 = !DILocation(line: 441, column: 17, scope: !1495, inlinedAt: !1430)
!1495 = distinct !DILexicalBlock(scope: !1484, file: !2, line: 440, column: 19)
!1496 = !DILocation(line: 446, column: 36, scope: !1484, inlinedAt: !1430)
!1497 = !DILocation(line: 447, column: 36, scope: !1484, inlinedAt: !1430)
!1498 = !DILocation(line: 448, column: 36, scope: !1484, inlinedAt: !1430)
!1499 = !DILocation(line: 449, column: 36, scope: !1484, inlinedAt: !1430)
!1500 = !DILocation(line: 452, column: 15, scope: !1484, inlinedAt: !1430)
!1501 = !DILocation(line: 423, column: 19, scope: !1419, inlinedAt: !1430)
!1502 = !DILocation(line: 456, column: 15, scope: !1484, inlinedAt: !1430)
!1503 = !DILocation(line: 463, column: 15, scope: !1419, inlinedAt: !1430)
!1504 = !DILocalVariable(name: "str", arg: 1, scope: !1505, file: !2, line: 233, type: !169)
!1505 = distinct !DISubprogram(name: "extract_varname", scope: !2, file: !2, line: 233, type: !1280, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1506)
!1506 = !{!1504, !1507, !1508}
!1507 = !DILocalVariable(name: "p", scope: !1505, file: !2, line: 235, type: !169)
!1508 = !DILocalVariable(name: "i", scope: !1505, file: !2, line: 241, type: !528)
!1509 = !DILocation(line: 0, scope: !1505, inlinedAt: !1510)
!1510 = distinct !DILocation(line: 468, column: 23, scope: !1418, inlinedAt: !1430)
!1511 = !DILocalVariable(name: "str", arg: 1, scope: !1512, file: !2, line: 213, type: !169)
!1512 = distinct !DISubprogram(name: "scan_varname", scope: !2, file: !2, line: 213, type: !1513, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1515)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{!169, !169}
!1515 = !{!1511, !1516}
!1516 = !DILocalVariable(name: "end", scope: !1517, file: !2, line: 217, type: !169)
!1517 = distinct !DILexicalBlock(scope: !1518, file: !2, line: 216, column: 5)
!1518 = distinct !DILexicalBlock(scope: !1512, file: !2, line: 215, column: 7)
!1519 = !DILocation(line: 0, scope: !1512, inlinedAt: !1520)
!1520 = distinct !DILocation(line: 235, column: 19, scope: !1505, inlinedAt: !1510)
!1521 = !DILocation(line: 215, column: 7, scope: !1518, inlinedAt: !1520)
!1522 = !DILocation(line: 215, column: 14, scope: !1518, inlinedAt: !1520)
!1523 = !DILocation(line: 215, column: 21, scope: !1518, inlinedAt: !1520)
!1524 = !DILocation(line: 215, column: 36, scope: !1518, inlinedAt: !1520)
!1525 = !DILocalVariable(name: "c", arg: 1, scope: !1526, file: !1527, line: 183, type: !122)
!1526 = distinct !DISubprogram(name: "c_isalpha", scope: !1527, file: !1527, line: 183, type: !1528, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1530)
!1527 = !DIFile(filename: "./lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!1528 = !DISubroutineType(types: !1529)
!1529 = !{!231, !122}
!1530 = !{!1525}
!1531 = !DILocation(line: 0, scope: !1526, inlinedAt: !1532)
!1532 = distinct !DILocation(line: 215, column: 25, scope: !1518, inlinedAt: !1520)
!1533 = !DILocation(line: 185, column: 3, scope: !1526, inlinedAt: !1532)
!1534 = !DILocation(line: 217, column: 29, scope: !1517, inlinedAt: !1520)
!1535 = !DILocation(line: 0, scope: !1517, inlinedAt: !1520)
!1536 = !DILocation(line: 218, column: 7, scope: !1517, inlinedAt: !1520)
!1537 = !DILocation(line: 218, column: 25, scope: !1517, inlinedAt: !1520)
!1538 = !DILocation(line: 218, column: 14, scope: !1517, inlinedAt: !1520)
!1539 = !DILocation(line: 218, column: 31, scope: !1517, inlinedAt: !1520)
!1540 = !DILocation(line: 218, column: 34, scope: !1517, inlinedAt: !1520)
!1541 = !DILocation(line: 219, column: 9, scope: !1517, inlinedAt: !1520)
!1542 = distinct !{!1542, !1536, !1543, !1204}
!1543 = !DILocation(line: 219, column: 11, scope: !1517, inlinedAt: !1520)
!1544 = !DILocation(line: 241, column: 15, scope: !1505, inlinedAt: !1510)
!1545 = !DILocation(line: 241, column: 21, scope: !1505, inlinedAt: !1510)
!1546 = !DILocation(line: 243, column: 12, scope: !1547, inlinedAt: !1510)
!1547 = distinct !DILexicalBlock(scope: !1505, file: !2, line: 243, column: 7)
!1548 = !DILocation(line: 243, column: 9, scope: !1547, inlinedAt: !1510)
!1549 = !DILocation(line: 249, column: 11, scope: !1505, inlinedAt: !1510)
!1550 = !DILocation(line: 243, column: 7, scope: !1505, inlinedAt: !1510)
!1551 = !DILocation(line: 245, column: 7, scope: !1552, inlinedAt: !1510)
!1552 = distinct !DILexicalBlock(scope: !1547, file: !2, line: 244, column: 5)
!1553 = !DILocation(line: 246, column: 48, scope: !1552, inlinedAt: !1510)
!1554 = !DILocation(line: 246, column: 46, scope: !1552, inlinedAt: !1510)
!1555 = !DILocation(line: 246, column: 17, scope: !1552, inlinedAt: !1510)
!1556 = !DILocation(line: 246, column: 15, scope: !1552, inlinedAt: !1510)
!1557 = !DILocation(line: 247, column: 5, scope: !1552, inlinedAt: !1510)
!1558 = !DILocation(line: 470, column: 15, scope: !1559, inlinedAt: !1430)
!1559 = distinct !DILexicalBlock(scope: !1418, file: !2, line: 469, column: 17)
!1560 = !DILocation(line: 0, scope: !1418, inlinedAt: !1430)
!1561 = !DILocalVariable(name: "__dest", arg: 1, scope: !1562, file: !1563, line: 26, type: !1566)
!1562 = distinct !DISubprogram(name: "memcpy", scope: !1563, file: !1563, line: 26, type: !1564, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1567)
!1563 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1564 = !DISubroutineType(types: !1565)
!1565 = !{!164, !1566, !1301, !166}
!1566 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !164)
!1567 = !{!1561, !1568, !1569}
!1568 = !DILocalVariable(name: "__src", arg: 2, scope: !1562, file: !1563, line: 26, type: !1301)
!1569 = !DILocalVariable(name: "__len", arg: 3, scope: !1562, file: !1563, line: 26, type: !166)
!1570 = !DILocation(line: 0, scope: !1562, inlinedAt: !1571)
!1571 = distinct !DILocation(line: 249, column: 3, scope: !1505, inlinedAt: !1510)
!1572 = !DILocation(line: 29, column: 10, scope: !1562, inlinedAt: !1571)
!1573 = !DILocation(line: 250, column: 3, scope: !1505, inlinedAt: !1510)
!1574 = !DILocation(line: 250, column: 14, scope: !1505, inlinedAt: !1510)
!1575 = !DILocation(line: 474, column: 23, scope: !1418, inlinedAt: !1430)
!1576 = !DILocation(line: 475, column: 17, scope: !1577, inlinedAt: !1430)
!1577 = distinct !DILexicalBlock(scope: !1418, file: !2, line: 475, column: 17)
!1578 = !DILocation(line: 475, column: 17, scope: !1418, inlinedAt: !1430)
!1579 = !DILocation(line: 477, column: 17, scope: !1580, inlinedAt: !1430)
!1580 = distinct !DILexicalBlock(scope: !1577, file: !2, line: 476, column: 15)
!1581 = !DILocation(line: 478, column: 17, scope: !1582, inlinedAt: !1430)
!1582 = distinct !DILexicalBlock(scope: !1583, file: !2, line: 478, column: 17)
!1583 = distinct !DILexicalBlock(scope: !1580, file: !2, line: 478, column: 17)
!1584 = !DILocation(line: 478, column: 17, scope: !1583, inlinedAt: !1430)
!1585 = !DILocation(line: 479, column: 24, scope: !1586, inlinedAt: !1430)
!1586 = distinct !DILexicalBlock(scope: !1587, file: !2, line: 479, column: 17)
!1587 = distinct !DILexicalBlock(scope: !1580, file: !2, line: 479, column: 17)
!1588 = !DILocation(line: 479, column: 17, scope: !1587, inlinedAt: !1430)
!1589 = !DILocation(line: 303, column: 48, scope: !1590, inlinedAt: !1598)
!1590 = distinct !DISubprogram(name: "splitbuf_append_byte", scope: !2, file: !2, line: 301, type: !1591, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1594)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{null, !1593, !4}
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1594 = !{!1595, !1596, !1597}
!1595 = !DILocalVariable(name: "ss", arg: 1, scope: !1590, file: !2, line: 301, type: !1593)
!1596 = !DILocalVariable(name: "c", arg: 2, scope: !1590, file: !2, line: 301, type: !4)
!1597 = !DILocalVariable(name: "string_bytes", scope: !1590, file: !2, line: 303, type: !528)
!1598 = distinct !DILocation(line: 480, column: 19, scope: !1586, inlinedAt: !1430)
!1599 = !DILocation(line: 0, scope: !1590, inlinedAt: !1598)
!1600 = !DILocation(line: 303, column: 39, scope: !1590, inlinedAt: !1598)
!1601 = !DILocation(line: 303, column: 35, scope: !1590, inlinedAt: !1598)
!1602 = !DILocation(line: 303, column: 24, scope: !1590, inlinedAt: !1598)
!1603 = !DILocation(line: 304, column: 11, scope: !1604, inlinedAt: !1598)
!1604 = distinct !DILexicalBlock(scope: !1590, file: !2, line: 304, column: 7)
!1605 = !DILocation(line: 304, column: 22, scope: !1604, inlinedAt: !1598)
!1606 = !DILocation(line: 304, column: 41, scope: !1604, inlinedAt: !1598)
!1607 = !DILocation(line: 304, column: 7, scope: !1590, inlinedAt: !1598)
!1608 = !DILocalVariable(name: "ss", arg: 1, scope: !1609, file: !2, line: 290, type: !1593)
!1609 = distinct !DISubprogram(name: "splitbuf_grow", scope: !2, file: !2, line: 290, type: !1610, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1612)
!1610 = !DISubroutineType(types: !1611)
!1611 = !{null, !1593}
!1612 = !{!1608, !1613, !1614}
!1613 = !DILocalVariable(name: "old_half_alloc", scope: !1609, file: !2, line: 292, type: !528)
!1614 = !DILocalVariable(name: "string_bytes", scope: !1609, file: !2, line: 293, type: !528)
!1615 = !DILocation(line: 0, scope: !1609, inlinedAt: !1616)
!1616 = distinct !DILocation(line: 305, column: 5, scope: !1604, inlinedAt: !1598)
!1617 = !DILocation(line: 294, column: 14, scope: !1609, inlinedAt: !1616)
!1618 = !DILocation(line: 294, column: 12, scope: !1609, inlinedAt: !1616)
!1619 = distinct !DIAssignID()
!1620 = !DILocation(line: 296, column: 27, scope: !1609, inlinedAt: !1616)
!1621 = !DILocation(line: 296, column: 21, scope: !1609, inlinedAt: !1616)
!1622 = !DILocation(line: 296, column: 48, scope: !1609, inlinedAt: !1616)
!1623 = !DILocalVariable(name: "__dest", arg: 1, scope: !1624, file: !1563, line: 34, type: !164)
!1624 = distinct !DISubprogram(name: "memmove", scope: !1563, file: !1563, line: 34, type: !1625, scopeLine: 35, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1627)
!1625 = !DISubroutineType(types: !1626)
!1626 = !{!164, !164, !1302, !166}
!1627 = !{!1623, !1628, !1629}
!1628 = !DILocalVariable(name: "__src", arg: 2, scope: !1624, file: !1563, line: 34, type: !1302)
!1629 = !DILocalVariable(name: "__len", arg: 3, scope: !1624, file: !1563, line: 34, type: !166)
!1630 = !DILocation(line: 0, scope: !1624, inlinedAt: !1631)
!1631 = distinct !DILocation(line: 296, column: 3, scope: !1609, inlinedAt: !1616)
!1632 = !DILocation(line: 36, column: 10, scope: !1624, inlinedAt: !1631)
!1633 = !DILocation(line: 306, column: 18, scope: !1590, inlinedAt: !1598)
!1634 = !DILocation(line: 306, column: 29, scope: !1590, inlinedAt: !1598)
!1635 = !DILocation(line: 305, column: 5, scope: !1604, inlinedAt: !1598)
!1636 = !DILocation(line: 306, column: 23, scope: !1590, inlinedAt: !1598)
!1637 = !DILocation(line: 306, column: 3, scope: !1590, inlinedAt: !1598)
!1638 = !DILocation(line: 306, column: 56, scope: !1590, inlinedAt: !1598)
!1639 = !DILocation(line: 307, column: 58, scope: !1590, inlinedAt: !1598)
!1640 = !DILocation(line: 307, column: 24, scope: !1590, inlinedAt: !1598)
!1641 = !DILocation(line: 307, column: 7, scope: !1590, inlinedAt: !1598)
!1642 = !DILocation(line: 307, column: 16, scope: !1590, inlinedAt: !1598)
!1643 = !DILocation(line: 307, column: 3, scope: !1590, inlinedAt: !1598)
!1644 = !DILocation(line: 307, column: 22, scope: !1590, inlinedAt: !1598)
!1645 = !DILocation(line: 479, column: 29, scope: !1586, inlinedAt: !1430)
!1646 = distinct !{!1646, !1588, !1647, !1204}
!1647 = !DILocation(line: 480, column: 48, scope: !1587, inlinedAt: !1430)
!1648 = !DILocation(line: 483, column: 15, scope: !1649, inlinedAt: !1430)
!1649 = distinct !DILexicalBlock(scope: !1650, file: !2, line: 483, column: 15)
!1650 = distinct !DILexicalBlock(scope: !1577, file: !2, line: 483, column: 15)
!1651 = !DILocation(line: 483, column: 15, scope: !1650, inlinedAt: !1430)
!1652 = !DILocation(line: 485, column: 19, scope: !1418, inlinedAt: !1430)
!1653 = !DILocation(line: 485, column: 37, scope: !1418, inlinedAt: !1430)
!1654 = !DILocation(line: 490, column: 7, scope: !1416, inlinedAt: !1430)
!1655 = !DILocation(line: 0, scope: !1590, inlinedAt: !1656)
!1656 = distinct !DILocation(line: 491, column: 7, scope: !1416, inlinedAt: !1430)
!1657 = !DILocation(line: 303, column: 39, scope: !1590, inlinedAt: !1656)
!1658 = !DILocation(line: 303, column: 48, scope: !1590, inlinedAt: !1656)
!1659 = !DILocation(line: 303, column: 35, scope: !1590, inlinedAt: !1656)
!1660 = !DILocation(line: 303, column: 24, scope: !1590, inlinedAt: !1656)
!1661 = !DILocation(line: 304, column: 11, scope: !1604, inlinedAt: !1656)
!1662 = !DILocation(line: 304, column: 22, scope: !1604, inlinedAt: !1656)
!1663 = !DILocation(line: 304, column: 41, scope: !1604, inlinedAt: !1656)
!1664 = !DILocation(line: 304, column: 7, scope: !1590, inlinedAt: !1656)
!1665 = !DILocation(line: 0, scope: !1609, inlinedAt: !1666)
!1666 = distinct !DILocation(line: 305, column: 5, scope: !1604, inlinedAt: !1656)
!1667 = !DILocation(line: 294, column: 14, scope: !1609, inlinedAt: !1666)
!1668 = !DILocation(line: 294, column: 12, scope: !1609, inlinedAt: !1666)
!1669 = distinct !DIAssignID()
!1670 = !DILocation(line: 296, column: 27, scope: !1609, inlinedAt: !1666)
!1671 = !DILocation(line: 296, column: 21, scope: !1609, inlinedAt: !1666)
!1672 = !DILocation(line: 296, column: 48, scope: !1609, inlinedAt: !1666)
!1673 = !DILocation(line: 0, scope: !1624, inlinedAt: !1674)
!1674 = distinct !DILocation(line: 296, column: 3, scope: !1609, inlinedAt: !1666)
!1675 = !DILocation(line: 36, column: 10, scope: !1624, inlinedAt: !1674)
!1676 = !DILocation(line: 306, column: 18, scope: !1590, inlinedAt: !1656)
!1677 = !DILocation(line: 306, column: 29, scope: !1590, inlinedAt: !1656)
!1678 = !DILocation(line: 305, column: 5, scope: !1604, inlinedAt: !1656)
!1679 = !DILocation(line: 306, column: 23, scope: !1590, inlinedAt: !1656)
!1680 = !DILocation(line: 306, column: 3, scope: !1590, inlinedAt: !1656)
!1681 = !DILocation(line: 306, column: 56, scope: !1590, inlinedAt: !1656)
!1682 = !DILocation(line: 307, column: 58, scope: !1590, inlinedAt: !1656)
!1683 = !DILocation(line: 307, column: 24, scope: !1590, inlinedAt: !1656)
!1684 = !DILocation(line: 307, column: 7, scope: !1590, inlinedAt: !1656)
!1685 = !DILocation(line: 307, column: 16, scope: !1590, inlinedAt: !1656)
!1686 = !DILocation(line: 307, column: 3, scope: !1590, inlinedAt: !1656)
!1687 = !DILocation(line: 307, column: 22, scope: !1590, inlinedAt: !1656)
!1688 = !DILocation(line: 492, column: 7, scope: !1416, inlinedAt: !1430)
!1689 = !DILocation(line: 495, column: 10, scope: !1690, inlinedAt: !1430)
!1690 = distinct !DILexicalBlock(scope: !1406, file: !2, line: 495, column: 7)
!1691 = !DILocation(line: 496, column: 5, scope: !1690, inlinedAt: !1430)
!1692 = !DILocation(line: 303, column: 39, scope: !1590, inlinedAt: !1693)
!1693 = distinct !DILocation(line: 499, column: 3, scope: !1406, inlinedAt: !1430)
!1694 = !DILocation(line: 498, column: 2, scope: !1406, inlinedAt: !1430)
!1695 = !DILocation(line: 0, scope: !1590, inlinedAt: !1693)
!1696 = !DILocation(line: 303, column: 48, scope: !1590, inlinedAt: !1693)
!1697 = !DILocation(line: 303, column: 35, scope: !1590, inlinedAt: !1693)
!1698 = !DILocation(line: 303, column: 24, scope: !1590, inlinedAt: !1693)
!1699 = !DILocation(line: 304, column: 11, scope: !1604, inlinedAt: !1693)
!1700 = !DILocation(line: 304, column: 22, scope: !1604, inlinedAt: !1693)
!1701 = !DILocation(line: 304, column: 41, scope: !1604, inlinedAt: !1693)
!1702 = !DILocation(line: 304, column: 7, scope: !1590, inlinedAt: !1693)
!1703 = !DILocation(line: 0, scope: !1609, inlinedAt: !1704)
!1704 = distinct !DILocation(line: 305, column: 5, scope: !1604, inlinedAt: !1693)
!1705 = !DILocation(line: 294, column: 14, scope: !1609, inlinedAt: !1704)
!1706 = !DILocation(line: 294, column: 12, scope: !1609, inlinedAt: !1704)
!1707 = distinct !DIAssignID()
!1708 = !DILocation(line: 296, column: 27, scope: !1609, inlinedAt: !1704)
!1709 = !DILocation(line: 296, column: 21, scope: !1609, inlinedAt: !1704)
!1710 = !DILocation(line: 296, column: 48, scope: !1609, inlinedAt: !1704)
!1711 = !DILocation(line: 0, scope: !1624, inlinedAt: !1712)
!1712 = distinct !DILocation(line: 296, column: 3, scope: !1609, inlinedAt: !1704)
!1713 = !DILocation(line: 36, column: 10, scope: !1624, inlinedAt: !1712)
!1714 = !DILocation(line: 306, column: 18, scope: !1590, inlinedAt: !1693)
!1715 = !DILocation(line: 306, column: 29, scope: !1590, inlinedAt: !1693)
!1716 = !DILocation(line: 305, column: 5, scope: !1604, inlinedAt: !1693)
!1717 = !DILocation(line: 306, column: 23, scope: !1590, inlinedAt: !1693)
!1718 = !DILocation(line: 306, column: 3, scope: !1590, inlinedAt: !1693)
!1719 = !DILocation(line: 306, column: 56, scope: !1590, inlinedAt: !1693)
!1720 = !DILocation(line: 307, column: 58, scope: !1590, inlinedAt: !1693)
!1721 = !DILocation(line: 307, column: 24, scope: !1590, inlinedAt: !1693)
!1722 = !DILocation(line: 307, column: 7, scope: !1590, inlinedAt: !1693)
!1723 = !DILocation(line: 307, column: 16, scope: !1590, inlinedAt: !1693)
!1724 = !DILocation(line: 307, column: 3, scope: !1590, inlinedAt: !1693)
!1725 = !DILocation(line: 307, column: 22, scope: !1590, inlinedAt: !1693)
!1726 = !DILocalVariable(name: "ss", arg: 1, scope: !1727, file: !2, line: 330, type: !1593)
!1727 = distinct !DISubprogram(name: "splitbuf_finishup", scope: !2, file: !2, line: 330, type: !1728, scopeLine: 331, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1730)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{!226, !1593}
!1730 = !{!1726, !1731, !1732, !1733, !1734}
!1731 = !DILocalVariable(name: "argc", scope: !1727, file: !2, line: 332, type: !122)
!1732 = !DILocalVariable(name: "argv", scope: !1727, file: !2, line: 333, type: !226)
!1733 = !DILocalVariable(name: "stringbase", scope: !1727, file: !2, line: 334, type: !163)
!1734 = !DILocalVariable(name: "i", scope: !1735, file: !2, line: 335, type: !122)
!1735 = distinct !DILexicalBlock(scope: !1727, file: !2, line: 335, column: 3)
!1736 = !DILocation(line: 0, scope: !1727, inlinedAt: !1737)
!1737 = distinct !DILocation(line: 501, column: 10, scope: !1406, inlinedAt: !1430)
!1738 = !DILocation(line: 333, column: 21, scope: !1727, inlinedAt: !1737)
!1739 = !DILocation(line: 334, column: 47, scope: !1727, inlinedAt: !1737)
!1740 = !DILocation(line: 334, column: 41, scope: !1727, inlinedAt: !1737)
!1741 = !DILocation(line: 0, scope: !1735, inlinedAt: !1737)
!1742 = !DILocation(line: 335, column: 21, scope: !1743, inlinedAt: !1737)
!1743 = distinct !DILexicalBlock(scope: !1735, file: !2, line: 335, column: 3)
!1744 = !DILocation(line: 335, column: 3, scope: !1735, inlinedAt: !1737)
!1745 = !DILocation(line: 502, column: 1, scope: !1406, inlinedAt: !1430)
!1746 = !DILocation(line: 533, column: 14, scope: !1386, inlinedAt: !1402)
!1747 = !DILocation(line: 533, column: 12, scope: !1386, inlinedAt: !1402)
!1748 = !DILocation(line: 536, column: 17, scope: !1400, inlinedAt: !1402)
!1749 = !DILocation(line: 336, column: 39, scope: !1743, inlinedAt: !1737)
!1750 = !DILocation(line: 336, column: 28, scope: !1743, inlinedAt: !1737)
!1751 = !DILocation(line: 336, column: 13, scope: !1743, inlinedAt: !1737)
!1752 = distinct !{!1752, !1744, !1753, !1204, !1754, !1755}
!1753 = !DILocation(line: 336, column: 45, scope: !1735, inlinedAt: !1737)
!1754 = !{!"llvm.loop.isvectorized", i32 1}
!1755 = !{!"llvm.loop.unroll.runtime.disable"}
!1756 = !DILocation(line: 336, column: 26, scope: !1743, inlinedAt: !1737)
!1757 = !DILocation(line: 335, column: 30, scope: !1743, inlinedAt: !1737)
!1758 = distinct !{!1758, !1744, !1753, !1204, !1755, !1754}
!1759 = !DILocation(line: 536, column: 7, scope: !1400, inlinedAt: !1402)
!1760 = !DILocation(line: 538, column: 7, scope: !1761, inlinedAt: !1402)
!1761 = distinct !DILexicalBlock(scope: !1762, file: !2, line: 538, column: 7)
!1762 = distinct !DILexicalBlock(scope: !1399, file: !2, line: 538, column: 7)
!1763 = !DILocation(line: 539, column: 7, scope: !1764, inlinedAt: !1402)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !2, line: 539, column: 7)
!1765 = distinct !DILexicalBlock(scope: !1399, file: !2, line: 539, column: 7)
!1766 = !DILocation(line: 539, column: 7, scope: !1765, inlinedAt: !1402)
!1767 = !DILocation(line: 0, scope: !1398, inlinedAt: !1402)
!1768 = !DILocation(line: 540, column: 25, scope: !1769, inlinedAt: !1402)
!1769 = distinct !DILexicalBlock(scope: !1398, file: !2, line: 540, column: 7)
!1770 = !DILocation(line: 540, column: 7, scope: !1398, inlinedAt: !1402)
!1771 = !DILocation(line: 541, column: 9, scope: !1772, inlinedAt: !1402)
!1772 = distinct !DILexicalBlock(scope: !1773, file: !2, line: 541, column: 9)
!1773 = distinct !DILexicalBlock(scope: !1769, file: !2, line: 541, column: 9)
!1774 = !DILocation(line: 541, column: 9, scope: !1773, inlinedAt: !1402)
!1775 = !DILocation(line: 540, column: 37, scope: !1769, inlinedAt: !1402)
!1776 = distinct !{!1776, !1770, !1777, !1204}
!1777 = !DILocation(line: 541, column: 9, scope: !1398, inlinedAt: !1402)
!1778 = !DILocation(line: 546, column: 19, scope: !1386, inlinedAt: !1402)
!1779 = !DILocation(line: 546, column: 43, scope: !1386, inlinedAt: !1402)
!1780 = !DILocation(line: 546, column: 41, scope: !1386, inlinedAt: !1402)
!1781 = !DILocation(line: 547, column: 23, scope: !1386, inlinedAt: !1402)
!1782 = !DILocation(line: 547, column: 11, scope: !1386, inlinedAt: !1402)
!1783 = !DILocation(line: 547, column: 28, scope: !1386, inlinedAt: !1402)
!1784 = !DILocation(line: 0, scope: !1562, inlinedAt: !1785)
!1785 = distinct !DILocation(line: 546, column: 3, scope: !1386, inlinedAt: !1402)
!1786 = !DILocation(line: 29, column: 10, scope: !1562, inlinedAt: !1785)
!1787 = !DILocation(line: 550, column: 24, scope: !1386, inlinedAt: !1402)
!1788 = !DILocation(line: 552, column: 16, scope: !1386, inlinedAt: !1402)
!1789 = !DILocation(line: 820, column: 11, scope: !1343)
!1790 = !DILocation(line: 826, column: 11, scope: !1343)
!1791 = !DILocation(line: 827, column: 11, scope: !1343)
!1792 = !DILocation(line: 828, column: 11, scope: !1343)
!1793 = !DILocation(line: 830, column: 9, scope: !1343)
!1794 = !DILocation(line: 831, column: 9, scope: !1343)
!1795 = !DILocation(line: 833, column: 11, scope: !1343)
!1796 = !DILocation(line: 837, column: 7, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !223, file: !2, line: 837, column: 7)
!1798 = !DILocation(line: 837, column: 14, scope: !1797)
!1799 = !DILocation(line: 837, column: 21, scope: !1797)
!1800 = !DILocation(line: 837, column: 31, scope: !1797)
!1801 = !DILocation(line: 0, scope: !1169, inlinedAt: !1802)
!1802 = distinct !DILocation(line: 837, column: 24, scope: !1797)
!1803 = !DILocation(line: 1361, column: 11, scope: !1169, inlinedAt: !1802)
!1804 = !DILocation(line: 1361, column: 10, scope: !1169, inlinedAt: !1802)
!1805 = !DILocation(line: 837, column: 7, scope: !223)
!1806 = !DILocation(line: 840, column: 7, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1797, file: !2, line: 838, column: 5)
!1808 = !DILocation(line: 843, column: 7, scope: !223)
!1809 = !DILocation(line: 845, column: 7, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1811, file: !2, line: 845, column: 7)
!1811 = distinct !DILexicalBlock(scope: !1812, file: !2, line: 845, column: 7)
!1812 = distinct !DILexicalBlock(scope: !1813, file: !2, line: 844, column: 5)
!1813 = distinct !DILexicalBlock(scope: !223, file: !2, line: 843, column: 7)
!1814 = !DILocation(line: 845, column: 7, scope: !1811)
!1815 = !DILocation(line: 847, column: 15, scope: !1812)
!1816 = !DILocation(line: 848, column: 5, scope: !1812)
!1817 = !DILocalVariable(name: "i", scope: !1818, file: !2, line: 196, type: !528)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !2, line: 196, column: 3)
!1819 = distinct !DISubprogram(name: "unset_envvars", scope: !2, file: !2, line: 194, type: !716, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1820)
!1820 = !{!1817}
!1821 = !DILocation(line: 0, scope: !1818, inlinedAt: !1822)
!1822 = distinct !DILocation(line: 850, column: 5, scope: !1813)
!1823 = !DILocation(line: 196, column: 25, scope: !1824, inlinedAt: !1822)
!1824 = distinct !DILexicalBlock(scope: !1818, file: !2, line: 196, column: 3)
!1825 = !DILocation(line: 196, column: 23, scope: !1824, inlinedAt: !1822)
!1826 = !DILocation(line: 196, column: 3, scope: !1818, inlinedAt: !1822)
!1827 = !DILocation(line: 198, column: 7, scope: !1828, inlinedAt: !1822)
!1828 = distinct !DILexicalBlock(scope: !1829, file: !2, line: 198, column: 7)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !2, line: 198, column: 7)
!1830 = distinct !DILexicalBlock(scope: !1824, file: !2, line: 197, column: 5)
!1831 = !DILocation(line: 198, column: 7, scope: !1829, inlinedAt: !1822)
!1832 = !DILocation(line: 200, column: 21, scope: !1833, inlinedAt: !1822)
!1833 = distinct !DILexicalBlock(scope: !1830, file: !2, line: 200, column: 11)
!1834 = !DILocation(line: 200, column: 11, scope: !1833, inlinedAt: !1822)
!1835 = !DILocation(line: 200, column: 11, scope: !1830, inlinedAt: !1822)
!1836 = !DILocation(line: 201, column: 9, scope: !1833, inlinedAt: !1822)
!1837 = !DILocation(line: 196, column: 38, scope: !1824, inlinedAt: !1822)
!1838 = distinct !{!1838, !1826, !1839, !1204}
!1839 = !DILocation(line: 203, column: 5, scope: !1818, inlinedAt: !1822)
!1840 = !DILocation(line: 853, column: 10, scope: !223)
!1841 = !DILocation(line: 853, column: 17, scope: !223)
!1842 = !DILocation(line: 853, column: 24, scope: !223)
!1843 = !DILocation(line: 853, column: 3, scope: !223)
!1844 = !DILocation(line: 853, column: 41, scope: !223)
!1845 = !DILocation(line: 853, column: 33, scope: !223)
!1846 = !DILocation(line: 855, column: 7, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !2, line: 855, column: 7)
!1848 = distinct !DILexicalBlock(scope: !1849, file: !2, line: 855, column: 7)
!1849 = distinct !DILexicalBlock(scope: !223, file: !2, line: 854, column: 5)
!1850 = !DILocation(line: 855, column: 7, scope: !1848)
!1851 = !DILocation(line: 857, column: 24, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1849, file: !2, line: 857, column: 11)
!1853 = !DILocation(line: 857, column: 19, scope: !1852)
!1854 = !DILocation(line: 857, column: 11, scope: !1852)
!1855 = !DILocation(line: 857, column: 11, scope: !1849)
!1856 = !DILocation(line: 859, column: 15, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1852, file: !2, line: 858, column: 9)
!1858 = !DILocation(line: 860, column: 11, scope: !1857)
!1859 = !DILocation(line: 863, column: 13, scope: !1849)
!1860 = distinct !{!1860, !1843, !1861, !1204}
!1861 = !DILocation(line: 864, column: 5, scope: !223)
!1862 = !DILocation(line: 868, column: 32, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !223, file: !2, line: 868, column: 7)
!1864 = !DILocation(line: 870, column: 7, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1863, file: !2, line: 869, column: 5)
!1866 = !DILocation(line: 871, column: 7, scope: !1865)
!1867 = !DILocation(line: 874, column: 7, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !223, file: !2, line: 874, column: 7)
!1869 = !DILocation(line: 874, column: 14, scope: !1868)
!1870 = !DILocation(line: 876, column: 7, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1868, file: !2, line: 875, column: 5)
!1872 = !DILocation(line: 877, column: 7, scope: !1871)
!1873 = !DILocation(line: 880, column: 7, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !223, file: !2, line: 880, column: 7)
!1875 = !DILocation(line: 880, column: 13, scope: !1874)
!1876 = !DILocation(line: 882, column: 7, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1874, file: !2, line: 881, column: 5)
!1878 = !DILocation(line: 883, column: 7, scope: !1877)
!1879 = !DILocation(line: 889, column: 24, scope: !239)
!1880 = !DILocation(line: 0, scope: !239)
!1881 = !DILocation(line: 890, column: 14, scope: !239)
!1882 = !DILocation(line: 890, column: 7, scope: !239)
!1883 = !DILocation(line: 891, column: 9, scope: !239)
!1884 = distinct !{!1884, !1882, !1883, !1204}
!1885 = !DILocalVariable(name: "act", scope: !1886, file: !2, line: 593, type: !1898)
!1886 = distinct !DILexicalBlock(scope: !1887, file: !2, line: 592, column: 5)
!1887 = distinct !DILexicalBlock(scope: !1888, file: !2, line: 591, column: 3)
!1888 = distinct !DILexicalBlock(scope: !1889, file: !2, line: 591, column: 3)
!1889 = distinct !DISubprogram(name: "reset_signal_handlers", scope: !2, file: !2, line: 589, type: !716, scopeLine: 590, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1890)
!1890 = !{!1891, !1885, !1892, !1893, !1894, !1895}
!1891 = !DILocalVariable(name: "i", scope: !1888, file: !2, line: 591, type: !122)
!1892 = !DILocalVariable(name: "ignore_errors", scope: !1886, file: !2, line: 598, type: !231)
!1893 = !DILocalVariable(name: "set_to_default", scope: !1886, file: !2, line: 601, type: !231)
!1894 = !DILocalVariable(name: "sig_err", scope: !1886, file: !2, line: 604, type: !122)
!1895 = !DILocalVariable(name: "signame", scope: !1896, file: !2, line: 621, type: !486)
!1896 = distinct !DILexicalBlock(scope: !1897, file: !2, line: 620, column: 9)
!1897 = distinct !DILexicalBlock(scope: !1886, file: !2, line: 619, column: 11)
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1899, line: 27, size: 1216, elements: !1900)
!1899 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/sigaction.h", directory: "", checksumkind: CSK_MD5, checksum: "95401d18e887df415f59d7a2cb411c28")
!1900 = !{!1901, !1983, !1984, !1985}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "__sigaction_handler", scope: !1898, file: !1899, line: 38, baseType: !1902, size: 64)
!1902 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1898, file: !1899, line: 31, size: 64, elements: !1903)
!1903 = !{!1904, !1905}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1902, file: !1899, line: 34, baseType: !175, size: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "sa_sigaction", scope: !1902, file: !1899, line: 36, baseType: !1906, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{null, !122, !1909, !164}
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !1911, line: 124, baseType: !1912)
!1911 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/siginfo_t.h", directory: "", checksumkind: CSK_MD5, checksum: "023cf7b0ef843da262cf07900eda0ac5")
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1911, line: 36, size: 1024, elements: !1913)
!1913 = !{!1914, !1915, !1916, !1917, !1918}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1912, file: !1911, line: 38, baseType: !122, size: 32)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1912, file: !1911, line: 40, baseType: !122, size: 32, offset: 32)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1912, file: !1911, line: 42, baseType: !122, size: 32, offset: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1912, file: !1911, line: 48, baseType: !122, size: 32, offset: 96)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1912, file: !1911, line: 123, baseType: !1919, size: 896, offset: 128)
!1919 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1912, file: !1911, line: 51, size: 896, elements: !1920)
!1920 = !{!1921, !1923, !1930, !1942, !1948, !1957, !1972, !1977}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "_pad", scope: !1919, file: !1911, line: 53, baseType: !1922, size: 896)
!1922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 896, elements: !905)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1919, file: !1911, line: 60, baseType: !1924, size: 64)
!1924 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1919, file: !1911, line: 56, size: 64, elements: !1925)
!1925 = !{!1926, !1928}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !1924, file: !1911, line: 58, baseType: !1927, size: 32)
!1927 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !353, line: 154, baseType: !122)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !1924, file: !1911, line: 59, baseType: !1929, size: 32, offset: 32)
!1929 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !353, line: 146, baseType: !109)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1919, file: !1911, line: 68, baseType: !1931, size: 128)
!1931 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1919, file: !1911, line: 63, size: 128, elements: !1932)
!1932 = !{!1933, !1934, !1935}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "si_tid", scope: !1931, file: !1911, line: 65, baseType: !122, size: 32)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "si_overrun", scope: !1931, file: !1911, line: 66, baseType: !122, size: 32, offset: 32)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !1931, file: !1911, line: 67, baseType: !1936, size: 64, offset: 64)
!1936 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigval_t", file: !1937, line: 30, baseType: !1938)
!1937 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__sigval_t.h", directory: "", checksumkind: CSK_MD5, checksum: "bc7605d16e396c16f725f8da13f6eb20")
!1938 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1937, line: 24, size: 64, elements: !1939)
!1939 = !{!1940, !1941}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1938, file: !1937, line: 26, baseType: !122, size: 32)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1938, file: !1937, line: 27, baseType: !164, size: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1919, file: !1911, line: 76, baseType: !1943, size: 128)
!1943 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1919, file: !1911, line: 71, size: 128, elements: !1944)
!1944 = !{!1945, !1946, !1947}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !1943, file: !1911, line: 73, baseType: !1927, size: 32)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !1943, file: !1911, line: 74, baseType: !1929, size: 32, offset: 32)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !1943, file: !1911, line: 75, baseType: !1936, size: 64, offset: 64)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1919, file: !1911, line: 86, baseType: !1949, size: 256)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1919, file: !1911, line: 79, size: 256, elements: !1950)
!1950 = !{!1951, !1952, !1953, !1954, !1956}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !1949, file: !1911, line: 81, baseType: !1927, size: 32)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !1949, file: !1911, line: 82, baseType: !1929, size: 32, offset: 32)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "si_status", scope: !1949, file: !1911, line: 83, baseType: !122, size: 32, offset: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "si_utime", scope: !1949, file: !1911, line: 84, baseType: !1955, size: 64, offset: 128)
!1955 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !353, line: 156, baseType: !174)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "si_stime", scope: !1949, file: !1911, line: 85, baseType: !1955, size: 64, offset: 192)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1919, file: !1911, line: 105, baseType: !1958, size: 256)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1919, file: !1911, line: 89, size: 256, elements: !1959)
!1959 = !{!1960, !1961, !1963}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr", scope: !1958, file: !1911, line: 91, baseType: !164, size: 64)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr_lsb", scope: !1958, file: !1911, line: 93, baseType: !1962, size: 16, offset: 64)
!1962 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "_bounds", scope: !1958, file: !1911, line: 104, baseType: !1964, size: 128, offset: 128)
!1964 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1958, file: !1911, line: 94, size: 128, elements: !1965)
!1965 = !{!1966, !1971}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1964, file: !1911, line: 101, baseType: !1967, size: 128)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1964, file: !1911, line: 97, size: 128, elements: !1968)
!1968 = !{!1969, !1970}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1967, file: !1911, line: 99, baseType: !164, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1967, file: !1911, line: 100, baseType: !164, size: 64, offset: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1964, file: !1911, line: 103, baseType: !744, size: 32)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1919, file: !1911, line: 112, baseType: !1973, size: 128)
!1973 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1919, file: !1911, line: 108, size: 128, elements: !1974)
!1974 = !{!1975, !1976}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "si_band", scope: !1973, file: !1911, line: 110, baseType: !174, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "si_fd", scope: !1973, file: !1911, line: 111, baseType: !122, size: 32, offset: 64)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1919, file: !1911, line: 121, baseType: !1978, size: 128)
!1978 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1919, file: !1911, line: 116, size: 128, elements: !1979)
!1979 = !{!1980, !1981, !1982}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1978, file: !1911, line: 118, baseType: !164, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1978, file: !1911, line: 119, baseType: !122, size: 32, offset: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1978, file: !1911, line: 120, baseType: !109, size: 32, offset: 96)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1898, file: !1899, line: 46, baseType: !550, size: 1024, offset: 64)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1898, file: !1899, line: 49, baseType: !122, size: 32, offset: 1088)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1898, file: !1899, line: 52, baseType: !715, size: 64, offset: 1152)
!1986 = !DILocation(line: 0, scope: !1886, inlinedAt: !1987)
!1987 = distinct !DILocation(line: 895, column: 3, scope: !223)
!1988 = !DILocation(line: 0, scope: !1896, inlinedAt: !1987)
!1989 = !DILocation(line: 0, scope: !1888, inlinedAt: !1987)
!1990 = !DILocation(line: 591, column: 3, scope: !1888, inlinedAt: !1987)
!1991 = !DILocation(line: 593, column: 7, scope: !1886, inlinedAt: !1987)
!1992 = !DILocation(line: 595, column: 11, scope: !1993, inlinedAt: !1987)
!1993 = distinct !DILexicalBlock(scope: !1886, file: !2, line: 595, column: 11)
!1994 = !DILocation(line: 595, column: 11, scope: !1886, inlinedAt: !1987)
!1995 = !DILocation(line: 599, column: 29, scope: !1886, inlinedAt: !1987)
!1996 = !DILocation(line: 602, column: 30, scope: !1886, inlinedAt: !1987)
!1997 = !DILocation(line: 604, column: 21, scope: !1886, inlinedAt: !1987)
!1998 = !DILocation(line: 606, column: 11, scope: !1999, inlinedAt: !1987)
!1999 = distinct !DILexicalBlock(scope: !1886, file: !2, line: 606, column: 11)
!2000 = !DILocation(line: 606, column: 19, scope: !1999, inlinedAt: !1987)
!2001 = !DILocation(line: 607, column: 9, scope: !1999, inlinedAt: !1987)
!2002 = !DILocation(line: 610, column: 11, scope: !1886, inlinedAt: !1987)
!2003 = !DILocation(line: 612, column: 28, scope: !2004, inlinedAt: !1987)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !2, line: 611, column: 9)
!2005 = distinct !DILexicalBlock(scope: !1886, file: !2, line: 610, column: 11)
!2006 = !DILocation(line: 612, column: 26, scope: !2004, inlinedAt: !1987)
!2007 = distinct !DIAssignID()
!2008 = !DILocation(line: 613, column: 21, scope: !2004, inlinedAt: !1987)
!2009 = !DILocation(line: 614, column: 15, scope: !2010, inlinedAt: !1987)
!2010 = distinct !DILexicalBlock(scope: !2004, file: !2, line: 614, column: 15)
!2011 = !DILocation(line: 614, column: 23, scope: !2010, inlinedAt: !1987)
!2012 = !DILocation(line: 615, column: 13, scope: !2010, inlinedAt: !1987)
!2013 = !DILocation(line: 619, column: 11, scope: !1897, inlinedAt: !1987)
!2014 = !DILocation(line: 619, column: 11, scope: !1886, inlinedAt: !1987)
!2015 = !DILocation(line: 621, column: 11, scope: !1896, inlinedAt: !1987)
!2016 = !DILocation(line: 622, column: 15, scope: !2017, inlinedAt: !1987)
!2017 = distinct !DILexicalBlock(scope: !1896, file: !2, line: 622, column: 15)
!2018 = !DILocation(line: 622, column: 36, scope: !2017, inlinedAt: !1987)
!2019 = !DILocation(line: 622, column: 15, scope: !1896, inlinedAt: !1987)
!2020 = !DILocation(line: 623, column: 13, scope: !2017, inlinedAt: !1987)
!2021 = !DILocation(line: 624, column: 11, scope: !2022, inlinedAt: !1987)
!2022 = distinct !DILexicalBlock(scope: !2023, file: !2, line: 624, column: 11)
!2023 = distinct !DILexicalBlock(scope: !1896, file: !2, line: 624, column: 11)
!2024 = !DILocation(line: 624, column: 11, scope: !2023, inlinedAt: !1987)
!2025 = !DILocation(line: 628, column: 9, scope: !1897, inlinedAt: !1987)
!2026 = !DILocation(line: 628, column: 9, scope: !1896, inlinedAt: !1987)
!2027 = !DILocation(line: 629, column: 5, scope: !1887, inlinedAt: !1987)
!2028 = !DILocation(line: 591, column: 39, scope: !1887, inlinedAt: !1987)
!2029 = !DILocation(line: 591, column: 21, scope: !1887, inlinedAt: !1987)
!2030 = distinct !{!2030, !1990, !2031, !1204}
!2031 = !DILocation(line: 629, column: 5, scope: !1888, inlinedAt: !1987)
!2032 = !DILocation(line: 896, column: 7, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !223, file: !2, line: 896, column: 7)
!2034 = !DILocation(line: 896, column: 7, scope: !223)
!2035 = !DILocalVariable(name: "set", scope: !2036, file: !2, line: 686, type: !548)
!2036 = distinct !DISubprogram(name: "set_signal_proc_mask", scope: !2, file: !2, line: 683, type: !716, scopeLine: 684, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2037)
!2037 = !{!2035, !2038, !2040, !2043}
!2038 = !DILocalVariable(name: "i", scope: !2039, file: !2, line: 693, type: !122)
!2039 = distinct !DILexicalBlock(scope: !2036, file: !2, line: 693, column: 3)
!2040 = !DILocalVariable(name: "debug_act", scope: !2041, file: !2, line: 695, type: !169)
!2041 = distinct !DILexicalBlock(scope: !2042, file: !2, line: 694, column: 5)
!2042 = distinct !DILexicalBlock(scope: !2039, file: !2, line: 693, column: 3)
!2043 = !DILocalVariable(name: "signame", scope: !2044, file: !2, line: 710, type: !486)
!2044 = distinct !DILexicalBlock(scope: !2045, file: !2, line: 709, column: 9)
!2045 = distinct !DILexicalBlock(scope: !2041, file: !2, line: 708, column: 11)
!2046 = !DILocation(line: 0, scope: !2036, inlinedAt: !2047)
!2047 = distinct !DILocation(line: 897, column: 5, scope: !2033)
!2048 = !DILocation(line: 0, scope: !2044, inlinedAt: !2047)
!2049 = !DILocation(line: 686, column: 3, scope: !2036, inlinedAt: !2047)
!2050 = !DILocation(line: 688, column: 3, scope: !2036, inlinedAt: !2047)
!2051 = !DILocation(line: 690, column: 7, scope: !2052, inlinedAt: !2047)
!2052 = distinct !DILexicalBlock(scope: !2036, file: !2, line: 690, column: 7)
!2053 = !DILocation(line: 690, column: 7, scope: !2036, inlinedAt: !2047)
!2054 = !DILocation(line: 693, column: 3, scope: !2039, inlinedAt: !2047)
!2055 = !DILocation(line: 691, column: 5, scope: !2052, inlinedAt: !2047)
!2056 = !DILocation(line: 718, column: 7, scope: !2057, inlinedAt: !2047)
!2057 = distinct !DILexicalBlock(scope: !2036, file: !2, line: 718, column: 7)
!2058 = !DILocation(line: 718, column: 7, scope: !2036, inlinedAt: !2047)
!2059 = !DILocation(line: 0, scope: !2039, inlinedAt: !2047)
!2060 = !DILocation(line: 0, scope: !2041, inlinedAt: !2047)
!2061 = !DILocation(line: 697, column: 11, scope: !2062, inlinedAt: !2047)
!2062 = distinct !DILexicalBlock(scope: !2041, file: !2, line: 697, column: 11)
!2063 = !DILocation(line: 697, column: 11, scope: !2041, inlinedAt: !2047)
!2064 = !DILocation(line: 699, column: 11, scope: !2065, inlinedAt: !2047)
!2065 = distinct !DILexicalBlock(scope: !2062, file: !2, line: 698, column: 9)
!2066 = !DILocation(line: 701, column: 9, scope: !2065, inlinedAt: !2047)
!2067 = !DILocation(line: 702, column: 16, scope: !2068, inlinedAt: !2047)
!2068 = distinct !DILexicalBlock(scope: !2062, file: !2, line: 702, column: 16)
!2069 = !DILocation(line: 702, column: 16, scope: !2062, inlinedAt: !2047)
!2070 = !DILocation(line: 704, column: 11, scope: !2071, inlinedAt: !2047)
!2071 = distinct !DILexicalBlock(scope: !2068, file: !2, line: 703, column: 9)
!2072 = !DILocation(line: 706, column: 9, scope: !2071, inlinedAt: !2047)
!2073 = !DILocation(line: 708, column: 11, scope: !2045, inlinedAt: !2047)
!2074 = !DILocation(line: 708, column: 21, scope: !2045, inlinedAt: !2047)
!2075 = !DILocation(line: 710, column: 11, scope: !2044, inlinedAt: !2047)
!2076 = !DILocation(line: 711, column: 15, scope: !2077, inlinedAt: !2047)
!2077 = distinct !DILexicalBlock(scope: !2044, file: !2, line: 711, column: 15)
!2078 = !DILocation(line: 711, column: 36, scope: !2077, inlinedAt: !2047)
!2079 = !DILocation(line: 711, column: 15, scope: !2044, inlinedAt: !2047)
!2080 = !DILocation(line: 712, column: 13, scope: !2077, inlinedAt: !2047)
!2081 = !DILocation(line: 713, column: 11, scope: !2082, inlinedAt: !2047)
!2082 = distinct !DILexicalBlock(scope: !2083, file: !2, line: 713, column: 11)
!2083 = distinct !DILexicalBlock(scope: !2044, file: !2, line: 713, column: 11)
!2084 = !DILocation(line: 713, column: 11, scope: !2083, inlinedAt: !2047)
!2085 = !DILocation(line: 715, column: 9, scope: !2045, inlinedAt: !2047)
!2086 = !DILocation(line: 715, column: 9, scope: !2044, inlinedAt: !2047)
!2087 = !DILocation(line: 693, column: 39, scope: !2042, inlinedAt: !2047)
!2088 = !DILocation(line: 693, column: 21, scope: !2042, inlinedAt: !2047)
!2089 = distinct !{!2089, !2054, !2090, !1204}
!2090 = !DILocation(line: 716, column: 5, scope: !2039, inlinedAt: !2047)
!2091 = !DILocation(line: 719, column: 5, scope: !2057, inlinedAt: !2047)
!2092 = !DILocation(line: 720, column: 1, scope: !2036, inlinedAt: !2047)
!2093 = !DILocation(line: 897, column: 5, scope: !2033)
!2094 = !DILocation(line: 899, column: 7, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !223, file: !2, line: 899, column: 7)
!2096 = !DILocation(line: 899, column: 7, scope: !223)
!2097 = !DILocalVariable(name: "set", scope: !2098, file: !2, line: 725, type: !548)
!2098 = distinct !DISubprogram(name: "list_signal_handling", scope: !2, file: !2, line: 723, type: !716, scopeLine: 724, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2099)
!2099 = !{!2097, !2100, !2102, !2105, !2106, !2107, !2108}
!2100 = !DILocalVariable(name: "i", scope: !2101, file: !2, line: 731, type: !122)
!2101 = distinct !DILexicalBlock(scope: !2098, file: !2, line: 731, column: 3)
!2102 = !DILocalVariable(name: "act", scope: !2103, file: !2, line: 733, type: !1898)
!2103 = distinct !DILexicalBlock(scope: !2104, file: !2, line: 732, column: 5)
!2104 = distinct !DILexicalBlock(scope: !2101, file: !2, line: 731, column: 3)
!2105 = !DILocalVariable(name: "ignored", scope: !2103, file: !2, line: 737, type: !169)
!2106 = !DILocalVariable(name: "blocked", scope: !2103, file: !2, line: 738, type: !169)
!2107 = !DILocalVariable(name: "connect", scope: !2103, file: !2, line: 739, type: !169)
!2108 = !DILocalVariable(name: "signame", scope: !2103, file: !2, line: 744, type: !486)
!2109 = !DILocation(line: 0, scope: !2098, inlinedAt: !2110)
!2110 = distinct !DILocation(line: 900, column: 5, scope: !2095)
!2111 = !DILocation(line: 0, scope: !2103, inlinedAt: !2110)
!2112 = !DILocation(line: 725, column: 3, scope: !2098, inlinedAt: !2110)
!2113 = !DILocation(line: 727, column: 3, scope: !2098, inlinedAt: !2110)
!2114 = !DILocation(line: 728, column: 7, scope: !2115, inlinedAt: !2110)
!2115 = distinct !DILexicalBlock(scope: !2098, file: !2, line: 728, column: 7)
!2116 = !DILocation(line: 728, column: 7, scope: !2098, inlinedAt: !2110)
!2117 = !DILocation(line: 731, column: 3, scope: !2101, inlinedAt: !2110)
!2118 = !DILocation(line: 729, column: 5, scope: !2115, inlinedAt: !2110)
!2119 = !DILocation(line: 0, scope: !2101, inlinedAt: !2110)
!2120 = !DILocation(line: 733, column: 7, scope: !2103, inlinedAt: !2110)
!2121 = !DILocation(line: 734, column: 11, scope: !2122, inlinedAt: !2110)
!2122 = distinct !DILexicalBlock(scope: !2103, file: !2, line: 734, column: 11)
!2123 = !DILocation(line: 734, column: 11, scope: !2103, inlinedAt: !2110)
!2124 = !DILocation(line: 737, column: 33, scope: !2103, inlinedAt: !2110)
!2125 = !DILocation(line: 737, column: 44, scope: !2103, inlinedAt: !2110)
!2126 = !DILocation(line: 737, column: 29, scope: !2103, inlinedAt: !2110)
!2127 = !DILocation(line: 738, column: 29, scope: !2103, inlinedAt: !2110)
!2128 = !DILocation(line: 739, column: 29, scope: !2103, inlinedAt: !2110)
!2129 = !DILocation(line: 739, column: 38, scope: !2103, inlinedAt: !2110)
!2130 = !DILocation(line: 741, column: 22, scope: !2131, inlinedAt: !2110)
!2131 = distinct !DILexicalBlock(scope: !2103, file: !2, line: 741, column: 11)
!2132 = !DILocation(line: 744, column: 7, scope: !2103, inlinedAt: !2110)
!2133 = !DILocation(line: 745, column: 11, scope: !2134, inlinedAt: !2110)
!2134 = distinct !DILexicalBlock(scope: !2103, file: !2, line: 745, column: 11)
!2135 = !DILocation(line: 745, column: 32, scope: !2134, inlinedAt: !2110)
!2136 = !DILocation(line: 745, column: 11, scope: !2103, inlinedAt: !2110)
!2137 = !DILocation(line: 746, column: 9, scope: !2134, inlinedAt: !2110)
!2138 = !DILocation(line: 747, column: 7, scope: !2103, inlinedAt: !2110)
!2139 = !DILocation(line: 749, column: 5, scope: !2104, inlinedAt: !2110)
!2140 = !DILocation(line: 731, column: 39, scope: !2104, inlinedAt: !2110)
!2141 = !DILocation(line: 731, column: 21, scope: !2104, inlinedAt: !2110)
!2142 = distinct !{!2142, !2117, !2143, !1204}
!2143 = !DILocation(line: 749, column: 5, scope: !2101, inlinedAt: !2110)
!2144 = !DILocation(line: 750, column: 1, scope: !2098, inlinedAt: !2110)
!2145 = !DILocation(line: 900, column: 5, scope: !2095)
!2146 = !DILocation(line: 918, column: 7, scope: !247)
!2147 = !DILocation(line: 902, column: 7, scope: !223)
!2148 = !DILocation(line: 904, column: 7, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2150, file: !2, line: 904, column: 7)
!2150 = distinct !DILexicalBlock(scope: !2151, file: !2, line: 903, column: 5)
!2151 = distinct !DILexicalBlock(scope: !223, file: !2, line: 902, column: 7)
!2152 = !DILocation(line: 904, column: 7, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2149, file: !2, line: 904, column: 7)
!2154 = !DILocation(line: 906, column: 11, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2150, file: !2, line: 906, column: 11)
!2156 = !DILocation(line: 906, column: 26, scope: !2155)
!2157 = !DILocation(line: 906, column: 11, scope: !2150)
!2158 = !DILocation(line: 907, column: 9, scope: !2155)
!2159 = !DILocation(line: 911, column: 24, scope: !223)
!2160 = !DILocation(line: 911, column: 19, scope: !223)
!2161 = !DILocation(line: 912, column: 7, scope: !223)
!2162 = !DILocation(line: 914, column: 7, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2164, file: !2, line: 914, column: 7)
!2164 = distinct !DILexicalBlock(scope: !2165, file: !2, line: 913, column: 5)
!2165 = distinct !DILexicalBlock(scope: !223, file: !2, line: 912, column: 7)
!2166 = !DILocation(line: 915, column: 7, scope: !2164)
!2167 = !DILocation(line: 915, column: 20, scope: !2164)
!2168 = !DILocation(line: 918, column: 7, scope: !223)
!2169 = !DILocation(line: 914, column: 7, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2163, file: !2, line: 914, column: 7)
!2171 = !DILocation(line: 915, column: 12, scope: !2164)
!2172 = !DILocation(line: 920, column: 7, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2174, file: !2, line: 920, column: 7)
!2174 = distinct !DILexicalBlock(scope: !246, file: !2, line: 920, column: 7)
!2175 = !DILocation(line: 921, column: 18, scope: !245)
!2176 = !DILocation(line: 0, scope: !245)
!2177 = !DILocation(line: 921, column: 27, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !245, file: !2, line: 921, column: 7)
!2179 = !DILocation(line: 921, column: 7, scope: !245)
!2180 = !DILocation(line: 922, column: 9, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2182, file: !2, line: 922, column: 9)
!2182 = distinct !DILexicalBlock(scope: !2178, file: !2, line: 922, column: 9)
!2183 = !DILocation(line: 922, column: 9, scope: !2182)
!2184 = !DILocation(line: 921, column: 34, scope: !2178)
!2185 = distinct !{!2185, !2179, !2186, !1204}
!2186 = !DILocation(line: 922, column: 9, scope: !245)
!2187 = !DILocation(line: 925, column: 26, scope: !223)
!2188 = !DILocation(line: 925, column: 21, scope: !223)
!2189 = !DILocation(line: 925, column: 3, scope: !223)
!2190 = !DILocation(line: 927, column: 21, scope: !223)
!2191 = !DILocation(line: 927, column: 27, scope: !223)
!2192 = !DILocation(line: 928, column: 3, scope: !223)
!2193 = !DILocation(line: 930, column: 34, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !223, file: !2, line: 930, column: 7)
!2195 = !DILocation(line: 930, column: 37, scope: !2194)
!2196 = !DILocation(line: 930, column: 7, scope: !223)
!2197 = !DILocation(line: 931, column: 5, scope: !2194)
!2198 = !DILocation(line: 934, column: 1, scope: !223)
!2199 = !DISubprogram(name: "bindtextdomain", scope: !1140, file: !1140, line: 86, type: !2200, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2200 = !DISubroutineType(types: !2201)
!2201 = !{!163, !169, !169}
!2202 = !DISubprogram(name: "textdomain", scope: !1140, file: !1140, line: 82, type: !1280, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2203 = !DISubprogram(name: "atexit", scope: !1278, file: !1278, line: 602, type: !2204, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{!122, !715}
!2206 = !DISubprogram(name: "getopt_long", scope: !519, file: !519, line: 66, type: !2207, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2207 = !DISubroutineType(types: !2208)
!2208 = !{!122, !122, !241, !169, !2209, !524}
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!2210 = distinct !DISubprogram(name: "parse_signal_action_params", scope: !2, file: !2, line: 556, type: !2211, scopeLine: 557, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2213)
!2211 = !DISubroutineType(types: !2212)
!2212 = !{null, !169, !231}
!2213 = !{!2214, !2215, !2216, !2220, !2221, !2222}
!2214 = !DILocalVariable(name: "arg", arg: 1, scope: !2210, file: !2, line: 556, type: !169)
!2215 = !DILocalVariable(name: "set_default", arg: 2, scope: !2210, file: !2, line: 556, type: !231)
!2216 = !DILocalVariable(name: "i", scope: !2217, file: !2, line: 563, type: !122)
!2217 = distinct !DILexicalBlock(scope: !2218, file: !2, line: 563, column: 7)
!2218 = distinct !DILexicalBlock(scope: !2219, file: !2, line: 559, column: 5)
!2219 = distinct !DILexicalBlock(scope: !2210, file: !2, line: 558, column: 7)
!2220 = !DILocalVariable(name: "optarg_writable", scope: !2210, file: !2, line: 568, type: !163)
!2221 = !DILocalVariable(name: "opt_sig", scope: !2210, file: !2, line: 570, type: !163)
!2222 = !DILocalVariable(name: "signum", scope: !2223, file: !2, line: 573, type: !122)
!2223 = distinct !DILexicalBlock(scope: !2210, file: !2, line: 572, column: 5)
!2224 = !DILocation(line: 0, scope: !2210)
!2225 = !DILocation(line: 558, column: 9, scope: !2219)
!2226 = !DILocation(line: 558, column: 7, scope: !2210)
!2227 = !DILocation(line: 0, scope: !2217)
!2228 = !DILocation(line: 564, column: 9, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2217, file: !2, line: 563, column: 7)
!2230 = !DILocation(line: 564, column: 20, scope: !2229)
!2231 = !DILocation(line: 586, column: 1, scope: !2210)
!2232 = !DILocation(line: 568, column: 27, scope: !2210)
!2233 = !DILocation(line: 570, column: 19, scope: !2210)
!2234 = !DILocation(line: 571, column: 3, scope: !2210)
!2235 = !DILocation(line: 573, column: 20, scope: !2223)
!2236 = !DILocation(line: 0, scope: !2223)
!2237 = !DILocation(line: 575, column: 18, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2223, file: !2, line: 575, column: 11)
!2239 = !DILocation(line: 575, column: 11, scope: !2223)
!2240 = !DILocation(line: 576, column: 9, scope: !2238)
!2241 = !DILocation(line: 577, column: 11, scope: !2223)
!2242 = !DILocation(line: 577, column: 18, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2223, file: !2, line: 577, column: 11)
!2244 = !DILocation(line: 578, column: 16, scope: !2243)
!2245 = !DILocation(line: 578, column: 9, scope: !2243)
!2246 = !DILocation(line: 580, column: 7, scope: !2223)
!2247 = !DILocation(line: 580, column: 23, scope: !2223)
!2248 = !DILocation(line: 582, column: 17, scope: !2223)
!2249 = distinct !{!2249, !2234, !2250, !1204}
!2250 = !DILocation(line: 583, column: 5, scope: !2210)
!2251 = !DILocation(line: 585, column: 3, scope: !2210)
!2252 = distinct !DISubprogram(name: "parse_block_signal_params", scope: !2, file: !2, line: 634, type: !2211, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2253)
!2253 = !{!2254, !2255, !2256, !2257, !2258}
!2254 = !DILocalVariable(name: "arg", arg: 1, scope: !2252, file: !2, line: 634, type: !169)
!2255 = !DILocalVariable(name: "block", arg: 2, scope: !2252, file: !2, line: 634, type: !231)
!2256 = !DILocalVariable(name: "optarg_writable", scope: !2252, file: !2, line: 654, type: !163)
!2257 = !DILocalVariable(name: "opt_sig", scope: !2252, file: !2, line: 656, type: !163)
!2258 = !DILocalVariable(name: "signum", scope: !2259, file: !2, line: 659, type: !122)
!2259 = distinct !DILexicalBlock(scope: !2252, file: !2, line: 658, column: 5)
!2260 = !DILocation(line: 0, scope: !2252)
!2261 = !DILocation(line: 636, column: 9, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2252, file: !2, line: 636, column: 7)
!2263 = !DILocation(line: 636, column: 7, scope: !2252)
!2264 = !DILocation(line: 642, column: 14, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2262, file: !2, line: 642, column: 12)
!2266 = !DILocation(line: 642, column: 12, scope: !2262)
!2267 = !DILocation(line: 645, column: 7, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2265, file: !2, line: 643, column: 5)
!2269 = !DILocation(line: 646, column: 7, scope: !2268)
!2270 = !DILocation(line: 647, column: 5, scope: !2268)
!2271 = !DILocation(line: 639, column: 19, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2262, file: !2, line: 637, column: 5)
!2273 = !DILocation(line: 639, column: 7, scope: !2272)
!2274 = !DILocation(line: 640, column: 20, scope: !2272)
!2275 = !DILocation(line: 640, column: 7, scope: !2272)
!2276 = !DILocation(line: 649, column: 20, scope: !2252)
!2277 = !DILocation(line: 651, column: 7, scope: !2252)
!2278 = !DILocation(line: 654, column: 27, scope: !2252)
!2279 = !DILocation(line: 656, column: 19, scope: !2252)
!2280 = !DILocation(line: 657, column: 3, scope: !2252)
!2281 = !DILocation(line: 659, column: 20, scope: !2259)
!2282 = !DILocation(line: 0, scope: !2259)
!2283 = !DILocation(line: 661, column: 18, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2259, file: !2, line: 661, column: 11)
!2285 = !DILocation(line: 661, column: 11, scope: !2259)
!2286 = !DILocation(line: 662, column: 9, scope: !2284)
!2287 = !DILocation(line: 663, column: 11, scope: !2259)
!2288 = !DILocation(line: 663, column: 18, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2259, file: !2, line: 663, column: 11)
!2290 = !DILocation(line: 664, column: 16, scope: !2289)
!2291 = !DILocation(line: 664, column: 9, scope: !2289)
!2292 = !DILocation(line: 666, column: 11, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2259, file: !2, line: 666, column: 11)
!2294 = !DILocation(line: 666, column: 73, scope: !2293)
!2295 = !DILocation(line: 666, column: 11, scope: !2259)
!2296 = !DILocation(line: 668, column: 15, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2293, file: !2, line: 667, column: 9)
!2298 = !DILocation(line: 669, column: 13, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2297, file: !2, line: 668, column: 15)
!2300 = !DILocation(line: 674, column: 9, scope: !2293)
!2301 = !DILocation(line: 676, column: 17, scope: !2259)
!2302 = distinct !{!2302, !2280, !2303, !1204}
!2303 = !DILocation(line: 677, column: 5, scope: !2252)
!2304 = !DILocation(line: 679, column: 3, scope: !2252)
!2305 = !DILocation(line: 680, column: 1, scope: !2252)
!2306 = distinct !DISubprogram(name: "check_start_new_arg", scope: !2, file: !2, line: 313, type: !1610, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2307)
!2307 = !{!2308, !2309}
!2308 = !DILocalVariable(name: "ss", arg: 1, scope: !2306, file: !2, line: 313, type: !1593)
!2309 = !DILocalVariable(name: "argc", scope: !2310, file: !2, line: 318, type: !122)
!2310 = distinct !DILexicalBlock(scope: !2311, file: !2, line: 316, column: 5)
!2311 = distinct !DILexicalBlock(scope: !2306, file: !2, line: 315, column: 7)
!2312 = !DILocation(line: 0, scope: !2306)
!2313 = !DILocation(line: 315, column: 11, scope: !2311)
!2314 = !DILocation(line: 315, column: 7, scope: !2306)
!2315 = !DILocation(line: 0, scope: !1590, inlinedAt: !2316)
!2316 = distinct !DILocation(line: 317, column: 7, scope: !2310)
!2317 = !DILocation(line: 303, column: 39, scope: !1590, inlinedAt: !2316)
!2318 = !DILocation(line: 303, column: 48, scope: !1590, inlinedAt: !2316)
!2319 = !DILocation(line: 303, column: 35, scope: !1590, inlinedAt: !2316)
!2320 = !DILocation(line: 303, column: 24, scope: !1590, inlinedAt: !2316)
!2321 = !DILocation(line: 304, column: 11, scope: !1604, inlinedAt: !2316)
!2322 = !DILocation(line: 304, column: 22, scope: !1604, inlinedAt: !2316)
!2323 = !DILocation(line: 304, column: 41, scope: !1604, inlinedAt: !2316)
!2324 = !DILocation(line: 304, column: 7, scope: !1590, inlinedAt: !2316)
!2325 = !DILocation(line: 0, scope: !1609, inlinedAt: !2326)
!2326 = distinct !DILocation(line: 305, column: 5, scope: !1604, inlinedAt: !2316)
!2327 = !DILocation(line: 294, column: 14, scope: !1609, inlinedAt: !2326)
!2328 = !DILocation(line: 294, column: 12, scope: !1609, inlinedAt: !2326)
!2329 = !DILocation(line: 296, column: 27, scope: !1609, inlinedAt: !2326)
!2330 = !DILocation(line: 296, column: 21, scope: !1609, inlinedAt: !2326)
!2331 = !DILocation(line: 296, column: 48, scope: !1609, inlinedAt: !2326)
!2332 = !DILocation(line: 0, scope: !1624, inlinedAt: !2333)
!2333 = distinct !DILocation(line: 296, column: 3, scope: !1609, inlinedAt: !2326)
!2334 = !DILocation(line: 36, column: 10, scope: !1624, inlinedAt: !2333)
!2335 = !DILocation(line: 306, column: 18, scope: !1590, inlinedAt: !2316)
!2336 = !DILocation(line: 306, column: 29, scope: !1590, inlinedAt: !2316)
!2337 = !DILocation(line: 305, column: 5, scope: !1604, inlinedAt: !2316)
!2338 = !DILocation(line: 306, column: 23, scope: !1590, inlinedAt: !2316)
!2339 = !DILocation(line: 306, column: 3, scope: !1590, inlinedAt: !2316)
!2340 = !DILocation(line: 306, column: 56, scope: !1590, inlinedAt: !2316)
!2341 = !DILocation(line: 307, column: 58, scope: !1590, inlinedAt: !2316)
!2342 = !DILocation(line: 307, column: 24, scope: !1590, inlinedAt: !2316)
!2343 = !DILocation(line: 307, column: 7, scope: !1590, inlinedAt: !2316)
!2344 = !DILocation(line: 307, column: 16, scope: !1590, inlinedAt: !2316)
!2345 = !DILocation(line: 307, column: 3, scope: !1590, inlinedAt: !2316)
!2346 = !DILocation(line: 307, column: 22, scope: !1590, inlinedAt: !2316)
!2347 = !DILocation(line: 0, scope: !2310)
!2348 = !DILocation(line: 319, column: 15, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2310, file: !2, line: 319, column: 11)
!2350 = !DILocation(line: 319, column: 40, scope: !2349)
!2351 = !DILocation(line: 319, column: 34, scope: !2349)
!2352 = !DILocation(line: 319, column: 51, scope: !2349)
!2353 = !DILocation(line: 319, column: 29, scope: !2349)
!2354 = !DILocation(line: 319, column: 26, scope: !2349)
!2355 = !DILocation(line: 319, column: 11, scope: !2310)
!2356 = !DILocation(line: 0, scope: !1609, inlinedAt: !2357)
!2357 = distinct !DILocation(line: 320, column: 9, scope: !2349)
!2358 = !DILocation(line: 293, column: 39, scope: !1609, inlinedAt: !2357)
!2359 = !DILocation(line: 293, column: 35, scope: !1609, inlinedAt: !2357)
!2360 = !DILocation(line: 293, column: 24, scope: !1609, inlinedAt: !2357)
!2361 = !DILocation(line: 294, column: 14, scope: !1609, inlinedAt: !2357)
!2362 = !DILocation(line: 294, column: 12, scope: !1609, inlinedAt: !2357)
!2363 = !DILocation(line: 296, column: 27, scope: !1609, inlinedAt: !2357)
!2364 = !DILocation(line: 296, column: 21, scope: !1609, inlinedAt: !2357)
!2365 = !DILocation(line: 296, column: 48, scope: !1609, inlinedAt: !2357)
!2366 = !DILocation(line: 0, scope: !1624, inlinedAt: !2367)
!2367 = distinct !DILocation(line: 296, column: 3, scope: !1609, inlinedAt: !2357)
!2368 = !DILocation(line: 36, column: 10, scope: !1624, inlinedAt: !2367)
!2369 = !DILocation(line: 320, column: 9, scope: !2349)
!2370 = !DILocation(line: 321, column: 32, scope: !2310)
!2371 = !DILocation(line: 321, column: 28, scope: !2310)
!2372 = !DILocation(line: 321, column: 7, scope: !2310)
!2373 = !DILocation(line: 321, column: 26, scope: !2310)
!2374 = !DILocation(line: 322, column: 16, scope: !2310)
!2375 = !DILocation(line: 323, column: 15, scope: !2310)
!2376 = !DILocation(line: 324, column: 5, scope: !2310)
!2377 = !DILocation(line: 325, column: 1, scope: !2306)
!2378 = !DISubprogram(name: "free", scope: !1278, file: !1278, line: 555, type: !2379, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{null, !164}
!2381 = !DISubprogram(name: "unsetenv", scope: !1278, file: !1278, line: 664, type: !2382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!122, !169}
!2384 = !DISubprogram(name: "__errno_location", scope: !2385, file: !2385, line: 37, type: !2386, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2385 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!2386 = !DISubroutineType(types: !2387)
!2387 = !{!524}
!2388 = !DISubprogram(name: "putenv", scope: !1278, file: !1278, line: 654, type: !2389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2389 = !DISubroutineType(types: !2390)
!2390 = !{!122, !163}
!2391 = !DISubprogram(name: "sigaction", scope: !176, file: !176, line: 243, type: !2392, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{!122, !122, !2394, !2397}
!2394 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2395)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1898)
!2397 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2398)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!2399 = !DISubprogram(name: "__builtin___snprintf_chk", scope: !2, file: !2, line: 623, type: !2400, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{!122, !2402, !168, !122, !168, !1148, null}
!2402 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !163)
!2403 = !DISubprogram(name: "sigemptyset", scope: !176, file: !176, line: 199, type: !2404, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{!122, !2406}
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!2407 = !DISubprogram(name: "sigprocmask", scope: !176, file: !176, line: 232, type: !2408, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{!122, !122, !2410, !2413}
!2410 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2411)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !548)
!2413 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2406)
!2414 = !DISubprogram(name: "sigismember", scope: !176, file: !176, line: 211, type: !2415, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{!122, !2411, !122}
!2417 = !DISubprogram(name: "sigaddset", scope: !176, file: !176, line: 205, type: !2418, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2418 = !DISubroutineType(types: !2419)
!2419 = !{!122, !2406, !122}
!2420 = !DISubprogram(name: "sigdelset", scope: !176, file: !176, line: 208, type: !2418, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2421 = !DISubprogram(name: "chdir", scope: !2422, file: !2422, line: 517, type: !2382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2422 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!2423 = !DISubprogram(name: "execvp", scope: !2422, file: !2422, line: 599, type: !2424, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{!122, !169, !241}
!2426 = !DISubprogram(name: "strpbrk", scope: !1274, file: !1274, line: 323, type: !2200, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2427 = !DISubprogram(name: "sigfillset", scope: !176, file: !176, line: 202, type: !2404, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2428 = !DISubprogram(name: "strtok", scope: !1274, file: !1274, line: 356, type: !2429, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{!163, !2402, !1148}
!2431 = distinct !DISubprogram(name: "operand2sig", scope: !642, file: !642, line: 36, type: !2382, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !991, retainedNodes: !2432)
!2432 = !{!2433, !2434, !2435, !2438, !2439, !2440, !2442}
!2433 = !DILocalVariable(name: "operand", arg: 1, scope: !2431, file: !642, line: 36, type: !169)
!2434 = !DILocalVariable(name: "signum", scope: !2431, file: !642, line: 38, type: !122)
!2435 = !DILocalVariable(name: "endp", scope: !2436, file: !642, line: 53, type: !163)
!2436 = distinct !DILexicalBlock(scope: !2437, file: !642, line: 41, column: 5)
!2437 = distinct !DILexicalBlock(scope: !2431, file: !642, line: 40, column: 7)
!2438 = !DILocalVariable(name: "l", scope: !2436, file: !642, line: 54, type: !174)
!2439 = !DILocalVariable(name: "i", scope: !2436, file: !642, line: 55, type: !122)
!2440 = !DILocalVariable(name: "upcased", scope: !2441, file: !642, line: 70, type: !163)
!2441 = distinct !DILexicalBlock(scope: !2437, file: !642, line: 67, column: 5)
!2442 = !DILocalVariable(name: "p", scope: !2443, file: !642, line: 71, type: !163)
!2443 = distinct !DILexicalBlock(scope: !2441, file: !642, line: 71, column: 7)
!2444 = distinct !DIAssignID()
!2445 = !DILocation(line: 0, scope: !2431)
!2446 = distinct !DIAssignID()
!2447 = !DILocation(line: 0, scope: !2436)
!2448 = !DILocation(line: 38, column: 3, scope: !2431)
!2449 = !DILocation(line: 40, column: 18, scope: !2437)
!2450 = !DILocalVariable(name: "c", arg: 1, scope: !2451, file: !1527, line: 233, type: !122)
!2451 = distinct !DISubprogram(name: "c_isdigit", scope: !1527, file: !1527, line: 233, type: !1528, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !991, retainedNodes: !2452)
!2452 = !{!2450}
!2453 = !DILocation(line: 0, scope: !2451, inlinedAt: !2454)
!2454 = distinct !DILocation(line: 40, column: 7, scope: !2437)
!2455 = !DILocation(line: 235, column: 3, scope: !2451, inlinedAt: !2454)
!2456 = !DILocation(line: 40, column: 7, scope: !2431)
!2457 = !DILocation(line: 53, column: 7, scope: !2436)
!2458 = !DILocation(line: 54, column: 21, scope: !2436)
!2459 = !DILocation(line: 54, column: 27, scope: !2436)
!2460 = !DILocation(line: 54, column: 32, scope: !2436)
!2461 = !DILocation(line: 55, column: 15, scope: !2436)
!2462 = !DILocation(line: 56, column: 28, scope: !2436)
!2463 = !DILocation(line: 56, column: 25, scope: !2436)
!2464 = !DILocation(line: 56, column: 33, scope: !2436)
!2465 = !DILocation(line: 56, column: 36, scope: !2436)
!2466 = !DILocation(line: 56, column: 42, scope: !2436)
!2467 = !DILocation(line: 56, column: 45, scope: !2436)
!2468 = !DILocation(line: 56, column: 51, scope: !2436)
!2469 = distinct !DIAssignID()
!2470 = !DILocation(line: 58, column: 11, scope: !2436)
!2471 = !DILocation(line: 58, column: 18, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2436, file: !642, line: 58, column: 11)
!2473 = !DILocation(line: 65, column: 5, scope: !2437)
!2474 = !DILocation(line: 65, column: 5, scope: !2436)
!2475 = !DILocation(line: 70, column: 23, scope: !2441)
!2476 = !DILocation(line: 0, scope: !2441)
!2477 = !DILocation(line: 0, scope: !2443)
!2478 = !DILocation(line: 71, column: 31, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2443, file: !642, line: 71, column: 7)
!2480 = !DILocation(line: 71, column: 7, scope: !2443)
!2481 = !DILocation(line: 77, column: 13, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2441, file: !642, line: 77, column: 11)
!2483 = !DILocation(line: 77, column: 40, scope: !2482)
!2484 = !DILocation(line: 78, column: 13, scope: !2482)
!2485 = !DILocation(line: 72, column: 13, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2479, file: !642, line: 72, column: 13)
!2487 = !DILocation(line: 72, column: 13, scope: !2479)
!2488 = !DILocation(line: 73, column: 14, scope: !2486)
!2489 = !DILocation(line: 73, column: 11, scope: !2486)
!2490 = !DILocation(line: 71, column: 36, scope: !2479)
!2491 = distinct !{!2491, !2480, !2492, !1204}
!2492 = !DILocation(line: 73, column: 23, scope: !2443)
!2493 = !DILocation(line: 78, column: 17, scope: !2482)
!2494 = !DILocation(line: 78, column: 28, scope: !2482)
!2495 = !DILocation(line: 78, column: 35, scope: !2482)
!2496 = !DILocation(line: 78, column: 38, scope: !2482)
!2497 = !DILocation(line: 78, column: 49, scope: !2482)
!2498 = !DILocation(line: 78, column: 56, scope: !2482)
!2499 = !DILocation(line: 78, column: 59, scope: !2482)
!2500 = !DILocation(line: 78, column: 70, scope: !2482)
!2501 = !DILocation(line: 79, column: 17, scope: !2482)
!2502 = !DILocation(line: 79, column: 37, scope: !2482)
!2503 = !DILocation(line: 79, column: 20, scope: !2482)
!2504 = !DILocation(line: 79, column: 51, scope: !2482)
!2505 = !DILocation(line: 77, column: 11, scope: !2441)
!2506 = !DILocation(line: 80, column: 16, scope: !2482)
!2507 = distinct !DIAssignID()
!2508 = !DILocation(line: 80, column: 9, scope: !2482)
!2509 = !DILocation(line: 82, column: 7, scope: !2441)
!2510 = !DILocation(line: 85, column: 11, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2431, file: !642, line: 85, column: 7)
!2512 = !DILocation(line: 85, column: 18, scope: !2511)
!2513 = !DILocation(line: 87, column: 7, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2511, file: !642, line: 86, column: 5)
!2515 = !DILocation(line: 88, column: 7, scope: !2514)
!2516 = !DILocation(line: 92, column: 1, scope: !2431)
!2517 = !DISubprogram(name: "strtol", scope: !1278, file: !1278, line: 177, type: !2518, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{!174, !1148, !2520, !122}
!2520 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !226)
!2521 = distinct !DISubprogram(name: "c_isalnum", scope: !2522, file: !2522, line: 169, type: !1528, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !995, retainedNodes: !2523)
!2522 = !DIFile(filename: "lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!2523 = !{!2524}
!2524 = !DILocalVariable(name: "c", arg: 1, scope: !2521, file: !2522, line: 169, type: !122)
!2525 = !DILocation(line: 0, scope: !2521)
!2526 = !DILocation(line: 171, column: 3, scope: !2521)
!2527 = !DILocation(line: 178, column: 7, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2521, file: !2522, line: 172, column: 5)
!2529 = !DILocation(line: 0, scope: !2528)
!2530 = !DILocation(line: 180, column: 1, scope: !2521)
!2531 = distinct !DISubprogram(name: "c_isalpha", scope: !2522, file: !2522, line: 183, type: !1528, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !995, retainedNodes: !2532)
!2532 = !{!2533}
!2533 = !DILocalVariable(name: "c", arg: 1, scope: !2531, file: !2522, line: 183, type: !122)
!2534 = !DILocation(line: 0, scope: !2531)
!2535 = !DILocation(line: 185, column: 3, scope: !2531)
!2536 = !DILocation(line: 193, column: 1, scope: !2531)
!2537 = distinct !DISubprogram(name: "c_isascii", scope: !2522, file: !2522, line: 198, type: !1528, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !995, retainedNodes: !2538)
!2538 = !{!2539}
!2539 = !DILocalVariable(name: "c", arg: 1, scope: !2537, file: !2522, line: 198, type: !122)
!2540 = !DILocation(line: 0, scope: !2537)
!2541 = !DILocation(line: 200, column: 3, scope: !2537)
!2542 = !DILocation(line: 212, column: 1, scope: !2537)
!2543 = distinct !DISubprogram(name: "c_isblank", scope: !2522, file: !2522, line: 215, type: !1528, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !995, retainedNodes: !2544)
!2544 = !{!2545}
!2545 = !DILocalVariable(name: "c", arg: 1, scope: !2543, file: !2522, line: 215, type: !122)
!2546 = !DILocation(line: 0, scope: !2543)
!2547 = !DILocation(line: 217, column: 12, scope: !2543)
!2548 = !DILocation(line: 217, column: 19, scope: !2543)
!2549 = !DILocation(line: 217, column: 3, scope: !2543)
!2550 = distinct !DISubprogram(name: "c_iscntrl", scope: !2522, file: !2522, line: 221, type: !1528, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !995, retainedNodes: !2551)
!2551 = !{!2552}
!2552 = !DILocalVariable(name: "c", arg: 1, scope: !2550, file: !2522, line: 221, type: !122)
!2553 = !DILocation(line: 0, scope: !2550)
!2554 = !DILocation(line: 223, column: 3, scope: !2550)
!2555 = !DILocation(line: 228, column: 7, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2550, file: !2522, line: 224, column: 5)
!2557 = !DILocation(line: 0, scope: !2556)
!2558 = !DILocation(line: 230, column: 1, scope: !2550)
!2559 = distinct !DISubprogram(name: "c_isdigit", scope: !2522, file: !2522, line: 233, type: !1528, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !995, retainedNodes: !2560)
!2560 = !{!2561}
!2561 = !DILocalVariable(name: "c", arg: 1, scope: !2559, file: !2522, line: 233, type: !122)
!2562 = !DILocation(line: 0, scope: !2559)
!2563 = !DILocation(line: 235, column: 3, scope: !2559)
!2564 = !DILocation(line: 242, column: 1, scope: !2559)
!2565 = distinct !DISubprogram(name: "c_isgraph", scope: !2522, file: !2522, line: 245, type: !1528, scopeLine: 246, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !995, retainedNodes: !2566)
!2566 = !{!2567}
!2567 = !DILocalVariable(name: "c", arg: 1, scope: !2565, file: !2522, line: 245, type: !122)
!2568 = !DILocation(line: 0, scope: !2565)
!2569 = !DILocation(line: 247, column: 3, scope: !2565)
!2570 = !DILocation(line: 257, column: 1, scope: !2565)
!2571 = distinct !DISubprogram(name: "c_islower", scope: !2522, file: !2522, line: 260, type: !1528, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !995, retainedNodes: !2572)
!2572 = !{!2573}
!2573 = !DILocalVariable(name: "c", arg: 1, scope: !2571, file: !2522, line: 260, type: !122)
!2574 = !DILocation(line: 0, scope: !2571)
!2575 = !DILocation(line: 262, column: 3, scope: !2571)
!2576 = !DILocation(line: 269, column: 1, scope: !2571)
!2577 = distinct !DISubprogram(name: "c_isprint", scope: !2522, file: !2522, line: 272, type: !1528, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !995, retainedNodes: !2578)
!2578 = !{!2579}
!2579 = !DILocalVariable(name: "c", arg: 1, scope: !2577, file: !2522, line: 272, type: !122)
!2580 = !DILocation(line: 0, scope: !2577)
!2581 = !DILocation(line: 274, column: 3, scope: !2577)
!2582 = !DILocation(line: 285, column: 1, scope: !2577)
!2583 = distinct !DISubprogram(name: "c_ispunct", scope: !2522, file: !2522, line: 288, type: !1528, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !995, retainedNodes: !2584)
!2584 = !{!2585}
!2585 = !DILocalVariable(name: "c", arg: 1, scope: !2583, file: !2522, line: 288, type: !122)
!2586 = !DILocation(line: 0, scope: !2583)
!2587 = !DILocation(line: 290, column: 3, scope: !2583)
!2588 = !DILocation(line: 295, column: 7, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2583, file: !2522, line: 291, column: 5)
!2590 = !DILocation(line: 0, scope: !2589)
!2591 = !DILocation(line: 297, column: 1, scope: !2583)
!2592 = distinct !DISubprogram(name: "c_isspace", scope: !2522, file: !2522, line: 300, type: !1528, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !995, retainedNodes: !2593)
!2593 = !{!2594}
!2594 = !DILocalVariable(name: "c", arg: 1, scope: !2592, file: !2522, line: 300, type: !122)
!2595 = !DILocation(line: 0, scope: !2592)
!2596 = !DILocation(line: 302, column: 3, scope: !2592)
!2597 = !DILocation(line: 309, column: 1, scope: !2592)
!2598 = distinct !DISubprogram(name: "c_isupper", scope: !2522, file: !2522, line: 312, type: !1528, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !995, retainedNodes: !2599)
!2599 = !{!2600}
!2600 = !DILocalVariable(name: "c", arg: 1, scope: !2598, file: !2522, line: 312, type: !122)
!2601 = !DILocation(line: 0, scope: !2598)
!2602 = !DILocation(line: 314, column: 3, scope: !2598)
!2603 = !DILocation(line: 321, column: 1, scope: !2598)
!2604 = distinct !DISubprogram(name: "c_isxdigit", scope: !2522, file: !2522, line: 324, type: !1528, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !995, retainedNodes: !2605)
!2605 = !{!2606}
!2606 = !DILocalVariable(name: "c", arg: 1, scope: !2604, file: !2522, line: 324, type: !122)
!2607 = !DILocation(line: 0, scope: !2604)
!2608 = !DILocation(line: 326, column: 3, scope: !2604)
!2609 = !DILocation(line: 334, column: 1, scope: !2604)
!2610 = distinct !DISubprogram(name: "c_tolower", scope: !2522, file: !2522, line: 337, type: !2611, scopeLine: 338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !995, retainedNodes: !2613)
!2611 = !DISubroutineType(types: !2612)
!2612 = !{!122, !122}
!2613 = !{!2614}
!2614 = !DILocalVariable(name: "c", arg: 1, scope: !2610, file: !2522, line: 337, type: !122)
!2615 = !DILocation(line: 0, scope: !2610)
!2616 = !DILocation(line: 339, column: 3, scope: !2610)
!2617 = !DILocation(line: 346, column: 1, scope: !2610)
!2618 = distinct !DISubprogram(name: "c_toupper", scope: !2522, file: !2522, line: 349, type: !2611, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !995, retainedNodes: !2619)
!2619 = !{!2620}
!2620 = !DILocalVariable(name: "c", arg: 1, scope: !2618, file: !2522, line: 349, type: !122)
!2621 = !DILocation(line: 0, scope: !2618)
!2622 = !DILocation(line: 351, column: 3, scope: !2618)
!2623 = !DILocation(line: 358, column: 1, scope: !2618)
!2624 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !653, file: !653, line: 50, type: !1102, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !652, retainedNodes: !2625)
!2625 = !{!2626}
!2626 = !DILocalVariable(name: "file", arg: 1, scope: !2624, file: !653, line: 50, type: !169)
!2627 = !DILocation(line: 0, scope: !2624)
!2628 = !DILocation(line: 52, column: 13, scope: !2624)
!2629 = !DILocation(line: 53, column: 1, scope: !2624)
!2630 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !653, file: !653, line: 87, type: !2631, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !652, retainedNodes: !2633)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{null, !231}
!2633 = !{!2634}
!2634 = !DILocalVariable(name: "ignore", arg: 1, scope: !2630, file: !653, line: 87, type: !231)
!2635 = !DILocation(line: 0, scope: !2630)
!2636 = !DILocation(line: 89, column: 16, scope: !2630)
!2637 = !{!1438, !1438, i64 0}
!2638 = !DILocation(line: 90, column: 1, scope: !2630)
!2639 = distinct !DISubprogram(name: "close_stdout", scope: !653, file: !653, line: 116, type: !716, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !652, retainedNodes: !2640)
!2640 = !{!2641}
!2641 = !DILocalVariable(name: "write_error", scope: !2642, file: !653, line: 121, type: !169)
!2642 = distinct !DILexicalBlock(scope: !2643, file: !653, line: 120, column: 5)
!2643 = distinct !DILexicalBlock(scope: !2639, file: !653, line: 118, column: 7)
!2644 = !DILocation(line: 118, column: 21, scope: !2643)
!2645 = !DILocation(line: 118, column: 7, scope: !2643)
!2646 = !DILocation(line: 118, column: 29, scope: !2643)
!2647 = !DILocation(line: 119, column: 7, scope: !2643)
!2648 = !DILocation(line: 119, column: 12, scope: !2643)
!2649 = !DILocation(line: 119, column: 25, scope: !2643)
!2650 = !DILocation(line: 119, column: 28, scope: !2643)
!2651 = !DILocation(line: 119, column: 34, scope: !2643)
!2652 = !DILocation(line: 118, column: 7, scope: !2639)
!2653 = !DILocation(line: 121, column: 33, scope: !2642)
!2654 = !DILocation(line: 0, scope: !2642)
!2655 = !DILocation(line: 122, column: 11, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2642, file: !653, line: 122, column: 11)
!2657 = !DILocation(line: 0, scope: !2656)
!2658 = !DILocation(line: 122, column: 11, scope: !2642)
!2659 = !DILocation(line: 123, column: 9, scope: !2656)
!2660 = !DILocation(line: 126, column: 9, scope: !2656)
!2661 = !DILocation(line: 128, column: 14, scope: !2642)
!2662 = !DILocation(line: 128, column: 7, scope: !2642)
!2663 = !DILocation(line: 133, column: 42, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2639, file: !653, line: 133, column: 7)
!2665 = !DILocation(line: 133, column: 28, scope: !2664)
!2666 = !DILocation(line: 133, column: 50, scope: !2664)
!2667 = !DILocation(line: 133, column: 7, scope: !2639)
!2668 = !DILocation(line: 134, column: 12, scope: !2664)
!2669 = !DILocation(line: 134, column: 5, scope: !2664)
!2670 = !DILocation(line: 135, column: 1, scope: !2639)
!2671 = !DISubprogram(name: "_exit", scope: !2422, file: !2422, line: 624, type: !178, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2672 = distinct !DISubprogram(name: "verror", scope: !668, file: !668, line: 251, type: !2673, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !2675)
!2673 = !DISubroutineType(types: !2674)
!2674 = !{null, !122, !122, !169, !678}
!2675 = !{!2676, !2677, !2678, !2679}
!2676 = !DILocalVariable(name: "status", arg: 1, scope: !2672, file: !668, line: 251, type: !122)
!2677 = !DILocalVariable(name: "errnum", arg: 2, scope: !2672, file: !668, line: 251, type: !122)
!2678 = !DILocalVariable(name: "message", arg: 3, scope: !2672, file: !668, line: 251, type: !169)
!2679 = !DILocalVariable(name: "args", arg: 4, scope: !2672, file: !668, line: 251, type: !678)
!2680 = !DILocation(line: 0, scope: !2672)
!2681 = !DILocation(line: 261, column: 3, scope: !2672)
!2682 = !DILocation(line: 265, column: 7, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2672, file: !668, line: 265, column: 7)
!2684 = !DILocation(line: 265, column: 7, scope: !2672)
!2685 = !DILocation(line: 266, column: 5, scope: !2683)
!2686 = !DILocation(line: 272, column: 7, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2683, file: !668, line: 268, column: 5)
!2688 = !DILocation(line: 276, column: 3, scope: !2672)
!2689 = !{i64 0, i64 8, !1075, i64 8, i64 8, !1075, i64 16, i64 8, !1075, i64 24, i64 4, !1157, i64 28, i64 4, !1157}
!2690 = !DILocation(line: 282, column: 1, scope: !2672)
!2691 = distinct !DISubprogram(name: "flush_stdout", scope: !668, file: !668, line: 163, type: !716, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !2692)
!2692 = !{!2693}
!2693 = !DILocalVariable(name: "stdout_fd", scope: !2691, file: !668, line: 166, type: !122)
!2694 = !DILocation(line: 0, scope: !2691)
!2695 = !DILocalVariable(name: "fd", arg: 1, scope: !2696, file: !668, line: 145, type: !122)
!2696 = distinct !DISubprogram(name: "is_open", scope: !668, file: !668, line: 145, type: !2611, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !2697)
!2697 = !{!2695}
!2698 = !DILocation(line: 0, scope: !2696, inlinedAt: !2699)
!2699 = distinct !DILocation(line: 182, column: 25, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2691, file: !668, line: 182, column: 7)
!2701 = !DILocation(line: 157, column: 15, scope: !2696, inlinedAt: !2699)
!2702 = !DILocation(line: 157, column: 12, scope: !2696, inlinedAt: !2699)
!2703 = !DILocation(line: 182, column: 7, scope: !2691)
!2704 = !DILocation(line: 184, column: 5, scope: !2700)
!2705 = !DILocation(line: 185, column: 1, scope: !2691)
!2706 = distinct !DISubprogram(name: "error_tail", scope: !668, file: !668, line: 219, type: !2673, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !2707)
!2707 = !{!2708, !2709, !2710, !2711}
!2708 = !DILocalVariable(name: "status", arg: 1, scope: !2706, file: !668, line: 219, type: !122)
!2709 = !DILocalVariable(name: "errnum", arg: 2, scope: !2706, file: !668, line: 219, type: !122)
!2710 = !DILocalVariable(name: "message", arg: 3, scope: !2706, file: !668, line: 219, type: !169)
!2711 = !DILocalVariable(name: "args", arg: 4, scope: !2706, file: !668, line: 219, type: !678)
!2712 = distinct !DIAssignID()
!2713 = !DILocation(line: 0, scope: !2706)
!2714 = !DILocation(line: 229, column: 13, scope: !2706)
!2715 = !DILocation(line: 135, column: 10, scope: !2716, inlinedAt: !2758)
!2716 = distinct !DISubprogram(name: "vfprintf", scope: !1144, file: !1144, line: 132, type: !2717, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !2754)
!2717 = !DISubroutineType(types: !2718)
!2718 = !{!122, !2719, !1148, !680}
!2719 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2720)
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !328, line: 7, baseType: !2722)
!2722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !330, line: 49, size: 1728, elements: !2723)
!2723 = !{!2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753}
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2722, file: !330, line: 51, baseType: !122, size: 32)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2722, file: !330, line: 54, baseType: !163, size: 64, offset: 64)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2722, file: !330, line: 55, baseType: !163, size: 64, offset: 128)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2722, file: !330, line: 56, baseType: !163, size: 64, offset: 192)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2722, file: !330, line: 57, baseType: !163, size: 64, offset: 256)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2722, file: !330, line: 58, baseType: !163, size: 64, offset: 320)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2722, file: !330, line: 59, baseType: !163, size: 64, offset: 384)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2722, file: !330, line: 60, baseType: !163, size: 64, offset: 448)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2722, file: !330, line: 61, baseType: !163, size: 64, offset: 512)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2722, file: !330, line: 64, baseType: !163, size: 64, offset: 576)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2722, file: !330, line: 65, baseType: !163, size: 64, offset: 640)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2722, file: !330, line: 66, baseType: !163, size: 64, offset: 704)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2722, file: !330, line: 68, baseType: !345, size: 64, offset: 768)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2722, file: !330, line: 70, baseType: !2738, size: 64, offset: 832)
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2722, file: !330, line: 72, baseType: !122, size: 32, offset: 896)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2722, file: !330, line: 73, baseType: !122, size: 32, offset: 928)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2722, file: !330, line: 74, baseType: !352, size: 64, offset: 960)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2722, file: !330, line: 77, baseType: !165, size: 16, offset: 1024)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2722, file: !330, line: 78, baseType: !356, size: 8, offset: 1040)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2722, file: !330, line: 79, baseType: !90, size: 8, offset: 1048)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2722, file: !330, line: 81, baseType: !359, size: 64, offset: 1088)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2722, file: !330, line: 89, baseType: !362, size: 64, offset: 1152)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2722, file: !330, line: 91, baseType: !364, size: 64, offset: 1216)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2722, file: !330, line: 92, baseType: !367, size: 64, offset: 1280)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2722, file: !330, line: 93, baseType: !2738, size: 64, offset: 1344)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2722, file: !330, line: 94, baseType: !164, size: 64, offset: 1408)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2722, file: !330, line: 95, baseType: !166, size: 64, offset: 1472)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2722, file: !330, line: 96, baseType: !122, size: 32, offset: 1536)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2722, file: !330, line: 98, baseType: !374, size: 160, offset: 1568)
!2754 = !{!2755, !2756, !2757}
!2755 = !DILocalVariable(name: "__stream", arg: 1, scope: !2716, file: !1144, line: 132, type: !2719)
!2756 = !DILocalVariable(name: "__fmt", arg: 2, scope: !2716, file: !1144, line: 133, type: !1148)
!2757 = !DILocalVariable(name: "__ap", arg: 3, scope: !2716, file: !1144, line: 133, type: !680)
!2758 = distinct !DILocation(line: 229, column: 3, scope: !2706)
!2759 = !{!2760, !2762}
!2760 = distinct !{!2760, !2761, !"vfprintf.inline: argument 0"}
!2761 = distinct !{!2761, !"vfprintf.inline"}
!2762 = distinct !{!2762, !2761, !"vfprintf.inline: argument 1"}
!2763 = !DILocation(line: 229, column: 3, scope: !2706)
!2764 = !DILocation(line: 0, scope: !2716, inlinedAt: !2758)
!2765 = !DILocation(line: 232, column: 3, scope: !2706)
!2766 = !DILocation(line: 233, column: 7, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2706, file: !668, line: 233, column: 7)
!2768 = !DILocation(line: 233, column: 7, scope: !2706)
!2769 = !DILocalVariable(name: "errbuf", scope: !2770, file: !668, line: 193, type: !2774)
!2770 = distinct !DISubprogram(name: "print_errno_message", scope: !668, file: !668, line: 188, type: !178, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !2771)
!2771 = !{!2772, !2773, !2769}
!2772 = !DILocalVariable(name: "errnum", arg: 1, scope: !2770, file: !668, line: 188, type: !122)
!2773 = !DILocalVariable(name: "s", scope: !2770, file: !668, line: 190, type: !169)
!2774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !2775)
!2775 = !{!2776}
!2776 = !DISubrange(count: 1024)
!2777 = !DILocation(line: 0, scope: !2770, inlinedAt: !2778)
!2778 = distinct !DILocation(line: 234, column: 5, scope: !2767)
!2779 = !DILocation(line: 193, column: 3, scope: !2770, inlinedAt: !2778)
!2780 = !DILocation(line: 195, column: 7, scope: !2770, inlinedAt: !2778)
!2781 = !DILocation(line: 207, column: 9, scope: !2782, inlinedAt: !2778)
!2782 = distinct !DILexicalBlock(scope: !2770, file: !668, line: 207, column: 7)
!2783 = !DILocation(line: 207, column: 7, scope: !2770, inlinedAt: !2778)
!2784 = !DILocation(line: 208, column: 9, scope: !2782, inlinedAt: !2778)
!2785 = !DILocation(line: 208, column: 5, scope: !2782, inlinedAt: !2778)
!2786 = !DILocation(line: 214, column: 3, scope: !2770, inlinedAt: !2778)
!2787 = !DILocation(line: 216, column: 1, scope: !2770, inlinedAt: !2778)
!2788 = !DILocation(line: 234, column: 5, scope: !2767)
!2789 = !DILocation(line: 238, column: 3, scope: !2706)
!2790 = !DILocalVariable(name: "__c", arg: 1, scope: !2791, file: !2792, line: 101, type: !122)
!2791 = distinct !DISubprogram(name: "putc_unlocked", scope: !2792, file: !2792, line: 101, type: !2793, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !2795)
!2792 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!2793 = !DISubroutineType(types: !2794)
!2794 = !{!122, !122, !2720}
!2795 = !{!2790, !2796}
!2796 = !DILocalVariable(name: "__stream", arg: 2, scope: !2791, file: !2792, line: 101, type: !2720)
!2797 = !DILocation(line: 0, scope: !2791, inlinedAt: !2798)
!2798 = distinct !DILocation(line: 238, column: 3, scope: !2706)
!2799 = !DILocation(line: 103, column: 10, scope: !2791, inlinedAt: !2798)
!2800 = !{!2801, !1076, i64 40}
!2801 = !{!"_IO_FILE", !1158, i64 0, !1076, i64 8, !1076, i64 16, !1076, i64 24, !1076, i64 32, !1076, i64 40, !1076, i64 48, !1076, i64 56, !1076, i64 64, !1076, i64 72, !1076, i64 80, !1076, i64 88, !1076, i64 96, !1076, i64 104, !1158, i64 112, !1158, i64 116, !1355, i64 120, !1199, i64 128, !1077, i64 130, !1077, i64 131, !1076, i64 136, !1355, i64 144, !1076, i64 152, !1076, i64 160, !1076, i64 168, !1076, i64 176, !1355, i64 184, !1158, i64 192, !1077, i64 196}
!2802 = !{!2801, !1076, i64 48}
!2803 = !{!"branch_weights", i32 2000, i32 1}
!2804 = !DILocation(line: 240, column: 3, scope: !2706)
!2805 = !DILocation(line: 241, column: 7, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2706, file: !668, line: 241, column: 7)
!2807 = !DILocation(line: 241, column: 7, scope: !2706)
!2808 = !DILocation(line: 242, column: 5, scope: !2806)
!2809 = !DILocation(line: 243, column: 1, scope: !2706)
!2810 = !DISubprogram(name: "__vfprintf_chk", scope: !1144, file: !1144, line: 96, type: !2811, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2811 = !DISubroutineType(types: !2812)
!2812 = !{!122, !2719, !122, !1148, !680}
!2813 = !DISubprogram(name: "strerror_r", scope: !1274, file: !1274, line: 444, type: !2814, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2814 = !DISubroutineType(types: !2815)
!2815 = !{!163, !122, !163, !166}
!2816 = !DISubprogram(name: "__overflow", scope: !679, file: !679, line: 886, type: !2817, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2817 = !DISubroutineType(types: !2818)
!2818 = !{!122, !2720, !122}
!2819 = !DISubprogram(name: "fflush_unlocked", scope: !679, file: !679, line: 239, type: !2820, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2820 = !DISubroutineType(types: !2821)
!2821 = !{!122, !2720}
!2822 = !DISubprogram(name: "fcntl", scope: !2823, file: !2823, line: 149, type: !2824, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2823 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!2824 = !DISubroutineType(types: !2825)
!2825 = !{!122, !122, !122, null}
!2826 = distinct !DISubprogram(name: "error", scope: !668, file: !668, line: 285, type: !2827, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !2829)
!2827 = !DISubroutineType(types: !2828)
!2828 = !{null, !122, !122, !169, null}
!2829 = !{!2830, !2831, !2832, !2833}
!2830 = !DILocalVariable(name: "status", arg: 1, scope: !2826, file: !668, line: 285, type: !122)
!2831 = !DILocalVariable(name: "errnum", arg: 2, scope: !2826, file: !668, line: 285, type: !122)
!2832 = !DILocalVariable(name: "message", arg: 3, scope: !2826, file: !668, line: 285, type: !169)
!2833 = !DILocalVariable(name: "ap", scope: !2826, file: !668, line: 287, type: !678)
!2834 = distinct !DIAssignID()
!2835 = !DILocation(line: 0, scope: !2826)
!2836 = !DILocation(line: 287, column: 3, scope: !2826)
!2837 = !DILocation(line: 288, column: 3, scope: !2826)
!2838 = !DILocation(line: 289, column: 3, scope: !2826)
!2839 = !DILocation(line: 290, column: 3, scope: !2826)
!2840 = !DILocation(line: 291, column: 1, scope: !2826)
!2841 = !DILocation(line: 0, scope: !675)
!2842 = !DILocation(line: 302, column: 7, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !675, file: !668, line: 302, column: 7)
!2844 = !DILocation(line: 302, column: 7, scope: !675)
!2845 = !DILocation(line: 307, column: 11, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2847, file: !668, line: 307, column: 11)
!2847 = distinct !DILexicalBlock(scope: !2843, file: !668, line: 303, column: 5)
!2848 = !DILocation(line: 307, column: 27, scope: !2846)
!2849 = !DILocation(line: 308, column: 11, scope: !2846)
!2850 = !DILocation(line: 308, column: 28, scope: !2846)
!2851 = !DILocation(line: 308, column: 25, scope: !2846)
!2852 = !DILocation(line: 309, column: 15, scope: !2846)
!2853 = !DILocation(line: 309, column: 33, scope: !2846)
!2854 = !DILocation(line: 310, column: 19, scope: !2846)
!2855 = !DILocation(line: 311, column: 22, scope: !2846)
!2856 = !DILocation(line: 311, column: 56, scope: !2846)
!2857 = !DILocation(line: 307, column: 11, scope: !2847)
!2858 = !DILocation(line: 316, column: 21, scope: !2847)
!2859 = !DILocation(line: 317, column: 23, scope: !2847)
!2860 = !DILocation(line: 318, column: 5, scope: !2847)
!2861 = !DILocation(line: 327, column: 3, scope: !675)
!2862 = !DILocation(line: 331, column: 7, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !675, file: !668, line: 331, column: 7)
!2864 = !DILocation(line: 331, column: 7, scope: !675)
!2865 = !DILocation(line: 332, column: 5, scope: !2863)
!2866 = !DILocation(line: 338, column: 7, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2863, file: !668, line: 334, column: 5)
!2868 = !DILocation(line: 346, column: 3, scope: !675)
!2869 = !DILocation(line: 350, column: 3, scope: !675)
!2870 = !DILocation(line: 356, column: 1, scope: !675)
!2871 = distinct !DISubprogram(name: "error_at_line", scope: !668, file: !668, line: 359, type: !2872, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !2874)
!2872 = !DISubroutineType(types: !2873)
!2873 = !{null, !122, !122, !169, !109, !169, null}
!2874 = !{!2875, !2876, !2877, !2878, !2879, !2880}
!2875 = !DILocalVariable(name: "status", arg: 1, scope: !2871, file: !668, line: 359, type: !122)
!2876 = !DILocalVariable(name: "errnum", arg: 2, scope: !2871, file: !668, line: 359, type: !122)
!2877 = !DILocalVariable(name: "file_name", arg: 3, scope: !2871, file: !668, line: 359, type: !169)
!2878 = !DILocalVariable(name: "line_number", arg: 4, scope: !2871, file: !668, line: 360, type: !109)
!2879 = !DILocalVariable(name: "message", arg: 5, scope: !2871, file: !668, line: 360, type: !169)
!2880 = !DILocalVariable(name: "ap", scope: !2871, file: !668, line: 362, type: !678)
!2881 = distinct !DIAssignID()
!2882 = !DILocation(line: 0, scope: !2871)
!2883 = !DILocation(line: 362, column: 3, scope: !2871)
!2884 = !DILocation(line: 363, column: 3, scope: !2871)
!2885 = !DILocation(line: 364, column: 3, scope: !2871)
!2886 = !DILocation(line: 366, column: 3, scope: !2871)
!2887 = !DILocation(line: 367, column: 1, scope: !2871)
!2888 = distinct !DISubprogram(name: "getprogname", scope: !998, file: !998, line: 54, type: !2889, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !997)
!2889 = !DISubroutineType(types: !2890)
!2890 = !{!169}
!2891 = !DILocation(line: 58, column: 10, scope: !2888)
!2892 = !DILocation(line: 58, column: 3, scope: !2888)
!2893 = distinct !DISubprogram(name: "set_program_name", scope: !721, file: !721, line: 37, type: !1102, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !720, retainedNodes: !2894)
!2894 = !{!2895, !2896, !2897}
!2895 = !DILocalVariable(name: "argv0", arg: 1, scope: !2893, file: !721, line: 37, type: !169)
!2896 = !DILocalVariable(name: "slash", scope: !2893, file: !721, line: 44, type: !169)
!2897 = !DILocalVariable(name: "base", scope: !2893, file: !721, line: 45, type: !169)
!2898 = !DILocation(line: 0, scope: !2893)
!2899 = !DILocation(line: 44, column: 23, scope: !2893)
!2900 = !DILocation(line: 45, column: 22, scope: !2893)
!2901 = !DILocation(line: 46, column: 17, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2893, file: !721, line: 46, column: 7)
!2903 = !DILocation(line: 46, column: 9, scope: !2902)
!2904 = !DILocation(line: 46, column: 25, scope: !2902)
!2905 = !DILocation(line: 46, column: 40, scope: !2902)
!2906 = !DILocalVariable(name: "__s1", arg: 1, scope: !2907, file: !1170, line: 974, type: !1302)
!2907 = distinct !DISubprogram(name: "memeq", scope: !1170, file: !1170, line: 974, type: !2908, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !720, retainedNodes: !2910)
!2908 = !DISubroutineType(types: !2909)
!2909 = !{!231, !1302, !1302, !166}
!2910 = !{!2906, !2911, !2912}
!2911 = !DILocalVariable(name: "__s2", arg: 2, scope: !2907, file: !1170, line: 974, type: !1302)
!2912 = !DILocalVariable(name: "__n", arg: 3, scope: !2907, file: !1170, line: 974, type: !166)
!2913 = !DILocation(line: 0, scope: !2907, inlinedAt: !2914)
!2914 = distinct !DILocation(line: 46, column: 28, scope: !2902)
!2915 = !DILocation(line: 976, column: 11, scope: !2907, inlinedAt: !2914)
!2916 = !DILocation(line: 976, column: 10, scope: !2907, inlinedAt: !2914)
!2917 = !DILocation(line: 46, column: 7, scope: !2893)
!2918 = !DILocation(line: 49, column: 11, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2920, file: !721, line: 49, column: 11)
!2920 = distinct !DILexicalBlock(scope: !2902, file: !721, line: 47, column: 5)
!2921 = !DILocation(line: 49, column: 36, scope: !2919)
!2922 = !DILocation(line: 49, column: 11, scope: !2920)
!2923 = !DILocation(line: 65, column: 16, scope: !2893)
!2924 = !DILocation(line: 71, column: 27, scope: !2893)
!2925 = !DILocation(line: 74, column: 33, scope: !2893)
!2926 = !DILocation(line: 76, column: 1, scope: !2893)
!2927 = !DISubprogram(name: "strrchr", scope: !1274, file: !1274, line: 273, type: !1289, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2928 = distinct !DIAssignID()
!2929 = !DILocation(line: 0, scope: !730)
!2930 = distinct !DIAssignID()
!2931 = !DILocation(line: 40, column: 29, scope: !730)
!2932 = !DILocation(line: 41, column: 19, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !730, file: !731, line: 41, column: 7)
!2934 = !DILocation(line: 41, column: 7, scope: !730)
!2935 = !DILocation(line: 47, column: 3, scope: !730)
!2936 = !DILocation(line: 48, column: 3, scope: !730)
!2937 = !DILocalVariable(name: "ps", arg: 1, scope: !2938, file: !2939, line: 1135, type: !2942)
!2938 = distinct !DISubprogram(name: "mbszero", scope: !2939, file: !2939, line: 1135, type: !2940, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !2943)
!2939 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2940 = !DISubroutineType(types: !2941)
!2941 = !{null, !2942}
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!2943 = !{!2937}
!2944 = !DILocation(line: 0, scope: !2938, inlinedAt: !2945)
!2945 = distinct !DILocation(line: 48, column: 18, scope: !730)
!2946 = !DILocalVariable(name: "__dest", arg: 1, scope: !2947, file: !1563, line: 57, type: !164)
!2947 = distinct !DISubprogram(name: "memset", scope: !1563, file: !1563, line: 57, type: !2948, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !2950)
!2948 = !DISubroutineType(types: !2949)
!2949 = !{!164, !164, !122, !166}
!2950 = !{!2946, !2951, !2952}
!2951 = !DILocalVariable(name: "__ch", arg: 2, scope: !2947, file: !1563, line: 57, type: !122)
!2952 = !DILocalVariable(name: "__len", arg: 3, scope: !2947, file: !1563, line: 57, type: !166)
!2953 = !DILocation(line: 0, scope: !2947, inlinedAt: !2954)
!2954 = distinct !DILocation(line: 1137, column: 3, scope: !2938, inlinedAt: !2945)
!2955 = !DILocation(line: 59, column: 10, scope: !2947, inlinedAt: !2954)
!2956 = !DILocation(line: 49, column: 7, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !730, file: !731, line: 49, column: 7)
!2958 = !DILocation(line: 49, column: 39, scope: !2957)
!2959 = !DILocation(line: 49, column: 44, scope: !2957)
!2960 = !DILocation(line: 54, column: 1, scope: !730)
!2961 = !DISubprogram(name: "mbrtoc32", scope: !742, file: !742, line: 57, type: !2962, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2962 = !DISubroutineType(types: !2963)
!2963 = !{!166, !2964, !1148, !166, !2966}
!2964 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2965)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!2966 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2942)
!2967 = distinct !DISubprogram(name: "clone_quoting_options", scope: !761, file: !761, line: 113, type: !2968, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !2971)
!2968 = !DISubroutineType(types: !2969)
!2969 = !{!2970, !2970}
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!2971 = !{!2972, !2973, !2974}
!2972 = !DILocalVariable(name: "o", arg: 1, scope: !2967, file: !761, line: 113, type: !2970)
!2973 = !DILocalVariable(name: "saved_errno", scope: !2967, file: !761, line: 115, type: !122)
!2974 = !DILocalVariable(name: "p", scope: !2967, file: !761, line: 116, type: !2970)
!2975 = !DILocation(line: 0, scope: !2967)
!2976 = !DILocation(line: 115, column: 21, scope: !2967)
!2977 = !DILocation(line: 116, column: 40, scope: !2967)
!2978 = !DILocation(line: 116, column: 31, scope: !2967)
!2979 = !DILocation(line: 118, column: 9, scope: !2967)
!2980 = !DILocation(line: 119, column: 3, scope: !2967)
!2981 = distinct !DISubprogram(name: "get_quoting_style", scope: !761, file: !761, line: 124, type: !2982, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !2986)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{!784, !2984}
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !799)
!2986 = !{!2987}
!2987 = !DILocalVariable(name: "o", arg: 1, scope: !2981, file: !761, line: 124, type: !2984)
!2988 = !DILocation(line: 0, scope: !2981)
!2989 = !DILocation(line: 126, column: 11, scope: !2981)
!2990 = !DILocation(line: 126, column: 46, scope: !2981)
!2991 = !{!2992, !1158, i64 0}
!2992 = !{!"quoting_options", !1158, i64 0, !1158, i64 4, !1077, i64 8, !1076, i64 40, !1076, i64 48}
!2993 = !DILocation(line: 126, column: 3, scope: !2981)
!2994 = distinct !DISubprogram(name: "set_quoting_style", scope: !761, file: !761, line: 132, type: !2995, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !2997)
!2995 = !DISubroutineType(types: !2996)
!2996 = !{null, !2970, !784}
!2997 = !{!2998, !2999}
!2998 = !DILocalVariable(name: "o", arg: 1, scope: !2994, file: !761, line: 132, type: !2970)
!2999 = !DILocalVariable(name: "s", arg: 2, scope: !2994, file: !761, line: 132, type: !784)
!3000 = !DILocation(line: 0, scope: !2994)
!3001 = !DILocation(line: 134, column: 4, scope: !2994)
!3002 = !DILocation(line: 134, column: 45, scope: !2994)
!3003 = !DILocation(line: 135, column: 1, scope: !2994)
!3004 = distinct !DISubprogram(name: "set_char_quoting", scope: !761, file: !761, line: 143, type: !3005, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !3007)
!3005 = !DISubroutineType(types: !3006)
!3006 = !{!122, !2970, !4, !122}
!3007 = !{!3008, !3009, !3010, !3011, !3012, !3014, !3015}
!3008 = !DILocalVariable(name: "o", arg: 1, scope: !3004, file: !761, line: 143, type: !2970)
!3009 = !DILocalVariable(name: "c", arg: 2, scope: !3004, file: !761, line: 143, type: !4)
!3010 = !DILocalVariable(name: "i", arg: 3, scope: !3004, file: !761, line: 143, type: !122)
!3011 = !DILocalVariable(name: "uc", scope: !3004, file: !761, line: 145, type: !171)
!3012 = !DILocalVariable(name: "p", scope: !3004, file: !761, line: 146, type: !3013)
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!3014 = !DILocalVariable(name: "shift", scope: !3004, file: !761, line: 148, type: !122)
!3015 = !DILocalVariable(name: "r", scope: !3004, file: !761, line: 149, type: !109)
!3016 = !DILocation(line: 0, scope: !3004)
!3017 = !DILocation(line: 147, column: 6, scope: !3004)
!3018 = !DILocation(line: 147, column: 41, scope: !3004)
!3019 = !DILocation(line: 147, column: 62, scope: !3004)
!3020 = !DILocation(line: 147, column: 57, scope: !3004)
!3021 = !DILocation(line: 148, column: 15, scope: !3004)
!3022 = !DILocation(line: 149, column: 21, scope: !3004)
!3023 = !DILocation(line: 149, column: 24, scope: !3004)
!3024 = !DILocation(line: 149, column: 34, scope: !3004)
!3025 = !DILocation(line: 150, column: 19, scope: !3004)
!3026 = !DILocation(line: 150, column: 24, scope: !3004)
!3027 = !DILocation(line: 150, column: 6, scope: !3004)
!3028 = !DILocation(line: 151, column: 3, scope: !3004)
!3029 = distinct !DISubprogram(name: "set_quoting_flags", scope: !761, file: !761, line: 159, type: !3030, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !3032)
!3030 = !DISubroutineType(types: !3031)
!3031 = !{!122, !2970, !122}
!3032 = !{!3033, !3034, !3035}
!3033 = !DILocalVariable(name: "o", arg: 1, scope: !3029, file: !761, line: 159, type: !2970)
!3034 = !DILocalVariable(name: "i", arg: 2, scope: !3029, file: !761, line: 159, type: !122)
!3035 = !DILocalVariable(name: "r", scope: !3029, file: !761, line: 163, type: !122)
!3036 = !DILocation(line: 0, scope: !3029)
!3037 = !DILocation(line: 161, column: 8, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !3029, file: !761, line: 161, column: 7)
!3039 = !DILocation(line: 161, column: 7, scope: !3029)
!3040 = !DILocation(line: 163, column: 14, scope: !3029)
!3041 = !{!2992, !1158, i64 4}
!3042 = !DILocation(line: 164, column: 12, scope: !3029)
!3043 = !DILocation(line: 165, column: 3, scope: !3029)
!3044 = distinct !DISubprogram(name: "set_custom_quoting", scope: !761, file: !761, line: 169, type: !3045, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !3047)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{null, !2970, !169, !169}
!3047 = !{!3048, !3049, !3050}
!3048 = !DILocalVariable(name: "o", arg: 1, scope: !3044, file: !761, line: 169, type: !2970)
!3049 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3044, file: !761, line: 170, type: !169)
!3050 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3044, file: !761, line: 170, type: !169)
!3051 = !DILocation(line: 0, scope: !3044)
!3052 = !DILocation(line: 172, column: 8, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3044, file: !761, line: 172, column: 7)
!3054 = !DILocation(line: 172, column: 7, scope: !3044)
!3055 = !DILocation(line: 174, column: 12, scope: !3044)
!3056 = !DILocation(line: 175, column: 8, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3044, file: !761, line: 175, column: 7)
!3058 = !DILocation(line: 175, column: 19, scope: !3057)
!3059 = !DILocation(line: 176, column: 5, scope: !3057)
!3060 = !DILocation(line: 177, column: 6, scope: !3044)
!3061 = !DILocation(line: 177, column: 17, scope: !3044)
!3062 = !{!2992, !1076, i64 40}
!3063 = !DILocation(line: 178, column: 6, scope: !3044)
!3064 = !DILocation(line: 178, column: 18, scope: !3044)
!3065 = !{!2992, !1076, i64 48}
!3066 = !DILocation(line: 179, column: 1, scope: !3044)
!3067 = !DISubprogram(name: "abort", scope: !1278, file: !1278, line: 598, type: !716, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!3068 = distinct !DISubprogram(name: "quotearg_buffer", scope: !761, file: !761, line: 774, type: !3069, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !3071)
!3069 = !DISubroutineType(types: !3070)
!3070 = !{!166, !163, !166, !169, !166, !2984}
!3071 = !{!3072, !3073, !3074, !3075, !3076, !3077, !3078, !3079}
!3072 = !DILocalVariable(name: "buffer", arg: 1, scope: !3068, file: !761, line: 774, type: !163)
!3073 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3068, file: !761, line: 774, type: !166)
!3074 = !DILocalVariable(name: "arg", arg: 3, scope: !3068, file: !761, line: 775, type: !169)
!3075 = !DILocalVariable(name: "argsize", arg: 4, scope: !3068, file: !761, line: 775, type: !166)
!3076 = !DILocalVariable(name: "o", arg: 5, scope: !3068, file: !761, line: 776, type: !2984)
!3077 = !DILocalVariable(name: "p", scope: !3068, file: !761, line: 778, type: !2984)
!3078 = !DILocalVariable(name: "saved_errno", scope: !3068, file: !761, line: 779, type: !122)
!3079 = !DILocalVariable(name: "r", scope: !3068, file: !761, line: 780, type: !166)
!3080 = !DILocation(line: 0, scope: !3068)
!3081 = !DILocation(line: 778, column: 37, scope: !3068)
!3082 = !DILocation(line: 779, column: 21, scope: !3068)
!3083 = !DILocation(line: 781, column: 43, scope: !3068)
!3084 = !DILocation(line: 781, column: 53, scope: !3068)
!3085 = !DILocation(line: 781, column: 63, scope: !3068)
!3086 = !DILocation(line: 782, column: 43, scope: !3068)
!3087 = !DILocation(line: 782, column: 58, scope: !3068)
!3088 = !DILocation(line: 780, column: 14, scope: !3068)
!3089 = !DILocation(line: 783, column: 9, scope: !3068)
!3090 = !DILocation(line: 784, column: 3, scope: !3068)
!3091 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !761, file: !761, line: 251, type: !3092, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !3096)
!3092 = !DISubroutineType(types: !3093)
!3093 = !{!166, !163, !166, !169, !166, !784, !122, !3094, !169, !169}
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3095 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!3096 = !{!3097, !3098, !3099, !3100, !3101, !3102, !3103, !3104, !3105, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3122, !3124, !3127, !3128, !3129, !3130, !3133, !3134, !3136, !3137, !3140, !3144, !3145, !3153, !3156, !3157, !3158}
!3097 = !DILocalVariable(name: "buffer", arg: 1, scope: !3091, file: !761, line: 251, type: !163)
!3098 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3091, file: !761, line: 251, type: !166)
!3099 = !DILocalVariable(name: "arg", arg: 3, scope: !3091, file: !761, line: 252, type: !169)
!3100 = !DILocalVariable(name: "argsize", arg: 4, scope: !3091, file: !761, line: 252, type: !166)
!3101 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !3091, file: !761, line: 253, type: !784)
!3102 = !DILocalVariable(name: "flags", arg: 6, scope: !3091, file: !761, line: 253, type: !122)
!3103 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !3091, file: !761, line: 254, type: !3094)
!3104 = !DILocalVariable(name: "left_quote", arg: 8, scope: !3091, file: !761, line: 255, type: !169)
!3105 = !DILocalVariable(name: "right_quote", arg: 9, scope: !3091, file: !761, line: 256, type: !169)
!3106 = !DILocalVariable(name: "unibyte_locale", scope: !3091, file: !761, line: 258, type: !231)
!3107 = !DILocalVariable(name: "len", scope: !3091, file: !761, line: 260, type: !166)
!3108 = !DILocalVariable(name: "orig_buffersize", scope: !3091, file: !761, line: 261, type: !166)
!3109 = !DILocalVariable(name: "quote_string", scope: !3091, file: !761, line: 262, type: !169)
!3110 = !DILocalVariable(name: "quote_string_len", scope: !3091, file: !761, line: 263, type: !166)
!3111 = !DILocalVariable(name: "backslash_escapes", scope: !3091, file: !761, line: 264, type: !231)
!3112 = !DILocalVariable(name: "elide_outer_quotes", scope: !3091, file: !761, line: 265, type: !231)
!3113 = !DILocalVariable(name: "encountered_single_quote", scope: !3091, file: !761, line: 266, type: !231)
!3114 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !3091, file: !761, line: 267, type: !231)
!3115 = !DILabel(scope: !3091, name: "process_input", file: !761, line: 308)
!3116 = !DILocalVariable(name: "pending_shell_escape_end", scope: !3091, file: !761, line: 309, type: !231)
!3117 = !DILocalVariable(name: "lq", scope: !3118, file: !761, line: 361, type: !169)
!3118 = distinct !DILexicalBlock(scope: !3119, file: !761, line: 361, column: 11)
!3119 = distinct !DILexicalBlock(scope: !3120, file: !761, line: 360, column: 13)
!3120 = distinct !DILexicalBlock(scope: !3121, file: !761, line: 333, column: 7)
!3121 = distinct !DILexicalBlock(scope: !3091, file: !761, line: 312, column: 5)
!3122 = !DILocalVariable(name: "i", scope: !3123, file: !761, line: 395, type: !166)
!3123 = distinct !DILexicalBlock(scope: !3091, file: !761, line: 395, column: 3)
!3124 = !DILocalVariable(name: "is_right_quote", scope: !3125, file: !761, line: 397, type: !231)
!3125 = distinct !DILexicalBlock(scope: !3126, file: !761, line: 396, column: 5)
!3126 = distinct !DILexicalBlock(scope: !3123, file: !761, line: 395, column: 3)
!3127 = !DILocalVariable(name: "escaping", scope: !3125, file: !761, line: 398, type: !231)
!3128 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !3125, file: !761, line: 399, type: !231)
!3129 = !DILocalVariable(name: "c", scope: !3125, file: !761, line: 417, type: !171)
!3130 = !DILabel(scope: !3131, name: "c_and_shell_escape", file: !761, line: 502)
!3131 = distinct !DILexicalBlock(scope: !3132, file: !761, line: 478, column: 9)
!3132 = distinct !DILexicalBlock(scope: !3125, file: !761, line: 419, column: 9)
!3133 = !DILabel(scope: !3131, name: "c_escape", file: !761, line: 507)
!3134 = !DILocalVariable(name: "m", scope: !3135, file: !761, line: 598, type: !166)
!3135 = distinct !DILexicalBlock(scope: !3132, file: !761, line: 596, column: 11)
!3136 = !DILocalVariable(name: "printable", scope: !3135, file: !761, line: 600, type: !231)
!3137 = !DILocalVariable(name: "mbs", scope: !3138, file: !761, line: 609, type: !833)
!3138 = distinct !DILexicalBlock(scope: !3139, file: !761, line: 608, column: 15)
!3139 = distinct !DILexicalBlock(scope: !3135, file: !761, line: 602, column: 17)
!3140 = !DILocalVariable(name: "w", scope: !3141, file: !761, line: 618, type: !741)
!3141 = distinct !DILexicalBlock(scope: !3142, file: !761, line: 617, column: 19)
!3142 = distinct !DILexicalBlock(scope: !3143, file: !761, line: 616, column: 17)
!3143 = distinct !DILexicalBlock(scope: !3138, file: !761, line: 616, column: 17)
!3144 = !DILocalVariable(name: "bytes", scope: !3141, file: !761, line: 619, type: !166)
!3145 = !DILocalVariable(name: "j", scope: !3146, file: !761, line: 648, type: !166)
!3146 = distinct !DILexicalBlock(scope: !3147, file: !761, line: 648, column: 29)
!3147 = distinct !DILexicalBlock(scope: !3148, file: !761, line: 647, column: 27)
!3148 = distinct !DILexicalBlock(scope: !3149, file: !761, line: 645, column: 29)
!3149 = distinct !DILexicalBlock(scope: !3150, file: !761, line: 636, column: 23)
!3150 = distinct !DILexicalBlock(scope: !3151, file: !761, line: 628, column: 30)
!3151 = distinct !DILexicalBlock(scope: !3152, file: !761, line: 623, column: 30)
!3152 = distinct !DILexicalBlock(scope: !3141, file: !761, line: 621, column: 25)
!3153 = !DILocalVariable(name: "ilim", scope: !3154, file: !761, line: 674, type: !166)
!3154 = distinct !DILexicalBlock(scope: !3155, file: !761, line: 671, column: 15)
!3155 = distinct !DILexicalBlock(scope: !3135, file: !761, line: 670, column: 17)
!3156 = !DILabel(scope: !3125, name: "store_escape", file: !761, line: 709)
!3157 = !DILabel(scope: !3125, name: "store_c", file: !761, line: 712)
!3158 = !DILabel(scope: !3091, name: "force_outer_quoting_style", file: !761, line: 753)
!3159 = distinct !DIAssignID()
!3160 = distinct !DIAssignID()
!3161 = distinct !DIAssignID()
!3162 = distinct !DIAssignID()
!3163 = distinct !DIAssignID()
!3164 = !DILocation(line: 0, scope: !3138)
!3165 = distinct !DIAssignID()
!3166 = !DILocation(line: 0, scope: !3141)
!3167 = !DILocation(line: 0, scope: !3091)
!3168 = !DILocation(line: 258, column: 25, scope: !3091)
!3169 = !DILocation(line: 258, column: 36, scope: !3091)
!3170 = !DILocation(line: 267, column: 3, scope: !3091)
!3171 = !DILocation(line: 261, column: 10, scope: !3091)
!3172 = !DILocation(line: 262, column: 15, scope: !3091)
!3173 = !DILocation(line: 263, column: 10, scope: !3091)
!3174 = !DILocation(line: 308, column: 2, scope: !3091)
!3175 = !DILocation(line: 311, column: 3, scope: !3091)
!3176 = !DILocation(line: 318, column: 11, scope: !3121)
!3177 = !DILocation(line: 319, column: 9, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !3179, file: !761, line: 319, column: 9)
!3179 = distinct !DILexicalBlock(scope: !3180, file: !761, line: 319, column: 9)
!3180 = distinct !DILexicalBlock(scope: !3121, file: !761, line: 318, column: 11)
!3181 = !DILocation(line: 319, column: 9, scope: !3179)
!3182 = !DILocation(line: 0, scope: !824, inlinedAt: !3183)
!3183 = distinct !DILocation(line: 357, column: 26, scope: !3184)
!3184 = distinct !DILexicalBlock(scope: !3185, file: !761, line: 335, column: 11)
!3185 = distinct !DILexicalBlock(scope: !3120, file: !761, line: 334, column: 13)
!3186 = !DILocation(line: 199, column: 29, scope: !824, inlinedAt: !3183)
!3187 = !DILocation(line: 201, column: 19, scope: !3188, inlinedAt: !3183)
!3188 = distinct !DILexicalBlock(scope: !824, file: !761, line: 201, column: 7)
!3189 = !DILocation(line: 201, column: 7, scope: !824, inlinedAt: !3183)
!3190 = !DILocation(line: 229, column: 3, scope: !824, inlinedAt: !3183)
!3191 = !DILocation(line: 230, column: 3, scope: !824, inlinedAt: !3183)
!3192 = !DILocalVariable(name: "ps", arg: 1, scope: !3193, file: !2939, line: 1135, type: !3196)
!3193 = distinct !DISubprogram(name: "mbszero", scope: !2939, file: !2939, line: 1135, type: !3194, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !3197)
!3194 = !DISubroutineType(types: !3195)
!3195 = !{null, !3196}
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!3197 = !{!3192}
!3198 = !DILocation(line: 0, scope: !3193, inlinedAt: !3199)
!3199 = distinct !DILocation(line: 230, column: 18, scope: !824, inlinedAt: !3183)
!3200 = !DILocalVariable(name: "__dest", arg: 1, scope: !3201, file: !1563, line: 57, type: !164)
!3201 = distinct !DISubprogram(name: "memset", scope: !1563, file: !1563, line: 57, type: !2948, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !3202)
!3202 = !{!3200, !3203, !3204}
!3203 = !DILocalVariable(name: "__ch", arg: 2, scope: !3201, file: !1563, line: 57, type: !122)
!3204 = !DILocalVariable(name: "__len", arg: 3, scope: !3201, file: !1563, line: 57, type: !166)
!3205 = !DILocation(line: 0, scope: !3201, inlinedAt: !3206)
!3206 = distinct !DILocation(line: 1137, column: 3, scope: !3193, inlinedAt: !3199)
!3207 = !DILocation(line: 59, column: 10, scope: !3201, inlinedAt: !3206)
!3208 = !DILocation(line: 231, column: 7, scope: !3209, inlinedAt: !3183)
!3209 = distinct !DILexicalBlock(scope: !824, file: !761, line: 231, column: 7)
!3210 = !DILocation(line: 231, column: 40, scope: !3209, inlinedAt: !3183)
!3211 = !DILocation(line: 231, column: 45, scope: !3209, inlinedAt: !3183)
!3212 = !DILocation(line: 235, column: 1, scope: !824, inlinedAt: !3183)
!3213 = !DILocation(line: 0, scope: !824, inlinedAt: !3214)
!3214 = distinct !DILocation(line: 358, column: 27, scope: !3184)
!3215 = !DILocation(line: 199, column: 29, scope: !824, inlinedAt: !3214)
!3216 = !DILocation(line: 201, column: 19, scope: !3188, inlinedAt: !3214)
!3217 = !DILocation(line: 201, column: 7, scope: !824, inlinedAt: !3214)
!3218 = !DILocation(line: 229, column: 3, scope: !824, inlinedAt: !3214)
!3219 = !DILocation(line: 230, column: 3, scope: !824, inlinedAt: !3214)
!3220 = !DILocation(line: 0, scope: !3193, inlinedAt: !3221)
!3221 = distinct !DILocation(line: 230, column: 18, scope: !824, inlinedAt: !3214)
!3222 = !DILocation(line: 0, scope: !3201, inlinedAt: !3223)
!3223 = distinct !DILocation(line: 1137, column: 3, scope: !3193, inlinedAt: !3221)
!3224 = !DILocation(line: 59, column: 10, scope: !3201, inlinedAt: !3223)
!3225 = !DILocation(line: 231, column: 7, scope: !3209, inlinedAt: !3214)
!3226 = !DILocation(line: 231, column: 40, scope: !3209, inlinedAt: !3214)
!3227 = !DILocation(line: 231, column: 45, scope: !3209, inlinedAt: !3214)
!3228 = !DILocation(line: 235, column: 1, scope: !824, inlinedAt: !3214)
!3229 = !DILocation(line: 360, column: 13, scope: !3120)
!3230 = !DILocation(line: 0, scope: !3118)
!3231 = !DILocation(line: 361, column: 45, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3118, file: !761, line: 361, column: 11)
!3233 = !DILocation(line: 361, column: 11, scope: !3118)
!3234 = !DILocation(line: 362, column: 13, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3236, file: !761, line: 362, column: 13)
!3236 = distinct !DILexicalBlock(scope: !3232, file: !761, line: 362, column: 13)
!3237 = !DILocation(line: 362, column: 13, scope: !3236)
!3238 = !DILocation(line: 361, column: 52, scope: !3232)
!3239 = distinct !{!3239, !3233, !3240, !1204}
!3240 = !DILocation(line: 362, column: 13, scope: !3118)
!3241 = !DILocation(line: 365, column: 28, scope: !3120)
!3242 = !DILocation(line: 260, column: 10, scope: !3091)
!3243 = !DILocation(line: 367, column: 7, scope: !3121)
!3244 = !DILocation(line: 373, column: 7, scope: !3121)
!3245 = !DILocation(line: 381, column: 11, scope: !3121)
!3246 = !DILocation(line: 376, column: 11, scope: !3121)
!3247 = !DILocation(line: 382, column: 9, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !3249, file: !761, line: 382, column: 9)
!3249 = distinct !DILexicalBlock(scope: !3250, file: !761, line: 382, column: 9)
!3250 = distinct !DILexicalBlock(scope: !3121, file: !761, line: 381, column: 11)
!3251 = !DILocation(line: 382, column: 9, scope: !3249)
!3252 = !DILocation(line: 389, column: 7, scope: !3121)
!3253 = !DILocation(line: 392, column: 7, scope: !3121)
!3254 = !DILocation(line: 0, scope: !3123)
!3255 = !DILocation(line: 395, column: 8, scope: !3123)
!3256 = !DILocation(line: 395, scope: !3123)
!3257 = !DILocation(line: 395, column: 34, scope: !3126)
!3258 = !DILocation(line: 395, column: 26, scope: !3126)
!3259 = !DILocation(line: 395, column: 48, scope: !3126)
!3260 = !DILocation(line: 395, column: 55, scope: !3126)
!3261 = !DILocation(line: 395, column: 3, scope: !3123)
!3262 = !DILocation(line: 395, column: 67, scope: !3126)
!3263 = !DILocation(line: 0, scope: !3125)
!3264 = !DILocation(line: 402, column: 11, scope: !3265)
!3265 = distinct !DILexicalBlock(scope: !3125, file: !761, line: 401, column: 11)
!3266 = !DILocation(line: 404, column: 17, scope: !3265)
!3267 = !DILocation(line: 405, column: 39, scope: !3265)
!3268 = !DILocation(line: 409, column: 32, scope: !3265)
!3269 = !DILocation(line: 405, column: 19, scope: !3265)
!3270 = !DILocation(line: 405, column: 15, scope: !3265)
!3271 = !DILocation(line: 410, column: 11, scope: !3265)
!3272 = !DILocation(line: 410, column: 25, scope: !3265)
!3273 = !DILocalVariable(name: "__s1", arg: 1, scope: !3274, file: !1170, line: 974, type: !1302)
!3274 = distinct !DISubprogram(name: "memeq", scope: !1170, file: !1170, line: 974, type: !2908, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !3275)
!3275 = !{!3273, !3276, !3277}
!3276 = !DILocalVariable(name: "__s2", arg: 2, scope: !3274, file: !1170, line: 974, type: !1302)
!3277 = !DILocalVariable(name: "__n", arg: 3, scope: !3274, file: !1170, line: 974, type: !166)
!3278 = !DILocation(line: 0, scope: !3274, inlinedAt: !3279)
!3279 = distinct !DILocation(line: 410, column: 14, scope: !3265)
!3280 = !DILocation(line: 976, column: 11, scope: !3274, inlinedAt: !3279)
!3281 = !DILocation(line: 976, column: 10, scope: !3274, inlinedAt: !3279)
!3282 = !DILocation(line: 401, column: 11, scope: !3125)
!3283 = !DILocation(line: 417, column: 25, scope: !3125)
!3284 = !DILocation(line: 418, column: 7, scope: !3125)
!3285 = !DILocation(line: 421, column: 15, scope: !3132)
!3286 = !DILocation(line: 423, column: 15, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3288, file: !761, line: 423, column: 15)
!3288 = distinct !DILexicalBlock(scope: !3289, file: !761, line: 422, column: 13)
!3289 = distinct !DILexicalBlock(scope: !3132, file: !761, line: 421, column: 15)
!3290 = !DILocation(line: 423, column: 15, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3287, file: !761, line: 423, column: 15)
!3292 = !DILocation(line: 423, column: 15, scope: !3293)
!3293 = distinct !DILexicalBlock(scope: !3294, file: !761, line: 423, column: 15)
!3294 = distinct !DILexicalBlock(scope: !3295, file: !761, line: 423, column: 15)
!3295 = distinct !DILexicalBlock(scope: !3291, file: !761, line: 423, column: 15)
!3296 = !DILocation(line: 423, column: 15, scope: !3294)
!3297 = !DILocation(line: 423, column: 15, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3299, file: !761, line: 423, column: 15)
!3299 = distinct !DILexicalBlock(scope: !3295, file: !761, line: 423, column: 15)
!3300 = !DILocation(line: 423, column: 15, scope: !3299)
!3301 = !DILocation(line: 423, column: 15, scope: !3302)
!3302 = distinct !DILexicalBlock(scope: !3303, file: !761, line: 423, column: 15)
!3303 = distinct !DILexicalBlock(scope: !3295, file: !761, line: 423, column: 15)
!3304 = !DILocation(line: 423, column: 15, scope: !3303)
!3305 = !DILocation(line: 423, column: 15, scope: !3295)
!3306 = !DILocation(line: 423, column: 15, scope: !3307)
!3307 = distinct !DILexicalBlock(scope: !3308, file: !761, line: 423, column: 15)
!3308 = distinct !DILexicalBlock(scope: !3287, file: !761, line: 423, column: 15)
!3309 = !DILocation(line: 423, column: 15, scope: !3308)
!3310 = !DILocation(line: 431, column: 19, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !3288, file: !761, line: 430, column: 19)
!3312 = !DILocation(line: 431, column: 24, scope: !3311)
!3313 = !DILocation(line: 431, column: 28, scope: !3311)
!3314 = !DILocation(line: 431, column: 38, scope: !3311)
!3315 = !DILocation(line: 431, column: 48, scope: !3311)
!3316 = !DILocation(line: 431, column: 59, scope: !3311)
!3317 = !DILocation(line: 433, column: 19, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3319, file: !761, line: 433, column: 19)
!3319 = distinct !DILexicalBlock(scope: !3320, file: !761, line: 433, column: 19)
!3320 = distinct !DILexicalBlock(scope: !3311, file: !761, line: 432, column: 17)
!3321 = !DILocation(line: 433, column: 19, scope: !3319)
!3322 = !DILocation(line: 434, column: 19, scope: !3323)
!3323 = distinct !DILexicalBlock(scope: !3324, file: !761, line: 434, column: 19)
!3324 = distinct !DILexicalBlock(scope: !3320, file: !761, line: 434, column: 19)
!3325 = !DILocation(line: 434, column: 19, scope: !3324)
!3326 = !DILocation(line: 435, column: 17, scope: !3320)
!3327 = !DILocation(line: 442, column: 20, scope: !3289)
!3328 = !DILocation(line: 447, column: 11, scope: !3132)
!3329 = !DILocation(line: 450, column: 19, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3132, file: !761, line: 448, column: 13)
!3331 = !DILocation(line: 456, column: 19, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !3330, file: !761, line: 455, column: 19)
!3333 = !DILocation(line: 456, column: 24, scope: !3332)
!3334 = !DILocation(line: 456, column: 28, scope: !3332)
!3335 = !DILocation(line: 456, column: 38, scope: !3332)
!3336 = !DILocation(line: 456, column: 41, scope: !3332)
!3337 = !DILocation(line: 456, column: 52, scope: !3332)
!3338 = !DILocation(line: 455, column: 19, scope: !3330)
!3339 = !DILocation(line: 457, column: 25, scope: !3332)
!3340 = !DILocation(line: 457, column: 17, scope: !3332)
!3341 = !DILocation(line: 464, column: 25, scope: !3342)
!3342 = distinct !DILexicalBlock(scope: !3332, file: !761, line: 458, column: 19)
!3343 = !DILocation(line: 468, column: 21, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !3345, file: !761, line: 468, column: 21)
!3345 = distinct !DILexicalBlock(scope: !3342, file: !761, line: 468, column: 21)
!3346 = !DILocation(line: 468, column: 21, scope: !3345)
!3347 = !DILocation(line: 469, column: 21, scope: !3348)
!3348 = distinct !DILexicalBlock(scope: !3349, file: !761, line: 469, column: 21)
!3349 = distinct !DILexicalBlock(scope: !3342, file: !761, line: 469, column: 21)
!3350 = !DILocation(line: 469, column: 21, scope: !3349)
!3351 = !DILocation(line: 470, column: 21, scope: !3352)
!3352 = distinct !DILexicalBlock(scope: !3353, file: !761, line: 470, column: 21)
!3353 = distinct !DILexicalBlock(scope: !3342, file: !761, line: 470, column: 21)
!3354 = !DILocation(line: 470, column: 21, scope: !3353)
!3355 = !DILocation(line: 471, column: 21, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !3357, file: !761, line: 471, column: 21)
!3357 = distinct !DILexicalBlock(scope: !3342, file: !761, line: 471, column: 21)
!3358 = !DILocation(line: 471, column: 21, scope: !3357)
!3359 = !DILocation(line: 472, column: 21, scope: !3342)
!3360 = !DILocation(line: 482, column: 33, scope: !3131)
!3361 = !DILocation(line: 483, column: 33, scope: !3131)
!3362 = !DILocation(line: 485, column: 33, scope: !3131)
!3363 = !DILocation(line: 486, column: 33, scope: !3131)
!3364 = !DILocation(line: 487, column: 33, scope: !3131)
!3365 = !DILocation(line: 490, column: 17, scope: !3131)
!3366 = !DILocation(line: 492, column: 21, scope: !3367)
!3367 = distinct !DILexicalBlock(scope: !3368, file: !761, line: 491, column: 15)
!3368 = distinct !DILexicalBlock(scope: !3131, file: !761, line: 490, column: 17)
!3369 = !DILocation(line: 499, column: 35, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3131, file: !761, line: 499, column: 17)
!3371 = !DILocation(line: 0, scope: !3131)
!3372 = !DILocation(line: 502, column: 11, scope: !3131)
!3373 = !DILocation(line: 504, column: 17, scope: !3374)
!3374 = distinct !DILexicalBlock(scope: !3131, file: !761, line: 503, column: 17)
!3375 = !DILocation(line: 507, column: 11, scope: !3131)
!3376 = !DILocation(line: 508, column: 17, scope: !3131)
!3377 = !DILocation(line: 517, column: 15, scope: !3132)
!3378 = !DILocation(line: 517, column: 40, scope: !3379)
!3379 = distinct !DILexicalBlock(scope: !3132, file: !761, line: 517, column: 15)
!3380 = !DILocation(line: 517, column: 47, scope: !3379)
!3381 = !DILocation(line: 517, column: 18, scope: !3379)
!3382 = !DILocation(line: 521, column: 17, scope: !3383)
!3383 = distinct !DILexicalBlock(scope: !3132, file: !761, line: 521, column: 15)
!3384 = !DILocation(line: 521, column: 15, scope: !3132)
!3385 = !DILocation(line: 525, column: 11, scope: !3132)
!3386 = !DILocation(line: 537, column: 15, scope: !3387)
!3387 = distinct !DILexicalBlock(scope: !3132, file: !761, line: 536, column: 15)
!3388 = !DILocation(line: 536, column: 15, scope: !3132)
!3389 = !DILocation(line: 544, column: 15, scope: !3132)
!3390 = !DILocation(line: 546, column: 19, scope: !3391)
!3391 = distinct !DILexicalBlock(scope: !3392, file: !761, line: 545, column: 13)
!3392 = distinct !DILexicalBlock(scope: !3132, file: !761, line: 544, column: 15)
!3393 = !DILocation(line: 549, column: 19, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !3391, file: !761, line: 549, column: 19)
!3395 = !DILocation(line: 549, column: 30, scope: !3394)
!3396 = !DILocation(line: 558, column: 15, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3398, file: !761, line: 558, column: 15)
!3398 = distinct !DILexicalBlock(scope: !3391, file: !761, line: 558, column: 15)
!3399 = !DILocation(line: 558, column: 15, scope: !3398)
!3400 = !DILocation(line: 559, column: 15, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3402, file: !761, line: 559, column: 15)
!3402 = distinct !DILexicalBlock(scope: !3391, file: !761, line: 559, column: 15)
!3403 = !DILocation(line: 559, column: 15, scope: !3402)
!3404 = !DILocation(line: 560, column: 15, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3406, file: !761, line: 560, column: 15)
!3406 = distinct !DILexicalBlock(scope: !3391, file: !761, line: 560, column: 15)
!3407 = !DILocation(line: 560, column: 15, scope: !3406)
!3408 = !DILocation(line: 562, column: 13, scope: !3391)
!3409 = !DILocation(line: 602, column: 17, scope: !3135)
!3410 = !DILocation(line: 0, scope: !3135)
!3411 = !DILocation(line: 605, column: 29, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3139, file: !761, line: 603, column: 15)
!3413 = !DILocation(line: 605, column: 41, scope: !3412)
!3414 = !DILocation(line: 606, column: 15, scope: !3412)
!3415 = !DILocation(line: 609, column: 17, scope: !3138)
!3416 = !DILocation(line: 0, scope: !3193, inlinedAt: !3417)
!3417 = distinct !DILocation(line: 609, column: 32, scope: !3138)
!3418 = !DILocation(line: 0, scope: !3201, inlinedAt: !3419)
!3419 = distinct !DILocation(line: 1137, column: 3, scope: !3193, inlinedAt: !3417)
!3420 = !DILocation(line: 59, column: 10, scope: !3201, inlinedAt: !3419)
!3421 = !DILocation(line: 613, column: 29, scope: !3422)
!3422 = distinct !DILexicalBlock(scope: !3138, file: !761, line: 613, column: 21)
!3423 = !DILocation(line: 613, column: 21, scope: !3138)
!3424 = !DILocation(line: 614, column: 29, scope: !3422)
!3425 = !DILocation(line: 614, column: 19, scope: !3422)
!3426 = !DILocation(line: 618, column: 21, scope: !3141)
!3427 = !DILocation(line: 620, column: 54, scope: !3141)
!3428 = !DILocation(line: 619, column: 36, scope: !3141)
!3429 = !DILocation(line: 621, column: 25, scope: !3141)
!3430 = !DILocation(line: 631, column: 38, scope: !3431)
!3431 = distinct !DILexicalBlock(scope: !3150, file: !761, line: 629, column: 23)
!3432 = !DILocation(line: 631, column: 48, scope: !3431)
!3433 = !DILocation(line: 631, column: 25, scope: !3431)
!3434 = !DILocation(line: 626, column: 25, scope: !3435)
!3435 = distinct !DILexicalBlock(scope: !3151, file: !761, line: 624, column: 23)
!3436 = !DILocation(line: 631, column: 51, scope: !3431)
!3437 = !DILocation(line: 632, column: 28, scope: !3431)
!3438 = !DILocation(line: 631, column: 34, scope: !3431)
!3439 = distinct !{!3439, !3433, !3437, !1204}
!3440 = !DILocation(line: 0, scope: !3146)
!3441 = !DILocation(line: 646, column: 29, scope: !3148)
!3442 = !DILocation(line: 648, column: 29, scope: !3146)
!3443 = !DILocation(line: 649, column: 39, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3146, file: !761, line: 648, column: 29)
!3445 = !DILocation(line: 649, column: 31, scope: !3444)
!3446 = !DILocation(line: 648, column: 60, scope: !3444)
!3447 = !DILocation(line: 648, column: 50, scope: !3444)
!3448 = distinct !{!3448, !3442, !3449, !1204}
!3449 = !DILocation(line: 654, column: 33, scope: !3146)
!3450 = !DILocation(line: 657, column: 43, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3149, file: !761, line: 657, column: 29)
!3452 = !DILocalVariable(name: "wc", arg: 1, scope: !3453, file: !3454, line: 865, type: !3457)
!3453 = distinct !DISubprogram(name: "c32isprint", scope: !3454, file: !3454, line: 865, type: !3455, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !3459)
!3454 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!3455 = !DISubroutineType(types: !3456)
!3456 = !{!122, !3457}
!3457 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3458, line: 20, baseType: !109)
!3458 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3459 = !{!3452}
!3460 = !DILocation(line: 0, scope: !3453, inlinedAt: !3461)
!3461 = distinct !DILocation(line: 657, column: 31, scope: !3451)
!3462 = !DILocation(line: 871, column: 10, scope: !3453, inlinedAt: !3461)
!3463 = !DILocation(line: 657, column: 31, scope: !3451)
!3464 = !DILocation(line: 664, column: 23, scope: !3141)
!3465 = !DILocation(line: 665, column: 19, scope: !3142)
!3466 = !DILocation(line: 666, column: 15, scope: !3139)
!3467 = !DILocation(line: 753, column: 2, scope: !3091)
!3468 = !DILocation(line: 756, column: 51, scope: !3469)
!3469 = distinct !DILexicalBlock(scope: !3091, file: !761, line: 756, column: 7)
!3470 = !DILocation(line: 0, scope: !3139)
!3471 = !DILocation(line: 670, column: 19, scope: !3155)
!3472 = !DILocation(line: 670, column: 23, scope: !3155)
!3473 = !DILocation(line: 674, column: 33, scope: !3154)
!3474 = !DILocation(line: 0, scope: !3154)
!3475 = !DILocation(line: 676, column: 17, scope: !3154)
!3476 = !DILocation(line: 678, column: 43, scope: !3477)
!3477 = distinct !DILexicalBlock(scope: !3478, file: !761, line: 678, column: 25)
!3478 = distinct !DILexicalBlock(scope: !3479, file: !761, line: 677, column: 19)
!3479 = distinct !DILexicalBlock(scope: !3480, file: !761, line: 676, column: 17)
!3480 = distinct !DILexicalBlock(scope: !3154, file: !761, line: 676, column: 17)
!3481 = !DILocation(line: 680, column: 25, scope: !3482)
!3482 = distinct !DILexicalBlock(scope: !3483, file: !761, line: 680, column: 25)
!3483 = distinct !DILexicalBlock(scope: !3477, file: !761, line: 679, column: 23)
!3484 = !DILocation(line: 680, column: 25, scope: !3485)
!3485 = distinct !DILexicalBlock(scope: !3482, file: !761, line: 680, column: 25)
!3486 = !DILocation(line: 680, column: 25, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !3488, file: !761, line: 680, column: 25)
!3488 = distinct !DILexicalBlock(scope: !3489, file: !761, line: 680, column: 25)
!3489 = distinct !DILexicalBlock(scope: !3485, file: !761, line: 680, column: 25)
!3490 = !DILocation(line: 680, column: 25, scope: !3488)
!3491 = !DILocation(line: 680, column: 25, scope: !3492)
!3492 = distinct !DILexicalBlock(scope: !3493, file: !761, line: 680, column: 25)
!3493 = distinct !DILexicalBlock(scope: !3489, file: !761, line: 680, column: 25)
!3494 = !DILocation(line: 680, column: 25, scope: !3493)
!3495 = !DILocation(line: 680, column: 25, scope: !3496)
!3496 = distinct !DILexicalBlock(scope: !3497, file: !761, line: 680, column: 25)
!3497 = distinct !DILexicalBlock(scope: !3489, file: !761, line: 680, column: 25)
!3498 = !DILocation(line: 680, column: 25, scope: !3497)
!3499 = !DILocation(line: 680, column: 25, scope: !3489)
!3500 = !DILocation(line: 680, column: 25, scope: !3501)
!3501 = distinct !DILexicalBlock(scope: !3502, file: !761, line: 680, column: 25)
!3502 = distinct !DILexicalBlock(scope: !3482, file: !761, line: 680, column: 25)
!3503 = !DILocation(line: 680, column: 25, scope: !3502)
!3504 = !DILocation(line: 681, column: 25, scope: !3505)
!3505 = distinct !DILexicalBlock(scope: !3506, file: !761, line: 681, column: 25)
!3506 = distinct !DILexicalBlock(scope: !3483, file: !761, line: 681, column: 25)
!3507 = !DILocation(line: 681, column: 25, scope: !3506)
!3508 = !DILocation(line: 682, column: 25, scope: !3509)
!3509 = distinct !DILexicalBlock(scope: !3510, file: !761, line: 682, column: 25)
!3510 = distinct !DILexicalBlock(scope: !3483, file: !761, line: 682, column: 25)
!3511 = !DILocation(line: 682, column: 25, scope: !3510)
!3512 = !DILocation(line: 683, column: 38, scope: !3483)
!3513 = !DILocation(line: 683, column: 33, scope: !3483)
!3514 = !DILocation(line: 684, column: 23, scope: !3483)
!3515 = !DILocation(line: 685, column: 30, scope: !3477)
!3516 = !DILocation(line: 687, column: 25, scope: !3517)
!3517 = distinct !DILexicalBlock(scope: !3518, file: !761, line: 687, column: 25)
!3518 = distinct !DILexicalBlock(scope: !3519, file: !761, line: 687, column: 25)
!3519 = distinct !DILexicalBlock(scope: !3520, file: !761, line: 686, column: 23)
!3520 = distinct !DILexicalBlock(scope: !3477, file: !761, line: 685, column: 30)
!3521 = !DILocation(line: 687, column: 25, scope: !3518)
!3522 = !DILocation(line: 689, column: 23, scope: !3519)
!3523 = !DILocation(line: 690, column: 35, scope: !3524)
!3524 = distinct !DILexicalBlock(scope: !3478, file: !761, line: 690, column: 25)
!3525 = !DILocation(line: 690, column: 30, scope: !3524)
!3526 = !DILocation(line: 690, column: 25, scope: !3478)
!3527 = !DILocation(line: 692, column: 21, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3529, file: !761, line: 692, column: 21)
!3529 = distinct !DILexicalBlock(scope: !3478, file: !761, line: 692, column: 21)
!3530 = !DILocation(line: 692, column: 21, scope: !3531)
!3531 = distinct !DILexicalBlock(scope: !3532, file: !761, line: 692, column: 21)
!3532 = distinct !DILexicalBlock(scope: !3533, file: !761, line: 692, column: 21)
!3533 = distinct !DILexicalBlock(scope: !3528, file: !761, line: 692, column: 21)
!3534 = !DILocation(line: 692, column: 21, scope: !3532)
!3535 = !DILocation(line: 692, column: 21, scope: !3536)
!3536 = distinct !DILexicalBlock(scope: !3537, file: !761, line: 692, column: 21)
!3537 = distinct !DILexicalBlock(scope: !3533, file: !761, line: 692, column: 21)
!3538 = !DILocation(line: 692, column: 21, scope: !3537)
!3539 = !DILocation(line: 692, column: 21, scope: !3533)
!3540 = !DILocation(line: 0, scope: !3478)
!3541 = !DILocation(line: 693, column: 21, scope: !3542)
!3542 = distinct !DILexicalBlock(scope: !3543, file: !761, line: 693, column: 21)
!3543 = distinct !DILexicalBlock(scope: !3478, file: !761, line: 693, column: 21)
!3544 = !DILocation(line: 693, column: 21, scope: !3543)
!3545 = !DILocation(line: 694, column: 25, scope: !3478)
!3546 = !DILocation(line: 676, column: 17, scope: !3479)
!3547 = distinct !{!3547, !3548, !3549}
!3548 = !DILocation(line: 676, column: 17, scope: !3480)
!3549 = !DILocation(line: 695, column: 19, scope: !3480)
!3550 = !DILocation(line: 409, column: 30, scope: !3265)
!3551 = !DILocation(line: 702, column: 34, scope: !3552)
!3552 = distinct !DILexicalBlock(scope: !3125, file: !761, line: 702, column: 11)
!3553 = !DILocation(line: 704, column: 14, scope: !3552)
!3554 = !DILocation(line: 705, column: 14, scope: !3552)
!3555 = !DILocation(line: 705, column: 35, scope: !3552)
!3556 = !DILocation(line: 705, column: 17, scope: !3552)
!3557 = !DILocation(line: 705, column: 47, scope: !3552)
!3558 = !DILocation(line: 705, column: 65, scope: !3552)
!3559 = !DILocation(line: 706, column: 11, scope: !3552)
!3560 = !DILocation(line: 702, column: 11, scope: !3125)
!3561 = !DILocation(line: 395, column: 15, scope: !3123)
!3562 = !DILocation(line: 709, column: 5, scope: !3125)
!3563 = !DILocation(line: 710, column: 7, scope: !3564)
!3564 = distinct !DILexicalBlock(scope: !3125, file: !761, line: 710, column: 7)
!3565 = !DILocation(line: 710, column: 7, scope: !3566)
!3566 = distinct !DILexicalBlock(scope: !3564, file: !761, line: 710, column: 7)
!3567 = !DILocation(line: 710, column: 7, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !3569, file: !761, line: 710, column: 7)
!3569 = distinct !DILexicalBlock(scope: !3570, file: !761, line: 710, column: 7)
!3570 = distinct !DILexicalBlock(scope: !3566, file: !761, line: 710, column: 7)
!3571 = !DILocation(line: 710, column: 7, scope: !3569)
!3572 = !DILocation(line: 710, column: 7, scope: !3573)
!3573 = distinct !DILexicalBlock(scope: !3574, file: !761, line: 710, column: 7)
!3574 = distinct !DILexicalBlock(scope: !3570, file: !761, line: 710, column: 7)
!3575 = !DILocation(line: 710, column: 7, scope: !3574)
!3576 = !DILocation(line: 710, column: 7, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3578, file: !761, line: 710, column: 7)
!3578 = distinct !DILexicalBlock(scope: !3570, file: !761, line: 710, column: 7)
!3579 = !DILocation(line: 710, column: 7, scope: !3578)
!3580 = !DILocation(line: 710, column: 7, scope: !3570)
!3581 = !DILocation(line: 710, column: 7, scope: !3582)
!3582 = distinct !DILexicalBlock(scope: !3583, file: !761, line: 710, column: 7)
!3583 = distinct !DILexicalBlock(scope: !3564, file: !761, line: 710, column: 7)
!3584 = !DILocation(line: 710, column: 7, scope: !3583)
!3585 = !DILocation(line: 712, column: 5, scope: !3125)
!3586 = !DILocation(line: 713, column: 7, scope: !3587)
!3587 = distinct !DILexicalBlock(scope: !3588, file: !761, line: 713, column: 7)
!3588 = distinct !DILexicalBlock(scope: !3125, file: !761, line: 713, column: 7)
!3589 = !DILocation(line: 417, column: 21, scope: !3125)
!3590 = !DILocation(line: 713, column: 7, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !3592, file: !761, line: 713, column: 7)
!3592 = distinct !DILexicalBlock(scope: !3593, file: !761, line: 713, column: 7)
!3593 = distinct !DILexicalBlock(scope: !3587, file: !761, line: 713, column: 7)
!3594 = !DILocation(line: 713, column: 7, scope: !3592)
!3595 = !DILocation(line: 713, column: 7, scope: !3596)
!3596 = distinct !DILexicalBlock(scope: !3597, file: !761, line: 713, column: 7)
!3597 = distinct !DILexicalBlock(scope: !3593, file: !761, line: 713, column: 7)
!3598 = !DILocation(line: 713, column: 7, scope: !3597)
!3599 = !DILocation(line: 713, column: 7, scope: !3593)
!3600 = !DILocation(line: 714, column: 7, scope: !3601)
!3601 = distinct !DILexicalBlock(scope: !3602, file: !761, line: 714, column: 7)
!3602 = distinct !DILexicalBlock(scope: !3125, file: !761, line: 714, column: 7)
!3603 = !DILocation(line: 714, column: 7, scope: !3602)
!3604 = !DILocation(line: 716, column: 11, scope: !3125)
!3605 = !DILocation(line: 718, column: 5, scope: !3126)
!3606 = !DILocation(line: 395, column: 82, scope: !3126)
!3607 = !DILocation(line: 395, column: 3, scope: !3126)
!3608 = distinct !{!3608, !3261, !3609, !1204}
!3609 = !DILocation(line: 718, column: 5, scope: !3123)
!3610 = !DILocation(line: 720, column: 11, scope: !3611)
!3611 = distinct !DILexicalBlock(scope: !3091, file: !761, line: 720, column: 7)
!3612 = !DILocation(line: 720, column: 16, scope: !3611)
!3613 = !DILocation(line: 728, column: 51, scope: !3614)
!3614 = distinct !DILexicalBlock(scope: !3091, file: !761, line: 728, column: 7)
!3615 = !DILocation(line: 731, column: 11, scope: !3616)
!3616 = distinct !DILexicalBlock(scope: !3614, file: !761, line: 730, column: 5)
!3617 = !DILocation(line: 732, column: 16, scope: !3618)
!3618 = distinct !DILexicalBlock(scope: !3616, file: !761, line: 731, column: 11)
!3619 = !DILocation(line: 732, column: 9, scope: !3618)
!3620 = !DILocation(line: 736, column: 18, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3618, file: !761, line: 736, column: 16)
!3622 = !DILocation(line: 736, column: 29, scope: !3621)
!3623 = !DILocation(line: 745, column: 7, scope: !3624)
!3624 = distinct !DILexicalBlock(scope: !3091, file: !761, line: 745, column: 7)
!3625 = !DILocation(line: 745, column: 20, scope: !3624)
!3626 = !DILocation(line: 746, column: 12, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3628, file: !761, line: 746, column: 5)
!3628 = distinct !DILexicalBlock(scope: !3624, file: !761, line: 746, column: 5)
!3629 = !DILocation(line: 746, column: 5, scope: !3628)
!3630 = !DILocation(line: 747, column: 7, scope: !3631)
!3631 = distinct !DILexicalBlock(scope: !3632, file: !761, line: 747, column: 7)
!3632 = distinct !DILexicalBlock(scope: !3627, file: !761, line: 747, column: 7)
!3633 = !DILocation(line: 747, column: 7, scope: !3632)
!3634 = !DILocation(line: 746, column: 39, scope: !3627)
!3635 = distinct !{!3635, !3629, !3636, !1204}
!3636 = !DILocation(line: 747, column: 7, scope: !3628)
!3637 = !DILocation(line: 749, column: 11, scope: !3638)
!3638 = distinct !DILexicalBlock(scope: !3091, file: !761, line: 749, column: 7)
!3639 = !DILocation(line: 749, column: 7, scope: !3091)
!3640 = !DILocation(line: 750, column: 5, scope: !3638)
!3641 = !DILocation(line: 750, column: 17, scope: !3638)
!3642 = !DILocation(line: 756, column: 21, scope: !3469)
!3643 = !DILocation(line: 760, column: 42, scope: !3091)
!3644 = !DILocation(line: 758, column: 10, scope: !3091)
!3645 = !DILocation(line: 758, column: 3, scope: !3091)
!3646 = !DILocation(line: 762, column: 1, scope: !3091)
!3647 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1278, file: !1278, line: 98, type: !3648, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3648 = !DISubroutineType(types: !3649)
!3649 = !{!166}
!3650 = !DISubprogram(name: "strlen", scope: !1274, file: !1274, line: 407, type: !3651, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3651 = !DISubroutineType(types: !3652)
!3652 = !{!168, !169}
!3653 = !DISubprogram(name: "iswprint", scope: !3654, file: !3654, line: 120, type: !3455, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3654 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3655 = distinct !DISubprogram(name: "quotearg_alloc", scope: !761, file: !761, line: 788, type: !3656, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !3658)
!3656 = !DISubroutineType(types: !3657)
!3657 = !{!163, !169, !166, !2984}
!3658 = !{!3659, !3660, !3661}
!3659 = !DILocalVariable(name: "arg", arg: 1, scope: !3655, file: !761, line: 788, type: !169)
!3660 = !DILocalVariable(name: "argsize", arg: 2, scope: !3655, file: !761, line: 788, type: !166)
!3661 = !DILocalVariable(name: "o", arg: 3, scope: !3655, file: !761, line: 789, type: !2984)
!3662 = !DILocation(line: 0, scope: !3655)
!3663 = !DILocalVariable(name: "arg", arg: 1, scope: !3664, file: !761, line: 801, type: !169)
!3664 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !761, file: !761, line: 801, type: !3665, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !3667)
!3665 = !DISubroutineType(types: !3666)
!3666 = !{!163, !169, !166, !1013, !2984}
!3667 = !{!3663, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675}
!3668 = !DILocalVariable(name: "argsize", arg: 2, scope: !3664, file: !761, line: 801, type: !166)
!3669 = !DILocalVariable(name: "size", arg: 3, scope: !3664, file: !761, line: 801, type: !1013)
!3670 = !DILocalVariable(name: "o", arg: 4, scope: !3664, file: !761, line: 802, type: !2984)
!3671 = !DILocalVariable(name: "p", scope: !3664, file: !761, line: 804, type: !2984)
!3672 = !DILocalVariable(name: "saved_errno", scope: !3664, file: !761, line: 805, type: !122)
!3673 = !DILocalVariable(name: "flags", scope: !3664, file: !761, line: 807, type: !122)
!3674 = !DILocalVariable(name: "bufsize", scope: !3664, file: !761, line: 808, type: !166)
!3675 = !DILocalVariable(name: "buf", scope: !3664, file: !761, line: 812, type: !163)
!3676 = !DILocation(line: 0, scope: !3664, inlinedAt: !3677)
!3677 = distinct !DILocation(line: 791, column: 10, scope: !3655)
!3678 = !DILocation(line: 804, column: 37, scope: !3664, inlinedAt: !3677)
!3679 = !DILocation(line: 805, column: 21, scope: !3664, inlinedAt: !3677)
!3680 = !DILocation(line: 807, column: 18, scope: !3664, inlinedAt: !3677)
!3681 = !DILocation(line: 807, column: 24, scope: !3664, inlinedAt: !3677)
!3682 = !DILocation(line: 808, column: 72, scope: !3664, inlinedAt: !3677)
!3683 = !DILocation(line: 809, column: 56, scope: !3664, inlinedAt: !3677)
!3684 = !DILocation(line: 810, column: 49, scope: !3664, inlinedAt: !3677)
!3685 = !DILocation(line: 811, column: 49, scope: !3664, inlinedAt: !3677)
!3686 = !DILocation(line: 808, column: 20, scope: !3664, inlinedAt: !3677)
!3687 = !DILocation(line: 811, column: 62, scope: !3664, inlinedAt: !3677)
!3688 = !DILocation(line: 812, column: 15, scope: !3664, inlinedAt: !3677)
!3689 = !DILocation(line: 813, column: 60, scope: !3664, inlinedAt: !3677)
!3690 = !DILocation(line: 815, column: 32, scope: !3664, inlinedAt: !3677)
!3691 = !DILocation(line: 815, column: 47, scope: !3664, inlinedAt: !3677)
!3692 = !DILocation(line: 813, column: 3, scope: !3664, inlinedAt: !3677)
!3693 = !DILocation(line: 816, column: 9, scope: !3664, inlinedAt: !3677)
!3694 = !DILocation(line: 791, column: 3, scope: !3655)
!3695 = !DILocation(line: 0, scope: !3664)
!3696 = !DILocation(line: 804, column: 37, scope: !3664)
!3697 = !DILocation(line: 805, column: 21, scope: !3664)
!3698 = !DILocation(line: 807, column: 18, scope: !3664)
!3699 = !DILocation(line: 807, column: 27, scope: !3664)
!3700 = !DILocation(line: 807, column: 24, scope: !3664)
!3701 = !DILocation(line: 808, column: 72, scope: !3664)
!3702 = !DILocation(line: 809, column: 56, scope: !3664)
!3703 = !DILocation(line: 810, column: 49, scope: !3664)
!3704 = !DILocation(line: 811, column: 49, scope: !3664)
!3705 = !DILocation(line: 808, column: 20, scope: !3664)
!3706 = !DILocation(line: 811, column: 62, scope: !3664)
!3707 = !DILocation(line: 812, column: 15, scope: !3664)
!3708 = !DILocation(line: 813, column: 60, scope: !3664)
!3709 = !DILocation(line: 815, column: 32, scope: !3664)
!3710 = !DILocation(line: 815, column: 47, scope: !3664)
!3711 = !DILocation(line: 813, column: 3, scope: !3664)
!3712 = !DILocation(line: 816, column: 9, scope: !3664)
!3713 = !DILocation(line: 817, column: 7, scope: !3664)
!3714 = !DILocation(line: 818, column: 11, scope: !3715)
!3715 = distinct !DILexicalBlock(scope: !3664, file: !761, line: 817, column: 7)
!3716 = !DILocation(line: 818, column: 5, scope: !3715)
!3717 = !DILocation(line: 819, column: 3, scope: !3664)
!3718 = distinct !DISubprogram(name: "quotearg_free", scope: !761, file: !761, line: 837, type: !716, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !3719)
!3719 = !{!3720, !3721}
!3720 = !DILocalVariable(name: "sv", scope: !3718, file: !761, line: 839, type: !847)
!3721 = !DILocalVariable(name: "i", scope: !3722, file: !761, line: 840, type: !122)
!3722 = distinct !DILexicalBlock(scope: !3718, file: !761, line: 840, column: 3)
!3723 = !DILocation(line: 839, column: 24, scope: !3718)
!3724 = !DILocation(line: 0, scope: !3718)
!3725 = !DILocation(line: 0, scope: !3722)
!3726 = !DILocation(line: 840, column: 21, scope: !3727)
!3727 = distinct !DILexicalBlock(scope: !3722, file: !761, line: 840, column: 3)
!3728 = !DILocation(line: 840, column: 3, scope: !3722)
!3729 = !DILocation(line: 842, column: 13, scope: !3730)
!3730 = distinct !DILexicalBlock(scope: !3718, file: !761, line: 842, column: 7)
!3731 = !{!3732, !1076, i64 8}
!3732 = !{!"slotvec", !1355, i64 0, !1076, i64 8}
!3733 = !DILocation(line: 842, column: 17, scope: !3730)
!3734 = !DILocation(line: 842, column: 7, scope: !3718)
!3735 = !DILocation(line: 841, column: 17, scope: !3727)
!3736 = !DILocation(line: 841, column: 5, scope: !3727)
!3737 = !DILocation(line: 840, column: 32, scope: !3727)
!3738 = distinct !{!3738, !3728, !3739, !1204}
!3739 = !DILocation(line: 841, column: 20, scope: !3722)
!3740 = !DILocation(line: 844, column: 7, scope: !3741)
!3741 = distinct !DILexicalBlock(scope: !3730, file: !761, line: 843, column: 5)
!3742 = !DILocation(line: 845, column: 21, scope: !3741)
!3743 = !{!3732, !1355, i64 0}
!3744 = !DILocation(line: 846, column: 20, scope: !3741)
!3745 = !DILocation(line: 847, column: 5, scope: !3741)
!3746 = !DILocation(line: 848, column: 10, scope: !3747)
!3747 = distinct !DILexicalBlock(scope: !3718, file: !761, line: 848, column: 7)
!3748 = !DILocation(line: 848, column: 7, scope: !3718)
!3749 = !DILocation(line: 850, column: 7, scope: !3750)
!3750 = distinct !DILexicalBlock(scope: !3747, file: !761, line: 849, column: 5)
!3751 = !DILocation(line: 851, column: 15, scope: !3750)
!3752 = !DILocation(line: 852, column: 5, scope: !3750)
!3753 = !DILocation(line: 853, column: 10, scope: !3718)
!3754 = !DILocation(line: 854, column: 1, scope: !3718)
!3755 = distinct !DISubprogram(name: "quotearg_n", scope: !761, file: !761, line: 919, type: !1271, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !3756)
!3756 = !{!3757, !3758}
!3757 = !DILocalVariable(name: "n", arg: 1, scope: !3755, file: !761, line: 919, type: !122)
!3758 = !DILocalVariable(name: "arg", arg: 2, scope: !3755, file: !761, line: 919, type: !169)
!3759 = !DILocation(line: 0, scope: !3755)
!3760 = !DILocation(line: 921, column: 10, scope: !3755)
!3761 = !DILocation(line: 921, column: 3, scope: !3755)
!3762 = distinct !DISubprogram(name: "quotearg_n_options", scope: !761, file: !761, line: 866, type: !3763, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !3765)
!3763 = !DISubroutineType(types: !3764)
!3764 = !{!163, !122, !169, !166, !2984}
!3765 = !{!3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3776, !3777, !3779, !3780, !3781}
!3766 = !DILocalVariable(name: "n", arg: 1, scope: !3762, file: !761, line: 866, type: !122)
!3767 = !DILocalVariable(name: "arg", arg: 2, scope: !3762, file: !761, line: 866, type: !169)
!3768 = !DILocalVariable(name: "argsize", arg: 3, scope: !3762, file: !761, line: 866, type: !166)
!3769 = !DILocalVariable(name: "options", arg: 4, scope: !3762, file: !761, line: 867, type: !2984)
!3770 = !DILocalVariable(name: "saved_errno", scope: !3762, file: !761, line: 869, type: !122)
!3771 = !DILocalVariable(name: "sv", scope: !3762, file: !761, line: 871, type: !847)
!3772 = !DILocalVariable(name: "nslots_max", scope: !3762, file: !761, line: 873, type: !122)
!3773 = !DILocalVariable(name: "preallocated", scope: !3774, file: !761, line: 879, type: !231)
!3774 = distinct !DILexicalBlock(scope: !3775, file: !761, line: 878, column: 5)
!3775 = distinct !DILexicalBlock(scope: !3762, file: !761, line: 877, column: 7)
!3776 = !DILocalVariable(name: "new_nslots", scope: !3774, file: !761, line: 880, type: !1026)
!3777 = !DILocalVariable(name: "size", scope: !3778, file: !761, line: 891, type: !166)
!3778 = distinct !DILexicalBlock(scope: !3762, file: !761, line: 890, column: 3)
!3779 = !DILocalVariable(name: "val", scope: !3778, file: !761, line: 892, type: !163)
!3780 = !DILocalVariable(name: "flags", scope: !3778, file: !761, line: 894, type: !122)
!3781 = !DILocalVariable(name: "qsize", scope: !3778, file: !761, line: 895, type: !166)
!3782 = distinct !DIAssignID()
!3783 = !DILocation(line: 0, scope: !3774)
!3784 = !DILocation(line: 0, scope: !3762)
!3785 = !DILocation(line: 869, column: 21, scope: !3762)
!3786 = !DILocation(line: 871, column: 24, scope: !3762)
!3787 = !DILocation(line: 874, column: 17, scope: !3788)
!3788 = distinct !DILexicalBlock(scope: !3762, file: !761, line: 874, column: 7)
!3789 = !DILocation(line: 875, column: 5, scope: !3788)
!3790 = !DILocation(line: 877, column: 7, scope: !3775)
!3791 = !DILocation(line: 877, column: 14, scope: !3775)
!3792 = !DILocation(line: 877, column: 7, scope: !3762)
!3793 = !DILocation(line: 879, column: 31, scope: !3774)
!3794 = !DILocation(line: 880, column: 7, scope: !3774)
!3795 = !DILocation(line: 880, column: 26, scope: !3774)
!3796 = !DILocation(line: 880, column: 13, scope: !3774)
!3797 = distinct !DIAssignID()
!3798 = !DILocation(line: 882, column: 31, scope: !3774)
!3799 = !DILocation(line: 883, column: 33, scope: !3774)
!3800 = !DILocation(line: 883, column: 42, scope: !3774)
!3801 = !DILocation(line: 883, column: 31, scope: !3774)
!3802 = !DILocation(line: 882, column: 22, scope: !3774)
!3803 = !DILocation(line: 882, column: 15, scope: !3774)
!3804 = !DILocation(line: 884, column: 11, scope: !3774)
!3805 = !DILocation(line: 885, column: 15, scope: !3806)
!3806 = distinct !DILexicalBlock(scope: !3774, file: !761, line: 884, column: 11)
!3807 = !{i64 0, i64 8, !1354, i64 8, i64 8, !1075}
!3808 = !DILocation(line: 885, column: 9, scope: !3806)
!3809 = !DILocation(line: 886, column: 20, scope: !3774)
!3810 = !DILocation(line: 886, column: 18, scope: !3774)
!3811 = !DILocation(line: 886, column: 32, scope: !3774)
!3812 = !DILocation(line: 886, column: 43, scope: !3774)
!3813 = !DILocation(line: 886, column: 53, scope: !3774)
!3814 = !DILocation(line: 0, scope: !3201, inlinedAt: !3815)
!3815 = distinct !DILocation(line: 886, column: 7, scope: !3774)
!3816 = !DILocation(line: 59, column: 10, scope: !3201, inlinedAt: !3815)
!3817 = !DILocation(line: 887, column: 16, scope: !3774)
!3818 = !DILocation(line: 887, column: 14, scope: !3774)
!3819 = !DILocation(line: 888, column: 5, scope: !3775)
!3820 = !DILocation(line: 888, column: 5, scope: !3774)
!3821 = !DILocation(line: 891, column: 19, scope: !3778)
!3822 = !DILocation(line: 891, column: 25, scope: !3778)
!3823 = !DILocation(line: 0, scope: !3778)
!3824 = !DILocation(line: 892, column: 23, scope: !3778)
!3825 = !DILocation(line: 894, column: 26, scope: !3778)
!3826 = !DILocation(line: 894, column: 32, scope: !3778)
!3827 = !DILocation(line: 896, column: 55, scope: !3778)
!3828 = !DILocation(line: 897, column: 55, scope: !3778)
!3829 = !DILocation(line: 898, column: 55, scope: !3778)
!3830 = !DILocation(line: 899, column: 55, scope: !3778)
!3831 = !DILocation(line: 895, column: 20, scope: !3778)
!3832 = !DILocation(line: 901, column: 14, scope: !3833)
!3833 = distinct !DILexicalBlock(scope: !3778, file: !761, line: 901, column: 9)
!3834 = !DILocation(line: 901, column: 9, scope: !3778)
!3835 = !DILocation(line: 903, column: 35, scope: !3836)
!3836 = distinct !DILexicalBlock(scope: !3833, file: !761, line: 902, column: 7)
!3837 = !DILocation(line: 903, column: 20, scope: !3836)
!3838 = !DILocation(line: 904, column: 17, scope: !3839)
!3839 = distinct !DILexicalBlock(scope: !3836, file: !761, line: 904, column: 13)
!3840 = !DILocation(line: 904, column: 13, scope: !3836)
!3841 = !DILocation(line: 905, column: 11, scope: !3839)
!3842 = !DILocation(line: 906, column: 27, scope: !3836)
!3843 = !DILocation(line: 906, column: 19, scope: !3836)
!3844 = !DILocation(line: 907, column: 69, scope: !3836)
!3845 = !DILocation(line: 909, column: 44, scope: !3836)
!3846 = !DILocation(line: 910, column: 44, scope: !3836)
!3847 = !DILocation(line: 907, column: 9, scope: !3836)
!3848 = !DILocation(line: 911, column: 7, scope: !3836)
!3849 = !DILocation(line: 913, column: 11, scope: !3778)
!3850 = !DILocation(line: 914, column: 5, scope: !3778)
!3851 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !761, file: !761, line: 925, type: !3852, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !3854)
!3852 = !DISubroutineType(types: !3853)
!3853 = !{!163, !122, !169, !166}
!3854 = !{!3855, !3856, !3857}
!3855 = !DILocalVariable(name: "n", arg: 1, scope: !3851, file: !761, line: 925, type: !122)
!3856 = !DILocalVariable(name: "arg", arg: 2, scope: !3851, file: !761, line: 925, type: !169)
!3857 = !DILocalVariable(name: "argsize", arg: 3, scope: !3851, file: !761, line: 925, type: !166)
!3858 = !DILocation(line: 0, scope: !3851)
!3859 = !DILocation(line: 927, column: 10, scope: !3851)
!3860 = !DILocation(line: 927, column: 3, scope: !3851)
!3861 = distinct !DISubprogram(name: "quotearg", scope: !761, file: !761, line: 931, type: !1280, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !3862)
!3862 = !{!3863}
!3863 = !DILocalVariable(name: "arg", arg: 1, scope: !3861, file: !761, line: 931, type: !169)
!3864 = !DILocation(line: 0, scope: !3861)
!3865 = !DILocation(line: 0, scope: !3755, inlinedAt: !3866)
!3866 = distinct !DILocation(line: 933, column: 10, scope: !3861)
!3867 = !DILocation(line: 921, column: 10, scope: !3755, inlinedAt: !3866)
!3868 = !DILocation(line: 933, column: 3, scope: !3861)
!3869 = distinct !DISubprogram(name: "quotearg_mem", scope: !761, file: !761, line: 937, type: !3870, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !3872)
!3870 = !DISubroutineType(types: !3871)
!3871 = !{!163, !169, !166}
!3872 = !{!3873, !3874}
!3873 = !DILocalVariable(name: "arg", arg: 1, scope: !3869, file: !761, line: 937, type: !169)
!3874 = !DILocalVariable(name: "argsize", arg: 2, scope: !3869, file: !761, line: 937, type: !166)
!3875 = !DILocation(line: 0, scope: !3869)
!3876 = !DILocation(line: 0, scope: !3851, inlinedAt: !3877)
!3877 = distinct !DILocation(line: 939, column: 10, scope: !3869)
!3878 = !DILocation(line: 927, column: 10, scope: !3851, inlinedAt: !3877)
!3879 = !DILocation(line: 939, column: 3, scope: !3869)
!3880 = distinct !DISubprogram(name: "quotearg_n_style", scope: !761, file: !761, line: 943, type: !3881, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !3883)
!3881 = !DISubroutineType(types: !3882)
!3882 = !{!163, !122, !784, !169}
!3883 = !{!3884, !3885, !3886, !3887}
!3884 = !DILocalVariable(name: "n", arg: 1, scope: !3880, file: !761, line: 943, type: !122)
!3885 = !DILocalVariable(name: "s", arg: 2, scope: !3880, file: !761, line: 943, type: !784)
!3886 = !DILocalVariable(name: "arg", arg: 3, scope: !3880, file: !761, line: 943, type: !169)
!3887 = !DILocalVariable(name: "o", scope: !3880, file: !761, line: 945, type: !2985)
!3888 = distinct !DIAssignID()
!3889 = !DILocation(line: 0, scope: !3880)
!3890 = !DILocation(line: 945, column: 3, scope: !3880)
!3891 = !{!3892}
!3892 = distinct !{!3892, !3893, !"quoting_options_from_style: argument 0"}
!3893 = distinct !{!3893, !"quoting_options_from_style"}
!3894 = !DILocation(line: 945, column: 36, scope: !3880)
!3895 = !DILocalVariable(name: "style", arg: 1, scope: !3896, file: !761, line: 183, type: !784)
!3896 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !761, file: !761, line: 183, type: !3897, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !3899)
!3897 = !DISubroutineType(types: !3898)
!3898 = !{!799, !784}
!3899 = !{!3895, !3900}
!3900 = !DILocalVariable(name: "o", scope: !3896, file: !761, line: 185, type: !799)
!3901 = !DILocation(line: 0, scope: !3896, inlinedAt: !3902)
!3902 = distinct !DILocation(line: 945, column: 36, scope: !3880)
!3903 = !DILocation(line: 185, column: 26, scope: !3896, inlinedAt: !3902)
!3904 = distinct !DIAssignID()
!3905 = !DILocation(line: 186, column: 13, scope: !3906, inlinedAt: !3902)
!3906 = distinct !DILexicalBlock(scope: !3896, file: !761, line: 186, column: 7)
!3907 = !DILocation(line: 186, column: 7, scope: !3896, inlinedAt: !3902)
!3908 = !DILocation(line: 187, column: 5, scope: !3906, inlinedAt: !3902)
!3909 = !DILocation(line: 188, column: 11, scope: !3896, inlinedAt: !3902)
!3910 = distinct !DIAssignID()
!3911 = !DILocation(line: 946, column: 10, scope: !3880)
!3912 = !DILocation(line: 947, column: 1, scope: !3880)
!3913 = !DILocation(line: 946, column: 3, scope: !3880)
!3914 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !761, file: !761, line: 950, type: !3915, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !3917)
!3915 = !DISubroutineType(types: !3916)
!3916 = !{!163, !122, !784, !169, !166}
!3917 = !{!3918, !3919, !3920, !3921, !3922}
!3918 = !DILocalVariable(name: "n", arg: 1, scope: !3914, file: !761, line: 950, type: !122)
!3919 = !DILocalVariable(name: "s", arg: 2, scope: !3914, file: !761, line: 950, type: !784)
!3920 = !DILocalVariable(name: "arg", arg: 3, scope: !3914, file: !761, line: 951, type: !169)
!3921 = !DILocalVariable(name: "argsize", arg: 4, scope: !3914, file: !761, line: 951, type: !166)
!3922 = !DILocalVariable(name: "o", scope: !3914, file: !761, line: 953, type: !2985)
!3923 = distinct !DIAssignID()
!3924 = !DILocation(line: 0, scope: !3914)
!3925 = !DILocation(line: 953, column: 3, scope: !3914)
!3926 = !{!3927}
!3927 = distinct !{!3927, !3928, !"quoting_options_from_style: argument 0"}
!3928 = distinct !{!3928, !"quoting_options_from_style"}
!3929 = !DILocation(line: 953, column: 36, scope: !3914)
!3930 = !DILocation(line: 0, scope: !3896, inlinedAt: !3931)
!3931 = distinct !DILocation(line: 953, column: 36, scope: !3914)
!3932 = !DILocation(line: 185, column: 26, scope: !3896, inlinedAt: !3931)
!3933 = distinct !DIAssignID()
!3934 = !DILocation(line: 186, column: 13, scope: !3906, inlinedAt: !3931)
!3935 = !DILocation(line: 186, column: 7, scope: !3896, inlinedAt: !3931)
!3936 = !DILocation(line: 187, column: 5, scope: !3906, inlinedAt: !3931)
!3937 = !DILocation(line: 188, column: 11, scope: !3896, inlinedAt: !3931)
!3938 = distinct !DIAssignID()
!3939 = !DILocation(line: 954, column: 10, scope: !3914)
!3940 = !DILocation(line: 955, column: 1, scope: !3914)
!3941 = !DILocation(line: 954, column: 3, scope: !3914)
!3942 = distinct !DISubprogram(name: "quotearg_style", scope: !761, file: !761, line: 958, type: !3943, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !3945)
!3943 = !DISubroutineType(types: !3944)
!3944 = !{!163, !784, !169}
!3945 = !{!3946, !3947}
!3946 = !DILocalVariable(name: "s", arg: 1, scope: !3942, file: !761, line: 958, type: !784)
!3947 = !DILocalVariable(name: "arg", arg: 2, scope: !3942, file: !761, line: 958, type: !169)
!3948 = distinct !DIAssignID()
!3949 = !DILocation(line: 0, scope: !3942)
!3950 = !DILocation(line: 0, scope: !3880, inlinedAt: !3951)
!3951 = distinct !DILocation(line: 960, column: 10, scope: !3942)
!3952 = !DILocation(line: 945, column: 3, scope: !3880, inlinedAt: !3951)
!3953 = !{!3954}
!3954 = distinct !{!3954, !3955, !"quoting_options_from_style: argument 0"}
!3955 = distinct !{!3955, !"quoting_options_from_style"}
!3956 = !DILocation(line: 945, column: 36, scope: !3880, inlinedAt: !3951)
!3957 = !DILocation(line: 0, scope: !3896, inlinedAt: !3958)
!3958 = distinct !DILocation(line: 945, column: 36, scope: !3880, inlinedAt: !3951)
!3959 = !DILocation(line: 185, column: 26, scope: !3896, inlinedAt: !3958)
!3960 = distinct !DIAssignID()
!3961 = !DILocation(line: 186, column: 13, scope: !3906, inlinedAt: !3958)
!3962 = !DILocation(line: 186, column: 7, scope: !3896, inlinedAt: !3958)
!3963 = !DILocation(line: 187, column: 5, scope: !3906, inlinedAt: !3958)
!3964 = !DILocation(line: 188, column: 11, scope: !3896, inlinedAt: !3958)
!3965 = distinct !DIAssignID()
!3966 = !DILocation(line: 946, column: 10, scope: !3880, inlinedAt: !3951)
!3967 = !DILocation(line: 947, column: 1, scope: !3880, inlinedAt: !3951)
!3968 = !DILocation(line: 960, column: 3, scope: !3942)
!3969 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !761, file: !761, line: 964, type: !3970, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !3972)
!3970 = !DISubroutineType(types: !3971)
!3971 = !{!163, !784, !169, !166}
!3972 = !{!3973, !3974, !3975}
!3973 = !DILocalVariable(name: "s", arg: 1, scope: !3969, file: !761, line: 964, type: !784)
!3974 = !DILocalVariable(name: "arg", arg: 2, scope: !3969, file: !761, line: 964, type: !169)
!3975 = !DILocalVariable(name: "argsize", arg: 3, scope: !3969, file: !761, line: 964, type: !166)
!3976 = distinct !DIAssignID()
!3977 = !DILocation(line: 0, scope: !3969)
!3978 = !DILocation(line: 0, scope: !3914, inlinedAt: !3979)
!3979 = distinct !DILocation(line: 966, column: 10, scope: !3969)
!3980 = !DILocation(line: 953, column: 3, scope: !3914, inlinedAt: !3979)
!3981 = !{!3982}
!3982 = distinct !{!3982, !3983, !"quoting_options_from_style: argument 0"}
!3983 = distinct !{!3983, !"quoting_options_from_style"}
!3984 = !DILocation(line: 953, column: 36, scope: !3914, inlinedAt: !3979)
!3985 = !DILocation(line: 0, scope: !3896, inlinedAt: !3986)
!3986 = distinct !DILocation(line: 953, column: 36, scope: !3914, inlinedAt: !3979)
!3987 = !DILocation(line: 185, column: 26, scope: !3896, inlinedAt: !3986)
!3988 = distinct !DIAssignID()
!3989 = !DILocation(line: 186, column: 13, scope: !3906, inlinedAt: !3986)
!3990 = !DILocation(line: 186, column: 7, scope: !3896, inlinedAt: !3986)
!3991 = !DILocation(line: 187, column: 5, scope: !3906, inlinedAt: !3986)
!3992 = !DILocation(line: 188, column: 11, scope: !3896, inlinedAt: !3986)
!3993 = distinct !DIAssignID()
!3994 = !DILocation(line: 954, column: 10, scope: !3914, inlinedAt: !3979)
!3995 = !DILocation(line: 955, column: 1, scope: !3914, inlinedAt: !3979)
!3996 = !DILocation(line: 966, column: 3, scope: !3969)
!3997 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !761, file: !761, line: 970, type: !3998, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4000)
!3998 = !DISubroutineType(types: !3999)
!3999 = !{!163, !169, !166, !4}
!4000 = !{!4001, !4002, !4003, !4004}
!4001 = !DILocalVariable(name: "arg", arg: 1, scope: !3997, file: !761, line: 970, type: !169)
!4002 = !DILocalVariable(name: "argsize", arg: 2, scope: !3997, file: !761, line: 970, type: !166)
!4003 = !DILocalVariable(name: "ch", arg: 3, scope: !3997, file: !761, line: 970, type: !4)
!4004 = !DILocalVariable(name: "options", scope: !3997, file: !761, line: 972, type: !799)
!4005 = distinct !DIAssignID()
!4006 = !DILocation(line: 0, scope: !3997)
!4007 = !DILocation(line: 972, column: 3, scope: !3997)
!4008 = !DILocation(line: 973, column: 13, scope: !3997)
!4009 = !{i64 0, i64 4, !1157, i64 4, i64 4, !1157, i64 8, i64 32, !1166, i64 40, i64 8, !1075, i64 48, i64 8, !1075}
!4010 = distinct !DIAssignID()
!4011 = !DILocation(line: 0, scope: !3004, inlinedAt: !4012)
!4012 = distinct !DILocation(line: 974, column: 3, scope: !3997)
!4013 = !DILocation(line: 147, column: 41, scope: !3004, inlinedAt: !4012)
!4014 = !DILocation(line: 147, column: 62, scope: !3004, inlinedAt: !4012)
!4015 = !DILocation(line: 147, column: 57, scope: !3004, inlinedAt: !4012)
!4016 = !DILocation(line: 148, column: 15, scope: !3004, inlinedAt: !4012)
!4017 = !DILocation(line: 149, column: 21, scope: !3004, inlinedAt: !4012)
!4018 = !DILocation(line: 149, column: 24, scope: !3004, inlinedAt: !4012)
!4019 = !DILocation(line: 150, column: 19, scope: !3004, inlinedAt: !4012)
!4020 = !DILocation(line: 150, column: 24, scope: !3004, inlinedAt: !4012)
!4021 = !DILocation(line: 150, column: 6, scope: !3004, inlinedAt: !4012)
!4022 = !DILocation(line: 975, column: 10, scope: !3997)
!4023 = !DILocation(line: 976, column: 1, scope: !3997)
!4024 = !DILocation(line: 975, column: 3, scope: !3997)
!4025 = distinct !DISubprogram(name: "quotearg_char", scope: !761, file: !761, line: 979, type: !4026, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4028)
!4026 = !DISubroutineType(types: !4027)
!4027 = !{!163, !169, !4}
!4028 = !{!4029, !4030}
!4029 = !DILocalVariable(name: "arg", arg: 1, scope: !4025, file: !761, line: 979, type: !169)
!4030 = !DILocalVariable(name: "ch", arg: 2, scope: !4025, file: !761, line: 979, type: !4)
!4031 = distinct !DIAssignID()
!4032 = !DILocation(line: 0, scope: !4025)
!4033 = !DILocation(line: 0, scope: !3997, inlinedAt: !4034)
!4034 = distinct !DILocation(line: 981, column: 10, scope: !4025)
!4035 = !DILocation(line: 972, column: 3, scope: !3997, inlinedAt: !4034)
!4036 = !DILocation(line: 973, column: 13, scope: !3997, inlinedAt: !4034)
!4037 = distinct !DIAssignID()
!4038 = !DILocation(line: 0, scope: !3004, inlinedAt: !4039)
!4039 = distinct !DILocation(line: 974, column: 3, scope: !3997, inlinedAt: !4034)
!4040 = !DILocation(line: 147, column: 41, scope: !3004, inlinedAt: !4039)
!4041 = !DILocation(line: 147, column: 62, scope: !3004, inlinedAt: !4039)
!4042 = !DILocation(line: 147, column: 57, scope: !3004, inlinedAt: !4039)
!4043 = !DILocation(line: 148, column: 15, scope: !3004, inlinedAt: !4039)
!4044 = !DILocation(line: 149, column: 21, scope: !3004, inlinedAt: !4039)
!4045 = !DILocation(line: 149, column: 24, scope: !3004, inlinedAt: !4039)
!4046 = !DILocation(line: 150, column: 19, scope: !3004, inlinedAt: !4039)
!4047 = !DILocation(line: 150, column: 24, scope: !3004, inlinedAt: !4039)
!4048 = !DILocation(line: 150, column: 6, scope: !3004, inlinedAt: !4039)
!4049 = !DILocation(line: 975, column: 10, scope: !3997, inlinedAt: !4034)
!4050 = !DILocation(line: 976, column: 1, scope: !3997, inlinedAt: !4034)
!4051 = !DILocation(line: 981, column: 3, scope: !4025)
!4052 = distinct !DISubprogram(name: "quotearg_colon", scope: !761, file: !761, line: 985, type: !1280, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4053)
!4053 = !{!4054}
!4054 = !DILocalVariable(name: "arg", arg: 1, scope: !4052, file: !761, line: 985, type: !169)
!4055 = distinct !DIAssignID()
!4056 = !DILocation(line: 0, scope: !4052)
!4057 = !DILocation(line: 0, scope: !4025, inlinedAt: !4058)
!4058 = distinct !DILocation(line: 987, column: 10, scope: !4052)
!4059 = !DILocation(line: 0, scope: !3997, inlinedAt: !4060)
!4060 = distinct !DILocation(line: 981, column: 10, scope: !4025, inlinedAt: !4058)
!4061 = !DILocation(line: 972, column: 3, scope: !3997, inlinedAt: !4060)
!4062 = !DILocation(line: 973, column: 13, scope: !3997, inlinedAt: !4060)
!4063 = distinct !DIAssignID()
!4064 = !DILocation(line: 0, scope: !3004, inlinedAt: !4065)
!4065 = distinct !DILocation(line: 974, column: 3, scope: !3997, inlinedAt: !4060)
!4066 = !DILocation(line: 147, column: 57, scope: !3004, inlinedAt: !4065)
!4067 = !DILocation(line: 149, column: 21, scope: !3004, inlinedAt: !4065)
!4068 = !DILocation(line: 150, column: 6, scope: !3004, inlinedAt: !4065)
!4069 = !DILocation(line: 975, column: 10, scope: !3997, inlinedAt: !4060)
!4070 = !DILocation(line: 976, column: 1, scope: !3997, inlinedAt: !4060)
!4071 = !DILocation(line: 987, column: 3, scope: !4052)
!4072 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !761, file: !761, line: 991, type: !3870, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4073)
!4073 = !{!4074, !4075}
!4074 = !DILocalVariable(name: "arg", arg: 1, scope: !4072, file: !761, line: 991, type: !169)
!4075 = !DILocalVariable(name: "argsize", arg: 2, scope: !4072, file: !761, line: 991, type: !166)
!4076 = distinct !DIAssignID()
!4077 = !DILocation(line: 0, scope: !4072)
!4078 = !DILocation(line: 0, scope: !3997, inlinedAt: !4079)
!4079 = distinct !DILocation(line: 993, column: 10, scope: !4072)
!4080 = !DILocation(line: 972, column: 3, scope: !3997, inlinedAt: !4079)
!4081 = !DILocation(line: 973, column: 13, scope: !3997, inlinedAt: !4079)
!4082 = distinct !DIAssignID()
!4083 = !DILocation(line: 0, scope: !3004, inlinedAt: !4084)
!4084 = distinct !DILocation(line: 974, column: 3, scope: !3997, inlinedAt: !4079)
!4085 = !DILocation(line: 147, column: 57, scope: !3004, inlinedAt: !4084)
!4086 = !DILocation(line: 149, column: 21, scope: !3004, inlinedAt: !4084)
!4087 = !DILocation(line: 150, column: 6, scope: !3004, inlinedAt: !4084)
!4088 = !DILocation(line: 975, column: 10, scope: !3997, inlinedAt: !4079)
!4089 = !DILocation(line: 976, column: 1, scope: !3997, inlinedAt: !4079)
!4090 = !DILocation(line: 993, column: 3, scope: !4072)
!4091 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !761, file: !761, line: 997, type: !3881, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4092)
!4092 = !{!4093, !4094, !4095, !4096}
!4093 = !DILocalVariable(name: "n", arg: 1, scope: !4091, file: !761, line: 997, type: !122)
!4094 = !DILocalVariable(name: "s", arg: 2, scope: !4091, file: !761, line: 997, type: !784)
!4095 = !DILocalVariable(name: "arg", arg: 3, scope: !4091, file: !761, line: 997, type: !169)
!4096 = !DILocalVariable(name: "options", scope: !4091, file: !761, line: 999, type: !799)
!4097 = distinct !DIAssignID()
!4098 = !DILocation(line: 0, scope: !4091)
!4099 = !DILocation(line: 185, column: 26, scope: !3896, inlinedAt: !4100)
!4100 = distinct !DILocation(line: 1000, column: 13, scope: !4091)
!4101 = !DILocation(line: 999, column: 3, scope: !4091)
!4102 = !DILocation(line: 0, scope: !3896, inlinedAt: !4100)
!4103 = !DILocation(line: 186, column: 13, scope: !3906, inlinedAt: !4100)
!4104 = !DILocation(line: 186, column: 7, scope: !3896, inlinedAt: !4100)
!4105 = !DILocation(line: 187, column: 5, scope: !3906, inlinedAt: !4100)
!4106 = !{!4107}
!4107 = distinct !{!4107, !4108, !"quoting_options_from_style: argument 0"}
!4108 = distinct !{!4108, !"quoting_options_from_style"}
!4109 = !DILocation(line: 1000, column: 13, scope: !4091)
!4110 = distinct !DIAssignID()
!4111 = distinct !DIAssignID()
!4112 = !DILocation(line: 0, scope: !3004, inlinedAt: !4113)
!4113 = distinct !DILocation(line: 1001, column: 3, scope: !4091)
!4114 = !DILocation(line: 147, column: 57, scope: !3004, inlinedAt: !4113)
!4115 = !DILocation(line: 149, column: 21, scope: !3004, inlinedAt: !4113)
!4116 = !DILocation(line: 150, column: 6, scope: !3004, inlinedAt: !4113)
!4117 = distinct !DIAssignID()
!4118 = !DILocation(line: 1002, column: 10, scope: !4091)
!4119 = !DILocation(line: 1003, column: 1, scope: !4091)
!4120 = !DILocation(line: 1002, column: 3, scope: !4091)
!4121 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !761, file: !761, line: 1006, type: !4122, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4124)
!4122 = !DISubroutineType(types: !4123)
!4123 = !{!163, !122, !169, !169, !169}
!4124 = !{!4125, !4126, !4127, !4128}
!4125 = !DILocalVariable(name: "n", arg: 1, scope: !4121, file: !761, line: 1006, type: !122)
!4126 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4121, file: !761, line: 1006, type: !169)
!4127 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4121, file: !761, line: 1007, type: !169)
!4128 = !DILocalVariable(name: "arg", arg: 4, scope: !4121, file: !761, line: 1007, type: !169)
!4129 = distinct !DIAssignID()
!4130 = !DILocation(line: 0, scope: !4121)
!4131 = !DILocalVariable(name: "o", scope: !4132, file: !761, line: 1018, type: !799)
!4132 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !761, file: !761, line: 1014, type: !4133, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4135)
!4133 = !DISubroutineType(types: !4134)
!4134 = !{!163, !122, !169, !169, !169, !166}
!4135 = !{!4136, !4137, !4138, !4139, !4140, !4131}
!4136 = !DILocalVariable(name: "n", arg: 1, scope: !4132, file: !761, line: 1014, type: !122)
!4137 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4132, file: !761, line: 1014, type: !169)
!4138 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4132, file: !761, line: 1015, type: !169)
!4139 = !DILocalVariable(name: "arg", arg: 4, scope: !4132, file: !761, line: 1016, type: !169)
!4140 = !DILocalVariable(name: "argsize", arg: 5, scope: !4132, file: !761, line: 1016, type: !166)
!4141 = !DILocation(line: 0, scope: !4132, inlinedAt: !4142)
!4142 = distinct !DILocation(line: 1009, column: 10, scope: !4121)
!4143 = !DILocation(line: 1018, column: 3, scope: !4132, inlinedAt: !4142)
!4144 = !DILocation(line: 1018, column: 30, scope: !4132, inlinedAt: !4142)
!4145 = distinct !DIAssignID()
!4146 = distinct !DIAssignID()
!4147 = !DILocation(line: 0, scope: !3044, inlinedAt: !4148)
!4148 = distinct !DILocation(line: 1019, column: 3, scope: !4132, inlinedAt: !4142)
!4149 = !DILocation(line: 174, column: 12, scope: !3044, inlinedAt: !4148)
!4150 = distinct !DIAssignID()
!4151 = !DILocation(line: 175, column: 8, scope: !3057, inlinedAt: !4148)
!4152 = !DILocation(line: 175, column: 19, scope: !3057, inlinedAt: !4148)
!4153 = !DILocation(line: 176, column: 5, scope: !3057, inlinedAt: !4148)
!4154 = !DILocation(line: 177, column: 6, scope: !3044, inlinedAt: !4148)
!4155 = !DILocation(line: 177, column: 17, scope: !3044, inlinedAt: !4148)
!4156 = distinct !DIAssignID()
!4157 = !DILocation(line: 178, column: 6, scope: !3044, inlinedAt: !4148)
!4158 = !DILocation(line: 178, column: 18, scope: !3044, inlinedAt: !4148)
!4159 = distinct !DIAssignID()
!4160 = !DILocation(line: 1020, column: 10, scope: !4132, inlinedAt: !4142)
!4161 = !DILocation(line: 1021, column: 1, scope: !4132, inlinedAt: !4142)
!4162 = !DILocation(line: 1009, column: 3, scope: !4121)
!4163 = distinct !DIAssignID()
!4164 = !DILocation(line: 0, scope: !4132)
!4165 = !DILocation(line: 1018, column: 3, scope: !4132)
!4166 = !DILocation(line: 1018, column: 30, scope: !4132)
!4167 = distinct !DIAssignID()
!4168 = distinct !DIAssignID()
!4169 = !DILocation(line: 0, scope: !3044, inlinedAt: !4170)
!4170 = distinct !DILocation(line: 1019, column: 3, scope: !4132)
!4171 = !DILocation(line: 174, column: 12, scope: !3044, inlinedAt: !4170)
!4172 = distinct !DIAssignID()
!4173 = !DILocation(line: 175, column: 8, scope: !3057, inlinedAt: !4170)
!4174 = !DILocation(line: 175, column: 19, scope: !3057, inlinedAt: !4170)
!4175 = !DILocation(line: 176, column: 5, scope: !3057, inlinedAt: !4170)
!4176 = !DILocation(line: 177, column: 6, scope: !3044, inlinedAt: !4170)
!4177 = !DILocation(line: 177, column: 17, scope: !3044, inlinedAt: !4170)
!4178 = distinct !DIAssignID()
!4179 = !DILocation(line: 178, column: 6, scope: !3044, inlinedAt: !4170)
!4180 = !DILocation(line: 178, column: 18, scope: !3044, inlinedAt: !4170)
!4181 = distinct !DIAssignID()
!4182 = !DILocation(line: 1020, column: 10, scope: !4132)
!4183 = !DILocation(line: 1021, column: 1, scope: !4132)
!4184 = !DILocation(line: 1020, column: 3, scope: !4132)
!4185 = distinct !DISubprogram(name: "quotearg_custom", scope: !761, file: !761, line: 1024, type: !4186, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4188)
!4186 = !DISubroutineType(types: !4187)
!4187 = !{!163, !169, !169, !169}
!4188 = !{!4189, !4190, !4191}
!4189 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4185, file: !761, line: 1024, type: !169)
!4190 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4185, file: !761, line: 1024, type: !169)
!4191 = !DILocalVariable(name: "arg", arg: 3, scope: !4185, file: !761, line: 1025, type: !169)
!4192 = distinct !DIAssignID()
!4193 = !DILocation(line: 0, scope: !4185)
!4194 = !DILocation(line: 0, scope: !4121, inlinedAt: !4195)
!4195 = distinct !DILocation(line: 1027, column: 10, scope: !4185)
!4196 = !DILocation(line: 0, scope: !4132, inlinedAt: !4197)
!4197 = distinct !DILocation(line: 1009, column: 10, scope: !4121, inlinedAt: !4195)
!4198 = !DILocation(line: 1018, column: 3, scope: !4132, inlinedAt: !4197)
!4199 = !DILocation(line: 1018, column: 30, scope: !4132, inlinedAt: !4197)
!4200 = distinct !DIAssignID()
!4201 = distinct !DIAssignID()
!4202 = !DILocation(line: 0, scope: !3044, inlinedAt: !4203)
!4203 = distinct !DILocation(line: 1019, column: 3, scope: !4132, inlinedAt: !4197)
!4204 = !DILocation(line: 174, column: 12, scope: !3044, inlinedAt: !4203)
!4205 = distinct !DIAssignID()
!4206 = !DILocation(line: 175, column: 8, scope: !3057, inlinedAt: !4203)
!4207 = !DILocation(line: 175, column: 19, scope: !3057, inlinedAt: !4203)
!4208 = !DILocation(line: 176, column: 5, scope: !3057, inlinedAt: !4203)
!4209 = !DILocation(line: 177, column: 6, scope: !3044, inlinedAt: !4203)
!4210 = !DILocation(line: 177, column: 17, scope: !3044, inlinedAt: !4203)
!4211 = distinct !DIAssignID()
!4212 = !DILocation(line: 178, column: 6, scope: !3044, inlinedAt: !4203)
!4213 = !DILocation(line: 178, column: 18, scope: !3044, inlinedAt: !4203)
!4214 = distinct !DIAssignID()
!4215 = !DILocation(line: 1020, column: 10, scope: !4132, inlinedAt: !4197)
!4216 = !DILocation(line: 1021, column: 1, scope: !4132, inlinedAt: !4197)
!4217 = !DILocation(line: 1027, column: 3, scope: !4185)
!4218 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !761, file: !761, line: 1031, type: !4219, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4221)
!4219 = !DISubroutineType(types: !4220)
!4220 = !{!163, !169, !169, !169, !166}
!4221 = !{!4222, !4223, !4224, !4225}
!4222 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4218, file: !761, line: 1031, type: !169)
!4223 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4218, file: !761, line: 1031, type: !169)
!4224 = !DILocalVariable(name: "arg", arg: 3, scope: !4218, file: !761, line: 1032, type: !169)
!4225 = !DILocalVariable(name: "argsize", arg: 4, scope: !4218, file: !761, line: 1032, type: !166)
!4226 = distinct !DIAssignID()
!4227 = !DILocation(line: 0, scope: !4218)
!4228 = !DILocation(line: 0, scope: !4132, inlinedAt: !4229)
!4229 = distinct !DILocation(line: 1034, column: 10, scope: !4218)
!4230 = !DILocation(line: 1018, column: 3, scope: !4132, inlinedAt: !4229)
!4231 = !DILocation(line: 1018, column: 30, scope: !4132, inlinedAt: !4229)
!4232 = distinct !DIAssignID()
!4233 = distinct !DIAssignID()
!4234 = !DILocation(line: 0, scope: !3044, inlinedAt: !4235)
!4235 = distinct !DILocation(line: 1019, column: 3, scope: !4132, inlinedAt: !4229)
!4236 = !DILocation(line: 174, column: 12, scope: !3044, inlinedAt: !4235)
!4237 = distinct !DIAssignID()
!4238 = !DILocation(line: 175, column: 8, scope: !3057, inlinedAt: !4235)
!4239 = !DILocation(line: 175, column: 19, scope: !3057, inlinedAt: !4235)
!4240 = !DILocation(line: 176, column: 5, scope: !3057, inlinedAt: !4235)
!4241 = !DILocation(line: 177, column: 6, scope: !3044, inlinedAt: !4235)
!4242 = !DILocation(line: 177, column: 17, scope: !3044, inlinedAt: !4235)
!4243 = distinct !DIAssignID()
!4244 = !DILocation(line: 178, column: 6, scope: !3044, inlinedAt: !4235)
!4245 = !DILocation(line: 178, column: 18, scope: !3044, inlinedAt: !4235)
!4246 = distinct !DIAssignID()
!4247 = !DILocation(line: 1020, column: 10, scope: !4132, inlinedAt: !4229)
!4248 = !DILocation(line: 1021, column: 1, scope: !4132, inlinedAt: !4229)
!4249 = !DILocation(line: 1034, column: 3, scope: !4218)
!4250 = distinct !DISubprogram(name: "quote_n_mem", scope: !761, file: !761, line: 1049, type: !4251, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4253)
!4251 = !DISubroutineType(types: !4252)
!4252 = !{!169, !122, !169, !166}
!4253 = !{!4254, !4255, !4256}
!4254 = !DILocalVariable(name: "n", arg: 1, scope: !4250, file: !761, line: 1049, type: !122)
!4255 = !DILocalVariable(name: "arg", arg: 2, scope: !4250, file: !761, line: 1049, type: !169)
!4256 = !DILocalVariable(name: "argsize", arg: 3, scope: !4250, file: !761, line: 1049, type: !166)
!4257 = !DILocation(line: 0, scope: !4250)
!4258 = !DILocation(line: 1051, column: 10, scope: !4250)
!4259 = !DILocation(line: 1051, column: 3, scope: !4250)
!4260 = distinct !DISubprogram(name: "quote_mem", scope: !761, file: !761, line: 1055, type: !4261, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4263)
!4261 = !DISubroutineType(types: !4262)
!4262 = !{!169, !169, !166}
!4263 = !{!4264, !4265}
!4264 = !DILocalVariable(name: "arg", arg: 1, scope: !4260, file: !761, line: 1055, type: !169)
!4265 = !DILocalVariable(name: "argsize", arg: 2, scope: !4260, file: !761, line: 1055, type: !166)
!4266 = !DILocation(line: 0, scope: !4260)
!4267 = !DILocation(line: 0, scope: !4250, inlinedAt: !4268)
!4268 = distinct !DILocation(line: 1057, column: 10, scope: !4260)
!4269 = !DILocation(line: 1051, column: 10, scope: !4250, inlinedAt: !4268)
!4270 = !DILocation(line: 1057, column: 3, scope: !4260)
!4271 = distinct !DISubprogram(name: "quote_n", scope: !761, file: !761, line: 1061, type: !4272, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4274)
!4272 = !DISubroutineType(types: !4273)
!4273 = !{!169, !122, !169}
!4274 = !{!4275, !4276}
!4275 = !DILocalVariable(name: "n", arg: 1, scope: !4271, file: !761, line: 1061, type: !122)
!4276 = !DILocalVariable(name: "arg", arg: 2, scope: !4271, file: !761, line: 1061, type: !169)
!4277 = !DILocation(line: 0, scope: !4271)
!4278 = !DILocation(line: 0, scope: !4250, inlinedAt: !4279)
!4279 = distinct !DILocation(line: 1063, column: 10, scope: !4271)
!4280 = !DILocation(line: 1051, column: 10, scope: !4250, inlinedAt: !4279)
!4281 = !DILocation(line: 1063, column: 3, scope: !4271)
!4282 = distinct !DISubprogram(name: "quote", scope: !761, file: !761, line: 1067, type: !1513, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4283)
!4283 = !{!4284}
!4284 = !DILocalVariable(name: "arg", arg: 1, scope: !4282, file: !761, line: 1067, type: !169)
!4285 = !DILocation(line: 0, scope: !4282)
!4286 = !DILocation(line: 0, scope: !4271, inlinedAt: !4287)
!4287 = distinct !DILocation(line: 1069, column: 10, scope: !4282)
!4288 = !DILocation(line: 0, scope: !4250, inlinedAt: !4289)
!4289 = distinct !DILocation(line: 1063, column: 10, scope: !4271, inlinedAt: !4287)
!4290 = !DILocation(line: 1051, column: 10, scope: !4250, inlinedAt: !4289)
!4291 = !DILocation(line: 1069, column: 3, scope: !4282)
!4292 = distinct !DISubprogram(name: "str2sig", scope: !863, file: !863, line: 321, type: !4293, scopeLine: 322, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !862, retainedNodes: !4295)
!4293 = !DISubroutineType(types: !4294)
!4294 = !{!122, !169, !524}
!4295 = !{!4296, !4297}
!4296 = !DILocalVariable(name: "signame", arg: 1, scope: !4292, file: !863, line: 321, type: !169)
!4297 = !DILocalVariable(name: "signum", arg: 2, scope: !4292, file: !863, line: 321, type: !524)
!4298 = distinct !DIAssignID()
!4299 = distinct !DIAssignID()
!4300 = distinct !DIAssignID()
!4301 = !DILocation(line: 0, scope: !4292)
!4302 = !DILocalVariable(name: "endp", scope: !4303, file: !863, line: 282, type: !163)
!4303 = distinct !DILexicalBlock(scope: !4304, file: !863, line: 281, column: 5)
!4304 = distinct !DILexicalBlock(scope: !4305, file: !863, line: 280, column: 7)
!4305 = distinct !DISubprogram(name: "str2signum", scope: !863, file: !863, line: 278, type: !2382, scopeLine: 279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !862, retainedNodes: !4306)
!4306 = !{!4307, !4302, !4308, !4309, !4312, !4314, !4315, !4318, !4319, !4322}
!4307 = !DILocalVariable(name: "signame", arg: 1, scope: !4305, file: !863, line: 278, type: !169)
!4308 = !DILocalVariable(name: "n", scope: !4303, file: !863, line: 283, type: !174)
!4309 = !DILocalVariable(name: "i", scope: !4310, file: !863, line: 289, type: !109)
!4310 = distinct !DILexicalBlock(scope: !4311, file: !863, line: 289, column: 7)
!4311 = distinct !DILexicalBlock(scope: !4304, file: !863, line: 288, column: 5)
!4312 = !DILocalVariable(name: "rtmin", scope: !4313, file: !863, line: 294, type: !122)
!4313 = distinct !DILexicalBlock(scope: !4311, file: !863, line: 293, column: 7)
!4314 = !DILocalVariable(name: "rtmax", scope: !4313, file: !863, line: 295, type: !122)
!4315 = !DILocalVariable(name: "endp", scope: !4316, file: !863, line: 299, type: !163)
!4316 = distinct !DILexicalBlock(scope: !4317, file: !863, line: 298, column: 11)
!4317 = distinct !DILexicalBlock(scope: !4313, file: !863, line: 297, column: 13)
!4318 = !DILocalVariable(name: "n", scope: !4316, file: !863, line: 300, type: !174)
!4319 = !DILocalVariable(name: "endp", scope: !4320, file: !863, line: 306, type: !163)
!4320 = distinct !DILexicalBlock(scope: !4321, file: !863, line: 305, column: 11)
!4321 = distinct !DILexicalBlock(scope: !4317, file: !863, line: 304, column: 18)
!4322 = !DILocalVariable(name: "n", scope: !4320, file: !863, line: 307, type: !174)
!4323 = !DILocation(line: 0, scope: !4303, inlinedAt: !4324)
!4324 = distinct !DILocation(line: 323, column: 13, scope: !4292)
!4325 = !DILocation(line: 0, scope: !4316, inlinedAt: !4324)
!4326 = !DILocation(line: 0, scope: !4320, inlinedAt: !4324)
!4327 = !DILocation(line: 0, scope: !4305, inlinedAt: !4324)
!4328 = !DILocation(line: 280, column: 7, scope: !4304, inlinedAt: !4324)
!4329 = !DILocation(line: 280, column: 7, scope: !4305, inlinedAt: !4324)
!4330 = !DILocation(line: 289, column: 7, scope: !4310, inlinedAt: !4324)
!4331 = !DILocation(line: 282, column: 7, scope: !4303, inlinedAt: !4324)
!4332 = !DILocation(line: 283, column: 20, scope: !4303, inlinedAt: !4324)
!4333 = !DILocation(line: 284, column: 14, scope: !4334, inlinedAt: !4324)
!4334 = distinct !DILexicalBlock(scope: !4303, file: !863, line: 284, column: 11)
!4335 = !DILocation(line: 284, column: 13, scope: !4334, inlinedAt: !4324)
!4336 = !DILocation(line: 284, column: 19, scope: !4334, inlinedAt: !4324)
!4337 = !DILocation(line: 286, column: 5, scope: !4304, inlinedAt: !4324)
!4338 = !DILocation(line: 289, column: 54, scope: !4339, inlinedAt: !4324)
!4339 = distinct !DILexicalBlock(scope: !4310, file: !863, line: 289, column: 7)
!4340 = !DILocation(line: 0, scope: !4310, inlinedAt: !4324)
!4341 = !DILocation(line: 289, column: 34, scope: !4339, inlinedAt: !4324)
!4342 = distinct !{!4342, !4330, !4343, !1204}
!4343 = !DILocation(line: 291, column: 35, scope: !4310, inlinedAt: !4324)
!4344 = !DILocation(line: 290, column: 37, scope: !4345, inlinedAt: !4324)
!4345 = distinct !DILexicalBlock(scope: !4339, file: !863, line: 290, column: 13)
!4346 = !DILocalVariable(name: "__s1", arg: 1, scope: !4347, file: !1170, line: 1359, type: !169)
!4347 = distinct !DISubprogram(name: "streq", scope: !1170, file: !1170, line: 1359, type: !1171, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !862, retainedNodes: !4348)
!4348 = !{!4346, !4349}
!4349 = !DILocalVariable(name: "__s2", arg: 2, scope: !4347, file: !1170, line: 1359, type: !169)
!4350 = !DILocation(line: 0, scope: !4347, inlinedAt: !4351)
!4351 = distinct !DILocation(line: 290, column: 13, scope: !4345, inlinedAt: !4324)
!4352 = !DILocation(line: 1361, column: 11, scope: !4347, inlinedAt: !4351)
!4353 = !DILocation(line: 1361, column: 10, scope: !4347, inlinedAt: !4351)
!4354 = !DILocation(line: 290, column: 13, scope: !4339, inlinedAt: !4324)
!4355 = !DILocation(line: 290, column: 20, scope: !4345, inlinedAt: !4324)
!4356 = !DILocation(line: 291, column: 35, scope: !4345, inlinedAt: !4324)
!4357 = !{!4358, !1158, i64 0}
!4358 = !{!"numname", !1158, i64 0, !1077, i64 4}
!4359 = !DILocation(line: 294, column: 21, scope: !4313, inlinedAt: !4324)
!4360 = !DILocation(line: 0, scope: !4313, inlinedAt: !4324)
!4361 = !DILocation(line: 295, column: 21, scope: !4313, inlinedAt: !4324)
!4362 = !DILocation(line: 297, column: 15, scope: !4317, inlinedAt: !4324)
!4363 = !DILocation(line: 297, column: 23, scope: !4317, inlinedAt: !4324)
!4364 = !DILocation(line: 297, column: 26, scope: !4317, inlinedAt: !4324)
!4365 = !DILocation(line: 297, column: 56, scope: !4317, inlinedAt: !4324)
!4366 = !DILocation(line: 297, column: 13, scope: !4313, inlinedAt: !4324)
!4367 = !DILocation(line: 299, column: 13, scope: !4316, inlinedAt: !4324)
!4368 = !DILocation(line: 300, column: 42, scope: !4316, inlinedAt: !4324)
!4369 = !DILocation(line: 300, column: 26, scope: !4316, inlinedAt: !4324)
!4370 = !DILocation(line: 301, column: 20, scope: !4371, inlinedAt: !4324)
!4371 = distinct !DILexicalBlock(scope: !4316, file: !863, line: 301, column: 17)
!4372 = !DILocation(line: 301, column: 19, scope: !4371, inlinedAt: !4324)
!4373 = !DILocation(line: 301, column: 25, scope: !4371, inlinedAt: !4324)
!4374 = !DILocation(line: 301, column: 49, scope: !4371, inlinedAt: !4324)
!4375 = !DILocation(line: 301, column: 43, scope: !4371, inlinedAt: !4324)
!4376 = !DILocation(line: 301, column: 40, scope: !4371, inlinedAt: !4324)
!4377 = !DILocation(line: 301, column: 17, scope: !4316, inlinedAt: !4324)
!4378 = !DILocation(line: 303, column: 11, scope: !4317, inlinedAt: !4324)
!4379 = !DILocation(line: 302, column: 22, scope: !4371, inlinedAt: !4324)
!4380 = !DILocation(line: 304, column: 20, scope: !4321, inlinedAt: !4324)
!4381 = !DILocation(line: 304, column: 28, scope: !4321, inlinedAt: !4324)
!4382 = !DILocation(line: 304, column: 31, scope: !4321, inlinedAt: !4324)
!4383 = !DILocation(line: 304, column: 61, scope: !4321, inlinedAt: !4324)
!4384 = !DILocation(line: 304, column: 18, scope: !4317, inlinedAt: !4324)
!4385 = !DILocation(line: 306, column: 13, scope: !4320, inlinedAt: !4324)
!4386 = !DILocation(line: 307, column: 42, scope: !4320, inlinedAt: !4324)
!4387 = !DILocation(line: 307, column: 26, scope: !4320, inlinedAt: !4324)
!4388 = !DILocation(line: 308, column: 20, scope: !4389, inlinedAt: !4324)
!4389 = distinct !DILexicalBlock(scope: !4320, file: !863, line: 308, column: 17)
!4390 = !DILocation(line: 308, column: 19, scope: !4389, inlinedAt: !4324)
!4391 = !DILocation(line: 308, column: 25, scope: !4389, inlinedAt: !4324)
!4392 = !DILocation(line: 308, column: 34, scope: !4389, inlinedAt: !4324)
!4393 = !DILocation(line: 308, column: 28, scope: !4389, inlinedAt: !4324)
!4394 = !DILocation(line: 308, column: 42, scope: !4389, inlinedAt: !4324)
!4395 = !DILocation(line: 308, column: 47, scope: !4389, inlinedAt: !4324)
!4396 = !DILocation(line: 310, column: 11, scope: !4321, inlinedAt: !4324)
!4397 = !DILocation(line: 309, column: 22, scope: !4389, inlinedAt: !4324)
!4398 = !DILocation(line: 314, column: 3, scope: !4305, inlinedAt: !4324)
!4399 = !DILocation(line: 323, column: 11, scope: !4292)
!4400 = !DILocation(line: 324, column: 10, scope: !4292)
!4401 = !DILocation(line: 324, column: 3, scope: !4292)
!4402 = !DISubprogram(name: "__libc_current_sigrtmin", scope: !176, file: !176, line: 383, type: !4403, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4403 = !DISubroutineType(types: !4404)
!4404 = !{!122}
!4405 = !DISubprogram(name: "__libc_current_sigrtmax", scope: !176, file: !176, line: 385, type: !4403, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4406 = distinct !DISubprogram(name: "sig2str", scope: !863, file: !863, line: 332, type: !4407, scopeLine: 333, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !862, retainedNodes: !4409)
!4407 = !DISubroutineType(types: !4408)
!4408 = !{!122, !122, !163}
!4409 = !{!4410, !4411, !4412, !4414, !4416, !4417, !4418}
!4410 = !DILocalVariable(name: "signum", arg: 1, scope: !4406, file: !863, line: 332, type: !122)
!4411 = !DILocalVariable(name: "signame", arg: 2, scope: !4406, file: !863, line: 332, type: !163)
!4412 = !DILocalVariable(name: "i", scope: !4413, file: !863, line: 334, type: !109)
!4413 = distinct !DILexicalBlock(scope: !4406, file: !863, line: 334, column: 3)
!4414 = !DILocalVariable(name: "rtmin", scope: !4415, file: !863, line: 342, type: !122)
!4415 = distinct !DILexicalBlock(scope: !4406, file: !863, line: 341, column: 3)
!4416 = !DILocalVariable(name: "rtmax", scope: !4415, file: !863, line: 343, type: !122)
!4417 = !DILocalVariable(name: "base", scope: !4415, file: !863, line: 348, type: !122)
!4418 = !DILocalVariable(name: "delta", scope: !4415, file: !863, line: 360, type: !122)
!4419 = !DILocation(line: 0, scope: !4406)
!4420 = !DILocation(line: 0, scope: !4413)
!4421 = !DILocation(line: 334, column: 3, scope: !4413)
!4422 = !DILocation(line: 334, column: 50, scope: !4423)
!4423 = distinct !DILexicalBlock(scope: !4413, file: !863, line: 334, column: 3)
!4424 = !DILocation(line: 334, column: 30, scope: !4423)
!4425 = distinct !{!4425, !4421, !4426, !1204}
!4426 = !DILocation(line: 339, column: 7, scope: !4413)
!4427 = !DILocation(line: 335, column: 9, scope: !4428)
!4428 = distinct !DILexicalBlock(scope: !4423, file: !863, line: 335, column: 9)
!4429 = !DILocation(line: 335, column: 26, scope: !4428)
!4430 = !DILocation(line: 335, column: 30, scope: !4428)
!4431 = !DILocation(line: 335, column: 9, scope: !4423)
!4432 = !DILocation(line: 337, column: 43, scope: !4433)
!4433 = distinct !DILexicalBlock(scope: !4428, file: !863, line: 336, column: 7)
!4434 = !DILocalVariable(name: "__dest", arg: 1, scope: !4435, file: !1563, line: 77, type: !2402)
!4435 = distinct !DISubprogram(name: "strcpy", scope: !1563, file: !1563, line: 77, type: !2429, scopeLine: 78, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !862, retainedNodes: !4436)
!4436 = !{!4434, !4437}
!4437 = !DILocalVariable(name: "__src", arg: 2, scope: !4435, file: !1563, line: 77, type: !1148)
!4438 = !DILocation(line: 0, scope: !4435, inlinedAt: !4439)
!4439 = distinct !DILocation(line: 337, column: 9, scope: !4433)
!4440 = !DILocation(line: 79, column: 10, scope: !4435, inlinedAt: !4439)
!4441 = !DILocation(line: 342, column: 17, scope: !4415)
!4442 = !DILocation(line: 0, scope: !4415)
!4443 = !DILocation(line: 343, column: 17, scope: !4415)
!4444 = !DILocation(line: 345, column: 18, scope: !4445)
!4445 = distinct !DILexicalBlock(scope: !4415, file: !863, line: 345, column: 9)
!4446 = !DILocation(line: 345, column: 28, scope: !4445)
!4447 = !DILocation(line: 349, column: 34, scope: !4448)
!4448 = distinct !DILexicalBlock(scope: !4415, file: !863, line: 349, column: 9)
!4449 = !DILocation(line: 349, column: 43, scope: !4448)
!4450 = !DILocation(line: 349, column: 25, scope: !4448)
!4451 = !DILocation(line: 349, column: 16, scope: !4448)
!4452 = !DILocation(line: 0, scope: !4435, inlinedAt: !4453)
!4453 = distinct !DILocation(line: 356, column: 9, scope: !4454)
!4454 = distinct !DILexicalBlock(scope: !4448, file: !863, line: 355, column: 7)
!4455 = !DILocation(line: 0, scope: !4435, inlinedAt: !4456)
!4456 = distinct !DILocation(line: 351, column: 9, scope: !4457)
!4457 = distinct !DILexicalBlock(scope: !4448, file: !863, line: 350, column: 7)
!4458 = !DILocation(line: 79, column: 10, scope: !4435, inlinedAt: !4459)
!4459 = !DILocation(line: 0, scope: !4448)
!4460 = !DILocation(line: 361, column: 15, scope: !4461)
!4461 = distinct !DILexicalBlock(scope: !4415, file: !863, line: 361, column: 9)
!4462 = !DILocation(line: 361, column: 9, scope: !4415)
!4463 = !DILocation(line: 360, column: 24, scope: !4415)
!4464 = !DILocation(line: 362, column: 7, scope: !4461)
!4465 = !DILocation(line: 365, column: 1, scope: !4406)
!4466 = !DISubprogram(name: "__builtin___sprintf_chk", scope: !863, file: !863, line: 362, type: !4467, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4467 = !DISubroutineType(types: !4468)
!4468 = !{!122, !2402, !122, !168, !1148, null}
!4469 = distinct !DISubprogram(name: "version_etc_arn", scope: !882, file: !882, line: 61, type: !4470, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !999, retainedNodes: !4507)
!4470 = !DISubroutineType(types: !4471)
!4471 = !{null, !4472, !169, !169, !169, !4506, !166}
!4472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4473, size: 64)
!4473 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !328, line: 7, baseType: !4474)
!4474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !330, line: 49, size: 1728, elements: !4475)
!4475 = !{!4476, !4477, !4478, !4479, !4480, !4481, !4482, !4483, !4484, !4485, !4486, !4487, !4488, !4489, !4491, !4492, !4493, !4494, !4495, !4496, !4497, !4498, !4499, !4500, !4501, !4502, !4503, !4504, !4505}
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4474, file: !330, line: 51, baseType: !122, size: 32)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4474, file: !330, line: 54, baseType: !163, size: 64, offset: 64)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4474, file: !330, line: 55, baseType: !163, size: 64, offset: 128)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4474, file: !330, line: 56, baseType: !163, size: 64, offset: 192)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4474, file: !330, line: 57, baseType: !163, size: 64, offset: 256)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4474, file: !330, line: 58, baseType: !163, size: 64, offset: 320)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4474, file: !330, line: 59, baseType: !163, size: 64, offset: 384)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4474, file: !330, line: 60, baseType: !163, size: 64, offset: 448)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4474, file: !330, line: 61, baseType: !163, size: 64, offset: 512)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4474, file: !330, line: 64, baseType: !163, size: 64, offset: 576)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4474, file: !330, line: 65, baseType: !163, size: 64, offset: 640)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4474, file: !330, line: 66, baseType: !163, size: 64, offset: 704)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4474, file: !330, line: 68, baseType: !345, size: 64, offset: 768)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4474, file: !330, line: 70, baseType: !4490, size: 64, offset: 832)
!4490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4474, size: 64)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4474, file: !330, line: 72, baseType: !122, size: 32, offset: 896)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4474, file: !330, line: 73, baseType: !122, size: 32, offset: 928)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4474, file: !330, line: 74, baseType: !352, size: 64, offset: 960)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4474, file: !330, line: 77, baseType: !165, size: 16, offset: 1024)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4474, file: !330, line: 78, baseType: !356, size: 8, offset: 1040)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4474, file: !330, line: 79, baseType: !90, size: 8, offset: 1048)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4474, file: !330, line: 81, baseType: !359, size: 64, offset: 1088)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4474, file: !330, line: 89, baseType: !362, size: 64, offset: 1152)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4474, file: !330, line: 91, baseType: !364, size: 64, offset: 1216)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4474, file: !330, line: 92, baseType: !367, size: 64, offset: 1280)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4474, file: !330, line: 93, baseType: !4490, size: 64, offset: 1344)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4474, file: !330, line: 94, baseType: !164, size: 64, offset: 1408)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4474, file: !330, line: 95, baseType: !166, size: 64, offset: 1472)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4474, file: !330, line: 96, baseType: !122, size: 32, offset: 1536)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4474, file: !330, line: 98, baseType: !374, size: 160, offset: 1568)
!4506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!4507 = !{!4508, !4509, !4510, !4511, !4512, !4513}
!4508 = !DILocalVariable(name: "stream", arg: 1, scope: !4469, file: !882, line: 61, type: !4472)
!4509 = !DILocalVariable(name: "command_name", arg: 2, scope: !4469, file: !882, line: 62, type: !169)
!4510 = !DILocalVariable(name: "package", arg: 3, scope: !4469, file: !882, line: 62, type: !169)
!4511 = !DILocalVariable(name: "version", arg: 4, scope: !4469, file: !882, line: 63, type: !169)
!4512 = !DILocalVariable(name: "authors", arg: 5, scope: !4469, file: !882, line: 64, type: !4506)
!4513 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4469, file: !882, line: 64, type: !166)
!4514 = !DILocation(line: 0, scope: !4469)
!4515 = !DILocation(line: 66, column: 7, scope: !4516)
!4516 = distinct !DILexicalBlock(scope: !4469, file: !882, line: 66, column: 7)
!4517 = !DILocation(line: 66, column: 7, scope: !4469)
!4518 = !DILocation(line: 67, column: 5, scope: !4516)
!4519 = !DILocation(line: 69, column: 5, scope: !4516)
!4520 = !DILocation(line: 83, column: 3, scope: !4469)
!4521 = !DILocation(line: 85, column: 3, scope: !4469)
!4522 = !DILocation(line: 88, column: 3, scope: !4469)
!4523 = !DILocation(line: 95, column: 3, scope: !4469)
!4524 = !DILocation(line: 97, column: 3, scope: !4469)
!4525 = !DILocation(line: 105, column: 7, scope: !4526)
!4526 = distinct !DILexicalBlock(scope: !4469, file: !882, line: 98, column: 5)
!4527 = !DILocation(line: 106, column: 7, scope: !4526)
!4528 = !DILocation(line: 109, column: 7, scope: !4526)
!4529 = !DILocation(line: 110, column: 7, scope: !4526)
!4530 = !DILocation(line: 113, column: 7, scope: !4526)
!4531 = !DILocation(line: 115, column: 7, scope: !4526)
!4532 = !DILocation(line: 120, column: 7, scope: !4526)
!4533 = !DILocation(line: 122, column: 7, scope: !4526)
!4534 = !DILocation(line: 127, column: 7, scope: !4526)
!4535 = !DILocation(line: 129, column: 7, scope: !4526)
!4536 = !DILocation(line: 134, column: 7, scope: !4526)
!4537 = !DILocation(line: 137, column: 7, scope: !4526)
!4538 = !DILocation(line: 142, column: 7, scope: !4526)
!4539 = !DILocation(line: 145, column: 7, scope: !4526)
!4540 = !DILocation(line: 150, column: 7, scope: !4526)
!4541 = !DILocation(line: 154, column: 7, scope: !4526)
!4542 = !DILocation(line: 159, column: 7, scope: !4526)
!4543 = !DILocation(line: 163, column: 7, scope: !4526)
!4544 = !DILocation(line: 170, column: 7, scope: !4526)
!4545 = !DILocation(line: 174, column: 7, scope: !4526)
!4546 = !DILocation(line: 176, column: 1, scope: !4469)
!4547 = distinct !DISubprogram(name: "version_etc_ar", scope: !882, file: !882, line: 183, type: !4548, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !999, retainedNodes: !4550)
!4548 = !DISubroutineType(types: !4549)
!4549 = !{null, !4472, !169, !169, !169, !4506}
!4550 = !{!4551, !4552, !4553, !4554, !4555, !4556}
!4551 = !DILocalVariable(name: "stream", arg: 1, scope: !4547, file: !882, line: 183, type: !4472)
!4552 = !DILocalVariable(name: "command_name", arg: 2, scope: !4547, file: !882, line: 184, type: !169)
!4553 = !DILocalVariable(name: "package", arg: 3, scope: !4547, file: !882, line: 184, type: !169)
!4554 = !DILocalVariable(name: "version", arg: 4, scope: !4547, file: !882, line: 185, type: !169)
!4555 = !DILocalVariable(name: "authors", arg: 5, scope: !4547, file: !882, line: 185, type: !4506)
!4556 = !DILocalVariable(name: "n_authors", scope: !4547, file: !882, line: 187, type: !166)
!4557 = !DILocation(line: 0, scope: !4547)
!4558 = !DILocation(line: 189, column: 8, scope: !4559)
!4559 = distinct !DILexicalBlock(scope: !4547, file: !882, line: 189, column: 3)
!4560 = !DILocation(line: 189, scope: !4559)
!4561 = !DILocation(line: 189, column: 23, scope: !4562)
!4562 = distinct !DILexicalBlock(scope: !4559, file: !882, line: 189, column: 3)
!4563 = !DILocation(line: 189, column: 3, scope: !4559)
!4564 = !DILocation(line: 189, column: 52, scope: !4562)
!4565 = distinct !{!4565, !4563, !4566, !1204}
!4566 = !DILocation(line: 190, column: 5, scope: !4559)
!4567 = !DILocation(line: 191, column: 3, scope: !4547)
!4568 = !DILocation(line: 192, column: 1, scope: !4547)
!4569 = distinct !DISubprogram(name: "version_etc_va", scope: !882, file: !882, line: 199, type: !4570, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !999, retainedNodes: !4582)
!4570 = !DISubroutineType(types: !4571)
!4571 = !{null, !4472, !169, !169, !169, !4572}
!4572 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !679, line: 52, baseType: !4573)
!4573 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !681, line: 12, baseType: !4574)
!4574 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !882, baseType: !4575)
!4575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !4576)
!4576 = !{!4577, !4578, !4579, !4580, !4581}
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !4575, file: !882, line: 192, baseType: !164, size: 64)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !4575, file: !882, line: 192, baseType: !164, size: 64, offset: 64)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !4575, file: !882, line: 192, baseType: !164, size: 64, offset: 128)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !4575, file: !882, line: 192, baseType: !122, size: 32, offset: 192)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !4575, file: !882, line: 192, baseType: !122, size: 32, offset: 224)
!4582 = !{!4583, !4584, !4585, !4586, !4587, !4588, !4589}
!4583 = !DILocalVariable(name: "stream", arg: 1, scope: !4569, file: !882, line: 199, type: !4472)
!4584 = !DILocalVariable(name: "command_name", arg: 2, scope: !4569, file: !882, line: 200, type: !169)
!4585 = !DILocalVariable(name: "package", arg: 3, scope: !4569, file: !882, line: 200, type: !169)
!4586 = !DILocalVariable(name: "version", arg: 4, scope: !4569, file: !882, line: 201, type: !169)
!4587 = !DILocalVariable(name: "authors", arg: 5, scope: !4569, file: !882, line: 201, type: !4572)
!4588 = !DILocalVariable(name: "n_authors", scope: !4569, file: !882, line: 203, type: !166)
!4589 = !DILocalVariable(name: "authtab", scope: !4569, file: !882, line: 204, type: !4590)
!4590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 640, elements: !96)
!4591 = distinct !DIAssignID()
!4592 = !DILocation(line: 0, scope: !4569)
!4593 = !DILocation(line: 204, column: 3, scope: !4569)
!4594 = !DILocation(line: 208, column: 35, scope: !4595)
!4595 = distinct !DILexicalBlock(scope: !4596, file: !882, line: 206, column: 3)
!4596 = distinct !DILexicalBlock(scope: !4569, file: !882, line: 206, column: 3)
!4597 = !DILocation(line: 208, column: 33, scope: !4595)
!4598 = !DILocation(line: 208, column: 67, scope: !4595)
!4599 = !DILocation(line: 206, column: 3, scope: !4596)
!4600 = !DILocation(line: 208, column: 14, scope: !4595)
!4601 = !DILocation(line: 0, scope: !4596)
!4602 = !DILocation(line: 211, column: 3, scope: !4569)
!4603 = !DILocation(line: 213, column: 1, scope: !4569)
!4604 = distinct !DISubprogram(name: "version_etc", scope: !882, file: !882, line: 230, type: !4605, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !999, retainedNodes: !4607)
!4605 = !DISubroutineType(types: !4606)
!4606 = !{null, !4472, !169, !169, !169, null}
!4607 = !{!4608, !4609, !4610, !4611, !4612}
!4608 = !DILocalVariable(name: "stream", arg: 1, scope: !4604, file: !882, line: 230, type: !4472)
!4609 = !DILocalVariable(name: "command_name", arg: 2, scope: !4604, file: !882, line: 231, type: !169)
!4610 = !DILocalVariable(name: "package", arg: 3, scope: !4604, file: !882, line: 231, type: !169)
!4611 = !DILocalVariable(name: "version", arg: 4, scope: !4604, file: !882, line: 232, type: !169)
!4612 = !DILocalVariable(name: "authors", scope: !4604, file: !882, line: 234, type: !4572)
!4613 = distinct !DIAssignID()
!4614 = !DILocation(line: 0, scope: !4604)
!4615 = !DILocation(line: 234, column: 3, scope: !4604)
!4616 = !DILocation(line: 235, column: 3, scope: !4604)
!4617 = !DILocation(line: 236, column: 3, scope: !4604)
!4618 = !DILocation(line: 237, column: 3, scope: !4604)
!4619 = !DILocation(line: 238, column: 1, scope: !4604)
!4620 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !882, file: !882, line: 241, type: !716, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !999)
!4621 = !DILocation(line: 243, column: 3, scope: !4620)
!4622 = !DILocation(line: 248, column: 3, scope: !4620)
!4623 = !DILocation(line: 254, column: 3, scope: !4620)
!4624 = !DILocation(line: 259, column: 3, scope: !4620)
!4625 = !DILocation(line: 261, column: 1, scope: !4620)
!4626 = distinct !DISubprogram(name: "xnrealloc", scope: !4627, file: !4627, line: 147, type: !4628, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1006, retainedNodes: !4630)
!4627 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4628 = !DISubroutineType(types: !4629)
!4629 = !{!164, !164, !166, !166}
!4630 = !{!4631, !4632, !4633}
!4631 = !DILocalVariable(name: "p", arg: 1, scope: !4626, file: !4627, line: 147, type: !164)
!4632 = !DILocalVariable(name: "n", arg: 2, scope: !4626, file: !4627, line: 147, type: !166)
!4633 = !DILocalVariable(name: "s", arg: 3, scope: !4626, file: !4627, line: 147, type: !166)
!4634 = !DILocation(line: 0, scope: !4626)
!4635 = !DILocalVariable(name: "p", arg: 1, scope: !4636, file: !1007, line: 83, type: !164)
!4636 = distinct !DISubprogram(name: "xreallocarray", scope: !1007, file: !1007, line: 83, type: !4628, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1006, retainedNodes: !4637)
!4637 = !{!4635, !4638, !4639}
!4638 = !DILocalVariable(name: "n", arg: 2, scope: !4636, file: !1007, line: 83, type: !166)
!4639 = !DILocalVariable(name: "s", arg: 3, scope: !4636, file: !1007, line: 83, type: !166)
!4640 = !DILocation(line: 0, scope: !4636, inlinedAt: !4641)
!4641 = distinct !DILocation(line: 149, column: 10, scope: !4626)
!4642 = !DILocation(line: 85, column: 25, scope: !4636, inlinedAt: !4641)
!4643 = !DILocalVariable(name: "p", arg: 1, scope: !4644, file: !1007, line: 37, type: !164)
!4644 = distinct !DISubprogram(name: "check_nonnull", scope: !1007, file: !1007, line: 37, type: !4645, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1006, retainedNodes: !4647)
!4645 = !DISubroutineType(types: !4646)
!4646 = !{!164, !164}
!4647 = !{!4643}
!4648 = !DILocation(line: 0, scope: !4644, inlinedAt: !4649)
!4649 = distinct !DILocation(line: 85, column: 10, scope: !4636, inlinedAt: !4641)
!4650 = !DILocation(line: 39, column: 8, scope: !4651, inlinedAt: !4649)
!4651 = distinct !DILexicalBlock(scope: !4644, file: !1007, line: 39, column: 7)
!4652 = !DILocation(line: 39, column: 7, scope: !4644, inlinedAt: !4649)
!4653 = !DILocation(line: 40, column: 5, scope: !4651, inlinedAt: !4649)
!4654 = !DILocation(line: 149, column: 3, scope: !4626)
!4655 = !DILocation(line: 0, scope: !4636)
!4656 = !DILocation(line: 85, column: 25, scope: !4636)
!4657 = !DILocation(line: 0, scope: !4644, inlinedAt: !4658)
!4658 = distinct !DILocation(line: 85, column: 10, scope: !4636)
!4659 = !DILocation(line: 39, column: 8, scope: !4651, inlinedAt: !4658)
!4660 = !DILocation(line: 39, column: 7, scope: !4644, inlinedAt: !4658)
!4661 = !DILocation(line: 40, column: 5, scope: !4651, inlinedAt: !4658)
!4662 = !DILocation(line: 85, column: 3, scope: !4636)
!4663 = distinct !DISubprogram(name: "xmalloc", scope: !1007, file: !1007, line: 47, type: !4664, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1006, retainedNodes: !4666)
!4664 = !DISubroutineType(types: !4665)
!4665 = !{!164, !166}
!4666 = !{!4667}
!4667 = !DILocalVariable(name: "s", arg: 1, scope: !4663, file: !1007, line: 47, type: !166)
!4668 = !DILocation(line: 0, scope: !4663)
!4669 = !DILocation(line: 49, column: 25, scope: !4663)
!4670 = !DILocation(line: 0, scope: !4644, inlinedAt: !4671)
!4671 = distinct !DILocation(line: 49, column: 10, scope: !4663)
!4672 = !DILocation(line: 39, column: 8, scope: !4651, inlinedAt: !4671)
!4673 = !DILocation(line: 39, column: 7, scope: !4644, inlinedAt: !4671)
!4674 = !DILocation(line: 40, column: 5, scope: !4651, inlinedAt: !4671)
!4675 = !DILocation(line: 49, column: 3, scope: !4663)
!4676 = !DISubprogram(name: "malloc", scope: !1278, file: !1278, line: 540, type: !4664, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4677 = distinct !DISubprogram(name: "ximalloc", scope: !1007, file: !1007, line: 53, type: !4678, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1006, retainedNodes: !4680)
!4678 = !DISubroutineType(types: !4679)
!4679 = !{!164, !1026}
!4680 = !{!4681}
!4681 = !DILocalVariable(name: "s", arg: 1, scope: !4677, file: !1007, line: 53, type: !1026)
!4682 = !DILocation(line: 0, scope: !4677)
!4683 = !DILocalVariable(name: "s", arg: 1, scope: !4684, file: !4685, line: 55, type: !1026)
!4684 = distinct !DISubprogram(name: "imalloc", scope: !4685, file: !4685, line: 55, type: !4678, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1006, retainedNodes: !4686)
!4685 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4686 = !{!4683}
!4687 = !DILocation(line: 0, scope: !4684, inlinedAt: !4688)
!4688 = distinct !DILocation(line: 55, column: 25, scope: !4677)
!4689 = !DILocation(line: 57, column: 26, scope: !4684, inlinedAt: !4688)
!4690 = !DILocation(line: 0, scope: !4644, inlinedAt: !4691)
!4691 = distinct !DILocation(line: 55, column: 10, scope: !4677)
!4692 = !DILocation(line: 39, column: 8, scope: !4651, inlinedAt: !4691)
!4693 = !DILocation(line: 39, column: 7, scope: !4644, inlinedAt: !4691)
!4694 = !DILocation(line: 40, column: 5, scope: !4651, inlinedAt: !4691)
!4695 = !DILocation(line: 55, column: 3, scope: !4677)
!4696 = distinct !DISubprogram(name: "xcharalloc", scope: !1007, file: !1007, line: 59, type: !4697, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1006, retainedNodes: !4699)
!4697 = !DISubroutineType(types: !4698)
!4698 = !{!163, !166}
!4699 = !{!4700}
!4700 = !DILocalVariable(name: "n", arg: 1, scope: !4696, file: !1007, line: 59, type: !166)
!4701 = !DILocation(line: 0, scope: !4696)
!4702 = !DILocation(line: 0, scope: !4663, inlinedAt: !4703)
!4703 = distinct !DILocation(line: 61, column: 10, scope: !4696)
!4704 = !DILocation(line: 49, column: 25, scope: !4663, inlinedAt: !4703)
!4705 = !DILocation(line: 0, scope: !4644, inlinedAt: !4706)
!4706 = distinct !DILocation(line: 49, column: 10, scope: !4663, inlinedAt: !4703)
!4707 = !DILocation(line: 39, column: 8, scope: !4651, inlinedAt: !4706)
!4708 = !DILocation(line: 39, column: 7, scope: !4644, inlinedAt: !4706)
!4709 = !DILocation(line: 40, column: 5, scope: !4651, inlinedAt: !4706)
!4710 = !DILocation(line: 61, column: 3, scope: !4696)
!4711 = distinct !DISubprogram(name: "xrealloc", scope: !1007, file: !1007, line: 68, type: !4712, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1006, retainedNodes: !4714)
!4712 = !DISubroutineType(types: !4713)
!4713 = !{!164, !164, !166}
!4714 = !{!4715, !4716}
!4715 = !DILocalVariable(name: "p", arg: 1, scope: !4711, file: !1007, line: 68, type: !164)
!4716 = !DILocalVariable(name: "s", arg: 2, scope: !4711, file: !1007, line: 68, type: !166)
!4717 = !DILocation(line: 0, scope: !4711)
!4718 = !DILocalVariable(name: "ptr", arg: 1, scope: !4719, file: !4720, line: 2057, type: !164)
!4719 = distinct !DISubprogram(name: "rpl_realloc", scope: !4720, file: !4720, line: 2057, type: !4712, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1006, retainedNodes: !4721)
!4720 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4721 = !{!4718, !4722}
!4722 = !DILocalVariable(name: "size", arg: 2, scope: !4719, file: !4720, line: 2057, type: !166)
!4723 = !DILocation(line: 0, scope: !4719, inlinedAt: !4724)
!4724 = distinct !DILocation(line: 70, column: 25, scope: !4711)
!4725 = !DILocation(line: 2059, column: 24, scope: !4719, inlinedAt: !4724)
!4726 = !DILocation(line: 2059, column: 10, scope: !4719, inlinedAt: !4724)
!4727 = !DILocation(line: 0, scope: !4644, inlinedAt: !4728)
!4728 = distinct !DILocation(line: 70, column: 10, scope: !4711)
!4729 = !DILocation(line: 39, column: 8, scope: !4651, inlinedAt: !4728)
!4730 = !DILocation(line: 39, column: 7, scope: !4644, inlinedAt: !4728)
!4731 = !DILocation(line: 40, column: 5, scope: !4651, inlinedAt: !4728)
!4732 = !DILocation(line: 70, column: 3, scope: !4711)
!4733 = !DISubprogram(name: "realloc", scope: !1278, file: !1278, line: 551, type: !4712, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4734 = distinct !DISubprogram(name: "xirealloc", scope: !1007, file: !1007, line: 74, type: !4735, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1006, retainedNodes: !4737)
!4735 = !DISubroutineType(types: !4736)
!4736 = !{!164, !164, !1026}
!4737 = !{!4738, !4739}
!4738 = !DILocalVariable(name: "p", arg: 1, scope: !4734, file: !1007, line: 74, type: !164)
!4739 = !DILocalVariable(name: "s", arg: 2, scope: !4734, file: !1007, line: 74, type: !1026)
!4740 = !DILocation(line: 0, scope: !4734)
!4741 = !DILocalVariable(name: "p", arg: 1, scope: !4742, file: !4685, line: 66, type: !164)
!4742 = distinct !DISubprogram(name: "irealloc", scope: !4685, file: !4685, line: 66, type: !4735, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1006, retainedNodes: !4743)
!4743 = !{!4741, !4744}
!4744 = !DILocalVariable(name: "s", arg: 2, scope: !4742, file: !4685, line: 66, type: !1026)
!4745 = !DILocation(line: 0, scope: !4742, inlinedAt: !4746)
!4746 = distinct !DILocation(line: 76, column: 25, scope: !4734)
!4747 = !DILocation(line: 0, scope: !4719, inlinedAt: !4748)
!4748 = distinct !DILocation(line: 68, column: 26, scope: !4742, inlinedAt: !4746)
!4749 = !DILocation(line: 2059, column: 24, scope: !4719, inlinedAt: !4748)
!4750 = !DILocation(line: 2059, column: 10, scope: !4719, inlinedAt: !4748)
!4751 = !DILocation(line: 0, scope: !4644, inlinedAt: !4752)
!4752 = distinct !DILocation(line: 76, column: 10, scope: !4734)
!4753 = !DILocation(line: 39, column: 8, scope: !4651, inlinedAt: !4752)
!4754 = !DILocation(line: 39, column: 7, scope: !4644, inlinedAt: !4752)
!4755 = !DILocation(line: 40, column: 5, scope: !4651, inlinedAt: !4752)
!4756 = !DILocation(line: 76, column: 3, scope: !4734)
!4757 = distinct !DISubprogram(name: "xireallocarray", scope: !1007, file: !1007, line: 89, type: !4758, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1006, retainedNodes: !4760)
!4758 = !DISubroutineType(types: !4759)
!4759 = !{!164, !164, !1026, !1026}
!4760 = !{!4761, !4762, !4763}
!4761 = !DILocalVariable(name: "p", arg: 1, scope: !4757, file: !1007, line: 89, type: !164)
!4762 = !DILocalVariable(name: "n", arg: 2, scope: !4757, file: !1007, line: 89, type: !1026)
!4763 = !DILocalVariable(name: "s", arg: 3, scope: !4757, file: !1007, line: 89, type: !1026)
!4764 = !DILocation(line: 0, scope: !4757)
!4765 = !DILocalVariable(name: "p", arg: 1, scope: !4766, file: !4685, line: 98, type: !164)
!4766 = distinct !DISubprogram(name: "ireallocarray", scope: !4685, file: !4685, line: 98, type: !4758, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1006, retainedNodes: !4767)
!4767 = !{!4765, !4768, !4769}
!4768 = !DILocalVariable(name: "n", arg: 2, scope: !4766, file: !4685, line: 98, type: !1026)
!4769 = !DILocalVariable(name: "s", arg: 3, scope: !4766, file: !4685, line: 98, type: !1026)
!4770 = !DILocation(line: 0, scope: !4766, inlinedAt: !4771)
!4771 = distinct !DILocation(line: 91, column: 25, scope: !4757)
!4772 = !DILocation(line: 101, column: 13, scope: !4766, inlinedAt: !4771)
!4773 = !DILocation(line: 0, scope: !4644, inlinedAt: !4774)
!4774 = distinct !DILocation(line: 91, column: 10, scope: !4757)
!4775 = !DILocation(line: 39, column: 8, scope: !4651, inlinedAt: !4774)
!4776 = !DILocation(line: 39, column: 7, scope: !4644, inlinedAt: !4774)
!4777 = !DILocation(line: 40, column: 5, scope: !4651, inlinedAt: !4774)
!4778 = !DILocation(line: 91, column: 3, scope: !4757)
!4779 = distinct !DISubprogram(name: "xnmalloc", scope: !1007, file: !1007, line: 98, type: !4780, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1006, retainedNodes: !4782)
!4780 = !DISubroutineType(types: !4781)
!4781 = !{!164, !166, !166}
!4782 = !{!4783, !4784}
!4783 = !DILocalVariable(name: "n", arg: 1, scope: !4779, file: !1007, line: 98, type: !166)
!4784 = !DILocalVariable(name: "s", arg: 2, scope: !4779, file: !1007, line: 98, type: !166)
!4785 = !DILocation(line: 0, scope: !4779)
!4786 = !DILocation(line: 0, scope: !4636, inlinedAt: !4787)
!4787 = distinct !DILocation(line: 100, column: 10, scope: !4779)
!4788 = !DILocation(line: 85, column: 25, scope: !4636, inlinedAt: !4787)
!4789 = !DILocation(line: 0, scope: !4644, inlinedAt: !4790)
!4790 = distinct !DILocation(line: 85, column: 10, scope: !4636, inlinedAt: !4787)
!4791 = !DILocation(line: 39, column: 8, scope: !4651, inlinedAt: !4790)
!4792 = !DILocation(line: 39, column: 7, scope: !4644, inlinedAt: !4790)
!4793 = !DILocation(line: 40, column: 5, scope: !4651, inlinedAt: !4790)
!4794 = !DILocation(line: 100, column: 3, scope: !4779)
!4795 = distinct !DISubprogram(name: "xinmalloc", scope: !1007, file: !1007, line: 104, type: !4796, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1006, retainedNodes: !4798)
!4796 = !DISubroutineType(types: !4797)
!4797 = !{!164, !1026, !1026}
!4798 = !{!4799, !4800}
!4799 = !DILocalVariable(name: "n", arg: 1, scope: !4795, file: !1007, line: 104, type: !1026)
!4800 = !DILocalVariable(name: "s", arg: 2, scope: !4795, file: !1007, line: 104, type: !1026)
!4801 = !DILocation(line: 0, scope: !4795)
!4802 = !DILocation(line: 0, scope: !4757, inlinedAt: !4803)
!4803 = distinct !DILocation(line: 106, column: 10, scope: !4795)
!4804 = !DILocation(line: 0, scope: !4766, inlinedAt: !4805)
!4805 = distinct !DILocation(line: 91, column: 25, scope: !4757, inlinedAt: !4803)
!4806 = !DILocation(line: 101, column: 13, scope: !4766, inlinedAt: !4805)
!4807 = !DILocation(line: 0, scope: !4644, inlinedAt: !4808)
!4808 = distinct !DILocation(line: 91, column: 10, scope: !4757, inlinedAt: !4803)
!4809 = !DILocation(line: 39, column: 8, scope: !4651, inlinedAt: !4808)
!4810 = !DILocation(line: 39, column: 7, scope: !4644, inlinedAt: !4808)
!4811 = !DILocation(line: 40, column: 5, scope: !4651, inlinedAt: !4808)
!4812 = !DILocation(line: 106, column: 3, scope: !4795)
!4813 = distinct !DISubprogram(name: "x2realloc", scope: !1007, file: !1007, line: 116, type: !4814, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1006, retainedNodes: !4816)
!4814 = !DISubroutineType(types: !4815)
!4815 = !{!164, !164, !1013}
!4816 = !{!4817, !4818}
!4817 = !DILocalVariable(name: "p", arg: 1, scope: !4813, file: !1007, line: 116, type: !164)
!4818 = !DILocalVariable(name: "ps", arg: 2, scope: !4813, file: !1007, line: 116, type: !1013)
!4819 = !DILocation(line: 0, scope: !4813)
!4820 = !DILocation(line: 0, scope: !1010, inlinedAt: !4821)
!4821 = distinct !DILocation(line: 118, column: 10, scope: !4813)
!4822 = !DILocation(line: 178, column: 14, scope: !1010, inlinedAt: !4821)
!4823 = !DILocation(line: 180, column: 9, scope: !4824, inlinedAt: !4821)
!4824 = distinct !DILexicalBlock(scope: !1010, file: !1007, line: 180, column: 7)
!4825 = !DILocation(line: 180, column: 7, scope: !1010, inlinedAt: !4821)
!4826 = !DILocation(line: 182, column: 13, scope: !4827, inlinedAt: !4821)
!4827 = distinct !DILexicalBlock(scope: !4828, file: !1007, line: 182, column: 11)
!4828 = distinct !DILexicalBlock(scope: !4824, file: !1007, line: 181, column: 5)
!4829 = !DILocation(line: 182, column: 11, scope: !4828, inlinedAt: !4821)
!4830 = !DILocation(line: 197, column: 11, scope: !4831, inlinedAt: !4821)
!4831 = distinct !DILexicalBlock(scope: !4832, file: !1007, line: 197, column: 11)
!4832 = distinct !DILexicalBlock(scope: !4824, file: !1007, line: 195, column: 5)
!4833 = !DILocation(line: 197, column: 11, scope: !4832, inlinedAt: !4821)
!4834 = !DILocation(line: 198, column: 9, scope: !4831, inlinedAt: !4821)
!4835 = !DILocation(line: 0, scope: !4636, inlinedAt: !4836)
!4836 = distinct !DILocation(line: 201, column: 7, scope: !1010, inlinedAt: !4821)
!4837 = !DILocation(line: 85, column: 25, scope: !4636, inlinedAt: !4836)
!4838 = !DILocation(line: 0, scope: !4644, inlinedAt: !4839)
!4839 = distinct !DILocation(line: 85, column: 10, scope: !4636, inlinedAt: !4836)
!4840 = !DILocation(line: 39, column: 8, scope: !4651, inlinedAt: !4839)
!4841 = !DILocation(line: 39, column: 7, scope: !4644, inlinedAt: !4839)
!4842 = !DILocation(line: 40, column: 5, scope: !4651, inlinedAt: !4839)
!4843 = !DILocation(line: 202, column: 7, scope: !1010, inlinedAt: !4821)
!4844 = !DILocation(line: 118, column: 3, scope: !4813)
!4845 = !DILocation(line: 0, scope: !1010)
!4846 = !DILocation(line: 178, column: 14, scope: !1010)
!4847 = !DILocation(line: 180, column: 9, scope: !4824)
!4848 = !DILocation(line: 180, column: 7, scope: !1010)
!4849 = !DILocation(line: 182, column: 13, scope: !4827)
!4850 = !DILocation(line: 182, column: 11, scope: !4828)
!4851 = !DILocation(line: 190, column: 30, scope: !4852)
!4852 = distinct !DILexicalBlock(scope: !4827, file: !1007, line: 183, column: 9)
!4853 = !DILocation(line: 191, column: 16, scope: !4852)
!4854 = !DILocation(line: 191, column: 13, scope: !4852)
!4855 = !DILocation(line: 192, column: 9, scope: !4852)
!4856 = !DILocation(line: 197, column: 11, scope: !4831)
!4857 = !DILocation(line: 197, column: 11, scope: !4832)
!4858 = !DILocation(line: 198, column: 9, scope: !4831)
!4859 = !DILocation(line: 0, scope: !4636, inlinedAt: !4860)
!4860 = distinct !DILocation(line: 201, column: 7, scope: !1010)
!4861 = !DILocation(line: 85, column: 25, scope: !4636, inlinedAt: !4860)
!4862 = !DILocation(line: 0, scope: !4644, inlinedAt: !4863)
!4863 = distinct !DILocation(line: 85, column: 10, scope: !4636, inlinedAt: !4860)
!4864 = !DILocation(line: 39, column: 8, scope: !4651, inlinedAt: !4863)
!4865 = !DILocation(line: 39, column: 7, scope: !4644, inlinedAt: !4863)
!4866 = !DILocation(line: 40, column: 5, scope: !4651, inlinedAt: !4863)
!4867 = !DILocation(line: 202, column: 7, scope: !1010)
!4868 = !DILocation(line: 203, column: 3, scope: !1010)
!4869 = !DILocation(line: 0, scope: !1022)
!4870 = !DILocation(line: 230, column: 14, scope: !1022)
!4871 = !DILocation(line: 238, column: 7, scope: !4872)
!4872 = distinct !DILexicalBlock(scope: !1022, file: !1007, line: 238, column: 7)
!4873 = !DILocation(line: 238, column: 7, scope: !1022)
!4874 = !DILocation(line: 240, column: 9, scope: !4875)
!4875 = distinct !DILexicalBlock(scope: !1022, file: !1007, line: 240, column: 7)
!4876 = !DILocation(line: 240, column: 18, scope: !4875)
!4877 = !DILocation(line: 253, column: 8, scope: !1022)
!4878 = !DILocation(line: 256, column: 7, scope: !4879)
!4879 = distinct !DILexicalBlock(scope: !1022, file: !1007, line: 256, column: 7)
!4880 = !DILocation(line: 256, column: 7, scope: !1022)
!4881 = !DILocation(line: 258, column: 27, scope: !4882)
!4882 = distinct !DILexicalBlock(scope: !4879, file: !1007, line: 257, column: 5)
!4883 = !DILocation(line: 259, column: 32, scope: !4882)
!4884 = !DILocation(line: 260, column: 5, scope: !4882)
!4885 = !DILocation(line: 262, column: 9, scope: !4886)
!4886 = distinct !DILexicalBlock(scope: !1022, file: !1007, line: 262, column: 7)
!4887 = !DILocation(line: 262, column: 7, scope: !1022)
!4888 = !DILocation(line: 263, column: 9, scope: !4886)
!4889 = !DILocation(line: 263, column: 5, scope: !4886)
!4890 = !DILocation(line: 264, column: 9, scope: !4891)
!4891 = distinct !DILexicalBlock(scope: !1022, file: !1007, line: 264, column: 7)
!4892 = !DILocation(line: 264, column: 14, scope: !4891)
!4893 = !DILocation(line: 265, column: 7, scope: !4891)
!4894 = !DILocation(line: 265, column: 11, scope: !4891)
!4895 = !DILocation(line: 266, column: 11, scope: !4891)
!4896 = !DILocation(line: 267, column: 14, scope: !4891)
!4897 = !DILocation(line: 264, column: 7, scope: !1022)
!4898 = !DILocation(line: 268, column: 5, scope: !4891)
!4899 = !DILocation(line: 0, scope: !4711, inlinedAt: !4900)
!4900 = distinct !DILocation(line: 269, column: 8, scope: !1022)
!4901 = !DILocation(line: 0, scope: !4719, inlinedAt: !4902)
!4902 = distinct !DILocation(line: 70, column: 25, scope: !4711, inlinedAt: !4900)
!4903 = !DILocation(line: 2059, column: 24, scope: !4719, inlinedAt: !4902)
!4904 = !DILocation(line: 2059, column: 10, scope: !4719, inlinedAt: !4902)
!4905 = !DILocation(line: 0, scope: !4644, inlinedAt: !4906)
!4906 = distinct !DILocation(line: 70, column: 10, scope: !4711, inlinedAt: !4900)
!4907 = !DILocation(line: 39, column: 8, scope: !4651, inlinedAt: !4906)
!4908 = !DILocation(line: 39, column: 7, scope: !4644, inlinedAt: !4906)
!4909 = !DILocation(line: 40, column: 5, scope: !4651, inlinedAt: !4906)
!4910 = !DILocation(line: 270, column: 7, scope: !1022)
!4911 = !DILocation(line: 271, column: 3, scope: !1022)
!4912 = distinct !DISubprogram(name: "xzalloc", scope: !1007, file: !1007, line: 279, type: !4664, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1006, retainedNodes: !4913)
!4913 = !{!4914}
!4914 = !DILocalVariable(name: "s", arg: 1, scope: !4912, file: !1007, line: 279, type: !166)
!4915 = !DILocation(line: 0, scope: !4912)
!4916 = !DILocalVariable(name: "n", arg: 1, scope: !4917, file: !1007, line: 294, type: !166)
!4917 = distinct !DISubprogram(name: "xcalloc", scope: !1007, file: !1007, line: 294, type: !4780, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1006, retainedNodes: !4918)
!4918 = !{!4916, !4919}
!4919 = !DILocalVariable(name: "s", arg: 2, scope: !4917, file: !1007, line: 294, type: !166)
!4920 = !DILocation(line: 0, scope: !4917, inlinedAt: !4921)
!4921 = distinct !DILocation(line: 281, column: 10, scope: !4912)
!4922 = !DILocation(line: 296, column: 25, scope: !4917, inlinedAt: !4921)
!4923 = !DILocation(line: 0, scope: !4644, inlinedAt: !4924)
!4924 = distinct !DILocation(line: 296, column: 10, scope: !4917, inlinedAt: !4921)
!4925 = !DILocation(line: 39, column: 8, scope: !4651, inlinedAt: !4924)
!4926 = !DILocation(line: 39, column: 7, scope: !4644, inlinedAt: !4924)
!4927 = !DILocation(line: 40, column: 5, scope: !4651, inlinedAt: !4924)
!4928 = !DILocation(line: 281, column: 3, scope: !4912)
!4929 = !DISubprogram(name: "calloc", scope: !1278, file: !1278, line: 543, type: !4780, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4930 = !DILocation(line: 0, scope: !4917)
!4931 = !DILocation(line: 296, column: 25, scope: !4917)
!4932 = !DILocation(line: 0, scope: !4644, inlinedAt: !4933)
!4933 = distinct !DILocation(line: 296, column: 10, scope: !4917)
!4934 = !DILocation(line: 39, column: 8, scope: !4651, inlinedAt: !4933)
!4935 = !DILocation(line: 39, column: 7, scope: !4644, inlinedAt: !4933)
!4936 = !DILocation(line: 40, column: 5, scope: !4651, inlinedAt: !4933)
!4937 = !DILocation(line: 296, column: 3, scope: !4917)
!4938 = distinct !DISubprogram(name: "xizalloc", scope: !1007, file: !1007, line: 285, type: !4678, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1006, retainedNodes: !4939)
!4939 = !{!4940}
!4940 = !DILocalVariable(name: "s", arg: 1, scope: !4938, file: !1007, line: 285, type: !1026)
!4941 = !DILocation(line: 0, scope: !4938)
!4942 = !DILocalVariable(name: "n", arg: 1, scope: !4943, file: !1007, line: 300, type: !1026)
!4943 = distinct !DISubprogram(name: "xicalloc", scope: !1007, file: !1007, line: 300, type: !4796, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1006, retainedNodes: !4944)
!4944 = !{!4942, !4945}
!4945 = !DILocalVariable(name: "s", arg: 2, scope: !4943, file: !1007, line: 300, type: !1026)
!4946 = !DILocation(line: 0, scope: !4943, inlinedAt: !4947)
!4947 = distinct !DILocation(line: 287, column: 10, scope: !4938)
!4948 = !DILocalVariable(name: "n", arg: 1, scope: !4949, file: !4685, line: 77, type: !1026)
!4949 = distinct !DISubprogram(name: "icalloc", scope: !4685, file: !4685, line: 77, type: !4796, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1006, retainedNodes: !4950)
!4950 = !{!4948, !4951}
!4951 = !DILocalVariable(name: "s", arg: 2, scope: !4949, file: !4685, line: 77, type: !1026)
!4952 = !DILocation(line: 0, scope: !4949, inlinedAt: !4953)
!4953 = distinct !DILocation(line: 302, column: 25, scope: !4943, inlinedAt: !4947)
!4954 = !DILocation(line: 91, column: 10, scope: !4949, inlinedAt: !4953)
!4955 = !DILocation(line: 0, scope: !4644, inlinedAt: !4956)
!4956 = distinct !DILocation(line: 302, column: 10, scope: !4943, inlinedAt: !4947)
!4957 = !DILocation(line: 39, column: 8, scope: !4651, inlinedAt: !4956)
!4958 = !DILocation(line: 39, column: 7, scope: !4644, inlinedAt: !4956)
!4959 = !DILocation(line: 40, column: 5, scope: !4651, inlinedAt: !4956)
!4960 = !DILocation(line: 287, column: 3, scope: !4938)
!4961 = !DILocation(line: 0, scope: !4943)
!4962 = !DILocation(line: 0, scope: !4949, inlinedAt: !4963)
!4963 = distinct !DILocation(line: 302, column: 25, scope: !4943)
!4964 = !DILocation(line: 91, column: 10, scope: !4949, inlinedAt: !4963)
!4965 = !DILocation(line: 0, scope: !4644, inlinedAt: !4966)
!4966 = distinct !DILocation(line: 302, column: 10, scope: !4943)
!4967 = !DILocation(line: 39, column: 8, scope: !4651, inlinedAt: !4966)
!4968 = !DILocation(line: 39, column: 7, scope: !4644, inlinedAt: !4966)
!4969 = !DILocation(line: 40, column: 5, scope: !4651, inlinedAt: !4966)
!4970 = !DILocation(line: 302, column: 3, scope: !4943)
!4971 = distinct !DISubprogram(name: "xmemdup", scope: !1007, file: !1007, line: 310, type: !4972, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1006, retainedNodes: !4974)
!4972 = !DISubroutineType(types: !4973)
!4973 = !{!164, !1302, !166}
!4974 = !{!4975, !4976}
!4975 = !DILocalVariable(name: "p", arg: 1, scope: !4971, file: !1007, line: 310, type: !1302)
!4976 = !DILocalVariable(name: "s", arg: 2, scope: !4971, file: !1007, line: 310, type: !166)
!4977 = !DILocation(line: 0, scope: !4971)
!4978 = !DILocation(line: 0, scope: !4663, inlinedAt: !4979)
!4979 = distinct !DILocation(line: 312, column: 18, scope: !4971)
!4980 = !DILocation(line: 49, column: 25, scope: !4663, inlinedAt: !4979)
!4981 = !DILocation(line: 0, scope: !4644, inlinedAt: !4982)
!4982 = distinct !DILocation(line: 49, column: 10, scope: !4663, inlinedAt: !4979)
!4983 = !DILocation(line: 39, column: 8, scope: !4651, inlinedAt: !4982)
!4984 = !DILocation(line: 39, column: 7, scope: !4644, inlinedAt: !4982)
!4985 = !DILocation(line: 40, column: 5, scope: !4651, inlinedAt: !4982)
!4986 = !DILocalVariable(name: "__dest", arg: 1, scope: !4987, file: !1563, line: 26, type: !1566)
!4987 = distinct !DISubprogram(name: "memcpy", scope: !1563, file: !1563, line: 26, type: !1564, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1006, retainedNodes: !4988)
!4988 = !{!4986, !4989, !4990}
!4989 = !DILocalVariable(name: "__src", arg: 2, scope: !4987, file: !1563, line: 26, type: !1301)
!4990 = !DILocalVariable(name: "__len", arg: 3, scope: !4987, file: !1563, line: 26, type: !166)
!4991 = !DILocation(line: 0, scope: !4987, inlinedAt: !4992)
!4992 = distinct !DILocation(line: 312, column: 10, scope: !4971)
!4993 = !DILocation(line: 29, column: 10, scope: !4987, inlinedAt: !4992)
!4994 = !DILocation(line: 312, column: 3, scope: !4971)
!4995 = distinct !DISubprogram(name: "ximemdup", scope: !1007, file: !1007, line: 316, type: !4996, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1006, retainedNodes: !4998)
!4996 = !DISubroutineType(types: !4997)
!4997 = !{!164, !1302, !1026}
!4998 = !{!4999, !5000}
!4999 = !DILocalVariable(name: "p", arg: 1, scope: !4995, file: !1007, line: 316, type: !1302)
!5000 = !DILocalVariable(name: "s", arg: 2, scope: !4995, file: !1007, line: 316, type: !1026)
!5001 = !DILocation(line: 0, scope: !4995)
!5002 = !DILocation(line: 0, scope: !4677, inlinedAt: !5003)
!5003 = distinct !DILocation(line: 318, column: 18, scope: !4995)
!5004 = !DILocation(line: 0, scope: !4684, inlinedAt: !5005)
!5005 = distinct !DILocation(line: 55, column: 25, scope: !4677, inlinedAt: !5003)
!5006 = !DILocation(line: 57, column: 26, scope: !4684, inlinedAt: !5005)
!5007 = !DILocation(line: 0, scope: !4644, inlinedAt: !5008)
!5008 = distinct !DILocation(line: 55, column: 10, scope: !4677, inlinedAt: !5003)
!5009 = !DILocation(line: 39, column: 8, scope: !4651, inlinedAt: !5008)
!5010 = !DILocation(line: 39, column: 7, scope: !4644, inlinedAt: !5008)
!5011 = !DILocation(line: 40, column: 5, scope: !4651, inlinedAt: !5008)
!5012 = !DILocation(line: 0, scope: !4987, inlinedAt: !5013)
!5013 = distinct !DILocation(line: 318, column: 10, scope: !4995)
!5014 = !DILocation(line: 29, column: 10, scope: !4987, inlinedAt: !5013)
!5015 = !DILocation(line: 318, column: 3, scope: !4995)
!5016 = distinct !DISubprogram(name: "ximemdup0", scope: !1007, file: !1007, line: 325, type: !5017, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1006, retainedNodes: !5019)
!5017 = !DISubroutineType(types: !5018)
!5018 = !{!163, !1302, !1026}
!5019 = !{!5020, !5021, !5022}
!5020 = !DILocalVariable(name: "p", arg: 1, scope: !5016, file: !1007, line: 325, type: !1302)
!5021 = !DILocalVariable(name: "s", arg: 2, scope: !5016, file: !1007, line: 325, type: !1026)
!5022 = !DILocalVariable(name: "result", scope: !5016, file: !1007, line: 327, type: !163)
!5023 = !DILocation(line: 0, scope: !5016)
!5024 = !DILocation(line: 327, column: 30, scope: !5016)
!5025 = !DILocation(line: 0, scope: !4677, inlinedAt: !5026)
!5026 = distinct !DILocation(line: 327, column: 18, scope: !5016)
!5027 = !DILocation(line: 0, scope: !4684, inlinedAt: !5028)
!5028 = distinct !DILocation(line: 55, column: 25, scope: !4677, inlinedAt: !5026)
!5029 = !DILocation(line: 57, column: 26, scope: !4684, inlinedAt: !5028)
!5030 = !DILocation(line: 0, scope: !4644, inlinedAt: !5031)
!5031 = distinct !DILocation(line: 55, column: 10, scope: !4677, inlinedAt: !5026)
!5032 = !DILocation(line: 39, column: 8, scope: !4651, inlinedAt: !5031)
!5033 = !DILocation(line: 39, column: 7, scope: !4644, inlinedAt: !5031)
!5034 = !DILocation(line: 40, column: 5, scope: !4651, inlinedAt: !5031)
!5035 = !DILocation(line: 328, column: 3, scope: !5016)
!5036 = !DILocation(line: 328, column: 13, scope: !5016)
!5037 = !DILocation(line: 0, scope: !4987, inlinedAt: !5038)
!5038 = distinct !DILocation(line: 329, column: 10, scope: !5016)
!5039 = !DILocation(line: 29, column: 10, scope: !4987, inlinedAt: !5038)
!5040 = !DILocation(line: 329, column: 3, scope: !5016)
!5041 = distinct !DISubprogram(name: "xstrdup", scope: !1007, file: !1007, line: 335, type: !1280, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1006, retainedNodes: !5042)
!5042 = !{!5043}
!5043 = !DILocalVariable(name: "string", arg: 1, scope: !5041, file: !1007, line: 335, type: !169)
!5044 = !DILocation(line: 0, scope: !5041)
!5045 = !DILocation(line: 337, column: 27, scope: !5041)
!5046 = !DILocation(line: 337, column: 43, scope: !5041)
!5047 = !DILocation(line: 0, scope: !4971, inlinedAt: !5048)
!5048 = distinct !DILocation(line: 337, column: 10, scope: !5041)
!5049 = !DILocation(line: 0, scope: !4663, inlinedAt: !5050)
!5050 = distinct !DILocation(line: 312, column: 18, scope: !4971, inlinedAt: !5048)
!5051 = !DILocation(line: 49, column: 25, scope: !4663, inlinedAt: !5050)
!5052 = !DILocation(line: 0, scope: !4644, inlinedAt: !5053)
!5053 = distinct !DILocation(line: 49, column: 10, scope: !4663, inlinedAt: !5050)
!5054 = !DILocation(line: 39, column: 8, scope: !4651, inlinedAt: !5053)
!5055 = !DILocation(line: 39, column: 7, scope: !4644, inlinedAt: !5053)
!5056 = !DILocation(line: 40, column: 5, scope: !4651, inlinedAt: !5053)
!5057 = !DILocation(line: 0, scope: !4987, inlinedAt: !5058)
!5058 = distinct !DILocation(line: 312, column: 10, scope: !4971, inlinedAt: !5048)
!5059 = !DILocation(line: 29, column: 10, scope: !4987, inlinedAt: !5058)
!5060 = !DILocation(line: 337, column: 3, scope: !5041)
!5061 = distinct !DISubprogram(name: "xalloc_die", scope: !963, file: !963, line: 32, type: !716, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1039, retainedNodes: !5062)
!5062 = !{!5063}
!5063 = !DILocalVariable(name: "__errstatus", scope: !5064, file: !963, line: 34, type: !5065)
!5064 = distinct !DILexicalBlock(scope: !5061, file: !963, line: 34, column: 3)
!5065 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!5066 = !DILocation(line: 34, column: 3, scope: !5064)
!5067 = !DILocation(line: 0, scope: !5064)
!5068 = !DILocation(line: 40, column: 3, scope: !5061)
!5069 = distinct !DISubprogram(name: "close_stream", scope: !1042, file: !1042, line: 55, type: !5070, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1041, retainedNodes: !5106)
!5070 = !DISubroutineType(types: !5071)
!5071 = !{!122, !5072}
!5072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5073, size: 64)
!5073 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !328, line: 7, baseType: !5074)
!5074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !330, line: 49, size: 1728, elements: !5075)
!5075 = !{!5076, !5077, !5078, !5079, !5080, !5081, !5082, !5083, !5084, !5085, !5086, !5087, !5088, !5089, !5091, !5092, !5093, !5094, !5095, !5096, !5097, !5098, !5099, !5100, !5101, !5102, !5103, !5104, !5105}
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5074, file: !330, line: 51, baseType: !122, size: 32)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5074, file: !330, line: 54, baseType: !163, size: 64, offset: 64)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5074, file: !330, line: 55, baseType: !163, size: 64, offset: 128)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5074, file: !330, line: 56, baseType: !163, size: 64, offset: 192)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5074, file: !330, line: 57, baseType: !163, size: 64, offset: 256)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5074, file: !330, line: 58, baseType: !163, size: 64, offset: 320)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5074, file: !330, line: 59, baseType: !163, size: 64, offset: 384)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5074, file: !330, line: 60, baseType: !163, size: 64, offset: 448)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5074, file: !330, line: 61, baseType: !163, size: 64, offset: 512)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5074, file: !330, line: 64, baseType: !163, size: 64, offset: 576)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5074, file: !330, line: 65, baseType: !163, size: 64, offset: 640)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5074, file: !330, line: 66, baseType: !163, size: 64, offset: 704)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5074, file: !330, line: 68, baseType: !345, size: 64, offset: 768)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5074, file: !330, line: 70, baseType: !5090, size: 64, offset: 832)
!5090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5074, size: 64)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5074, file: !330, line: 72, baseType: !122, size: 32, offset: 896)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5074, file: !330, line: 73, baseType: !122, size: 32, offset: 928)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5074, file: !330, line: 74, baseType: !352, size: 64, offset: 960)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5074, file: !330, line: 77, baseType: !165, size: 16, offset: 1024)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5074, file: !330, line: 78, baseType: !356, size: 8, offset: 1040)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5074, file: !330, line: 79, baseType: !90, size: 8, offset: 1048)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5074, file: !330, line: 81, baseType: !359, size: 64, offset: 1088)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5074, file: !330, line: 89, baseType: !362, size: 64, offset: 1152)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5074, file: !330, line: 91, baseType: !364, size: 64, offset: 1216)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5074, file: !330, line: 92, baseType: !367, size: 64, offset: 1280)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5074, file: !330, line: 93, baseType: !5090, size: 64, offset: 1344)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5074, file: !330, line: 94, baseType: !164, size: 64, offset: 1408)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5074, file: !330, line: 95, baseType: !166, size: 64, offset: 1472)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5074, file: !330, line: 96, baseType: !122, size: 32, offset: 1536)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5074, file: !330, line: 98, baseType: !374, size: 160, offset: 1568)
!5106 = !{!5107, !5108, !5110, !5111}
!5107 = !DILocalVariable(name: "stream", arg: 1, scope: !5069, file: !1042, line: 55, type: !5072)
!5108 = !DILocalVariable(name: "some_pending", scope: !5069, file: !1042, line: 57, type: !5109)
!5109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !231)
!5110 = !DILocalVariable(name: "prev_fail", scope: !5069, file: !1042, line: 58, type: !5109)
!5111 = !DILocalVariable(name: "fclose_fail", scope: !5069, file: !1042, line: 59, type: !5109)
!5112 = !DILocation(line: 0, scope: !5069)
!5113 = !DILocation(line: 57, column: 30, scope: !5069)
!5114 = !DILocalVariable(name: "__stream", arg: 1, scope: !5115, file: !2792, line: 135, type: !5072)
!5115 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2792, file: !2792, line: 135, type: !5070, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1041, retainedNodes: !5116)
!5116 = !{!5114}
!5117 = !DILocation(line: 0, scope: !5115, inlinedAt: !5118)
!5118 = distinct !DILocation(line: 58, column: 27, scope: !5069)
!5119 = !DILocation(line: 137, column: 10, scope: !5115, inlinedAt: !5118)
!5120 = !{!2801, !1158, i64 0}
!5121 = !DILocation(line: 58, column: 43, scope: !5069)
!5122 = !DILocation(line: 59, column: 29, scope: !5069)
!5123 = !DILocation(line: 59, column: 45, scope: !5069)
!5124 = !DILocation(line: 69, column: 17, scope: !5125)
!5125 = distinct !DILexicalBlock(scope: !5069, file: !1042, line: 69, column: 7)
!5126 = !DILocation(line: 57, column: 50, scope: !5069)
!5127 = !DILocation(line: 69, column: 33, scope: !5125)
!5128 = !DILocation(line: 69, column: 53, scope: !5125)
!5129 = !DILocation(line: 69, column: 59, scope: !5125)
!5130 = !DILocation(line: 69, column: 7, scope: !5069)
!5131 = !DILocation(line: 71, column: 11, scope: !5132)
!5132 = distinct !DILexicalBlock(scope: !5125, file: !1042, line: 70, column: 5)
!5133 = !DILocation(line: 72, column: 9, scope: !5134)
!5134 = distinct !DILexicalBlock(scope: !5132, file: !1042, line: 71, column: 11)
!5135 = !DILocation(line: 72, column: 15, scope: !5134)
!5136 = !DILocation(line: 77, column: 1, scope: !5069)
!5137 = !DISubprogram(name: "__fpending", scope: !5138, file: !5138, line: 75, type: !5139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5138 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!5139 = !DISubroutineType(types: !5140)
!5140 = !{!166, !5072}
!5141 = distinct !DISubprogram(name: "rpl_fclose", scope: !1044, file: !1044, line: 58, type: !5142, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1043, retainedNodes: !5178)
!5142 = !DISubroutineType(types: !5143)
!5143 = !{!122, !5144}
!5144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5145, size: 64)
!5145 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !328, line: 7, baseType: !5146)
!5146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !330, line: 49, size: 1728, elements: !5147)
!5147 = !{!5148, !5149, !5150, !5151, !5152, !5153, !5154, !5155, !5156, !5157, !5158, !5159, !5160, !5161, !5163, !5164, !5165, !5166, !5167, !5168, !5169, !5170, !5171, !5172, !5173, !5174, !5175, !5176, !5177}
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5146, file: !330, line: 51, baseType: !122, size: 32)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5146, file: !330, line: 54, baseType: !163, size: 64, offset: 64)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5146, file: !330, line: 55, baseType: !163, size: 64, offset: 128)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5146, file: !330, line: 56, baseType: !163, size: 64, offset: 192)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5146, file: !330, line: 57, baseType: !163, size: 64, offset: 256)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5146, file: !330, line: 58, baseType: !163, size: 64, offset: 320)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5146, file: !330, line: 59, baseType: !163, size: 64, offset: 384)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5146, file: !330, line: 60, baseType: !163, size: 64, offset: 448)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5146, file: !330, line: 61, baseType: !163, size: 64, offset: 512)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5146, file: !330, line: 64, baseType: !163, size: 64, offset: 576)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5146, file: !330, line: 65, baseType: !163, size: 64, offset: 640)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5146, file: !330, line: 66, baseType: !163, size: 64, offset: 704)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5146, file: !330, line: 68, baseType: !345, size: 64, offset: 768)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5146, file: !330, line: 70, baseType: !5162, size: 64, offset: 832)
!5162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5146, size: 64)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5146, file: !330, line: 72, baseType: !122, size: 32, offset: 896)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5146, file: !330, line: 73, baseType: !122, size: 32, offset: 928)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5146, file: !330, line: 74, baseType: !352, size: 64, offset: 960)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5146, file: !330, line: 77, baseType: !165, size: 16, offset: 1024)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5146, file: !330, line: 78, baseType: !356, size: 8, offset: 1040)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5146, file: !330, line: 79, baseType: !90, size: 8, offset: 1048)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5146, file: !330, line: 81, baseType: !359, size: 64, offset: 1088)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5146, file: !330, line: 89, baseType: !362, size: 64, offset: 1152)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5146, file: !330, line: 91, baseType: !364, size: 64, offset: 1216)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5146, file: !330, line: 92, baseType: !367, size: 64, offset: 1280)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5146, file: !330, line: 93, baseType: !5162, size: 64, offset: 1344)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5146, file: !330, line: 94, baseType: !164, size: 64, offset: 1408)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5146, file: !330, line: 95, baseType: !166, size: 64, offset: 1472)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5146, file: !330, line: 96, baseType: !122, size: 32, offset: 1536)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5146, file: !330, line: 98, baseType: !374, size: 160, offset: 1568)
!5178 = !{!5179, !5180, !5181, !5182}
!5179 = !DILocalVariable(name: "fp", arg: 1, scope: !5141, file: !1044, line: 58, type: !5144)
!5180 = !DILocalVariable(name: "saved_errno", scope: !5141, file: !1044, line: 60, type: !122)
!5181 = !DILocalVariable(name: "fd", scope: !5141, file: !1044, line: 63, type: !122)
!5182 = !DILocalVariable(name: "result", scope: !5141, file: !1044, line: 74, type: !122)
!5183 = !DILocation(line: 0, scope: !5141)
!5184 = !DILocation(line: 63, column: 12, scope: !5141)
!5185 = !DILocation(line: 64, column: 10, scope: !5186)
!5186 = distinct !DILexicalBlock(scope: !5141, file: !1044, line: 64, column: 7)
!5187 = !DILocation(line: 64, column: 7, scope: !5141)
!5188 = !DILocation(line: 65, column: 12, scope: !5186)
!5189 = !DILocation(line: 65, column: 5, scope: !5186)
!5190 = !DILocation(line: 70, column: 9, scope: !5191)
!5191 = distinct !DILexicalBlock(scope: !5141, file: !1044, line: 70, column: 7)
!5192 = !DILocation(line: 70, column: 23, scope: !5191)
!5193 = !DILocation(line: 70, column: 33, scope: !5191)
!5194 = !DILocation(line: 70, column: 26, scope: !5191)
!5195 = !DILocation(line: 70, column: 59, scope: !5191)
!5196 = !DILocation(line: 71, column: 7, scope: !5191)
!5197 = !DILocation(line: 71, column: 10, scope: !5191)
!5198 = !DILocation(line: 70, column: 7, scope: !5141)
!5199 = !DILocation(line: 100, column: 12, scope: !5141)
!5200 = !DILocation(line: 105, column: 7, scope: !5141)
!5201 = !DILocation(line: 72, column: 19, scope: !5191)
!5202 = !DILocation(line: 105, column: 19, scope: !5203)
!5203 = distinct !DILexicalBlock(scope: !5141, file: !1044, line: 105, column: 7)
!5204 = !DILocation(line: 107, column: 13, scope: !5205)
!5205 = distinct !DILexicalBlock(scope: !5203, file: !1044, line: 106, column: 5)
!5206 = !DILocation(line: 109, column: 5, scope: !5205)
!5207 = !DILocation(line: 112, column: 1, scope: !5141)
!5208 = !DISubprogram(name: "fileno", scope: !679, file: !679, line: 809, type: !5142, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5209 = !DISubprogram(name: "fclose", scope: !679, file: !679, line: 178, type: !5142, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5210 = !DISubprogram(name: "__freading", scope: !5138, file: !5138, line: 51, type: !5142, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5211 = !DISubprogram(name: "lseek", scope: !2422, file: !2422, line: 339, type: !5212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5212 = !DISubroutineType(types: !5213)
!5213 = !{!352, !122, !352, !122}
!5214 = distinct !DISubprogram(name: "rpl_fflush", scope: !1046, file: !1046, line: 130, type: !5215, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1045, retainedNodes: !5251)
!5215 = !DISubroutineType(types: !5216)
!5216 = !{!122, !5217}
!5217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5218, size: 64)
!5218 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !328, line: 7, baseType: !5219)
!5219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !330, line: 49, size: 1728, elements: !5220)
!5220 = !{!5221, !5222, !5223, !5224, !5225, !5226, !5227, !5228, !5229, !5230, !5231, !5232, !5233, !5234, !5236, !5237, !5238, !5239, !5240, !5241, !5242, !5243, !5244, !5245, !5246, !5247, !5248, !5249, !5250}
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5219, file: !330, line: 51, baseType: !122, size: 32)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5219, file: !330, line: 54, baseType: !163, size: 64, offset: 64)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5219, file: !330, line: 55, baseType: !163, size: 64, offset: 128)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5219, file: !330, line: 56, baseType: !163, size: 64, offset: 192)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5219, file: !330, line: 57, baseType: !163, size: 64, offset: 256)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5219, file: !330, line: 58, baseType: !163, size: 64, offset: 320)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5219, file: !330, line: 59, baseType: !163, size: 64, offset: 384)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5219, file: !330, line: 60, baseType: !163, size: 64, offset: 448)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5219, file: !330, line: 61, baseType: !163, size: 64, offset: 512)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5219, file: !330, line: 64, baseType: !163, size: 64, offset: 576)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5219, file: !330, line: 65, baseType: !163, size: 64, offset: 640)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5219, file: !330, line: 66, baseType: !163, size: 64, offset: 704)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5219, file: !330, line: 68, baseType: !345, size: 64, offset: 768)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5219, file: !330, line: 70, baseType: !5235, size: 64, offset: 832)
!5235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5219, size: 64)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5219, file: !330, line: 72, baseType: !122, size: 32, offset: 896)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5219, file: !330, line: 73, baseType: !122, size: 32, offset: 928)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5219, file: !330, line: 74, baseType: !352, size: 64, offset: 960)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5219, file: !330, line: 77, baseType: !165, size: 16, offset: 1024)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5219, file: !330, line: 78, baseType: !356, size: 8, offset: 1040)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5219, file: !330, line: 79, baseType: !90, size: 8, offset: 1048)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5219, file: !330, line: 81, baseType: !359, size: 64, offset: 1088)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5219, file: !330, line: 89, baseType: !362, size: 64, offset: 1152)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5219, file: !330, line: 91, baseType: !364, size: 64, offset: 1216)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5219, file: !330, line: 92, baseType: !367, size: 64, offset: 1280)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5219, file: !330, line: 93, baseType: !5235, size: 64, offset: 1344)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5219, file: !330, line: 94, baseType: !164, size: 64, offset: 1408)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5219, file: !330, line: 95, baseType: !166, size: 64, offset: 1472)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5219, file: !330, line: 96, baseType: !122, size: 32, offset: 1536)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5219, file: !330, line: 98, baseType: !374, size: 160, offset: 1568)
!5251 = !{!5252}
!5252 = !DILocalVariable(name: "stream", arg: 1, scope: !5214, file: !1046, line: 130, type: !5217)
!5253 = !DILocation(line: 0, scope: !5214)
!5254 = !DILocation(line: 151, column: 14, scope: !5255)
!5255 = distinct !DILexicalBlock(scope: !5214, file: !1046, line: 151, column: 7)
!5256 = !DILocation(line: 151, column: 22, scope: !5255)
!5257 = !DILocation(line: 151, column: 27, scope: !5255)
!5258 = !DILocation(line: 151, column: 7, scope: !5214)
!5259 = !DILocation(line: 152, column: 12, scope: !5255)
!5260 = !DILocation(line: 152, column: 5, scope: !5255)
!5261 = !DILocalVariable(name: "fp", arg: 1, scope: !5262, file: !1046, line: 42, type: !5217)
!5262 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !1046, file: !1046, line: 42, type: !5263, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1045, retainedNodes: !5265)
!5263 = !DISubroutineType(types: !5264)
!5264 = !{null, !5217}
!5265 = !{!5261}
!5266 = !DILocation(line: 0, scope: !5262, inlinedAt: !5267)
!5267 = distinct !DILocation(line: 157, column: 3, scope: !5214)
!5268 = !DILocation(line: 44, column: 12, scope: !5269, inlinedAt: !5267)
!5269 = distinct !DILexicalBlock(scope: !5262, file: !1046, line: 44, column: 7)
!5270 = !DILocation(line: 44, column: 19, scope: !5269, inlinedAt: !5267)
!5271 = !DILocation(line: 44, column: 7, scope: !5262, inlinedAt: !5267)
!5272 = !DILocation(line: 46, column: 5, scope: !5269, inlinedAt: !5267)
!5273 = !DILocation(line: 159, column: 10, scope: !5214)
!5274 = !DILocation(line: 159, column: 3, scope: !5214)
!5275 = !DILocation(line: 236, column: 1, scope: !5214)
!5276 = !DISubprogram(name: "fflush", scope: !679, file: !679, line: 230, type: !5215, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5277 = distinct !DISubprogram(name: "rpl_fseeko", scope: !1048, file: !1048, line: 28, type: !5278, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1047, retainedNodes: !5315)
!5278 = !DISubroutineType(types: !5279)
!5279 = !{!122, !5280, !5314, !122}
!5280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5281, size: 64)
!5281 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !328, line: 7, baseType: !5282)
!5282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !330, line: 49, size: 1728, elements: !5283)
!5283 = !{!5284, !5285, !5286, !5287, !5288, !5289, !5290, !5291, !5292, !5293, !5294, !5295, !5296, !5297, !5299, !5300, !5301, !5302, !5303, !5304, !5305, !5306, !5307, !5308, !5309, !5310, !5311, !5312, !5313}
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5282, file: !330, line: 51, baseType: !122, size: 32)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5282, file: !330, line: 54, baseType: !163, size: 64, offset: 64)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5282, file: !330, line: 55, baseType: !163, size: 64, offset: 128)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5282, file: !330, line: 56, baseType: !163, size: 64, offset: 192)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5282, file: !330, line: 57, baseType: !163, size: 64, offset: 256)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5282, file: !330, line: 58, baseType: !163, size: 64, offset: 320)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5282, file: !330, line: 59, baseType: !163, size: 64, offset: 384)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5282, file: !330, line: 60, baseType: !163, size: 64, offset: 448)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5282, file: !330, line: 61, baseType: !163, size: 64, offset: 512)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5282, file: !330, line: 64, baseType: !163, size: 64, offset: 576)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5282, file: !330, line: 65, baseType: !163, size: 64, offset: 640)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5282, file: !330, line: 66, baseType: !163, size: 64, offset: 704)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5282, file: !330, line: 68, baseType: !345, size: 64, offset: 768)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5282, file: !330, line: 70, baseType: !5298, size: 64, offset: 832)
!5298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5282, size: 64)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5282, file: !330, line: 72, baseType: !122, size: 32, offset: 896)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5282, file: !330, line: 73, baseType: !122, size: 32, offset: 928)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5282, file: !330, line: 74, baseType: !352, size: 64, offset: 960)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5282, file: !330, line: 77, baseType: !165, size: 16, offset: 1024)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5282, file: !330, line: 78, baseType: !356, size: 8, offset: 1040)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5282, file: !330, line: 79, baseType: !90, size: 8, offset: 1048)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5282, file: !330, line: 81, baseType: !359, size: 64, offset: 1088)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5282, file: !330, line: 89, baseType: !362, size: 64, offset: 1152)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5282, file: !330, line: 91, baseType: !364, size: 64, offset: 1216)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5282, file: !330, line: 92, baseType: !367, size: 64, offset: 1280)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5282, file: !330, line: 93, baseType: !5298, size: 64, offset: 1344)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5282, file: !330, line: 94, baseType: !164, size: 64, offset: 1408)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5282, file: !330, line: 95, baseType: !166, size: 64, offset: 1472)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5282, file: !330, line: 96, baseType: !122, size: 32, offset: 1536)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5282, file: !330, line: 98, baseType: !374, size: 160, offset: 1568)
!5314 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !679, line: 63, baseType: !352)
!5315 = !{!5316, !5317, !5318, !5319}
!5316 = !DILocalVariable(name: "fp", arg: 1, scope: !5277, file: !1048, line: 28, type: !5280)
!5317 = !DILocalVariable(name: "offset", arg: 2, scope: !5277, file: !1048, line: 28, type: !5314)
!5318 = !DILocalVariable(name: "whence", arg: 3, scope: !5277, file: !1048, line: 28, type: !122)
!5319 = !DILocalVariable(name: "pos", scope: !5320, file: !1048, line: 123, type: !5314)
!5320 = distinct !DILexicalBlock(scope: !5321, file: !1048, line: 119, column: 5)
!5321 = distinct !DILexicalBlock(scope: !5277, file: !1048, line: 55, column: 7)
!5322 = !DILocation(line: 0, scope: !5277)
!5323 = !DILocation(line: 55, column: 12, scope: !5321)
!5324 = !{!2801, !1076, i64 16}
!5325 = !DILocation(line: 55, column: 33, scope: !5321)
!5326 = !{!2801, !1076, i64 8}
!5327 = !DILocation(line: 55, column: 25, scope: !5321)
!5328 = !DILocation(line: 56, column: 7, scope: !5321)
!5329 = !DILocation(line: 56, column: 15, scope: !5321)
!5330 = !DILocation(line: 56, column: 37, scope: !5321)
!5331 = !{!2801, !1076, i64 32}
!5332 = !DILocation(line: 56, column: 29, scope: !5321)
!5333 = !DILocation(line: 57, column: 7, scope: !5321)
!5334 = !DILocation(line: 57, column: 15, scope: !5321)
!5335 = !{!2801, !1076, i64 72}
!5336 = !DILocation(line: 57, column: 29, scope: !5321)
!5337 = !DILocation(line: 55, column: 7, scope: !5277)
!5338 = !DILocation(line: 123, column: 26, scope: !5320)
!5339 = !DILocation(line: 123, column: 19, scope: !5320)
!5340 = !DILocation(line: 0, scope: !5320)
!5341 = !DILocation(line: 124, column: 15, scope: !5342)
!5342 = distinct !DILexicalBlock(scope: !5320, file: !1048, line: 124, column: 11)
!5343 = !DILocation(line: 124, column: 11, scope: !5320)
!5344 = !DILocation(line: 135, column: 19, scope: !5320)
!5345 = !DILocation(line: 136, column: 12, scope: !5320)
!5346 = !DILocation(line: 136, column: 20, scope: !5320)
!5347 = !{!2801, !1355, i64 144}
!5348 = !DILocation(line: 167, column: 7, scope: !5320)
!5349 = !DILocation(line: 169, column: 10, scope: !5277)
!5350 = !DILocation(line: 169, column: 3, scope: !5277)
!5351 = !DILocation(line: 170, column: 1, scope: !5277)
!5352 = !DISubprogram(name: "fseeko", scope: !679, file: !679, line: 736, type: !5353, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5353 = !DISubroutineType(types: !5354)
!5354 = !{!122, !5280, !352, !122}
!5355 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !970, file: !970, line: 100, type: !5356, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !973, retainedNodes: !5359)
!5356 = !DISubroutineType(types: !5357)
!5357 = !{!166, !2965, !169, !166, !5358}
!5358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!5359 = !{!5360, !5361, !5362, !5363, !5364}
!5360 = !DILocalVariable(name: "pwc", arg: 1, scope: !5355, file: !970, line: 100, type: !2965)
!5361 = !DILocalVariable(name: "s", arg: 2, scope: !5355, file: !970, line: 100, type: !169)
!5362 = !DILocalVariable(name: "n", arg: 3, scope: !5355, file: !970, line: 100, type: !166)
!5363 = !DILocalVariable(name: "ps", arg: 4, scope: !5355, file: !970, line: 100, type: !5358)
!5364 = !DILocalVariable(name: "ret", scope: !5355, file: !970, line: 130, type: !166)
!5365 = !DILocation(line: 0, scope: !5355)
!5366 = !DILocation(line: 105, column: 9, scope: !5367)
!5367 = distinct !DILexicalBlock(scope: !5355, file: !970, line: 105, column: 7)
!5368 = !DILocation(line: 105, column: 7, scope: !5355)
!5369 = !DILocation(line: 117, column: 10, scope: !5370)
!5370 = distinct !DILexicalBlock(scope: !5355, file: !970, line: 117, column: 7)
!5371 = !DILocation(line: 117, column: 7, scope: !5355)
!5372 = !DILocation(line: 130, column: 16, scope: !5355)
!5373 = !DILocation(line: 135, column: 11, scope: !5374)
!5374 = distinct !DILexicalBlock(scope: !5355, file: !970, line: 135, column: 7)
!5375 = !DILocation(line: 135, column: 25, scope: !5374)
!5376 = !DILocation(line: 135, column: 30, scope: !5374)
!5377 = !DILocation(line: 135, column: 7, scope: !5355)
!5378 = !DILocalVariable(name: "ps", arg: 1, scope: !5379, file: !2939, line: 1135, type: !5358)
!5379 = distinct !DISubprogram(name: "mbszero", scope: !2939, file: !2939, line: 1135, type: !5380, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !973, retainedNodes: !5382)
!5380 = !DISubroutineType(types: !5381)
!5381 = !{null, !5358}
!5382 = !{!5378}
!5383 = !DILocation(line: 0, scope: !5379, inlinedAt: !5384)
!5384 = distinct !DILocation(line: 137, column: 5, scope: !5374)
!5385 = !DILocalVariable(name: "__dest", arg: 1, scope: !5386, file: !1563, line: 57, type: !164)
!5386 = distinct !DISubprogram(name: "memset", scope: !1563, file: !1563, line: 57, type: !2948, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !973, retainedNodes: !5387)
!5387 = !{!5385, !5388, !5389}
!5388 = !DILocalVariable(name: "__ch", arg: 2, scope: !5386, file: !1563, line: 57, type: !122)
!5389 = !DILocalVariable(name: "__len", arg: 3, scope: !5386, file: !1563, line: 57, type: !166)
!5390 = !DILocation(line: 0, scope: !5386, inlinedAt: !5391)
!5391 = distinct !DILocation(line: 1137, column: 3, scope: !5379, inlinedAt: !5384)
!5392 = !DILocation(line: 59, column: 10, scope: !5386, inlinedAt: !5391)
!5393 = !DILocation(line: 137, column: 5, scope: !5374)
!5394 = !DILocation(line: 138, column: 11, scope: !5395)
!5395 = distinct !DILexicalBlock(scope: !5355, file: !970, line: 138, column: 7)
!5396 = !DILocation(line: 138, column: 7, scope: !5355)
!5397 = !DILocation(line: 139, column: 5, scope: !5395)
!5398 = !DILocation(line: 143, column: 26, scope: !5399)
!5399 = distinct !DILexicalBlock(scope: !5355, file: !970, line: 143, column: 7)
!5400 = !DILocation(line: 143, column: 41, scope: !5399)
!5401 = !DILocation(line: 143, column: 7, scope: !5355)
!5402 = !DILocation(line: 145, column: 15, scope: !5403)
!5403 = distinct !DILexicalBlock(scope: !5404, file: !970, line: 145, column: 11)
!5404 = distinct !DILexicalBlock(scope: !5399, file: !970, line: 144, column: 5)
!5405 = !DILocation(line: 145, column: 11, scope: !5404)
!5406 = !DILocation(line: 146, column: 32, scope: !5403)
!5407 = !DILocation(line: 146, column: 16, scope: !5403)
!5408 = !DILocation(line: 146, column: 14, scope: !5403)
!5409 = !DILocation(line: 146, column: 9, scope: !5403)
!5410 = !DILocation(line: 286, column: 1, scope: !5355)
!5411 = !DISubprogram(name: "mbsinit", scope: !5412, file: !5412, line: 293, type: !5413, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5412 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!5413 = !DISubroutineType(types: !5414)
!5414 = !{!122, !5415}
!5415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5416, size: 64)
!5416 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !976)
!5417 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !1050, file: !1050, line: 27, type: !4628, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1049, retainedNodes: !5418)
!5418 = !{!5419, !5420, !5421, !5422}
!5419 = !DILocalVariable(name: "ptr", arg: 1, scope: !5417, file: !1050, line: 27, type: !164)
!5420 = !DILocalVariable(name: "nmemb", arg: 2, scope: !5417, file: !1050, line: 27, type: !166)
!5421 = !DILocalVariable(name: "size", arg: 3, scope: !5417, file: !1050, line: 27, type: !166)
!5422 = !DILocalVariable(name: "nbytes", scope: !5417, file: !1050, line: 29, type: !166)
!5423 = !DILocation(line: 0, scope: !5417)
!5424 = !DILocation(line: 30, column: 7, scope: !5425)
!5425 = distinct !DILexicalBlock(scope: !5417, file: !1050, line: 30, column: 7)
!5426 = !DILocation(line: 30, column: 7, scope: !5417)
!5427 = !DILocation(line: 32, column: 7, scope: !5428)
!5428 = distinct !DILexicalBlock(scope: !5425, file: !1050, line: 31, column: 5)
!5429 = !DILocation(line: 32, column: 13, scope: !5428)
!5430 = !DILocation(line: 33, column: 7, scope: !5428)
!5431 = !DILocalVariable(name: "ptr", arg: 1, scope: !5432, file: !4720, line: 2057, type: !164)
!5432 = distinct !DISubprogram(name: "rpl_realloc", scope: !4720, file: !4720, line: 2057, type: !4712, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1049, retainedNodes: !5433)
!5433 = !{!5431, !5434}
!5434 = !DILocalVariable(name: "size", arg: 2, scope: !5432, file: !4720, line: 2057, type: !166)
!5435 = !DILocation(line: 0, scope: !5432, inlinedAt: !5436)
!5436 = distinct !DILocation(line: 37, column: 10, scope: !5417)
!5437 = !DILocation(line: 2059, column: 24, scope: !5432, inlinedAt: !5436)
!5438 = !DILocation(line: 2059, column: 10, scope: !5432, inlinedAt: !5436)
!5439 = !DILocation(line: 37, column: 3, scope: !5417)
!5440 = !DILocation(line: 38, column: 1, scope: !5417)
!5441 = distinct !DISubprogram(name: "hard_locale", scope: !988, file: !988, line: 28, type: !1528, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1051, retainedNodes: !5442)
!5442 = !{!5443, !5444}
!5443 = !DILocalVariable(name: "category", arg: 1, scope: !5441, file: !988, line: 28, type: !122)
!5444 = !DILocalVariable(name: "locale", scope: !5441, file: !988, line: 30, type: !5445)
!5445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !5446)
!5446 = !{!5447}
!5447 = !DISubrange(count: 257)
!5448 = distinct !DIAssignID()
!5449 = !DILocation(line: 0, scope: !5441)
!5450 = !DILocation(line: 30, column: 3, scope: !5441)
!5451 = !DILocation(line: 32, column: 7, scope: !5452)
!5452 = distinct !DILexicalBlock(scope: !5441, file: !988, line: 32, column: 7)
!5453 = !DILocation(line: 32, column: 7, scope: !5441)
!5454 = !DILocalVariable(name: "__s1", arg: 1, scope: !5455, file: !1170, line: 1359, type: !169)
!5455 = distinct !DISubprogram(name: "streq", scope: !1170, file: !1170, line: 1359, type: !1171, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1051, retainedNodes: !5456)
!5456 = !{!5454, !5457}
!5457 = !DILocalVariable(name: "__s2", arg: 2, scope: !5455, file: !1170, line: 1359, type: !169)
!5458 = !DILocation(line: 0, scope: !5455, inlinedAt: !5459)
!5459 = distinct !DILocation(line: 35, column: 9, scope: !5460)
!5460 = distinct !DILexicalBlock(scope: !5441, file: !988, line: 35, column: 7)
!5461 = !DILocation(line: 1361, column: 11, scope: !5455, inlinedAt: !5459)
!5462 = !DILocation(line: 1361, column: 10, scope: !5455, inlinedAt: !5459)
!5463 = !DILocation(line: 35, column: 29, scope: !5460)
!5464 = !DILocation(line: 0, scope: !5455, inlinedAt: !5465)
!5465 = distinct !DILocation(line: 35, column: 32, scope: !5460)
!5466 = !DILocation(line: 1361, column: 11, scope: !5455, inlinedAt: !5465)
!5467 = !DILocation(line: 1361, column: 10, scope: !5455, inlinedAt: !5465)
!5468 = !DILocation(line: 35, column: 7, scope: !5441)
!5469 = !DILocation(line: 46, column: 3, scope: !5441)
!5470 = !DILocation(line: 47, column: 1, scope: !5441)
!5471 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1054, file: !1054, line: 154, type: !5472, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1053, retainedNodes: !5474)
!5472 = !DISubroutineType(types: !5473)
!5473 = !{!122, !122, !163, !166}
!5474 = !{!5475, !5476, !5477}
!5475 = !DILocalVariable(name: "category", arg: 1, scope: !5471, file: !1054, line: 154, type: !122)
!5476 = !DILocalVariable(name: "buf", arg: 2, scope: !5471, file: !1054, line: 154, type: !163)
!5477 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5471, file: !1054, line: 154, type: !166)
!5478 = !DILocation(line: 0, scope: !5471)
!5479 = !DILocation(line: 159, column: 10, scope: !5471)
!5480 = !DILocation(line: 159, column: 3, scope: !5471)
!5481 = distinct !DISubprogram(name: "setlocale_null", scope: !1054, file: !1054, line: 186, type: !5482, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1053, retainedNodes: !5484)
!5482 = !DISubroutineType(types: !5483)
!5483 = !{!169, !122}
!5484 = !{!5485}
!5485 = !DILocalVariable(name: "category", arg: 1, scope: !5481, file: !1054, line: 186, type: !122)
!5486 = !DILocation(line: 0, scope: !5481)
!5487 = !DILocation(line: 189, column: 10, scope: !5481)
!5488 = !DILocation(line: 189, column: 3, scope: !5481)
!5489 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1056, file: !1056, line: 35, type: !5482, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1055, retainedNodes: !5490)
!5490 = !{!5491, !5492}
!5491 = !DILocalVariable(name: "category", arg: 1, scope: !5489, file: !1056, line: 35, type: !122)
!5492 = !DILocalVariable(name: "result", scope: !5489, file: !1056, line: 37, type: !169)
!5493 = !DILocation(line: 0, scope: !5489)
!5494 = !DILocation(line: 37, column: 24, scope: !5489)
!5495 = !DILocation(line: 62, column: 3, scope: !5489)
!5496 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !1056, file: !1056, line: 66, type: !5472, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1055, retainedNodes: !5497)
!5497 = !{!5498, !5499, !5500, !5501, !5502}
!5498 = !DILocalVariable(name: "category", arg: 1, scope: !5496, file: !1056, line: 66, type: !122)
!5499 = !DILocalVariable(name: "buf", arg: 2, scope: !5496, file: !1056, line: 66, type: !163)
!5500 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5496, file: !1056, line: 66, type: !166)
!5501 = !DILocalVariable(name: "result", scope: !5496, file: !1056, line: 111, type: !169)
!5502 = !DILocalVariable(name: "length", scope: !5503, file: !1056, line: 125, type: !166)
!5503 = distinct !DILexicalBlock(scope: !5504, file: !1056, line: 124, column: 5)
!5504 = distinct !DILexicalBlock(scope: !5496, file: !1056, line: 113, column: 7)
!5505 = !DILocation(line: 0, scope: !5496)
!5506 = !DILocation(line: 0, scope: !5489, inlinedAt: !5507)
!5507 = distinct !DILocation(line: 111, column: 24, scope: !5496)
!5508 = !DILocation(line: 37, column: 24, scope: !5489, inlinedAt: !5507)
!5509 = !DILocation(line: 113, column: 14, scope: !5504)
!5510 = !DILocation(line: 113, column: 7, scope: !5496)
!5511 = !DILocation(line: 116, column: 19, scope: !5512)
!5512 = distinct !DILexicalBlock(scope: !5513, file: !1056, line: 116, column: 11)
!5513 = distinct !DILexicalBlock(scope: !5504, file: !1056, line: 114, column: 5)
!5514 = !DILocation(line: 116, column: 11, scope: !5513)
!5515 = !DILocation(line: 120, column: 16, scope: !5512)
!5516 = !DILocation(line: 120, column: 9, scope: !5512)
!5517 = !DILocation(line: 125, column: 23, scope: !5503)
!5518 = !DILocation(line: 0, scope: !5503)
!5519 = !DILocation(line: 126, column: 18, scope: !5520)
!5520 = distinct !DILexicalBlock(scope: !5503, file: !1056, line: 126, column: 11)
!5521 = !DILocation(line: 126, column: 11, scope: !5503)
!5522 = !DILocation(line: 128, column: 39, scope: !5523)
!5523 = distinct !DILexicalBlock(scope: !5520, file: !1056, line: 127, column: 9)
!5524 = !DILocalVariable(name: "__dest", arg: 1, scope: !5525, file: !1563, line: 26, type: !1566)
!5525 = distinct !DISubprogram(name: "memcpy", scope: !1563, file: !1563, line: 26, type: !1564, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1055, retainedNodes: !5526)
!5526 = !{!5524, !5527, !5528}
!5527 = !DILocalVariable(name: "__src", arg: 2, scope: !5525, file: !1563, line: 26, type: !1301)
!5528 = !DILocalVariable(name: "__len", arg: 3, scope: !5525, file: !1563, line: 26, type: !166)
!5529 = !DILocation(line: 0, scope: !5525, inlinedAt: !5530)
!5530 = distinct !DILocation(line: 128, column: 11, scope: !5523)
!5531 = !DILocation(line: 29, column: 10, scope: !5525, inlinedAt: !5530)
!5532 = !DILocation(line: 129, column: 11, scope: !5523)
!5533 = !DILocation(line: 133, column: 23, scope: !5534)
!5534 = distinct !DILexicalBlock(scope: !5535, file: !1056, line: 133, column: 15)
!5535 = distinct !DILexicalBlock(scope: !5520, file: !1056, line: 132, column: 9)
!5536 = !DILocation(line: 133, column: 15, scope: !5535)
!5537 = !DILocation(line: 138, column: 44, scope: !5538)
!5538 = distinct !DILexicalBlock(scope: !5534, file: !1056, line: 134, column: 13)
!5539 = !DILocation(line: 0, scope: !5525, inlinedAt: !5540)
!5540 = distinct !DILocation(line: 138, column: 15, scope: !5538)
!5541 = !DILocation(line: 29, column: 10, scope: !5525, inlinedAt: !5540)
!5542 = !DILocation(line: 139, column: 15, scope: !5538)
!5543 = !DILocation(line: 139, column: 32, scope: !5538)
!5544 = !DILocation(line: 140, column: 13, scope: !5538)
!5545 = !DILocation(line: 0, scope: !5504)
!5546 = !DILocation(line: 145, column: 1, scope: !5496)
